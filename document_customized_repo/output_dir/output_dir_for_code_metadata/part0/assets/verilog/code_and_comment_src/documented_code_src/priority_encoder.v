// Implements a parameterizable priority encoder that provides valid, encoded, and one-hot outputs.
module priority_encoder # (parameter WIDTH = 4,parameter LSB_HIGH_PRIORITY = 0) (input wire [WIDTH-1:0] input_unencoded,output wire output_valid,output wire [$clog2(WIDTH)-1:0] output_encoded,output wire [WIDTH-1:0] output_unencoded); 
// Sets the number of encoding stages needed for the given width.
parameter LEVELS = WIDTH > 2 ? $clog2(WIDTH) : 1; 
// Defines the internal power-of-two width used by the encoder.
parameter W = 2**LEVELS; 
// Pads the input to the next power-of-two size for uniform processing.
wire [W-1:0] input_padded = {{W-WIDTH{1'b0}}, input_unencoded}; 
// Holds intermediate valid signals across each level of the encoding pipeline.
wire [W/2-1:0] stage_valid[LEVELS-1:0]; 
// Stores the partial encoding for each level of the pipeline.
wire [W/2-1:0] stage_enc[LEVELS-1:0]; 
generate 
 genvar l, n; 
// Generates a block for each 2-bit slice in the first stage.
 for (n = 0; n < W/2; n = n + 1) begin : loop_in 
// Marks the corresponding slice as valid if any bit is set.
 assign stage_valid[0][n] = |input_padded[n*2+1:n*2]; 
// Determines priority selection in the first stage based on the LSB_HIGH_PRIORITY parameter.
 if (LSB_HIGH_PRIORITY) begin 
// Uses the inverted LSB as the encoded value when LSB has priority.
 assign stage_enc[0][n] = !input_padded[n*2+0]; 
 end else begin 
// Uses the next bit as the encoded value when the LSB is not prioritized.
 assign stage_enc[0][n] = input_padded[n*2+1]; 
 end 
 end 
// Begins iteration over subsequent levels of the encoder pipeline.
 for (l = 1; l < LEVELS; l = l + 1) begin : loop_levels 
// Compresses valid signals from the previous stage in pairs.
 for (n = 0; n < W/(2*2**l); n = n + 1) begin : loop_compress 
// Aggregates valid bits from the previous level for the current chunk.
 assign stage_valid[l][n] = |stage_valid[l-1][n*2+1:n*2]; 
// Conditional section for handling lower significant bit as highest priority.
 if (LSB_HIGH_PRIORITY) begin 
// Selects a portion of the previous level's encoded data based on the valid signal and prefixes a bit indicating which half was chosen.
 assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+0] ? {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]} : {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]}; 
 end else begin 
// Chooses and prefixes a bit for the else scenario, selecting a portion of the previous encoding based on the valid signal.
 assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+1] ? {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]} : {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]}; 
 end 
 end 
 end 
endgenerate 
assign output_valid = stage_valid[LEVELS-1]; 
assign output_encoded = stage_enc[LEVELS-1]; 
// Generates a one-hot output from the final encoded index.
assign output_unencoded = 1 << output_encoded; 
endmodule
