// Top-level priority encoder definition with parameterizable width and optional LSB-high priority.
module priority_encoder # (parameter WIDTH = 4,parameter LSB_HIGH_PRIORITY = 0) (input wire [WIDTH-1:0] input_unencoded,output wire output_valid,output wire [$clog2(WIDTH)-1:0] output_encoded,output wire [WIDTH-1:0] output_unencoded); 
// Determines the number of stages for the hierarchical encoder based on the input width.
parameter LEVELS = WIDTH > 2 ? $clog2(WIDTH) : 1; 
// Sets the internal width to the nearest power of two.
parameter W = 2**LEVELS; 
// Pads the input to align with the internal width.
wire [W-1:0] input_padded = {{W-WIDTH{1'b0}}, input_unencoded}; 
// Declares the validity signals for each stage of the encoder.
wire [W/2-1:0] stage_valid[LEVELS-1:0]; 
// Stores partial encoded outputs for each level of the hierarchy.
wire [W/2-1:0] stage_enc[LEVELS-1:0]; 
// Begins generation of the hierarchical structures for the encoder.
generate 
// Defines loop variables for traversing levels and subranges.
 genvar l, n; 
// Generates logic for each pair of bits within the initial stage.
 for (n = 0; n < W/2; n = n + 1) begin : loop_in 
// Marks the validity of each two-bit subset for the first stage.
 assign stage_valid[0][n] = |input_padded[n*2+1:n*2]; 
// Checks if the encoder should treat the least significant bit as highest priority.
 if (LSB_HIGH_PRIORITY) begin 
// Inverts the lower bit to generate the encoded output for LSB-high-priority mode.
 assign stage_enc[0][n] = !input_padded[n*2+0]; 
 end else begin 
// Selects the high bit of the pair for encoding when LSB is not high priority.
 assign stage_enc[0][n] = input_padded[n*2+1]; 
 end 
 end 
// Begins the next hierarchical level to refine the partial results.
 for (l = 1; l < LEVELS; l = l + 1) begin : loop_levels 
// Iterates through sub-blocks within the level to compress valid signals.
 for (n = 0; n < W/(2*2**l); n = n + 1) begin : loop_compress 
// Combines the signals from the previous level to determine validity at this level.
 assign stage_valid[l][n] = |stage_valid[l-1][n*2+1:n*2]; 
// Determines the path for encoding based on least significant bit priority.
 if (LSB_HIGH_PRIORITY) begin 
// Chooses between lower or upper sub-encodings based on which is valid, enforcing LSB-first priority by prefixing 0 if the lower segment is valid.
 assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+0] ? {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]} : {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]}; 
 end else begin 
// Chooses between upper or lower sub-encodings based on which is valid, enforcing MSB-first priority by prefixing 1 if the upper segment is valid.
 assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+1] ? {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]} : {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]}; 
 end 
 end 
 end 
endgenerate 
// Takes the final valid signal from the last compression stage as the global output.
assign output_valid = stage_valid[LEVELS-1]; 
// Provides the final index from the last compression stage as the primary encoded output.
assign output_encoded = stage_enc[LEVELS-1]; 
// Generates a one-hot representation using the final encoded index.
assign output_unencoded = 1 << output_encoded; 
endmodule
