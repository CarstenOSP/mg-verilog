
module backprop_update_weights_45_46_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_address1,weights1_1_ce1,weights1_1_q1,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_address1,weights1_0_ce1,weights1_0_q1,norm_1,grp_fu_435_p_din0,grp_fu_435_p_din1,grp_fu_435_p_dout0,grp_fu_435_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] weights1_1_address0;
output   weights1_1_ce0;
output   weights1_1_we0;
output  [63:0] weights1_1_d0;
output  [8:0] weights1_1_address1;
output   weights1_1_ce1;
input  [63:0] weights1_1_q1;
output  [8:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
output  [8:0] weights1_0_address1;
output   weights1_0_ce1;
input  [63:0] weights1_0_q1;
input  [63:0] norm_1;
output  [63:0] grp_fu_435_p_din0;
output  [63:0] grp_fu_435_p_din1;
input  [63:0] grp_fu_435_p_dout0;
output   grp_fu_435_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln140_fu_134_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] weights1_0_addr_reg_274;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter2_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter3_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter4_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter5_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter6_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter7_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter8_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter9_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter10_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter11_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter12_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter13_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter14_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter15_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter16_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter17_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter18_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter19_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter20_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter21_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter22_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter23_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter24_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter25_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter26_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter27_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter28_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter29_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter30_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter31_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter32_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter33_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter34_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter35_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter36_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter37_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter38_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter39_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter40_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter41_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter42_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter43_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter44_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter45_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter46_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter47_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter48_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter49_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter50_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter51_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter52_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter53_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter54_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter55_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter56_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter57_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter58_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter59_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter60_reg;
reg   [8:0] weights1_0_addr_reg_274_pp0_iter61_reg;
reg   [8:0] weights1_1_addr_reg_280;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter2_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter3_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter4_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter5_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter6_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter7_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter8_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter9_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter10_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter11_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter12_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter13_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter14_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter15_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter16_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter17_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter18_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter19_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter20_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter21_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter22_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter23_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter24_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter25_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter26_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter27_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter28_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter29_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter30_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter31_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter32_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter33_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter34_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter35_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter36_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter37_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter38_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter39_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter40_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter41_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter42_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter43_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter44_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter45_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter46_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter47_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter48_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter49_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter50_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter51_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter52_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter53_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter54_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter55_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter56_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter57_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter58_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter59_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter60_reg;
reg   [8:0] weights1_1_addr_reg_280_pp0_iter61_reg;
reg   [63:0] weights1_0_load_reg_286;
reg   [63:0] weights1_1_load_reg_291;
wire   [63:0] bitcast_ln142_fu_227_p1;
reg   [63:0] div_reg_306;
wire   [63:0] grp_fu_112_p2;
reg   [63:0] div_1_reg_311;
wire   [63:0] zext_ln142_fu_205_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_56;
wire   [6:0] add_ln141_fu_211_p2;
wire    ap_loop_init;
reg   [3:0] i_2_fu_60;
wire   [3:0] select_ln140_fu_179_p3;
reg   [8:0] indvar_flatten6_fu_64;
wire   [8:0] add_ln140_fu_140_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    weights1_0_ce1_local;
reg    weights1_0_we0_local;
wire   [63:0] bitcast_ln142_1_fu_235_p1;
reg    weights1_0_ce0_local;
reg    weights1_1_ce1_local;
reg    weights1_1_we0_local;
wire   [63:0] bitcast_ln142_3_fu_239_p1;
reg    weights1_1_ce0_local;
wire   [63:0] grp_fu_112_p0;
wire   [0:0] tmp_fu_157_p3;
wire   [3:0] add_ln140_1_fu_173_p2;
wire   [6:0] select_ln121_fu_165_p3;
wire   [4:0] lshr_ln2_fu_187_p4;
wire   [8:0] add_ln1_fu_197_p3;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
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
#0 j_fu_56 = 7'd0;
#0 i_2_fu_60 = 4'd0;
#0 indvar_flatten6_fu_64 = 9'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U236(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_112_p0),.din1(norm_1),.ce(1'b1),.dout(grp_fu_112_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter61_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_2_fu_60 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_2_fu_60 <= select_ln140_fu_179_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln140_fu_134_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_64 <= add_ln140_fu_140_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_64 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_56 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_56 <= add_ln141_fu_211_p2;
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
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        div_1_reg_311 <= grp_fu_112_p2;
        div_reg_306 <= grp_fu_435_p_dout0;
        weights1_0_addr_reg_274_pp0_iter10_reg <= weights1_0_addr_reg_274_pp0_iter9_reg;
        weights1_0_addr_reg_274_pp0_iter11_reg <= weights1_0_addr_reg_274_pp0_iter10_reg;
        weights1_0_addr_reg_274_pp0_iter12_reg <= weights1_0_addr_reg_274_pp0_iter11_reg;
        weights1_0_addr_reg_274_pp0_iter13_reg <= weights1_0_addr_reg_274_pp0_iter12_reg;
        weights1_0_addr_reg_274_pp0_iter14_reg <= weights1_0_addr_reg_274_pp0_iter13_reg;
        weights1_0_addr_reg_274_pp0_iter15_reg <= weights1_0_addr_reg_274_pp0_iter14_reg;
        weights1_0_addr_reg_274_pp0_iter16_reg <= weights1_0_addr_reg_274_pp0_iter15_reg;
        weights1_0_addr_reg_274_pp0_iter17_reg <= weights1_0_addr_reg_274_pp0_iter16_reg;
        weights1_0_addr_reg_274_pp0_iter18_reg <= weights1_0_addr_reg_274_pp0_iter17_reg;
        weights1_0_addr_reg_274_pp0_iter19_reg <= weights1_0_addr_reg_274_pp0_iter18_reg;
        weights1_0_addr_reg_274_pp0_iter20_reg <= weights1_0_addr_reg_274_pp0_iter19_reg;
        weights1_0_addr_reg_274_pp0_iter21_reg <= weights1_0_addr_reg_274_pp0_iter20_reg;
        weights1_0_addr_reg_274_pp0_iter22_reg <= weights1_0_addr_reg_274_pp0_iter21_reg;
        weights1_0_addr_reg_274_pp0_iter23_reg <= weights1_0_addr_reg_274_pp0_iter22_reg;
        weights1_0_addr_reg_274_pp0_iter24_reg <= weights1_0_addr_reg_274_pp0_iter23_reg;
        weights1_0_addr_reg_274_pp0_iter25_reg <= weights1_0_addr_reg_274_pp0_iter24_reg;
        weights1_0_addr_reg_274_pp0_iter26_reg <= weights1_0_addr_reg_274_pp0_iter25_reg;
        weights1_0_addr_reg_274_pp0_iter27_reg <= weights1_0_addr_reg_274_pp0_iter26_reg;
        weights1_0_addr_reg_274_pp0_iter28_reg <= weights1_0_addr_reg_274_pp0_iter27_reg;
        weights1_0_addr_reg_274_pp0_iter29_reg <= weights1_0_addr_reg_274_pp0_iter28_reg;
        weights1_0_addr_reg_274_pp0_iter2_reg <= weights1_0_addr_reg_274;
        weights1_0_addr_reg_274_pp0_iter30_reg <= weights1_0_addr_reg_274_pp0_iter29_reg;
        weights1_0_addr_reg_274_pp0_iter31_reg <= weights1_0_addr_reg_274_pp0_iter30_reg;
        weights1_0_addr_reg_274_pp0_iter32_reg <= weights1_0_addr_reg_274_pp0_iter31_reg;
        weights1_0_addr_reg_274_pp0_iter33_reg <= weights1_0_addr_reg_274_pp0_iter32_reg;
        weights1_0_addr_reg_274_pp0_iter34_reg <= weights1_0_addr_reg_274_pp0_iter33_reg;
        weights1_0_addr_reg_274_pp0_iter35_reg <= weights1_0_addr_reg_274_pp0_iter34_reg;
        weights1_0_addr_reg_274_pp0_iter36_reg <= weights1_0_addr_reg_274_pp0_iter35_reg;
        weights1_0_addr_reg_274_pp0_iter37_reg <= weights1_0_addr_reg_274_pp0_iter36_reg;
        weights1_0_addr_reg_274_pp0_iter38_reg <= weights1_0_addr_reg_274_pp0_iter37_reg;
        weights1_0_addr_reg_274_pp0_iter39_reg <= weights1_0_addr_reg_274_pp0_iter38_reg;
        weights1_0_addr_reg_274_pp0_iter3_reg <= weights1_0_addr_reg_274_pp0_iter2_reg;
        weights1_0_addr_reg_274_pp0_iter40_reg <= weights1_0_addr_reg_274_pp0_iter39_reg;
        weights1_0_addr_reg_274_pp0_iter41_reg <= weights1_0_addr_reg_274_pp0_iter40_reg;
        weights1_0_addr_reg_274_pp0_iter42_reg <= weights1_0_addr_reg_274_pp0_iter41_reg;
        weights1_0_addr_reg_274_pp0_iter43_reg <= weights1_0_addr_reg_274_pp0_iter42_reg;
        weights1_0_addr_reg_274_pp0_iter44_reg <= weights1_0_addr_reg_274_pp0_iter43_reg;
        weights1_0_addr_reg_274_pp0_iter45_reg <= weights1_0_addr_reg_274_pp0_iter44_reg;
        weights1_0_addr_reg_274_pp0_iter46_reg <= weights1_0_addr_reg_274_pp0_iter45_reg;
        weights1_0_addr_reg_274_pp0_iter47_reg <= weights1_0_addr_reg_274_pp0_iter46_reg;
        weights1_0_addr_reg_274_pp0_iter48_reg <= weights1_0_addr_reg_274_pp0_iter47_reg;
        weights1_0_addr_reg_274_pp0_iter49_reg <= weights1_0_addr_reg_274_pp0_iter48_reg;
        weights1_0_addr_reg_274_pp0_iter4_reg <= weights1_0_addr_reg_274_pp0_iter3_reg;
        weights1_0_addr_reg_274_pp0_iter50_reg <= weights1_0_addr_reg_274_pp0_iter49_reg;
        weights1_0_addr_reg_274_pp0_iter51_reg <= weights1_0_addr_reg_274_pp0_iter50_reg;
        weights1_0_addr_reg_274_pp0_iter52_reg <= weights1_0_addr_reg_274_pp0_iter51_reg;
        weights1_0_addr_reg_274_pp0_iter53_reg <= weights1_0_addr_reg_274_pp0_iter52_reg;
        weights1_0_addr_reg_274_pp0_iter54_reg <= weights1_0_addr_reg_274_pp0_iter53_reg;
        weights1_0_addr_reg_274_pp0_iter55_reg <= weights1_0_addr_reg_274_pp0_iter54_reg;
        weights1_0_addr_reg_274_pp0_iter56_reg <= weights1_0_addr_reg_274_pp0_iter55_reg;
        weights1_0_addr_reg_274_pp0_iter57_reg <= weights1_0_addr_reg_274_pp0_iter56_reg;
        weights1_0_addr_reg_274_pp0_iter58_reg <= weights1_0_addr_reg_274_pp0_iter57_reg;
        weights1_0_addr_reg_274_pp0_iter59_reg <= weights1_0_addr_reg_274_pp0_iter58_reg;
        weights1_0_addr_reg_274_pp0_iter5_reg <= weights1_0_addr_reg_274_pp0_iter4_reg;
        weights1_0_addr_reg_274_pp0_iter60_reg <= weights1_0_addr_reg_274_pp0_iter59_reg;
        weights1_0_addr_reg_274_pp0_iter61_reg <= weights1_0_addr_reg_274_pp0_iter60_reg;
        weights1_0_addr_reg_274_pp0_iter6_reg <= weights1_0_addr_reg_274_pp0_iter5_reg;
        weights1_0_addr_reg_274_pp0_iter7_reg <= weights1_0_addr_reg_274_pp0_iter6_reg;
        weights1_0_addr_reg_274_pp0_iter8_reg <= weights1_0_addr_reg_274_pp0_iter7_reg;
        weights1_0_addr_reg_274_pp0_iter9_reg <= weights1_0_addr_reg_274_pp0_iter8_reg;
        weights1_1_addr_reg_280_pp0_iter10_reg <= weights1_1_addr_reg_280_pp0_iter9_reg;
        weights1_1_addr_reg_280_pp0_iter11_reg <= weights1_1_addr_reg_280_pp0_iter10_reg;
        weights1_1_addr_reg_280_pp0_iter12_reg <= weights1_1_addr_reg_280_pp0_iter11_reg;
        weights1_1_addr_reg_280_pp0_iter13_reg <= weights1_1_addr_reg_280_pp0_iter12_reg;
        weights1_1_addr_reg_280_pp0_iter14_reg <= weights1_1_addr_reg_280_pp0_iter13_reg;
        weights1_1_addr_reg_280_pp0_iter15_reg <= weights1_1_addr_reg_280_pp0_iter14_reg;
        weights1_1_addr_reg_280_pp0_iter16_reg <= weights1_1_addr_reg_280_pp0_iter15_reg;
        weights1_1_addr_reg_280_pp0_iter17_reg <= weights1_1_addr_reg_280_pp0_iter16_reg;
        weights1_1_addr_reg_280_pp0_iter18_reg <= weights1_1_addr_reg_280_pp0_iter17_reg;
        weights1_1_addr_reg_280_pp0_iter19_reg <= weights1_1_addr_reg_280_pp0_iter18_reg;
        weights1_1_addr_reg_280_pp0_iter20_reg <= weights1_1_addr_reg_280_pp0_iter19_reg;
        weights1_1_addr_reg_280_pp0_iter21_reg <= weights1_1_addr_reg_280_pp0_iter20_reg;
        weights1_1_addr_reg_280_pp0_iter22_reg <= weights1_1_addr_reg_280_pp0_iter21_reg;
        weights1_1_addr_reg_280_pp0_iter23_reg <= weights1_1_addr_reg_280_pp0_iter22_reg;
        weights1_1_addr_reg_280_pp0_iter24_reg <= weights1_1_addr_reg_280_pp0_iter23_reg;
        weights1_1_addr_reg_280_pp0_iter25_reg <= weights1_1_addr_reg_280_pp0_iter24_reg;
        weights1_1_addr_reg_280_pp0_iter26_reg <= weights1_1_addr_reg_280_pp0_iter25_reg;
        weights1_1_addr_reg_280_pp0_iter27_reg <= weights1_1_addr_reg_280_pp0_iter26_reg;
        weights1_1_addr_reg_280_pp0_iter28_reg <= weights1_1_addr_reg_280_pp0_iter27_reg;
        weights1_1_addr_reg_280_pp0_iter29_reg <= weights1_1_addr_reg_280_pp0_iter28_reg;
        weights1_1_addr_reg_280_pp0_iter2_reg <= weights1_1_addr_reg_280;
        weights1_1_addr_reg_280_pp0_iter30_reg <= weights1_1_addr_reg_280_pp0_iter29_reg;
        weights1_1_addr_reg_280_pp0_iter31_reg <= weights1_1_addr_reg_280_pp0_iter30_reg;
        weights1_1_addr_reg_280_pp0_iter32_reg <= weights1_1_addr_reg_280_pp0_iter31_reg;
        weights1_1_addr_reg_280_pp0_iter33_reg <= weights1_1_addr_reg_280_pp0_iter32_reg;
        weights1_1_addr_reg_280_pp0_iter34_reg <= weights1_1_addr_reg_280_pp0_iter33_reg;
        weights1_1_addr_reg_280_pp0_iter35_reg <= weights1_1_addr_reg_280_pp0_iter34_reg;
        weights1_1_addr_reg_280_pp0_iter36_reg <= weights1_1_addr_reg_280_pp0_iter35_reg;
        weights1_1_addr_reg_280_pp0_iter37_reg <= weights1_1_addr_reg_280_pp0_iter36_reg;
        weights1_1_addr_reg_280_pp0_iter38_reg <= weights1_1_addr_reg_280_pp0_iter37_reg;
        weights1_1_addr_reg_280_pp0_iter39_reg <= weights1_1_addr_reg_280_pp0_iter38_reg;
        weights1_1_addr_reg_280_pp0_iter3_reg <= weights1_1_addr_reg_280_pp0_iter2_reg;
        weights1_1_addr_reg_280_pp0_iter40_reg <= weights1_1_addr_reg_280_pp0_iter39_reg;
        weights1_1_addr_reg_280_pp0_iter41_reg <= weights1_1_addr_reg_280_pp0_iter40_reg;
        weights1_1_addr_reg_280_pp0_iter42_reg <= weights1_1_addr_reg_280_pp0_iter41_reg;
        weights1_1_addr_reg_280_pp0_iter43_reg <= weights1_1_addr_reg_280_pp0_iter42_reg;
        weights1_1_addr_reg_280_pp0_iter44_reg <= weights1_1_addr_reg_280_pp0_iter43_reg;
        weights1_1_addr_reg_280_pp0_iter45_reg <= weights1_1_addr_reg_280_pp0_iter44_reg;
        weights1_1_addr_reg_280_pp0_iter46_reg <= weights1_1_addr_reg_280_pp0_iter45_reg;
        weights1_1_addr_reg_280_pp0_iter47_reg <= weights1_1_addr_reg_280_pp0_iter46_reg;
        weights1_1_addr_reg_280_pp0_iter48_reg <= weights1_1_addr_reg_280_pp0_iter47_reg;
        weights1_1_addr_reg_280_pp0_iter49_reg <= weights1_1_addr_reg_280_pp0_iter48_reg;
        weights1_1_addr_reg_280_pp0_iter4_reg <= weights1_1_addr_reg_280_pp0_iter3_reg;
        weights1_1_addr_reg_280_pp0_iter50_reg <= weights1_1_addr_reg_280_pp0_iter49_reg;
        weights1_1_addr_reg_280_pp0_iter51_reg <= weights1_1_addr_reg_280_pp0_iter50_reg;
        weights1_1_addr_reg_280_pp0_iter52_reg <= weights1_1_addr_reg_280_pp0_iter51_reg;
        weights1_1_addr_reg_280_pp0_iter53_reg <= weights1_1_addr_reg_280_pp0_iter52_reg;
        weights1_1_addr_reg_280_pp0_iter54_reg <= weights1_1_addr_reg_280_pp0_iter53_reg;
        weights1_1_addr_reg_280_pp0_iter55_reg <= weights1_1_addr_reg_280_pp0_iter54_reg;
        weights1_1_addr_reg_280_pp0_iter56_reg <= weights1_1_addr_reg_280_pp0_iter55_reg;
        weights1_1_addr_reg_280_pp0_iter57_reg <= weights1_1_addr_reg_280_pp0_iter56_reg;
        weights1_1_addr_reg_280_pp0_iter58_reg <= weights1_1_addr_reg_280_pp0_iter57_reg;
        weights1_1_addr_reg_280_pp0_iter59_reg <= weights1_1_addr_reg_280_pp0_iter58_reg;
        weights1_1_addr_reg_280_pp0_iter5_reg <= weights1_1_addr_reg_280_pp0_iter4_reg;
        weights1_1_addr_reg_280_pp0_iter60_reg <= weights1_1_addr_reg_280_pp0_iter59_reg;
        weights1_1_addr_reg_280_pp0_iter61_reg <= weights1_1_addr_reg_280_pp0_iter60_reg;
        weights1_1_addr_reg_280_pp0_iter6_reg <= weights1_1_addr_reg_280_pp0_iter5_reg;
        weights1_1_addr_reg_280_pp0_iter7_reg <= weights1_1_addr_reg_280_pp0_iter6_reg;
        weights1_1_addr_reg_280_pp0_iter8_reg <= weights1_1_addr_reg_280_pp0_iter7_reg;
        weights1_1_addr_reg_280_pp0_iter9_reg <= weights1_1_addr_reg_280_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        weights1_0_addr_reg_274 <= zext_ln142_fu_205_p1;
        weights1_1_addr_reg_280 <= zext_ln142_fu_205_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights1_0_load_reg_286 <= weights1_0_q1;
        weights1_1_load_reg_291 <= weights1_1_q1;
    end
