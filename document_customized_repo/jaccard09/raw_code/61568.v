module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_4,empty_8,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty_9,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,empty,min_p_145_out,min_p_145_out_ap_vld,grp_fu_227_p_din0,grp_fu_227_p_din1,grp_fu_227_p_opcode,grp_fu_227_p_dout0,grp_fu_227_p_ce,grp_fu_496_p_din0,grp_fu_496_p_din1,grp_fu_496_p_opcode,grp_fu_496_p_dout0,grp_fu_496_p_ce); 
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
input  [63:0] min_p_4;
input  [7:0] empty_8;
output  [13:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [13:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [5:0] empty_9;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
input  [13:0] empty;
output  [63:0] min_p_145_out;
output   min_p_145_out_ap_vld;
output  [63:0] grp_fu_227_p_din0;
output  [63:0] grp_fu_227_p_din1;
output  [1:0] grp_fu_227_p_opcode;
input  [63:0] grp_fu_227_p_dout0;
output   grp_fu_227_p_ce;
output  [63:0] grp_fu_496_p_din0;
output  [63:0] grp_fu_496_p_din1;
output  [4:0] grp_fu_496_p_opcode;
input  [0:0] grp_fu_496_p_dout0;
output   grp_fu_496_p_ce;
reg ap_idle;
reg min_p_145_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_30_reg_1512;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_283;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] reg_287;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_292;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_298;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_304;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_310;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_316;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_322;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_1405;
reg   [63:0] llike_load_reg_1436;
reg   [63:0] llike_load_1_reg_1441;
wire   [63:0] bitcast_ln27_fu_460_p1;
reg   [63:0] llike_load_2_reg_1471;
reg   [63:0] llike_load_3_reg_1476;
reg   [63:0] transition_load_3_reg_1481;
wire   [6:0] add_ln25_6_fu_523_p2;
reg   [6:0] add_ln25_6_reg_1506;
reg   [0:0] tmp_30_reg_1512_pp0_iter1_reg;
wire   [63:0] bitcast_ln27_1_fu_537_p1;
reg   [63:0] llike_load_4_reg_1521;
reg   [63:0] llike_load_5_reg_1526;
reg   [63:0] transition_load_5_reg_1531;
wire   [63:0] bitcast_ln27_2_fu_599_p1;
reg   [63:0] llike_load_6_reg_1561;
reg   [63:0] llike_load_7_reg_1566;
reg   [63:0] transition_load_7_reg_1571;
wire   [63:0] bitcast_ln27_3_fu_604_p1;
wire   [63:0] bitcast_ln27_4_fu_608_p1;
wire   [63:0] bitcast_ln27_5_fu_613_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_617_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_622_p1;
reg   [63:0] add52_5_reg_1601;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_1606;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_1_reg_1611;
wire   [0:0] and_ln29_1_fu_717_p2;
reg   [0:0] and_ln29_1_reg_1618;
wire   [63:0] min_p_3_fu_723_p3;
reg   [63:0] min_p_3_reg_1623;
wire   [0:0] and_ln29_3_fu_807_p2;
reg   [0:0] and_ln29_3_reg_1630;
wire   [63:0] min_p_6_fu_813_p3;
reg   [63:0] min_p_6_reg_1635;
wire   [0:0] and_ln29_5_fu_897_p2;
reg   [0:0] and_ln29_5_reg_1642;
wire   [63:0] min_p_8_fu_903_p3;
reg   [63:0] min_p_8_reg_1647;
wire   [0:0] icmp_ln29_14_fu_928_p2;
reg   [0:0] icmp_ln29_14_reg_1653;
wire   [0:0] icmp_ln29_15_fu_934_p2;
reg   [0:0] icmp_ln29_15_reg_1658;
reg   [63:0] p_7_reg_1663;
wire   [0:0] and_ln29_7_fu_986_p2;
reg   [0:0] and_ln29_7_reg_1670;
wire   [63:0] min_p_10_fu_992_p3;
reg   [63:0] min_p_10_reg_1675;
wire   [0:0] and_ln29_9_fu_1076_p2;
reg   [0:0] and_ln29_9_reg_1682;
wire   [63:0] min_p_12_fu_1082_p3;
reg   [63:0] min_p_12_reg_1687;
wire   [0:0] and_ln29_11_fu_1166_p2;
reg   [0:0] and_ln29_11_reg_1694;
wire   [63:0] min_p_14_fu_1172_p3;
reg   [63:0] min_p_14_reg_1699;
wire   [0:0] and_ln29_13_fu_1256_p2;
reg   [0:0] and_ln29_13_reg_1706;
wire   [63:0] min_p_16_fu_1262_p3;
reg   [63:0] min_p_16_reg_1711;
reg   [0:0] tmp_33_reg_1718;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_349_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_362_p1;
wire   [63:0] zext_ln26_1_fu_381_p1;
wire   [63:0] zext_ln27_1_fu_394_p1;
wire   [63:0] zext_ln26_2_fu_411_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_2_fu_423_p1;
wire   [63:0] zext_ln26_3_fu_440_p1;
wire   [63:0] zext_ln27_3_fu_452_p1;
wire   [63:0] zext_ln26_4_fu_477_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_4_fu_489_p1;
wire   [63:0] zext_ln26_5_fu_506_p1;
wire   [63:0] zext_ln27_5_fu_518_p1;
wire   [63:0] zext_ln26_6_fu_554_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_6_fu_566_p1;
wire   [63:0] zext_ln26_8_fu_579_p1;
wire   [63:0] zext_ln27_7_fu_594_p1;
reg   [63:0] min_p_fu_84;
wire   [63:0] min_p_18_fu_1351_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_88;
wire   [5:0] add_ln25_7_fu_626_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg   [63:0] grp_fu_275_p0;
reg   [63:0] grp_fu_275_p1;
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
reg   [63:0] grp_fu_279_p0;
reg   [63:0] grp_fu_279_p1;
wire   [13:0] tmp_23_fu_341_p3;
wire   [11:0] add_ln_fu_354_p3;
wire   [5:0] add_ln25_fu_367_p2;
wire   [13:0] tmp_24_fu_373_p3;
wire   [11:0] add_ln27_1_fu_386_p3;
wire   [5:0] add_ln25_1_fu_399_p2;
wire   [13:0] tmp_25_fu_404_p3;
wire   [11:0] add_ln27_2_fu_416_p3;
wire   [5:0] add_ln25_2_fu_428_p2;
wire   [13:0] tmp_26_fu_433_p3;
wire   [11:0] add_ln27_3_fu_445_p3;
wire   [5:0] add_ln25_3_fu_465_p2;
wire   [13:0] tmp_27_fu_470_p3;
wire   [11:0] add_ln27_4_fu_482_p3;
wire   [5:0] add_ln25_4_fu_494_p2;
wire   [13:0] tmp_28_fu_499_p3;
wire   [11:0] add_ln27_5_fu_511_p3;
wire   [6:0] zext_ln10_fu_457_p1;
wire   [5:0] add_ln25_5_fu_542_p2;
wire   [13:0] tmp_29_fu_547_p3;
wire   [11:0] add_ln27_6_fu_559_p3;
wire   [13:0] zext_ln26_7_fu_571_p1;
wire   [13:0] add_ln26_fu_574_p2;
wire   [5:0] trunc_ln27_fu_584_p1;
wire   [11:0] add_ln27_7_fu_587_p3;
wire   [63:0] bitcast_ln29_fu_640_p1;
wire   [63:0] bitcast_ln29_1_fu_658_p1;
wire   [10:0] tmp_3_fu_644_p4;
wire   [51:0] trunc_ln29_fu_654_p1;
wire   [0:0] icmp_ln29_1_fu_681_p2;
wire   [0:0] icmp_ln29_fu_675_p2;
wire   [10:0] tmp_4_fu_661_p4;
wire   [51:0] trunc_ln29_1_fu_671_p1;
wire   [0:0] icmp_ln29_3_fu_699_p2;
wire   [0:0] icmp_ln29_2_fu_693_p2;
wire   [0:0] or_ln29_fu_687_p2;
wire   [0:0] and_ln29_fu_711_p2;
wire   [0:0] or_ln29_1_fu_705_p2;
wire   [63:0] bitcast_ln29_2_fu_730_p1;
wire   [63:0] bitcast_ln29_3_fu_748_p1;
wire   [10:0] tmp_6_fu_734_p4;
wire   [51:0] trunc_ln29_2_fu_744_p1;
wire   [0:0] icmp_ln29_5_fu_771_p2;
wire   [0:0] icmp_ln29_4_fu_765_p2;
wire   [10:0] tmp_7_fu_751_p4;
wire   [51:0] trunc_ln29_3_fu_761_p1;
wire   [0:0] icmp_ln29_7_fu_789_p2;
wire   [0:0] icmp_ln29_6_fu_783_p2;
wire   [0:0] or_ln29_3_fu_795_p2;
wire   [0:0] or_ln29_2_fu_777_p2;
wire   [0:0] and_ln29_2_fu_801_p2;
wire   [63:0] bitcast_ln29_4_fu_820_p1;
wire   [63:0] bitcast_ln29_5_fu_838_p1;
wire   [10:0] tmp_9_fu_824_p4;
wire   [51:0] trunc_ln29_4_fu_834_p1;
wire   [0:0] icmp_ln29_9_fu_861_p2;
wire   [0:0] icmp_ln29_8_fu_855_p2;
wire   [10:0] tmp_s_fu_841_p4;
wire   [51:0] trunc_ln29_5_fu_851_p1;
wire   [0:0] icmp_ln29_11_fu_879_p2;
wire   [0:0] icmp_ln29_10_fu_873_p2;
wire   [0:0] or_ln29_5_fu_885_p2;
wire   [0:0] or_ln29_4_fu_867_p2;
wire   [0:0] and_ln29_4_fu_891_p2;
wire   [63:0] bitcast_ln29_7_fu_910_p1;
wire   [10:0] tmp_12_fu_914_p4;
wire   [51:0] trunc_ln29_7_fu_924_p1;
wire   [63:0] bitcast_ln29_6_fu_940_p1;
wire   [10:0] tmp_11_fu_944_p4;
wire   [51:0] trunc_ln29_6_fu_954_p1;
wire   [0:0] icmp_ln29_13_fu_964_p2;
wire   [0:0] icmp_ln29_12_fu_958_p2;
wire   [0:0] or_ln29_7_fu_976_p2;
wire   [0:0] or_ln29_6_fu_970_p2;
wire   [0:0] and_ln29_6_fu_980_p2;
wire   [63:0] bitcast_ln29_8_fu_999_p1;
wire   [63:0] bitcast_ln29_9_fu_1017_p1;
wire   [10:0] tmp_14_fu_1003_p4;
wire   [51:0] trunc_ln29_8_fu_1013_p1;
wire   [0:0] icmp_ln29_17_fu_1040_p2;
wire   [0:0] icmp_ln29_16_fu_1034_p2;
wire   [10:0] tmp_15_fu_1020_p4;
wire   [51:0] trunc_ln29_9_fu_1030_p1;
wire   [0:0] icmp_ln29_19_fu_1058_p2;
wire   [0:0] icmp_ln29_18_fu_1052_p2;
wire   [0:0] or_ln29_9_fu_1064_p2;
wire   [0:0] or_ln29_8_fu_1046_p2;
wire   [0:0] and_ln29_8_fu_1070_p2;
wire   [63:0] bitcast_ln29_10_fu_1089_p1;
wire   [63:0] bitcast_ln29_11_fu_1107_p1;
wire   [10:0] tmp_17_fu_1093_p4;
wire   [51:0] trunc_ln29_10_fu_1103_p1;
wire   [0:0] icmp_ln29_21_fu_1130_p2;
wire   [0:0] icmp_ln29_20_fu_1124_p2;
wire   [10:0] tmp_18_fu_1110_p4;
wire   [51:0] trunc_ln29_11_fu_1120_p1;
wire   [0:0] icmp_ln29_23_fu_1148_p2;
wire   [0:0] icmp_ln29_22_fu_1142_p2;
wire   [0:0] or_ln29_11_fu_1154_p2;
wire   [0:0] or_ln29_10_fu_1136_p2;
wire   [0:0] and_ln29_10_fu_1160_p2;
wire   [63:0] bitcast_ln29_12_fu_1179_p1;
wire   [63:0] bitcast_ln29_13_fu_1197_p1;
wire   [10:0] tmp_20_fu_1183_p4;
wire   [51:0] trunc_ln29_12_fu_1193_p1;
wire   [0:0] icmp_ln29_25_fu_1220_p2;
wire   [0:0] icmp_ln29_24_fu_1214_p2;
wire   [10:0] tmp_21_fu_1200_p4;
wire   [51:0] trunc_ln29_13_fu_1210_p1;
wire   [0:0] icmp_ln29_27_fu_1238_p2;
wire   [0:0] icmp_ln29_26_fu_1232_p2;
wire   [0:0] or_ln29_13_fu_1244_p2;
wire   [0:0] or_ln29_12_fu_1226_p2;
wire   [0:0] and_ln29_12_fu_1250_p2;
wire   [63:0] bitcast_ln29_14_fu_1270_p1;
wire   [63:0] bitcast_ln29_15_fu_1287_p1;
wire   [10:0] tmp_31_fu_1273_p4;
wire   [51:0] trunc_ln29_14_fu_1283_p1;
wire   [0:0] icmp_ln29_29_fu_1310_p2;
wire   [0:0] icmp_ln29_28_fu_1304_p2;
wire   [10:0] tmp_32_fu_1290_p4;
wire   [51:0] trunc_ln29_15_fu_1300_p1;
wire   [0:0] icmp_ln29_31_fu_1328_p2;
wire   [0:0] icmp_ln29_30_fu_1322_p2;
wire   [0:0] or_ln29_15_fu_1334_p2;
wire   [0:0] or_ln29_14_fu_1316_p2;
wire   [0:0] and_ln29_14_fu_1340_p2;
wire   [0:0] and_ln29_15_fu_1346_p2;
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
#0 min_p_fu_84 = 64'd0;
#0 prev_fu_88 = 6'd0;
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
            min_p_fu_84 <= min_p_4;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_84 <= min_p_18_fu_1351_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_88 <= 6'd1;
    end else if (((tmp_30_reg_1512 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_88 <= add_ln25_7_fu_626_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_287 <= transition_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_287 <= transition_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_1601 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_1606 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln25_6_reg_1506 <= add_ln25_6_fu_523_p2;
        and_ln29_1_reg_1618 <= and_ln29_1_fu_717_p2;
        tmp_30_reg_1512 <= add_ln25_6_fu_523_p2[32'd6];
        tmp_30_reg_1512_pp0_iter1_reg <= tmp_30_reg_1512;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_1694 <= and_ln29_11_fu_1166_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_1706 <= and_ln29_13_fu_1256_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_1630 <= and_ln29_3_fu_807_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_1642 <= and_ln29_5_fu_897_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_1670 <= and_ln29_7_fu_986_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_1682 <= and_ln29_9_fu_1076_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_1653 <= icmp_ln29_14_fu_928_p2;
        icmp_ln29_15_reg_1658 <= icmp_ln29_15_fu_934_p2;
        min_p_8_reg_1647 <= min_p_8_fu_903_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_1_reg_1441 <= llike_q0;
        llike_load_reg_1436 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_2_reg_1471 <= llike_q1;
        llike_load_3_reg_1476 <= llike_q0;
        transition_load_3_reg_1481 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_load_4_reg_1521 <= llike_q1;
        llike_load_5_reg_1526 <= llike_q0;
        transition_load_5_reg_1531 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_load_6_reg_1561 <= llike_q1;
        llike_load_7_reg_1566 <= llike_q0;
        transition_load_7_reg_1571 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_10_reg_1675 <= min_p_10_fu_992_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_12_reg_1687 <= min_p_12_fu_1082_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_14_reg_1699 <= min_p_14_fu_1172_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_16_reg_1711 <= min_p_16_fu_1262_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_1611 <= min_p_fu_84;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1623 <= min_p_3_fu_723_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_6_reg_1635 <= min_p_6_fu_813_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_7_reg_1663 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_1_reg_1405 <= ap_sig_allocacmp_prev_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_283 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_292 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_298 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_304 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_310 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_316 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_322 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_33_reg_1718 <= grp_fu_496_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_30_reg_1512 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_1512_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_275_p0 = add52_7_reg_1606;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_275_p0 = reg_322;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_275_p0 = add52_5_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_275_p0 = reg_316;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_275_p0 = reg_310;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_275_p0 = reg_304;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_275_p0 = reg_298;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_275_p0 = reg_292;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_275_p0 = llike_load_7_reg_1566;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_275_p0 = llike_load_6_reg_1561;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_275_p0 = llike_load_5_reg_1526;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_275_p0 = llike_load_4_reg_1521;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_275_p0 = llike_load_3_reg_1476;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_275_p0 = llike_load_2_reg_1471;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = llike_load_1_reg_1441;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p0 = llike_load_reg_1436;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_275_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_275_p1 = bitcast_ln27_7_fu_622_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_275_p1 = bitcast_ln27_6_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_275_p1 = bitcast_ln27_5_fu_613_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_275_p1 = bitcast_ln27_4_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_275_p1 = bitcast_ln27_3_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_275_p1 = bitcast_ln27_2_fu_599_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p1 = bitcast_ln27_1_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_275_p1 = bitcast_ln27_fu_460_p1;
    end else begin
        grp_fu_275_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_279_p0 = p_7_reg_1663;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_279_p0 = reg_322;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_279_p0 = reg_316;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_279_p0 = reg_310;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_279_p0 = reg_304;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_279_p0 = reg_298;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_279_p0 = reg_292;
    end else begin
        grp_fu_279_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_279_p1 = min_p_16_fu_1262_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_279_p1 = min_p_14_fu_1172_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_279_p1 = min_p_12_fu_1082_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_279_p1 = min_p_10_fu_992_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_279_p1 = min_p_8_fu_903_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_279_p1 = min_p_6_fu_813_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_279_p1 = min_p_3_fu_723_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_279_p1 = min_p_fu_84;
        end else begin
            grp_fu_279_p1 = 'bx;
        end
    end else begin
        grp_fu_279_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_address0_local = zext_ln26_8_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address0_local = zext_ln26_5_fu_506_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_3_fu_440_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_381_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_address1_local = zext_ln26_6_fu_554_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address1_local = zext_ln26_4_fu_477_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln26_2_fu_411_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_fu_349_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_30_reg_1512_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_145_out_ap_vld = 1'b1;
    end else begin
        min_p_145_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_address0_local = zext_ln27_7_fu_594_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address0_local = zext_ln27_5_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_452_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_394_p1;
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
            transition_address1_local = zext_ln27_6_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_address1_local = zext_ln27_4_fu_489_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_423_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_362_p1;
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
assign add_ln25_1_fu_399_p2 = (prev_1_reg_1405 + 6'd2);
assign add_ln25_2_fu_428_p2 = (prev_1_reg_1405 + 6'd3);
assign add_ln25_3_fu_465_p2 = (prev_1_reg_1405 + 6'd4);
assign add_ln25_4_fu_494_p2 = (prev_1_reg_1405 + 6'd5);
assign add_ln25_5_fu_542_p2 = (prev_1_reg_1405 + 6'd6);
assign add_ln25_6_fu_523_p2 = (zext_ln10_fu_457_p1 + 7'd7);
assign add_ln25_7_fu_626_p2 = (prev_1_reg_1405 + 6'd8);
assign add_ln25_fu_367_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_574_p2 = (empty + zext_ln26_7_fu_571_p1);
assign add_ln27_1_fu_386_p3 = {{add_ln25_fu_367_p2}, {empty_9}};
assign add_ln27_2_fu_416_p3 = {{add_ln25_1_fu_399_p2}, {empty_9}};
assign add_ln27_3_fu_445_p3 = {{add_ln25_2_fu_428_p2}, {empty_9}};
assign add_ln27_4_fu_482_p3 = {{add_ln25_3_fu_465_p2}, {empty_9}};
assign add_ln27_5_fu_511_p3 = {{add_ln25_4_fu_494_p2}, {empty_9}};
assign add_ln27_6_fu_559_p3 = {{add_ln25_5_fu_542_p2}, {empty_9}};
assign add_ln27_7_fu_587_p3 = {{trunc_ln27_fu_584_p1}, {empty_9}};
assign add_ln_fu_354_p3 = {{ap_sig_allocacmp_prev_1}, {empty_9}};
assign and_ln29_10_fu_1160_p2 = (or_ln29_11_fu_1154_p2 & or_ln29_10_fu_1136_p2);
assign and_ln29_11_fu_1166_p2 = (grp_fu_496_p_dout0 & and_ln29_10_fu_1160_p2);
assign and_ln29_12_fu_1250_p2 = (or_ln29_13_fu_1244_p2 & or_ln29_12_fu_1226_p2);
assign and_ln29_13_fu_1256_p2 = (grp_fu_496_p_dout0 & and_ln29_12_fu_1250_p2);
assign and_ln29_14_fu_1340_p2 = (or_ln29_15_fu_1334_p2 & or_ln29_14_fu_1316_p2);
assign and_ln29_15_fu_1346_p2 = (tmp_33_reg_1718 & and_ln29_14_fu_1340_p2);
assign and_ln29_1_fu_717_p2 = (or_ln29_1_fu_705_p2 & and_ln29_fu_711_p2);
assign and_ln29_2_fu_801_p2 = (or_ln29_3_fu_795_p2 & or_ln29_2_fu_777_p2);
assign and_ln29_3_fu_807_p2 = (grp_fu_496_p_dout0 & and_ln29_2_fu_801_p2);
assign and_ln29_4_fu_891_p2 = (or_ln29_5_fu_885_p2 & or_ln29_4_fu_867_p2);
assign and_ln29_5_fu_897_p2 = (grp_fu_496_p_dout0 & and_ln29_4_fu_891_p2);
assign and_ln29_6_fu_980_p2 = (or_ln29_7_fu_976_p2 & or_ln29_6_fu_970_p2);
assign and_ln29_7_fu_986_p2 = (grp_fu_496_p_dout0 & and_ln29_6_fu_980_p2);
assign and_ln29_8_fu_1070_p2 = (or_ln29_9_fu_1064_p2 & or_ln29_8_fu_1046_p2);
assign and_ln29_9_fu_1076_p2 = (grp_fu_496_p_dout0 & and_ln29_8_fu_1070_p2);
assign and_ln29_fu_711_p2 = (or_ln29_fu_687_p2 & grp_fu_496_p_dout0);
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
assign bitcast_ln27_1_fu_537_p1 = reg_287;
assign bitcast_ln27_2_fu_599_p1 = reg_283;
assign bitcast_ln27_3_fu_604_p1 = transition_load_3_reg_1481;
assign bitcast_ln27_4_fu_608_p1 = reg_287;
assign bitcast_ln27_5_fu_613_p1 = transition_load_5_reg_1531;
assign bitcast_ln27_6_fu_617_p1 = reg_283;
assign bitcast_ln27_7_fu_622_p1 = transition_load_7_reg_1571;
assign bitcast_ln27_fu_460_p1 = reg_283;
assign bitcast_ln29_10_fu_1089_p1 = reg_316;
assign bitcast_ln29_11_fu_1107_p1 = min_p_12_reg_1687;
assign bitcast_ln29_12_fu_1179_p1 = reg_322;
assign bitcast_ln29_13_fu_1197_p1 = min_p_14_reg_1699;
assign bitcast_ln29_14_fu_1270_p1 = p_7_reg_1663;
assign bitcast_ln29_15_fu_1287_p1 = min_p_16_reg_1711;
assign bitcast_ln29_1_fu_658_p1 = min_p_1_reg_1611;
assign bitcast_ln29_2_fu_730_p1 = reg_298;
assign bitcast_ln29_3_fu_748_p1 = min_p_3_reg_1623;
assign bitcast_ln29_4_fu_820_p1 = reg_304;
assign bitcast_ln29_5_fu_838_p1 = min_p_6_reg_1635;
assign bitcast_ln29_6_fu_940_p1 = reg_292;
assign bitcast_ln29_7_fu_910_p1 = min_p_8_fu_903_p3;
assign bitcast_ln29_8_fu_999_p1 = reg_310;
assign bitcast_ln29_9_fu_1017_p1 = min_p_10_reg_1675;
assign bitcast_ln29_fu_640_p1 = reg_292;
assign grp_fu_227_p_ce = 1'b1;
assign grp_fu_227_p_din0 = grp_fu_275_p0;
assign grp_fu_227_p_din1 = grp_fu_275_p1;
assign grp_fu_227_p_opcode = 2'd0;
assign grp_fu_496_p_ce = 1'b1;
assign grp_fu_496_p_din0 = grp_fu_279_p0;
assign grp_fu_496_p_din1 = grp_fu_279_p1;
assign grp_fu_496_p_opcode = 5'd4;
assign icmp_ln29_10_fu_873_p2 = ((tmp_s_fu_841_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_879_p2 = ((trunc_ln29_5_fu_851_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_958_p2 = ((tmp_11_fu_944_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_964_p2 = ((trunc_ln29_6_fu_954_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_928_p2 = ((tmp_12_fu_914_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_934_p2 = ((trunc_ln29_7_fu_924_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1034_p2 = ((tmp_14_fu_1003_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1040_p2 = ((trunc_ln29_8_fu_1013_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1052_p2 = ((tmp_15_fu_1020_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1058_p2 = ((trunc_ln29_9_fu_1030_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_681_p2 = ((trunc_ln29_fu_654_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1124_p2 = ((tmp_17_fu_1093_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1130_p2 = ((trunc_ln29_10_fu_1103_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1142_p2 = ((tmp_18_fu_1110_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1148_p2 = ((trunc_ln29_11_fu_1120_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1214_p2 = ((tmp_20_fu_1183_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1220_p2 = ((trunc_ln29_12_fu_1193_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1232_p2 = ((tmp_21_fu_1200_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1238_p2 = ((trunc_ln29_13_fu_1210_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1304_p2 = ((tmp_31_fu_1273_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1310_p2 = ((trunc_ln29_14_fu_1283_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_693_p2 = ((tmp_4_fu_661_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1322_p2 = ((tmp_32_fu_1290_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1328_p2 = ((trunc_ln29_15_fu_1300_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_699_p2 = ((trunc_ln29_1_fu_671_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_765_p2 = ((tmp_6_fu_734_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_771_p2 = ((trunc_ln29_2_fu_744_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_783_p2 = ((tmp_7_fu_751_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_789_p2 = ((trunc_ln29_3_fu_761_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_855_p2 = ((tmp_9_fu_824_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_861_p2 = ((trunc_ln29_4_fu_834_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_675_p2 = ((tmp_3_fu_644_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign min_p_10_fu_992_p3 = ((and_ln29_7_reg_1670[0:0] == 1'b1) ? reg_292 : min_p_8_reg_1647);
assign min_p_12_fu_1082_p3 = ((and_ln29_9_reg_1682[0:0] == 1'b1) ? reg_310 : min_p_10_reg_1675);
assign min_p_145_out = ((and_ln29_13_reg_1706[0:0] == 1'b1) ? reg_322 : min_p_14_reg_1699);
assign min_p_14_fu_1172_p3 = ((and_ln29_11_reg_1694[0:0] == 1'b1) ? reg_316 : min_p_12_reg_1687);
assign min_p_16_fu_1262_p3 = ((and_ln29_13_reg_1706[0:0] == 1'b1) ? reg_322 : min_p_14_reg_1699);
assign min_p_18_fu_1351_p3 = ((and_ln29_15_fu_1346_p2[0:0] == 1'b1) ? p_7_reg_1663 : min_p_16_reg_1711);
assign min_p_3_fu_723_p3 = ((and_ln29_1_reg_1618[0:0] == 1'b1) ? reg_292 : min_p_1_reg_1611);
assign min_p_6_fu_813_p3 = ((and_ln29_3_reg_1630[0:0] == 1'b1) ? reg_298 : min_p_3_reg_1623);
assign min_p_8_fu_903_p3 = ((and_ln29_5_reg_1642[0:0] == 1'b1) ? reg_304 : min_p_6_reg_1635);
assign or_ln29_10_fu_1136_p2 = (icmp_ln29_21_fu_1130_p2 | icmp_ln29_20_fu_1124_p2);
assign or_ln29_11_fu_1154_p2 = (icmp_ln29_23_fu_1148_p2 | icmp_ln29_22_fu_1142_p2);
assign or_ln29_12_fu_1226_p2 = (icmp_ln29_25_fu_1220_p2 | icmp_ln29_24_fu_1214_p2);
assign or_ln29_13_fu_1244_p2 = (icmp_ln29_27_fu_1238_p2 | icmp_ln29_26_fu_1232_p2);
assign or_ln29_14_fu_1316_p2 = (icmp_ln29_29_fu_1310_p2 | icmp_ln29_28_fu_1304_p2);
assign or_ln29_15_fu_1334_p2 = (icmp_ln29_31_fu_1328_p2 | icmp_ln29_30_fu_1322_p2);
assign or_ln29_1_fu_705_p2 = (icmp_ln29_3_fu_699_p2 | icmp_ln29_2_fu_693_p2);
assign or_ln29_2_fu_777_p2 = (icmp_ln29_5_fu_771_p2 | icmp_ln29_4_fu_765_p2);
assign or_ln29_3_fu_795_p2 = (icmp_ln29_7_fu_789_p2 | icmp_ln29_6_fu_783_p2);
assign or_ln29_4_fu_867_p2 = (icmp_ln29_9_fu_861_p2 | icmp_ln29_8_fu_855_p2);
assign or_ln29_5_fu_885_p2 = (icmp_ln29_11_fu_879_p2 | icmp_ln29_10_fu_873_p2);
assign or_ln29_6_fu_970_p2 = (icmp_ln29_13_fu_964_p2 | icmp_ln29_12_fu_958_p2);
assign or_ln29_7_fu_976_p2 = (icmp_ln29_15_reg_1658 | icmp_ln29_14_reg_1653);
assign or_ln29_8_fu_1046_p2 = (icmp_ln29_17_fu_1040_p2 | icmp_ln29_16_fu_1034_p2);
assign or_ln29_9_fu_1064_p2 = (icmp_ln29_19_fu_1058_p2 | icmp_ln29_18_fu_1052_p2);
assign or_ln29_fu_687_p2 = (icmp_ln29_fu_675_p2 | icmp_ln29_1_fu_681_p2);
assign tmp_11_fu_944_p4 = {{bitcast_ln29_6_fu_940_p1[62:52]}};
assign tmp_12_fu_914_p4 = {{bitcast_ln29_7_fu_910_p1[62:52]}};
assign tmp_14_fu_1003_p4 = {{bitcast_ln29_8_fu_999_p1[62:52]}};
assign tmp_15_fu_1020_p4 = {{bitcast_ln29_9_fu_1017_p1[62:52]}};
assign tmp_17_fu_1093_p4 = {{bitcast_ln29_10_fu_1089_p1[62:52]}};
assign tmp_18_fu_1110_p4 = {{bitcast_ln29_11_fu_1107_p1[62:52]}};
assign tmp_20_fu_1183_p4 = {{bitcast_ln29_12_fu_1179_p1[62:52]}};
assign tmp_21_fu_1200_p4 = {{bitcast_ln29_13_fu_1197_p1[62:52]}};
assign tmp_23_fu_341_p3 = {{empty_8}, {ap_sig_allocacmp_prev_1}};
assign tmp_24_fu_373_p3 = {{empty_8}, {add_ln25_fu_367_p2}};
assign tmp_25_fu_404_p3 = {{empty_8}, {add_ln25_1_fu_399_p2}};
assign tmp_26_fu_433_p3 = {{empty_8}, {add_ln25_2_fu_428_p2}};
assign tmp_27_fu_470_p3 = {{empty_8}, {add_ln25_3_fu_465_p2}};
assign tmp_28_fu_499_p3 = {{empty_8}, {add_ln25_4_fu_494_p2}};
assign tmp_29_fu_547_p3 = {{empty_8}, {add_ln25_5_fu_542_p2}};
assign tmp_31_fu_1273_p4 = {{bitcast_ln29_14_fu_1270_p1[62:52]}};
assign tmp_32_fu_1290_p4 = {{bitcast_ln29_15_fu_1287_p1[62:52]}};
assign tmp_3_fu_644_p4 = {{bitcast_ln29_fu_640_p1[62:52]}};
assign tmp_4_fu_661_p4 = {{bitcast_ln29_1_fu_658_p1[62:52]}};
assign tmp_6_fu_734_p4 = {{bitcast_ln29_2_fu_730_p1[62:52]}};
assign tmp_7_fu_751_p4 = {{bitcast_ln29_3_fu_748_p1[62:52]}};
assign tmp_9_fu_824_p4 = {{bitcast_ln29_4_fu_820_p1[62:52]}};
assign tmp_s_fu_841_p4 = {{bitcast_ln29_5_fu_838_p1[62:52]}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln27_fu_584_p1 = add_ln25_6_reg_1506[5:0];
assign trunc_ln29_10_fu_1103_p1 = bitcast_ln29_10_fu_1089_p1[51:0];
assign trunc_ln29_11_fu_1120_p1 = bitcast_ln29_11_fu_1107_p1[51:0];
assign trunc_ln29_12_fu_1193_p1 = bitcast_ln29_12_fu_1179_p1[51:0];
assign trunc_ln29_13_fu_1210_p1 = bitcast_ln29_13_fu_1197_p1[51:0];
assign trunc_ln29_14_fu_1283_p1 = bitcast_ln29_14_fu_1270_p1[51:0];
assign trunc_ln29_15_fu_1300_p1 = bitcast_ln29_15_fu_1287_p1[51:0];
assign trunc_ln29_1_fu_671_p1 = bitcast_ln29_1_fu_658_p1[51:0];
assign trunc_ln29_2_fu_744_p1 = bitcast_ln29_2_fu_730_p1[51:0];
assign trunc_ln29_3_fu_761_p1 = bitcast_ln29_3_fu_748_p1[51:0];
assign trunc_ln29_4_fu_834_p1 = bitcast_ln29_4_fu_820_p1[51:0];
assign trunc_ln29_5_fu_851_p1 = bitcast_ln29_5_fu_838_p1[51:0];
assign trunc_ln29_6_fu_954_p1 = bitcast_ln29_6_fu_940_p1[51:0];
assign trunc_ln29_7_fu_924_p1 = bitcast_ln29_7_fu_910_p1[51:0];
assign trunc_ln29_8_fu_1013_p1 = bitcast_ln29_8_fu_999_p1[51:0];
assign trunc_ln29_9_fu_1030_p1 = bitcast_ln29_9_fu_1017_p1[51:0];
assign trunc_ln29_fu_654_p1 = bitcast_ln29_fu_640_p1[51:0];
assign zext_ln10_fu_457_p1 = prev_1_reg_1405;
assign zext_ln26_1_fu_381_p1 = tmp_24_fu_373_p3;
assign zext_ln26_2_fu_411_p1 = tmp_25_fu_404_p3;
assign zext_ln26_3_fu_440_p1 = tmp_26_fu_433_p3;
assign zext_ln26_4_fu_477_p1 = tmp_27_fu_470_p3;
assign zext_ln26_5_fu_506_p1 = tmp_28_fu_499_p3;
assign zext_ln26_6_fu_554_p1 = tmp_29_fu_547_p3;
assign zext_ln26_7_fu_571_p1 = add_ln25_6_reg_1506;
assign zext_ln26_8_fu_579_p1 = add_ln26_fu_574_p2;
assign zext_ln26_fu_349_p1 = tmp_23_fu_341_p3;
assign zext_ln27_1_fu_394_p1 = add_ln27_1_fu_386_p3;
assign zext_ln27_2_fu_423_p1 = add_ln27_2_fu_416_p3;
assign zext_ln27_3_fu_452_p1 = add_ln27_3_fu_445_p3;
assign zext_ln27_4_fu_489_p1 = add_ln27_4_fu_482_p3;
assign zext_ln27_5_fu_518_p1 = add_ln27_5_fu_511_p3;
assign zext_ln27_6_fu_566_p1 = add_ln27_6_fu_559_p3;
assign zext_ln27_7_fu_594_p1 = add_ln27_7_fu_587_p3;
assign zext_ln27_fu_362_p1 = add_ln_fu_354_p3;
endmodule 