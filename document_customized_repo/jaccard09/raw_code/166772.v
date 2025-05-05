module forward_dataflow_in_loop_VITIS_LOOP_9191_1_Loop_VITIS_LOOP_5580_1_proc38 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9018_15_address0,v9018_15_ce0,v9018_15_we0,v9018_15_d0,v9018_14_address0,v9018_14_ce0,v9018_14_we0,v9018_14_d0,v9018_13_address0,v9018_13_ce0,v9018_13_we0,v9018_13_d0,v9018_12_address0,v9018_12_ce0,v9018_12_we0,v9018_12_d0,v9018_11_address0,v9018_11_ce0,v9018_11_we0,v9018_11_d0,v9018_10_address0,v9018_10_ce0,v9018_10_we0,v9018_10_d0,v9018_9_address0,v9018_9_ce0,v9018_9_we0,v9018_9_d0,v9018_8_address0,v9018_8_ce0,v9018_8_we0,v9018_8_d0,v9018_7_address0,v9018_7_ce0,v9018_7_we0,v9018_7_d0,v9018_6_address0,v9018_6_ce0,v9018_6_we0,v9018_6_d0,v9018_5_address0,v9018_5_ce0,v9018_5_we0,v9018_5_d0,v9018_4_address0,v9018_4_ce0,v9018_4_we0,v9018_4_d0,v9018_3_address0,v9018_3_ce0,v9018_3_we0,v9018_3_d0,v9018_2_address0,v9018_2_ce0,v9018_2_we0,v9018_2_d0,v9018_1_address0,v9018_1_ce0,v9018_1_we0,v9018_1_d0,v9018_0_address0,v9018_0_ce0,v9018_0_we0,v9018_0_d0,p_read,v7244_15_address0,v7244_15_ce0,v7244_15_q0,v7244_14_address0,v7244_14_ce0,v7244_14_q0,v7244_13_address0,v7244_13_ce0,v7244_13_q0,v7244_12_address0,v7244_12_ce0,v7244_12_q0,v7244_11_address0,v7244_11_ce0,v7244_11_q0,v7244_10_address0,v7244_10_ce0,v7244_10_q0,v7244_9_address0,v7244_9_ce0,v7244_9_q0,v7244_8_address0,v7244_8_ce0,v7244_8_q0,v7244_7_address0,v7244_7_ce0,v7244_7_q0,v7244_6_address0,v7244_6_ce0,v7244_6_q0,v7244_5_address0,v7244_5_ce0,v7244_5_q0,v7244_4_address0,v7244_4_ce0,v7244_4_q0,v7244_3_address0,v7244_3_ce0,v7244_3_q0,v7244_2_address0,v7244_2_ce0,v7244_2_q0,v7244_1_address0,v7244_1_ce0,v7244_1_q0,v7244_address0,v7244_ce0,v7244_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v9018_15_address0;
output   v9018_15_ce0;
output   v9018_15_we0;
output  [7:0] v9018_15_d0;
output  [13:0] v9018_14_address0;
output   v9018_14_ce0;
output   v9018_14_we0;
output  [7:0] v9018_14_d0;
output  [13:0] v9018_13_address0;
output   v9018_13_ce0;
output   v9018_13_we0;
output  [7:0] v9018_13_d0;
output  [13:0] v9018_12_address0;
output   v9018_12_ce0;
output   v9018_12_we0;
output  [7:0] v9018_12_d0;
output  [13:0] v9018_11_address0;
output   v9018_11_ce0;
output   v9018_11_we0;
output  [7:0] v9018_11_d0;
output  [13:0] v9018_10_address0;
output   v9018_10_ce0;
output   v9018_10_we0;
output  [7:0] v9018_10_d0;
output  [13:0] v9018_9_address0;
output   v9018_9_ce0;
output   v9018_9_we0;
output  [7:0] v9018_9_d0;
output  [13:0] v9018_8_address0;
output   v9018_8_ce0;
output   v9018_8_we0;
output  [7:0] v9018_8_d0;
output  [13:0] v9018_7_address0;
output   v9018_7_ce0;
output   v9018_7_we0;
output  [7:0] v9018_7_d0;
output  [13:0] v9018_6_address0;
output   v9018_6_ce0;
output   v9018_6_we0;
output  [7:0] v9018_6_d0;
output  [13:0] v9018_5_address0;
output   v9018_5_ce0;
output   v9018_5_we0;
output  [7:0] v9018_5_d0;
output  [13:0] v9018_4_address0;
output   v9018_4_ce0;
output   v9018_4_we0;
output  [7:0] v9018_4_d0;
output  [13:0] v9018_3_address0;
output   v9018_3_ce0;
output   v9018_3_we0;
output  [7:0] v9018_3_d0;
output  [13:0] v9018_2_address0;
output   v9018_2_ce0;
output   v9018_2_we0;
output  [7:0] v9018_2_d0;
output  [13:0] v9018_1_address0;
output   v9018_1_ce0;
output   v9018_1_we0;
output  [7:0] v9018_1_d0;
output  [13:0] v9018_0_address0;
output   v9018_0_ce0;
output   v9018_0_we0;
output  [7:0] v9018_0_d0;
input  [4:0] p_read;
output  [8:0] v7244_15_address0;
output   v7244_15_ce0;
input  [7:0] v7244_15_q0;
output  [8:0] v7244_14_address0;
output   v7244_14_ce0;
input  [7:0] v7244_14_q0;
output  [8:0] v7244_13_address0;
output   v7244_13_ce0;
input  [7:0] v7244_13_q0;
output  [8:0] v7244_12_address0;
output   v7244_12_ce0;
input  [7:0] v7244_12_q0;
output  [8:0] v7244_11_address0;
output   v7244_11_ce0;
input  [7:0] v7244_11_q0;
output  [8:0] v7244_10_address0;
output   v7244_10_ce0;
input  [7:0] v7244_10_q0;
output  [8:0] v7244_9_address0;
output   v7244_9_ce0;
input  [7:0] v7244_9_q0;
output  [8:0] v7244_8_address0;
output   v7244_8_ce0;
input  [7:0] v7244_8_q0;
output  [8:0] v7244_7_address0;
output   v7244_7_ce0;
input  [7:0] v7244_7_q0;
output  [8:0] v7244_6_address0;
output   v7244_6_ce0;
input  [7:0] v7244_6_q0;
output  [8:0] v7244_5_address0;
output   v7244_5_ce0;
input  [7:0] v7244_5_q0;
output  [8:0] v7244_4_address0;
output   v7244_4_ce0;
input  [7:0] v7244_4_q0;
output  [8:0] v7244_3_address0;
output   v7244_3_ce0;
input  [7:0] v7244_3_q0;
output  [8:0] v7244_2_address0;
output   v7244_2_ce0;
input  [7:0] v7244_2_q0;
output  [8:0] v7244_1_address0;
output   v7244_1_ce0;
input  [7:0] v7244_1_q0;
output  [8:0] v7244_address0;
output   v7244_ce0;
input  [7:0] v7244_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5580_fu_884_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_loop_exit_ready_delayed;
wire   [2:0] tmp_fu_642_p4;
reg   [2:0] tmp_reg_1076;
wire   [4:0] zext_ln9128_cast_cast_cast_cast_fu_668_p3;
reg   [4:0] zext_ln9128_cast_cast_cast_cast_reg_1081;
wire   [4:0] zext_ln9128_4_cast_cast_cast_cast_fu_680_p3;
reg   [4:0] zext_ln9128_4_cast_cast_cast_cast_reg_1086;
reg   [4:0] zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter1_reg;
reg   [4:0] zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter2_reg;
wire   [3:0] v4036_mid2_fu_774_p3;
reg   [3:0] v4036_mid2_reg_1091;
reg   [3:0] v4036_mid2_reg_1091_pp0_iter1_reg;
reg   [3:0] v4036_mid2_reg_1091_pp0_iter2_reg;
wire   [3:0] v4035_fu_782_p3;
reg   [3:0] v4035_reg_1097;
wire   [0:0] tmp_78_fu_794_p3;
reg   [0:0] tmp_78_reg_1102;
reg   [3:0] tmp_39_reg_1107;
wire   [0:0] icmp_ln5582_fu_872_p2;
reg   [0:0] icmp_ln5582_reg_1112;
wire   [0:0] icmp_ln5581_fu_878_p2;
reg   [0:0] icmp_ln5581_reg_1117;
reg   [0:0] icmp_ln5580_reg_1122;
wire   [13:0] zext_ln5615_3_fu_982_p1;
reg   [0:0] ap_phi_mux_icmp_ln5581291_phi_fu_625_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln5582290_phi_fu_635_p4;
wire   [63:0] zext_ln5584_2_fu_955_p1;
wire   [63:0] zext_ln5615_4_fu_986_p1;
wire   [63:0] zext_ln5585_2_fu_1004_p1;
reg   [8:0] indvar_flatten12285_fu_164;
wire   [8:0] add_ln5580_1_fu_866_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12285_load;
reg   [5:0] v4034286_fu_168;
wire   [5:0] v4034_fu_754_p3;
reg   [5:0] ap_sig_allocacmp_v4034286_load;
reg   [7:0] indvar_flatten287_fu_172;
wire   [7:0] select_ln5581_1_fu_858_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten287_load;
reg   [3:0] v4035288_fu_176;
reg   [3:0] ap_sig_allocacmp_v4035288_load;
reg   [3:0] v4036289_fu_180;
wire   [3:0] v4036_fu_846_p2;
reg   [3:0] ap_sig_allocacmp_v4036289_load;
reg    v7244_15_ce0_local;
reg    v7244_14_ce0_local;
reg    v7244_13_ce0_local;
reg    v7244_12_ce0_local;
reg    v7244_11_ce0_local;
reg    v7244_10_ce0_local;
reg    v7244_9_ce0_local;
reg    v7244_8_ce0_local;
reg    v7244_7_ce0_local;
reg    v7244_6_ce0_local;
reg    v7244_5_ce0_local;
reg    v7244_4_ce0_local;
reg    v7244_3_ce0_local;
reg    v7244_2_ce0_local;
reg    v7244_1_ce0_local;
reg    v7244_ce0_local;
reg    v9018_0_we0_local;
reg    v9018_0_ce0_local;
reg    v9018_1_we0_local;
reg    v9018_1_ce0_local;
reg    v9018_2_we0_local;
reg    v9018_2_ce0_local;
reg    v9018_3_we0_local;
reg    v9018_3_ce0_local;
reg    v9018_4_we0_local;
reg    v9018_4_ce0_local;
reg    v9018_5_we0_local;
reg    v9018_5_ce0_local;
reg    v9018_6_we0_local;
reg    v9018_6_ce0_local;
reg    v9018_7_we0_local;
reg    v9018_7_ce0_local;
reg    v9018_8_we0_local;
reg    v9018_8_ce0_local;
reg    v9018_9_we0_local;
reg    v9018_9_ce0_local;
reg    v9018_10_we0_local;
reg    v9018_10_ce0_local;
reg    v9018_11_we0_local;
reg    v9018_11_ce0_local;
reg    v9018_12_we0_local;
reg    v9018_12_ce0_local;
reg    v9018_13_we0_local;
reg    v9018_13_ce0_local;
reg    v9018_14_we0_local;
reg    v9018_14_ce0_local;
reg    v9018_15_we0_local;
reg    v9018_15_ce0_local;
wire   [0:0] tmp_76_fu_660_p3;
wire   [0:0] empty_fu_676_p1;
wire   [0:0] xor_ln5580_fu_742_p2;
wire   [5:0] add_ln5580_fu_728_p2;
wire   [3:0] select_ln5580_fu_734_p3;
wire   [0:0] and_ln5580_fu_748_p2;
wire   [0:0] empty_123_fu_768_p2;
wire   [3:0] add_ln5581_fu_762_p2;
wire   [1:0] select_ln5584_fu_802_p3;
wire   [4:0] tmp_s_fu_810_p5;
wire   [7:0] mul_i_fu_652_p3;
wire   [7:0] zext_ln5580_fu_790_p1;
wire   [7:0] empty_124_fu_826_p2;
wire   [7:0] add_ln5581_1_fu_852_p2;
wire   [3:0] tmp_38_fu_915_p3;
wire   [3:0] mul_ln5585_fu_925_p0;
wire   [5:0] mul_ln5585_fu_925_p1;
wire   [3:0] mul_ln5615_fu_934_p0;
wire   [5:0] mul_ln5615_fu_934_p1;
wire   [4:0] zext_ln5581_1_fu_940_p1;
wire   [4:0] empty_125_fu_943_p2;
wire   [8:0] grp_fu_1008_p4;
wire   [4:0] zext_ln5582_fu_974_p1;
wire   [4:0] add_ln5585_fu_977_p2;
wire   [13:0] grp_fu_1019_p4;
wire   [13:0] grp_fu_1030_p4;
wire   [4:0] grp_fu_1008_p0;
wire   [3:0] grp_fu_1008_p1;
wire   [3:0] grp_fu_1008_p2;
wire   [3:0] grp_fu_1008_p3;
wire   [8:0] mul_ln5615_fu_934_p2;
wire   [4:0] grp_fu_1019_p1;
wire   [8:0] zext_ln5615_1_fu_948_p1;
wire   [4:0] grp_fu_1019_p2;
wire   [4:0] grp_fu_1019_p3;
wire   [8:0] mul_ln5585_fu_925_p2;
wire   [4:0] grp_fu_1030_p1;
wire   [4:0] grp_fu_1030_p2;
wire   [4:0] grp_fu_1030_p3;
reg    grp_fu_1008_ce;
reg    grp_fu_1019_ce;
reg    grp_fu_1030_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] grp_fu_1008_p00;
wire   [5:0] grp_fu_1008_p10;
wire   [8:0] grp_fu_1008_p30;
wire   [8:0] mul_ln5585_fu_925_p00;
wire   [8:0] mul_ln5615_fu_934_p00;
reg    ap_condition_790;
reg    ap_condition_305;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12285_fu_164 = 9'd0;
#0 v4034286_fu_168 = 6'd0;
#0 indvar_flatten287_fu_172 = 8'd0;
#0 v4035288_fu_176 = 4'd0;
#0 v4036289_fu_180 = 4'd0;
end
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U5073(.din0(mul_ln5585_fu_925_p0),.din1(mul_ln5585_fu_925_p1),.dout(mul_ln5585_fu_925_p2));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U5074(.din0(mul_ln5615_fu_934_p0),.din1(mul_ln5615_fu_934_p1),.dout(mul_ln5615_fu_934_p2));
forward_ama_addmuladd_5ns_4ns_4ns_4ns_9_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 4 ),.din2_WIDTH( 4 ),.din3_WIDTH( 4 ),.dout_WIDTH( 9 ))
ama_addmuladd_5ns_4ns_4ns_4ns_9_4_1_U5075(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1008_p0),.din1(grp_fu_1008_p1),.din2(grp_fu_1008_p2),.din3(grp_fu_1008_p3),.ce(grp_fu_1008_ce),.dout(grp_fu_1008_p4));
forward_ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 14 ))
ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1_U5076(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln5615_fu_934_p2),.din1(grp_fu_1019_p1),.din2(grp_fu_1019_p2),.din3(grp_fu_1019_p3),.ce(grp_fu_1019_ce),.dout(grp_fu_1019_p4));
forward_ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 14 ))
ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1_U5077(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln5585_fu_925_p2),.din1(grp_fu_1030_p1),.din2(grp_fu_1030_p2),.din3(grp_fu_1030_p3),.ce(grp_fu_1030_ce),.dout(grp_fu_1030_p4));
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_305)) begin
        indvar_flatten12285_fu_164 <= add_ln5580_1_fu_866_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_305)) begin
    indvar_flatten287_fu_172 <= select_ln5581_1_fu_858_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_305)) begin
    v4034286_fu_168 <= v4034_fu_754_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_305)) begin
    v4035288_fu_176 <= v4035_fu_782_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_305)) begin
    v4036289_fu_180 <= v4036_fu_846_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln5580_reg_1122 <= icmp_ln5580_fu_884_p2;
        tmp_39_reg_1107 <= {{empty_124_fu_826_p2[7:4]}};
        tmp_78_reg_1102 <= v4034_fu_754_p3[32'd4];
        tmp_reg_1076 <= {{p_read[4:2]}};
        v4035_reg_1097 <= v4035_fu_782_p3;
        v4036_mid2_reg_1091 <= v4036_mid2_fu_774_p3;
        v4036_mid2_reg_1091_pp0_iter1_reg <= v4036_mid2_reg_1091;
        zext_ln9128_4_cast_cast_cast_cast_reg_1086[0] <= zext_ln9128_4_cast_cast_cast_cast_fu_680_p3[0];
zext_ln9128_4_cast_cast_cast_cast_reg_1086[3 : 2] <= zext_ln9128_4_cast_cast_cast_cast_fu_680_p3[3 : 2];
        zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[0] <= zext_ln9128_4_cast_cast_cast_cast_reg_1086[0];
zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[3 : 2] <= zext_ln9128_4_cast_cast_cast_cast_reg_1086[3 : 2];
        zext_ln9128_cast_cast_cast_cast_reg_1081[0] <= zext_ln9128_cast_cast_cast_cast_fu_668_p3[0];
zext_ln9128_cast_cast_cast_cast_reg_1081[3 : 2] <= zext_ln9128_cast_cast_cast_cast_fu_668_p3[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v4036_mid2_reg_1091_pp0_iter2_reg <= v4036_mid2_reg_1091_pp0_iter1_reg;
        zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter2_reg[0] <= zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[0];
zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter2_reg[3 : 2] <= zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5581_reg_1117 <= icmp_ln5581_fu_878_p2;
        icmp_ln5582_reg_1112 <= icmp_ln5582_fu_872_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5580_fu_884_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_790)) begin
            ap_phi_mux_icmp_ln5581291_phi_fu_625_p4 = icmp_ln5581_reg_1117;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5581291_phi_fu_625_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5581291_phi_fu_625_p4 = icmp_ln5581_reg_1117;
        end
    end else begin
        ap_phi_mux_icmp_ln5581291_phi_fu_625_p4 = icmp_ln5581_reg_1117;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_790)) begin
            ap_phi_mux_icmp_ln5582290_phi_fu_635_p4 = icmp_ln5582_reg_1112;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln5582290_phi_fu_635_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln5582290_phi_fu_635_p4 = icmp_ln5582_reg_1112;
        end
    end else begin
        ap_phi_mux_icmp_ln5582290_phi_fu_635_p4 = icmp_ln5582_reg_1112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12285_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12285_load = indvar_flatten12285_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten287_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten287_load = indvar_flatten287_fu_172;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4034286_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4034286_load = v4034286_fu_168;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4035288_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4035288_load = v4035288_fu_176;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4036289_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v4036289_load = v4036289_fu_180;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1008_ce = 1'b1;
    end else begin
        grp_fu_1008_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1019_ce = 1'b1;
    end else begin
        grp_fu_1019_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1030_ce = 1'b1;
    end else begin
        grp_fu_1030_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_10_ce0_local = 1'b1;
    end else begin
        v7244_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_11_ce0_local = 1'b1;
    end else begin
        v7244_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_12_ce0_local = 1'b1;
    end else begin
        v7244_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_13_ce0_local = 1'b1;
    end else begin
        v7244_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_14_ce0_local = 1'b1;
    end else begin
        v7244_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_15_ce0_local = 1'b1;
    end else begin
        v7244_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_1_ce0_local = 1'b1;
    end else begin
        v7244_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_2_ce0_local = 1'b1;
    end else begin
        v7244_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_3_ce0_local = 1'b1;
    end else begin
        v7244_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_4_ce0_local = 1'b1;
    end else begin
        v7244_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_5_ce0_local = 1'b1;
    end else begin
        v7244_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_6_ce0_local = 1'b1;
    end else begin
        v7244_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_7_ce0_local = 1'b1;
    end else begin
        v7244_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_8_ce0_local = 1'b1;
    end else begin
        v7244_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_9_ce0_local = 1'b1;
    end else begin
        v7244_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7244_ce0_local = 1'b1;
    end else begin
        v7244_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_0_ce0_local = 1'b1;
    end else begin
        v9018_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_0_we0_local = 1'b1;
    end else begin
        v9018_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_10_ce0_local = 1'b1;
    end else begin
        v9018_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_10_we0_local = 1'b1;
    end else begin
        v9018_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_11_ce0_local = 1'b1;
    end else begin
        v9018_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_11_we0_local = 1'b1;
    end else begin
        v9018_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_12_ce0_local = 1'b1;
    end else begin
        v9018_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_12_we0_local = 1'b1;
    end else begin
        v9018_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_13_ce0_local = 1'b1;
    end else begin
        v9018_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_13_we0_local = 1'b1;
    end else begin
        v9018_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_14_ce0_local = 1'b1;
    end else begin
        v9018_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_14_we0_local = 1'b1;
    end else begin
        v9018_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_15_ce0_local = 1'b1;
    end else begin
        v9018_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_15_we0_local = 1'b1;
    end else begin
        v9018_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_1_ce0_local = 1'b1;
    end else begin
        v9018_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_1_we0_local = 1'b1;
    end else begin
        v9018_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_2_ce0_local = 1'b1;
    end else begin
        v9018_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_2_we0_local = 1'b1;
    end else begin
        v9018_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_3_ce0_local = 1'b1;
    end else begin
        v9018_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_3_we0_local = 1'b1;
    end else begin
        v9018_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_4_ce0_local = 1'b1;
    end else begin
        v9018_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_4_we0_local = 1'b1;
    end else begin
        v9018_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_5_ce0_local = 1'b1;
    end else begin
        v9018_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_5_we0_local = 1'b1;
    end else begin
        v9018_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_6_ce0_local = 1'b1;
    end else begin
        v9018_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_6_we0_local = 1'b1;
    end else begin
        v9018_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_7_ce0_local = 1'b1;
    end else begin
        v9018_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_7_we0_local = 1'b1;
    end else begin
        v9018_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_8_ce0_local = 1'b1;
    end else begin
        v9018_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_8_we0_local = 1'b1;
    end else begin
        v9018_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_9_ce0_local = 1'b1;
    end else begin
        v9018_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9018_9_we0_local = 1'b1;
    end else begin
        v9018_9_we0_local = 1'b0;
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
assign add_ln5580_1_fu_866_p2 = (ap_sig_allocacmp_indvar_flatten12285_load + 9'd1);
assign add_ln5580_fu_728_p2 = (ap_sig_allocacmp_v4034286_load + 6'd16);
assign add_ln5581_1_fu_852_p2 = (ap_sig_allocacmp_indvar_flatten287_load + 8'd1);
assign add_ln5581_fu_762_p2 = (select_ln5580_fu_734_p3 + 4'd1);
assign add_ln5585_fu_977_p2 = (zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter2_reg + zext_ln5582_fu_974_p1);
assign and_ln5580_fu_748_p2 = (xor_ln5580_fu_742_p2 & ap_phi_mux_icmp_ln5582290_phi_fu_635_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_305 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_790 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln5580_reg_1122 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_123_fu_768_p2 = (ap_phi_mux_icmp_ln5581291_phi_fu_625_p4 | and_ln5580_fu_748_p2);
assign empty_124_fu_826_p2 = (mul_i_fu_652_p3 + zext_ln5580_fu_790_p1);
assign empty_125_fu_943_p2 = (zext_ln9128_cast_cast_cast_cast_reg_1081 + zext_ln5581_1_fu_940_p1);
assign empty_fu_676_p1 = p_read[0:0];
assign grp_fu_1008_p0 = grp_fu_1008_p00;
assign grp_fu_1008_p00 = tmp_s_fu_810_p5;
assign grp_fu_1008_p1 = grp_fu_1008_p10;
assign grp_fu_1008_p10 = v4035_fu_782_p3;
assign grp_fu_1008_p2 = 9'd13;
assign grp_fu_1008_p3 = grp_fu_1008_p30;
assign grp_fu_1008_p30 = v4036_mid2_reg_1091_pp0_iter1_reg;
assign grp_fu_1019_p1 = zext_ln5615_1_fu_948_p1;
assign grp_fu_1019_p2 = 14'd26;
assign grp_fu_1019_p3 = zext_ln5615_3_fu_982_p1;
assign grp_fu_1030_p1 = zext_ln5615_1_fu_948_p1;
assign grp_fu_1030_p2 = 14'd26;
assign grp_fu_1030_p3 = zext_ln5615_3_fu_982_p1;
assign icmp_ln5580_fu_884_p2 = ((ap_sig_allocacmp_indvar_flatten12285_load == 9'd337) ? 1'b1 : 1'b0);
assign icmp_ln5581_fu_878_p2 = ((select_ln5581_1_fu_858_p3 == 8'd169) ? 1'b1 : 1'b0);
assign icmp_ln5582_fu_872_p2 = ((v4036_fu_846_p2 == 4'd13) ? 1'b1 : 1'b0);
assign mul_i_fu_652_p3 = {{tmp_fu_642_p4}, {5'd0}};
assign mul_ln5585_fu_925_p0 = mul_ln5585_fu_925_p00;
assign mul_ln5585_fu_925_p00 = tmp_38_fu_915_p3;
assign mul_ln5585_fu_925_p1 = 9'd26;
assign mul_ln5615_fu_934_p0 = mul_ln5615_fu_934_p00;
assign mul_ln5615_fu_934_p00 = tmp_39_reg_1107;
assign mul_ln5615_fu_934_p1 = 9'd26;
assign select_ln5580_fu_734_p3 = ((ap_phi_mux_icmp_ln5581291_phi_fu_625_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4035288_load);
assign select_ln5581_1_fu_858_p3 = ((ap_phi_mux_icmp_ln5581291_phi_fu_625_p4[0:0] == 1'b1) ? 8'd1 : add_ln5581_1_fu_852_p2);
assign select_ln5584_fu_802_p3 = ((tmp_78_fu_794_p3[0:0] == 1'b1) ? 2'd3 : 2'd0);
assign tmp_38_fu_915_p3 = {{tmp_reg_1076}, {tmp_78_reg_1102}};
assign tmp_76_fu_660_p3 = p_read[32'd1];
assign tmp_78_fu_794_p3 = v4034_fu_754_p3[32'd4];
assign tmp_fu_642_p4 = {{p_read[4:2]}};
assign tmp_s_fu_810_p5 = {{{{{{1'd0}, {select_ln5584_fu_802_p3}}}, {1'd0}}}, {tmp_78_fu_794_p3}};
assign v4034_fu_754_p3 = ((ap_phi_mux_icmp_ln5581291_phi_fu_625_p4[0:0] == 1'b1) ? add_ln5580_fu_728_p2 : ap_sig_allocacmp_v4034286_load);
assign v4035_fu_782_p3 = ((and_ln5580_fu_748_p2[0:0] == 1'b1) ? add_ln5581_fu_762_p2 : select_ln5580_fu_734_p3);
assign v4036_fu_846_p2 = (v4036_mid2_fu_774_p3 + 4'd1);
assign v4036_mid2_fu_774_p3 = ((empty_123_fu_768_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v4036289_load);
assign v7244_10_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_10_ce0 = v7244_10_ce0_local;
assign v7244_11_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_11_ce0 = v7244_11_ce0_local;
assign v7244_12_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_12_ce0 = v7244_12_ce0_local;
assign v7244_13_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_13_ce0 = v7244_13_ce0_local;
assign v7244_14_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_14_ce0 = v7244_14_ce0_local;
assign v7244_15_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_15_ce0 = v7244_15_ce0_local;
assign v7244_1_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_1_ce0 = v7244_1_ce0_local;
assign v7244_2_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_2_ce0 = v7244_2_ce0_local;
assign v7244_3_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_3_ce0 = v7244_3_ce0_local;
assign v7244_4_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_4_ce0 = v7244_4_ce0_local;
assign v7244_5_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_5_ce0 = v7244_5_ce0_local;
assign v7244_6_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_6_ce0 = v7244_6_ce0_local;
assign v7244_7_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_7_ce0 = v7244_7_ce0_local;
assign v7244_8_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_8_ce0 = v7244_8_ce0_local;
assign v7244_9_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_9_ce0 = v7244_9_ce0_local;
assign v7244_address0 = zext_ln5584_2_fu_955_p1;
assign v7244_ce0 = v7244_ce0_local;
assign v9018_0_address0 = zext_ln5585_2_fu_1004_p1;
assign v9018_0_ce0 = v9018_0_ce0_local;
assign v9018_0_d0 = v7244_15_q0;
assign v9018_0_we0 = v9018_0_we0_local;
assign v9018_10_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_10_ce0 = v9018_10_ce0_local;
assign v9018_10_d0 = v7244_5_q0;
assign v9018_10_we0 = v9018_10_we0_local;
assign v9018_11_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_11_ce0 = v9018_11_ce0_local;
assign v9018_11_d0 = v7244_4_q0;
assign v9018_11_we0 = v9018_11_we0_local;
assign v9018_12_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_12_ce0 = v9018_12_ce0_local;
assign v9018_12_d0 = v7244_3_q0;
assign v9018_12_we0 = v9018_12_we0_local;
assign v9018_13_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_13_ce0 = v9018_13_ce0_local;
assign v9018_13_d0 = v7244_2_q0;
assign v9018_13_we0 = v9018_13_we0_local;
assign v9018_14_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_14_ce0 = v9018_14_ce0_local;
assign v9018_14_d0 = v7244_1_q0;
assign v9018_14_we0 = v9018_14_we0_local;
assign v9018_15_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_15_ce0 = v9018_15_ce0_local;
assign v9018_15_d0 = v7244_q0;
assign v9018_15_we0 = v9018_15_we0_local;
assign v9018_1_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_1_ce0 = v9018_1_ce0_local;
assign v9018_1_d0 = v7244_14_q0;
assign v9018_1_we0 = v9018_1_we0_local;
assign v9018_2_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_2_ce0 = v9018_2_ce0_local;
assign v9018_2_d0 = v7244_13_q0;
assign v9018_2_we0 = v9018_2_we0_local;
assign v9018_3_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_3_ce0 = v9018_3_ce0_local;
assign v9018_3_d0 = v7244_12_q0;
assign v9018_3_we0 = v9018_3_we0_local;
assign v9018_4_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_4_ce0 = v9018_4_ce0_local;
assign v9018_4_d0 = v7244_11_q0;
assign v9018_4_we0 = v9018_4_we0_local;
assign v9018_5_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_5_ce0 = v9018_5_ce0_local;
assign v9018_5_d0 = v7244_10_q0;
assign v9018_5_we0 = v9018_5_we0_local;
assign v9018_6_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_6_ce0 = v9018_6_ce0_local;
assign v9018_6_d0 = v7244_9_q0;
assign v9018_6_we0 = v9018_6_we0_local;
assign v9018_7_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_7_ce0 = v9018_7_ce0_local;
assign v9018_7_d0 = v7244_8_q0;
assign v9018_7_we0 = v9018_7_we0_local;
assign v9018_8_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_8_ce0 = v9018_8_ce0_local;
assign v9018_8_d0 = v7244_7_q0;
assign v9018_8_we0 = v9018_8_we0_local;
assign v9018_9_address0 = zext_ln5615_4_fu_986_p1;
assign v9018_9_ce0 = v9018_9_ce0_local;
assign v9018_9_d0 = v7244_6_q0;
assign v9018_9_we0 = v9018_9_we0_local;
assign xor_ln5580_fu_742_p2 = (ap_phi_mux_icmp_ln5581291_phi_fu_625_p4 ^ 1'd1);
assign zext_ln5580_fu_790_p1 = v4034_fu_754_p3;
assign zext_ln5581_1_fu_940_p1 = v4035_reg_1097;
assign zext_ln5582_fu_974_p1 = v4036_mid2_reg_1091_pp0_iter2_reg;
assign zext_ln5584_2_fu_955_p1 = grp_fu_1008_p4;
assign zext_ln5585_2_fu_1004_p1 = grp_fu_1030_p4;
assign zext_ln5615_1_fu_948_p1 = empty_125_fu_943_p2;
assign zext_ln5615_3_fu_982_p1 = add_ln5585_fu_977_p2;
assign zext_ln5615_4_fu_986_p1 = grp_fu_1019_p4;
assign zext_ln9128_4_cast_cast_cast_cast_fu_680_p3 = ((empty_fu_676_p1[0:0] == 1'b1) ? 5'd13 : 5'd0);
assign zext_ln9128_cast_cast_cast_cast_fu_668_p3 = ((tmp_76_fu_660_p3[0:0] == 1'b1) ? 5'd13 : 5'd0);
always @ (posedge ap_clk) begin
    zext_ln9128_cast_cast_cast_cast_reg_1081[1] <= 1'b0;
    zext_ln9128_cast_cast_cast_cast_reg_1081[4] <= 1'b0;
    zext_ln9128_4_cast_cast_cast_cast_reg_1086[1] <= 1'b0;
    zext_ln9128_4_cast_cast_cast_cast_reg_1086[4] <= 1'b0;
    zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[1] <= 1'b0;
    zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[4] <= 1'b0;
    zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter2_reg[1] <= 1'b0;
    zext_ln9128_4_cast_cast_cast_cast_reg_1086_pp0_iter2_reg[4] <= 1'b0;
end
endmodule 