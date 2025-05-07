module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [13:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [13:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [13:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [13:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [13:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [13:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [13:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [13:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [12:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [12:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [12:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [12:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [12:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [12:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [12:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [12:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v228_4_address0;
output   v228_4_ce0;
input  [31:0] v228_4_q0;
output  [12:0] v228_4_address1;
output   v228_4_ce1;
input  [31:0] v228_4_q1;
output  [12:0] v228_5_address0;
output   v228_5_ce0;
input  [31:0] v228_5_q0;
output  [12:0] v228_5_address1;
output   v228_5_ce1;
input  [31:0] v228_5_q1;
output  [12:0] v228_6_address0;
output   v228_6_ce0;
input  [31:0] v228_6_q0;
output  [12:0] v228_6_address1;
output   v228_6_ce1;
input  [31:0] v228_6_q1;
output  [12:0] v228_7_address0;
output   v228_7_ce0;
input  [31:0] v228_7_q0;
output  [12:0] v228_7_address1;
output   v228_7_ce1;
input  [31:0] v228_7_q1;
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [31:0] v4;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_532_p2;
reg   [7:0] add_ln31_reg_1433;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln31_fu_538_p1;
reg   [1:0] trunc_ln31_reg_1438;
wire   [2:0] trunc_ln31_1_fu_542_p1;
reg   [2:0] trunc_ln31_1_reg_1451;
wire   [12:0] mul_ln38_fu_560_p2;
reg   [12:0] mul_ln38_reg_1456;
wire   [13:0] zext_ln31_fu_576_p1;
reg   [13:0] zext_ln31_reg_1461;
wire   [0:0] cmp11_fu_580_p2;
reg   [0:0] cmp11_reg_1474;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_265_fu_631_p2;
reg   [7:0] empty_265_reg_1502;
wire   [7:0] empty_272_fu_637_p2;
reg   [7:0] empty_272_reg_1509;
wire   [7:0] add_ln32_fu_643_p2;
reg   [7:0] add_ln32_reg_1516;
wire   [31:0] v11_fu_669_p11;
reg   [31:0] v11_reg_1521;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_279_fu_766_p2;
reg   [7:0] empty_279_reg_1566;
wire   [7:0] empty_286_fu_772_p2;
reg   [7:0] empty_286_reg_1573;
wire   [31:0] v24_1_fu_794_p11;
reg   [31:0] v24_1_reg_1580;
wire    ap_CS_fsm_state5;
wire   [31:0] v35_1_fu_833_p11;
reg   [31:0] v35_1_reg_1585;
wire   [7:0] empty_293_fu_930_p2;
reg   [7:0] empty_293_reg_1630;
wire   [7:0] empty_300_fu_936_p2;
reg   [7:0] empty_300_reg_1637;
wire   [31:0] v46_1_fu_958_p11;
reg   [31:0] v46_1_reg_1644;
wire    ap_CS_fsm_state6;
wire   [31:0] v57_1_fu_997_p11;
reg   [31:0] v57_1_reg_1649;
wire   [7:0] empty_307_fu_1094_p2;
reg   [7:0] empty_307_reg_1694;
wire   [7:0] empty_314_fu_1100_p2;
reg   [7:0] empty_314_reg_1701;
wire   [31:0] v68_1_fu_1122_p11;
reg   [31:0] v68_1_reg_1708;
wire    ap_CS_fsm_state7;
wire   [31:0] v79_1_fu_1161_p11;
reg   [31:0] v79_1_reg_1713;
wire   [15:0] mul_ln34_fu_1262_p2;
reg   [15:0] mul_ln34_reg_1758;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_1271_p2;
reg   [15:0] mul_ln49_reg_1763;
wire   [15:0] mul_ln62_fu_1280_p2;
reg   [15:0] mul_ln62_reg_1768;
wire   [15:0] mul_ln75_fu_1289_p2;
reg   [15:0] mul_ln75_reg_1773;
wire   [15:0] mul_ln88_fu_1298_p2;
reg   [15:0] mul_ln88_reg_1778;
wire   [15:0] mul_ln101_fu_1307_p2;
reg   [15:0] mul_ln101_reg_1783;
wire   [15:0] mul_ln114_fu_1316_p2;
reg   [15:0] mul_ln114_reg_1788;
wire   [15:0] mul_ln127_fu_1325_p2;
reg   [15:0] mul_ln127_reg_1793;
wire   [31:0] v90_1_fu_1347_p11;
reg   [31:0] v90_1_reg_1798;
wire   [15:0] mul_ln140_fu_1373_p2;
reg   [15:0] mul_ln140_reg_1803;
wire   [31:0] v101_1_fu_1395_p11;
reg   [31:0] v101_1_reg_1808;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_ce;
reg   [7:0] v6_reg_462;
wire   [0:0] icmp_ln31_fu_526_p2;
wire    ap_CS_fsm_state10;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [63:0] p_cast1047_fu_623_p1;
wire   [0:0] icmp_ln32_fu_586_p2;
wire   [63:0] p_cast_fu_721_p1;
wire   [63:0] p_cast1048_fu_758_p1;
wire   [63:0] p_cast1049_fu_885_p1;
wire   [63:0] p_cast1050_fu_922_p1;
wire   [63:0] p_cast1051_fu_1049_p1;
wire   [63:0] p_cast1052_fu_1086_p1;
wire   [63:0] p_cast1053_fu_1213_p1;
wire   [63:0] p_cast1054_fu_1250_p1;
reg   [7:0] v5_fu_122;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [13:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [13:0] v224_0_address1_local;
reg    v224_1_ce0_local;
reg   [13:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [13:0] v224_1_address1_local;
reg    v224_2_ce0_local;
reg   [13:0] v224_2_address0_local;
reg    v224_2_ce1_local;
reg   [13:0] v224_2_address1_local;
reg    v224_3_ce0_local;
reg   [13:0] v224_3_address0_local;
reg    v224_3_ce1_local;
reg   [13:0] v224_3_address1_local;
wire   [4:0] lshr_ln_fu_546_p4;
wire   [4:0] mul_ln38_fu_560_p0;
wire   [8:0] mul_ln38_fu_560_p1;
wire   [5:0] lshr_ln31_1_fu_566_p4;
wire   [11:0] tmp_fu_600_p3;
wire   [13:0] p_shl1_fu_592_p3;
wire   [13:0] p_shl1103_fu_608_p1;
wire   [13:0] empty_fu_612_p2;
wire   [13:0] empty_260_fu_618_p2;
wire   [31:0] v11_fu_669_p2;
wire   [31:0] v11_fu_669_p4;
wire   [31:0] v11_fu_669_p6;
wire   [31:0] v11_fu_669_p8;
wire   [31:0] v11_fu_669_p9;
wire   [11:0] tmp_4_fu_699_p3;
wire   [13:0] p_shl2_fu_692_p3;
wire   [13:0] p_shl1101_fu_706_p1;
wire   [13:0] empty_266_fu_710_p2;
wire   [13:0] empty_267_fu_716_p2;
wire   [11:0] tmp_5_fu_736_p3;
wire   [13:0] p_shl3_fu_729_p3;
wire   [13:0] p_shl1099_fu_743_p1;
wire   [13:0] empty_273_fu_747_p2;
wire   [13:0] empty_274_fu_753_p2;
wire   [31:0] v24_1_fu_794_p2;
wire   [31:0] v24_1_fu_794_p4;
wire   [31:0] v24_1_fu_794_p6;
wire   [31:0] v24_1_fu_794_p8;
wire   [31:0] v24_1_fu_794_p9;
wire   [31:0] v35_1_fu_833_p2;
wire   [31:0] v35_1_fu_833_p4;
wire   [31:0] v35_1_fu_833_p6;
wire   [31:0] v35_1_fu_833_p8;
wire   [31:0] v35_1_fu_833_p9;
wire   [11:0] tmp_6_fu_863_p3;
wire   [13:0] p_shl4_fu_856_p3;
wire   [13:0] p_shl1097_fu_870_p1;
wire   [13:0] empty_280_fu_874_p2;
wire   [13:0] empty_281_fu_880_p2;
wire   [11:0] tmp_7_fu_900_p3;
wire   [13:0] p_shl5_fu_893_p3;
wire   [13:0] p_shl1095_fu_907_p1;
wire   [13:0] empty_287_fu_911_p2;
wire   [13:0] empty_288_fu_917_p2;
wire   [31:0] v46_1_fu_958_p2;
wire   [31:0] v46_1_fu_958_p4;
wire   [31:0] v46_1_fu_958_p6;
wire   [31:0] v46_1_fu_958_p8;
wire   [31:0] v46_1_fu_958_p9;
wire   [31:0] v57_1_fu_997_p2;
wire   [31:0] v57_1_fu_997_p4;
wire   [31:0] v57_1_fu_997_p6;
wire   [31:0] v57_1_fu_997_p8;
wire   [31:0] v57_1_fu_997_p9;
wire   [11:0] tmp_8_fu_1027_p3;
wire   [13:0] p_shl6_fu_1020_p3;
wire   [13:0] p_shl1093_fu_1034_p1;
wire   [13:0] empty_294_fu_1038_p2;
wire   [13:0] empty_295_fu_1044_p2;
wire   [11:0] tmp_9_fu_1064_p3;
wire   [13:0] p_shl7_fu_1057_p3;
wire   [13:0] p_shl1091_fu_1071_p1;
wire   [13:0] empty_301_fu_1075_p2;
wire   [13:0] empty_302_fu_1081_p2;
wire   [31:0] v68_1_fu_1122_p2;
wire   [31:0] v68_1_fu_1122_p4;
wire   [31:0] v68_1_fu_1122_p6;
wire   [31:0] v68_1_fu_1122_p8;
wire   [31:0] v68_1_fu_1122_p9;
wire   [31:0] v79_1_fu_1161_p2;
wire   [31:0] v79_1_fu_1161_p4;
wire   [31:0] v79_1_fu_1161_p6;
wire   [31:0] v79_1_fu_1161_p8;
wire   [31:0] v79_1_fu_1161_p9;
wire   [11:0] tmp_10_fu_1191_p3;
wire   [13:0] p_shl8_fu_1184_p3;
wire   [13:0] p_shl1089_fu_1198_p1;
wire   [13:0] empty_308_fu_1202_p2;
wire   [13:0] empty_309_fu_1208_p2;
wire   [11:0] tmp_11_fu_1228_p3;
wire   [13:0] p_shl_fu_1221_p3;
wire   [13:0] p_shl1087_fu_1235_p1;
wire   [13:0] empty_315_fu_1239_p2;
wire   [13:0] empty_316_fu_1245_p2;
wire   [7:0] mul_ln34_fu_1262_p0;
wire   [8:0] mul_ln34_fu_1262_p1;
wire   [7:0] mul_ln49_fu_1271_p0;
wire   [8:0] mul_ln49_fu_1271_p1;
wire   [7:0] mul_ln62_fu_1280_p0;
wire   [8:0] mul_ln62_fu_1280_p1;
wire   [7:0] mul_ln75_fu_1289_p0;
wire   [8:0] mul_ln75_fu_1289_p1;
wire   [7:0] mul_ln88_fu_1298_p0;
wire   [8:0] mul_ln88_fu_1298_p1;
wire   [7:0] mul_ln101_fu_1307_p0;
wire   [8:0] mul_ln101_fu_1307_p1;
wire   [7:0] mul_ln114_fu_1316_p0;
wire   [8:0] mul_ln114_fu_1316_p1;
wire   [7:0] mul_ln127_fu_1325_p0;
wire   [8:0] mul_ln127_fu_1325_p1;
wire   [31:0] v90_1_fu_1347_p2;
wire   [31:0] v90_1_fu_1347_p4;
wire   [31:0] v90_1_fu_1347_p6;
wire   [31:0] v90_1_fu_1347_p8;
wire   [31:0] v90_1_fu_1347_p9;
wire   [7:0] mul_ln140_fu_1373_p0;
wire   [8:0] mul_ln140_fu_1373_p1;
wire   [31:0] v101_1_fu_1395_p2;
wire   [31:0] v101_1_fu_1395_p4;
wire   [31:0] v101_1_fu_1395_p6;
wire   [31:0] v101_1_fu_1395_p8;
wire   [31:0] v101_1_fu_1395_p9;
reg    grp_fu_1813_ce;
reg    grp_fu_1817_ce;
reg    grp_fu_1821_ce;
reg   [9:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire   [15:0] mul_ln101_fu_1307_p00;
wire   [15:0] mul_ln114_fu_1316_p00;
wire   [15:0] mul_ln127_fu_1325_p00;
wire   [15:0] mul_ln140_fu_1373_p00;
wire   [15:0] mul_ln34_fu_1262_p00;
wire   [12:0] mul_ln38_fu_560_p00;
wire   [15:0] mul_ln49_fu_1271_p00;
wire   [15:0] mul_ln62_fu_1280_p00;
wire   [15:0] mul_ln75_fu_1289_p00;
wire   [15:0] mul_ln88_fu_1298_p00;
wire   [1:0] v11_fu_669_p1;
wire   [1:0] v11_fu_669_p3;
wire  signed [1:0] v11_fu_669_p5;
wire  signed [1:0] v11_fu_669_p7;
wire   [1:0] v24_1_fu_794_p1;
wire   [1:0] v24_1_fu_794_p3;
wire  signed [1:0] v24_1_fu_794_p5;
wire  signed [1:0] v24_1_fu_794_p7;
wire   [1:0] v35_1_fu_833_p1;
wire   [1:0] v35_1_fu_833_p3;
wire  signed [1:0] v35_1_fu_833_p5;
wire  signed [1:0] v35_1_fu_833_p7;
wire   [1:0] v46_1_fu_958_p1;
wire   [1:0] v46_1_fu_958_p3;
wire  signed [1:0] v46_1_fu_958_p5;
wire  signed [1:0] v46_1_fu_958_p7;
wire   [1:0] v57_1_fu_997_p1;
wire   [1:0] v57_1_fu_997_p3;
wire  signed [1:0] v57_1_fu_997_p5;
wire  signed [1:0] v57_1_fu_997_p7;
wire   [1:0] v68_1_fu_1122_p1;
wire   [1:0] v68_1_fu_1122_p3;
wire  signed [1:0] v68_1_fu_1122_p5;
wire  signed [1:0] v68_1_fu_1122_p7;
wire   [1:0] v79_1_fu_1161_p1;
wire   [1:0] v79_1_fu_1161_p3;
wire  signed [1:0] v79_1_fu_1161_p5;
wire  signed [1:0] v79_1_fu_1161_p7;
wire   [1:0] v90_1_fu_1347_p1;
wire   [1:0] v90_1_fu_1347_p3;
wire  signed [1:0] v90_1_fu_1347_p5;
wire  signed [1:0] v90_1_fu_1347_p7;
wire   [1:0] v101_1_fu_1395_p1;
wire   [1:0] v101_1_fu_1395_p3;
wire  signed [1:0] v101_1_fu_1395_p5;
wire  signed [1:0] v101_1_fu_1395_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start_reg = 1'b0;
#0 v5_fu_122 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_474(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_ready),.mul_ln38(mul_ln38_reg_1456),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_ce1),.v228_6_q1(v228_6_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_ce1),.v228_7_q1(v228_7_q1),.mul_ln34(mul_ln34_reg_1758),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1763),.mul_ln62(mul_ln62_reg_1768),.mul_ln75(mul_ln75_reg_1773),.mul_ln88(mul_ln88_reg_1778),.mul_ln101(mul_ln101_reg_1783),.mul_ln114(mul_ln114_reg_1788),.mul_ln127(mul_ln127_reg_1793),.mul_ln140(mul_ln140_reg_1803),.v4(v4),.cmp11(cmp11_reg_1474),.empty(trunc_ln31_1_reg_1451),.v11(v11_reg_1521),.v24_1(v24_1_reg_1580),.v35_1(v35_1_reg_1585),.v46_1(v46_1_reg_1644),.v57_1(v57_1_reg_1649),.v68_1(v68_1_reg_1708),.v79_1(v79_1_reg_1713),.v90_1(v90_1_reg_1798),.v101_1(v101_1_reg_1808),.grp_fu_1813_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_din0),.grp_fu_1813_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_din1),.grp_fu_1813_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_opcode),.grp_fu_1813_p_dout0(grp_fu_176_p_dout0),.grp_fu_1813_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_ce),.grp_fu_1817_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_din0),.grp_fu_1817_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_din1),.grp_fu_1817_p_dout0(grp_fu_180_p_dout0),.grp_fu_1817_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_ce),.grp_fu_1821_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_din0),.grp_fu_1821_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_din1),.grp_fu_1821_p_dout0(grp_fu_172_p_dout0),.grp_fu_1821_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U271(.din0(mul_ln38_fu_560_p0),.din1(mul_ln38_fu_560_p1),.dout(mul_ln38_fu_560_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U272(.din0(v11_fu_669_p2),.din1(v11_fu_669_p4),.din2(v11_fu_669_p6),.din3(v11_fu_669_p8),.def(v11_fu_669_p9),.sel(trunc_ln31_reg_1438),.dout(v11_fu_669_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U273(.din0(v24_1_fu_794_p2),.din1(v24_1_fu_794_p4),.din2(v24_1_fu_794_p6),.din3(v24_1_fu_794_p8),.def(v24_1_fu_794_p9),.sel(trunc_ln31_reg_1438),.dout(v24_1_fu_794_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U274(.din0(v35_1_fu_833_p2),.din1(v35_1_fu_833_p4),.din2(v35_1_fu_833_p6),.din3(v35_1_fu_833_p8),.def(v35_1_fu_833_p9),.sel(trunc_ln31_reg_1438),.dout(v35_1_fu_833_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U275(.din0(v46_1_fu_958_p2),.din1(v46_1_fu_958_p4),.din2(v46_1_fu_958_p6),.din3(v46_1_fu_958_p8),.def(v46_1_fu_958_p9),.sel(trunc_ln31_reg_1438),.dout(v46_1_fu_958_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U276(.din0(v57_1_fu_997_p2),.din1(v57_1_fu_997_p4),.din2(v57_1_fu_997_p6),.din3(v57_1_fu_997_p8),.def(v57_1_fu_997_p9),.sel(trunc_ln31_reg_1438),.dout(v57_1_fu_997_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U277(.din0(v68_1_fu_1122_p2),.din1(v68_1_fu_1122_p4),.din2(v68_1_fu_1122_p6),.din3(v68_1_fu_1122_p8),.def(v68_1_fu_1122_p9),.sel(trunc_ln31_reg_1438),.dout(v68_1_fu_1122_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U278(.din0(v79_1_fu_1161_p2),.din1(v79_1_fu_1161_p4),.din2(v79_1_fu_1161_p6),.din3(v79_1_fu_1161_p8),.def(v79_1_fu_1161_p9),.sel(trunc_ln31_reg_1438),.dout(v79_1_fu_1161_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U279(.din0(mul_ln34_fu_1262_p0),.din1(mul_ln34_fu_1262_p1),.dout(mul_ln34_fu_1262_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U280(.din0(mul_ln49_fu_1271_p0),.din1(mul_ln49_fu_1271_p1),.dout(mul_ln49_fu_1271_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U281(.din0(mul_ln62_fu_1280_p0),.din1(mul_ln62_fu_1280_p1),.dout(mul_ln62_fu_1280_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U282(.din0(mul_ln75_fu_1289_p0),.din1(mul_ln75_fu_1289_p1),.dout(mul_ln75_fu_1289_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U283(.din0(mul_ln88_fu_1298_p0),.din1(mul_ln88_fu_1298_p1),.dout(mul_ln88_fu_1298_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U284(.din0(mul_ln101_fu_1307_p0),.din1(mul_ln101_fu_1307_p1),.dout(mul_ln101_fu_1307_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U285(.din0(mul_ln114_fu_1316_p0),.din1(mul_ln114_fu_1316_p1),.dout(mul_ln114_fu_1316_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U286(.din0(mul_ln127_fu_1325_p0),.din1(mul_ln127_fu_1325_p1),.dout(mul_ln127_fu_1325_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U287(.din0(v90_1_fu_1347_p2),.din1(v90_1_fu_1347_p4),.din2(v90_1_fu_1347_p6),.din3(v90_1_fu_1347_p8),.def(v90_1_fu_1347_p9),.sel(trunc_ln31_reg_1438),.dout(v90_1_fu_1347_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U288(.din0(mul_ln140_fu_1373_p0),.din1(mul_ln140_fu_1373_p1),.dout(mul_ln140_fu_1373_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U289(.din0(v101_1_fu_1395_p2),.din1(v101_1_fu_1395_p4),.din2(v101_1_fu_1395_p6),.din3(v101_1_fu_1395_p8),.def(v101_1_fu_1395_p9),.sel(trunc_ln31_reg_1438),.dout(v101_1_fu_1395_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_122 <= 8'd0;
    end else if (((icmp_ln32_fu_586_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_122 <= add_ln31_reg_1433;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_462 <= add_ln32_reg_1516;
    end else if (((icmp_ln31_fu_526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_462 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_1433 <= add_ln31_fu_532_p2;
        cmp11_reg_1474 <= cmp11_fu_580_p2;
        mul_ln38_reg_1456 <= mul_ln38_fu_560_p2;
        trunc_ln31_1_reg_1451 <= trunc_ln31_1_fu_542_p1;
        trunc_ln31_reg_1438 <= trunc_ln31_fu_538_p1;
        zext_ln31_reg_1461[5 : 0] <= zext_ln31_fu_576_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1516 <= add_ln32_fu_643_p2;
        empty_265_reg_1502 <= empty_265_fu_631_p2;
        empty_272_reg_1509 <= empty_272_fu_637_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_279_reg_1566 <= empty_279_fu_766_p2;
        empty_286_reg_1573 <= empty_286_fu_772_p2;
        v11_reg_1521 <= v11_fu_669_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_293_reg_1630 <= empty_293_fu_930_p2;
        empty_300_reg_1637 <= empty_300_fu_936_p2;
        v24_1_reg_1580 <= v24_1_fu_794_p11;
        v35_1_reg_1585 <= v35_1_fu_833_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_307_reg_1694 <= empty_307_fu_1094_p2;
        empty_314_reg_1701 <= empty_314_fu_1100_p2;
        v46_1_reg_1644 <= v46_1_fu_958_p11;
        v57_1_reg_1649 <= v57_1_fu_997_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_1783 <= mul_ln101_fu_1307_p2;
        mul_ln114_reg_1788 <= mul_ln114_fu_1316_p2;
        mul_ln127_reg_1793 <= mul_ln127_fu_1325_p2;
        mul_ln140_reg_1803 <= mul_ln140_fu_1373_p2;
        mul_ln34_reg_1758 <= mul_ln34_fu_1262_p2;
        mul_ln49_reg_1763 <= mul_ln49_fu_1271_p2;
        mul_ln62_reg_1768 <= mul_ln62_fu_1280_p2;
        mul_ln75_reg_1773 <= mul_ln75_fu_1289_p2;
        mul_ln88_reg_1778 <= mul_ln88_fu_1298_p2;
        v101_1_reg_1808 <= v101_1_fu_1395_p11;
        v90_1_reg_1798 <= v90_1_fu_1347_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v68_1_reg_1708 <= v68_1_fu_1122_p11;
        v79_1_reg_1713 <= v79_1_fu_1161_p11;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_fu_526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1813_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_ce;
    end else begin
        grp_fu_1813_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1817_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_ce;
    end else begin
        grp_fu_1817_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1821_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_ce;
    end else begin
        grp_fu_1821_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast1053_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast1051_fu_1049_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast1049_fu_885_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast1048_fu_758_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast1047_fu_623_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast1054_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast1052_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast1050_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_721_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast1053_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast1051_fu_1049_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast1049_fu_885_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast1048_fu_758_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast1047_fu_623_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast1054_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast1052_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast1050_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast_fu_721_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast1053_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast1051_fu_1049_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast1049_fu_885_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast1048_fu_758_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast1047_fu_623_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast1054_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast1052_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast1050_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_721_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast1053_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast1051_fu_1049_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast1049_fu_885_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast1048_fu_758_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast1047_fu_623_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast1054_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast1052_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast1050_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast_fu_721_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v236_blk_n = v236_empty_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln31_fu_526_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_586_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_532_p2 = (v5_fu_122 + 8'd1);
assign add_ln32_fu_643_p2 = (v6_reg_462 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_580_p2 = ((v5_fu_122 == 8'd0) ? 1'b1 : 1'b0);
assign empty_260_fu_618_p2 = (empty_fu_612_p2 + zext_ln31_reg_1461);
assign empty_265_fu_631_p2 = (v6_reg_462 + 8'd1);
assign empty_266_fu_710_p2 = (p_shl2_fu_692_p3 - p_shl1101_fu_706_p1);
assign empty_267_fu_716_p2 = (empty_266_fu_710_p2 + zext_ln31_reg_1461);
assign empty_272_fu_637_p2 = (v6_reg_462 + 8'd2);
assign empty_273_fu_747_p2 = (p_shl3_fu_729_p3 - p_shl1099_fu_743_p1);
assign empty_274_fu_753_p2 = (empty_273_fu_747_p2 + zext_ln31_reg_1461);
assign empty_279_fu_766_p2 = (v6_reg_462 + 8'd3);
assign empty_280_fu_874_p2 = (p_shl4_fu_856_p3 - p_shl1097_fu_870_p1);
assign empty_281_fu_880_p2 = (empty_280_fu_874_p2 + zext_ln31_reg_1461);
assign empty_286_fu_772_p2 = (v6_reg_462 + 8'd4);
assign empty_287_fu_911_p2 = (p_shl5_fu_893_p3 - p_shl1095_fu_907_p1);
assign empty_288_fu_917_p2 = (empty_287_fu_911_p2 + zext_ln31_reg_1461);
assign empty_293_fu_930_p2 = (v6_reg_462 + 8'd5);
assign empty_294_fu_1038_p2 = (p_shl6_fu_1020_p3 - p_shl1093_fu_1034_p1);
assign empty_295_fu_1044_p2 = (empty_294_fu_1038_p2 + zext_ln31_reg_1461);
assign empty_300_fu_936_p2 = (v6_reg_462 + 8'd6);
assign empty_301_fu_1075_p2 = (p_shl7_fu_1057_p3 - p_shl1091_fu_1071_p1);
assign empty_302_fu_1081_p2 = (empty_301_fu_1075_p2 + zext_ln31_reg_1461);
assign empty_307_fu_1094_p2 = (v6_reg_462 + 8'd7);
assign empty_308_fu_1202_p2 = (p_shl8_fu_1184_p3 - p_shl1089_fu_1198_p1);
assign empty_309_fu_1208_p2 = (empty_308_fu_1202_p2 + zext_ln31_reg_1461);
assign empty_314_fu_1100_p2 = (v6_reg_462 + 8'd8);
assign empty_315_fu_1239_p2 = (p_shl_fu_1221_p3 - p_shl1087_fu_1235_p1);
assign empty_316_fu_1245_p2 = (empty_315_fu_1239_p2 + zext_ln31_reg_1461);
assign empty_fu_612_p2 = (p_shl1_fu_592_p3 - p_shl1103_fu_608_p1);
assign grp_fu_172_p_ce = grp_fu_1821_ce;
assign grp_fu_172_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1821_p_din1;
assign grp_fu_176_p_ce = grp_fu_1813_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1813_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_1817_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_grp_fu_1817_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_ap_start_reg;
assign icmp_ln31_fu_526_p2 = ((v5_fu_122 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_586_p2 = ((v6_reg_462 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln31_1_fu_566_p4 = {{v5_fu_122[7:2]}};
assign lshr_ln_fu_546_p4 = {{v5_fu_122[7:3]}};
assign mul_ln101_fu_1307_p0 = mul_ln101_fu_1307_p00;
assign mul_ln101_fu_1307_p00 = empty_293_reg_1630;
assign mul_ln101_fu_1307_p1 = 16'd220;
assign mul_ln114_fu_1316_p0 = mul_ln114_fu_1316_p00;
assign mul_ln114_fu_1316_p00 = empty_300_reg_1637;
assign mul_ln114_fu_1316_p1 = 16'd220;
assign mul_ln127_fu_1325_p0 = mul_ln127_fu_1325_p00;
assign mul_ln127_fu_1325_p00 = empty_307_reg_1694;
assign mul_ln127_fu_1325_p1 = 16'd220;
assign mul_ln140_fu_1373_p0 = mul_ln140_fu_1373_p00;
assign mul_ln140_fu_1373_p00 = empty_314_reg_1701;
assign mul_ln140_fu_1373_p1 = 16'd220;
assign mul_ln34_fu_1262_p0 = mul_ln34_fu_1262_p00;
assign mul_ln34_fu_1262_p00 = v6_reg_462;
assign mul_ln34_fu_1262_p1 = 16'd220;
assign mul_ln38_fu_560_p0 = mul_ln38_fu_560_p00;
assign mul_ln38_fu_560_p00 = lshr_ln_fu_546_p4;
assign mul_ln38_fu_560_p1 = 13'd220;
assign mul_ln49_fu_1271_p0 = mul_ln49_fu_1271_p00;
assign mul_ln49_fu_1271_p00 = empty_265_reg_1502;
assign mul_ln49_fu_1271_p1 = 16'd220;
assign mul_ln62_fu_1280_p0 = mul_ln62_fu_1280_p00;
assign mul_ln62_fu_1280_p00 = empty_272_reg_1509;
assign mul_ln62_fu_1280_p1 = 16'd220;
assign mul_ln75_fu_1289_p0 = mul_ln75_fu_1289_p00;
assign mul_ln75_fu_1289_p00 = empty_279_reg_1566;
assign mul_ln75_fu_1289_p1 = 16'd220;
assign mul_ln88_fu_1298_p0 = mul_ln88_fu_1298_p00;
assign mul_ln88_fu_1298_p00 = empty_286_reg_1573;
assign mul_ln88_fu_1298_p1 = 16'd220;
assign p_cast1047_fu_623_p1 = empty_260_fu_618_p2;
assign p_cast1048_fu_758_p1 = empty_274_fu_753_p2;
assign p_cast1049_fu_885_p1 = empty_281_fu_880_p2;
assign p_cast1050_fu_922_p1 = empty_288_fu_917_p2;
assign p_cast1051_fu_1049_p1 = empty_295_fu_1044_p2;
assign p_cast1052_fu_1086_p1 = empty_302_fu_1081_p2;
assign p_cast1053_fu_1213_p1 = empty_309_fu_1208_p2;
assign p_cast1054_fu_1250_p1 = empty_316_fu_1245_p2;
assign p_cast_fu_721_p1 = empty_267_fu_716_p2;
assign p_shl1087_fu_1235_p1 = tmp_11_fu_1228_p3;
assign p_shl1089_fu_1198_p1 = tmp_10_fu_1191_p3;
assign p_shl1091_fu_1071_p1 = tmp_9_fu_1064_p3;
assign p_shl1093_fu_1034_p1 = tmp_8_fu_1027_p3;
assign p_shl1095_fu_907_p1 = tmp_7_fu_900_p3;
assign p_shl1097_fu_870_p1 = tmp_6_fu_863_p3;
assign p_shl1099_fu_743_p1 = tmp_5_fu_736_p3;
assign p_shl1101_fu_706_p1 = tmp_4_fu_699_p3;
assign p_shl1103_fu_608_p1 = tmp_fu_600_p3;
assign p_shl1_fu_592_p3 = {{v6_reg_462}, {6'd0}};
assign p_shl2_fu_692_p3 = {{empty_265_reg_1502}, {6'd0}};
assign p_shl3_fu_729_p3 = {{empty_272_reg_1509}, {6'd0}};
assign p_shl4_fu_856_p3 = {{empty_279_reg_1566}, {6'd0}};
assign p_shl5_fu_893_p3 = {{empty_286_reg_1573}, {6'd0}};
assign p_shl6_fu_1020_p3 = {{empty_293_reg_1630}, {6'd0}};
assign p_shl7_fu_1057_p3 = {{empty_300_reg_1637}, {6'd0}};
assign p_shl8_fu_1184_p3 = {{empty_307_reg_1694}, {6'd0}};
assign p_shl_fu_1221_p3 = {{empty_314_reg_1701}, {6'd0}};
assign tmp_10_fu_1191_p3 = {{empty_307_reg_1694}, {4'd0}};
assign tmp_11_fu_1228_p3 = {{empty_314_reg_1701}, {4'd0}};
assign tmp_4_fu_699_p3 = {{empty_265_reg_1502}, {4'd0}};
assign tmp_5_fu_736_p3 = {{empty_272_reg_1509}, {4'd0}};
assign tmp_6_fu_863_p3 = {{empty_279_reg_1566}, {4'd0}};
assign tmp_7_fu_900_p3 = {{empty_286_reg_1573}, {4'd0}};
assign tmp_8_fu_1027_p3 = {{empty_293_reg_1630}, {4'd0}};
assign tmp_9_fu_1064_p3 = {{empty_300_reg_1637}, {4'd0}};
assign tmp_fu_600_p3 = {{v6_reg_462}, {4'd0}};
assign trunc_ln31_1_fu_542_p1 = v5_fu_122[2:0];
assign trunc_ln31_fu_538_p1 = v5_fu_122[1:0];
assign v101_1_fu_1395_p2 = v224_0_q1;
assign v101_1_fu_1395_p4 = v224_1_q1;
assign v101_1_fu_1395_p6 = v224_2_q1;
assign v101_1_fu_1395_p8 = v224_3_q1;
assign v101_1_fu_1395_p9 = 'bx;
assign v11_fu_669_p2 = v224_0_q0;
assign v11_fu_669_p4 = v224_1_q0;
assign v11_fu_669_p6 = v224_2_q0;
assign v11_fu_669_p8 = v224_3_q0;
assign v11_fu_669_p9 = 'bx;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v224_2_address0 = v224_2_address0_local;
assign v224_2_address1 = v224_2_address1_local;
assign v224_2_ce0 = v224_2_ce0_local;
assign v224_2_ce1 = v224_2_ce1_local;
assign v224_3_address0 = v224_3_address0_local;
assign v224_3_address1 = v224_3_address1_local;
assign v224_3_ce0 = v224_3_ce0_local;
assign v224_3_ce1 = v224_3_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v228_7_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_474_v229_we1;
assign v236_read = v236_read_local;
assign v24_1_fu_794_p2 = v224_0_q1;
assign v24_1_fu_794_p4 = v224_1_q1;
assign v24_1_fu_794_p6 = v224_2_q1;
assign v24_1_fu_794_p8 = v224_3_q1;
assign v24_1_fu_794_p9 = 'bx;
assign v35_1_fu_833_p2 = v224_0_q0;
assign v35_1_fu_833_p4 = v224_1_q0;
assign v35_1_fu_833_p6 = v224_2_q0;
assign v35_1_fu_833_p8 = v224_3_q0;
assign v35_1_fu_833_p9 = 'bx;
assign v46_1_fu_958_p2 = v224_0_q0;
assign v46_1_fu_958_p4 = v224_1_q0;
assign v46_1_fu_958_p6 = v224_2_q0;
assign v46_1_fu_958_p8 = v224_3_q0;
assign v46_1_fu_958_p9 = 'bx;
assign v57_1_fu_997_p2 = v224_0_q1;
assign v57_1_fu_997_p4 = v224_1_q1;
assign v57_1_fu_997_p6 = v224_2_q1;
assign v57_1_fu_997_p8 = v224_3_q1;
assign v57_1_fu_997_p9 = 'bx;
assign v68_1_fu_1122_p2 = v224_0_q0;
assign v68_1_fu_1122_p4 = v224_1_q0;
assign v68_1_fu_1122_p6 = v224_2_q0;
assign v68_1_fu_1122_p8 = v224_3_q0;
assign v68_1_fu_1122_p9 = 'bx;
assign v79_1_fu_1161_p2 = v224_0_q1;
assign v79_1_fu_1161_p4 = v224_1_q1;
assign v79_1_fu_1161_p6 = v224_2_q1;
assign v79_1_fu_1161_p8 = v224_3_q1;
assign v79_1_fu_1161_p9 = 'bx;
assign v90_1_fu_1347_p2 = v224_0_q0;
assign v90_1_fu_1347_p4 = v224_1_q0;
assign v90_1_fu_1347_p6 = v224_2_q0;
assign v90_1_fu_1347_p8 = v224_3_q0;
assign v90_1_fu_1347_p9 = 'bx;
assign zext_ln31_fu_576_p1 = lshr_ln31_1_fu_566_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1461[13:6] <= 8'b00000000;
end
endmodule 