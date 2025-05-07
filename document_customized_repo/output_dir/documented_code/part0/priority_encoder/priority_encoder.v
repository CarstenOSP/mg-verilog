// Defines the priority encoder module with parameterizable input width and priority scheme, providing valid, encoded, and one-hot outputs.
module priority_encoder # (parameter WIDTH = 4,parameter LSB_HIGH_PRIORITY = 0) (input wire [WIDTH-1:0] input_unencoded,output wire output_valid,output wire [$clog2(WIDTH)-1:0] output_encoded,output wire [WIDTH-1:0] output_unencoded); 
// Calculates the number of encoding stages, ensuring at least one stage even if the width is small.
parameter LEVELS = WIDTH > 2 ? $clog2(WIDTH) : 1; 
// Computes the input width aligned to the next power of two, used for the internal hierarchy.
parameter W = 2**LEVELS; 
// Pads the input to match the power-of-two size to simplify hierarchical encoding.
wire [W-1:0] input_padded = {{W-WIDTH{1'b0}}, input_unencoded}; 
// Declares a multi-dimensional array of valid signals, one per stage of the encoding hierarchy.
wire [W/2-1:0] stage_valid[LEVELS-1:0]; 
// Holds partial encoding results for each level of the hierarchy.
wire [W/2-1:0] stage_enc[LEVELS-1:0]; 
generate 
 genvar l, n; 
// Defines the loop to process pairs of input bits in the first stage.
 for (n = 0; n < W/2; n = n + 1) begin : loop_in 
// Checks if any bit in the pair is set, indicating a valid input for the first stage.
 assign stage_valid[0][n] = |input_padded[n*2+1:n*2]; 
// Switches encoding logic if the least significant bit is given higher priority.
 if (LSB_HIGH_PRIORITY) begin 
// Computes the partial encoding bit as the inversion of the LSB when LSB is prioritized.
 assign stage_enc[0][n] = !input_padded[n*2+0]; 
 end else begin 
// Uses the higher-order bit for partial encoding when LSB is not prioritized.
 assign stage_enc[0][n] = input_padded[n*2+1]; 
 end 
 end 
// Begins the multi-level loop for hierarchical compression stages.
 for (l = 1; l < LEVELS; l = l + 1) begin : loop_levels 
// Iterates over pairs for the current compression level, combining them into fewer outputs.
 for (n = 0; n < W/(2*2**l); n = n + 1) begin : loop_compress 
// Aggregates valid signals from two adjacent positions at the previous stage to produce a single valid for the current level.
 assign stage_valid[l][n] = |stage_valid[l-1][n*2+1:n*2]; 
// Branches the subsequent encoding logic based on the LSB high priority setting.
 if (LSB_HIGH_PRIORITY) begin 
// Appends an extra bit indicating which half is active when LSB priority is set, selecting the sub-encoded value accordingly.
 assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+0] ? {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]} : {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]}; 
 end else begin 
// Appends an extra bit in the opposite sense when LSB priority is not set, selecting the appropriate sub-encoded value.
 assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+1] ? {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]} : {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]}; 
 end 
 end 
 end 
endgenerate 
// Utilizes the final stage's valid signal for the overall design.
assign output_valid = stage_valid[LEVELS-1]; 
// Retrieves the encoded index from the final stage as the design output.
assign output_encoded = stage_enc[LEVELS-1]; 
// Generates a one-hot signal based on the final encoded index.
assign output_unencoded = 1 << output_encoded; 
endmodule