end
always @ (*) begin
    if (((icmp_ln140_fu_134_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter61_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter62 == 1'b0)& (ap_enable_reg_pp0_iter61 == 1'b0) & (ap_enable_reg_pp0_iter60 == 1'b0) & (ap_enable_reg_pp0_iter59 == 1'b0) & (ap_enable_reg_pp0_iter58 == 1'b0) & (ap_enable_reg_pp0_iter57 == 1'b0) & (ap_enable_reg_pp0_iter56 == 1'b0) & (ap_enable_reg_pp0_iter55 == 1'b0) & (ap_enable_reg_pp0_iter54 == 1'b0) & (ap_enable_reg_pp0_iter53 == 1'b0) & (ap_enable_reg_pp0_iter52 == 1'b0) & (ap_enable_reg_pp0_iter51 == 1'b0) & (ap_enable_reg_pp0_iter50 == 1'b0) & (ap_enable_reg_pp0_iter49 == 1'b0) & (ap_enable_reg_pp0_iter48 == 1'b0) & (ap_enable_reg_pp0_iter47 == 1'b0) & (ap_enable_reg_pp0_iter46 == 1'b0) & (ap_enable_reg_pp0_iter45 == 1'b0) & (ap_enable_reg_pp0_iter44 == 1'b0) & (ap_enable_reg_pp0_iter43 == 1'b0) & (ap_enable_reg_pp0_iter42 == 1'b0) & (ap_enable_reg_pp0_iter41 == 1'b0) & (ap_enable_reg_pp0_iter40 == 1'b0) & (ap_enable_reg_pp0_iter39 == 1'b0) & (ap_enable_reg_pp0_iter38 == 1'b0) & (ap_enable_reg_pp0_iter37 == 1'b0) & (ap_enable_reg_pp0_iter36 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34== 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten6_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter62 == 1'b1))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_0_ce1_local = 1'b1;
    end else begin
        weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter62 == 1'b1))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter62 == 1'b1))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights1_1_ce1_local = 1'b1;
    end else begin
        weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter62 == 1'b1))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
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
assign add_ln140_1_fu_173_p2 = (i_2_fu_60 + 4'd1);
assign add_ln140_fu_140_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 9'd1);
assign add_ln141_fu_211_p2 = (select_ln121_fu_165_p3 + 7'd2);
assign add_ln1_fu_197_p3 = {{select_ln140_fu_179_p3}, {lshr_ln2_fu_187_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln142_1_fu_235_p1 = div_reg_306;
assign bitcast_ln142_3_fu_239_p1 = div_1_reg_311;
assign bitcast_ln142_fu_227_p1 = weights1_0_load_reg_286;
assign grp_fu_112_p0 = weights1_1_load_reg_291;
assign grp_fu_435_p_ce = 1'b1;
assign grp_fu_435_p_din0 = bitcast_ln142_fu_227_p1;
assign grp_fu_435_p_din1 = norm_1;
assign icmp_ln140_fu_134_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 9'd416) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_187_p4 = {{select_ln121_fu_165_p3[5:1]}};
assign select_ln121_fu_165_p3 = ((tmp_fu_157_p3[0:0] == 1'b1) ? 7'd0 : j_fu_56);
assign select_ln140_fu_179_p3 = ((tmp_fu_157_p3[0:0] == 1'b1) ? add_ln140_1_fu_173_p2 : i_2_fu_60);
assign tmp_fu_157_p3 = j_fu_56[32'd6];
assign weights1_0_address0 = weights1_0_addr_reg_274_pp0_iter61_reg;
assign weights1_0_address1 = zext_ln142_fu_205_p1;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_ce1 = weights1_0_ce1_local;
assign weights1_0_d0 = bitcast_ln142_1_fu_235_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_1_address0 = weights1_1_addr_reg_280_pp0_iter61_reg;
assign weights1_1_address1 = zext_ln142_fu_205_p1;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_ce1 = weights1_1_ce1_local;
assign weights1_1_d0 = bitcast_ln142_3_fu_239_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign zext_ln142_fu_205_p1 = add_ln1_fu_197_p3;
endmodule 
