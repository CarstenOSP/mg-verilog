module backprop_update_weights_68_69_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_15_address0,weights2_15_ce0,weights2_15_we0,weights2_15_d0,weights2_15_q0,weights2_14_address0,weights2_14_ce0,weights2_14_we0,weights2_14_d0,weights2_14_q0,weights2_13_address0,weights2_13_ce0,weights2_13_we0,weights2_13_d0,weights2_13_q0,weights2_12_address0,weights2_12_ce0,weights2_12_we0,weights2_12_d0,weights2_12_q0,weights2_11_address0,weights2_11_ce0,weights2_11_we0,weights2_11_d0,weights2_11_q0,weights2_10_address0,weights2_10_ce0,weights2_10_we0,weights2_10_d0,weights2_10_q0,weights2_9_address0,weights2_9_ce0,weights2_9_we0,weights2_9_d0,weights2_9_q0,weights2_8_address0,weights2_8_ce0,weights2_8_we0,weights2_8_d0,weights2_8_q0,weights2_7_address0,weights2_7_ce0,weights2_7_we0,weights2_7_d0,weights2_7_q0,weights2_6_address0,weights2_6_ce0,weights2_6_we0,weights2_6_d0,weights2_6_q0,weights2_5_address0,weights2_5_ce0,weights2_5_we0,weights2_5_d0,weights2_5_q0,weights2_4_address0,weights2_4_ce0,weights2_4_we0,weights2_4_d0,weights2_4_q0,weights2_3_address0,weights2_3_ce0,weights2_3_we0,weights2_3_d0,weights2_3_q0,weights2_2_address0,weights2_2_ce0,weights2_2_we0,weights2_2_d0,weights2_2_q0,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_8_address0,d_weights2_8_ce0,d_weights2_8_q0,d_weights2_12_address0,d_weights2_12_ce0,d_weights2_12_q0,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_9_address0,d_weights2_9_ce0,d_weights2_9_q0,d_weights2_13_address0,d_weights2_13_ce0,d_weights2_13_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_10_address0,d_weights2_10_ce0,d_weights2_10_q0,d_weights2_14_address0,d_weights2_14_ce0,d_weights2_14_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_11_address0,d_weights2_11_ce0,d_weights2_11_q0,d_weights2_15_address0,d_weights2_15_ce0,d_weights2_15_q0,norm_7_out,norm_7_out_ap_vld,grp_fu_1139_p_din0,grp_fu_1139_p_din1,grp_fu_1139_p_opcode,grp_fu_1139_p_dout0,grp_fu_1139_p_ce,grp_fu_1143_p_din0,grp_fu_1143_p_din1,grp_fu_1143_p_dout0,grp_fu_1143_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weights2_15_address0;
output   weights2_15_ce0;
output   weights2_15_we0;
output  [63:0] weights2_15_d0;
input  [63:0] weights2_15_q0;
output  [7:0] weights2_14_address0;
output   weights2_14_ce0;
output   weights2_14_we0;
output  [63:0] weights2_14_d0;
input  [63:0] weights2_14_q0;
output  [7:0] weights2_13_address0;
output   weights2_13_ce0;
output   weights2_13_we0;
output  [63:0] weights2_13_d0;
input  [63:0] weights2_13_q0;
output  [7:0] weights2_12_address0;
output   weights2_12_ce0;
output   weights2_12_we0;
output  [63:0] weights2_12_d0;
input  [63:0] weights2_12_q0;
output  [7:0] weights2_11_address0;
output   weights2_11_ce0;
output   weights2_11_we0;
output  [63:0] weights2_11_d0;
input  [63:0] weights2_11_q0;
output  [7:0] weights2_10_address0;
output   weights2_10_ce0;
output   weights2_10_we0;
output  [63:0] weights2_10_d0;
input  [63:0] weights2_10_q0;
output  [7:0] weights2_9_address0;
output   weights2_9_ce0;
output   weights2_9_we0;
output  [63:0] weights2_9_d0;
input  [63:0] weights2_9_q0;
output  [7:0] weights2_8_address0;
output   weights2_8_ce0;
output   weights2_8_we0;
output  [63:0] weights2_8_d0;
input  [63:0] weights2_8_q0;
output  [7:0] weights2_7_address0;
output   weights2_7_ce0;
output   weights2_7_we0;
output  [63:0] weights2_7_d0;
input  [63:0] weights2_7_q0;
output  [7:0] weights2_6_address0;
output   weights2_6_ce0;
output   weights2_6_we0;
output  [63:0] weights2_6_d0;
input  [63:0] weights2_6_q0;
output  [7:0] weights2_5_address0;
output   weights2_5_ce0;
output   weights2_5_we0;
output  [63:0] weights2_5_d0;
input  [63:0] weights2_5_q0;
output  [7:0] weights2_4_address0;
output   weights2_4_ce0;
output   weights2_4_we0;
output  [63:0] weights2_4_d0;
input  [63:0] weights2_4_q0;
output  [7:0] weights2_3_address0;
output   weights2_3_ce0;
output   weights2_3_we0;
output  [63:0] weights2_3_d0;
input  [63:0] weights2_3_q0;
output  [7:0] weights2_2_address0;
output   weights2_2_ce0;
output   weights2_2_we0;
output  [63:0] weights2_2_d0;
input  [63:0] weights2_2_q0;
output  [7:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [7:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [7:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [7:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [7:0] d_weights2_8_address0;
output   d_weights2_8_ce0;
input  [63:0] d_weights2_8_q0;
output  [7:0] d_weights2_12_address0;
output   d_weights2_12_ce0;
input  [63:0] d_weights2_12_q0;
output  [7:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [7:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [7:0] d_weights2_9_address0;
output   d_weights2_9_ce0;
input  [63:0] d_weights2_9_q0;
output  [7:0] d_weights2_13_address0;
output   d_weights2_13_ce0;
input  [63:0] d_weights2_13_q0;
output  [7:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [7:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [7:0] d_weights2_10_address0;
output   d_weights2_10_ce0;
input  [63:0] d_weights2_10_q0;
output  [7:0] d_weights2_14_address0;
output   d_weights2_14_ce0;
input  [63:0] d_weights2_14_q0;
output  [7:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [7:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [7:0] d_weights2_11_address0;
output   d_weights2_11_ce0;
input  [63:0] d_weights2_11_q0;
output  [7:0] d_weights2_15_address0;
output   d_weights2_15_ce0;
input  [63:0] d_weights2_15_q0;
output  [63:0] norm_7_out;
output   norm_7_out_ap_vld;
output  [63:0] grp_fu_1139_p_din0;
output  [63:0] grp_fu_1139_p_din1;
output  [1:0] grp_fu_1139_p_opcode;
input  [63:0] grp_fu_1139_p_dout0;
output   grp_fu_1139_p_ce;
output  [63:0] grp_fu_1143_p_din0;
output  [63:0] grp_fu_1143_p_din1;
input  [63:0] grp_fu_1143_p_dout0;
output   grp_fu_1143_p_ce;
reg ap_idle;
reg norm_7_out_ap_vld;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_subdone;
reg   [0:0] icmp_ln152_reg_1069;
reg    ap_condition_exit_pp0_iter0_stage24;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_580;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage24_11001;
reg   [63:0] reg_585;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
reg   [63:0] reg_590;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln152_fu_620_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] select_ln121_fu_646_p3;
reg   [6:0] select_ln121_reg_1073;
wire   [3:0] trunc_ln153_fu_668_p1;
reg   [3:0] trunc_ln153_reg_1078;
reg   [7:0] weights2_0_addr_reg_1110;
reg   [7:0] weights2_4_addr_reg_1115;
reg   [7:0] weights2_8_addr_reg_1120;
reg   [7:0] weights2_12_addr_reg_1125;
reg   [7:0] weights2_1_addr_reg_1150;
reg   [7:0] weights2_5_addr_reg_1155;
reg   [7:0] weights2_9_addr_reg_1160;
reg   [7:0] weights2_13_addr_reg_1165;
reg   [7:0] weights2_2_addr_reg_1190;
reg   [7:0] weights2_6_addr_reg_1195;
reg   [7:0] weights2_10_addr_reg_1200;
reg   [7:0] weights2_14_addr_reg_1205;
reg   [7:0] weights2_3_addr_reg_1230;
reg   [7:0] weights2_7_addr_reg_1235;
reg   [7:0] weights2_11_addr_reg_1240;
reg   [7:0] weights2_15_addr_reg_1245;
wire   [63:0] tmp_31_fu_740_p11;
reg   [63:0] tmp_31_reg_1250;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_32_fu_779_p11;
reg   [63:0] tmp_32_reg_1255;
wire   [63:0] tmp_33_fu_802_p11;
reg   [63:0] tmp_33_reg_1260;
wire   [63:0] tmp_34_fu_841_p11;
reg   [63:0] tmp_34_reg_1265;
wire   [63:0] tmp_35_fu_864_p11;
reg   [63:0] tmp_35_reg_1270;
wire   [63:0] tmp_36_fu_903_p11;
reg   [63:0] tmp_36_reg_1275;
wire   [63:0] tmp_37_fu_926_p11;
reg   [63:0] tmp_37_reg_1280;
wire   [63:0] tmp_38_fu_965_p11;
reg   [63:0] tmp_38_reg_1285;
reg   [63:0] mul81_2_reg_1290;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mul81_3_reg_1295;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] sub86_1_reg_1300;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] sub86_2_reg_1307;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] sub86_3_reg_1314;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] mul95_2_reg_1326;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] mul95_3_reg_1331;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
reg   [63:0] norm_11_reg_1336;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln154_fu_694_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_7_fu_132;
wire    ap_block_pp0_stage24;
wire    ap_loop_init;
wire    ap_block_pp0_stage25;
reg   [6:0] j_fu_136;
wire   [6:0] add_ln153_fu_1021_p2;
reg   [6:0] i_4_fu_140;
wire   [6:0] select_ln152_fu_660_p3;
reg   [10:0] indvar_flatten13_fu_144;
wire   [10:0] add_ln152_fu_626_p2;
wire    ap_block_pp0_stage24_01001;
reg    d_weights2_0_ce0_local;
reg    d_weights2_4_ce0_local;
reg    d_weights2_8_ce0_local;
reg    d_weights2_12_ce0_local;
reg    weights2_0_ce0_local;
reg   [7:0] weights2_0_address0_local;
reg    weights2_0_we0_local;
reg    ap_predicate_pred663_state19;
wire   [63:0] bitcast_ln154_16_fu_988_p1;
wire    ap_block_pp0_stage18;
reg    weights2_4_ce0_local;
reg   [7:0] weights2_4_address0_local;
reg    weights2_4_we0_local;
reg    ap_predicate_pred681_state19;
reg    weights2_8_ce0_local;
reg   [7:0] weights2_8_address0_local;
reg    weights2_8_we0_local;
reg    ap_predicate_pred692_state19;
reg    weights2_12_ce0_local;
reg   [7:0] weights2_12_address0_local;
reg    weights2_12_we0_local;
reg    ap_predicate_pred706_state19;
reg    d_weights2_1_ce0_local;
reg    d_weights2_5_ce0_local;
reg    d_weights2_9_ce0_local;
reg    d_weights2_13_ce0_local;
reg    weights2_1_ce0_local;
reg   [7:0] weights2_1_address0_local;
reg    weights2_1_we0_local;
reg    ap_predicate_pred663_state20;
wire   [63:0] bitcast_ln154_17_fu_996_p1;
wire    ap_block_pp0_stage19;
reg    weights2_5_ce0_local;
reg   [7:0] weights2_5_address0_local;
reg    weights2_5_we0_local;
reg    ap_predicate_pred681_state20;
reg    weights2_9_ce0_local;
reg   [7:0] weights2_9_address0_local;
reg    weights2_9_we0_local;
reg    ap_predicate_pred692_state20;
reg    weights2_13_ce0_local;
reg   [7:0] weights2_13_address0_local;
reg    weights2_13_we0_local;
reg    ap_predicate_pred706_state20;
reg    d_weights2_2_ce0_local;
reg    d_weights2_6_ce0_local;
reg    d_weights2_10_ce0_local;
reg    d_weights2_14_ce0_local;
reg    weights2_2_ce0_local;
reg   [7:0] weights2_2_address0_local;
reg    weights2_2_we0_local;
reg    ap_predicate_pred663_state21;
wire   [63:0] bitcast_ln154_18_fu_1003_p1;
wire    ap_block_pp0_stage20;
reg    weights2_6_ce0_local;
reg   [7:0] weights2_6_address0_local;
reg    weights2_6_we0_local;
reg    ap_predicate_pred681_state21;
reg    weights2_10_ce0_local;
reg   [7:0] weights2_10_address0_local;
reg    weights2_10_we0_local;
reg    ap_predicate_pred692_state21;
reg    weights2_14_ce0_local;
reg   [7:0] weights2_14_address0_local;
reg    weights2_14_we0_local;
reg    ap_predicate_pred706_state21;
reg    d_weights2_3_ce0_local;
reg    d_weights2_7_ce0_local;
reg    d_weights2_11_ce0_local;
reg    d_weights2_15_ce0_local;
reg    weights2_3_ce0_local;
reg   [7:0] weights2_3_address0_local;
reg    weights2_3_we0_local;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg    ap_predicate_pred663_state22;
wire   [63:0] bitcast_ln154_19_fu_1010_p1;
wire    ap_block_pp0_stage21;
reg    weights2_7_ce0_local;
reg   [7:0] weights2_7_address0_local;
reg    weights2_7_we0_local;
reg    ap_predicate_pred681_state22;
reg    weights2_11_ce0_local;
reg   [7:0] weights2_11_address0_local;
reg    weights2_11_we0_local;
reg    ap_predicate_pred692_state22;
reg    weights2_15_ce0_local;
reg   [7:0] weights2_15_address0_local;
reg    weights2_15_we0_local;
reg    ap_predicate_pred706_state22;
wire    ap_block_pp0_stage0;
reg   [63:0] grp_fu_571_p0;
reg   [63:0] grp_fu_571_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage17;
reg   [63:0] grp_fu_575_p0;
reg   [63:0] grp_fu_575_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6;
wire   [0:0] tmp_fu_638_p3;
wire   [6:0] add_ln152_1_fu_654_p2;
wire   [5:0] trunc_ln154_fu_682_p1;
wire   [1:0] lshr_ln3_fu_672_p4;
wire   [7:0] add_ln_fu_686_p3;
wire   [63:0] tmp_31_fu_740_p9;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_32_fu_779_p2;
wire   [63:0] tmp_32_fu_779_p4;
wire   [63:0] tmp_32_fu_779_p6;
wire   [63:0] tmp_32_fu_779_p8;
wire   [63:0] tmp_32_fu_779_p9;
wire   [63:0] tmp_33_fu_802_p9;
wire   [63:0] tmp_34_fu_841_p2;
wire   [63:0] tmp_34_fu_841_p4;
wire   [63:0] tmp_34_fu_841_p6;
wire   [63:0] tmp_34_fu_841_p8;
wire   [63:0] tmp_34_fu_841_p9;
wire   [63:0] tmp_35_fu_864_p9;
wire   [63:0] tmp_36_fu_903_p2;
wire   [63:0] tmp_36_fu_903_p4;
wire   [63:0] tmp_36_fu_903_p6;
wire   [63:0] tmp_36_fu_903_p8;
wire   [63:0] tmp_36_fu_903_p9;
wire   [63:0] tmp_37_fu_926_p9;
wire   [63:0] tmp_38_fu_965_p2;
wire   [63:0] tmp_38_fu_965_p4;
wire   [63:0] tmp_38_fu_965_p6;
wire   [63:0] tmp_38_fu_965_p8;
wire   [63:0] tmp_38_fu_965_p9;
reg   [1:0] grp_fu_571_opcode;
wire    ap_block_pp0_stage25_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage17_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage13_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_31_fu_740_p1;
wire   [3:0] tmp_31_fu_740_p3;
wire  signed [3:0] tmp_31_fu_740_p5;
wire  signed [3:0] tmp_31_fu_740_p7;
wire   [3:0] tmp_32_fu_779_p1;
wire   [3:0] tmp_32_fu_779_p3;
wire  signed [3:0] tmp_32_fu_779_p5;
wire  signed [3:0] tmp_32_fu_779_p7;
wire   [3:0] tmp_33_fu_802_p1;
wire   [3:0] tmp_33_fu_802_p3;
wire  signed [3:0] tmp_33_fu_802_p5;
wire  signed [3:0] tmp_33_fu_802_p7;
wire   [3:0] tmp_34_fu_841_p1;
wire   [3:0] tmp_34_fu_841_p3;
wire  signed [3:0] tmp_34_fu_841_p5;
wire  signed [3:0] tmp_34_fu_841_p7;
wire   [3:0] tmp_35_fu_864_p1;
wire   [3:0] tmp_35_fu_864_p3;
wire  signed [3:0] tmp_35_fu_864_p5;
wire  signed [3:0] tmp_35_fu_864_p7;
wire   [3:0] tmp_36_fu_903_p1;
wire   [3:0] tmp_36_fu_903_p3;
wire  signed [3:0] tmp_36_fu_903_p5;
wire  signed [3:0] tmp_36_fu_903_p7;
wire   [3:0] tmp_37_fu_926_p1;
wire   [3:0] tmp_37_fu_926_p3;
wire  signed [3:0] tmp_37_fu_926_p5;
wire  signed [3:0] tmp_37_fu_926_p7;
wire   [3:0] tmp_38_fu_965_p1;
wire   [3:0] tmp_38_fu_965_p3;
wire  signed [3:0] tmp_38_fu_965_p5;
wire  signed [3:0] tmp_38_fu_965_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_7_fu_132 = 64'd0;
#0 j_fu_136 = 7'd0;
#0 i_4_fu_140 = 7'd0;
#0 indvar_flatten13_fu_144 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1967(.din0(d_weights2_0_q0),.din1(d_weights2_4_q0),.din2(d_weights2_8_q0),.din3(d_weights2_12_q0),.def(tmp_31_fu_740_p9),.sel(trunc_ln153_reg_1078),.dout(tmp_31_fu_740_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1968(.din0(tmp_32_fu_779_p2),.din1(tmp_32_fu_779_p4),.din2(tmp_32_fu_779_p6),.din3(tmp_32_fu_779_p8),.def(tmp_32_fu_779_p9),.sel(trunc_ln153_reg_1078),.dout(tmp_32_fu_779_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1969(.din0(d_weights2_1_q0),.din1(d_weights2_5_q0),.din2(d_weights2_9_q0),.din3(d_weights2_13_q0),.def(tmp_33_fu_802_p9),.sel(trunc_ln153_reg_1078),.dout(tmp_33_fu_802_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1970(.din0(tmp_34_fu_841_p2),.din1(tmp_34_fu_841_p4),.din2(tmp_34_fu_841_p6),.din3(tmp_34_fu_841_p8),.def(tmp_34_fu_841_p9),.sel(trunc_ln153_reg_1078),.dout(tmp_34_fu_841_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1971(.din0(d_weights2_2_q0),.din1(d_weights2_6_q0),.din2(d_weights2_10_q0),.din3(d_weights2_14_q0),.def(tmp_35_fu_864_p9),.sel(trunc_ln153_reg_1078),.dout(tmp_35_fu_864_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1972(.din0(tmp_36_fu_903_p2),.din1(tmp_36_fu_903_p4),.din2(tmp_36_fu_903_p6),.din3(tmp_36_fu_903_p8),.def(tmp_36_fu_903_p9),.sel(trunc_ln153_reg_1078),.dout(tmp_36_fu_903_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1973(.din0(d_weights2_3_q0),.din1(d_weights2_7_q0),.din2(d_weights2_11_q0),.din3(d_weights2_15_q0),.def(tmp_37_fu_926_p9),.sel(trunc_ln153_reg_1078),.dout(tmp_37_fu_926_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U1974(.din0(tmp_38_fu_965_p2),.din1(tmp_38_fu_965_p4),.din2(tmp_38_fu_965_p6),.din3(tmp_38_fu_965_p8),.def(tmp_38_fu_965_p9),.sel(trunc_ln153_reg_1078),.dout(tmp_38_fu_965_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage24),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage24_subdone) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage24)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_fu_140 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln152_fu_620_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_4_fu_140 <= select_ln152_fu_660_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten13_fu_144 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln152_fu_620_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten13_fu_144 <= add_ln152_fu_626_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_136 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_136 <= add_ln153_fu_1021_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_7_fu_132 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        norm_7_fu_132 <= grp_fu_1139_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        ap_predicate_pred663_state19 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd0));
        ap_predicate_pred681_state19 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd4));
        ap_predicate_pred692_state19 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd8));
        ap_predicate_pred706_state19 <= (~(trunc_ln153_reg_1078 == 4'd8) & ~(trunc_ln153_reg_1078 == 4'd4) & ~(trunc_ln153_reg_1078 == 4'd0) & (icmp_ln152_reg_1069 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        ap_predicate_pred663_state20 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd0));
        ap_predicate_pred681_state20 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd4));
        ap_predicate_pred692_state20 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd8));
        ap_predicate_pred706_state20 <= (~(trunc_ln153_reg_1078 == 4'd8) & ~(trunc_ln153_reg_1078 == 4'd4) & ~(trunc_ln153_reg_1078 == 4'd0) & (icmp_ln152_reg_1069 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_predicate_pred663_state21 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd0));
        ap_predicate_pred681_state21 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd4));
        ap_predicate_pred692_state21 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd8));
        ap_predicate_pred706_state21 <= (~(trunc_ln153_reg_1078 == 4'd8) & ~(trunc_ln153_reg_1078 == 4'd4) & ~(trunc_ln153_reg_1078 == 4'd0) & (icmp_ln152_reg_1069 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        ap_predicate_pred663_state22 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd0));
        ap_predicate_pred681_state22 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd4));
        ap_predicate_pred692_state22 <= ((icmp_ln152_reg_1069 == 1'd0) & (trunc_ln153_reg_1078 == 4'd8));
        ap_predicate_pred706_state22 <= (~(trunc_ln153_reg_1078 == 4'd8) & ~(trunc_ln153_reg_1078 == 4'd4) & ~(trunc_ln153_reg_1078 == 4'd0) & (icmp_ln152_reg_1069 == 1'd0));
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln152_reg_1069 <= icmp_ln152_fu_620_p2;
        select_ln121_reg_1073 <= select_ln121_fu_646_p3;
        trunc_ln153_reg_1078 <= trunc_ln153_fu_668_p1;
        weights2_0_addr_reg_1110 <= zext_ln154_fu_694_p1;
        weights2_10_addr_reg_1200 <= zext_ln154_fu_694_p1;
        weights2_11_addr_reg_1240 <= zext_ln154_fu_694_p1;
        weights2_12_addr_reg_1125 <= zext_ln154_fu_694_p1;
        weights2_13_addr_reg_1165 <= zext_ln154_fu_694_p1;
        weights2_14_addr_reg_1205 <= zext_ln154_fu_694_p1;
        weights2_15_addr_reg_1245 <= zext_ln154_fu_694_p1;
        weights2_1_addr_reg_1150 <= zext_ln154_fu_694_p1;
        weights2_2_addr_reg_1190 <= zext_ln154_fu_694_p1;
        weights2_3_addr_reg_1230 <= zext_ln154_fu_694_p1;
        weights2_4_addr_reg_1115 <= zext_ln154_fu_694_p1;
        weights2_5_addr_reg_1155 <= zext_ln154_fu_694_p1;
        weights2_6_addr_reg_1195 <= zext_ln154_fu_694_p1;
        weights2_7_addr_reg_1235 <= zext_ln154_fu_694_p1;
        weights2_8_addr_reg_1120 <= zext_ln154_fu_694_p1;
        weights2_9_addr_reg_1160 <= zext_ln154_fu_694_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul81_2_reg_1290 <= grp_fu_1143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul81_3_reg_1295 <= grp_fu_1143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul95_2_reg_1326 <= grp_fu_1143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        mul95_3_reg_1331 <= grp_fu_1143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        norm_11_reg_1336 <= grp_fu_1139_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_580 <= grp_fu_1143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_585 <= grp_fu_1143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_590 <= grp_fu_1139_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        sub86_1_reg_1300 <= grp_fu_1139_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        sub86_2_reg_1307 <= grp_fu_1139_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        sub86_3_reg_1314 <= grp_fu_1139_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_31_reg_1250 <= tmp_31_fu_740_p11;
        tmp_32_reg_1255 <= tmp_32_fu_779_p11;
        tmp_33_reg_1260 <= tmp_33_fu_802_p11;
        tmp_34_reg_1265 <= tmp_34_fu_841_p11;
        tmp_35_reg_1270 <= tmp_35_fu_864_p11;
        tmp_36_reg_1275 <= tmp_36_fu_903_p11;
        tmp_37_reg_1280 <= tmp_37_fu_926_p11;
        tmp_38_reg_1285 <= tmp_38_fu_965_p11;
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_1069 == 1'd1) & (1'b0 == ap_block_pp0_stage24_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        ap_condition_exit_pp0_iter0_stage24 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage24 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage24_subdone) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_0_ce0_local = 1'b1;
    end else begin
        d_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_10_ce0_local = 1'b1;
    end else begin
        d_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_11_ce0_local = 1'b1;
    end else begin
        d_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_12_ce0_local = 1'b1;
    end else begin
        d_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_13_ce0_local = 1'b1;
    end else begin
        d_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_14_ce0_local = 1'b1;
    end else begin
        d_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_15_ce0_local = 1'b1;
    end else begin
        d_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_1_ce0_local = 1'b1;
    end else begin
        d_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_2_ce0_local = 1'b1;
    end else begin
        d_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_3_ce0_local = 1'b1;
    end else begin
        d_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_4_ce0_local = 1'b1;
    end else begin
        d_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_5_ce0_local = 1'b1;
    end else begin
        d_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_6_ce0_local = 1'b1;
    end else begin
        d_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_7_ce0_local = 1'b1;
    end else begin
        d_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_8_ce0_local = 1'b1;
    end else begin
        d_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_9_ce0_local = 1'b1;
    end else begin
        d_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln152_reg_1069 == 1'd0) & (1'b0 == ap_block_pp0_stage13_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((icmp_ln152_reg_1069 == 1'd0) & (1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((icmp_ln152_reg_1069 == 1'd0) & (1'b0 == ap_block_pp0_stage11_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((icmp_ln152_reg_1069 == 1'd0) & (1'b0 == ap_block_pp0_stage10_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        grp_fu_571_opcode = 2'd1;
    end else if ((((icmp_ln152_reg_1069 == 1'd0) & (1'b0 == ap_block_pp0_stage25_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage9_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_571_opcode = 2'd0;
    end else begin
        grp_fu_571_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_571_p0 = norm_11_reg_1336;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_571_p0 = reg_590;
    end else if (((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        grp_fu_571_p0 = norm_7_fu_132;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_571_p0 = tmp_38_reg_1285;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_571_p0 = tmp_36_reg_1275;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_571_p0 = tmp_34_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_571_p0 = tmp_32_reg_1255;
    end else begin
        grp_fu_571_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        grp_fu_571_p1 = mul95_3_reg_1331;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_571_p1 = mul95_2_reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_571_p1 = mul81_3_reg_1295;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_571_p1 = mul81_2_reg_1290;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_571_p1 = reg_585;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage25) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)))) begin
        grp_fu_571_p1 = reg_580;
    end else begin
        grp_fu_571_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_575_p0 = sub86_3_reg_1314;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            grp_fu_575_p0 = sub86_2_reg_1307;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_575_p0 = sub86_1_reg_1300;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            grp_fu_575_p0 = reg_590;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_575_p0 = tmp_37_reg_1280;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_575_p0 = tmp_35_reg_1270;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_575_p0 = tmp_33_reg_1260;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_575_p0 = tmp_31_reg_1250;
        end else begin
            grp_fu_575_p0 = 'bx;
        end
    end else begin
        grp_fu_575_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_575_p1 = sub86_3_reg_1314;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        grp_fu_575_p1 = sub86_2_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        grp_fu_575_p1 = sub86_1_reg_1300;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_575_p1 = reg_590;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_575_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_575_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln152_reg_1069 == 1'd1) & (1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        norm_7_out_ap_vld = 1'b1;
    end else begin
        norm_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_0_address0_local = weights2_0_addr_reg_1110;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_0_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_0_address0_local = 'bx;
        end
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_predicate_pred663_state19 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_10_address0_local = weights2_10_addr_reg_1200;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_10_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_10_address0_local = 'bx;
        end
    end else begin
        weights2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_10_we0_local = 1'b1;
    end else begin
        weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_11_address0_local = weights2_11_addr_reg_1240;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_11_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_11_address0_local = 'bx;
        end
    end else begin
        weights2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state22 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_11_we0_local = 1'b1;
    end else begin
        weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_12_address0_local = weights2_12_addr_reg_1125;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_12_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_12_address0_local = 'bx;
        end
    end else begin
        weights2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred706_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_12_we0_local = 1'b1;
    end else begin
        weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_13_address0_local = weights2_13_addr_reg_1165;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_13_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_13_address0_local = 'bx;
        end
    end else begin
        weights2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred706_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_13_we0_local = 1'b1;
    end else begin
        weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_14_address0_local = weights2_14_addr_reg_1205;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_14_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_14_address0_local = 'bx;
        end
    end else begin
        weights2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred706_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_14_we0_local = 1'b1;
    end else begin
        weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_15_address0_local = weights2_15_addr_reg_1245;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_15_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_15_address0_local = 'bx;
        end
    end else begin
        weights2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred706_state22 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_15_we0_local = 1'b1;
    end else begin
        weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_1_address0_local = weights2_1_addr_reg_1150;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_1_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_1_address0_local = 'bx;
        end
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_2_address0_local = weights2_2_addr_reg_1190;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_2_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_2_address0_local = 'bx;
        end
    end else begin
        weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_2_we0_local = 1'b1;
    end else begin
        weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_3_address0_local = weights2_3_addr_reg_1230;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_3_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_3_address0_local = 'bx;
        end
    end else begin
        weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred663_state22 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_3_we0_local = 1'b1;
    end else begin
        weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_4_address0_local = weights2_4_addr_reg_1115;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_4_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_4_address0_local = 'bx;
        end
    end else begin
        weights2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_4_we0_local = 1'b1;
    end else begin
        weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_5_address0_local = weights2_5_addr_reg_1155;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_5_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_5_address0_local = 'bx;
        end
    end else begin
        weights2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_5_we0_local = 1'b1;
    end else begin
        weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            weights2_6_address0_local = weights2_6_addr_reg_1195;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_6_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_6_address0_local = 'bx;
        end
    end else begin
        weights2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state21 == 1'b1) & (1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        weights2_6_we0_local = 1'b1;
    end else begin
        weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            weights2_7_address0_local = weights2_7_addr_reg_1235;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_7_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_7_address0_local = 'bx;
        end
    end else begin
        weights2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred681_state22 == 1'b1) & (1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        weights2_7_we0_local = 1'b1;
    end else begin
        weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            weights2_8_address0_local = weights2_8_addr_reg_1120;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_8_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_8_address0_local = 'bx;
        end
    end else begin
        weights2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state19 == 1'b1) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        weights2_8_we0_local = 1'b1;
    end else begin
        weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            weights2_9_address0_local = weights2_9_addr_reg_1160;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            weights2_9_address0_local = zext_ln154_fu_694_p1;
        end else begin
            weights2_9_address0_local = 'bx;
        end
    end else begin
        weights2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred692_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        weights2_9_we0_local = 1'b1;
    end else begin
        weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage24)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln152_1_fu_654_p2 = (i_4_fu_140 + 7'd1);
assign add_ln152_fu_626_p2 = (indvar_flatten13_fu_144 + 11'd1);
assign add_ln153_fu_1021_p2 = (select_ln121_reg_1073 + 7'd4);
assign add_ln_fu_686_p3 = {{trunc_ln154_fu_682_p1}, {lshr_ln3_fu_672_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage24;
assign ap_ready = ap_ready_sig;
assign bitcast_ln154_16_fu_988_p1 = reg_590;
assign bitcast_ln154_17_fu_996_p1 = sub86_1_reg_1300;
assign bitcast_ln154_18_fu_1003_p1 = sub86_2_reg_1307;
assign bitcast_ln154_19_fu_1010_p1 = sub86_3_reg_1314;
assign d_weights2_0_address0 = zext_ln154_fu_694_p1;
assign d_weights2_0_ce0 = d_weights2_0_ce0_local;
assign d_weights2_10_address0 = zext_ln154_fu_694_p1;
assign d_weights2_10_ce0 = d_weights2_10_ce0_local;
assign d_weights2_11_address0 = zext_ln154_fu_694_p1;
assign d_weights2_11_ce0 = d_weights2_11_ce0_local;
assign d_weights2_12_address0 = zext_ln154_fu_694_p1;
assign d_weights2_12_ce0 = d_weights2_12_ce0_local;
assign d_weights2_13_address0 = zext_ln154_fu_694_p1;
assign d_weights2_13_ce0 = d_weights2_13_ce0_local;
assign d_weights2_14_address0 = zext_ln154_fu_694_p1;
assign d_weights2_14_ce0 = d_weights2_14_ce0_local;
assign d_weights2_15_address0 = zext_ln154_fu_694_p1;
assign d_weights2_15_ce0 = d_weights2_15_ce0_local;
assign d_weights2_1_address0 = zext_ln154_fu_694_p1;
assign d_weights2_1_ce0 = d_weights2_1_ce0_local;
assign d_weights2_2_address0 = zext_ln154_fu_694_p1;
assign d_weights2_2_ce0 = d_weights2_2_ce0_local;
assign d_weights2_3_address0 = zext_ln154_fu_694_p1;
assign d_weights2_3_ce0 = d_weights2_3_ce0_local;
assign d_weights2_4_address0 = zext_ln154_fu_694_p1;
assign d_weights2_4_ce0 = d_weights2_4_ce0_local;
assign d_weights2_5_address0 = zext_ln154_fu_694_p1;
assign d_weights2_5_ce0 = d_weights2_5_ce0_local;
assign d_weights2_6_address0 = zext_ln154_fu_694_p1;
assign d_weights2_6_ce0 = d_weights2_6_ce0_local;
assign d_weights2_7_address0 = zext_ln154_fu_694_p1;
assign d_weights2_7_ce0 = d_weights2_7_ce0_local;
assign d_weights2_8_address0 = zext_ln154_fu_694_p1;
assign d_weights2_8_ce0 = d_weights2_8_ce0_local;
assign d_weights2_9_address0 = zext_ln154_fu_694_p1;
assign d_weights2_9_ce0 = d_weights2_9_ce0_local;
assign grp_fu_1139_p_ce = 1'b1;
assign grp_fu_1139_p_din0 = grp_fu_571_p0;
assign grp_fu_1139_p_din1 = grp_fu_571_p1;
assign grp_fu_1139_p_opcode = grp_fu_571_opcode;
assign grp_fu_1143_p_ce = 1'b1;
assign grp_fu_1143_p_din0 = grp_fu_575_p0;
assign grp_fu_1143_p_din1 = grp_fu_575_p1;
assign icmp_ln152_fu_620_p2 = ((indvar_flatten13_fu_144 == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln3_fu_672_p4 = {{select_ln121_fu_646_p3[5:4]}};
assign norm_7_out = norm_7_fu_132;
assign select_ln121_fu_646_p3 = ((tmp_fu_638_p3[0:0] == 1'b1) ? 7'd0 : j_fu_136);
assign select_ln152_fu_660_p3 = ((tmp_fu_638_p3[0:0] == 1'b1) ? add_ln152_1_fu_654_p2 : i_4_fu_140);
assign tmp_31_fu_740_p9 = 'bx;
assign tmp_32_fu_779_p2 = weights2_0_q0;
assign tmp_32_fu_779_p4 = weights2_4_q0;
assign tmp_32_fu_779_p6 = weights2_8_q0;
assign tmp_32_fu_779_p8 = weights2_12_q0;
assign tmp_32_fu_779_p9 = 'bx;
assign tmp_33_fu_802_p9 = 'bx;
assign tmp_34_fu_841_p2 = weights2_1_q0;
assign tmp_34_fu_841_p4 = weights2_5_q0;
assign tmp_34_fu_841_p6 = weights2_9_q0;
assign tmp_34_fu_841_p8 = weights2_13_q0;
assign tmp_34_fu_841_p9 = 'bx;
assign tmp_35_fu_864_p9 = 'bx;
assign tmp_36_fu_903_p2 = weights2_2_q0;
assign tmp_36_fu_903_p4 = weights2_6_q0;
assign tmp_36_fu_903_p6 = weights2_10_q0;
assign tmp_36_fu_903_p8 = weights2_14_q0;
assign tmp_36_fu_903_p9 = 'bx;
assign tmp_37_fu_926_p9 = 'bx;
assign tmp_38_fu_965_p2 = weights2_3_q0;
assign tmp_38_fu_965_p4 = weights2_7_q0;
assign tmp_38_fu_965_p6 = weights2_11_q0;
assign tmp_38_fu_965_p8 = weights2_15_q0;
assign tmp_38_fu_965_p9 = 'bx;
assign tmp_fu_638_p3 = j_fu_136[32'd6];
assign trunc_ln153_fu_668_p1 = select_ln121_fu_646_p3[3:0];
assign trunc_ln154_fu_682_p1 = select_ln152_fu_660_p3[5:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_d0 = bitcast_ln154_16_fu_988_p1;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_10_address0 = weights2_10_address0_local;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_10_d0 = bitcast_ln154_18_fu_1003_p1;
assign weights2_10_we0 = weights2_10_we0_local;
assign weights2_11_address0 = weights2_11_address0_local;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_11_d0 = bitcast_ln154_19_fu_1010_p1;
assign weights2_11_we0 = weights2_11_we0_local;
assign weights2_12_address0 = weights2_12_address0_local;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_12_d0 = bitcast_ln154_16_fu_988_p1;
assign weights2_12_we0 = weights2_12_we0_local;
assign weights2_13_address0 = weights2_13_address0_local;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_13_d0 = bitcast_ln154_17_fu_996_p1;
assign weights2_13_we0 = weights2_13_we0_local;
assign weights2_14_address0 = weights2_14_address0_local;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_14_d0 = bitcast_ln154_18_fu_1003_p1;
assign weights2_14_we0 = weights2_14_we0_local;
assign weights2_15_address0 = weights2_15_address0_local;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_15_d0 = bitcast_ln154_19_fu_1010_p1;
assign weights2_15_we0 = weights2_15_we0_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_d0 = bitcast_ln154_17_fu_996_p1;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_2_address0 = weights2_2_address0_local;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_2_d0 = bitcast_ln154_18_fu_1003_p1;
assign weights2_2_we0 = weights2_2_we0_local;
assign weights2_3_address0 = weights2_3_address0_local;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_3_d0 = bitcast_ln154_19_fu_1010_p1;
assign weights2_3_we0 = weights2_3_we0_local;
assign weights2_4_address0 = weights2_4_address0_local;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_4_d0 = bitcast_ln154_16_fu_988_p1;
assign weights2_4_we0 = weights2_4_we0_local;
assign weights2_5_address0 = weights2_5_address0_local;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_5_d0 = bitcast_ln154_17_fu_996_p1;
assign weights2_5_we0 = weights2_5_we0_local;
assign weights2_6_address0 = weights2_6_address0_local;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_6_d0 = bitcast_ln154_18_fu_1003_p1;
assign weights2_6_we0 = weights2_6_we0_local;
assign weights2_7_address0 = weights2_7_address0_local;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_7_d0 = bitcast_ln154_19_fu_1010_p1;
assign weights2_7_we0 = weights2_7_we0_local;
assign weights2_8_address0 = weights2_8_address0_local;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_8_d0 = bitcast_ln154_16_fu_988_p1;
assign weights2_8_we0 = weights2_8_we0_local;
assign weights2_9_address0 = weights2_9_address0_local;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign weights2_9_d0 = bitcast_ln154_17_fu_996_p1;
assign weights2_9_we0 = weights2_9_we0_local;
assign zext_ln154_fu_694_p1 = add_ln_fu_686_p3;
endmodule 