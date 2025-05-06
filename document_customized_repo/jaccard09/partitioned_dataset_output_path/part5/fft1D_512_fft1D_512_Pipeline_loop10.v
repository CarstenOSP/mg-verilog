
module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_we1,DATA_y_3_d1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_we1,DATA_y_2_d1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_13_address0,smem_13_ce0,smem_13_q0,smem_14_address0,smem_14_ce0,smem_14_q0,smem_15_address0,smem_15_ce0,smem_15_q0,smem_16_address0,smem_16_ce0,smem_16_q0,smem_17_address0,smem_17_ce0,smem_17_q0,smem_18_address0,smem_18_ce0,smem_18_q0,smem_19_address0,smem_19_ce0,smem_19_q0,smem_20_address0,smem_20_ce0,smem_20_q0,smem_21_address0,smem_21_ce0,smem_21_q0,smem_22_address0,smem_22_ce0,smem_22_q0,smem_23_address0,smem_23_ce0,smem_23_q0,smem_24_address0,smem_24_ce0,smem_24_q0,p_phi_out,p_phi_out_ap_vld,p_phi18_out,p_phi18_out_ap_vld,p_phi19_out,p_phi19_out_ap_vld,p_phi20_out,p_phi20_out_ap_vld,p_phi21_out,p_phi21_out_ap_vld,p_phi22_out,p_phi22_out_ap_vld,p_phi23_out,p_phi23_out_ap_vld,p_phi24_out,p_phi24_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
output   DATA_y_3_we1;
output  [63:0] DATA_y_3_d1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
output   DATA_y_2_we1;
output  [63:0] DATA_y_2_d1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_13_address0;
output   smem_13_ce0;
input  [63:0] smem_13_q0;
output  [5:0] smem_14_address0;
output   smem_14_ce0;
input  [63:0] smem_14_q0;
output  [5:0] smem_15_address0;
output   smem_15_ce0;
input  [63:0] smem_15_q0;
output  [5:0] smem_16_address0;
output   smem_16_ce0;
input  [63:0] smem_16_q0;
output  [5:0] smem_17_address0;
output   smem_17_ce0;
input  [63:0] smem_17_q0;
output  [5:0] smem_18_address0;
output   smem_18_ce0;
input  [63:0] smem_18_q0;
output  [5:0] smem_19_address0;
output   smem_19_ce0;
input  [63:0] smem_19_q0;
output  [5:0] smem_20_address0;
output   smem_20_ce0;
input  [63:0] smem_20_q0;
output  [5:0] smem_21_address0;
output   smem_21_ce0;
input  [63:0] smem_21_q0;
output  [5:0] smem_22_address0;
output   smem_22_ce0;
input  [63:0] smem_22_q0;
output  [5:0] smem_23_address0;
output   smem_23_ce0;
input  [63:0] smem_23_q0;
output  [5:0] smem_24_address0;
output   smem_24_ce0;
input  [63:0] smem_24_q0;
output  [63:0] p_phi_out;
output   p_phi_out_ap_vld;
output  [63:0] p_phi18_out;
output   p_phi18_out_ap_vld;
output  [63:0] p_phi19_out;
output   p_phi19_out_ap_vld;
output  [63:0] p_phi20_out;
output   p_phi20_out_ap_vld;
output  [63:0] p_phi21_out;
output   p_phi21_out_ap_vld;
output  [63:0] p_phi22_out;
output   p_phi22_out_ap_vld;
output  [63:0] p_phi23_out;
output   p_phi23_out_ap_vld;
output  [63:0] p_phi24_out;
output   p_phi24_out_ap_vld;
reg ap_idle;
reg p_phi_out_ap_vld;
reg p_phi18_out_ap_vld;
reg p_phi19_out_ap_vld;
reg p_phi20_out_ap_vld;
reg p_phi21_out_ap_vld;
reg p_phi22_out_ap_vld;
reg p_phi23_out_ap_vld;
reg p_phi24_out_ap_vld;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln340_fu_1249_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_6_reg_2212;
reg   [6:0] tid_6_reg_2212_pp0_iter1_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter2_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter3_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter4_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter5_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter6_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter7_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter8_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter9_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter10_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter11_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter12_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter13_reg;
reg   [6:0] tid_6_reg_2212_pp0_iter14_reg;
reg   [0:0] icmp_ln340_reg_2218;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter1_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter2_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter3_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter4_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter5_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter6_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter7_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter8_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter9_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter10_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter11_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter12_reg;
reg   [0:0] icmp_ln340_reg_2218_pp0_iter13_reg;
wire   [8:0] offset_assign_1_fu_1275_p3;
reg   [8:0] offset_assign_1_reg_2222;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter1_reg;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter2_reg;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter3_reg;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter4_reg;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter5_reg;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter6_reg;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter7_reg;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter8_reg;
reg   [8:0] offset_assign_1_reg_2222_pp0_iter9_reg;
reg   [5:0] tmp_91_reg_2229;
reg   [5:0] tmp_91_reg_2229_pp0_iter11_reg;
reg   [5:0] tmp_91_reg_2229_pp0_iter12_reg;
wire   [3:0] trunc_ln102_fu_1316_p1;
reg   [3:0] trunc_ln102_reg_2234;
reg   [3:0] trunc_ln102_reg_2234_pp0_iter13_reg;
wire   [63:0] tmp_s_fu_1518_p29;
reg   [63:0] tmp_s_reg_2766;
wire   [63:0] tmp_48_fu_1577_p29;
reg   [63:0] tmp_48_reg_2771;
wire   [63:0] tmp_49_fu_1636_p29;
reg   [63:0] tmp_49_reg_2776;
wire   [63:0] tmp_50_fu_1695_p29;
reg   [63:0] tmp_50_reg_2781;
wire   [63:0] tmp_51_fu_1754_p29;
reg   [63:0] tmp_51_reg_2786;
wire   [63:0] tmp_52_fu_1813_p29;
reg   [63:0] tmp_52_reg_2791;
wire   [63:0] tmp_53_fu_1872_p29;
reg   [63:0] tmp_53_reg_2796;
wire   [63:0] tmp_54_fu_1931_p29;
reg   [63:0] tmp_54_reg_2801;
wire   [63:0] zext_ln102_1_fu_1320_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln104_1_fu_1345_p1;
wire   [63:0] zext_ln105_1_fu_1371_p1;
wire   [63:0] zext_ln106_1_fu_1397_p1;
wire   [63:0] zext_ln107_1_fu_1423_p1;
wire   [63:0] zext_ln108_1_fu_1449_p1;
wire   [63:0] zext_ln109_1_fu_1475_p1;
wire   [63:0] zext_ln110_1_fu_1501_p1;
wire   [63:0] zext_ln341_fu_2038_p1;
wire   [63:0] zext_ln345_fu_2054_p1;
reg   [63:0] p_phi24_fu_152;
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
reg   [63:0] p_phi23_fu_156;
reg   [63:0] p_phi22_fu_160;
reg   [63:0] p_phi21_fu_164;
reg   [63:0] p_phi20_fu_168;
reg   [63:0] p_phi19_fu_172;
reg   [63:0] p_phi18_fu_176;
reg   [63:0] p_phi_fu_180;
reg   [6:0] tid_fu_184;
wire   [6:0] add_ln340_fu_1255_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
wire    ap_block_pp0_stage0_01001;
reg    smem_ce0_local;
reg   [5:0] smem_address0_local;
reg    smem_13_ce0_local;
reg   [5:0] smem_13_address0_local;
reg    smem_14_ce0_local;
reg   [5:0] smem_14_address0_local;
reg    smem_15_ce0_local;
reg   [5:0] smem_15_address0_local;
reg    smem_16_ce0_local;
reg   [5:0] smem_16_address0_local;
reg    smem_17_ce0_local;
reg   [5:0] smem_17_address0_local;
reg    smem_18_ce0_local;
reg   [5:0] smem_18_address0_local;
reg    smem_19_ce0_local;
reg   [5:0] smem_19_address0_local;
reg    smem_20_ce0_local;
reg   [5:0] smem_20_address0_local;
reg    smem_21_ce0_local;
reg   [5:0] smem_21_address0_local;
reg    smem_22_ce0_local;
reg   [5:0] smem_22_address0_local;
reg    smem_23_ce0_local;
reg   [5:0] smem_23_address0_local;
reg    smem_24_ce0_local;
reg   [5:0] smem_24_address0_local;
reg    DATA_y_we1_local;
reg    DATA_y_ce1_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_we1_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we1_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we1_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
wire   [2:0] tmp_fu_1261_p4;
wire   [5:0] trunc_ln353_fu_1271_p1;
wire   [8:0] grp_fu_1283_p0;
wire   [4:0] grp_fu_1283_p1;
wire   [8:0] mul_ln102_fu_1300_p0;
wire   [10:0] mul_ln102_fu_1300_p1;
wire   [18:0] mul_ln102_fu_1300_p2;
wire   [3:0] grp_fu_1283_p2;
wire   [20:0] tmp_92_fu_1336_p1;
wire  signed [20:0] grp_fu_2094_p3;
wire   [6:0] tmp_92_fu_1336_p4;
wire   [20:0] tmp_93_fu_1362_p1;
wire  signed [20:0] grp_fu_2103_p3;
wire   [6:0] tmp_93_fu_1362_p4;
wire   [20:0] tmp_94_fu_1388_p1;
wire  signed [20:0] grp_fu_2112_p3;
wire   [6:0] tmp_94_fu_1388_p4;
wire   [20:0] tmp_95_fu_1414_p1;
wire  signed [20:0] grp_fu_2121_p3;
wire   [6:0] tmp_95_fu_1414_p4;
wire   [20:0] tmp_96_fu_1440_p1;
wire  signed [20:0] grp_fu_2130_p3;
wire   [6:0] tmp_96_fu_1440_p4;
wire   [20:0] tmp_97_fu_1466_p1;
wire  signed [20:0] grp_fu_2139_p3;
wire   [6:0] tmp_97_fu_1466_p4;
wire   [20:0] tmp_98_fu_1492_p1;
wire  signed [20:0] grp_fu_2148_p3;
wire   [6:0] tmp_98_fu_1492_p4;
wire   [63:0] tmp_s_fu_1518_p27;
wire   [63:0] tmp_48_fu_1577_p27;
wire   [63:0] tmp_49_fu_1636_p27;
wire   [63:0] tmp_50_fu_1695_p27;
wire   [63:0] tmp_51_fu_1754_p27;
wire   [63:0] tmp_52_fu_1813_p27;
wire   [63:0] tmp_53_fu_1872_p27;
wire   [63:0] tmp_54_fu_1931_p27;
wire   [6:0] shl_ln341_fu_2033_p2;
wire   [5:0] trunc_ln341_fu_2030_p1;
wire   [6:0] or_ln_fu_2046_p3;
wire   [8:0] grp_fu_2094_p0;
wire   [9:0] zext_ln102_fu_1294_p1;
wire   [3:0] grp_fu_2094_p1;
wire   [10:0] grp_fu_2094_p2;
wire   [8:0] grp_fu_2103_p0;
wire   [4:0] grp_fu_2103_p1;
wire   [10:0] grp_fu_2103_p2;
wire   [8:0] grp_fu_2112_p0;
wire   [4:0] grp_fu_2112_p1;
wire   [10:0] grp_fu_2112_p2;
wire   [8:0] grp_fu_2121_p0;
wire   [5:0] grp_fu_2121_p1;
wire   [10:0] grp_fu_2121_p2;
wire   [8:0] grp_fu_2130_p0;
wire   [5:0] grp_fu_2130_p1;
wire   [10:0] grp_fu_2130_p2;
wire   [8:0] grp_fu_2139_p0;
wire   [5:0] grp_fu_2139_p1;
wire   [10:0] grp_fu_2139_p2;
wire   [8:0] grp_fu_2148_p0;
wire   [5:0] grp_fu_2148_p1;
wire   [10:0] grp_fu_2148_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln102_fu_1300_p00;
wire   [3:0] tmp_s_fu_1518_p1;
wire   [3:0] tmp_s_fu_1518_p3;
wire   [3:0] tmp_s_fu_1518_p5;
wire   [3:0] tmp_s_fu_1518_p7;
wire   [3:0] tmp_s_fu_1518_p9;
wire   [3:0] tmp_s_fu_1518_p11;
wire   [3:0] tmp_s_fu_1518_p13;
wire   [3:0] tmp_s_fu_1518_p15;
wire  signed [3:0] tmp_s_fu_1518_p17;
wire  signed [3:0] tmp_s_fu_1518_p19;
wire  signed [3:0] tmp_s_fu_1518_p21;
wire  signed [3:0] tmp_s_fu_1518_p23;
wire  signed [3:0] tmp_s_fu_1518_p25;
wire   [3:0] tmp_48_fu_1577_p1;
wire   [3:0] tmp_48_fu_1577_p3;
wire   [3:0] tmp_48_fu_1577_p5;
wire  signed [3:0] tmp_48_fu_1577_p7;
wire  signed [3:0] tmp_48_fu_1577_p9;
wire  signed [3:0] tmp_48_fu_1577_p11;
wire  signed [3:0] tmp_48_fu_1577_p13;
wire  signed [3:0] tmp_48_fu_1577_p15;
wire   [3:0] tmp_48_fu_1577_p17;
wire   [3:0] tmp_48_fu_1577_p19;
wire   [3:0] tmp_48_fu_1577_p21;
wire   [3:0] tmp_48_fu_1577_p23;
wire   [3:0] tmp_48_fu_1577_p25;
wire  signed [3:0] tmp_49_fu_1636_p1;
wire  signed [3:0] tmp_49_fu_1636_p3;
wire  signed [3:0] tmp_49_fu_1636_p5;
wire   [3:0] tmp_49_fu_1636_p7;
wire   [3:0] tmp_49_fu_1636_p9;
wire   [3:0] tmp_49_fu_1636_p11;
wire   [3:0] tmp_49_fu_1636_p13;
wire   [3:0] tmp_49_fu_1636_p15;
wire   [3:0] tmp_49_fu_1636_p17;
wire   [3:0] tmp_49_fu_1636_p19;
wire   [3:0] tmp_49_fu_1636_p21;
wire  signed [3:0] tmp_49_fu_1636_p23;
wire  signed [3:0] tmp_49_fu_1636_p25;
wire   [3:0] tmp_50_fu_1695_p1;
wire   [3:0] tmp_50_fu_1695_p3;
wire   [3:0] tmp_50_fu_1695_p5;
wire   [3:0] tmp_50_fu_1695_p7;
wire   [3:0] tmp_50_fu_1695_p9;
wire   [3:0] tmp_50_fu_1695_p11;
wire  signed [3:0] tmp_50_fu_1695_p13;
wire  signed [3:0] tmp_50_fu_1695_p15;
wire  signed [3:0] tmp_50_fu_1695_p17;
wire  signed [3:0] tmp_50_fu_1695_p19;
wire  signed [3:0] tmp_50_fu_1695_p21;
wire   [3:0] tmp_50_fu_1695_p23;
wire   [3:0] tmp_50_fu_1695_p25;
wire   [3:0] tmp_51_fu_1754_p1;
wire  signed [3:0] tmp_51_fu_1754_p3;
wire  signed [3:0] tmp_51_fu_1754_p5;
wire  signed [3:0] tmp_51_fu_1754_p7;
wire  signed [3:0] tmp_51_fu_1754_p9;
wire  signed [3:0] tmp_51_fu_1754_p11;
wire   [3:0] tmp_51_fu_1754_p13;
wire   [3:0] tmp_51_fu_1754_p15;
wire   [3:0] tmp_51_fu_1754_p17;
wire   [3:0] tmp_51_fu_1754_p19;
wire   [3:0] tmp_51_fu_1754_p21;
wire   [3:0] tmp_51_fu_1754_p23;
wire   [3:0] tmp_51_fu_1754_p25;
wire  signed [3:0] tmp_52_fu_1813_p1;
wire   [3:0] tmp_52_fu_1813_p3;
wire   [3:0] tmp_52_fu_1813_p5;
wire   [3:0] tmp_52_fu_1813_p7;
wire   [3:0] tmp_52_fu_1813_p9;
wire   [3:0] tmp_52_fu_1813_p11;
wire   [3:0] tmp_52_fu_1813_p13;
wire   [3:0] tmp_52_fu_1813_p15;
wire   [3:0] tmp_52_fu_1813_p17;
wire  signed [3:0] tmp_52_fu_1813_p19;
wire  signed [3:0] tmp_52_fu_1813_p21;
wire  signed [3:0] tmp_52_fu_1813_p23;
wire  signed [3:0] tmp_52_fu_1813_p25;
wire   [3:0] tmp_53_fu_1872_p1;
wire   [3:0] tmp_53_fu_1872_p3;
wire   [3:0] tmp_53_fu_1872_p5;
wire   [3:0] tmp_53_fu_1872_p7;
wire  signed [3:0] tmp_53_fu_1872_p9;
wire  signed [3:0] tmp_53_fu_1872_p11;
wire  signed [3:0] tmp_53_fu_1872_p13;
wire  signed [3:0] tmp_53_fu_1872_p15;
wire  signed [3:0] tmp_53_fu_1872_p17;
wire   [3:0] tmp_53_fu_1872_p19;
wire   [3:0] tmp_53_fu_1872_p21;
wire   [3:0] tmp_53_fu_1872_p23;
wire   [3:0] tmp_53_fu_1872_p25;
wire  signed [3:0] tmp_54_fu_1931_p1;
wire  signed [3:0] tmp_54_fu_1931_p3;
wire  signed [3:0] tmp_54_fu_1931_p5;
wire  signed [3:0] tmp_54_fu_1931_p7;
wire   [3:0] tmp_54_fu_1931_p9;
wire   [3:0] tmp_54_fu_1931_p11;
wire   [3:0] tmp_54_fu_1931_p13;
wire   [3:0] tmp_54_fu_1931_p15;
wire   [3:0] tmp_54_fu_1931_p17;
wire   [3:0] tmp_54_fu_1931_p19;
wire   [3:0] tmp_54_fu_1931_p21;
wire   [3:0] tmp_54_fu_1931_p23;
wire  signed [3:0] tmp_54_fu_1931_p25;
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
#0 p_phi24_fu_152 = 64'd0;
#0 p_phi23_fu_156 = 64'd0;
#0 p_phi22_fu_160 = 64'd0;
#0 p_phi21_fu_164 = 64'd0;
#0 p_phi20_fu_168 = 64'd0;
#0 p_phi19_fu_172 = 64'd0;
#0 p_phi18_fu_176 = 64'd0;
#0 p_phi_fu_180 = 64'd0;
#0 tid_fu_184 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_urem_9ns_5ns_4_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.dout_WIDTH( 4 ))
urem_9ns_5ns_4_13_1_U317(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1283_p0),.din1(grp_fu_1283_p1),.ce(1'b1),.dout(grp_fu_1283_p2));
fft1D_512_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U318(.din0(mul_ln102_fu_1300_p0),.din1(mul_ln102_fu_1300_p1),.dout(mul_ln102_fu_1300_p2));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U319(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_s_fu_1518_p27),.sel(trunc_ln102_reg_2234_pp0_iter13_reg),.dout(tmp_s_fu_1518_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h5 ),.din0_WIDTH( 64 ),.CASE1( 4'h6 ),.din1_WIDTH( 64 ),.CASE2( 4'h7 ),.din2_WIDTH( 64 ),.CASE3( 4'h8 ),.din3_WIDTH( 64 ),.CASE4( 4'h9 ),.din4_WIDTH( 64 ),.CASE5( 4'hA ),.din5_WIDTH( 64 ),.CASE6( 4'hB ),.din6_WIDTH( 64 ),.CASE7( 4'hC ),.din7_WIDTH( 64 ),.CASE8( 4'h0 ),.din8_WIDTH( 64 ),.CASE9( 4'h1 ),.din9_WIDTH( 64 ),.CASE10( 4'h2 ),.din10_WIDTH( 64 ),.CASE11( 4'h3 ),.din11_WIDTH( 64 ),.CASE12( 4'h4 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U320(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_48_fu_1577_p27),.sel(trunc_ln102_reg_2234_pp0_iter13_reg),.dout(tmp_48_fu_1577_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hA ),.din0_WIDTH( 64 ),.CASE1( 4'hB ),.din1_WIDTH( 64 ),.CASE2( 4'hC ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U321(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_49_fu_1636_p27),.sel(trunc_ln102_reg_2234_pp0_iter13_reg),.dout(tmp_49_fu_1636_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 64 ),.CASE1( 4'h3 ),.din1_WIDTH( 64 ),.CASE2( 4'h4 ),.din2_WIDTH( 64 ),.CASE3( 4'h5 ),.din3_WIDTH( 64 ),.CASE4( 4'h6 ),.din4_WIDTH( 64 ),.CASE5( 4'h7 ),.din5_WIDTH( 64 ),.CASE6( 4'h8 ),.din6_WIDTH( 64 ),.CASE7( 4'h9 ),.din7_WIDTH( 64 ),.CASE8( 4'hA ),.din8_WIDTH( 64 ),.CASE9( 4'hB ),.din9_WIDTH( 64 ),.CASE10( 4'hC ),.din10_WIDTH( 64 ),.CASE11( 4'h0 ),.din11_WIDTH( 64 ),.CASE12( 4'h1 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U322(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_50_fu_1695_p27),.sel(trunc_ln102_reg_2234_pp0_iter13_reg),.dout(tmp_50_fu_1695_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h7 ),.din0_WIDTH( 64 ),.CASE1( 4'h8 ),.din1_WIDTH( 64 ),.CASE2( 4'h9 ),.din2_WIDTH( 64 ),.CASE3( 4'hA ),.din3_WIDTH( 64 ),.CASE4( 4'hB ),.din4_WIDTH( 64 ),.CASE5( 4'hC ),.din5_WIDTH( 64 ),.CASE6( 4'h0 ),.din6_WIDTH( 64 ),.CASE7( 4'h1 ),.din7_WIDTH( 64 ),.CASE8( 4'h2 ),.din8_WIDTH( 64 ),.CASE9( 4'h3 ),.din9_WIDTH( 64 ),.CASE10( 4'h4 ),.din10_WIDTH( 64 ),.CASE11( 4'h5 ),.din11_WIDTH( 64 ),.CASE12( 4'h6 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U323(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_51_fu_1754_p27),.sel(trunc_ln102_reg_2234_pp0_iter13_reg),.dout(tmp_51_fu_1754_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hC ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U324(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_52_fu_1813_p27),.sel(trunc_ln102_reg_2234_pp0_iter13_reg),.dout(tmp_52_fu_1813_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 64 ),.CASE1( 4'h5 ),.din1_WIDTH( 64 ),.CASE2( 4'h6 ),.din2_WIDTH( 64 ),.CASE3( 4'h7 ),.din3_WIDTH( 64 ),.CASE4( 4'h8 ),.din4_WIDTH( 64 ),.CASE5( 4'h9 ),.din5_WIDTH( 64 ),.CASE6( 4'hA ),.din6_WIDTH( 64 ),.CASE7( 4'hB ),.din7_WIDTH( 64 ),.CASE8( 4'hC ),.din8_WIDTH( 64 ),.CASE9( 4'h0 ),.din9_WIDTH( 64 ),.CASE10( 4'h1 ),.din10_WIDTH( 64 ),.CASE11( 4'h2 ),.din11_WIDTH( 64 ),.CASE12( 4'h3 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U325(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_53_fu_1872_p27),.sel(trunc_ln102_reg_2234_pp0_iter13_reg),.dout(tmp_53_fu_1872_p29));
(* dissolve_hierarchy = "yes" *) fft1D_512_sparsemux_27_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h9 ),.din0_WIDTH( 64 ),.CASE1( 4'hA ),.din1_WIDTH( 64 ),.CASE2( 4'hB ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.CASE4( 4'h0 ),.din4_WIDTH( 64 ),.CASE5( 4'h1 ),.din5_WIDTH( 64 ),.CASE6( 4'h2 ),.din6_WIDTH( 64 ),.CASE7( 4'h3 ),.din7_WIDTH( 64 ),.CASE8( 4'h4 ),.din8_WIDTH( 64 ),.CASE9( 4'h5 ),.din9_WIDTH( 64 ),.CASE10( 4'h6 ),.din10_WIDTH( 64 ),.CASE11( 4'h7 ),.din11_WIDTH( 64 ),.CASE12( 4'h8 ),.din12_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_27_4_64_1_1_U326(.din0(smem_q0),.din1(smem_13_q0),.din2(smem_14_q0),.din3(smem_15_q0),.din4(smem_16_q0),.din5(smem_17_q0),.din6(smem_18_q0),.din7(smem_19_q0),.din8(smem_20_q0),.din9(smem_21_q0),.din10(smem_22_q0),.din11(smem_23_q0),.din12(smem_24_q0),.def(tmp_54_fu_1931_p27),.sel(trunc_ln102_reg_2234_pp0_iter13_reg),.dout(tmp_54_fu_1931_p29));
fft1D_512_am_addmul_9ns_4ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 4 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_4ns_11ns_21_4_1_U327(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2094_p0),.din1(grp_fu_2094_p1),.din2(grp_fu_2094_p2),.ce(1'b1),.dout(grp_fu_2094_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U328(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2103_p0),.din1(grp_fu_2103_p1),.din2(grp_fu_2103_p2),.ce(1'b1),.dout(grp_fu_2103_p3));
fft1D_512_am_addmul_9ns_5ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_5ns_11ns_21_4_1_U329(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2112_p0),.din1(grp_fu_2112_p1),.din2(grp_fu_2112_p2),.ce(1'b1),.dout(grp_fu_2112_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U330(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2121_p0),.din1(grp_fu_2121_p1),.din2(grp_fu_2121_p2),.ce(1'b1),.dout(grp_fu_2121_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U331(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2130_p0),.din1(grp_fu_2130_p1),.din2(grp_fu_2130_p2),.ce(1'b1),.dout(grp_fu_2130_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U332(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2139_p0),.din1(grp_fu_2139_p1),.din2(grp_fu_2139_p2),.ce(1'b1),.dout(grp_fu_2139_p3));
fft1D_512_am_addmul_9ns_6ns_11ns_21_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 6 ),.din2_WIDTH( 11 ),.dout_WIDTH( 21 ))
am_addmul_9ns_6ns_11ns_21_4_1_U333(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2148_p0),.din1(grp_fu_2148_p1),.din2(grp_fu_2148_p2),.ce(1'b1),.dout(grp_fu_2148_p3));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln340_fu_1249_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_184 <= add_ln340_fu_1255_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_184 <= 7'd0;
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
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln340_reg_2218_pp0_iter10_reg <= icmp_ln340_reg_2218_pp0_iter9_reg;
        icmp_ln340_reg_2218_pp0_iter11_reg <= icmp_ln340_reg_2218_pp0_iter10_reg;
        icmp_ln340_reg_2218_pp0_iter12_reg <= icmp_ln340_reg_2218_pp0_iter11_reg;
        icmp_ln340_reg_2218_pp0_iter13_reg <= icmp_ln340_reg_2218_pp0_iter12_reg;
        icmp_ln340_reg_2218_pp0_iter2_reg <= icmp_ln340_reg_2218_pp0_iter1_reg;
        icmp_ln340_reg_2218_pp0_iter3_reg <= icmp_ln340_reg_2218_pp0_iter2_reg;
        icmp_ln340_reg_2218_pp0_iter4_reg <= icmp_ln340_reg_2218_pp0_iter3_reg;
        icmp_ln340_reg_2218_pp0_iter5_reg <= icmp_ln340_reg_2218_pp0_iter4_reg;
        icmp_ln340_reg_2218_pp0_iter6_reg <= icmp_ln340_reg_2218_pp0_iter5_reg;
        icmp_ln340_reg_2218_pp0_iter7_reg <= icmp_ln340_reg_2218_pp0_iter6_reg;
        icmp_ln340_reg_2218_pp0_iter8_reg <= icmp_ln340_reg_2218_pp0_iter7_reg;
        icmp_ln340_reg_2218_pp0_iter9_reg <= icmp_ln340_reg_2218_pp0_iter8_reg;
        offset_assign_1_reg_2222_pp0_iter2_reg <= offset_assign_1_reg_2222_pp0_iter1_reg;
        offset_assign_1_reg_2222_pp0_iter3_reg <= offset_assign_1_reg_2222_pp0_iter2_reg;
        offset_assign_1_reg_2222_pp0_iter4_reg <= offset_assign_1_reg_2222_pp0_iter3_reg;
        offset_assign_1_reg_2222_pp0_iter5_reg <= offset_assign_1_reg_2222_pp0_iter4_reg;
        offset_assign_1_reg_2222_pp0_iter6_reg <= offset_assign_1_reg_2222_pp0_iter5_reg;
        offset_assign_1_reg_2222_pp0_iter7_reg <= offset_assign_1_reg_2222_pp0_iter6_reg;
        offset_assign_1_reg_2222_pp0_iter8_reg <= offset_assign_1_reg_2222_pp0_iter7_reg;
        offset_assign_1_reg_2222_pp0_iter9_reg <= offset_assign_1_reg_2222_pp0_iter8_reg;
        tid_6_reg_2212_pp0_iter10_reg <= tid_6_reg_2212_pp0_iter9_reg;
        tid_6_reg_2212_pp0_iter11_reg <= tid_6_reg_2212_pp0_iter10_reg;
        tid_6_reg_2212_pp0_iter12_reg <= tid_6_reg_2212_pp0_iter11_reg;
        tid_6_reg_2212_pp0_iter13_reg <= tid_6_reg_2212_pp0_iter12_reg;
        tid_6_reg_2212_pp0_iter14_reg <= tid_6_reg_2212_pp0_iter13_reg;
        tid_6_reg_2212_pp0_iter2_reg <= tid_6_reg_2212_pp0_iter1_reg;
        tid_6_reg_2212_pp0_iter3_reg <= tid_6_reg_2212_pp0_iter2_reg;
        tid_6_reg_2212_pp0_iter4_reg <= tid_6_reg_2212_pp0_iter3_reg;
        tid_6_reg_2212_pp0_iter5_reg <= tid_6_reg_2212_pp0_iter4_reg;
        tid_6_reg_2212_pp0_iter6_reg <= tid_6_reg_2212_pp0_iter5_reg;
        tid_6_reg_2212_pp0_iter7_reg <= tid_6_reg_2212_pp0_iter6_reg;
        tid_6_reg_2212_pp0_iter8_reg <= tid_6_reg_2212_pp0_iter7_reg;
        tid_6_reg_2212_pp0_iter9_reg <= tid_6_reg_2212_pp0_iter8_reg;
        tmp_48_reg_2771 <= tmp_48_fu_1577_p29;
        tmp_49_reg_2776 <= tmp_49_fu_1636_p29;
        tmp_50_reg_2781 <= tmp_50_fu_1695_p29;
        tmp_51_reg_2786 <= tmp_51_fu_1754_p29;
        tmp_52_reg_2791 <= tmp_52_fu_1813_p29;
        tmp_53_reg_2796 <= tmp_53_fu_1872_p29;
        tmp_54_reg_2801 <= tmp_54_fu_1931_p29;
        tmp_91_reg_2229 <= {{mul_ln102_fu_1300_p2[18:13]}};
        tmp_91_reg_2229_pp0_iter11_reg <= tmp_91_reg_2229;
        tmp_91_reg_2229_pp0_iter12_reg <= tmp_91_reg_2229_pp0_iter11_reg;
        tmp_s_reg_2766 <= tmp_s_fu_1518_p29;
        trunc_ln102_reg_2234 <= trunc_ln102_fu_1316_p1;
        trunc_ln102_reg_2234_pp0_iter13_reg <= trunc_ln102_reg_2234;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln340_reg_2218 <= icmp_ln340_fu_1249_p2;
        icmp_ln340_reg_2218_pp0_iter1_reg <= icmp_ln340_reg_2218;
        offset_assign_1_reg_2222 <= offset_assign_1_fu_1275_p3;
        offset_assign_1_reg_2222_pp0_iter1_reg <= offset_assign_1_reg_2222;
        tid_6_reg_2212 <= ap_sig_allocacmp_tid_6;
        tid_6_reg_2212_pp0_iter1_reg <= tid_6_reg_2212;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        p_phi18_fu_176 <= tmp_48_fu_1577_p29;
        p_phi19_fu_172 <= tmp_49_fu_1636_p29;
        p_phi20_fu_168 <= tmp_50_fu_1695_p29;
        p_phi21_fu_164 <= tmp_51_fu_1754_p29;
        p_phi22_fu_160 <= tmp_52_fu_1813_p29;
        p_phi23_fu_156 <= tmp_53_fu_1872_p29;
        p_phi24_fu_152 <= tmp_54_fu_1931_p29;
        p_phi_fu_180 <= tmp_s_fu_1518_p29;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_2_we1_local = 1'b1;
    end else begin
        DATA_y_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_3_we1_local = 1'b1;
    end else begin
        DATA_y_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln340_fu_1249_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln340_reg_2218_pp0_iter13_reg == 1'd1))) begin
        p_phi18_out_ap_vld = 1'b1;
    end else begin
        p_phi18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln340_reg_2218_pp0_iter13_reg == 1'd1))) begin
        p_phi19_out_ap_vld = 1'b1;
    end else begin
        p_phi19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln340_reg_2218_pp0_iter13_reg == 1'd1))) begin
        p_phi20_out_ap_vld = 1'b1;
    end else begin
        p_phi20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln340_reg_2218_pp0_iter13_reg == 1'd1))) begin
        p_phi21_out_ap_vld = 1'b1;
    end else begin
        p_phi21_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln340_reg_2218_pp0_iter13_reg == 1'd1))) begin
        p_phi22_out_ap_vld = 1'b1;
    end else begin
        p_phi22_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln340_reg_2218_pp0_iter13_reg == 1'd1))) begin
        p_phi23_out_ap_vld = 1'b1;
    end else begin
        p_phi23_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln340_reg_2218_pp0_iter13_reg == 1'd1))) begin
        p_phi24_out_ap_vld = 1'b1;
    end else begin
        p_phi24_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1) & (icmp_ln340_reg_2218_pp0_iter13_reg == 1'd1))) begin
        p_phi_out_ap_vld = 1'b1;
    end else begin
        p_phi_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd10)) begin
            smem_13_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd5)) begin
            smem_13_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd0)) begin
            smem_13_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd8)) begin
            smem_13_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd3)) begin
            smem_13_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd11)) begin
            smem_13_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd6)) begin
            smem_13_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd1)) begin
            smem_13_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_13_address0_local = 'bx;
        end
    end else begin
        smem_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd0)))) begin
        smem_13_ce0_local = 1'b1;
    end else begin
        smem_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd11)) begin
            smem_14_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd6)) begin
            smem_14_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd1)) begin
            smem_14_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd9)) begin
            smem_14_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd4)) begin
            smem_14_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd12)) begin
            smem_14_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd7)) begin
            smem_14_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd2)) begin
            smem_14_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_14_address0_local = 'bx;
        end
    end else begin
        smem_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd1)))) begin
        smem_14_ce0_local = 1'b1;
    end else begin
        smem_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd12)) begin
            smem_15_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd7)) begin
            smem_15_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd2)) begin
            smem_15_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd10)) begin
            smem_15_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd5)) begin
            smem_15_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd0)) begin
            smem_15_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd8)) begin
            smem_15_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd3)) begin
            smem_15_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_15_address0_local = 'bx;
        end
    end else begin
        smem_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd0)))) begin
        smem_15_ce0_local = 1'b1;
    end else begin
        smem_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd0)) begin
            smem_16_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd8)) begin
            smem_16_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd3)) begin
            smem_16_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd11)) begin
            smem_16_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd6)) begin
            smem_16_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd1)) begin
            smem_16_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd9)) begin
            smem_16_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd4)) begin
            smem_16_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_16_address0_local = 'bx;
        end
    end else begin
        smem_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd0)))) begin
        smem_16_ce0_local = 1'b1;
    end else begin
        smem_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd1)) begin
            smem_17_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd9)) begin
            smem_17_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd4)) begin
            smem_17_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd12)) begin
            smem_17_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd7)) begin
            smem_17_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd2)) begin
            smem_17_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd10)) begin
            smem_17_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd5)) begin
            smem_17_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_17_address0_local = 'bx;
        end
    end else begin
        smem_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd1)))) begin
        smem_17_ce0_local = 1'b1;
    end else begin
        smem_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd2)) begin
            smem_18_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd10)) begin
            smem_18_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd5)) begin
            smem_18_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd0)) begin
            smem_18_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd8)) begin
            smem_18_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd3)) begin
            smem_18_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd11)) begin
            smem_18_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd6)) begin
            smem_18_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_18_address0_local = 'bx;
        end
    end else begin
        smem_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd0)))) begin
        smem_18_ce0_local = 1'b1;
    end else begin
        smem_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd3)) begin
            smem_19_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd11)) begin
            smem_19_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd6)) begin
            smem_19_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd1)) begin
            smem_19_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd9)) begin
            smem_19_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd4)) begin
            smem_19_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd12)) begin
            smem_19_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd7)) begin
            smem_19_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_19_address0_local = 'bx;
        end
    end else begin
        smem_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd1)))) begin
        smem_19_ce0_local = 1'b1;
    end else begin
        smem_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd4)) begin
            smem_20_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd12)) begin
            smem_20_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd7)) begin
            smem_20_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd2)) begin
            smem_20_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd10)) begin
            smem_20_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd5)) begin
            smem_20_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd0)) begin
            smem_20_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd8)) begin
            smem_20_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_20_address0_local = 'bx;
        end
    end else begin
        smem_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd0)))) begin
        smem_20_ce0_local = 1'b1;
    end else begin
        smem_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd5)) begin
            smem_21_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd0)) begin
            smem_21_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd8)) begin
            smem_21_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd3)) begin
            smem_21_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd11)) begin
            smem_21_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd6)) begin
            smem_21_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd1)) begin
            smem_21_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd9)) begin
            smem_21_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_21_address0_local = 'bx;
        end
    end else begin
        smem_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd0)))) begin
        smem_21_ce0_local = 1'b1;
    end else begin
        smem_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd6)) begin
            smem_22_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd1)) begin
            smem_22_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd9)) begin
            smem_22_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd4)) begin
            smem_22_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd12)) begin
            smem_22_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd7)) begin
            smem_22_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd2)) begin
            smem_22_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd10)) begin
            smem_22_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_22_address0_local = 'bx;
        end
    end else begin
        smem_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd1)))) begin
        smem_22_ce0_local = 1'b1;
    end else begin
        smem_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd7)) begin
            smem_23_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd2)) begin
            smem_23_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd10)) begin
            smem_23_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd5)) begin
            smem_23_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd0)) begin
            smem_23_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd8)) begin
            smem_23_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd3)) begin
            smem_23_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd11)) begin
            smem_23_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_23_address0_local = 'bx;
        end
    end else begin
        smem_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd0)))) begin
        smem_23_ce0_local = 1'b1;
    end else begin
        smem_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd8)) begin
            smem_24_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd3)) begin
            smem_24_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd11)) begin
            smem_24_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd6)) begin
            smem_24_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd1)) begin
            smem_24_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd9)) begin
            smem_24_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd4)) begin
            smem_24_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd12)) begin
            smem_24_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_24_address0_local = 'bx;
        end
    end else begin
        smem_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd1)))) begin
        smem_24_ce0_local = 1'b1;
    end else begin
        smem_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        if ((trunc_ln102_reg_2234 == 4'd9)) begin
            smem_address0_local = zext_ln110_1_fu_1501_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd4)) begin
            smem_address0_local = zext_ln109_1_fu_1475_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd12)) begin
            smem_address0_local = zext_ln108_1_fu_1449_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd7)) begin
            smem_address0_local = zext_ln107_1_fu_1423_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd2)) begin
            smem_address0_local = zext_ln106_1_fu_1397_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd10)) begin
            smem_address0_local = zext_ln105_1_fu_1371_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd5)) begin
            smem_address0_local = zext_ln104_1_fu_1345_p1;
        end else if ((trunc_ln102_reg_2234 == 4'd0)) begin
            smem_address0_local = zext_ln102_1_fu_1320_p1;
        end else begin
            smem_address0_local = 'bx;
        end
    end else begin
        smem_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd12)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln102_reg_2234 == 4'd0)))) begin
        smem_ce0_local = 1'b1;
    end else begin
        smem_ce0_local = 1'b0;
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
assign DATA_y_1_address0 = zext_ln345_fu_2054_p1;
assign DATA_y_1_address1 = zext_ln341_fu_2038_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = tmp_52_reg_2791;
assign DATA_y_1_d1 = tmp_48_reg_2771;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_2_address0 = zext_ln345_fu_2054_p1;
assign DATA_y_2_address1 = zext_ln341_fu_2038_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_2_d0 = tmp_53_reg_2796;
assign DATA_y_2_d1 = tmp_49_reg_2776;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_2_we1 = DATA_y_2_we1_local;
assign DATA_y_3_address0 = zext_ln345_fu_2054_p1;
assign DATA_y_3_address1 = zext_ln341_fu_2038_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_3_d0 = tmp_54_reg_2801;
assign DATA_y_3_d1 = tmp_50_reg_2781;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_3_we1 = DATA_y_3_we1_local;
assign DATA_y_address0 = zext_ln345_fu_2054_p1;
assign DATA_y_address1 = zext_ln341_fu_2038_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = tmp_51_reg_2786;
assign DATA_y_d1 = tmp_s_reg_2766;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln340_fu_1255_p2 = (ap_sig_allocacmp_tid_6 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_1283_p0 = {{tmp_fu_1261_p4}, {trunc_ln353_fu_1271_p1}};
assign grp_fu_1283_p1 = 9'd13;
assign grp_fu_2094_p0 = zext_ln102_fu_1294_p1;
assign grp_fu_2094_p1 = 10'd8;
assign grp_fu_2094_p2 = 21'd1261;
assign grp_fu_2103_p0 = zext_ln102_fu_1294_p1;
assign grp_fu_2103_p1 = 10'd16;
assign grp_fu_2103_p2 = 21'd1261;
assign grp_fu_2112_p0 = zext_ln102_fu_1294_p1;
assign grp_fu_2112_p1 = 10'd24;
assign grp_fu_2112_p2 = 21'd1261;
assign grp_fu_2121_p0 = zext_ln102_fu_1294_p1;
assign grp_fu_2121_p1 = 10'd32;
assign grp_fu_2121_p2 = 21'd1261;
assign grp_fu_2130_p0 = zext_ln102_fu_1294_p1;
assign grp_fu_2130_p1 = 10'd40;
assign grp_fu_2130_p2 = 21'd1261;
assign grp_fu_2139_p0 = zext_ln102_fu_1294_p1;
assign grp_fu_2139_p1 = 10'd48;
assign grp_fu_2139_p2 = 21'd1261;
assign grp_fu_2148_p0 = zext_ln102_fu_1294_p1;
assign grp_fu_2148_p1 = 10'd56;
assign grp_fu_2148_p2 = 21'd1261;
assign icmp_ln340_fu_1249_p2 = ((ap_sig_allocacmp_tid_6 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln102_fu_1300_p0 = mul_ln102_fu_1300_p00;
assign mul_ln102_fu_1300_p00 = offset_assign_1_reg_2222_pp0_iter9_reg;
assign mul_ln102_fu_1300_p1 = 19'd631;
assign offset_assign_1_fu_1275_p3 = {{tmp_fu_1261_p4}, {trunc_ln353_fu_1271_p1}};
assign or_ln_fu_2046_p3 = {{trunc_ln341_fu_2030_p1}, {1'd1}};
assign p_phi18_out = p_phi18_fu_176;
assign p_phi19_out = p_phi19_fu_172;
assign p_phi20_out = p_phi20_fu_168;
assign p_phi21_out = p_phi21_fu_164;
assign p_phi22_out = p_phi22_fu_160;
assign p_phi23_out = p_phi23_fu_156;
assign p_phi24_out = p_phi24_fu_152;
assign p_phi_out = p_phi_fu_180;
assign shl_ln341_fu_2033_p2 = tid_6_reg_2212_pp0_iter14_reg << 7'd1;
assign smem_13_address0 = smem_13_address0_local;
assign smem_13_ce0 = smem_13_ce0_local;
assign smem_14_address0 = smem_14_address0_local;
assign smem_14_ce0 = smem_14_ce0_local;
assign smem_15_address0 = smem_15_address0_local;
assign smem_15_ce0 = smem_15_ce0_local;
assign smem_16_address0 = smem_16_address0_local;
assign smem_16_ce0 = smem_16_ce0_local;
assign smem_17_address0 = smem_17_address0_local;
assign smem_17_ce0 = smem_17_ce0_local;
assign smem_18_address0 = smem_18_address0_local;
assign smem_18_ce0 = smem_18_ce0_local;
assign smem_19_address0 = smem_19_address0_local;
assign smem_19_ce0 = smem_19_ce0_local;
assign smem_20_address0 = smem_20_address0_local;
assign smem_20_ce0 = smem_20_ce0_local;
assign smem_21_address0 = smem_21_address0_local;
assign smem_21_ce0 = smem_21_ce0_local;
assign smem_22_address0 = smem_22_address0_local;
assign smem_22_ce0 = smem_22_ce0_local;
assign smem_23_address0 = smem_23_address0_local;
assign smem_23_ce0 = smem_23_ce0_local;
assign smem_24_address0 = smem_24_address0_local;
assign smem_24_ce0 = smem_24_ce0_local;
assign smem_address0 = smem_address0_local;
assign smem_ce0 = smem_ce0_local;
assign tmp_48_fu_1577_p27 = 'bx;
assign tmp_49_fu_1636_p27 = 'bx;
assign tmp_50_fu_1695_p27 = 'bx;
assign tmp_51_fu_1754_p27 = 'bx;
assign tmp_52_fu_1813_p27 = 'bx;
assign tmp_53_fu_1872_p27 = 'bx;
assign tmp_54_fu_1931_p27 = 'bx;
assign tmp_92_fu_1336_p1 = grp_fu_2094_p3;
assign tmp_92_fu_1336_p4 = {{tmp_92_fu_1336_p1[20:14]}};
assign tmp_93_fu_1362_p1 = grp_fu_2103_p3;
assign tmp_93_fu_1362_p4 = {{tmp_93_fu_1362_p1[20:14]}};
assign tmp_94_fu_1388_p1 = grp_fu_2112_p3;
assign tmp_94_fu_1388_p4 = {{tmp_94_fu_1388_p1[20:14]}};
assign tmp_95_fu_1414_p1 = grp_fu_2121_p3;
assign tmp_95_fu_1414_p4 = {{tmp_95_fu_1414_p1[20:14]}};
assign tmp_96_fu_1440_p1 = grp_fu_2130_p3;
assign tmp_96_fu_1440_p4 = {{tmp_96_fu_1440_p1[20:14]}};
assign tmp_97_fu_1466_p1 = grp_fu_2139_p3;
assign tmp_97_fu_1466_p4 = {{tmp_97_fu_1466_p1[20:14]}};
assign tmp_98_fu_1492_p1 = grp_fu_2148_p3;
assign tmp_98_fu_1492_p4 = {{tmp_98_fu_1492_p1[20:14]}};
assign tmp_fu_1261_p4 = {{ap_sig_allocacmp_tid_6[5:3]}};
assign tmp_s_fu_1518_p27 = 'bx;
assign trunc_ln102_fu_1316_p1 = grp_fu_1283_p2[3:0];
assign trunc_ln341_fu_2030_p1 = tid_6_reg_2212_pp0_iter14_reg[5:0];
assign trunc_ln353_fu_1271_p1 = ap_sig_allocacmp_tid_6[5:0];
assign zext_ln102_1_fu_1320_p1 = tmp_91_reg_2229_pp0_iter12_reg;
assign zext_ln102_fu_1294_p1 = offset_assign_1_reg_2222_pp0_iter9_reg;
assign zext_ln104_1_fu_1345_p1 = tmp_92_fu_1336_p4;
assign zext_ln105_1_fu_1371_p1 = tmp_93_fu_1362_p4;
assign zext_ln106_1_fu_1397_p1 = tmp_94_fu_1388_p4;
assign zext_ln107_1_fu_1423_p1 = tmp_95_fu_1414_p4;
assign zext_ln108_1_fu_1449_p1 = tmp_96_fu_1440_p4;
assign zext_ln109_1_fu_1475_p1 = tmp_97_fu_1466_p4;
assign zext_ln110_1_fu_1501_p1 = tmp_98_fu_1492_p4;
assign zext_ln341_fu_2038_p1 = shl_ln341_fu_2033_p2;
assign zext_ln345_fu_2054_p1 = or_ln_fu_2046_p3;
endmodule 
