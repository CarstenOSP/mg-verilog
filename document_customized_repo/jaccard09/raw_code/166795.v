module forward_dataflow_in_loop_VITIS_LOOP_9191_1_Loop_VITIS_LOOP_9128_1_proc37 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7243_address0,v7243_ce0,v7243_we0,v7243_d0,v7243_1_address0,v7243_1_ce0,v7243_1_we0,v7243_1_d0,v7243_2_address0,v7243_2_ce0,v7243_2_we0,v7243_2_d0,v7243_3_address0,v7243_3_ce0,v7243_3_we0,v7243_3_d0,v7243_4_address0,v7243_4_ce0,v7243_4_we0,v7243_4_d0,v7243_5_address0,v7243_5_ce0,v7243_5_we0,v7243_5_d0,v7243_6_address0,v7243_6_ce0,v7243_6_we0,v7243_6_d0,v7243_7_address0,v7243_7_ce0,v7243_7_we0,v7243_7_d0,v7243_8_address0,v7243_8_ce0,v7243_8_we0,v7243_8_d0,v7243_9_address0,v7243_9_ce0,v7243_9_we0,v7243_9_d0,v7243_10_address0,v7243_10_ce0,v7243_10_we0,v7243_10_d0,v7243_11_address0,v7243_11_ce0,v7243_11_we0,v7243_11_d0,v7243_12_address0,v7243_12_ce0,v7243_12_we0,v7243_12_d0,v7243_13_address0,v7243_13_ce0,v7243_13_we0,v7243_13_d0,v7243_14_address0,v7243_14_ce0,v7243_14_we0,v7243_14_d0,v7243_15_address0,v7243_15_ce0,v7243_15_we0,v7243_15_d0,v7234_0,v9019_0_address0,v9019_0_ce0,v9019_0_q0,v9019_1_address0,v9019_1_ce0,v9019_1_q0,v9019_2_address0,v9019_2_ce0,v9019_2_q0,v9019_3_address0,v9019_3_ce0,v9019_3_q0,v9019_4_address0,v9019_4_ce0,v9019_4_q0,v9019_5_address0,v9019_5_ce0,v9019_5_q0,v9019_6_address0,v9019_6_ce0,v9019_6_q0,v9019_7_address0,v9019_7_ce0,v9019_7_q0,v9019_8_address0,v9019_8_ce0,v9019_8_q0,v9019_9_address0,v9019_9_ce0,v9019_9_q0,v9019_10_address0,v9019_10_ce0,v9019_10_q0,v9019_11_address0,v9019_11_ce0,v9019_11_q0,v9019_12_address0,v9019_12_ce0,v9019_12_q0,v9019_13_address0,v9019_13_ce0,v9019_13_q0,v9019_14_address0,v9019_14_ce0,v9019_14_q0,v9019_15_address0,v9019_15_ce0,v9019_15_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v7243_address0;
output   v7243_ce0;
output   v7243_we0;
output  [7:0] v7243_d0;
output  [8:0] v7243_1_address0;
output   v7243_1_ce0;
output   v7243_1_we0;
output  [7:0] v7243_1_d0;
output  [8:0] v7243_2_address0;
output   v7243_2_ce0;
output   v7243_2_we0;
output  [7:0] v7243_2_d0;
output  [8:0] v7243_3_address0;
output   v7243_3_ce0;
output   v7243_3_we0;
output  [7:0] v7243_3_d0;
output  [8:0] v7243_4_address0;
output   v7243_4_ce0;
output   v7243_4_we0;
output  [7:0] v7243_4_d0;
output  [8:0] v7243_5_address0;
output   v7243_5_ce0;
output   v7243_5_we0;
output  [7:0] v7243_5_d0;
output  [8:0] v7243_6_address0;
output   v7243_6_ce0;
output   v7243_6_we0;
output  [7:0] v7243_6_d0;
output  [8:0] v7243_7_address0;
output   v7243_7_ce0;
output   v7243_7_we0;
output  [7:0] v7243_7_d0;
output  [8:0] v7243_8_address0;
output   v7243_8_ce0;
output   v7243_8_we0;
output  [7:0] v7243_8_d0;
output  [8:0] v7243_9_address0;
output   v7243_9_ce0;
output   v7243_9_we0;
output  [7:0] v7243_9_d0;
output  [8:0] v7243_10_address0;
output   v7243_10_ce0;
output   v7243_10_we0;
output  [7:0] v7243_10_d0;
output  [8:0] v7243_11_address0;
output   v7243_11_ce0;
output   v7243_11_we0;
output  [7:0] v7243_11_d0;
output  [8:0] v7243_12_address0;
output   v7243_12_ce0;
output   v7243_12_we0;
output  [7:0] v7243_12_d0;
output  [8:0] v7243_13_address0;
output   v7243_13_ce0;
output   v7243_13_we0;
output  [7:0] v7243_13_d0;
output  [8:0] v7243_14_address0;
output   v7243_14_ce0;
output   v7243_14_we0;
output  [7:0] v7243_14_d0;
output  [8:0] v7243_15_address0;
output   v7243_15_ce0;
output   v7243_15_we0;
output  [7:0] v7243_15_d0;
input  [11:0] v7234_0;
output  [13:0] v9019_0_address0;
output   v9019_0_ce0;
input  [7:0] v9019_0_q0;
output  [13:0] v9019_1_address0;
output   v9019_1_ce0;
input  [7:0] v9019_1_q0;
output  [13:0] v9019_2_address0;
output   v9019_2_ce0;
input  [7:0] v9019_2_q0;
output  [13:0] v9019_3_address0;
output   v9019_3_ce0;
input  [7:0] v9019_3_q0;
output  [13:0] v9019_4_address0;
output   v9019_4_ce0;
input  [7:0] v9019_4_q0;
output  [13:0] v9019_5_address0;
output   v9019_5_ce0;
input  [7:0] v9019_5_q0;
output  [13:0] v9019_6_address0;
output   v9019_6_ce0;
input  [7:0] v9019_6_q0;
output  [13:0] v9019_7_address0;
output   v9019_7_ce0;
input  [7:0] v9019_7_q0;
output  [13:0] v9019_8_address0;
output   v9019_8_ce0;
input  [7:0] v9019_8_q0;
output  [13:0] v9019_9_address0;
output   v9019_9_ce0;
input  [7:0] v9019_9_q0;
output  [13:0] v9019_10_address0;
output   v9019_10_ce0;
input  [7:0] v9019_10_q0;
output  [13:0] v9019_11_address0;
output   v9019_11_ce0;
input  [7:0] v9019_11_q0;
output  [13:0] v9019_12_address0;
output   v9019_12_ce0;
input  [7:0] v9019_12_q0;
output  [13:0] v9019_13_address0;
output   v9019_13_ce0;
input  [7:0] v9019_13_q0;
output  [13:0] v9019_14_address0;
output   v9019_14_ce0;
input  [7:0] v9019_14_q0;
output  [13:0] v9019_15_address0;
output   v9019_15_ce0;
input  [7:0] v9019_15_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln9128_fu_792_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln9129195_reg_622;
wire   [2:0] tmp_fu_644_p4;
reg   [2:0] tmp_reg_1076;
wire   [4:0] zext_ln9128_cast_cast_cast_cast_fu_670_p3;
reg   [4:0] zext_ln9128_cast_cast_cast_cast_reg_1081;
wire   [4:0] zext_ln9128_1_cast_cast_cast_cast_fu_682_p3;
reg   [4:0] zext_ln9128_1_cast_cast_cast_cast_reg_1086;
reg   [4:0] zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter1_reg;
reg   [4:0] zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter2_reg;
reg   [0:0] tmp_51_reg_1091;
reg   [0:0] tmp_51_reg_1091_pp0_iter1_reg;
reg   [3:0] tmp_32_reg_1098;
wire   [0:0] icmp_ln9129_fu_786_p2;
reg   [0:0] icmp_ln9129_reg_1103;
reg   [0:0] icmp_ln9128_reg_1108;
reg   [0:0] icmp_ln9128_reg_1108_pp0_iter1_reg;
wire   [3:0] v7210_mid2_fu_851_p3;
reg   [3:0] v7210_mid2_reg_1112;
reg   [3:0] v7210_mid2_reg_1112_pp0_iter2_reg;
reg   [3:0] v7210_mid2_reg_1112_pp0_iter3_reg;
wire   [3:0] v7209_fu_859_p3;
reg   [3:0] v7209_reg_1118;
wire   [0:0] icmp_ln9130_fu_911_p2;
reg   [0:0] icmp_ln9130_reg_1123;
wire   [13:0] zext_ln9133_3_fu_960_p1;
reg   [0:0] ap_phi_mux_icmp_ln9129195_phi_fu_625_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln9130194_phi_fu_636_p4;
reg    ap_loop_init_pp0_iter1_reg;
wire   [63:0] zext_ln9133_4_fu_967_p1;
wire   [63:0] zext_ln9135_2_fu_971_p1;
wire   [63:0] zext_ln9163_2_fu_989_p1;
reg   [8:0] indvar_flatten12189_fu_164;
wire   [8:0] add_ln9128_1_fu_780_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten12189_load;
reg   [5:0] v7208190_fu_168;
wire   [5:0] v7208_fu_730_p3;
reg   [5:0] ap_sig_allocacmp_v7208190_load;
reg   [7:0] indvar_flatten191_fu_172;
wire   [7:0] select_ln9129_1_fu_772_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten191_load;
reg   [3:0] v7209192_fu_176;
reg   [3:0] v7210193_fu_180;
wire   [3:0] v7210_fu_905_p2;
reg    v9019_0_ce0_local;
reg    v9019_1_ce0_local;
reg    v9019_2_ce0_local;
reg    v9019_3_ce0_local;
reg    v9019_4_ce0_local;
reg    v9019_5_ce0_local;
reg    v9019_6_ce0_local;
reg    v9019_7_ce0_local;
reg    v9019_8_ce0_local;
reg    v9019_9_ce0_local;
reg    v9019_10_ce0_local;
reg    v9019_11_ce0_local;
reg    v9019_12_ce0_local;
reg    v9019_13_ce0_local;
reg    v9019_14_ce0_local;
reg    v9019_15_ce0_local;
reg    v7243_15_we0_local;
reg    v7243_15_ce0_local;
reg    v7243_14_we0_local;
reg    v7243_14_ce0_local;
reg    v7243_13_we0_local;
reg    v7243_13_ce0_local;
reg    v7243_12_we0_local;
reg    v7243_12_ce0_local;
reg    v7243_11_we0_local;
reg    v7243_11_ce0_local;
reg    v7243_10_we0_local;
reg    v7243_10_ce0_local;
reg    v7243_9_we0_local;
reg    v7243_9_ce0_local;
reg    v7243_8_we0_local;
reg    v7243_8_ce0_local;
reg    v7243_7_we0_local;
reg    v7243_7_ce0_local;
reg    v7243_6_we0_local;
reg    v7243_6_ce0_local;
reg    v7243_5_we0_local;
reg    v7243_5_ce0_local;
reg    v7243_4_we0_local;
reg    v7243_4_ce0_local;
reg    v7243_3_we0_local;
reg    v7243_3_ce0_local;
reg    v7243_2_we0_local;
reg    v7243_2_ce0_local;
reg    v7243_1_we0_local;
reg    v7243_1_ce0_local;
reg    v7243_we0_local;
reg    v7243_ce0_local;
wire   [0:0] tmp_50_fu_662_p3;
wire   [0:0] empty_fu_678_p1;
wire   [5:0] add_ln9128_fu_724_p2;
wire   [7:0] mul_i_fu_654_p3;
wire   [7:0] zext_ln9128_fu_738_p1;
wire   [7:0] empty_109_fu_750_p2;
wire   [7:0] add_ln9129_1_fu_766_p2;
wire   [0:0] xor_ln9128_fu_827_p2;
wire   [3:0] select_ln9128_fu_819_p3;
wire   [0:0] and_ln9128_fu_833_p2;
wire   [0:0] empty_108_fu_845_p2;
wire   [3:0] add_ln9129_fu_839_p2;
wire   [3:0] tmp_31_fu_867_p3;
wire   [3:0] mul_ln9133_fu_877_p0;
wire   [5:0] mul_ln9133_fu_877_p1;
wire   [3:0] mul_ln9135_fu_886_p0;
wire   [5:0] mul_ln9135_fu_886_p1;
wire   [4:0] zext_ln9129_1_fu_892_p1;
wire   [4:0] empty_110_fu_896_p2;
wire   [1:0] select_ln9163_fu_927_p3;
wire   [4:0] tmp_s_fu_934_p5;
wire   [4:0] zext_ln9130_fu_952_p1;
wire   [4:0] add_ln9132_fu_955_p2;
wire   [13:0] grp_fu_1008_p4;
wire   [13:0] grp_fu_1019_p4;
wire   [8:0] grp_fu_1030_p4;
wire   [8:0] mul_ln9133_fu_877_p2;
wire   [4:0] grp_fu_1008_p1;
wire   [8:0] zext_ln9133_1_fu_901_p1;
wire   [4:0] grp_fu_1008_p2;
wire   [4:0] grp_fu_1008_p3;
wire   [8:0] mul_ln9135_fu_886_p2;
wire   [4:0] grp_fu_1019_p1;
wire   [4:0] grp_fu_1019_p2;
wire   [4:0] grp_fu_1019_p3;
wire   [4:0] grp_fu_1030_p0;
wire   [3:0] grp_fu_1030_p1;
wire   [3:0] grp_fu_1030_p2;
wire   [3:0] grp_fu_1030_p3;
reg    grp_fu_1008_ce;
reg    grp_fu_1019_ce;
reg    grp_fu_1030_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] grp_fu_1030_p00;
wire   [5:0] grp_fu_1030_p10;
wire   [8:0] grp_fu_1030_p30;
wire   [8:0] mul_ln9133_fu_877_p00;
wire   [8:0] mul_ln9135_fu_886_p00;
reg    ap_condition_809;
reg    ap_condition_814;
reg    ap_condition_304;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12189_fu_164 = 9'd0;
#0 v7208190_fu_168 = 6'd0;
#0 indvar_flatten191_fu_172 = 8'd0;
#0 v7209192_fu_176 = 4'd0;
#0 v7210193_fu_180 = 4'd0;
end
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U3016(.din0(mul_ln9133_fu_877_p0),.din1(mul_ln9133_fu_877_p1),.dout(mul_ln9133_fu_877_p2));
forward_mul_4ns_6ns_9_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 4 ),.din1_WIDTH( 6 ),.dout_WIDTH( 9 ))
mul_4ns_6ns_9_1_1_U3017(.din0(mul_ln9135_fu_886_p0),.din1(mul_ln9135_fu_886_p1),.dout(mul_ln9135_fu_886_p2));
forward_ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 14 ))
ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1_U3018(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln9133_fu_877_p2),.din1(grp_fu_1008_p1),.din2(grp_fu_1008_p2),.din3(grp_fu_1008_p3),.ce(grp_fu_1008_ce),.dout(grp_fu_1008_p4));
forward_ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 14 ))
ama_addmuladd_9ns_5ns_5ns_5ns_14_4_1_U3019(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln9135_fu_886_p2),.din1(grp_fu_1019_p1),.din2(grp_fu_1019_p2),.din3(grp_fu_1019_p3),.ce(grp_fu_1019_ce),.dout(grp_fu_1019_p4));
forward_ama_addmuladd_5ns_4ns_4ns_4ns_9_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 4 ),.din2_WIDTH( 4 ),.din3_WIDTH( 4 ),.dout_WIDTH( 9 ))
ama_addmuladd_5ns_4ns_4ns_4ns_9_4_1_U3020(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1030_p0),.din1(grp_fu_1030_p1),.din2(grp_fu_1030_p2),.din3(grp_fu_1030_p3),.ce(grp_fu_1030_ce),.dout(grp_fu_1030_p4));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_814)) begin
            icmp_ln9129195_reg_622 <= icmp_ln9129_reg_1103;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln9129195_reg_622 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_304)) begin
        indvar_flatten12189_fu_164 <= add_ln9128_1_fu_780_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_304)) begin
    indvar_flatten191_fu_172 <= select_ln9129_1_fu_772_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_304)) begin
    v7208190_fu_168 <= v7208_fu_730_p3;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v7209192_fu_176 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v7209192_fu_176 <= v7209_fu_859_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1))) begin
        v7210193_fu_180 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v7210193_fu_180 <= v7210_fu_905_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln9128_reg_1108 <= icmp_ln9128_fu_792_p2;
        icmp_ln9128_reg_1108_pp0_iter1_reg <= icmp_ln9128_reg_1108;
        tmp_32_reg_1098 <= {{empty_109_fu_750_p2[7:4]}};
        tmp_51_reg_1091 <= v7208_fu_730_p3[32'd4];
        tmp_51_reg_1091_pp0_iter1_reg <= tmp_51_reg_1091;
        tmp_reg_1076 <= {{v7234_0[4:2]}};
        v7209_reg_1118 <= v7209_fu_859_p3;
        v7210_mid2_reg_1112 <= v7210_mid2_fu_851_p3;
        zext_ln9128_1_cast_cast_cast_cast_reg_1086[0] <= zext_ln9128_1_cast_cast_cast_cast_fu_682_p3[0];
zext_ln9128_1_cast_cast_cast_cast_reg_1086[3 : 2] <= zext_ln9128_1_cast_cast_cast_cast_fu_682_p3[3 : 2];
        zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[0] <= zext_ln9128_1_cast_cast_cast_cast_reg_1086[0];
zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[3 : 2] <= zext_ln9128_1_cast_cast_cast_cast_reg_1086[3 : 2];
        zext_ln9128_cast_cast_cast_cast_reg_1081[0] <= zext_ln9128_cast_cast_cast_cast_fu_670_p3[0];
zext_ln9128_cast_cast_cast_cast_reg_1081[3 : 2] <= zext_ln9128_cast_cast_cast_cast_fu_670_p3[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        v7210_mid2_reg_1112_pp0_iter2_reg <= v7210_mid2_reg_1112;
        v7210_mid2_reg_1112_pp0_iter3_reg <= v7210_mid2_reg_1112_pp0_iter2_reg;
        zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter2_reg[0] <= zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[0];
zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter2_reg[3 : 2] <= zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9129_reg_1103 <= icmp_ln9129_fu_786_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9130_reg_1123 <= icmp_ln9130_fu_911_p2;
    end
end
always @ (*) begin
    if (((icmp_ln9128_fu_792_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_809)) begin
            ap_phi_mux_icmp_ln9129195_phi_fu_625_p4 = icmp_ln9129_reg_1103;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9129195_phi_fu_625_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9129195_phi_fu_625_p4 = icmp_ln9129_reg_1103;
        end
    end else begin
        ap_phi_mux_icmp_ln9129195_phi_fu_625_p4 = icmp_ln9129_reg_1103;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln9128_reg_1108_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln9130194_phi_fu_636_p4 = icmp_ln9130_reg_1123;
    end else if (((ap_loop_init_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln9130194_phi_fu_636_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln9130194_phi_fu_636_p4 = icmp_ln9130_reg_1123;
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
        ap_sig_allocacmp_indvar_flatten12189_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12189_load = indvar_flatten12189_fu_164;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten191_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten191_load = indvar_flatten191_fu_172;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7208190_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v7208190_load = v7208190_fu_168;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_10_ce0_local = 1'b1;
    end else begin
        v7243_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_10_we0_local = 1'b1;
    end else begin
        v7243_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_11_ce0_local = 1'b1;
    end else begin
        v7243_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_11_we0_local = 1'b1;
    end else begin
        v7243_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_12_ce0_local = 1'b1;
    end else begin
        v7243_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_12_we0_local = 1'b1;
    end else begin
        v7243_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_13_ce0_local = 1'b1;
    end else begin
        v7243_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_13_we0_local = 1'b1;
    end else begin
        v7243_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_14_ce0_local = 1'b1;
    end else begin
        v7243_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_14_we0_local = 1'b1;
    end else begin
        v7243_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_15_ce0_local = 1'b1;
    end else begin
        v7243_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_15_we0_local = 1'b1;
    end else begin
        v7243_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_1_ce0_local = 1'b1;
    end else begin
        v7243_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_1_we0_local = 1'b1;
    end else begin
        v7243_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_2_ce0_local = 1'b1;
    end else begin
        v7243_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_2_we0_local = 1'b1;
    end else begin
        v7243_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_3_ce0_local = 1'b1;
    end else begin
        v7243_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_3_we0_local = 1'b1;
    end else begin
        v7243_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_4_ce0_local = 1'b1;
    end else begin
        v7243_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_4_we0_local = 1'b1;
    end else begin
        v7243_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_5_ce0_local = 1'b1;
    end else begin
        v7243_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_5_we0_local = 1'b1;
    end else begin
        v7243_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_6_ce0_local = 1'b1;
    end else begin
        v7243_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_6_we0_local = 1'b1;
    end else begin
        v7243_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_7_ce0_local = 1'b1;
    end else begin
        v7243_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_7_we0_local = 1'b1;
    end else begin
        v7243_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_8_ce0_local = 1'b1;
    end else begin
        v7243_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_8_we0_local = 1'b1;
    end else begin
        v7243_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_9_ce0_local = 1'b1;
    end else begin
        v7243_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_9_we0_local = 1'b1;
    end else begin
        v7243_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_ce0_local = 1'b1;
    end else begin
        v7243_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v7243_we0_local = 1'b1;
    end else begin
        v7243_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_0_ce0_local = 1'b1;
    end else begin
        v9019_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_10_ce0_local = 1'b1;
    end else begin
        v9019_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_11_ce0_local = 1'b1;
    end else begin
        v9019_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_12_ce0_local = 1'b1;
    end else begin
        v9019_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_13_ce0_local = 1'b1;
    end else begin
        v9019_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_14_ce0_local = 1'b1;
    end else begin
        v9019_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_15_ce0_local = 1'b1;
    end else begin
        v9019_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_1_ce0_local = 1'b1;
    end else begin
        v9019_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_2_ce0_local = 1'b1;
    end else begin
        v9019_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_3_ce0_local = 1'b1;
    end else begin
        v9019_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_4_ce0_local = 1'b1;
    end else begin
        v9019_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_5_ce0_local = 1'b1;
    end else begin
        v9019_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_6_ce0_local = 1'b1;
    end else begin
        v9019_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_7_ce0_local = 1'b1;
    end else begin
        v9019_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_8_ce0_local = 1'b1;
    end else begin
        v9019_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9019_9_ce0_local = 1'b1;
    end else begin
        v9019_9_ce0_local = 1'b0;
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
assign add_ln9128_1_fu_780_p2 = (ap_sig_allocacmp_indvar_flatten12189_load + 9'd1);
assign add_ln9128_fu_724_p2 = (ap_sig_allocacmp_v7208190_load + 6'd16);
assign add_ln9129_1_fu_766_p2 = (ap_sig_allocacmp_indvar_flatten191_load + 8'd1);
assign add_ln9129_fu_839_p2 = (select_ln9128_fu_819_p3 + 4'd1);
assign add_ln9132_fu_955_p2 = (zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter2_reg + zext_ln9130_fu_952_p1);
assign and_ln9128_fu_833_p2 = (xor_ln9128_fu_827_p2 & ap_phi_mux_icmp_ln9130194_phi_fu_636_p4);
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
    ap_condition_304 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_809 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln9128_reg_1108 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_814 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln9128_reg_1108 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_108_fu_845_p2 = (icmp_ln9129195_reg_622 | and_ln9128_fu_833_p2);
assign empty_109_fu_750_p2 = (mul_i_fu_654_p3 + zext_ln9128_fu_738_p1);
assign empty_110_fu_896_p2 = (zext_ln9128_cast_cast_cast_cast_reg_1081 + zext_ln9129_1_fu_892_p1);
assign empty_fu_678_p1 = v7234_0[0:0];
assign grp_fu_1008_p1 = zext_ln9133_1_fu_901_p1;
assign grp_fu_1008_p2 = 14'd26;
assign grp_fu_1008_p3 = zext_ln9133_3_fu_960_p1;
assign grp_fu_1019_p1 = zext_ln9133_1_fu_901_p1;
assign grp_fu_1019_p2 = 14'd26;
assign grp_fu_1019_p3 = zext_ln9133_3_fu_960_p1;
assign grp_fu_1030_p0 = grp_fu_1030_p00;
assign grp_fu_1030_p00 = tmp_s_fu_934_p5;
assign grp_fu_1030_p1 = grp_fu_1030_p10;
assign grp_fu_1030_p10 = v7209_reg_1118;
assign grp_fu_1030_p2 = 9'd13;
assign grp_fu_1030_p3 = grp_fu_1030_p30;
assign grp_fu_1030_p30 = v7210_mid2_reg_1112_pp0_iter3_reg;
assign icmp_ln9128_fu_792_p2 = ((ap_sig_allocacmp_indvar_flatten12189_load == 9'd337) ? 1'b1 : 1'b0);
assign icmp_ln9129_fu_786_p2 = ((select_ln9129_1_fu_772_p3 == 8'd169) ? 1'b1 : 1'b0);
assign icmp_ln9130_fu_911_p2 = ((v7210_fu_905_p2 == 4'd13) ? 1'b1 : 1'b0);
assign mul_i_fu_654_p3 = {{tmp_fu_644_p4}, {5'd0}};
assign mul_ln9133_fu_877_p0 = mul_ln9133_fu_877_p00;
assign mul_ln9133_fu_877_p00 = tmp_31_fu_867_p3;
assign mul_ln9133_fu_877_p1 = 9'd26;
assign mul_ln9135_fu_886_p0 = mul_ln9135_fu_886_p00;
assign mul_ln9135_fu_886_p00 = tmp_32_reg_1098;
assign mul_ln9135_fu_886_p1 = 9'd26;
assign select_ln9128_fu_819_p3 = ((icmp_ln9129195_reg_622[0:0] == 1'b1) ? 4'd0 : v7209192_fu_176);
assign select_ln9129_1_fu_772_p3 = ((ap_phi_mux_icmp_ln9129195_phi_fu_625_p4[0:0] == 1'b1) ? 8'd1 : add_ln9129_1_fu_766_p2);
assign select_ln9163_fu_927_p3 = ((tmp_51_reg_1091_pp0_iter1_reg[0:0] == 1'b1) ? 2'd3 : 2'd0);
assign tmp_31_fu_867_p3 = {{tmp_reg_1076}, {tmp_51_reg_1091}};
assign tmp_50_fu_662_p3 = v7234_0[32'd1];
assign tmp_fu_644_p4 = {{v7234_0[4:2]}};
assign tmp_s_fu_934_p5 = {{{{{{1'd0}, {select_ln9163_fu_927_p3}}}, {1'd0}}}, {tmp_51_reg_1091_pp0_iter1_reg}};
assign v7208_fu_730_p3 = ((ap_phi_mux_icmp_ln9129195_phi_fu_625_p4[0:0] == 1'b1) ? add_ln9128_fu_724_p2 : ap_sig_allocacmp_v7208190_load);
assign v7209_fu_859_p3 = ((and_ln9128_fu_833_p2[0:0] == 1'b1) ? add_ln9129_fu_839_p2 : select_ln9128_fu_819_p3);
assign v7210_fu_905_p2 = (v7210_mid2_fu_851_p3 + 4'd1);
assign v7210_mid2_fu_851_p3 = ((empty_108_fu_845_p2[0:0] == 1'b1) ? 4'd0 : v7210193_fu_180);
assign v7243_10_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_10_ce0 = v7243_10_ce0_local;
assign v7243_10_d0 = v9019_5_q0;
assign v7243_10_we0 = v7243_10_we0_local;
assign v7243_11_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_11_ce0 = v7243_11_ce0_local;
assign v7243_11_d0 = v9019_4_q0;
assign v7243_11_we0 = v7243_11_we0_local;
assign v7243_12_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_12_ce0 = v7243_12_ce0_local;
assign v7243_12_d0 = v9019_3_q0;
assign v7243_12_we0 = v7243_12_we0_local;
assign v7243_13_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_13_ce0 = v7243_13_ce0_local;
assign v7243_13_d0 = v9019_2_q0;
assign v7243_13_we0 = v7243_13_we0_local;
assign v7243_14_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_14_ce0 = v7243_14_ce0_local;
assign v7243_14_d0 = v9019_1_q0;
assign v7243_14_we0 = v7243_14_we0_local;
assign v7243_15_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_15_ce0 = v7243_15_ce0_local;
assign v7243_15_d0 = v9019_0_q0;
assign v7243_15_we0 = v7243_15_we0_local;
assign v7243_1_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_1_ce0 = v7243_1_ce0_local;
assign v7243_1_d0 = v9019_14_q0;
assign v7243_1_we0 = v7243_1_we0_local;
assign v7243_2_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_2_ce0 = v7243_2_ce0_local;
assign v7243_2_d0 = v9019_13_q0;
assign v7243_2_we0 = v7243_2_we0_local;
assign v7243_3_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_3_ce0 = v7243_3_ce0_local;
assign v7243_3_d0 = v9019_12_q0;
assign v7243_3_we0 = v7243_3_we0_local;
assign v7243_4_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_4_ce0 = v7243_4_ce0_local;
assign v7243_4_d0 = v9019_11_q0;
assign v7243_4_we0 = v7243_4_we0_local;
assign v7243_5_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_5_ce0 = v7243_5_ce0_local;
assign v7243_5_d0 = v9019_10_q0;
assign v7243_5_we0 = v7243_5_we0_local;
assign v7243_6_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_6_ce0 = v7243_6_ce0_local;
assign v7243_6_d0 = v9019_9_q0;
assign v7243_6_we0 = v7243_6_we0_local;
assign v7243_7_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_7_ce0 = v7243_7_ce0_local;
assign v7243_7_d0 = v9019_8_q0;
assign v7243_7_we0 = v7243_7_we0_local;
assign v7243_8_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_8_ce0 = v7243_8_ce0_local;
assign v7243_8_d0 = v9019_7_q0;
assign v7243_8_we0 = v7243_8_we0_local;
assign v7243_9_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_9_ce0 = v7243_9_ce0_local;
assign v7243_9_d0 = v9019_6_q0;
assign v7243_9_we0 = v7243_9_we0_local;
assign v7243_address0 = zext_ln9163_2_fu_989_p1;
assign v7243_ce0 = v7243_ce0_local;
assign v7243_d0 = v9019_15_q0;
assign v7243_we0 = v7243_we0_local;
assign v9019_0_address0 = zext_ln9133_4_fu_967_p1;
assign v9019_0_ce0 = v9019_0_ce0_local;
assign v9019_10_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_10_ce0 = v9019_10_ce0_local;
assign v9019_11_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_11_ce0 = v9019_11_ce0_local;
assign v9019_12_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_12_ce0 = v9019_12_ce0_local;
assign v9019_13_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_13_ce0 = v9019_13_ce0_local;
assign v9019_14_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_14_ce0 = v9019_14_ce0_local;
assign v9019_15_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_15_ce0 = v9019_15_ce0_local;
assign v9019_1_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_1_ce0 = v9019_1_ce0_local;
assign v9019_2_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_2_ce0 = v9019_2_ce0_local;
assign v9019_3_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_3_ce0 = v9019_3_ce0_local;
assign v9019_4_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_4_ce0 = v9019_4_ce0_local;
assign v9019_5_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_5_ce0 = v9019_5_ce0_local;
assign v9019_6_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_6_ce0 = v9019_6_ce0_local;
assign v9019_7_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_7_ce0 = v9019_7_ce0_local;
assign v9019_8_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_8_ce0 = v9019_8_ce0_local;
assign v9019_9_address0 = zext_ln9135_2_fu_971_p1;
assign v9019_9_ce0 = v9019_9_ce0_local;
assign xor_ln9128_fu_827_p2 = (icmp_ln9129195_reg_622 ^ 1'd1);
assign zext_ln9128_1_cast_cast_cast_cast_fu_682_p3 = ((empty_fu_678_p1[0:0] == 1'b1) ? 5'd13 : 5'd0);
assign zext_ln9128_cast_cast_cast_cast_fu_670_p3 = ((tmp_50_fu_662_p3[0:0] == 1'b1) ? 5'd13 : 5'd0);
assign zext_ln9128_fu_738_p1 = v7208_fu_730_p3;
assign zext_ln9129_1_fu_892_p1 = v7209_fu_859_p3;
assign zext_ln9130_fu_952_p1 = v7210_mid2_reg_1112_pp0_iter2_reg;
assign zext_ln9133_1_fu_901_p1 = empty_110_fu_896_p2;
assign zext_ln9133_3_fu_960_p1 = add_ln9132_fu_955_p2;
assign zext_ln9133_4_fu_967_p1 = grp_fu_1008_p4;
assign zext_ln9135_2_fu_971_p1 = grp_fu_1019_p4;
assign zext_ln9163_2_fu_989_p1 = grp_fu_1030_p4;
always @ (posedge ap_clk) begin
    zext_ln9128_cast_cast_cast_cast_reg_1081[1] <= 1'b0;
    zext_ln9128_cast_cast_cast_cast_reg_1081[4] <= 1'b0;
    zext_ln9128_1_cast_cast_cast_cast_reg_1086[1] <= 1'b0;
    zext_ln9128_1_cast_cast_cast_cast_reg_1086[4] <= 1'b0;
    zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[1] <= 1'b0;
    zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter1_reg[4] <= 1'b0;
    zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter2_reg[1] <= 1'b0;
    zext_ln9128_1_cast_cast_cast_cast_reg_1086_pp0_iter2_reg[4] <= 1'b0;
end
endmodule 