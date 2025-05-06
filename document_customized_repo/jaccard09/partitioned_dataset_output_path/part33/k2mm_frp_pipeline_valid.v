
module k2mm_frp_pipeline_valid (ap_clk,ap_rst,valid_in,exitcond,valid_out,num_valid_datasets); 
   parameter PipelineLatency =  4;
   parameter PipelineII      =  1;
   parameter ExitLatency = -1;
   parameter CeilLog2Stages   = 2;
   localparam NUM_STAGES = (PipelineLatency+PipelineII-1) / PipelineII; 
   function isDefined;
      input val;
      begin
         isDefined = (val === 1'b0 || val === 1'b1);
      end
   endfunction
   input ap_clk;
   input ap_rst;
   input valid_in;
   input exitcond;
   output [PipelineLatency-1:0] valid_out;
   output [CeilLog2Stages:0] num_valid_datasets;
   reg signed [CeilLog2Stages+1:0] nvd_reg;
   assign num_valid_datasets=nvd_reg;
   reg fail;
   reg [PipelineLatency-2:0] v2;
   integer WarningSuppressThreshold;
   initial begin 
       v2 = 0;
       fail = 0;
       nvd_reg = 0;
       if(!$value$plusargs("warning_suppress_threshold=%0d", WarningSuppressThreshold)) 
           WarningSuppressThreshold = 5;
   end
   reg [PipelineLatency-1:0] valid_out_tmp;
   assign valid_out=valid_out_tmp;
   reg [PipelineLatency-2:0] v1;
   genvar i;
   generate for (i = 0; i < PipelineLatency-1; i = i+1)
     always @ (posedge ap_clk) begin
        if (ap_rst)
          v2[i] <= 0;
        else begin
           v1[i] = (i == 0) ? valid_in : v2[i-1];
           v2[i] <= (ExitLatency==i) ? (!exitcond & v1[i]) : v1[i];
        end
     end
   endgenerate
   integer j;
   always @(*) begin
       valid_out_tmp = {v2, valid_in};
   end
   wire   valid_disable;
   assign valid_disable = (ExitLatency == -1) ? 1'b0 : (valid_out_tmp[ExitLatency] & exitcond);
   reg signed [2:0] incr;
   integer cnt_nvd_out_range = 0;
   always @ (posedge ap_clk) begin
      if (ap_rst)
         nvd_reg <= 0;
      else begin
         casex ({valid_out_tmp[0], valid_out_tmp[PipelineLatency-1], valid_disable})
           3'b100:  incr =  1;
           3'b111:  incr = -1;
           3'b001:  incr = -1;
           3'b010:  incr = -1;
           3'b011:  incr = -2;
           default: incr =  0;
         endcase
         nvd_reg <= nvd_reg + incr;
      end
   end
endmodule 
