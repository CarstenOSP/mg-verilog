module priority_encoder # (parameter WIDTH = 4,parameter LSB_HIGH_PRIORITY = 0) (input wire [WIDTH-1:0] input_unencoded,output wire output_valid,output wire [$clog2(WIDTH)-1:0] output_encoded,output wire [WIDTH-1:0] output_unencoded); 
// Determines the number of internal reduction levels based on the input width.
parameter LEVELS = WIDTH > 2 ? $clog2(WIDTH) : 1; 
// Defines the power-of-two aligned internal width for the priority encoder.
parameter W = 2**LEVELS; 
// Pads the input vector to reach the nearest power-of-two boundary for uniform processing.
wire [W-1:0] input_padded = {{W-WIDTH{1'b0}}, input_unencoded}; 
// Holds stage-level validity signals for each reduction layer.
wire [W/2-1:0] stage_valid[LEVELS-1:0]; 
// Holds partial encoding bits for each stage.
wire [W/2-1:0] stage_enc[LEVELS-1:0]; 
generate 
// Declares generate-time variables used to create loops during synthesis.
 genvar l, n; 
// Creates a loop to process pairs of bits in the first reduction stage.
 for (n = 0; n < W/2; n = n + 1) begin : loop_in 
// Determines if the pair of bits is nonzero to mark validity.
 assign stage_valid[0][n] = |input_padded[n*2+1:n*2]; 
// Checks the configuration to apply LSB as highest priority if enabled.
 if (LSB_HIGH_PRIORITY) begin 
// Generates the encoded output by inverting the lower bit for LSB priority.
 assign stage_enc[0][n] = !input_padded[n*2+0]; 
 end else begin 
// Uses the upper bit of the pair when LSB priority is not selected.
 assign stage_enc[0][n] = input_padded[n*2+1]; 
 end 
 end 
// Iterates through each hierarchy level to merge partial results.
 for (l = 1; l < LEVELS; l = l + 1) begin : loop_levels 
// Sub-loops across compressed data chunks at the current level.
 for (n = 0; n < W/(2*2**l); n = n + 1) begin : loop_compress 
// Updates the validity by combining signals from the previous level’s pairs.
 assign stage_valid[l][n] = |stage_valid[l-1][n*2+1:n*2]; 
// Conditionally modifies the encoding approach for LSB priority.
 if (LSB_HIGH_PRIORITY) begin 
// Merges the partial encoding from the appropriate half, assigning the leading bit based on which half is valid for LSB priority.
 assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+0] ? {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]} : {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]}; 
 end else begin 
// Merges the partial encoding from the opposite half, setting the leading bit to indicate which half is valid in the non-LSB priority path.
 assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+1] ? {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]} : {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]}; 
 end 
 end 
 end 
endgenerate 
// Provides the final validity output from the last pipeline stage.
assign output_valid = stage_valid[LEVELS-1]; 
// Captures the final encoded index from the last pipeline stage.
assign output_encoded = stage_enc[LEVELS-1]; 
// Generates a one-hot output from the encoded index.
assign output_unencoded = 1 << output_encoded; 
endmodule
