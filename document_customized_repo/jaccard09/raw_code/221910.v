module SgdLR_sw_SgdLR_sw_Pipeline_label_38 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln33_5,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,v22_3,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,tmp_25,grp_fu_909_p_din0,grp_fu_909_p_din1,grp_fu_909_p_dout0,grp_fu_909_p_ce,grp_fu_913_p_din0,grp_fu_913_p_din1,grp_fu_913_p_dout0,grp_fu_913_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [22:0] zext_ln33_5;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [19:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_4_address1;
output   v0_4_ce1;
input  [31:0] v0_4_q1;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_5_address1;
output   v0_5_ce1;
input  [31:0] v0_5_q1;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [19:0] v0_6_address1;
output   v0_6_ce1;
input  [31:0] v0_6_q1;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [19:0] v0_7_address1;
output   v0_7_ce1;
input  [31:0] v0_7_q1;
input  [31:0] v22_3;
output  [9:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [9:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [11:0] tmp_25;
output  [31:0] grp_fu_909_p_din0;
output  [31:0] grp_fu_909_p_din1;
input  [31:0] grp_fu_909_p_dout0;
output   grp_fu_909_p_ce;
output  [31:0] grp_fu_913_p_din0;
output  [31:0] grp_fu_913_p_din1;
input  [31:0] grp_fu_913_p_dout0;
output   grp_fu_913_p_ce;
reg ap_idle;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_389_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [23:0] zext_ln33_5_cast_fu_377_p1;
reg   [23:0] zext_ln33_5_cast_reg_673;
reg   [10:0] v19_1_reg_678;
reg   [10:0] v19_1_reg_678_pp0_iter1_reg;
reg   [10:0] v19_1_reg_678_pp0_iter2_reg;
reg   [10:0] v19_1_reg_678_pp0_iter3_reg;
reg   [10:0] v19_1_reg_678_pp0_iter4_reg;
reg   [10:0] v19_1_reg_678_pp0_iter5_reg;
reg   [10:0] v19_1_reg_678_pp0_iter6_reg;
reg   [10:0] v19_1_reg_678_pp0_iter7_reg;
reg   [10:0] v19_1_reg_678_pp0_iter8_reg;
reg   [10:0] v19_1_reg_678_pp0_iter9_reg;
reg   [10:0] v19_1_reg_678_pp0_iter10_reg;
reg   [10:0] v19_1_reg_678_pp0_iter11_reg;
reg   [10:0] v19_1_reg_678_pp0_iter12_reg;
reg   [10:0] v19_1_reg_678_pp0_iter13_reg;
reg   [10:0] v19_1_reg_678_pp0_iter14_reg;
reg   [10:0] v19_1_reg_678_pp0_iter15_reg;
reg   [10:0] v19_1_reg_678_pp0_iter16_reg;
reg   [10:0] v19_1_reg_678_pp0_iter17_reg;
reg   [10:0] v19_1_reg_678_pp0_iter18_reg;
reg   [10:0] v19_1_reg_678_pp0_iter19_reg;
reg   [10:0] v19_1_reg_678_pp0_iter20_reg;
reg   [10:0] v19_1_reg_678_pp0_iter21_reg;
reg   [10:0] v19_1_reg_678_pp0_iter22_reg;
reg   [10:0] v19_1_reg_678_pp0_iter23_reg;
reg   [10:0] v19_1_reg_678_pp0_iter24_reg;
reg   [10:0] v19_1_reg_678_pp0_iter25_reg;
reg   [10:0] v19_1_reg_678_pp0_iter26_reg;
reg   [10:0] v19_1_reg_678_pp0_iter27_reg;
reg   [10:0] v19_1_reg_678_pp0_iter28_reg;
reg   [10:0] v19_1_reg_678_pp0_iter29_reg;
reg   [10:0] v19_1_reg_678_pp0_iter30_reg;
reg   [10:0] v19_1_reg_678_pp0_iter31_reg;
reg   [10:0] v19_1_reg_678_pp0_iter32_reg;
reg   [10:0] v19_1_reg_678_pp0_iter33_reg;
wire   [8:0] tmp_5_fu_397_p4;
reg   [8:0] tmp_5_reg_688;
reg   [8:0] tmp_5_reg_688_pp0_iter1_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter2_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter3_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter4_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter5_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter6_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter7_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter8_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter9_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter10_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter11_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter12_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter13_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter14_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter15_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter16_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter17_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter18_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter19_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter20_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter21_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter22_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter23_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter24_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter25_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter26_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter27_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter28_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter29_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter30_reg;
reg   [8:0] tmp_5_reg_688_pp0_iter31_reg;
wire   [22:0] tmp_s_fu_407_p5;
reg   [22:0] tmp_s_reg_693;
wire   [23:0] add_ln51_fu_439_p2;
reg   [23:0] add_ln51_reg_699;
reg   [2:0] trunc_ln51_7_reg_705;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter2_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter3_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter4_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter5_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter6_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter7_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter8_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter9_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter10_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter11_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter12_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter13_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter14_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter15_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter16_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter17_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter18_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter19_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter20_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter21_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter22_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter23_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter24_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter25_reg;
reg   [2:0] trunc_ln51_7_reg_705_pp0_iter26_reg;
reg   [2:0] trunc_ln51_6_reg_710;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter3_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter4_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter5_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter6_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter7_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter8_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter9_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter10_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter11_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter12_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter13_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter14_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter15_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter16_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter17_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter18_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter19_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter20_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter21_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter22_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter23_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter24_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter25_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter26_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter27_reg;
reg   [2:0] trunc_ln51_6_reg_710_pp0_iter28_reg;
wire   [31:0] v23_1_fu_522_p19;
reg   [31:0] v23_1_reg_755;
wire   [31:0] v23_fu_605_p19;
reg   [31:0] v23_reg_800;
reg   [31:0] v24_1_reg_805;
reg   [31:0] v24_reg_810;
wire   [63:0] zext_ln51_3_fu_478_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_fu_561_p1;
wire   [63:0] zext_ln51_2_fu_651_p1;
wire   [63:0] zext_ln47_fu_656_p1;
reg   [10:0] v19_fu_112;
wire   [10:0] add_ln47_fu_425_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
reg    v0_0_ce1_local;
reg    v0_0_ce0_local;
reg    v0_1_ce1_local;
reg    v0_1_ce0_local;
reg    v0_2_ce1_local;
reg    v0_2_ce0_local;
reg    v0_3_ce1_local;
reg    v0_3_ce0_local;
reg    v0_4_ce1_local;
reg    v0_4_ce0_local;
reg    v0_5_ce1_local;
reg    v0_5_ce0_local;
reg    v0_6_ce1_local;
reg    v0_6_ce0_local;
reg    v0_7_ce1_local;
reg    v0_7_ce0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
wire   [22:0] mul_ln51_1_fu_367_p0;
wire   [24:0] mul_ln51_1_fu_367_p1;
wire   [23:0] mul_ln51_fu_372_p0;
wire   [25:0] mul_ln51_fu_372_p1;
wire   [22:0] grp_fu_419_p0;
wire   [20:0] grp_fu_419_p1;
wire   [23:0] zext_ln47_1_fu_436_p1;
wire   [23:0] grp_fu_444_p0;
wire   [20:0] grp_fu_444_p1;
wire   [46:0] mul_ln51_1_fu_367_p2;
wire   [48:0] mul_ln51_fu_372_p2;
wire   [22:0] grp_fu_419_p2;
wire   [31:0] v23_1_fu_522_p2;
wire   [31:0] v23_1_fu_522_p4;
wire   [31:0] v23_1_fu_522_p6;
wire   [31:0] v23_1_fu_522_p8;
wire   [31:0] v23_1_fu_522_p10;
wire   [31:0] v23_1_fu_522_p12;
wire   [31:0] v23_1_fu_522_p14;
wire   [31:0] v23_1_fu_522_p16;
wire   [31:0] v23_1_fu_522_p17;
wire   [23:0] grp_fu_444_p2;
wire   [31:0] v23_fu_605_p2;
wire   [31:0] v23_fu_605_p4;
wire   [31:0] v23_fu_605_p6;
wire   [31:0] v23_fu_605_p8;
wire   [31:0] v23_fu_605_p10;
wire   [31:0] v23_fu_605_p12;
wire   [31:0] v23_fu_605_p14;
wire   [31:0] v23_fu_605_p16;
wire   [31:0] v23_fu_605_p17;
wire   [9:0] or_ln47_3_fu_644_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [46:0] mul_ln51_1_fu_367_p00;
wire   [48:0] mul_ln51_fu_372_p00;
wire   [2:0] v23_1_fu_522_p1;
wire   [2:0] v23_1_fu_522_p3;
wire   [2:0] v23_1_fu_522_p5;
wire   [2:0] v23_1_fu_522_p7;
wire  signed [2:0] v23_1_fu_522_p9;
wire  signed [2:0] v23_1_fu_522_p11;
wire  signed [2:0] v23_1_fu_522_p13;
wire  signed [2:0] v23_1_fu_522_p15;
wire   [2:0] v23_fu_605_p1;
wire   [2:0] v23_fu_605_p3;
wire   [2:0] v23_fu_605_p5;
wire   [2:0] v23_fu_605_p7;
wire  signed [2:0] v23_fu_605_p9;
wire  signed [2:0] v23_fu_605_p11;
wire  signed [2:0] v23_fu_605_p13;
wire  signed [2:0] v23_fu_605_p15;
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
#0 v19_fu_112 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U154(.din0(mul_ln51_1_fu_367_p0),.din1(mul_ln51_1_fu_367_p1),.dout(mul_ln51_1_fu_367_p2));
SgdLR_sw_mul_24ns_26ns_49_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 24 ),.din1_WIDTH( 26 ),.dout_WIDTH( 49 ))
mul_24ns_26ns_49_1_1_U155(.din0(mul_ln51_fu_372_p0),.din1(mul_ln51_fu_372_p1),.dout(mul_ln51_fu_372_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U156(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_419_p0),.din1(grp_fu_419_p1),.ce(1'b1),.dout(grp_fu_419_p2));
SgdLR_sw_urem_24ns_21ns_24_28_1 #(.ID( 1 ),.NUM_STAGE( 28 ),.din0_WIDTH( 24 ),.din1_WIDTH( 21 ),.dout_WIDTH( 24 ))
urem_24ns_21ns_24_28_1_U157(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_444_p0),.din1(grp_fu_444_p1),.ce(1'b1),.dout(grp_fu_444_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U158(.din0(v23_1_fu_522_p2),.din1(v23_1_fu_522_p4),.din2(v23_1_fu_522_p6),.din3(v23_1_fu_522_p8),.din4(v23_1_fu_522_p10),.din5(v23_1_fu_522_p12),.din6(v23_1_fu_522_p14),.din7(v23_1_fu_522_p16),.def(v23_1_fu_522_p17),.sel(trunc_ln51_7_reg_705_pp0_iter26_reg),.dout(v23_1_fu_522_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U159(.din0(v23_fu_605_p2),.din1(v23_fu_605_p4),.din2(v23_fu_605_p6),.din3(v23_fu_605_p8),.din4(v23_fu_605_p10),.din5(v23_fu_605_p12),.din6(v23_fu_605_p14),.din7(v23_fu_605_p16),.def(v23_fu_605_p17),.sel(trunc_ln51_6_reg_710_pp0_iter28_reg),.dout(v23_fu_605_p19));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter33_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
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
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_389_p3 == 1'd0))) begin
            v19_fu_112 <= add_ln47_fu_425_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_fu_112 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln51_reg_699 <= add_ln51_fu_439_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        tmp_5_reg_688 <= {{ap_sig_allocacmp_v19_1[9:1]}};
        tmp_5_reg_688_pp0_iter1_reg <= tmp_5_reg_688;
        tmp_s_reg_693[9 : 1] <= tmp_s_fu_407_p5[9 : 1];
tmp_s_reg_693[22 : 11] <= tmp_s_fu_407_p5[22 : 11];
        trunc_ln51_7_reg_705 <= {{mul_ln51_1_fu_367_p2[45:43]}};
        v19_1_reg_678 <= ap_sig_allocacmp_v19_1;
        v19_1_reg_678_pp0_iter1_reg <= v19_1_reg_678;
        zext_ln33_5_cast_reg_673[22 : 0] <= zext_ln33_5_cast_fu_377_p1[22 : 0];
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
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        tmp_5_reg_688_pp0_iter10_reg <= tmp_5_reg_688_pp0_iter9_reg;
        tmp_5_reg_688_pp0_iter11_reg <= tmp_5_reg_688_pp0_iter10_reg;
        tmp_5_reg_688_pp0_iter12_reg <= tmp_5_reg_688_pp0_iter11_reg;
        tmp_5_reg_688_pp0_iter13_reg <= tmp_5_reg_688_pp0_iter12_reg;
        tmp_5_reg_688_pp0_iter14_reg <= tmp_5_reg_688_pp0_iter13_reg;
        tmp_5_reg_688_pp0_iter15_reg <= tmp_5_reg_688_pp0_iter14_reg;
        tmp_5_reg_688_pp0_iter16_reg <= tmp_5_reg_688_pp0_iter15_reg;
        tmp_5_reg_688_pp0_iter17_reg <= tmp_5_reg_688_pp0_iter16_reg;
        tmp_5_reg_688_pp0_iter18_reg <= tmp_5_reg_688_pp0_iter17_reg;
        tmp_5_reg_688_pp0_iter19_reg <= tmp_5_reg_688_pp0_iter18_reg;
        tmp_5_reg_688_pp0_iter20_reg <= tmp_5_reg_688_pp0_iter19_reg;
        tmp_5_reg_688_pp0_iter21_reg <= tmp_5_reg_688_pp0_iter20_reg;
        tmp_5_reg_688_pp0_iter22_reg <= tmp_5_reg_688_pp0_iter21_reg;
        tmp_5_reg_688_pp0_iter23_reg <= tmp_5_reg_688_pp0_iter22_reg;
        tmp_5_reg_688_pp0_iter24_reg <= tmp_5_reg_688_pp0_iter23_reg;
        tmp_5_reg_688_pp0_iter25_reg <= tmp_5_reg_688_pp0_iter24_reg;
        tmp_5_reg_688_pp0_iter26_reg <= tmp_5_reg_688_pp0_iter25_reg;
        tmp_5_reg_688_pp0_iter27_reg <= tmp_5_reg_688_pp0_iter26_reg;
        tmp_5_reg_688_pp0_iter28_reg <= tmp_5_reg_688_pp0_iter27_reg;
        tmp_5_reg_688_pp0_iter29_reg <= tmp_5_reg_688_pp0_iter28_reg;
        tmp_5_reg_688_pp0_iter2_reg <= tmp_5_reg_688_pp0_iter1_reg;
        tmp_5_reg_688_pp0_iter30_reg <= tmp_5_reg_688_pp0_iter29_reg;
        tmp_5_reg_688_pp0_iter31_reg <= tmp_5_reg_688_pp0_iter30_reg;
        tmp_5_reg_688_pp0_iter3_reg <= tmp_5_reg_688_pp0_iter2_reg;
        tmp_5_reg_688_pp0_iter4_reg <= tmp_5_reg_688_pp0_iter3_reg;
        tmp_5_reg_688_pp0_iter5_reg <= tmp_5_reg_688_pp0_iter4_reg;
        tmp_5_reg_688_pp0_iter6_reg <= tmp_5_reg_688_pp0_iter5_reg;
        tmp_5_reg_688_pp0_iter7_reg <= tmp_5_reg_688_pp0_iter6_reg;
        tmp_5_reg_688_pp0_iter8_reg <= tmp_5_reg_688_pp0_iter7_reg;
        tmp_5_reg_688_pp0_iter9_reg <= tmp_5_reg_688_pp0_iter8_reg;
        trunc_ln51_6_reg_710 <= {{mul_ln51_fu_372_p2[46:44]}};
        trunc_ln51_6_reg_710_pp0_iter10_reg <= trunc_ln51_6_reg_710_pp0_iter9_reg;
        trunc_ln51_6_reg_710_pp0_iter11_reg <= trunc_ln51_6_reg_710_pp0_iter10_reg;
        trunc_ln51_6_reg_710_pp0_iter12_reg <= trunc_ln51_6_reg_710_pp0_iter11_reg;
        trunc_ln51_6_reg_710_pp0_iter13_reg <= trunc_ln51_6_reg_710_pp0_iter12_reg;
        trunc_ln51_6_reg_710_pp0_iter14_reg <= trunc_ln51_6_reg_710_pp0_iter13_reg;
        trunc_ln51_6_reg_710_pp0_iter15_reg <= trunc_ln51_6_reg_710_pp0_iter14_reg;
        trunc_ln51_6_reg_710_pp0_iter16_reg <= trunc_ln51_6_reg_710_pp0_iter15_reg;
        trunc_ln51_6_reg_710_pp0_iter17_reg <= trunc_ln51_6_reg_710_pp0_iter16_reg;
        trunc_ln51_6_reg_710_pp0_iter18_reg <= trunc_ln51_6_reg_710_pp0_iter17_reg;
        trunc_ln51_6_reg_710_pp0_iter19_reg <= trunc_ln51_6_reg_710_pp0_iter18_reg;
        trunc_ln51_6_reg_710_pp0_iter20_reg <= trunc_ln51_6_reg_710_pp0_iter19_reg;
        trunc_ln51_6_reg_710_pp0_iter21_reg <= trunc_ln51_6_reg_710_pp0_iter20_reg;
        trunc_ln51_6_reg_710_pp0_iter22_reg <= trunc_ln51_6_reg_710_pp0_iter21_reg;
        trunc_ln51_6_reg_710_pp0_iter23_reg <= trunc_ln51_6_reg_710_pp0_iter22_reg;
        trunc_ln51_6_reg_710_pp0_iter24_reg <= trunc_ln51_6_reg_710_pp0_iter23_reg;
        trunc_ln51_6_reg_710_pp0_iter25_reg <= trunc_ln51_6_reg_710_pp0_iter24_reg;
        trunc_ln51_6_reg_710_pp0_iter26_reg <= trunc_ln51_6_reg_710_pp0_iter25_reg;
        trunc_ln51_6_reg_710_pp0_iter27_reg <= trunc_ln51_6_reg_710_pp0_iter26_reg;
        trunc_ln51_6_reg_710_pp0_iter28_reg <= trunc_ln51_6_reg_710_pp0_iter27_reg;
        trunc_ln51_6_reg_710_pp0_iter3_reg <= trunc_ln51_6_reg_710;
        trunc_ln51_6_reg_710_pp0_iter4_reg <= trunc_ln51_6_reg_710_pp0_iter3_reg;
        trunc_ln51_6_reg_710_pp0_iter5_reg <= trunc_ln51_6_reg_710_pp0_iter4_reg;
        trunc_ln51_6_reg_710_pp0_iter6_reg <= trunc_ln51_6_reg_710_pp0_iter5_reg;
        trunc_ln51_6_reg_710_pp0_iter7_reg <= trunc_ln51_6_reg_710_pp0_iter6_reg;
        trunc_ln51_6_reg_710_pp0_iter8_reg <= trunc_ln51_6_reg_710_pp0_iter7_reg;
        trunc_ln51_6_reg_710_pp0_iter9_reg <= trunc_ln51_6_reg_710_pp0_iter8_reg;
        trunc_ln51_7_reg_705_pp0_iter10_reg <= trunc_ln51_7_reg_705_pp0_iter9_reg;
        trunc_ln51_7_reg_705_pp0_iter11_reg <= trunc_ln51_7_reg_705_pp0_iter10_reg;
        trunc_ln51_7_reg_705_pp0_iter12_reg <= trunc_ln51_7_reg_705_pp0_iter11_reg;
        trunc_ln51_7_reg_705_pp0_iter13_reg <= trunc_ln51_7_reg_705_pp0_iter12_reg;
        trunc_ln51_7_reg_705_pp0_iter14_reg <= trunc_ln51_7_reg_705_pp0_iter13_reg;
        trunc_ln51_7_reg_705_pp0_iter15_reg <= trunc_ln51_7_reg_705_pp0_iter14_reg;
        trunc_ln51_7_reg_705_pp0_iter16_reg <= trunc_ln51_7_reg_705_pp0_iter15_reg;
        trunc_ln51_7_reg_705_pp0_iter17_reg <= trunc_ln51_7_reg_705_pp0_iter16_reg;
        trunc_ln51_7_reg_705_pp0_iter18_reg <= trunc_ln51_7_reg_705_pp0_iter17_reg;
        trunc_ln51_7_reg_705_pp0_iter19_reg <= trunc_ln51_7_reg_705_pp0_iter18_reg;
        trunc_ln51_7_reg_705_pp0_iter20_reg <= trunc_ln51_7_reg_705_pp0_iter19_reg;
        trunc_ln51_7_reg_705_pp0_iter21_reg <= trunc_ln51_7_reg_705_pp0_iter20_reg;
        trunc_ln51_7_reg_705_pp0_iter22_reg <= trunc_ln51_7_reg_705_pp0_iter21_reg;
        trunc_ln51_7_reg_705_pp0_iter23_reg <= trunc_ln51_7_reg_705_pp0_iter22_reg;
        trunc_ln51_7_reg_705_pp0_iter24_reg <= trunc_ln51_7_reg_705_pp0_iter23_reg;
        trunc_ln51_7_reg_705_pp0_iter25_reg <= trunc_ln51_7_reg_705_pp0_iter24_reg;
        trunc_ln51_7_reg_705_pp0_iter26_reg <= trunc_ln51_7_reg_705_pp0_iter25_reg;
        trunc_ln51_7_reg_705_pp0_iter2_reg <= trunc_ln51_7_reg_705;
        trunc_ln51_7_reg_705_pp0_iter3_reg <= trunc_ln51_7_reg_705_pp0_iter2_reg;
        trunc_ln51_7_reg_705_pp0_iter4_reg <= trunc_ln51_7_reg_705_pp0_iter3_reg;
        trunc_ln51_7_reg_705_pp0_iter5_reg <= trunc_ln51_7_reg_705_pp0_iter4_reg;
        trunc_ln51_7_reg_705_pp0_iter6_reg <= trunc_ln51_7_reg_705_pp0_iter5_reg;
        trunc_ln51_7_reg_705_pp0_iter7_reg <= trunc_ln51_7_reg_705_pp0_iter6_reg;
        trunc_ln51_7_reg_705_pp0_iter8_reg <= trunc_ln51_7_reg_705_pp0_iter7_reg;
        trunc_ln51_7_reg_705_pp0_iter9_reg <= trunc_ln51_7_reg_705_pp0_iter8_reg;
        v19_1_reg_678_pp0_iter10_reg <= v19_1_reg_678_pp0_iter9_reg;
        v19_1_reg_678_pp0_iter11_reg <= v19_1_reg_678_pp0_iter10_reg;
        v19_1_reg_678_pp0_iter12_reg <= v19_1_reg_678_pp0_iter11_reg;
        v19_1_reg_678_pp0_iter13_reg <= v19_1_reg_678_pp0_iter12_reg;
        v19_1_reg_678_pp0_iter14_reg <= v19_1_reg_678_pp0_iter13_reg;
        v19_1_reg_678_pp0_iter15_reg <= v19_1_reg_678_pp0_iter14_reg;
        v19_1_reg_678_pp0_iter16_reg <= v19_1_reg_678_pp0_iter15_reg;
        v19_1_reg_678_pp0_iter17_reg <= v19_1_reg_678_pp0_iter16_reg;
        v19_1_reg_678_pp0_iter18_reg <= v19_1_reg_678_pp0_iter17_reg;
        v19_1_reg_678_pp0_iter19_reg <= v19_1_reg_678_pp0_iter18_reg;
        v19_1_reg_678_pp0_iter20_reg <= v19_1_reg_678_pp0_iter19_reg;
        v19_1_reg_678_pp0_iter21_reg <= v19_1_reg_678_pp0_iter20_reg;
        v19_1_reg_678_pp0_iter22_reg <= v19_1_reg_678_pp0_iter21_reg;
        v19_1_reg_678_pp0_iter23_reg <= v19_1_reg_678_pp0_iter22_reg;
        v19_1_reg_678_pp0_iter24_reg <= v19_1_reg_678_pp0_iter23_reg;
        v19_1_reg_678_pp0_iter25_reg <= v19_1_reg_678_pp0_iter24_reg;
        v19_1_reg_678_pp0_iter26_reg <= v19_1_reg_678_pp0_iter25_reg;
        v19_1_reg_678_pp0_iter27_reg <= v19_1_reg_678_pp0_iter26_reg;
        v19_1_reg_678_pp0_iter28_reg <= v19_1_reg_678_pp0_iter27_reg;
        v19_1_reg_678_pp0_iter29_reg <= v19_1_reg_678_pp0_iter28_reg;
        v19_1_reg_678_pp0_iter2_reg <= v19_1_reg_678_pp0_iter1_reg;
        v19_1_reg_678_pp0_iter30_reg <= v19_1_reg_678_pp0_iter29_reg;
        v19_1_reg_678_pp0_iter31_reg <= v19_1_reg_678_pp0_iter30_reg;
        v19_1_reg_678_pp0_iter32_reg <= v19_1_reg_678_pp0_iter31_reg;
        v19_1_reg_678_pp0_iter33_reg <= v19_1_reg_678_pp0_iter32_reg;
        v19_1_reg_678_pp0_iter3_reg <= v19_1_reg_678_pp0_iter2_reg;
        v19_1_reg_678_pp0_iter4_reg <= v19_1_reg_678_pp0_iter3_reg;
        v19_1_reg_678_pp0_iter5_reg <= v19_1_reg_678_pp0_iter4_reg;
        v19_1_reg_678_pp0_iter6_reg <= v19_1_reg_678_pp0_iter5_reg;
        v19_1_reg_678_pp0_iter7_reg <= v19_1_reg_678_pp0_iter6_reg;
        v19_1_reg_678_pp0_iter8_reg <= v19_1_reg_678_pp0_iter7_reg;
        v19_1_reg_678_pp0_iter9_reg <= v19_1_reg_678_pp0_iter8_reg;
        v23_1_reg_755 <= v23_1_fu_522_p19;
        v23_reg_800 <= v23_fu_605_p19;
        v24_1_reg_805 <= grp_fu_909_p_dout0;
        v24_reg_810 <= grp_fu_913_p_dout0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_fu_389_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter33_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0)& (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_4_ce1_local = 1'b1;
    end else begin
        v0_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_5_ce1_local = 1'b1;
    end else begin
        v0_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_6_ce1_local = 1'b1;
    end else begin
        v0_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter28 == 1'b1))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v0_7_ce1_local = 1'b1;
    end else begin
        v0_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
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
assign add_ln47_fu_425_p2 = (ap_sig_allocacmp_v19_1 + 11'd2);
assign add_ln51_fu_439_p2 = (zext_ln47_1_fu_436_p1 + zext_ln33_5_cast_reg_673);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_419_p0 = {{{{tmp_25}, {1'd1}}, {tmp_5_fu_397_p4}}, {1'd1}};
assign grp_fu_419_p1 = 23'd576000;
assign grp_fu_444_p0 = (zext_ln47_1_fu_436_p1 + zext_ln33_5_cast_reg_673);
assign grp_fu_444_p1 = 24'd576000;
assign grp_fu_909_p_ce = 1'b1;
assign grp_fu_909_p_din0 = v22_3;
assign grp_fu_909_p_din1 = v23_1_reg_755;
assign grp_fu_913_p_ce = 1'b1;
assign grp_fu_913_p_din0 = v22_3;
assign grp_fu_913_p_din1 = v23_reg_800;
assign mul_ln51_1_fu_367_p0 = mul_ln51_1_fu_367_p00;
assign mul_ln51_1_fu_367_p00 = tmp_s_reg_693;
assign mul_ln51_1_fu_367_p1 = 47'd15270995;
assign mul_ln51_fu_372_p0 = mul_ln51_fu_372_p00;
assign mul_ln51_fu_372_p00 = add_ln51_reg_699;
assign mul_ln51_fu_372_p1 = 49'd30541990;
assign or_ln47_3_fu_644_p3 = {{tmp_5_reg_688_pp0_iter31_reg}, {1'd1}};
assign tmp_5_fu_397_p4 = {{ap_sig_allocacmp_v19_1[9:1]}};
assign tmp_fu_389_p3 = ap_sig_allocacmp_v19_1[32'd10];
assign tmp_s_fu_407_p5 = {{{{tmp_25}, {1'd1}}, {tmp_5_fu_397_p4}}, {1'd1}};
assign v0_0_address0 = zext_ln51_fu_561_p1;
assign v0_0_address1 = zext_ln51_3_fu_478_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = zext_ln51_fu_561_p1;
assign v0_1_address1 = zext_ln51_3_fu_478_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = zext_ln51_fu_561_p1;
assign v0_2_address1 = zext_ln51_3_fu_478_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = zext_ln51_fu_561_p1;
assign v0_3_address1 = zext_ln51_3_fu_478_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v0_4_address0 = zext_ln51_fu_561_p1;
assign v0_4_address1 = zext_ln51_3_fu_478_p1;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_ce1 = v0_4_ce1_local;
assign v0_5_address0 = zext_ln51_fu_561_p1;
assign v0_5_address1 = zext_ln51_3_fu_478_p1;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_ce1 = v0_5_ce1_local;
assign v0_6_address0 = zext_ln51_fu_561_p1;
assign v0_6_address1 = zext_ln51_3_fu_478_p1;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_ce1 = v0_6_ce1_local;
assign v0_7_address0 = zext_ln51_fu_561_p1;
assign v0_7_address1 = zext_ln51_3_fu_478_p1;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_ce1 = v0_7_ce1_local;
assign v23_1_fu_522_p10 = v0_4_q1;
assign v23_1_fu_522_p12 = v0_5_q1;
assign v23_1_fu_522_p14 = v0_6_q1;
assign v23_1_fu_522_p16 = v0_7_q1;
assign v23_1_fu_522_p17 = 'bx;
assign v23_1_fu_522_p2 = v0_0_q1;
assign v23_1_fu_522_p4 = v0_1_q1;
assign v23_1_fu_522_p6 = v0_2_q1;
assign v23_1_fu_522_p8 = v0_3_q1;
assign v23_fu_605_p10 = v0_4_q0;
assign v23_fu_605_p12 = v0_5_q0;
assign v23_fu_605_p14 = v0_6_q0;
assign v23_fu_605_p16 = v0_7_q0;
assign v23_fu_605_p17 = 'bx;
assign v23_fu_605_p2 = v0_0_q0;
assign v23_fu_605_p4 = v0_1_q0;
assign v23_fu_605_p6 = v0_2_q0;
assign v23_fu_605_p8 = v0_3_q0;
assign v3_address0 = zext_ln47_fu_656_p1;
assign v3_address1 = zext_ln51_2_fu_651_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = v24_reg_810;
assign v3_d1 = v24_1_reg_805;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln33_5_cast_fu_377_p1 = zext_ln33_5;
assign zext_ln47_1_fu_436_p1 = v19_1_reg_678;
assign zext_ln47_fu_656_p1 = v19_1_reg_678_pp0_iter33_reg;
assign zext_ln51_2_fu_651_p1 = or_ln47_3_fu_644_p3;
assign zext_ln51_3_fu_478_p1 = grp_fu_419_p2;
assign zext_ln51_fu_561_p1 = grp_fu_444_p2;
always @ (posedge ap_clk) begin
    zext_ln33_5_cast_reg_673[23] <= 1'b0;
    tmp_s_reg_693[0] <= 1'b1;
    tmp_s_reg_693[10] <= 1'b1;
end
endmodule 