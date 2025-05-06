
module backprop_backprop_Pipeline_VITIS_LOOP_11_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mux_case_256835700,mux_case_156825696,mux_case_056815692,activations3_load_2,activations3_1_load_2,activations3_2_load_2,sum_reload,mux_case_256835698_out,mux_case_256835698_out_ap_vld,mux_case_156825694_out,mux_case_156825694_out_ap_vld,mux_case_056815690_out,mux_case_056815690_out_ap_vld,grp_fu_23103_p_din0,grp_fu_23103_p_din1,grp_fu_23103_p_dout0,grp_fu_23103_p_ce,grp_fu_23107_p_din0,grp_fu_23107_p_din1,grp_fu_23107_p_dout0,grp_fu_23107_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] mux_case_256835700;
input  [63:0] mux_case_156825696;
input  [63:0] mux_case_056815692;
input  [63:0] activations3_load_2;
input  [63:0] activations3_1_load_2;
input  [63:0] activations3_2_load_2;
input  [63:0] sum_reload;
output  [63:0] mux_case_256835698_out;
output   mux_case_256835698_out_ap_vld;
output  [63:0] mux_case_156825694_out;
output   mux_case_156825694_out_ap_vld;
output  [63:0] mux_case_056815690_out;
output   mux_case_056815690_out_ap_vld;
output  [63:0] grp_fu_23103_p_din0;
output  [63:0] grp_fu_23103_p_din1;
input  [63:0] grp_fu_23103_p_dout0;
output   grp_fu_23103_p_ce;
output  [63:0] grp_fu_23107_p_din0;
output  [63:0] grp_fu_23107_p_din1;
input  [63:0] grp_fu_23107_p_dout0;
output   grp_fu_23107_p_ce;
reg ap_idle;
reg mux_case_256835698_out_ap_vld;
reg mux_case_156825694_out_ap_vld;
reg mux_case_056815690_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_enable_reg_pp0_iter27;
reg    ap_enable_reg_pp0_iter28;
reg    ap_enable_reg_pp0_iter29;
reg    ap_enable_reg_pp0_iter30;
reg    ap_enable_reg_pp0_iter31;
reg    ap_enable_reg_pp0_iter32;
reg    ap_enable_reg_pp0_iter33;
reg    ap_enable_reg_pp0_iter34;
reg    ap_enable_reg_pp0_iter35;
reg    ap_enable_reg_pp0_iter36;
reg    ap_enable_reg_pp0_iter37;
reg    ap_enable_reg_pp0_iter38;
reg    ap_enable_reg_pp0_iter39;
reg    ap_enable_reg_pp0_iter40;
reg    ap_enable_reg_pp0_iter41;
reg    ap_enable_reg_pp0_iter42;
reg    ap_enable_reg_pp0_iter43;
reg    ap_enable_reg_pp0_iter44;
reg    ap_enable_reg_pp0_iter45;
reg    ap_enable_reg_pp0_iter46;
reg    ap_enable_reg_pp0_iter47;
reg    ap_enable_reg_pp0_iter48;
reg    ap_enable_reg_pp0_iter49;
reg    ap_enable_reg_pp0_iter50;
reg    ap_enable_reg_pp0_iter51;
reg    ap_enable_reg_pp0_iter52;
reg    ap_enable_reg_pp0_iter53;
reg    ap_enable_reg_pp0_iter54;
reg    ap_enable_reg_pp0_iter55;
reg    ap_enable_reg_pp0_iter56;
reg    ap_enable_reg_pp0_iter57;
reg    ap_enable_reg_pp0_iter58;
reg    ap_enable_reg_pp0_iter59;
reg    ap_enable_reg_pp0_iter60;
reg    ap_enable_reg_pp0_iter61;
reg    ap_enable_reg_pp0_iter62;
reg    ap_enable_reg_pp0_iter63;
reg    ap_enable_reg_pp0_iter64;
reg    ap_enable_reg_pp0_iter65;
reg    ap_enable_reg_pp0_iter66;
reg    ap_enable_reg_pp0_iter67;
reg    ap_enable_reg_pp0_iter68;
reg    ap_enable_reg_pp0_iter69;
reg    ap_enable_reg_pp0_iter70;
reg    ap_enable_reg_pp0_iter71;
reg    ap_enable_reg_pp0_iter72;
reg    ap_enable_reg_pp0_iter73;
reg    ap_enable_reg_pp0_iter74;
reg    ap_enable_reg_pp0_iter75;
reg    ap_enable_reg_pp0_iter76;
reg    ap_enable_reg_pp0_iter77;
reg    ap_enable_reg_pp0_iter78;
reg    ap_enable_reg_pp0_iter79;
reg    ap_enable_reg_pp0_iter80;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_fu_175_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] i_16_reg_305;
reg   [1:0] i_16_reg_305_pp0_iter1_reg;
reg   [1:0] i_16_reg_305_pp0_iter2_reg;
reg   [1:0] i_16_reg_305_pp0_iter3_reg;
reg   [1:0] i_16_reg_305_pp0_iter4_reg;
reg   [1:0] i_16_reg_305_pp0_iter5_reg;
reg   [1:0] i_16_reg_305_pp0_iter6_reg;
reg   [1:0] i_16_reg_305_pp0_iter7_reg;
reg   [1:0] i_16_reg_305_pp0_iter8_reg;
reg   [1:0] i_16_reg_305_pp0_iter9_reg;
reg   [1:0] i_16_reg_305_pp0_iter10_reg;
reg   [1:0] i_16_reg_305_pp0_iter11_reg;
reg   [1:0] i_16_reg_305_pp0_iter12_reg;
reg   [1:0] i_16_reg_305_pp0_iter13_reg;
reg   [1:0] i_16_reg_305_pp0_iter14_reg;
reg   [1:0] i_16_reg_305_pp0_iter15_reg;
reg   [1:0] i_16_reg_305_pp0_iter16_reg;
reg   [1:0] i_16_reg_305_pp0_iter17_reg;
reg   [1:0] i_16_reg_305_pp0_iter18_reg;
reg   [1:0] i_16_reg_305_pp0_iter19_reg;
reg   [1:0] i_16_reg_305_pp0_iter20_reg;
reg   [1:0] i_16_reg_305_pp0_iter21_reg;
reg   [1:0] i_16_reg_305_pp0_iter22_reg;
reg   [1:0] i_16_reg_305_pp0_iter23_reg;
reg   [1:0] i_16_reg_305_pp0_iter24_reg;
reg   [1:0] i_16_reg_305_pp0_iter25_reg;
reg   [1:0] i_16_reg_305_pp0_iter26_reg;
reg   [1:0] i_16_reg_305_pp0_iter27_reg;
reg   [1:0] i_16_reg_305_pp0_iter28_reg;
reg   [1:0] i_16_reg_305_pp0_iter29_reg;
reg   [1:0] i_16_reg_305_pp0_iter30_reg;
reg   [1:0] i_16_reg_305_pp0_iter31_reg;
reg   [1:0] i_16_reg_305_pp0_iter32_reg;
reg   [1:0] i_16_reg_305_pp0_iter33_reg;
reg   [1:0] i_16_reg_305_pp0_iter34_reg;
reg   [1:0] i_16_reg_305_pp0_iter35_reg;
reg   [1:0] i_16_reg_305_pp0_iter36_reg;
reg   [1:0] i_16_reg_305_pp0_iter37_reg;
reg   [1:0] i_16_reg_305_pp0_iter38_reg;
reg   [1:0] i_16_reg_305_pp0_iter39_reg;
reg   [1:0] i_16_reg_305_pp0_iter40_reg;
reg   [1:0] i_16_reg_305_pp0_iter41_reg;
reg   [1:0] i_16_reg_305_pp0_iter42_reg;
reg   [1:0] i_16_reg_305_pp0_iter43_reg;
reg   [1:0] i_16_reg_305_pp0_iter44_reg;
reg   [1:0] i_16_reg_305_pp0_iter45_reg;
reg   [1:0] i_16_reg_305_pp0_iter46_reg;
reg   [1:0] i_16_reg_305_pp0_iter47_reg;
reg   [1:0] i_16_reg_305_pp0_iter48_reg;
reg   [1:0] i_16_reg_305_pp0_iter49_reg;
reg   [1:0] i_16_reg_305_pp0_iter50_reg;
reg   [1:0] i_16_reg_305_pp0_iter51_reg;
reg   [1:0] i_16_reg_305_pp0_iter52_reg;
reg   [1:0] i_16_reg_305_pp0_iter53_reg;
reg   [1:0] i_16_reg_305_pp0_iter54_reg;
reg   [1:0] i_16_reg_305_pp0_iter55_reg;
reg   [1:0] i_16_reg_305_pp0_iter56_reg;
reg   [1:0] i_16_reg_305_pp0_iter57_reg;
reg   [1:0] i_16_reg_305_pp0_iter58_reg;
reg   [1:0] i_16_reg_305_pp0_iter59_reg;
reg   [1:0] i_16_reg_305_pp0_iter60_reg;
reg   [1:0] i_16_reg_305_pp0_iter61_reg;
reg   [1:0] i_16_reg_305_pp0_iter62_reg;
reg   [1:0] i_16_reg_305_pp0_iter63_reg;
reg   [1:0] i_16_reg_305_pp0_iter64_reg;
reg   [1:0] i_16_reg_305_pp0_iter65_reg;
reg   [1:0] i_16_reg_305_pp0_iter66_reg;
reg   [1:0] i_16_reg_305_pp0_iter67_reg;
reg   [1:0] i_16_reg_305_pp0_iter68_reg;
reg   [1:0] i_16_reg_305_pp0_iter69_reg;
reg   [1:0] i_16_reg_305_pp0_iter70_reg;
reg   [1:0] i_16_reg_305_pp0_iter71_reg;
reg   [1:0] i_16_reg_305_pp0_iter72_reg;
reg   [1:0] i_16_reg_305_pp0_iter73_reg;
reg   [1:0] i_16_reg_305_pp0_iter74_reg;
reg   [1:0] i_16_reg_305_pp0_iter75_reg;
reg   [1:0] i_16_reg_305_pp0_iter76_reg;
reg   [1:0] i_16_reg_305_pp0_iter77_reg;
reg   [1:0] i_16_reg_305_pp0_iter78_reg;
reg   [1:0] i_16_reg_305_pp0_iter79_reg;
reg   [0:0] icmp_ln11_reg_309;
reg   [0:0] icmp_ln11_reg_309_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter2_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter3_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter4_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter5_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter6_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter7_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter8_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter9_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter10_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter11_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter12_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter13_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter14_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter15_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter16_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter17_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter18_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter19_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter20_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter21_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter22_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter23_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter24_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter25_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter26_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter27_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter28_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter29_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter30_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter31_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter32_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter33_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter34_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter35_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter36_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter37_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter38_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter39_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter40_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter41_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter42_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter43_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter44_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter45_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter46_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter47_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter48_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter49_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter50_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter51_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter52_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter53_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter54_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter55_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter56_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter57_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter58_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter59_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter60_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter61_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter62_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter63_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter64_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter65_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter66_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter67_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter68_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter69_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter70_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter71_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter72_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter73_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter74_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter75_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter76_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter77_reg;
reg   [0:0] icmp_ln11_reg_309_pp0_iter78_reg;
wire   [0:0] xor_ln12_fu_219_p2;
reg   [0:0] xor_ln12_reg_313;
wire   [62:0] trunc_ln12_fu_225_p1;
reg   [62:0] trunc_ln12_reg_318;
wire   [63:0] bitcast_ln12_1_fu_240_p1;
reg   [63:0] tmp_256_reg_328;
reg   [1:0] i_fu_64;
wire   [1:0] add_ln11_fu_181_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_i_16;
wire    ap_block_pp0_stage0;
reg   [63:0] mux_case_056815690_fu_68;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg    ap_loop_exit_ready_pp0_iter26_reg;
reg    ap_loop_exit_ready_pp0_iter27_reg;
reg    ap_loop_exit_ready_pp0_iter28_reg;
reg    ap_loop_exit_ready_pp0_iter29_reg;
reg    ap_loop_exit_ready_pp0_iter30_reg;
reg    ap_loop_exit_ready_pp0_iter31_reg;
reg    ap_loop_exit_ready_pp0_iter32_reg;
reg    ap_loop_exit_ready_pp0_iter33_reg;
reg    ap_loop_exit_ready_pp0_iter34_reg;
reg    ap_loop_exit_ready_pp0_iter35_reg;
reg    ap_loop_exit_ready_pp0_iter36_reg;
reg    ap_loop_exit_ready_pp0_iter37_reg;
reg    ap_loop_exit_ready_pp0_iter38_reg;
reg    ap_loop_exit_ready_pp0_iter39_reg;
reg    ap_loop_exit_ready_pp0_iter40_reg;
reg    ap_loop_exit_ready_pp0_iter41_reg;
reg    ap_loop_exit_ready_pp0_iter42_reg;
reg    ap_loop_exit_ready_pp0_iter43_reg;
reg    ap_loop_exit_ready_pp0_iter44_reg;
reg    ap_loop_exit_ready_pp0_iter45_reg;
reg    ap_loop_exit_ready_pp0_iter46_reg;
reg    ap_loop_exit_ready_pp0_iter47_reg;
reg    ap_loop_exit_ready_pp0_iter48_reg;
reg    ap_loop_exit_ready_pp0_iter49_reg;
reg    ap_loop_exit_ready_pp0_iter50_reg;
reg    ap_loop_exit_ready_pp0_iter51_reg;
reg    ap_loop_exit_ready_pp0_iter52_reg;
reg    ap_loop_exit_ready_pp0_iter53_reg;
reg    ap_loop_exit_ready_pp0_iter54_reg;
reg    ap_loop_exit_ready_pp0_iter55_reg;
reg    ap_loop_exit_ready_pp0_iter56_reg;
reg    ap_loop_exit_ready_pp0_iter57_reg;
reg    ap_loop_exit_ready_pp0_iter58_reg;
reg    ap_loop_exit_ready_pp0_iter59_reg;
reg    ap_loop_exit_ready_pp0_iter60_reg;
reg    ap_loop_exit_ready_pp0_iter61_reg;
reg    ap_loop_exit_ready_pp0_iter62_reg;
reg    ap_loop_exit_ready_pp0_iter63_reg;
reg    ap_loop_exit_ready_pp0_iter64_reg;
reg    ap_loop_exit_ready_pp0_iter65_reg;
reg    ap_loop_exit_ready_pp0_iter66_reg;
reg    ap_loop_exit_ready_pp0_iter67_reg;
reg    ap_loop_exit_ready_pp0_iter68_reg;
reg    ap_loop_exit_ready_pp0_iter69_reg;
reg    ap_loop_exit_ready_pp0_iter70_reg;
reg    ap_loop_exit_ready_pp0_iter71_reg;
reg    ap_loop_exit_ready_pp0_iter72_reg;
reg    ap_loop_exit_ready_pp0_iter73_reg;
reg    ap_loop_exit_ready_pp0_iter74_reg;
reg    ap_loop_exit_ready_pp0_iter75_reg;
reg    ap_loop_exit_ready_pp0_iter76_reg;
reg    ap_loop_exit_ready_pp0_iter77_reg;
reg    ap_loop_exit_ready_pp0_iter78_reg;
reg    ap_loop_exit_ready_pp0_iter79_reg;
reg   [63:0] mux_case_156825694_fu_72;
reg   [63:0] mux_case_256835698_fu_76;
wire    ap_block_pp0_stage0_01001;
wire   [63:0] tmp_s_fu_187_p7;
wire   [63:0] tmp_s_fu_187_p9;
wire   [63:0] bitcast_ln12_fu_207_p1;
wire   [0:0] bit_sel4_fu_211_p3;
wire   [63:0] xor_ln1_fu_234_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1192;
wire   [1:0] tmp_s_fu_187_p1;
wire   [1:0] tmp_s_fu_187_p3;
wire  signed [1:0] tmp_s_fu_187_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_enable_reg_pp0_iter36 = 1'b0;
#0 ap_enable_reg_pp0_iter37 = 1'b0;
#0 ap_enable_reg_pp0_iter38 = 1'b0;
#0 ap_enable_reg_pp0_iter39 = 1'b0;
#0 ap_enable_reg_pp0_iter40 = 1'b0;
#0 ap_enable_reg_pp0_iter41 = 1'b0;
#0 ap_enable_reg_pp0_iter42 = 1'b0;
#0 ap_enable_reg_pp0_iter43 = 1'b0;
#0 ap_enable_reg_pp0_iter44 = 1'b0;
#0 ap_enable_reg_pp0_iter45 = 1'b0;
#0 ap_enable_reg_pp0_iter46 = 1'b0;
#0 ap_enable_reg_pp0_iter47 = 1'b0;
#0 ap_enable_reg_pp0_iter48 = 1'b0;
#0 ap_enable_reg_pp0_iter49 = 1'b0;
#0 ap_enable_reg_pp0_iter50 = 1'b0;
#0 ap_enable_reg_pp0_iter51 = 1'b0;
#0 ap_enable_reg_pp0_iter52 = 1'b0;
#0 ap_enable_reg_pp0_iter53 = 1'b0;
#0 ap_enable_reg_pp0_iter54 = 1'b0;
#0 ap_enable_reg_pp0_iter55 = 1'b0;
#0 ap_enable_reg_pp0_iter56 = 1'b0;
#0 ap_enable_reg_pp0_iter57 = 1'b0;
#0 ap_enable_reg_pp0_iter58 = 1'b0;
#0 ap_enable_reg_pp0_iter59 = 1'b0;
#0 ap_enable_reg_pp0_iter60 = 1'b0;
#0 ap_enable_reg_pp0_iter61 = 1'b0;
#0 ap_enable_reg_pp0_iter62 = 1'b0;
#0 ap_enable_reg_pp0_iter63 = 1'b0;
#0 ap_enable_reg_pp0_iter64 = 1'b0;
#0 ap_enable_reg_pp0_iter65 = 1'b0;
#0 ap_enable_reg_pp0_iter66 = 1'b0;
#0 ap_enable_reg_pp0_iter67 = 1'b0;
#0 ap_enable_reg_pp0_iter68 = 1'b0;
#0 ap_enable_reg_pp0_iter69 = 1'b0;
#0 ap_enable_reg_pp0_iter70 = 1'b0;
#0 ap_enable_reg_pp0_iter71 = 1'b0;
#0 ap_enable_reg_pp0_iter72 = 1'b0;
#0 ap_enable_reg_pp0_iter73 = 1'b0;
#0 ap_enable_reg_pp0_iter74 = 1'b0;
#0 ap_enable_reg_pp0_iter75 = 1'b0;
#0 ap_enable_reg_pp0_iter76 = 1'b0;
#0 ap_enable_reg_pp0_iter77 = 1'b0;
#0 ap_enable_reg_pp0_iter78 = 1'b0;
#0 ap_enable_reg_pp0_iter79 = 1'b0;
#0 ap_enable_reg_pp0_iter80 = 1'b0;
#0 i_fu_64 = 2'd0;
#0 mux_case_056815690_fu_68 = 64'd0;
#0 mux_case_156825694_fu_72 = 64'd0;
#0 mux_case_256835698_fu_76 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U1945(.din0(activations3_load_2),.din1(activations3_1_load_2),.din2(activations3_2_load_2),.def(tmp_s_fu_187_p7),.sel(ap_sig_allocacmp_i_16),.dout(tmp_s_fu_187_p9));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter79_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
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
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter33 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter34 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter35 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter36 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter36 <= ap_enable_reg_pp0_iter35;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter37 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter37 <= ap_enable_reg_pp0_iter36;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter38 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter38 <= ap_enable_reg_pp0_iter37;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter39 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter39 <= ap_enable_reg_pp0_iter38;
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
        ap_enable_reg_pp0_iter40 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter40 <= ap_enable_reg_pp0_iter39;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter41 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter41 <= ap_enable_reg_pp0_iter40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter42 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter42 <= ap_enable_reg_pp0_iter41;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter43 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter43 <= ap_enable_reg_pp0_iter42;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter44 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter44 <= ap_enable_reg_pp0_iter43;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter45 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter45 <= ap_enable_reg_pp0_iter44;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter46 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter46 <= ap_enable_reg_pp0_iter45;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter47 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter47 <= ap_enable_reg_pp0_iter46;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter48 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter48 <= ap_enable_reg_pp0_iter47;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter49 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter49 <= ap_enable_reg_pp0_iter48;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter50 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter50 <= ap_enable_reg_pp0_iter49;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter51 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter51 <= ap_enable_reg_pp0_iter50;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter52 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter52 <= ap_enable_reg_pp0_iter51;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter53 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter53 <= ap_enable_reg_pp0_iter52;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter54 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter54 <= ap_enable_reg_pp0_iter53;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter55 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter55 <= ap_enable_reg_pp0_iter54;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter56 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter56 <= ap_enable_reg_pp0_iter55;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter57 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter57 <= ap_enable_reg_pp0_iter56;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter58 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter58 <= ap_enable_reg_pp0_iter57;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter59 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter59 <= ap_enable_reg_pp0_iter58;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter60 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter60 <= ap_enable_reg_pp0_iter59;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter61 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter61 <= ap_enable_reg_pp0_iter60;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter62 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter62 <= ap_enable_reg_pp0_iter61;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter63 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter63 <= ap_enable_reg_pp0_iter62;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter64 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter64 <= ap_enable_reg_pp0_iter63;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter65 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter65 <= ap_enable_reg_pp0_iter64;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter66 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter66 <= ap_enable_reg_pp0_iter65;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter67 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter67 <= ap_enable_reg_pp0_iter66;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter68 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter68 <= ap_enable_reg_pp0_iter67;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter69 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter69 <= ap_enable_reg_pp0_iter68;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter70 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter70 <= ap_enable_reg_pp0_iter69;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter71 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter71 <= ap_enable_reg_pp0_iter70;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter72 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter72 <= ap_enable_reg_pp0_iter71;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter73 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter73 <= ap_enable_reg_pp0_iter72;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter74 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter74 <= ap_enable_reg_pp0_iter73;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter75 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter75 <= ap_enable_reg_pp0_iter74;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter76 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter76 <= ap_enable_reg_pp0_iter75;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter77 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter77 <= ap_enable_reg_pp0_iter76;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter78 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter78 <= ap_enable_reg_pp0_iter77;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter79 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter79 <= ap_enable_reg_pp0_iter78;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter80 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter80 <= ap_enable_reg_pp0_iter79;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln11_fu_175_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_64 <= add_ln11_fu_181_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_64 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            mux_case_056815690_fu_68 <= mux_case_056815692;
        end else if (((i_16_reg_305_pp0_iter79_reg == 2'd0) & (ap_enable_reg_pp0_iter80 == 1'b1))) begin
            mux_case_056815690_fu_68 <= grp_fu_23103_p_dout0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            mux_case_156825694_fu_72 <= mux_case_156825696;
        end else if (((i_16_reg_305_pp0_iter79_reg == 2'd1) & (ap_enable_reg_pp0_iter80 == 1'b1))) begin
            mux_case_156825694_fu_72 <= grp_fu_23103_p_dout0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            mux_case_256835698_fu_76 <= mux_case_256835700;
        end else if ((1'b1 == ap_condition_1192)) begin
            mux_case_256835698_fu_76 <= grp_fu_23103_p_dout0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
        ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
        ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
        ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
        ap_loop_exit_ready_pp0_iter35_reg <= ap_loop_exit_ready_pp0_iter34_reg;
        ap_loop_exit_ready_pp0_iter36_reg <= ap_loop_exit_ready_pp0_iter35_reg;
        ap_loop_exit_ready_pp0_iter37_reg <= ap_loop_exit_ready_pp0_iter36_reg;
        ap_loop_exit_ready_pp0_iter38_reg <= ap_loop_exit_ready_pp0_iter37_reg;
        ap_loop_exit_ready_pp0_iter39_reg <= ap_loop_exit_ready_pp0_iter38_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter40_reg <= ap_loop_exit_ready_pp0_iter39_reg;
        ap_loop_exit_ready_pp0_iter41_reg <= ap_loop_exit_ready_pp0_iter40_reg;
        ap_loop_exit_ready_pp0_iter42_reg <= ap_loop_exit_ready_pp0_iter41_reg;
        ap_loop_exit_ready_pp0_iter43_reg <= ap_loop_exit_ready_pp0_iter42_reg;
        ap_loop_exit_ready_pp0_iter44_reg <= ap_loop_exit_ready_pp0_iter43_reg;
        ap_loop_exit_ready_pp0_iter45_reg <= ap_loop_exit_ready_pp0_iter44_reg;
        ap_loop_exit_ready_pp0_iter46_reg <= ap_loop_exit_ready_pp0_iter45_reg;
        ap_loop_exit_ready_pp0_iter47_reg <= ap_loop_exit_ready_pp0_iter46_reg;
        ap_loop_exit_ready_pp0_iter48_reg <= ap_loop_exit_ready_pp0_iter47_reg;
        ap_loop_exit_ready_pp0_iter49_reg <= ap_loop_exit_ready_pp0_iter48_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter50_reg <= ap_loop_exit_ready_pp0_iter49_reg;
        ap_loop_exit_ready_pp0_iter51_reg <= ap_loop_exit_ready_pp0_iter50_reg;
        ap_loop_exit_ready_pp0_iter52_reg <= ap_loop_exit_ready_pp0_iter51_reg;
        ap_loop_exit_ready_pp0_iter53_reg <= ap_loop_exit_ready_pp0_iter52_reg;
        ap_loop_exit_ready_pp0_iter54_reg <= ap_loop_exit_ready_pp0_iter53_reg;
        ap_loop_exit_ready_pp0_iter55_reg <= ap_loop_exit_ready_pp0_iter54_reg;
        ap_loop_exit_ready_pp0_iter56_reg <= ap_loop_exit_ready_pp0_iter55_reg;
        ap_loop_exit_ready_pp0_iter57_reg <= ap_loop_exit_ready_pp0_iter56_reg;
        ap_loop_exit_ready_pp0_iter58_reg <= ap_loop_exit_ready_pp0_iter57_reg;
        ap_loop_exit_ready_pp0_iter59_reg <= ap_loop_exit_ready_pp0_iter58_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter60_reg <= ap_loop_exit_ready_pp0_iter59_reg;
        ap_loop_exit_ready_pp0_iter61_reg <= ap_loop_exit_ready_pp0_iter60_reg;
        ap_loop_exit_ready_pp0_iter62_reg <= ap_loop_exit_ready_pp0_iter61_reg;
        ap_loop_exit_ready_pp0_iter63_reg <= ap_loop_exit_ready_pp0_iter62_reg;
        ap_loop_exit_ready_pp0_iter64_reg <= ap_loop_exit_ready_pp0_iter63_reg;
        ap_loop_exit_ready_pp0_iter65_reg <= ap_loop_exit_ready_pp0_iter64_reg;
        ap_loop_exit_ready_pp0_iter66_reg <= ap_loop_exit_ready_pp0_iter65_reg;
        ap_loop_exit_ready_pp0_iter67_reg <= ap_loop_exit_ready_pp0_iter66_reg;
        ap_loop_exit_ready_pp0_iter68_reg <= ap_loop_exit_ready_pp0_iter67_reg;
        ap_loop_exit_ready_pp0_iter69_reg <= ap_loop_exit_ready_pp0_iter68_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter70_reg <= ap_loop_exit_ready_pp0_iter69_reg;
        ap_loop_exit_ready_pp0_iter71_reg <= ap_loop_exit_ready_pp0_iter70_reg;
        ap_loop_exit_ready_pp0_iter72_reg <= ap_loop_exit_ready_pp0_iter71_reg;
        ap_loop_exit_ready_pp0_iter73_reg <= ap_loop_exit_ready_pp0_iter72_reg;
        ap_loop_exit_ready_pp0_iter74_reg <= ap_loop_exit_ready_pp0_iter73_reg;
        ap_loop_exit_ready_pp0_iter75_reg <= ap_loop_exit_ready_pp0_iter74_reg;
        ap_loop_exit_ready_pp0_iter76_reg <= ap_loop_exit_ready_pp0_iter75_reg;
        ap_loop_exit_ready_pp0_iter77_reg <= ap_loop_exit_ready_pp0_iter76_reg;
        ap_loop_exit_ready_pp0_iter78_reg <= ap_loop_exit_ready_pp0_iter77_reg;
        ap_loop_exit_ready_pp0_iter79_reg <= ap_loop_exit_ready_pp0_iter78_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        i_16_reg_305_pp0_iter10_reg <= i_16_reg_305_pp0_iter9_reg;
        i_16_reg_305_pp0_iter11_reg <= i_16_reg_305_pp0_iter10_reg;
        i_16_reg_305_pp0_iter12_reg <= i_16_reg_305_pp0_iter11_reg;
        i_16_reg_305_pp0_iter13_reg <= i_16_reg_305_pp0_iter12_reg;
        i_16_reg_305_pp0_iter14_reg <= i_16_reg_305_pp0_iter13_reg;
        i_16_reg_305_pp0_iter15_reg <= i_16_reg_305_pp0_iter14_reg;
        i_16_reg_305_pp0_iter16_reg <= i_16_reg_305_pp0_iter15_reg;
        i_16_reg_305_pp0_iter17_reg <= i_16_reg_305_pp0_iter16_reg;
        i_16_reg_305_pp0_iter18_reg <= i_16_reg_305_pp0_iter17_reg;
        i_16_reg_305_pp0_iter19_reg <= i_16_reg_305_pp0_iter18_reg;
        i_16_reg_305_pp0_iter20_reg <= i_16_reg_305_pp0_iter19_reg;
        i_16_reg_305_pp0_iter21_reg <= i_16_reg_305_pp0_iter20_reg;
        i_16_reg_305_pp0_iter22_reg <= i_16_reg_305_pp0_iter21_reg;
        i_16_reg_305_pp0_iter23_reg <= i_16_reg_305_pp0_iter22_reg;
        i_16_reg_305_pp0_iter24_reg <= i_16_reg_305_pp0_iter23_reg;
        i_16_reg_305_pp0_iter25_reg <= i_16_reg_305_pp0_iter24_reg;
        i_16_reg_305_pp0_iter26_reg <= i_16_reg_305_pp0_iter25_reg;
        i_16_reg_305_pp0_iter27_reg <= i_16_reg_305_pp0_iter26_reg;
        i_16_reg_305_pp0_iter28_reg <= i_16_reg_305_pp0_iter27_reg;
        i_16_reg_305_pp0_iter29_reg <= i_16_reg_305_pp0_iter28_reg;
        i_16_reg_305_pp0_iter2_reg <= i_16_reg_305_pp0_iter1_reg;
        i_16_reg_305_pp0_iter30_reg <= i_16_reg_305_pp0_iter29_reg;
        i_16_reg_305_pp0_iter31_reg <= i_16_reg_305_pp0_iter30_reg;
        i_16_reg_305_pp0_iter32_reg <= i_16_reg_305_pp0_iter31_reg;
        i_16_reg_305_pp0_iter33_reg <= i_16_reg_305_pp0_iter32_reg;
        i_16_reg_305_pp0_iter34_reg <= i_16_reg_305_pp0_iter33_reg;
        i_16_reg_305_pp0_iter35_reg <= i_16_reg_305_pp0_iter34_reg;
        i_16_reg_305_pp0_iter36_reg <= i_16_reg_305_pp0_iter35_reg;
        i_16_reg_305_pp0_iter37_reg <= i_16_reg_305_pp0_iter36_reg;
        i_16_reg_305_pp0_iter38_reg <= i_16_reg_305_pp0_iter37_reg;
        i_16_reg_305_pp0_iter39_reg <= i_16_reg_305_pp0_iter38_reg;
        i_16_reg_305_pp0_iter3_reg <= i_16_reg_305_pp0_iter2_reg;
        i_16_reg_305_pp0_iter40_reg <= i_16_reg_305_pp0_iter39_reg;
        i_16_reg_305_pp0_iter41_reg <= i_16_reg_305_pp0_iter40_reg;
        i_16_reg_305_pp0_iter42_reg <= i_16_reg_305_pp0_iter41_reg;
        i_16_reg_305_pp0_iter43_reg <= i_16_reg_305_pp0_iter42_reg;
        i_16_reg_305_pp0_iter44_reg <= i_16_reg_305_pp0_iter43_reg;
        i_16_reg_305_pp0_iter45_reg <= i_16_reg_305_pp0_iter44_reg;
        i_16_reg_305_pp0_iter46_reg <= i_16_reg_305_pp0_iter45_reg;
        i_16_reg_305_pp0_iter47_reg <= i_16_reg_305_pp0_iter46_reg;
        i_16_reg_305_pp0_iter48_reg <= i_16_reg_305_pp0_iter47_reg;
        i_16_reg_305_pp0_iter49_reg <= i_16_reg_305_pp0_iter48_reg;
        i_16_reg_305_pp0_iter4_reg <= i_16_reg_305_pp0_iter3_reg;
        i_16_reg_305_pp0_iter50_reg <= i_16_reg_305_pp0_iter49_reg;
        i_16_reg_305_pp0_iter51_reg <= i_16_reg_305_pp0_iter50_reg;
        i_16_reg_305_pp0_iter52_reg <= i_16_reg_305_pp0_iter51_reg;
        i_16_reg_305_pp0_iter53_reg <= i_16_reg_305_pp0_iter52_reg;
        i_16_reg_305_pp0_iter54_reg <= i_16_reg_305_pp0_iter53_reg;
        i_16_reg_305_pp0_iter55_reg <= i_16_reg_305_pp0_iter54_reg;
        i_16_reg_305_pp0_iter56_reg <= i_16_reg_305_pp0_iter55_reg;
        i_16_reg_305_pp0_iter57_reg <= i_16_reg_305_pp0_iter56_reg;
        i_16_reg_305_pp0_iter58_reg <= i_16_reg_305_pp0_iter57_reg;
        i_16_reg_305_pp0_iter59_reg <= i_16_reg_305_pp0_iter58_reg;
        i_16_reg_305_pp0_iter5_reg <= i_16_reg_305_pp0_iter4_reg;
        i_16_reg_305_pp0_iter60_reg <= i_16_reg_305_pp0_iter59_reg;
        i_16_reg_305_pp0_iter61_reg <= i_16_reg_305_pp0_iter60_reg;
        i_16_reg_305_pp0_iter62_reg <= i_16_reg_305_pp0_iter61_reg;
        i_16_reg_305_pp0_iter63_reg <= i_16_reg_305_pp0_iter62_reg;
        i_16_reg_305_pp0_iter64_reg <= i_16_reg_305_pp0_iter63_reg;
        i_16_reg_305_pp0_iter65_reg <= i_16_reg_305_pp0_iter64_reg;
        i_16_reg_305_pp0_iter66_reg <= i_16_reg_305_pp0_iter65_reg;
        i_16_reg_305_pp0_iter67_reg <= i_16_reg_305_pp0_iter66_reg;
        i_16_reg_305_pp0_iter68_reg <= i_16_reg_305_pp0_iter67_reg;
        i_16_reg_305_pp0_iter69_reg <= i_16_reg_305_pp0_iter68_reg;
        i_16_reg_305_pp0_iter6_reg <= i_16_reg_305_pp0_iter5_reg;
        i_16_reg_305_pp0_iter70_reg <= i_16_reg_305_pp0_iter69_reg;
        i_16_reg_305_pp0_iter71_reg <= i_16_reg_305_pp0_iter70_reg;
        i_16_reg_305_pp0_iter72_reg <= i_16_reg_305_pp0_iter71_reg;
        i_16_reg_305_pp0_iter73_reg <= i_16_reg_305_pp0_iter72_reg;
        i_16_reg_305_pp0_iter74_reg <= i_16_reg_305_pp0_iter73_reg;
        i_16_reg_305_pp0_iter75_reg <= i_16_reg_305_pp0_iter74_reg;
        i_16_reg_305_pp0_iter76_reg <= i_16_reg_305_pp0_iter75_reg;
        i_16_reg_305_pp0_iter77_reg <= i_16_reg_305_pp0_iter76_reg;
        i_16_reg_305_pp0_iter78_reg <= i_16_reg_305_pp0_iter77_reg;
        i_16_reg_305_pp0_iter79_reg <= i_16_reg_305_pp0_iter78_reg;
        i_16_reg_305_pp0_iter7_reg <= i_16_reg_305_pp0_iter6_reg;
        i_16_reg_305_pp0_iter8_reg <= i_16_reg_305_pp0_iter7_reg;
        i_16_reg_305_pp0_iter9_reg <= i_16_reg_305_pp0_iter8_reg;
        icmp_ln11_reg_309_pp0_iter10_reg <= icmp_ln11_reg_309_pp0_iter9_reg;
        icmp_ln11_reg_309_pp0_iter11_reg <= icmp_ln11_reg_309_pp0_iter10_reg;
        icmp_ln11_reg_309_pp0_iter12_reg <= icmp_ln11_reg_309_pp0_iter11_reg;
        icmp_ln11_reg_309_pp0_iter13_reg <= icmp_ln11_reg_309_pp0_iter12_reg;
        icmp_ln11_reg_309_pp0_iter14_reg <= icmp_ln11_reg_309_pp0_iter13_reg;
        icmp_ln11_reg_309_pp0_iter15_reg <= icmp_ln11_reg_309_pp0_iter14_reg;
        icmp_ln11_reg_309_pp0_iter16_reg <= icmp_ln11_reg_309_pp0_iter15_reg;
        icmp_ln11_reg_309_pp0_iter17_reg <= icmp_ln11_reg_309_pp0_iter16_reg;
        icmp_ln11_reg_309_pp0_iter18_reg <= icmp_ln11_reg_309_pp0_iter17_reg;
        icmp_ln11_reg_309_pp0_iter19_reg <= icmp_ln11_reg_309_pp0_iter18_reg;
        icmp_ln11_reg_309_pp0_iter20_reg <= icmp_ln11_reg_309_pp0_iter19_reg;
        icmp_ln11_reg_309_pp0_iter21_reg <= icmp_ln11_reg_309_pp0_iter20_reg;
        icmp_ln11_reg_309_pp0_iter22_reg <= icmp_ln11_reg_309_pp0_iter21_reg;
        icmp_ln11_reg_309_pp0_iter23_reg <= icmp_ln11_reg_309_pp0_iter22_reg;
        icmp_ln11_reg_309_pp0_iter24_reg <= icmp_ln11_reg_309_pp0_iter23_reg;
        icmp_ln11_reg_309_pp0_iter25_reg <= icmp_ln11_reg_309_pp0_iter24_reg;
        icmp_ln11_reg_309_pp0_iter26_reg <= icmp_ln11_reg_309_pp0_iter25_reg;
        icmp_ln11_reg_309_pp0_iter27_reg <= icmp_ln11_reg_309_pp0_iter26_reg;
        icmp_ln11_reg_309_pp0_iter28_reg <= icmp_ln11_reg_309_pp0_iter27_reg;
        icmp_ln11_reg_309_pp0_iter29_reg <= icmp_ln11_reg_309_pp0_iter28_reg;
        icmp_ln11_reg_309_pp0_iter2_reg <= icmp_ln11_reg_309_pp0_iter1_reg;
        icmp_ln11_reg_309_pp0_iter30_reg <= icmp_ln11_reg_309_pp0_iter29_reg;
        icmp_ln11_reg_309_pp0_iter31_reg <= icmp_ln11_reg_309_pp0_iter30_reg;
        icmp_ln11_reg_309_pp0_iter32_reg <= icmp_ln11_reg_309_pp0_iter31_reg;
        icmp_ln11_reg_309_pp0_iter33_reg <= icmp_ln11_reg_309_pp0_iter32_reg;
        icmp_ln11_reg_309_pp0_iter34_reg <= icmp_ln11_reg_309_pp0_iter33_reg;
        icmp_ln11_reg_309_pp0_iter35_reg <= icmp_ln11_reg_309_pp0_iter34_reg;
        icmp_ln11_reg_309_pp0_iter36_reg <= icmp_ln11_reg_309_pp0_iter35_reg;
        icmp_ln11_reg_309_pp0_iter37_reg <= icmp_ln11_reg_309_pp0_iter36_reg;
        icmp_ln11_reg_309_pp0_iter38_reg <= icmp_ln11_reg_309_pp0_iter37_reg;
        icmp_ln11_reg_309_pp0_iter39_reg <= icmp_ln11_reg_309_pp0_iter38_reg;
        icmp_ln11_reg_309_pp0_iter3_reg <= icmp_ln11_reg_309_pp0_iter2_reg;
        icmp_ln11_reg_309_pp0_iter40_reg <= icmp_ln11_reg_309_pp0_iter39_reg;
        icmp_ln11_reg_309_pp0_iter41_reg <= icmp_ln11_reg_309_pp0_iter40_reg;
        icmp_ln11_reg_309_pp0_iter42_reg <= icmp_ln11_reg_309_pp0_iter41_reg;
        icmp_ln11_reg_309_pp0_iter43_reg <= icmp_ln11_reg_309_pp0_iter42_reg;
        icmp_ln11_reg_309_pp0_iter44_reg <= icmp_ln11_reg_309_pp0_iter43_reg;
        icmp_ln11_reg_309_pp0_iter45_reg <= icmp_ln11_reg_309_pp0_iter44_reg;
        icmp_ln11_reg_309_pp0_iter46_reg <= icmp_ln11_reg_309_pp0_iter45_reg;
        icmp_ln11_reg_309_pp0_iter47_reg <= icmp_ln11_reg_309_pp0_iter46_reg;
        icmp_ln11_reg_309_pp0_iter48_reg <= icmp_ln11_reg_309_pp0_iter47_reg;
        icmp_ln11_reg_309_pp0_iter49_reg <= icmp_ln11_reg_309_pp0_iter48_reg;
        icmp_ln11_reg_309_pp0_iter4_reg <= icmp_ln11_reg_309_pp0_iter3_reg;
        icmp_ln11_reg_309_pp0_iter50_reg <= icmp_ln11_reg_309_pp0_iter49_reg;
        icmp_ln11_reg_309_pp0_iter51_reg <= icmp_ln11_reg_309_pp0_iter50_reg;
        icmp_ln11_reg_309_pp0_iter52_reg <= icmp_ln11_reg_309_pp0_iter51_reg;
        icmp_ln11_reg_309_pp0_iter53_reg <= icmp_ln11_reg_309_pp0_iter52_reg;
        icmp_ln11_reg_309_pp0_iter54_reg <= icmp_ln11_reg_309_pp0_iter53_reg;
        icmp_ln11_reg_309_pp0_iter55_reg <= icmp_ln11_reg_309_pp0_iter54_reg;
        icmp_ln11_reg_309_pp0_iter56_reg <= icmp_ln11_reg_309_pp0_iter55_reg;
        icmp_ln11_reg_309_pp0_iter57_reg <= icmp_ln11_reg_309_pp0_iter56_reg;
        icmp_ln11_reg_309_pp0_iter58_reg <= icmp_ln11_reg_309_pp0_iter57_reg;
        icmp_ln11_reg_309_pp0_iter59_reg <= icmp_ln11_reg_309_pp0_iter58_reg;
        icmp_ln11_reg_309_pp0_iter5_reg <= icmp_ln11_reg_309_pp0_iter4_reg;
        icmp_ln11_reg_309_pp0_iter60_reg <= icmp_ln11_reg_309_pp0_iter59_reg;
        icmp_ln11_reg_309_pp0_iter61_reg <= icmp_ln11_reg_309_pp0_iter60_reg;
        icmp_ln11_reg_309_pp0_iter62_reg <= icmp_ln11_reg_309_pp0_iter61_reg;
        icmp_ln11_reg_309_pp0_iter63_reg <= icmp_ln11_reg_309_pp0_iter62_reg;
        icmp_ln11_reg_309_pp0_iter64_reg <= icmp_ln11_reg_309_pp0_iter63_reg;
        icmp_ln11_reg_309_pp0_iter65_reg <= icmp_ln11_reg_309_pp0_iter64_reg;
        icmp_ln11_reg_309_pp0_iter66_reg <= icmp_ln11_reg_309_pp0_iter65_reg;
        icmp_ln11_reg_309_pp0_iter67_reg <= icmp_ln11_reg_309_pp0_iter66_reg;
        icmp_ln11_reg_309_pp0_iter68_reg <= icmp_ln11_reg_309_pp0_iter67_reg;
        icmp_ln11_reg_309_pp0_iter69_reg <= icmp_ln11_reg_309_pp0_iter68_reg;
        icmp_ln11_reg_309_pp0_iter6_reg <= icmp_ln11_reg_309_pp0_iter5_reg;
        icmp_ln11_reg_309_pp0_iter70_reg <= icmp_ln11_reg_309_pp0_iter69_reg;
        icmp_ln11_reg_309_pp0_iter71_reg <= icmp_ln11_reg_309_pp0_iter70_reg;
        icmp_ln11_reg_309_pp0_iter72_reg <= icmp_ln11_reg_309_pp0_iter71_reg;
        icmp_ln11_reg_309_pp0_iter73_reg <= icmp_ln11_reg_309_pp0_iter72_reg;
        icmp_ln11_reg_309_pp0_iter74_reg <= icmp_ln11_reg_309_pp0_iter73_reg;
        icmp_ln11_reg_309_pp0_iter75_reg <= icmp_ln11_reg_309_pp0_iter74_reg;
        icmp_ln11_reg_309_pp0_iter76_reg <= icmp_ln11_reg_309_pp0_iter75_reg;
        icmp_ln11_reg_309_pp0_iter77_reg <= icmp_ln11_reg_309_pp0_iter76_reg;
        icmp_ln11_reg_309_pp0_iter78_reg <= icmp_ln11_reg_309_pp0_iter77_reg;
        icmp_ln11_reg_309_pp0_iter7_reg <= icmp_ln11_reg_309_pp0_iter6_reg;
        icmp_ln11_reg_309_pp0_iter8_reg <= icmp_ln11_reg_309_pp0_iter7_reg;
        icmp_ln11_reg_309_pp0_iter9_reg <= icmp_ln11_reg_309_pp0_iter8_reg;
        tmp_256_reg_328 <= grp_fu_23107_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_16_reg_305 <= ap_sig_allocacmp_i_16;
        i_16_reg_305_pp0_iter1_reg <= i_16_reg_305;
        icmp_ln11_reg_309 <= icmp_ln11_fu_175_p2;
        icmp_ln11_reg_309_pp0_iter1_reg <= icmp_ln11_reg_309;
        trunc_ln12_reg_318 <= trunc_ln12_fu_225_p1;
        xor_ln12_reg_313 <= xor_ln12_fu_219_p2;
    end
end
always @ (*) begin
    if (((icmp_ln11_fu_175_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter79_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter80 == 1'b0) & (ap_enable_reg_pp0_iter79 == 1'b0) & (ap_enable_reg_pp0_iter78 == 1'b0)& (ap_enable_reg_pp0_iter77 == 1'b0) & (ap_enable_reg_pp0_iter76 == 1'b0) & (ap_enable_reg_pp0_iter75 == 1'b0) & (ap_enable_reg_pp0_iter74 == 1'b0) & (ap_enable_reg_pp0_iter73 == 1'b0) & (ap_enable_reg_pp0_iter72 == 1'b0) & (ap_enable_reg_pp0_iter71 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter70 == 1'b0) & (ap_enable_reg_pp0_iter69 == 1'b0) & (ap_enable_reg_pp0_iter68 == 1'b0) & (ap_enable_reg_pp0_iter67 == 1'b0) & (ap_enable_reg_pp0_iter66 == 1'b0) & (ap_enable_reg_pp0_iter65 == 1'b0) & (ap_enable_reg_pp0_iter64 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter63 == 1'b0) & (ap_enable_reg_pp0_iter62 == 1'b0) & (ap_enable_reg_pp0_iter61 == 1'b0) & (ap_enable_reg_pp0_iter60 == 1'b0) & (ap_enable_reg_pp0_iter59 == 1'b0) & (ap_enable_reg_pp0_iter58 == 1'b0) & (ap_enable_reg_pp0_iter57 == 1'b0) & (ap_enable_reg_pp0_iter56 == 1'b0) & (ap_enable_reg_pp0_iter55 == 1'b0) & (ap_enable_reg_pp0_iter54 == 1'b0) & (ap_enable_reg_pp0_iter53 == 1'b0) & (ap_enable_reg_pp0_iter52== 1'b0) & (ap_enable_reg_pp0_iter51 == 1'b0) & (ap_enable_reg_pp0_iter50 == 1'b0) & (ap_enable_reg_pp0_iter49 == 1'b0) & (ap_enable_reg_pp0_iter48 == 1'b0) & (ap_enable_reg_pp0_iter47 == 1'b0) & (ap_enable_reg_pp0_iter46 == 1'b0) & (ap_enable_reg_pp0_iter45 == 1'b0) & (ap_enable_reg_pp0_iter44 == 1'b0) & (ap_enable_reg_pp0_iter43 == 1'b0) & (ap_enable_reg_pp0_iter42 == 1'b0) & (ap_enable_reg_pp0_iter41 == 1'b0) & (ap_enable_reg_pp0_iter40 == 1'b0) & (ap_enable_reg_pp0_iter39 == 1'b0) & (ap_enable_reg_pp0_iter38 == 1'b0) & (ap_enable_reg_pp0_iter37 == 1'b0) & (ap_enable_reg_pp0_iter36 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
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
        ap_sig_allocacmp_i_16 = 2'd0;
    end else begin
        ap_sig_allocacmp_i_16 = i_fu_64;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter79_reg == 1'b1) & (icmp_ln11_reg_309_pp0_iter78_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mux_case_056815690_out_ap_vld = 1'b1;
    end else begin
        mux_case_056815690_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter79_reg == 1'b1) & (icmp_ln11_reg_309_pp0_iter78_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mux_case_156825694_out_ap_vld = 1'b1;
    end else begin
        mux_case_156825694_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter79_reg == 1'b1) & (icmp_ln11_reg_309_pp0_iter78_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        mux_case_256835698_out_ap_vld = 1'b1;
    end else begin
        mux_case_256835698_out_ap_vld = 1'b0;
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
assign add_ln11_fu_181_p2 = (ap_sig_allocacmp_i_16 + 2'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1192 = (~(i_16_reg_305_pp0_iter79_reg == 2'd1) & ~(i_16_reg_305_pp0_iter79_reg == 2'd0) & (ap_enable_reg_pp0_iter80 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel4_fu_211_p3 = bitcast_ln12_fu_207_p1[64'd63];
assign bitcast_ln12_1_fu_240_p1 = xor_ln1_fu_234_p3;
assign bitcast_ln12_fu_207_p1 = tmp_s_fu_187_p9;
assign grp_fu_23103_p_ce = 1'b1;
assign grp_fu_23103_p_din0 = tmp_256_reg_328;
assign grp_fu_23103_p_din1 = sum_reload;
assign grp_fu_23107_p_ce = 1'b1;
assign grp_fu_23107_p_din0 = 64'd0;
assign grp_fu_23107_p_din1 = bitcast_ln12_1_fu_240_p1;
assign icmp_ln11_fu_175_p2 = ((ap_sig_allocacmp_i_16 == 2'd3) ? 1'b1 : 1'b0);
assign mux_case_056815690_out = mux_case_056815690_fu_68;
assign mux_case_156825694_out = mux_case_156825694_fu_72;
assign mux_case_256835698_out = mux_case_256835698_fu_76;
assign tmp_s_fu_187_p7 = 'bx;
assign trunc_ln12_fu_225_p1 = bitcast_ln12_fu_207_p1[62:0];
assign xor_ln12_fu_219_p2 = (bit_sel4_fu_211_p3 ^ 1'd1);
assign xor_ln1_fu_234_p3 = {{xor_ln12_reg_313}, {trunc_ln12_reg_318}};
endmodule 
