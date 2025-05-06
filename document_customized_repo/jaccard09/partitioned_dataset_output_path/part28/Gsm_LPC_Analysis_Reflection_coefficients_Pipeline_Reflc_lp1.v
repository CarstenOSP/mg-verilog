
module Gsm_LPC_Analysis_Reflection_coefficients_Pipeline_Reflc_lp1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,L_ACF_8_val,empty,sh_prom_cast_cast,L_ACF_1_val_cast,L_ACF_2_val_cast,L_ACF_3_val_cast,L_ACF_4_val_cast,L_ACF_5_val_cast,L_ACF_6_val_cast,L_ACF_7_val_cast,ACF_17_out,ACF_17_out_ap_vld,ACF_16_out,ACF_16_out_ap_vld,ACF_15_out,ACF_15_out_ap_vld,ACF_14_out,ACF_14_out_ap_vld,ACF_13_out,ACF_13_out_ap_vld,ACF_12_out,ACF_12_out_ap_vld,ACF_11_out,ACF_11_out_ap_vld,ACF_out,ACF_out_ap_vld,ACF_8_out,ACF_8_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] L_ACF_8_val;
input  [31:0] empty;
input  [5:0] sh_prom_cast_cast;
input  [31:0] L_ACF_1_val_cast;
input  [31:0] L_ACF_2_val_cast;
input  [31:0] L_ACF_3_val_cast;
input  [31:0] L_ACF_4_val_cast;
input  [31:0] L_ACF_5_val_cast;
input  [31:0] L_ACF_6_val_cast;
input  [31:0] L_ACF_7_val_cast;
output  [15:0] ACF_17_out;
output   ACF_17_out_ap_vld;
output  [15:0] ACF_16_out;
output   ACF_16_out_ap_vld;
output  [15:0] ACF_15_out;
output   ACF_15_out_ap_vld;
output  [15:0] ACF_14_out;
output   ACF_14_out_ap_vld;
output  [15:0] ACF_13_out;
output   ACF_13_out_ap_vld;
output  [15:0] ACF_12_out;
output   ACF_12_out_ap_vld;
output  [15:0] ACF_11_out;
output   ACF_11_out_ap_vld;
output  [15:0] ACF_out;
output   ACF_out_ap_vld;
output  [15:0] ACF_8_out;
output   ACF_8_out_ap_vld;
reg ap_idle;
reg ACF_17_out_ap_vld;
reg ACF_16_out_ap_vld;
reg ACF_15_out_ap_vld;
reg ACF_14_out_ap_vld;
reg ACF_13_out_ap_vld;
reg ACF_12_out_ap_vld;
reg ACF_11_out_ap_vld;
reg ACF_out_ap_vld;
reg ACF_8_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln183_fu_291_p2;
wire   [0:0] icmp_ln182_fu_315_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] sh_prom_cast_cast_cast_cast_fu_273_p1;
reg   [63:0] sh_prom_cast_cast_cast_cast_reg_600;
wire   [0:0] icmp_ln183_1_fu_285_p2;
reg   [0:0] icmp_ln183_1_reg_605;
reg   [0:0] icmp_ln183_reg_610;
reg   [0:0] icmp_ln182_reg_614;
reg   [3:0] i_fu_82;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_6;
wire    ap_block_pp0_stage0;
reg   [15:0] ACF_7_fu_86;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [15:0] ACF_9_fu_90;
reg   [15:0] ACF_11_fu_94;
reg   [15:0] ACF_12_fu_98;
reg   [15:0] ACF_13_fu_102;
reg   [15:0] ACF_14_fu_106;
reg   [15:0] ACF_15_fu_110;
reg   [15:0] ACF_fu_114;
wire    ap_block_pp0_stage0_01001;
wire  signed [31:0] sh_prom_cast_cast_cast_fu_269_p1;
wire   [2:0] tmp_fu_297_p4;
wire   [3:0] or_ln_fu_307_p3;
wire   [63:0] L_ACF_1_val_cast_cast_fu_265_p1;
wire   [63:0] shl_ln183_1_fu_321_p2;
wire   [63:0] L_ACF_2_val_cast_cast_fu_261_p1;
wire   [63:0] shl_ln183_2_fu_337_p2;
wire   [63:0] L_ACF_3_val_cast_cast_fu_257_p1;
wire   [63:0] shl_ln183_3_fu_353_p2;
wire   [63:0] L_ACF_4_val_cast_cast_fu_253_p1;
wire   [63:0] shl_ln183_4_fu_369_p2;
wire   [63:0] L_ACF_5_val_cast_cast_fu_249_p1;
wire   [63:0] shl_ln183_5_fu_385_p2;
wire   [63:0] L_ACF_6_val_cast_cast_fu_245_p1;
wire   [63:0] shl_ln183_6_fu_401_p2;
wire   [63:0] L_ACF_7_val_cast_cast_fu_241_p1;
wire   [63:0] shl_ln183_7_fu_417_p2;
wire   [31:0] select_ln183_fu_473_p3;
wire   [63:0] zext_ln183_fu_478_p1;
wire   [63:0] shl_ln183_fu_482_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_336;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 i_fu_82 = 4'd0;
#0 ACF_7_fu_86 = 16'd0;
#0 ACF_9_fu_90 = 16'd0;
#0 ACF_11_fu_94 = 16'd0;
#0 ACF_12_fu_98 = 16'd0;
#0 ACF_13_fu_102 = 16'd0;
#0 ACF_14_fu_106 = 16'd0;
#0 ACF_15_fu_110 = 16'd0;
#0 ACF_fu_114 = 16'd0;
#0 ap_done_reg = 1'b0;
end
Gsm_LPC_Analysis_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((1'b1 == ap_condition_336)) begin
                        i_fu_82[3] <= 1'b1;
        end else if ((ap_loop_init == 1'b1)) begin
                        i_fu_82[3] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln182_fu_315_p2 == 1'd0) | (icmp_ln183_fu_291_p2 == 1'd1)))) begin
        ACF_11_fu_94 <= {{shl_ln183_3_fu_353_p2[31:16]}};
        ACF_12_fu_98 <= {{shl_ln183_4_fu_369_p2[31:16]}};
        ACF_13_fu_102 <= {{shl_ln183_5_fu_385_p2[31:16]}};
        ACF_14_fu_106 <= {{shl_ln183_6_fu_401_p2[31:16]}};
        ACF_15_fu_110 <= {{shl_ln183_7_fu_417_p2[31:16]}};
        ACF_7_fu_86 <= {{shl_ln183_1_fu_321_p2[31:16]}};
        ACF_9_fu_90 <= {{shl_ln183_2_fu_337_p2[31:16]}};
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln183_reg_610 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ACF_fu_114 <= {{shl_ln183_fu_482_p2[31:16]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln182_reg_614 <= icmp_ln182_fu_315_p2;
        icmp_ln183_1_reg_605 <= icmp_ln183_1_fu_285_p2;
        icmp_ln183_reg_610 <= icmp_ln183_fu_291_p2;
        sh_prom_cast_cast_cast_cast_reg_600[31 : 0] <= sh_prom_cast_cast_cast_cast_fu_273_p1[31 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_11_out_ap_vld = 1'b1;
    end else begin
        ACF_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_12_out_ap_vld = 1'b1;
    end else begin
        ACF_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_13_out_ap_vld = 1'b1;
    end else begin
        ACF_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_14_out_ap_vld = 1'b1;
    end else begin
        ACF_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_15_out_ap_vld = 1'b1;
    end else begin
        ACF_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_16_out_ap_vld = 1'b1;
    end else begin
        ACF_16_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_17_out_ap_vld = 1'b1;
    end else begin
        ACF_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_8_out_ap_vld = 1'b1;
    end else begin
        ACF_8_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_reg_614 == 1'd1) & (icmp_ln183_reg_610 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ACF_out_ap_vld = 1'b1;
    end else begin
        ACF_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln182_fu_315_p2 == 1'd1) & (icmp_ln183_fu_291_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_6 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_6 = i_fu_82;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ACF_11_out = ACF_7_fu_86;
assign ACF_12_out = ACF_9_fu_90;
assign ACF_13_out = ACF_11_fu_94;
assign ACF_14_out = ACF_12_fu_98;
assign ACF_15_out = ACF_13_fu_102;
assign ACF_16_out = ACF_14_fu_106;
assign ACF_17_out = ACF_15_fu_110;
assign ACF_8_out = {{shl_ln183_fu_482_p2[31:16]}};
assign ACF_out = ACF_fu_114;
assign L_ACF_1_val_cast_cast_fu_265_p1 = L_ACF_1_val_cast;
assign L_ACF_2_val_cast_cast_fu_261_p1 = L_ACF_2_val_cast;
assign L_ACF_3_val_cast_cast_fu_257_p1 = L_ACF_3_val_cast;
assign L_ACF_4_val_cast_cast_fu_253_p1 = L_ACF_4_val_cast;
assign L_ACF_5_val_cast_cast_fu_249_p1 = L_ACF_5_val_cast;
assign L_ACF_6_val_cast_cast_fu_245_p1 = L_ACF_6_val_cast;
assign L_ACF_7_val_cast_cast_fu_241_p1 = L_ACF_7_val_cast;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_336 = ((ap_enable_reg_pp0_iter0 == 1'b1) & ((icmp_ln182_fu_315_p2 == 1'd0) | (icmp_ln183_fu_291_p2 == 1'd1)));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln182_fu_315_p2 = ((or_ln_fu_307_p3 == 4'd9) ? 1'b1 : 1'b0);
assign icmp_ln183_1_fu_285_p2 = ((ap_sig_allocacmp_i_6 == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln183_fu_291_p2 = ((ap_sig_allocacmp_i_6 == 4'd0) ? 1'b1 : 1'b0);
assign or_ln_fu_307_p3 = {{tmp_fu_297_p4}, {1'd1}};
assign select_ln183_fu_473_p3 = ((icmp_ln183_1_reg_605[0:0] == 1'b1) ? L_ACF_8_val : empty);
assign sh_prom_cast_cast_cast_cast_fu_273_p1 = $unsigned(sh_prom_cast_cast_cast_fu_269_p1);
assign sh_prom_cast_cast_cast_fu_269_p1 = $signed(sh_prom_cast_cast);
assign shl_ln183_1_fu_321_p2 = L_ACF_1_val_cast_cast_fu_265_p1 << sh_prom_cast_cast_cast_cast_fu_273_p1;
assign shl_ln183_2_fu_337_p2 = L_ACF_2_val_cast_cast_fu_261_p1 << sh_prom_cast_cast_cast_cast_fu_273_p1;
assign shl_ln183_3_fu_353_p2 = L_ACF_3_val_cast_cast_fu_257_p1 << sh_prom_cast_cast_cast_cast_fu_273_p1;
assign shl_ln183_4_fu_369_p2 = L_ACF_4_val_cast_cast_fu_253_p1 << sh_prom_cast_cast_cast_cast_fu_273_p1;
assign shl_ln183_5_fu_385_p2 = L_ACF_5_val_cast_cast_fu_249_p1 << sh_prom_cast_cast_cast_cast_fu_273_p1;
assign shl_ln183_6_fu_401_p2 = L_ACF_6_val_cast_cast_fu_245_p1 << sh_prom_cast_cast_cast_cast_fu_273_p1;
assign shl_ln183_7_fu_417_p2 = L_ACF_7_val_cast_cast_fu_241_p1 << sh_prom_cast_cast_cast_cast_fu_273_p1;
assign shl_ln183_fu_482_p2 = zext_ln183_fu_478_p1 << sh_prom_cast_cast_cast_cast_reg_600;
assign tmp_fu_297_p4 = {{ap_sig_allocacmp_i_6[3:1]}};
assign zext_ln183_fu_478_p1 = select_ln183_fu_473_p3;
always @ (posedge ap_clk) begin
    sh_prom_cast_cast_cast_cast_reg_600[63:32] <= 32'b00000000000000000000000000000000;
    i_fu_82[2:0] <= 3'b000;
end
endmodule 
