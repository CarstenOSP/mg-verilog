module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_6,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,empty_10,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,empty,llike_address0,llike_ce0,llike_q0,min_p_22_out,min_p_22_out_ap_vld,grp_fu_434_p_din0,grp_fu_434_p_din1,grp_fu_434_p_opcode,grp_fu_434_p_dout0,grp_fu_434_p_ce,grp_fu_848_p_din0,grp_fu_848_p_din1,grp_fu_848_p_opcode,grp_fu_848_p_dout0,grp_fu_848_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_6;
input  [7:0] empty_9;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
input  [5:0] empty_10;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
input  [10:0] empty;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_22_out;
output   min_p_22_out_ap_vld;
output  [63:0] grp_fu_434_p_din0;
output  [63:0] grp_fu_434_p_din1;
output  [1:0] grp_fu_434_p_opcode;
input  [63:0] grp_fu_434_p_dout0;
output   grp_fu_434_p_ce;
output  [63:0] grp_fu_848_p_din0;
output  [63:0] grp_fu_848_p_din1;
output  [4:0] grp_fu_848_p_opcode;
input  [0:0] grp_fu_848_p_dout0;
output   grp_fu_848_p_ce;
reg ap_idle;
reg min_p_22_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_3_reg_1543;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_344;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_348;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_353;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_359;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_365;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_371;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_377;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_383;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_1478;
wire   [11:0] shl_ln2_fu_435_p3;
reg   [11:0] shl_ln2_reg_1518;
wire   [6:0] add_ln25_fu_485_p2;
reg   [6:0] add_ln25_reg_1537;
reg   [0:0] tmp_3_reg_1543_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1547;
reg   [63:0] llike_2_load_reg_1552;
reg   [63:0] llike_3_load_reg_1557;
reg   [63:0] llike_4_load_reg_1567;
reg   [63:0] llike_5_load_reg_1577;
reg   [63:0] llike_6_load_reg_1582;
reg   [63:0] llike_7_load_reg_1587;
wire   [63:0] bitcast_ln27_fu_576_p1;
reg   [63:0] transition_load_3_reg_1602;
reg   [5:0] tmp_29_reg_1617;
reg   [63:0] llike_load_reg_1622;
wire   [63:0] bitcast_ln27_1_fu_650_p1;
reg   [63:0] transition_load_5_reg_1632;
wire   [63:0] bitcast_ln27_2_fu_681_p1;
reg   [63:0] transition_load_7_reg_1652;
wire   [63:0] bitcast_ln27_3_fu_686_p1;
wire   [63:0] bitcast_ln27_4_fu_690_p1;
wire   [63:0] bitcast_ln27_5_fu_695_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_699_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_704_p1;
reg   [63:0] add52_5_reg_1682;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_1687;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_7_reg_1692;
wire   [0:0] and_ln29_1_fu_799_p2;
reg   [0:0] and_ln29_1_reg_1699;
wire   [63:0] min_p_9_fu_805_p3;
reg   [63:0] min_p_9_reg_1704;
wire   [0:0] and_ln29_3_fu_889_p2;
reg   [0:0] and_ln29_3_reg_1711;
wire   [63:0] min_p_11_fu_895_p3;
reg   [63:0] min_p_11_reg_1716;
wire   [0:0] and_ln29_5_fu_979_p2;
reg   [0:0] and_ln29_5_reg_1723;
wire   [63:0] min_p_13_fu_985_p3;
reg   [63:0] min_p_13_reg_1728;
wire   [0:0] icmp_ln29_14_fu_1010_p2;
reg   [0:0] icmp_ln29_14_reg_1734;
wire   [0:0] icmp_ln29_15_fu_1016_p2;
reg   [0:0] icmp_ln29_15_reg_1739;
reg   [63:0] p_8_reg_1744;
wire   [0:0] and_ln29_7_fu_1068_p2;
reg   [0:0] and_ln29_7_reg_1751;
wire   [63:0] min_p_15_fu_1074_p3;
reg   [63:0] min_p_15_reg_1756;
wire   [0:0] and_ln29_9_fu_1158_p2;
reg   [0:0] and_ln29_9_reg_1763;
wire   [63:0] min_p_17_fu_1164_p3;
reg   [63:0] min_p_17_reg_1768;
wire   [0:0] and_ln29_11_fu_1248_p2;
reg   [0:0] and_ln29_11_reg_1775;
wire   [63:0] min_p_19_fu_1254_p3;
reg   [63:0] min_p_19_reg_1780;
wire   [0:0] and_ln29_13_fu_1338_p2;
reg   [0:0] and_ln29_13_reg_1787;
wire   [63:0] min_p_21_fu_1344_p3;
reg   [63:0] min_p_21_reg_1792;
reg   [0:0] tmp_35_reg_1799;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_424_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_451_p1;
wire   [63:0] zext_ln27_1_fu_480_p1;
wire   [63:0] zext_ln27_2_fu_521_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_3_fu_548_p1;
wire   [63:0] zext_ln26_2_fu_571_p1;
wire   [63:0] zext_ln27_4_fu_603_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_5_fu_630_p1;
wire   [63:0] zext_ln27_6_fu_661_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_7_fu_676_p1;
reg   [63:0] min_p_fu_114;
wire   [63:0] min_p_23_fu_1433_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_118;
wire   [5:0] add_ln25_1_fu_708_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_1_ce0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_336_p0;
reg   [63:0] grp_fu_336_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_340_p0;
reg   [63:0] grp_fu_340_p1;
wire   [2:0] lshr_ln7_1_fu_406_p4;
wire   [10:0] tmp_8_fu_416_p3;
wire   [11:0] add_ln_fu_443_p3;
wire   [11:0] add_ln27_fu_456_p2;
wire   [5:0] tmp_9_fu_462_p4;
wire   [11:0] add_ln27_2_fu_472_p3;
wire   [6:0] zext_ln11_fu_402_p1;
wire   [11:0] add_ln27_1_fu_499_p2;
wire   [5:0] tmp_13_fu_504_p4;
wire   [11:0] add_ln27_4_fu_514_p3;
wire   [11:0] add_ln27_3_fu_526_p2;
wire   [5:0] tmp_17_fu_531_p4;
wire   [11:0] add_ln27_6_fu_541_p3;
wire   [3:0] lshr_ln8_1_fu_553_p4;
wire   [10:0] zext_ln26_1_fu_562_p1;
wire   [10:0] add_ln26_fu_566_p2;
wire   [11:0] add_ln27_5_fu_581_p2;
wire   [5:0] tmp_21_fu_586_p4;
wire   [11:0] add_ln27_8_fu_596_p3;
wire   [11:0] add_ln27_7_fu_608_p2;
wire   [5:0] tmp_25_fu_613_p4;
wire   [11:0] add_ln27_s_fu_623_p3;
wire   [11:0] add_ln27_9_fu_635_p2;
wire   [11:0] add_ln27_10_fu_655_p3;
wire   [5:0] trunc_ln27_fu_666_p1;
wire   [11:0] add_ln27_11_fu_669_p3;
wire   [63:0] bitcast_ln29_fu_722_p1;
wire   [63:0] bitcast_ln29_1_fu_740_p1;
wire   [10:0] tmp_6_fu_726_p4;
wire   [51:0] trunc_ln29_fu_736_p1;
wire   [0:0] icmp_ln29_1_fu_763_p2;
wire   [0:0] icmp_ln29_fu_757_p2;
wire   [10:0] tmp_7_fu_743_p4;
wire   [51:0] trunc_ln29_1_fu_753_p1;
wire   [0:0] icmp_ln29_3_fu_781_p2;
wire   [0:0] icmp_ln29_2_fu_775_p2;
wire   [0:0] or_ln29_fu_769_p2;
wire   [0:0] and_ln29_fu_793_p2;
wire   [0:0] or_ln29_1_fu_787_p2;
wire   [63:0] bitcast_ln29_2_fu_812_p1;
wire   [63:0] bitcast_ln29_3_fu_830_p1;
wire   [10:0] tmp_10_fu_816_p4;
wire   [51:0] trunc_ln29_2_fu_826_p1;
wire   [0:0] icmp_ln29_5_fu_853_p2;
wire   [0:0] icmp_ln29_4_fu_847_p2;
wire   [10:0] tmp_11_fu_833_p4;
wire   [51:0] trunc_ln29_3_fu_843_p1;
wire   [0:0] icmp_ln29_7_fu_871_p2;
wire   [0:0] icmp_ln29_6_fu_865_p2;
wire   [0:0] or_ln29_3_fu_877_p2;
wire   [0:0] or_ln29_2_fu_859_p2;
wire   [0:0] and_ln29_2_fu_883_p2;
wire   [63:0] bitcast_ln29_4_fu_902_p1;
wire   [63:0] bitcast_ln29_5_fu_920_p1;
wire   [10:0] tmp_14_fu_906_p4;
wire   [51:0] trunc_ln29_4_fu_916_p1;
wire   [0:0] icmp_ln29_9_fu_943_p2;
wire   [0:0] icmp_ln29_8_fu_937_p2;
wire   [10:0] tmp_15_fu_923_p4;
wire   [51:0] trunc_ln29_5_fu_933_p1;
wire   [0:0] icmp_ln29_11_fu_961_p2;
wire   [0:0] icmp_ln29_10_fu_955_p2;
wire   [0:0] or_ln29_5_fu_967_p2;
wire   [0:0] or_ln29_4_fu_949_p2;
wire   [0:0] and_ln29_4_fu_973_p2;
wire   [63:0] bitcast_ln29_7_fu_992_p1;
wire   [10:0] tmp_19_fu_996_p4;
wire   [51:0] trunc_ln29_7_fu_1006_p1;
wire   [63:0] bitcast_ln29_6_fu_1022_p1;
wire   [10:0] tmp_18_fu_1026_p4;
wire   [51:0] trunc_ln29_6_fu_1036_p1;
wire   [0:0] icmp_ln29_13_fu_1046_p2;
wire   [0:0] icmp_ln29_12_fu_1040_p2;
wire   [0:0] or_ln29_7_fu_1058_p2;
wire   [0:0] or_ln29_6_fu_1052_p2;
wire   [0:0] and_ln29_6_fu_1062_p2;
wire   [63:0] bitcast_ln29_8_fu_1081_p1;
wire   [63:0] bitcast_ln29_9_fu_1099_p1;
wire   [10:0] tmp_22_fu_1085_p4;
wire   [51:0] trunc_ln29_8_fu_1095_p1;
wire   [0:0] icmp_ln29_17_fu_1122_p2;
wire   [0:0] icmp_ln29_16_fu_1116_p2;
wire   [10:0] tmp_23_fu_1102_p4;
wire   [51:0] trunc_ln29_9_fu_1112_p1;
wire   [0:0] icmp_ln29_19_fu_1140_p2;
wire   [0:0] icmp_ln29_18_fu_1134_p2;
wire   [0:0] or_ln29_9_fu_1146_p2;
wire   [0:0] or_ln29_8_fu_1128_p2;
wire   [0:0] and_ln29_8_fu_1152_p2;
wire   [63:0] bitcast_ln29_10_fu_1171_p1;
wire   [63:0] bitcast_ln29_11_fu_1189_p1;
wire   [10:0] tmp_26_fu_1175_p4;
wire   [51:0] trunc_ln29_10_fu_1185_p1;
wire   [0:0] icmp_ln29_21_fu_1212_p2;
wire   [0:0] icmp_ln29_20_fu_1206_p2;
wire   [10:0] tmp_27_fu_1192_p4;
wire   [51:0] trunc_ln29_11_fu_1202_p1;
wire   [0:0] icmp_ln29_23_fu_1230_p2;
wire   [0:0] icmp_ln29_22_fu_1224_p2;
wire   [0:0] or_ln29_11_fu_1236_p2;
wire   [0:0] or_ln29_10_fu_1218_p2;
wire   [0:0] and_ln29_10_fu_1242_p2;
wire   [63:0] bitcast_ln29_12_fu_1261_p1;
wire   [63:0] bitcast_ln29_13_fu_1279_p1;
wire   [10:0] tmp_30_fu_1265_p4;
wire   [51:0] trunc_ln29_12_fu_1275_p1;
wire   [0:0] icmp_ln29_25_fu_1302_p2;
wire   [0:0] icmp_ln29_24_fu_1296_p2;
wire   [10:0] tmp_31_fu_1282_p4;
wire   [51:0] trunc_ln29_13_fu_1292_p1;
wire   [0:0] icmp_ln29_27_fu_1320_p2;
wire   [0:0] icmp_ln29_26_fu_1314_p2;
wire   [0:0] or_ln29_13_fu_1326_p2;
wire   [0:0] or_ln29_12_fu_1308_p2;
wire   [0:0] and_ln29_12_fu_1332_p2;
wire   [63:0] bitcast_ln29_14_fu_1352_p1;
wire   [63:0] bitcast_ln29_15_fu_1369_p1;
wire   [10:0] tmp_33_fu_1355_p4;
wire   [51:0] trunc_ln29_14_fu_1365_p1;
wire   [0:0] icmp_ln29_29_fu_1392_p2;
wire   [0:0] icmp_ln29_28_fu_1386_p2;
wire   [10:0] tmp_34_fu_1372_p4;
wire   [51:0] trunc_ln29_15_fu_1382_p1;
wire   [0:0] icmp_ln29_31_fu_1410_p2;
wire   [0:0] icmp_ln29_30_fu_1404_p2;
wire   [0:0] or_ln29_15_fu_1416_p2;
wire   [0:0] or_ln29_14_fu_1398_p2;
wire   [0:0] and_ln29_14_fu_1422_p2;
wire   [0:0] and_ln29_15_fu_1428_p2;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_114 = 64'd0;
#0 prev_fu_118 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_114 <= min_p_6;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_114 <= min_p_23_fu_1433_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_118 <= 6'd1;
    end else if (((tmp_3_reg_1543 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_118 <= add_ln25_1_fu_708_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_348 <= transition_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_348 <= transition_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_1682 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_1687 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_1537 <= add_ln25_fu_485_p2;
        prev_1_reg_1478 <= ap_sig_allocacmp_prev_1;
        shl_ln2_reg_1518[11 : 6] <= shl_ln2_fu_435_p3[11 : 6];
        tmp_3_reg_1543 <= add_ln25_fu_485_p2[32'd6];
        tmp_3_reg_1543_pp0_iter1_reg <= tmp_3_reg_1543;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_1775 <= and_ln29_11_fu_1248_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_1787 <= and_ln29_13_fu_1338_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln29_1_reg_1699 <= and_ln29_1_fu_799_p2;
        llike_load_reg_1622 <= llike_q0;
        tmp_29_reg_1617 <= {{add_ln27_9_fu_635_p2[11:6]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_1711 <= and_ln29_3_fu_889_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_1723 <= and_ln29_5_fu_979_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_1751 <= and_ln29_7_fu_1068_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_1763 <= and_ln29_9_fu_1158_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_1734 <= icmp_ln29_14_fu_1010_p2;
        icmp_ln29_15_reg_1739 <= icmp_ln29_15_fu_1016_p2;
        min_p_13_reg_1728 <= min_p_13_fu_985_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_1547 <= llike_1_q0;
        llike_2_load_reg_1552 <= llike_2_q0;
        llike_3_load_reg_1557 <= llike_3_q0;
        llike_4_load_reg_1567 <= llike_4_q0;
        llike_5_load_reg_1577 <= llike_5_q0;
        llike_6_load_reg_1582 <= llike_6_q0;
        llike_7_load_reg_1587 <= llike_7_q0;
        min_p_7_reg_1692 <= min_p_fu_114;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_11_reg_1716 <= min_p_11_fu_895_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_15_reg_1756 <= min_p_15_fu_1074_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_17_reg_1768 <= min_p_17_fu_1164_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_19_reg_1780 <= min_p_19_fu_1254_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_21_reg_1792 <= min_p_21_fu_1344_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_9_reg_1704 <= min_p_9_fu_805_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_8_reg_1744 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_344 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_353 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_359 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_365 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_371 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_377 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_383 <= grp_fu_434_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_35_reg_1799 <= grp_fu_848_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        transition_load_3_reg_1602 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        transition_load_5_reg_1632 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        transition_load_7_reg_1652 <= transition_q0;
    end
end
always @ (*) begin
    if (((tmp_3_reg_1543 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_3_reg_1543_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_336_p0 = add52_7_reg_1687;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_336_p0 = reg_383;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_336_p0 = add52_5_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_336_p0 = reg_377;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_336_p0 = reg_371;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_336_p0 = reg_365;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_336_p0 = reg_359;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_336_p0 = reg_353;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_336_p0 = llike_load_reg_1622;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_336_p0 = llike_7_load_reg_1587;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_336_p0 = llike_6_load_reg_1582;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_336_p0 = llike_5_load_reg_1577;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_336_p0 = llike_4_load_reg_1567;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_336_p0 = llike_3_load_reg_1557;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_336_p0 = llike_2_load_reg_1552;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_336_p0 = llike_1_load_reg_1547;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_336_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_336_p1 = bitcast_ln27_7_fu_704_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_336_p1 = bitcast_ln27_6_fu_699_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_336_p1 = bitcast_ln27_5_fu_695_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_336_p1 = bitcast_ln27_4_fu_690_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_336_p1 = bitcast_ln27_3_fu_686_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_336_p1 = bitcast_ln27_2_fu_681_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_336_p1 = bitcast_ln27_1_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_336_p1 = bitcast_ln27_fu_576_p1;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_340_p0 = p_8_reg_1744;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_340_p0 = reg_383;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_340_p0 = reg_377;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_340_p0 = reg_371;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_340_p0 = reg_365;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_340_p0 = reg_359;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_340_p0 = reg_353;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_340_p1 = min_p_21_fu_1344_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_340_p1 = min_p_19_fu_1254_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_340_p1 = min_p_17_fu_1164_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_340_p1 = min_p_15_fu_1074_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_340_p1 = min_p_13_fu_985_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_340_p1 = min_p_11_fu_895_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_340_p1 = min_p_9_fu_805_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_340_p1 = min_p_fu_114;
        end else begin
            grp_fu_340_p1 = 'bx;
        end
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_3_reg_1543_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_22_out_ap_vld = 1'b1;
    end else begin
        min_p_22_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln27_7_fu_676_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln27_5_fu_630_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_548_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_480_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address1_local = zext_ln27_6_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln27_4_fu_603_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_521_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_451_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_708_p2 = (prev_1_reg_1478 + 6'd8);
assign add_ln25_fu_485_p2 = (zext_ln11_fu_402_p1 + 7'd7);
assign add_ln26_fu_566_p2 = (empty + zext_ln26_1_fu_562_p1);
assign add_ln27_10_fu_655_p3 = {{tmp_29_reg_1617}, {empty_10}};
assign add_ln27_11_fu_669_p3 = {{trunc_ln27_fu_666_p1}, {empty_10}};
assign add_ln27_1_fu_499_p2 = (shl_ln2_reg_1518 + 12'd128);
assign add_ln27_2_fu_472_p3 = {{tmp_9_fu_462_p4}, {empty_10}};
assign add_ln27_3_fu_526_p2 = (shl_ln2_reg_1518 + 12'd192);
assign add_ln27_4_fu_514_p3 = {{tmp_13_fu_504_p4}, {empty_10}};
assign add_ln27_5_fu_581_p2 = (shl_ln2_reg_1518 + 12'd256);
assign add_ln27_6_fu_541_p3 = {{tmp_17_fu_531_p4}, {empty_10}};
assign add_ln27_7_fu_608_p2 = (shl_ln2_reg_1518 + 12'd320);
assign add_ln27_8_fu_596_p3 = {{tmp_21_fu_586_p4}, {empty_10}};
assign add_ln27_9_fu_635_p2 = (shl_ln2_reg_1518 + 12'd384);
assign add_ln27_fu_456_p2 = (shl_ln2_fu_435_p3 + 12'd64);
assign add_ln27_s_fu_623_p3 = {{tmp_25_fu_613_p4}, {empty_10}};
assign add_ln_fu_443_p3 = {{ap_sig_allocacmp_prev_1}, {empty_10}};
assign and_ln29_10_fu_1242_p2 = (or_ln29_11_fu_1236_p2 & or_ln29_10_fu_1218_p2);
assign and_ln29_11_fu_1248_p2 = (grp_fu_848_p_dout0 & and_ln29_10_fu_1242_p2);
assign and_ln29_12_fu_1332_p2 = (or_ln29_13_fu_1326_p2 & or_ln29_12_fu_1308_p2);
assign and_ln29_13_fu_1338_p2 = (grp_fu_848_p_dout0 & and_ln29_12_fu_1332_p2);
assign and_ln29_14_fu_1422_p2 = (or_ln29_15_fu_1416_p2 & or_ln29_14_fu_1398_p2);
assign and_ln29_15_fu_1428_p2 = (tmp_35_reg_1799 & and_ln29_14_fu_1422_p2);
assign and_ln29_1_fu_799_p2 = (or_ln29_1_fu_787_p2 & and_ln29_fu_793_p2);
assign and_ln29_2_fu_883_p2 = (or_ln29_3_fu_877_p2 & or_ln29_2_fu_859_p2);
assign and_ln29_3_fu_889_p2 = (grp_fu_848_p_dout0 & and_ln29_2_fu_883_p2);
assign and_ln29_4_fu_973_p2 = (or_ln29_5_fu_967_p2 & or_ln29_4_fu_949_p2);
assign and_ln29_5_fu_979_p2 = (grp_fu_848_p_dout0 & and_ln29_4_fu_973_p2);
assign and_ln29_6_fu_1062_p2 = (or_ln29_7_fu_1058_p2 & or_ln29_6_fu_1052_p2);
assign and_ln29_7_fu_1068_p2 = (grp_fu_848_p_dout0 & and_ln29_6_fu_1062_p2);
assign and_ln29_8_fu_1152_p2 = (or_ln29_9_fu_1146_p2 & or_ln29_8_fu_1128_p2);
assign and_ln29_9_fu_1158_p2 = (grp_fu_848_p_dout0 & and_ln29_8_fu_1152_p2);
assign and_ln29_fu_793_p2 = (or_ln29_fu_769_p2 & grp_fu_848_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln27_1_fu_650_p1 = reg_348;
assign bitcast_ln27_2_fu_681_p1 = reg_344;
assign bitcast_ln27_3_fu_686_p1 = transition_load_3_reg_1602;
assign bitcast_ln27_4_fu_690_p1 = reg_348;
assign bitcast_ln27_5_fu_695_p1 = transition_load_5_reg_1632;
assign bitcast_ln27_6_fu_699_p1 = reg_344;
assign bitcast_ln27_7_fu_704_p1 = transition_load_7_reg_1652;
assign bitcast_ln27_fu_576_p1 = reg_344;
assign bitcast_ln29_10_fu_1171_p1 = reg_377;
assign bitcast_ln29_11_fu_1189_p1 = min_p_17_reg_1768;
assign bitcast_ln29_12_fu_1261_p1 = reg_383;
assign bitcast_ln29_13_fu_1279_p1 = min_p_19_reg_1780;
assign bitcast_ln29_14_fu_1352_p1 = p_8_reg_1744;
assign bitcast_ln29_15_fu_1369_p1 = min_p_21_reg_1792;
assign bitcast_ln29_1_fu_740_p1 = min_p_7_reg_1692;
assign bitcast_ln29_2_fu_812_p1 = reg_359;
assign bitcast_ln29_3_fu_830_p1 = min_p_9_reg_1704;
assign bitcast_ln29_4_fu_902_p1 = reg_365;
assign bitcast_ln29_5_fu_920_p1 = min_p_11_reg_1716;
assign bitcast_ln29_6_fu_1022_p1 = reg_353;
assign bitcast_ln29_7_fu_992_p1 = min_p_13_fu_985_p3;
assign bitcast_ln29_8_fu_1081_p1 = reg_371;
assign bitcast_ln29_9_fu_1099_p1 = min_p_15_reg_1756;
assign bitcast_ln29_fu_722_p1 = reg_353;
assign grp_fu_434_p_ce = 1'b1;
assign grp_fu_434_p_din0 = grp_fu_336_p0;
assign grp_fu_434_p_din1 = grp_fu_336_p1;
assign grp_fu_434_p_opcode = 2'd0;
assign grp_fu_848_p_ce = 1'b1;
assign grp_fu_848_p_din0 = grp_fu_340_p0;
assign grp_fu_848_p_din1 = grp_fu_340_p1;
assign grp_fu_848_p_opcode = 5'd4;
assign icmp_ln29_10_fu_955_p2 = ((tmp_15_fu_923_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_961_p2 = ((trunc_ln29_5_fu_933_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1040_p2 = ((tmp_18_fu_1026_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1046_p2 = ((trunc_ln29_6_fu_1036_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1010_p2 = ((tmp_19_fu_996_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1016_p2 = ((trunc_ln29_7_fu_1006_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1116_p2 = ((tmp_22_fu_1085_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1122_p2 = ((trunc_ln29_8_fu_1095_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1134_p2 = ((tmp_23_fu_1102_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1140_p2 = ((trunc_ln29_9_fu_1112_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_763_p2 = ((trunc_ln29_fu_736_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1206_p2 = ((tmp_26_fu_1175_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1212_p2 = ((trunc_ln29_10_fu_1185_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1224_p2 = ((tmp_27_fu_1192_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1230_p2 = ((trunc_ln29_11_fu_1202_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1296_p2 = ((tmp_30_fu_1265_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1302_p2 = ((trunc_ln29_12_fu_1275_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1314_p2 = ((tmp_31_fu_1282_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1320_p2 = ((trunc_ln29_13_fu_1292_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1386_p2 = ((tmp_33_fu_1355_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1392_p2 = ((trunc_ln29_14_fu_1365_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_775_p2 = ((tmp_7_fu_743_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1404_p2 = ((tmp_34_fu_1372_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1410_p2 = ((trunc_ln29_15_fu_1382_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_781_p2 = ((trunc_ln29_1_fu_753_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_847_p2 = ((tmp_10_fu_816_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_853_p2 = ((trunc_ln29_2_fu_826_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_865_p2 = ((tmp_11_fu_833_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_871_p2 = ((trunc_ln29_3_fu_843_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_937_p2 = ((tmp_14_fu_906_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_943_p2 = ((trunc_ln29_4_fu_916_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_757_p2 = ((tmp_6_fu_726_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_fu_424_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln26_fu_424_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln26_fu_424_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln26_fu_424_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln26_fu_424_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln26_fu_424_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln26_fu_424_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = zext_ln26_2_fu_571_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_406_p4 = {{ap_sig_allocacmp_prev_1[5:3]}};
assign lshr_ln8_1_fu_553_p4 = {{add_ln25_reg_1537[6:3]}};
assign min_p_11_fu_895_p3 = ((and_ln29_3_reg_1711[0:0] == 1'b1) ? reg_359 : min_p_9_reg_1704);
assign min_p_13_fu_985_p3 = ((and_ln29_5_reg_1723[0:0] == 1'b1) ? reg_365 : min_p_11_reg_1716);
assign min_p_15_fu_1074_p3 = ((and_ln29_7_reg_1751[0:0] == 1'b1) ? reg_353 : min_p_13_reg_1728);
assign min_p_17_fu_1164_p3 = ((and_ln29_9_reg_1763[0:0] == 1'b1) ? reg_371 : min_p_15_reg_1756);
assign min_p_19_fu_1254_p3 = ((and_ln29_11_reg_1775[0:0] == 1'b1) ? reg_377 : min_p_17_reg_1768);
assign min_p_21_fu_1344_p3 = ((and_ln29_13_reg_1787[0:0] == 1'b1) ? reg_383 : min_p_19_reg_1780);
assign min_p_22_out = ((and_ln29_13_reg_1787[0:0] == 1'b1) ? reg_383 : min_p_19_reg_1780);
assign min_p_23_fu_1433_p3 = ((and_ln29_15_fu_1428_p2[0:0] == 1'b1) ? p_8_reg_1744 : min_p_21_reg_1792);
assign min_p_9_fu_805_p3 = ((and_ln29_1_reg_1699[0:0] == 1'b1) ? reg_353 : min_p_7_reg_1692);
assign or_ln29_10_fu_1218_p2 = (icmp_ln29_21_fu_1212_p2 | icmp_ln29_20_fu_1206_p2);
assign or_ln29_11_fu_1236_p2 = (icmp_ln29_23_fu_1230_p2 | icmp_ln29_22_fu_1224_p2);
assign or_ln29_12_fu_1308_p2 = (icmp_ln29_25_fu_1302_p2 | icmp_ln29_24_fu_1296_p2);
assign or_ln29_13_fu_1326_p2 = (icmp_ln29_27_fu_1320_p2 | icmp_ln29_26_fu_1314_p2);
assign or_ln29_14_fu_1398_p2 = (icmp_ln29_29_fu_1392_p2 | icmp_ln29_28_fu_1386_p2);
assign or_ln29_15_fu_1416_p2 = (icmp_ln29_31_fu_1410_p2 | icmp_ln29_30_fu_1404_p2);
assign or_ln29_1_fu_787_p2 = (icmp_ln29_3_fu_781_p2 | icmp_ln29_2_fu_775_p2);
assign or_ln29_2_fu_859_p2 = (icmp_ln29_5_fu_853_p2 | icmp_ln29_4_fu_847_p2);
assign or_ln29_3_fu_877_p2 = (icmp_ln29_7_fu_871_p2 | icmp_ln29_6_fu_865_p2);
assign or_ln29_4_fu_949_p2 = (icmp_ln29_9_fu_943_p2 | icmp_ln29_8_fu_937_p2);
assign or_ln29_5_fu_967_p2 = (icmp_ln29_11_fu_961_p2 | icmp_ln29_10_fu_955_p2);
assign or_ln29_6_fu_1052_p2 = (icmp_ln29_13_fu_1046_p2 | icmp_ln29_12_fu_1040_p2);
assign or_ln29_7_fu_1058_p2 = (icmp_ln29_15_reg_1739 | icmp_ln29_14_reg_1734);
assign or_ln29_8_fu_1128_p2 = (icmp_ln29_17_fu_1122_p2 | icmp_ln29_16_fu_1116_p2);
assign or_ln29_9_fu_1146_p2 = (icmp_ln29_19_fu_1140_p2 | icmp_ln29_18_fu_1134_p2);
assign or_ln29_fu_769_p2 = (icmp_ln29_fu_757_p2 | icmp_ln29_1_fu_763_p2);
assign shl_ln2_fu_435_p3 = {{ap_sig_allocacmp_prev_1}, {6'd0}};
assign tmp_10_fu_816_p4 = {{bitcast_ln29_2_fu_812_p1[62:52]}};
assign tmp_11_fu_833_p4 = {{bitcast_ln29_3_fu_830_p1[62:52]}};
assign tmp_13_fu_504_p4 = {{add_ln27_1_fu_499_p2[11:6]}};
assign tmp_14_fu_906_p4 = {{bitcast_ln29_4_fu_902_p1[62:52]}};
assign tmp_15_fu_923_p4 = {{bitcast_ln29_5_fu_920_p1[62:52]}};
assign tmp_17_fu_531_p4 = {{add_ln27_3_fu_526_p2[11:6]}};
assign tmp_18_fu_1026_p4 = {{bitcast_ln29_6_fu_1022_p1[62:52]}};
assign tmp_19_fu_996_p4 = {{bitcast_ln29_7_fu_992_p1[62:52]}};
assign tmp_21_fu_586_p4 = {{add_ln27_5_fu_581_p2[11:6]}};
assign tmp_22_fu_1085_p4 = {{bitcast_ln29_8_fu_1081_p1[62:52]}};
assign tmp_23_fu_1102_p4 = {{bitcast_ln29_9_fu_1099_p1[62:52]}};
assign tmp_25_fu_613_p4 = {{add_ln27_7_fu_608_p2[11:6]}};
assign tmp_26_fu_1175_p4 = {{bitcast_ln29_10_fu_1171_p1[62:52]}};
assign tmp_27_fu_1192_p4 = {{bitcast_ln29_11_fu_1189_p1[62:52]}};
assign tmp_30_fu_1265_p4 = {{bitcast_ln29_12_fu_1261_p1[62:52]}};
assign tmp_31_fu_1282_p4 = {{bitcast_ln29_13_fu_1279_p1[62:52]}};
assign tmp_33_fu_1355_p4 = {{bitcast_ln29_14_fu_1352_p1[62:52]}};
assign tmp_34_fu_1372_p4 = {{bitcast_ln29_15_fu_1369_p1[62:52]}};
assign tmp_6_fu_726_p4 = {{bitcast_ln29_fu_722_p1[62:52]}};
assign tmp_7_fu_743_p4 = {{bitcast_ln29_1_fu_740_p1[62:52]}};
assign tmp_8_fu_416_p3 = {{empty_9}, {lshr_ln7_1_fu_406_p4}};
assign tmp_9_fu_462_p4 = {{add_ln27_fu_456_p2[11:6]}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln27_fu_666_p1 = add_ln25_reg_1537[5:0];
assign trunc_ln29_10_fu_1185_p1 = bitcast_ln29_10_fu_1171_p1[51:0];
assign trunc_ln29_11_fu_1202_p1 = bitcast_ln29_11_fu_1189_p1[51:0];
assign trunc_ln29_12_fu_1275_p1 = bitcast_ln29_12_fu_1261_p1[51:0];
assign trunc_ln29_13_fu_1292_p1 = bitcast_ln29_13_fu_1279_p1[51:0];
assign trunc_ln29_14_fu_1365_p1 = bitcast_ln29_14_fu_1352_p1[51:0];
assign trunc_ln29_15_fu_1382_p1 = bitcast_ln29_15_fu_1369_p1[51:0];
assign trunc_ln29_1_fu_753_p1 = bitcast_ln29_1_fu_740_p1[51:0];
assign trunc_ln29_2_fu_826_p1 = bitcast_ln29_2_fu_812_p1[51:0];
assign trunc_ln29_3_fu_843_p1 = bitcast_ln29_3_fu_830_p1[51:0];
assign trunc_ln29_4_fu_916_p1 = bitcast_ln29_4_fu_902_p1[51:0];
assign trunc_ln29_5_fu_933_p1 = bitcast_ln29_5_fu_920_p1[51:0];
assign trunc_ln29_6_fu_1036_p1 = bitcast_ln29_6_fu_1022_p1[51:0];
assign trunc_ln29_7_fu_1006_p1 = bitcast_ln29_7_fu_992_p1[51:0];
assign trunc_ln29_8_fu_1095_p1 = bitcast_ln29_8_fu_1081_p1[51:0];
assign trunc_ln29_9_fu_1112_p1 = bitcast_ln29_9_fu_1099_p1[51:0];
assign trunc_ln29_fu_736_p1 = bitcast_ln29_fu_722_p1[51:0];
assign zext_ln11_fu_402_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_562_p1 = lshr_ln8_1_fu_553_p4;
assign zext_ln26_2_fu_571_p1 = add_ln26_fu_566_p2;
assign zext_ln26_fu_424_p1 = tmp_8_fu_416_p3;
assign zext_ln27_1_fu_480_p1 = add_ln27_2_fu_472_p3;
assign zext_ln27_2_fu_521_p1 = add_ln27_4_fu_514_p3;
assign zext_ln27_3_fu_548_p1 = add_ln27_6_fu_541_p3;
assign zext_ln27_4_fu_603_p1 = add_ln27_8_fu_596_p3;
assign zext_ln27_5_fu_630_p1 = add_ln27_s_fu_623_p3;
assign zext_ln27_6_fu_661_p1 = add_ln27_10_fu_655_p3;
assign zext_ln27_7_fu_676_p1 = add_ln27_11_fu_669_p3;
assign zext_ln27_fu_451_p1 = add_ln_fu_443_p3;
always @ (posedge ap_clk) begin
    shl_ln2_reg_1518[5:0] <= 6'b000000;
end
endmodule 