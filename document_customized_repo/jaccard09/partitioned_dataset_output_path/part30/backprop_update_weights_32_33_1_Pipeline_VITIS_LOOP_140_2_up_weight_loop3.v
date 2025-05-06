
module backprop_update_weights_32_33_1_Pipeline_VITIS_LOOP_140_2_up_weight_loop3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights1_1_address0,weights1_1_ce0,weights1_1_we0,weights1_1_d0,weights1_1_q0,weights1_1_address1,weights1_1_ce1,weights1_1_we1,weights1_1_d1,weights1_1_q1,weights1_0_address0,weights1_0_ce0,weights1_0_we0,weights1_0_d0,weights1_0_q0,weights1_0_address1,weights1_0_ce1,weights1_0_we1,weights1_0_d1,weights1_0_q1,norm_1,grp_fu_435_p_din0,grp_fu_435_p_din1,grp_fu_435_p_dout0,grp_fu_435_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
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
input  [63:0] weights1_1_q0;
output  [8:0] weights1_1_address1;
output   weights1_1_ce1;
output   weights1_1_we1;
output  [63:0] weights1_1_d1;
input  [63:0] weights1_1_q1;
output  [8:0] weights1_0_address0;
output   weights1_0_ce0;
output   weights1_0_we0;
output  [63:0] weights1_0_d0;
input  [63:0] weights1_0_q0;
output  [8:0] weights1_0_address1;
output   weights1_0_ce1;
output   weights1_0_we1;
output  [63:0] weights1_0_d1;
input  [63:0] weights1_0_q1;
input  [63:0] norm_1;
output  [63:0] grp_fu_435_p_din0;
output  [63:0] grp_fu_435_p_din1;
input  [63:0] grp_fu_435_p_dout0;
output   grp_fu_435_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln140_reg_478;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_180;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_184;
reg   [63:0] reg_188;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_176_p2;
reg   [63:0] reg_192;
wire   [0:0] icmp_ln140_fu_214_p2;
reg   [0:0] icmp_ln140_reg_478_pp0_iter1_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter2_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter3_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter4_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter5_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter6_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter7_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter8_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter9_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter10_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter11_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter12_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter13_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter14_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter15_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter16_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter17_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter18_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter19_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter20_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter21_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter22_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter23_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter24_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter25_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter26_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter27_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter28_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter29_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter30_reg;
reg   [0:0] icmp_ln140_reg_478_pp0_iter31_reg;
wire   [6:0] select_ln121_fu_240_p3;
reg   [6:0] select_ln121_reg_482;
wire   [3:0] select_ln140_fu_254_p3;
reg   [3:0] select_ln140_reg_487;
reg   [3:0] select_ln140_reg_487_pp0_iter1_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter2_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter3_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter4_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter5_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter6_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter7_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter8_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter9_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter10_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter11_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter12_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter13_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter14_reg;
reg   [3:0] select_ln140_reg_487_pp0_iter15_reg;
reg   [8:0] weights1_0_addr_reg_494;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter1_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter2_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter3_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter4_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter5_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter6_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter7_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter8_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter9_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter10_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter11_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter12_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter13_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter14_reg;
reg   [8:0] weights1_0_addr_reg_494_pp0_iter15_reg;
reg   [8:0] weights1_1_addr_reg_499;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter1_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter2_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter3_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter4_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter5_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter6_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter7_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter8_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter9_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter10_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter11_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter12_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter13_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter14_reg;
reg   [8:0] weights1_1_addr_reg_499_pp0_iter15_reg;
reg   [3:0] tmp_s_reg_504;
reg   [3:0] tmp_s_reg_504_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter3_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter4_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter5_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter6_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter7_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter8_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter9_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter10_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter11_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter12_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter13_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter14_reg;
reg   [3:0] tmp_s_reg_504_pp0_iter15_reg;
reg   [2:0] tmp_10_reg_509;
reg   [2:0] tmp_10_reg_509_pp0_iter1_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter2_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter3_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter4_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter5_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter6_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter7_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter8_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter9_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter10_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter11_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter12_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter13_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter14_reg;
reg   [2:0] tmp_10_reg_509_pp0_iter15_reg;
reg   [0:0] tmp_9_reg_515;
reg   [0:0] tmp_9_reg_515_pp0_iter1_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter2_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter3_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter4_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter5_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter6_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter7_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter8_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter9_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter10_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter11_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter12_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter13_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter14_reg;
reg   [0:0] tmp_9_reg_515_pp0_iter15_reg;
wire   [63:0] bitcast_ln142_fu_324_p1;
wire   [63:0] bitcast_ln142_2_fu_329_p1;
reg   [8:0] weights1_0_addr_1_reg_530;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter16_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter17_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter18_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter19_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter20_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter21_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter22_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter23_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter24_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter25_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter26_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter27_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter28_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter29_reg;
reg   [8:0] weights1_0_addr_1_reg_530_pp0_iter30_reg;
reg   [8:0] weights1_1_addr_1_reg_536;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter16_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter17_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter18_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter19_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter20_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter21_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter22_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter23_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter24_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter25_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter26_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter27_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter28_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter29_reg;
reg   [8:0] weights1_1_addr_1_reg_536_pp0_iter30_reg;
reg   [8:0] weights1_0_addr_2_reg_542;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter16_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter17_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter18_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter19_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter20_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter21_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter22_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter23_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter24_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter25_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter26_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter27_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter28_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter29_reg;
reg   [8:0] weights1_0_addr_2_reg_542_pp0_iter30_reg;
reg   [8:0] weights1_1_addr_2_reg_547;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter16_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter17_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter18_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter19_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter20_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter21_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter22_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter23_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter24_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter25_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter26_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter27_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter28_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter29_reg;
reg   [8:0] weights1_1_addr_2_reg_547_pp0_iter30_reg;
reg   [63:0] weights1_0_load_2_reg_552;
reg   [63:0] weights1_1_load_2_reg_557;
reg   [8:0] weights1_0_addr_3_reg_562;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter17_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter18_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter19_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter20_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter21_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter22_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter23_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter24_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter25_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter26_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter27_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter28_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter29_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter30_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter31_reg;
reg   [8:0] weights1_0_addr_3_reg_562_pp0_iter32_reg;
reg   [8:0] weights1_1_addr_3_reg_568;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter17_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter18_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter19_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter20_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter21_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter22_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter23_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter24_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter25_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter26_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter27_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter28_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter29_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter30_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter31_reg;
reg   [8:0] weights1_1_addr_3_reg_568_pp0_iter32_reg;
wire   [63:0] bitcast_ln142_4_fu_397_p1;
wire   [63:0] bitcast_ln142_6_fu_402_p1;
reg   [63:0] weights1_0_load_3_reg_584;
reg   [63:0] weights1_1_load_3_reg_589;
wire   [63:0] bitcast_ln142_8_fu_407_p1;
wire   [63:0] bitcast_ln142_10_fu_411_p1;
wire   [63:0] bitcast_ln142_12_fu_415_p1;
wire   [63:0] bitcast_ln142_14_fu_419_p1;
reg   [63:0] div_6_reg_614;
reg   [63:0] div_7_reg_619;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln142_fu_280_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln142_1_fu_362_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln142_2_fu_377_p1;
wire   [63:0] zext_ln142_3_fu_391_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_72;
wire   [6:0] add_ln141_fu_334_p2;
wire    ap_loop_init;
reg   [3:0] i_2_fu_76;
reg   [6:0] indvar_flatten6_fu_80;
wire   [6:0] add_ln140_fu_220_p2;
reg    weights1_0_ce1_local;
reg   [8:0] weights1_0_address1_local;
reg    weights1_0_we1_local;
wire   [63:0] bitcast_ln142_1_fu_344_p1;
wire    ap_block_pp0_stage2;
reg    weights1_0_ce0_local;
reg   [8:0] weights1_0_address0_local;
reg    weights1_0_we0_local;
reg   [63:0] weights1_0_d0_local;
wire   [63:0] bitcast_ln142_5_fu_423_p1;
wire   [63:0] bitcast_ln142_9_fu_433_p1;
wire   [63:0] bitcast_ln142_13_fu_443_p1;
reg    weights1_1_ce1_local;
reg   [8:0] weights1_1_address1_local;
reg    weights1_1_we1_local;
wire   [63:0] bitcast_ln142_3_fu_349_p1;
reg    weights1_1_ce0_local;
reg   [8:0] weights1_1_address0_local;
reg    weights1_1_we0_local;
reg   [63:0] weights1_1_d0_local;
wire   [63:0] bitcast_ln142_7_fu_428_p1;
wire   [63:0] bitcast_ln142_11_fu_438_p1;
wire   [63:0] bitcast_ln142_15_fu_447_p1;
reg   [63:0] grp_fu_172_p0;
reg   [63:0] grp_fu_176_p0;
wire   [0:0] tmp_fu_232_p3;
wire   [3:0] add_ln140_1_fu_248_p2;
wire   [4:0] lshr_ln2_fu_262_p4;
wire   [8:0] add_ln1_fu_272_p3;
wire   [8:0] add_ln142_1_fu_354_p4;
wire   [8:0] add_ln142_2_fu_368_p5;
wire   [8:0] add_ln142_3_fu_383_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter31_stage2;
reg    ap_idle_pp0_0to30;
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
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to32;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_72 = 7'd0;
#0 i_2_fu_76 = 4'd0;
#0 indvar_flatten6_fu_80 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U413(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_176_p0),.din1(norm_1),.ce(1'b1),.dout(grp_fu_176_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter31_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
            ap_enable_reg_pp0_iter32 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter23_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter24_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter25_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter26_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter27_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter28_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter29_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter30_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter31_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_2_fu_76 <= 4'd0;
    end else if (((icmp_ln140_fu_214_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        i_2_fu_76 <= select_ln140_fu_254_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten6_fu_80 <= 7'd0;
    end else if (((icmp_ln140_fu_214_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        indvar_flatten6_fu_80 <= add_ln140_fu_220_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_72 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_72 <= add_ln141_fu_334_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        div_6_reg_614 <= grp_fu_435_p_dout0;
        div_7_reg_619 <= grp_fu_176_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln140_reg_478 <= icmp_ln140_fu_214_p2;
        icmp_ln140_reg_478_pp0_iter10_reg <= icmp_ln140_reg_478_pp0_iter9_reg;
        icmp_ln140_reg_478_pp0_iter11_reg <= icmp_ln140_reg_478_pp0_iter10_reg;
        icmp_ln140_reg_478_pp0_iter12_reg <= icmp_ln140_reg_478_pp0_iter11_reg;
        icmp_ln140_reg_478_pp0_iter13_reg <= icmp_ln140_reg_478_pp0_iter12_reg;
        icmp_ln140_reg_478_pp0_iter14_reg <= icmp_ln140_reg_478_pp0_iter13_reg;
        icmp_ln140_reg_478_pp0_iter15_reg <= icmp_ln140_reg_478_pp0_iter14_reg;
        icmp_ln140_reg_478_pp0_iter16_reg <= icmp_ln140_reg_478_pp0_iter15_reg;
        icmp_ln140_reg_478_pp0_iter17_reg <= icmp_ln140_reg_478_pp0_iter16_reg;
        icmp_ln140_reg_478_pp0_iter18_reg <= icmp_ln140_reg_478_pp0_iter17_reg;
        icmp_ln140_reg_478_pp0_iter19_reg <= icmp_ln140_reg_478_pp0_iter18_reg;
        icmp_ln140_reg_478_pp0_iter1_reg <= icmp_ln140_reg_478;
        icmp_ln140_reg_478_pp0_iter20_reg <= icmp_ln140_reg_478_pp0_iter19_reg;
        icmp_ln140_reg_478_pp0_iter21_reg <= icmp_ln140_reg_478_pp0_iter20_reg;
        icmp_ln140_reg_478_pp0_iter22_reg <= icmp_ln140_reg_478_pp0_iter21_reg;
        icmp_ln140_reg_478_pp0_iter23_reg <= icmp_ln140_reg_478_pp0_iter22_reg;
        icmp_ln140_reg_478_pp0_iter24_reg <= icmp_ln140_reg_478_pp0_iter23_reg;
        icmp_ln140_reg_478_pp0_iter25_reg <= icmp_ln140_reg_478_pp0_iter24_reg;
        icmp_ln140_reg_478_pp0_iter26_reg <= icmp_ln140_reg_478_pp0_iter25_reg;
        icmp_ln140_reg_478_pp0_iter27_reg <= icmp_ln140_reg_478_pp0_iter26_reg;
        icmp_ln140_reg_478_pp0_iter28_reg <= icmp_ln140_reg_478_pp0_iter27_reg;
        icmp_ln140_reg_478_pp0_iter29_reg <= icmp_ln140_reg_478_pp0_iter28_reg;
        icmp_ln140_reg_478_pp0_iter2_reg <= icmp_ln140_reg_478_pp0_iter1_reg;
        icmp_ln140_reg_478_pp0_iter30_reg <= icmp_ln140_reg_478_pp0_iter29_reg;
        icmp_ln140_reg_478_pp0_iter31_reg <= icmp_ln140_reg_478_pp0_iter30_reg;
        icmp_ln140_reg_478_pp0_iter3_reg <= icmp_ln140_reg_478_pp0_iter2_reg;
        icmp_ln140_reg_478_pp0_iter4_reg <= icmp_ln140_reg_478_pp0_iter3_reg;
        icmp_ln140_reg_478_pp0_iter5_reg <= icmp_ln140_reg_478_pp0_iter4_reg;
        icmp_ln140_reg_478_pp0_iter6_reg <= icmp_ln140_reg_478_pp0_iter5_reg;
        icmp_ln140_reg_478_pp0_iter7_reg <= icmp_ln140_reg_478_pp0_iter6_reg;
        icmp_ln140_reg_478_pp0_iter8_reg <= icmp_ln140_reg_478_pp0_iter7_reg;
        icmp_ln140_reg_478_pp0_iter9_reg <= icmp_ln140_reg_478_pp0_iter8_reg;
        select_ln121_reg_482 <= select_ln121_fu_240_p3;
        select_ln140_reg_487 <= select_ln140_fu_254_p3;
        select_ln140_reg_487_pp0_iter10_reg <= select_ln140_reg_487_pp0_iter9_reg;
        select_ln140_reg_487_pp0_iter11_reg <= select_ln140_reg_487_pp0_iter10_reg;
        select_ln140_reg_487_pp0_iter12_reg <= select_ln140_reg_487_pp0_iter11_reg;
        select_ln140_reg_487_pp0_iter13_reg <= select_ln140_reg_487_pp0_iter12_reg;
        select_ln140_reg_487_pp0_iter14_reg <= select_ln140_reg_487_pp0_iter13_reg;
        select_ln140_reg_487_pp0_iter15_reg <= select_ln140_reg_487_pp0_iter14_reg;
        select_ln140_reg_487_pp0_iter1_reg <= select_ln140_reg_487;
        select_ln140_reg_487_pp0_iter2_reg <= select_ln140_reg_487_pp0_iter1_reg;
        select_ln140_reg_487_pp0_iter3_reg <= select_ln140_reg_487_pp0_iter2_reg;
        select_ln140_reg_487_pp0_iter4_reg <= select_ln140_reg_487_pp0_iter3_reg;
        select_ln140_reg_487_pp0_iter5_reg <= select_ln140_reg_487_pp0_iter4_reg;
        select_ln140_reg_487_pp0_iter6_reg <= select_ln140_reg_487_pp0_iter5_reg;
        select_ln140_reg_487_pp0_iter7_reg <= select_ln140_reg_487_pp0_iter6_reg;
        select_ln140_reg_487_pp0_iter8_reg <= select_ln140_reg_487_pp0_iter7_reg;
        select_ln140_reg_487_pp0_iter9_reg <= select_ln140_reg_487_pp0_iter8_reg;
        tmp_10_reg_509 <= {{select_ln121_fu_240_p3[5:3]}};
        tmp_10_reg_509_pp0_iter10_reg <= tmp_10_reg_509_pp0_iter9_reg;
        tmp_10_reg_509_pp0_iter11_reg <= tmp_10_reg_509_pp0_iter10_reg;
        tmp_10_reg_509_pp0_iter12_reg <= tmp_10_reg_509_pp0_iter11_reg;
        tmp_10_reg_509_pp0_iter13_reg <= tmp_10_reg_509_pp0_iter12_reg;
        tmp_10_reg_509_pp0_iter14_reg <= tmp_10_reg_509_pp0_iter13_reg;
        tmp_10_reg_509_pp0_iter15_reg <= tmp_10_reg_509_pp0_iter14_reg;
        tmp_10_reg_509_pp0_iter1_reg <= tmp_10_reg_509;
        tmp_10_reg_509_pp0_iter2_reg <= tmp_10_reg_509_pp0_iter1_reg;
        tmp_10_reg_509_pp0_iter3_reg <= tmp_10_reg_509_pp0_iter2_reg;
        tmp_10_reg_509_pp0_iter4_reg <= tmp_10_reg_509_pp0_iter3_reg;
        tmp_10_reg_509_pp0_iter5_reg <= tmp_10_reg_509_pp0_iter4_reg;
        tmp_10_reg_509_pp0_iter6_reg <= tmp_10_reg_509_pp0_iter5_reg;
        tmp_10_reg_509_pp0_iter7_reg <= tmp_10_reg_509_pp0_iter6_reg;
        tmp_10_reg_509_pp0_iter8_reg <= tmp_10_reg_509_pp0_iter7_reg;
        tmp_10_reg_509_pp0_iter9_reg <= tmp_10_reg_509_pp0_iter8_reg;
        tmp_9_reg_515 <= select_ln121_fu_240_p3[32'd1];
        tmp_9_reg_515_pp0_iter10_reg <= tmp_9_reg_515_pp0_iter9_reg;
        tmp_9_reg_515_pp0_iter11_reg <= tmp_9_reg_515_pp0_iter10_reg;
        tmp_9_reg_515_pp0_iter12_reg <= tmp_9_reg_515_pp0_iter11_reg;
        tmp_9_reg_515_pp0_iter13_reg <= tmp_9_reg_515_pp0_iter12_reg;
        tmp_9_reg_515_pp0_iter14_reg <= tmp_9_reg_515_pp0_iter13_reg;
        tmp_9_reg_515_pp0_iter15_reg <= tmp_9_reg_515_pp0_iter14_reg;
        tmp_9_reg_515_pp0_iter1_reg <= tmp_9_reg_515;
        tmp_9_reg_515_pp0_iter2_reg <= tmp_9_reg_515_pp0_iter1_reg;
        tmp_9_reg_515_pp0_iter3_reg <= tmp_9_reg_515_pp0_iter2_reg;
        tmp_9_reg_515_pp0_iter4_reg <= tmp_9_reg_515_pp0_iter3_reg;
        tmp_9_reg_515_pp0_iter5_reg <= tmp_9_reg_515_pp0_iter4_reg;
        tmp_9_reg_515_pp0_iter6_reg <= tmp_9_reg_515_pp0_iter5_reg;
        tmp_9_reg_515_pp0_iter7_reg <= tmp_9_reg_515_pp0_iter6_reg;
        tmp_9_reg_515_pp0_iter8_reg <= tmp_9_reg_515_pp0_iter7_reg;
        tmp_9_reg_515_pp0_iter9_reg <= tmp_9_reg_515_pp0_iter8_reg;
        tmp_s_reg_504 <= {{select_ln121_fu_240_p3[5:2]}};
        tmp_s_reg_504_pp0_iter10_reg <= tmp_s_reg_504_pp0_iter9_reg;
        tmp_s_reg_504_pp0_iter11_reg <= tmp_s_reg_504_pp0_iter10_reg;
        tmp_s_reg_504_pp0_iter12_reg <= tmp_s_reg_504_pp0_iter11_reg;
        tmp_s_reg_504_pp0_iter13_reg <= tmp_s_reg_504_pp0_iter12_reg;
        tmp_s_reg_504_pp0_iter14_reg <= tmp_s_reg_504_pp0_iter13_reg;
        tmp_s_reg_504_pp0_iter15_reg <= tmp_s_reg_504_pp0_iter14_reg;
        tmp_s_reg_504_pp0_iter1_reg <= tmp_s_reg_504;
        tmp_s_reg_504_pp0_iter2_reg <= tmp_s_reg_504_pp0_iter1_reg;
        tmp_s_reg_504_pp0_iter3_reg <= tmp_s_reg_504_pp0_iter2_reg;
        tmp_s_reg_504_pp0_iter4_reg <= tmp_s_reg_504_pp0_iter3_reg;
        tmp_s_reg_504_pp0_iter5_reg <= tmp_s_reg_504_pp0_iter4_reg;
        tmp_s_reg_504_pp0_iter6_reg <= tmp_s_reg_504_pp0_iter5_reg;
        tmp_s_reg_504_pp0_iter7_reg <= tmp_s_reg_504_pp0_iter6_reg;
        tmp_s_reg_504_pp0_iter8_reg <= tmp_s_reg_504_pp0_iter7_reg;
        tmp_s_reg_504_pp0_iter9_reg <= tmp_s_reg_504_pp0_iter8_reg;
        weights1_0_addr_reg_494 <= zext_ln142_fu_280_p1;
        weights1_0_addr_reg_494_pp0_iter10_reg <= weights1_0_addr_reg_494_pp0_iter9_reg;
        weights1_0_addr_reg_494_pp0_iter11_reg <= weights1_0_addr_reg_494_pp0_iter10_reg;
        weights1_0_addr_reg_494_pp0_iter12_reg <= weights1_0_addr_reg_494_pp0_iter11_reg;
        weights1_0_addr_reg_494_pp0_iter13_reg <= weights1_0_addr_reg_494_pp0_iter12_reg;
        weights1_0_addr_reg_494_pp0_iter14_reg <= weights1_0_addr_reg_494_pp0_iter13_reg;
        weights1_0_addr_reg_494_pp0_iter15_reg <= weights1_0_addr_reg_494_pp0_iter14_reg;
        weights1_0_addr_reg_494_pp0_iter1_reg <= weights1_0_addr_reg_494;
        weights1_0_addr_reg_494_pp0_iter2_reg <= weights1_0_addr_reg_494_pp0_iter1_reg;
        weights1_0_addr_reg_494_pp0_iter3_reg <= weights1_0_addr_reg_494_pp0_iter2_reg;
        weights1_0_addr_reg_494_pp0_iter4_reg <= weights1_0_addr_reg_494_pp0_iter3_reg;
        weights1_0_addr_reg_494_pp0_iter5_reg <= weights1_0_addr_reg_494_pp0_iter4_reg;
        weights1_0_addr_reg_494_pp0_iter6_reg <= weights1_0_addr_reg_494_pp0_iter5_reg;
        weights1_0_addr_reg_494_pp0_iter7_reg <= weights1_0_addr_reg_494_pp0_iter6_reg;
        weights1_0_addr_reg_494_pp0_iter8_reg <= weights1_0_addr_reg_494_pp0_iter7_reg;
        weights1_0_addr_reg_494_pp0_iter9_reg <= weights1_0_addr_reg_494_pp0_iter8_reg;
        weights1_1_addr_reg_499 <= zext_ln142_fu_280_p1;
        weights1_1_addr_reg_499_pp0_iter10_reg <= weights1_1_addr_reg_499_pp0_iter9_reg;
        weights1_1_addr_reg_499_pp0_iter11_reg <= weights1_1_addr_reg_499_pp0_iter10_reg;
        weights1_1_addr_reg_499_pp0_iter12_reg <= weights1_1_addr_reg_499_pp0_iter11_reg;
        weights1_1_addr_reg_499_pp0_iter13_reg <= weights1_1_addr_reg_499_pp0_iter12_reg;
        weights1_1_addr_reg_499_pp0_iter14_reg <= weights1_1_addr_reg_499_pp0_iter13_reg;
        weights1_1_addr_reg_499_pp0_iter15_reg <= weights1_1_addr_reg_499_pp0_iter14_reg;
        weights1_1_addr_reg_499_pp0_iter1_reg <= weights1_1_addr_reg_499;
        weights1_1_addr_reg_499_pp0_iter2_reg <= weights1_1_addr_reg_499_pp0_iter1_reg;
        weights1_1_addr_reg_499_pp0_iter3_reg <= weights1_1_addr_reg_499_pp0_iter2_reg;
        weights1_1_addr_reg_499_pp0_iter4_reg <= weights1_1_addr_reg_499_pp0_iter3_reg;
        weights1_1_addr_reg_499_pp0_iter5_reg <= weights1_1_addr_reg_499_pp0_iter4_reg;
        weights1_1_addr_reg_499_pp0_iter6_reg <= weights1_1_addr_reg_499_pp0_iter5_reg;
        weights1_1_addr_reg_499_pp0_iter7_reg <= weights1_1_addr_reg_499_pp0_iter6_reg;
        weights1_1_addr_reg_499_pp0_iter8_reg <= weights1_1_addr_reg_499_pp0_iter7_reg;
        weights1_1_addr_reg_499_pp0_iter9_reg <= weights1_1_addr_reg_499_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)))) begin
        reg_180 <= weights1_0_q1;
        reg_184 <= weights1_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter30 == 1'b1)))) begin
        reg_188 <= grp_fu_435_p_dout0;
        reg_192 <= grp_fu_176_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        weights1_0_addr_1_reg_530[8 : 1] <= zext_ln142_1_fu_362_p1[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter16_reg[8 : 1] <= weights1_0_addr_1_reg_530[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter17_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter16_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter18_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter17_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter19_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter18_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter20_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter19_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter21_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter20_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter22_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter21_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter23_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter22_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter24_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter23_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter25_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter24_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter26_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter25_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter27_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter26_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter28_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter27_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter29_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter28_reg[8 : 1];
        weights1_0_addr_1_reg_530_pp0_iter30_reg[8 : 1] <= weights1_0_addr_1_reg_530_pp0_iter29_reg[8 : 1];
        weights1_0_addr_2_reg_542[0] <= zext_ln142_2_fu_377_p1[0];
weights1_0_addr_2_reg_542[8 : 2] <= zext_ln142_2_fu_377_p1[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter16_reg[0] <= weights1_0_addr_2_reg_542[0];
weights1_0_addr_2_reg_542_pp0_iter16_reg[8 : 2] <= weights1_0_addr_2_reg_542[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter17_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter16_reg[0];
weights1_0_addr_2_reg_542_pp0_iter17_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter16_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter18_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter17_reg[0];
weights1_0_addr_2_reg_542_pp0_iter18_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter17_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter19_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter18_reg[0];
weights1_0_addr_2_reg_542_pp0_iter19_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter18_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter20_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter19_reg[0];
weights1_0_addr_2_reg_542_pp0_iter20_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter19_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter21_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter20_reg[0];
weights1_0_addr_2_reg_542_pp0_iter21_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter20_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter22_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter21_reg[0];
weights1_0_addr_2_reg_542_pp0_iter22_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter21_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter23_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter22_reg[0];
weights1_0_addr_2_reg_542_pp0_iter23_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter22_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter24_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter23_reg[0];
weights1_0_addr_2_reg_542_pp0_iter24_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter23_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter25_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter24_reg[0];
weights1_0_addr_2_reg_542_pp0_iter25_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter24_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter26_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter25_reg[0];
weights1_0_addr_2_reg_542_pp0_iter26_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter25_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter27_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter26_reg[0];
weights1_0_addr_2_reg_542_pp0_iter27_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter26_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter28_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter27_reg[0];
weights1_0_addr_2_reg_542_pp0_iter28_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter27_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter29_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter28_reg[0];
weights1_0_addr_2_reg_542_pp0_iter29_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter28_reg[8 : 2];
        weights1_0_addr_2_reg_542_pp0_iter30_reg[0] <= weights1_0_addr_2_reg_542_pp0_iter29_reg[0];
weights1_0_addr_2_reg_542_pp0_iter30_reg[8 : 2] <= weights1_0_addr_2_reg_542_pp0_iter29_reg[8 : 2];
        weights1_1_addr_1_reg_536[8 : 1] <= zext_ln142_1_fu_362_p1[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter16_reg[8 : 1] <= weights1_1_addr_1_reg_536[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter17_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter16_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter18_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter17_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter19_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter18_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter20_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter19_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter21_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter20_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter22_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter21_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter23_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter22_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter24_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter23_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter25_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter24_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter26_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter25_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter27_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter26_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter28_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter27_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter29_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter28_reg[8 : 1];
        weights1_1_addr_1_reg_536_pp0_iter30_reg[8 : 1] <= weights1_1_addr_1_reg_536_pp0_iter29_reg[8 : 1];
        weights1_1_addr_2_reg_547[0] <= zext_ln142_2_fu_377_p1[0];
weights1_1_addr_2_reg_547[8 : 2] <= zext_ln142_2_fu_377_p1[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter16_reg[0] <= weights1_1_addr_2_reg_547[0];
weights1_1_addr_2_reg_547_pp0_iter16_reg[8 : 2] <= weights1_1_addr_2_reg_547[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter17_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter16_reg[0];
weights1_1_addr_2_reg_547_pp0_iter17_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter16_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter18_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter17_reg[0];
weights1_1_addr_2_reg_547_pp0_iter18_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter17_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter19_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter18_reg[0];
weights1_1_addr_2_reg_547_pp0_iter19_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter18_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter20_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter19_reg[0];
weights1_1_addr_2_reg_547_pp0_iter20_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter19_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter21_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter20_reg[0];
weights1_1_addr_2_reg_547_pp0_iter21_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter20_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter22_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter21_reg[0];
weights1_1_addr_2_reg_547_pp0_iter22_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter21_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter23_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter22_reg[0];
weights1_1_addr_2_reg_547_pp0_iter23_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter22_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter24_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter23_reg[0];
weights1_1_addr_2_reg_547_pp0_iter24_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter23_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter25_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter24_reg[0];
weights1_1_addr_2_reg_547_pp0_iter25_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter24_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter26_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter25_reg[0];
weights1_1_addr_2_reg_547_pp0_iter26_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter25_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter27_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter26_reg[0];
weights1_1_addr_2_reg_547_pp0_iter27_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter26_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter28_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter27_reg[0];
weights1_1_addr_2_reg_547_pp0_iter28_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter27_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter29_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter28_reg[0];
weights1_1_addr_2_reg_547_pp0_iter29_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter28_reg[8 : 2];
        weights1_1_addr_2_reg_547_pp0_iter30_reg[0] <= weights1_1_addr_2_reg_547_pp0_iter29_reg[0];
weights1_1_addr_2_reg_547_pp0_iter30_reg[8 : 2] <= weights1_1_addr_2_reg_547_pp0_iter29_reg[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights1_0_addr_3_reg_562[8 : 2] <= zext_ln142_3_fu_391_p1[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter17_reg[8 : 2] <= weights1_0_addr_3_reg_562[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter18_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter17_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter19_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter18_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter20_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter19_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter21_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter20_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter22_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter21_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter23_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter22_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter24_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter23_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter25_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter24_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter26_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter25_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter27_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter26_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter28_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter27_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter29_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter28_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter30_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter29_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter31_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter30_reg[8 : 2];
        weights1_0_addr_3_reg_562_pp0_iter32_reg[8 : 2] <= weights1_0_addr_3_reg_562_pp0_iter31_reg[8 : 2];
        weights1_1_addr_3_reg_568[8 : 2] <= zext_ln142_3_fu_391_p1[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter17_reg[8 : 2] <= weights1_1_addr_3_reg_568[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter18_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter17_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter19_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter18_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter20_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter19_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter21_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter20_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter22_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter21_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter23_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter22_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter24_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter23_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter25_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter24_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter26_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter25_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter27_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter26_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter28_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter27_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter29_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter28_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter30_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter29_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter31_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter30_reg[8 : 2];
        weights1_1_addr_3_reg_568_pp0_iter32_reg[8 : 2] <= weights1_1_addr_3_reg_568_pp0_iter31_reg[8 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        weights1_0_load_2_reg_552 <= weights1_0_q0;
        weights1_1_load_2_reg_557 <= weights1_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        weights1_0_load_3_reg_584 <= weights1_0_q1;
        weights1_1_load_3_reg_589 <= weights1_1_q1;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln140_reg_478 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln140_reg_478_pp0_iter31_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        ap_condition_exit_pp0_iter31_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter31_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter31_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0)& (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0)& (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b0))) begin
        ap_idle_pp0_0to30 = 1'b1;
    end else begin
        ap_idle_pp0_0to30 = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0)& (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b0))) begin
        ap_idle_pp0_1to32 = 1'b1;
    end else begin
        ap_idle_pp0_1to32 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_172_p0 = bitcast_ln142_12_fu_415_p1;
    end else if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_172_p0 = bitcast_ln142_8_fu_407_p1;
    end else if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_172_p0 = bitcast_ln142_4_fu_397_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_172_p0 = bitcast_ln142_fu_324_p1;
    end else begin
        grp_fu_172_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_176_p0 = bitcast_ln142_14_fu_419_p1;
    end else if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_176_p0 = bitcast_ln142_10_fu_411_p1;
    end else if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_176_p0 = bitcast_ln142_6_fu_402_p1;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_176_p0 = bitcast_ln142_2_fu_329_p1;
    end else begin
        grp_fu_176_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        weights1_0_address0_local = weights1_0_addr_3_reg_562_pp0_iter32_reg;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_0_address0_local = weights1_0_addr_2_reg_542_pp0_iter30_reg;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_0_address0_local = weights1_0_addr_1_reg_530_pp0_iter30_reg;
    end else if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        weights1_0_address0_local = zext_ln142_2_fu_377_p1;
    end else begin
        weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        weights1_0_address1_local = zext_ln142_3_fu_391_p1;
    end else if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        weights1_0_address1_local = zext_ln142_1_fu_362_p1;
    end else if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        weights1_0_address1_local = weights1_0_addr_reg_494_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        weights1_0_address1_local = zext_ln142_fu_280_p1;
    end else begin
        weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter32 == 1'b1)))) begin
        weights1_0_ce0_local = 1'b1;
    end else begin
        weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        weights1_0_ce1_local = 1'b1;
    end else begin
        weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        weights1_0_d0_local = bitcast_ln142_13_fu_443_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_0_d0_local = bitcast_ln142_9_fu_433_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_0_d0_local = bitcast_ln142_5_fu_423_p1;
    end else begin
        weights1_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter32 == 1'b1)))) begin
        weights1_0_we0_local = 1'b1;
    end else begin
        weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        weights1_0_we1_local = 1'b1;
    end else begin
        weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        weights1_1_address0_local = weights1_1_addr_3_reg_568_pp0_iter32_reg;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_1_address0_local = weights1_1_addr_2_reg_547_pp0_iter30_reg;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_1_address0_local = weights1_1_addr_1_reg_536_pp0_iter30_reg;
    end else if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        weights1_1_address0_local = zext_ln142_2_fu_377_p1;
    end else begin
        weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        weights1_1_address1_local = zext_ln142_3_fu_391_p1;
    end else if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        weights1_1_address1_local = zext_ln142_1_fu_362_p1;
    end else if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        weights1_1_address1_local = weights1_1_addr_reg_499_pp0_iter15_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        weights1_1_address1_local = zext_ln142_fu_280_p1;
    end else begin
        weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter32 == 1'b1)))) begin
        weights1_1_ce0_local = 1'b1;
    end else begin
        weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001)) | ((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001)) | ((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        weights1_1_ce1_local = 1'b1;
    end else begin
        weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter32 == 1'b1))) begin
        weights1_1_d0_local = bitcast_ln142_15_fu_447_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_1_d0_local = bitcast_ln142_11_fu_438_p1;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter31 == 1'b1))) begin
        weights1_1_d0_local = bitcast_ln142_7_fu_428_p1;
    end else begin
        weights1_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter31 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter32 == 1'b1)))) begin
        weights1_1_we0_local = 1'b1;
    end else begin
        weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        weights1_1_we1_local = 1'b1;
    end else begin
        weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to32 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((ap_idle_pp0_0to30 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter31_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln140_1_fu_248_p2 = (i_2_fu_76 + 4'd1);
assign add_ln140_fu_220_p2 = (indvar_flatten6_fu_80 + 7'd1);
assign add_ln141_fu_334_p2 = (select_ln121_reg_482 + 7'd8);
assign add_ln142_1_fu_354_p4 = {{{select_ln140_reg_487_pp0_iter15_reg}, {tmp_s_reg_504_pp0_iter15_reg}}, {1'd1}};
assign add_ln142_2_fu_368_p5 = {{{{select_ln140_reg_487_pp0_iter15_reg}, {tmp_10_reg_509_pp0_iter15_reg}}, {1'd1}}, {tmp_9_reg_515_pp0_iter15_reg}};
assign add_ln142_3_fu_383_p4 = {{{select_ln140_reg_487_pp0_iter15_reg}, {tmp_10_reg_509_pp0_iter15_reg}}, {2'd3}};
assign add_ln1_fu_272_p3 = {{select_ln140_fu_254_p3}, {lshr_ln2_fu_262_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln142_10_fu_411_p1 = weights1_1_load_2_reg_557;
assign bitcast_ln142_11_fu_438_p1 = reg_192;
assign bitcast_ln142_12_fu_415_p1 = weights1_0_load_3_reg_584;
assign bitcast_ln142_13_fu_443_p1 = div_6_reg_614;
assign bitcast_ln142_14_fu_419_p1 = weights1_1_load_3_reg_589;
assign bitcast_ln142_15_fu_447_p1 = div_7_reg_619;
assign bitcast_ln142_1_fu_344_p1 = reg_188;
assign bitcast_ln142_2_fu_329_p1 = reg_184;
assign bitcast_ln142_3_fu_349_p1 = reg_192;
assign bitcast_ln142_4_fu_397_p1 = reg_180;
assign bitcast_ln142_5_fu_423_p1 = reg_188;
assign bitcast_ln142_6_fu_402_p1 = reg_184;
assign bitcast_ln142_7_fu_428_p1 = reg_192;
assign bitcast_ln142_8_fu_407_p1 = weights1_0_load_2_reg_552;
assign bitcast_ln142_9_fu_433_p1 = reg_188;
assign bitcast_ln142_fu_324_p1 = reg_180;
assign grp_fu_435_p_ce = 1'b1;
assign grp_fu_435_p_din0 = grp_fu_172_p0;
assign grp_fu_435_p_din1 = norm_1;
assign icmp_ln140_fu_214_p2 = ((indvar_flatten6_fu_80 == 7'd104) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_262_p4 = {{select_ln121_fu_240_p3[5:1]}};
assign select_ln121_fu_240_p3 = ((tmp_fu_232_p3[0:0] == 1'b1) ? 7'd0 : j_fu_72);
assign select_ln140_fu_254_p3 = ((tmp_fu_232_p3[0:0] == 1'b1) ? add_ln140_1_fu_248_p2 : i_2_fu_76);
assign tmp_fu_232_p3 = j_fu_72[32'd6];
assign weights1_0_address0 = weights1_0_address0_local;
assign weights1_0_address1 = weights1_0_address1_local;
assign weights1_0_ce0 = weights1_0_ce0_local;
assign weights1_0_ce1 = weights1_0_ce1_local;
assign weights1_0_d0 = weights1_0_d0_local;
assign weights1_0_d1 = bitcast_ln142_1_fu_344_p1;
assign weights1_0_we0 = weights1_0_we0_local;
assign weights1_0_we1 = weights1_0_we1_local;
assign weights1_1_address0 = weights1_1_address0_local;
assign weights1_1_address1 = weights1_1_address1_local;
assign weights1_1_ce0 = weights1_1_ce0_local;
assign weights1_1_ce1 = weights1_1_ce1_local;
assign weights1_1_d0 = weights1_1_d0_local;
assign weights1_1_d1 = bitcast_ln142_3_fu_349_p1;
assign weights1_1_we0 = weights1_1_we0_local;
assign weights1_1_we1 = weights1_1_we1_local;
assign zext_ln142_1_fu_362_p1 = add_ln142_1_fu_354_p4;
assign zext_ln142_2_fu_377_p1 = add_ln142_2_fu_368_p5;
assign zext_ln142_3_fu_391_p1 = add_ln142_3_fu_383_p4;
assign zext_ln142_fu_280_p1 = add_ln1_fu_272_p3;
always @ (posedge ap_clk) begin
    weights1_0_addr_1_reg_530[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter16_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter17_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter18_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter19_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter20_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter21_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter22_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter23_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter24_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter25_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter26_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter27_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter28_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter29_reg[0] <= 1'b1;
    weights1_0_addr_1_reg_530_pp0_iter30_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter16_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter17_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter18_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter19_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter20_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter21_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter22_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter23_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter24_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter25_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter26_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter27_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter28_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter29_reg[0] <= 1'b1;
    weights1_1_addr_1_reg_536_pp0_iter30_reg[0] <= 1'b1;
    weights1_0_addr_2_reg_542[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter16_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter17_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter18_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter19_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter20_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter21_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter22_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter23_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter24_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter25_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter26_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter27_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter28_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter29_reg[1] <= 1'b1;
    weights1_0_addr_2_reg_542_pp0_iter30_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter16_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter17_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter18_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter19_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter20_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter21_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter22_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter23_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter24_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter25_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter26_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter27_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter28_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter29_reg[1] <= 1'b1;
    weights1_1_addr_2_reg_547_pp0_iter30_reg[1] <= 1'b1;
    weights1_0_addr_3_reg_562[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter17_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter18_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter19_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter20_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter21_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter22_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter23_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter24_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter25_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter26_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter27_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter28_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter29_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter30_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter31_reg[1:0] <= 2'b11;
    weights1_0_addr_3_reg_562_pp0_iter32_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter17_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter18_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter19_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter20_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter21_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter22_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter23_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter24_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter25_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter26_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter27_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter28_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter29_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter30_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter31_reg[1:0] <= 2'b11;
    weights1_1_addr_3_reg_568_pp0_iter32_reg[1:0] <= 2'b11;
end
endmodule 
