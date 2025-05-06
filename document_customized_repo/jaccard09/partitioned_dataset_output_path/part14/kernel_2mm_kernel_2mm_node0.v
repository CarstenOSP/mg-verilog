
module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce);  
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [14:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [14:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [14:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [14:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
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
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
output  [1:0] grp_fu_144_p_opcode;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [31:0] grp_fu_500_p3;
reg   [31:0] reg_514;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire   [31:0] grp_fu_507_p3;
reg   [31:0] reg_518;
reg   [31:0] reg_522;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_526;
reg   [31:0] reg_530;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_534;
reg   [31:0] reg_538;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_542;
reg   [15:0] phi_mul_load_reg_1315;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_562_p2;
reg   [15:0] add_ln31_1_reg_1321;
wire   [7:0] add_ln31_fu_574_p2;
reg   [7:0] add_ln31_reg_1329;
wire   [0:0] trunc_ln31_fu_580_p1;
reg   [0:0] trunc_ln31_reg_1334;
wire   [14:0] zext_ln31_fu_594_p1;
reg   [14:0] zext_ln31_reg_1340;
wire   [0:0] cmp11_fu_598_p2;
reg   [0:0] cmp11_reg_1362;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_s_fu_624_p3;
reg   [7:0] tmp_s_reg_1376;
wire   [7:0] add_ln32_1_fu_636_p2;
reg   [7:0] add_ln32_1_reg_1386;
wire   [7:0] empty_127_fu_650_p2;
reg   [7:0] empty_127_reg_1391;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_130_fu_660_p2;
reg   [7:0] empty_130_reg_1401;
wire   [7:0] empty_133_fu_670_p2;
reg   [7:0] empty_133_reg_1411;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_136_fu_680_p2;
reg   [7:0] empty_136_reg_1421;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_139_fu_700_p2;
reg   [7:0] empty_139_reg_1451;
wire   [7:0] empty_142_fu_710_p2;
reg   [7:0] empty_142_reg_1461;
wire   [7:0] empty_145_fu_730_p2;
reg   [7:0] empty_145_reg_1491;
wire   [7:0] add_ln32_fu_740_p2;
reg   [7:0] add_ln32_reg_1501;
wire   [7:0] empty_150_fu_760_p2;
reg   [7:0] empty_150_reg_1531;
wire   [7:0] empty_153_fu_770_p2;
reg   [7:0] empty_153_reg_1541;
wire   [7:0] empty_156_fu_790_p2;
reg   [7:0] empty_156_reg_1571;
wire   [7:0] empty_159_fu_800_p2;
reg   [7:0] empty_159_reg_1581;
wire   [7:0] empty_162_fu_820_p2;
reg   [7:0] empty_162_reg_1611;
wire   [7:0] empty_165_fu_830_p2;
reg   [7:0] empty_165_reg_1621;
wire   [15:0] mul_ln34_fu_844_p2;
reg   [15:0] mul_ln34_reg_1631;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln49_fu_853_p2;
reg   [15:0] mul_ln49_reg_1636;
wire   [15:0] mul_ln62_fu_862_p2;
reg   [15:0] mul_ln62_reg_1641;
wire   [15:0] mul_ln75_fu_871_p2;
reg   [15:0] mul_ln75_reg_1646;
wire   [15:0] mul_ln88_fu_880_p2;
reg   [15:0] mul_ln88_reg_1651;
wire   [15:0] mul_ln101_fu_889_p2;
reg   [15:0] mul_ln101_reg_1656;
wire   [15:0] mul_ln114_fu_898_p2;
reg   [15:0] mul_ln114_reg_1661;
wire   [15:0] mul_ln127_fu_907_p2;
reg   [15:0] mul_ln127_reg_1666;
wire   [15:0] mul_ln140_fu_916_p2;
reg   [15:0] mul_ln140_reg_1671;
reg   [31:0] v101_v_reg_1676;
reg   [31:0] v11_1_v_reg_1681;
wire   [7:0] empty_168_fu_932_p2;
reg   [7:0] empty_168_reg_1706;
wire   [7:0] empty_171_fu_942_p2;
reg   [7:0] empty_171_reg_1716;
wire   [31:0] v11_fu_952_p1;
reg   [31:0] v11_reg_1726;
wire   [31:0] v24_fu_957_p1;
reg   [31:0] v24_reg_1731;
wire   [31:0] v35_fu_962_p1;
reg   [31:0] v35_reg_1736;
wire   [31:0] v46_fu_967_p1;
reg   [31:0] v46_reg_1741;
wire   [31:0] v57_fu_972_p1;
reg   [31:0] v57_reg_1746;
wire   [31:0] v68_fu_977_p1;
reg   [31:0] v68_reg_1751;
wire   [31:0] v79_fu_982_p1;
reg   [31:0] v79_reg_1756;
wire   [31:0] v90_fu_987_p1;
reg   [31:0] v90_reg_1761;
wire   [31:0] v101_fu_992_p1;
reg   [31:0] v101_reg_1766;
wire   [15:0] mul_ln34_1_fu_1029_p2;
reg   [15:0] mul_ln34_1_reg_1831;
wire   [15:0] mul_ln49_1_fu_1038_p2;
reg   [15:0] mul_ln49_1_reg_1836;
wire   [15:0] mul_ln62_1_fu_1047_p2;
reg   [15:0] mul_ln62_1_reg_1841;
wire   [15:0] mul_ln75_1_fu_1056_p2;
reg   [15:0] mul_ln75_1_reg_1846;
wire   [15:0] mul_ln88_1_fu_1065_p2;
reg   [15:0] mul_ln88_1_reg_1851;
wire   [15:0] mul_ln101_1_fu_1074_p2;
reg   [15:0] mul_ln101_1_reg_1856;
wire   [15:0] mul_ln114_1_fu_1083_p2;
reg   [15:0] mul_ln114_1_reg_1861;
wire   [15:0] mul_ln127_1_fu_1092_p2;
reg   [15:0] mul_ln127_1_reg_1866;
wire   [15:0] mul_ln140_1_fu_1101_p2;
reg   [15:0] mul_ln140_1_reg_1871;
wire   [31:0] v11_1_fu_1107_p1;
reg   [31:0] v11_1_reg_1876;
wire    ap_CS_fsm_state16;
wire   [31:0] v24_1_fu_1111_p1;
reg   [31:0] v24_1_reg_1881;
wire   [31:0] v35_1_fu_1116_p1;
reg   [31:0] v35_1_reg_1886;
wire   [31:0] v46_1_fu_1121_p1;
reg   [31:0] v46_1_reg_1891;
wire   [31:0] v57_1_fu_1126_p1;
reg   [31:0] v57_1_reg_1896;
wire   [31:0] v68_1_fu_1131_p1;
reg   [31:0] v68_1_reg_1901;
wire   [31:0] v79_1_fu_1136_p1;
reg   [31:0] v79_1_reg_1906;
wire   [31:0] v90_1_fu_1141_p1;
reg   [31:0] v90_1_reg_1911;
wire   [31:0] v101_1_fu_1146_p1;
reg   [31:0] v101_1_reg_1916;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_ce;
reg   [7:0] v6_reg_430;
wire    ap_CS_fsm_state17;
wire   [0:0] icmp_ln31_fu_568_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start_reg;
wire   [63:0] p_cast728_fu_690_p1;
wire   [63:0] p_cast_fu_695_p1;
wire   [63:0] p_cast729_fu_720_p1;
wire   [63:0] p_cast730_fu_725_p1;
wire   [63:0] p_cast731_fu_750_p1;
wire   [63:0] p_cast732_fu_755_p1;
wire   [63:0] p_cast733_fu_780_p1;
wire   [63:0] p_cast734_fu_785_p1;
wire   [63:0] p_cast735_fu_810_p1;
wire   [63:0] p_cast736_fu_815_p1;
wire   [63:0] p_cast737_fu_922_p1;
wire   [63:0] p_cast738_fu_927_p1;
wire   [63:0] p_cast739_fu_996_p1;
wire   [63:0] p_cast740_fu_1001_p1;
wire   [63:0] p_cast741_fu_1006_p1;
wire   [63:0] p_cast742_fu_1011_p1;
wire   [63:0] p_cast743_fu_1016_p1;
wire   [63:0] p_cast744_fu_1021_p1;
reg   [15:0] phi_mul_fu_104;
wire   [0:0] icmp_ln32_fu_604_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_108;
reg    v236_read_local;
reg    v224_0_ce1_local;
reg   [14:0] v224_0_address1_local;
reg    v224_0_ce0_local;
reg   [14:0] v224_0_address0_local;
reg    v224_1_ce1_local;
reg   [14:0] v224_1_address1_local;
reg    v224_1_ce0_local;
reg   [14:0] v224_1_address0_local;
wire   [6:0] lshr_ln_fu_584_p4;
wire   [6:0] tmp_fu_614_p4;
wire   [14:0] grp_fu_1151_p3;
wire   [14:0] grp_fu_1159_p3;
wire   [14:0] grp_fu_1167_p3;
wire   [14:0] grp_fu_1175_p3;
wire   [14:0] grp_fu_1183_p3;
wire   [14:0] grp_fu_1191_p3;
wire   [14:0] grp_fu_1199_p3;
wire   [14:0] grp_fu_1207_p3;
wire   [14:0] grp_fu_1215_p3;
wire   [14:0] grp_fu_1223_p3;
wire   [7:0] mul_ln34_fu_844_p0;
wire   [8:0] mul_ln34_fu_844_p1;
wire   [7:0] mul_ln49_fu_853_p0;
wire   [8:0] mul_ln49_fu_853_p1;
wire   [7:0] mul_ln62_fu_862_p0;
wire   [8:0] mul_ln62_fu_862_p1;
wire   [7:0] mul_ln75_fu_871_p0;
wire   [8:0] mul_ln75_fu_871_p1;
wire   [7:0] mul_ln88_fu_880_p0;
wire   [8:0] mul_ln88_fu_880_p1;
wire   [7:0] mul_ln101_fu_889_p0;
wire   [8:0] mul_ln101_fu_889_p1;
wire   [7:0] mul_ln114_fu_898_p0;
wire   [8:0] mul_ln114_fu_898_p1;
wire   [7:0] mul_ln127_fu_907_p0;
wire   [8:0] mul_ln127_fu_907_p1;
wire   [7:0] mul_ln140_fu_916_p0;
wire   [8:0] mul_ln140_fu_916_p1;
wire   [14:0] grp_fu_1231_p3;
wire   [14:0] grp_fu_1239_p3;
wire   [14:0] grp_fu_1247_p3;
wire   [14:0] grp_fu_1255_p3;
wire   [14:0] grp_fu_1263_p3;
wire   [14:0] grp_fu_1271_p3;
wire   [14:0] grp_fu_1279_p3;
wire   [14:0] grp_fu_1287_p3;
wire   [7:0] mul_ln34_1_fu_1029_p0;
wire   [8:0] mul_ln34_1_fu_1029_p1;
wire   [7:0] mul_ln49_1_fu_1038_p0;
wire   [8:0] mul_ln49_1_fu_1038_p1;
wire   [7:0] mul_ln62_1_fu_1047_p0;
wire   [8:0] mul_ln62_1_fu_1047_p1;
wire   [7:0] mul_ln75_1_fu_1056_p0;
wire   [8:0] mul_ln75_1_fu_1056_p1;
wire   [7:0] mul_ln88_1_fu_1065_p0;
wire   [8:0] mul_ln88_1_fu_1065_p1;
wire   [7:0] mul_ln101_1_fu_1074_p0;
wire   [8:0] mul_ln101_1_fu_1074_p1;
wire   [7:0] mul_ln114_1_fu_1083_p0;
wire   [8:0] mul_ln114_1_fu_1083_p1;
wire   [7:0] mul_ln127_1_fu_1092_p0;
wire   [8:0] mul_ln127_1_fu_1092_p1;
wire   [7:0] mul_ln140_1_fu_1101_p0;
wire   [8:0] mul_ln140_1_fu_1101_p1;
wire   [7:0] grp_fu_1151_p0;
wire   [6:0] grp_fu_1151_p1;
wire   [6:0] grp_fu_1151_p2;
wire   [7:0] grp_fu_1159_p0;
wire   [6:0] grp_fu_1159_p1;
wire   [6:0] grp_fu_1159_p2;
wire   [7:0] grp_fu_1167_p0;
wire   [6:0] grp_fu_1167_p1;
wire   [6:0] grp_fu_1167_p2;
wire   [7:0] grp_fu_1175_p0;
wire   [6:0] grp_fu_1175_p1;
wire   [6:0] grp_fu_1175_p2;
wire   [7:0] grp_fu_1183_p0;
wire   [6:0] grp_fu_1183_p1;
wire   [6:0] grp_fu_1183_p2;
wire   [7:0] grp_fu_1191_p0;
wire   [6:0] grp_fu_1191_p1;
wire   [6:0] grp_fu_1191_p2;
wire   [7:0] grp_fu_1199_p0;
wire   [6:0] grp_fu_1199_p1;
wire   [6:0] grp_fu_1199_p2;
wire   [7:0] grp_fu_1207_p0;
wire   [6:0] grp_fu_1207_p1;
wire   [6:0] grp_fu_1207_p2;
wire   [7:0] grp_fu_1215_p0;
wire   [6:0] grp_fu_1215_p1;
wire   [6:0] grp_fu_1215_p2;
wire   [7:0] grp_fu_1223_p0;
wire   [6:0] grp_fu_1223_p1;
wire   [6:0] grp_fu_1223_p2;
wire   [7:0] grp_fu_1231_p0;
wire   [6:0] grp_fu_1231_p1;
wire   [6:0] grp_fu_1231_p2;
wire   [7:0] grp_fu_1239_p0;
wire   [6:0] grp_fu_1239_p1;
wire   [6:0] grp_fu_1239_p2;
wire   [7:0] grp_fu_1247_p0;
wire   [6:0] grp_fu_1247_p1;
wire   [6:0] grp_fu_1247_p2;
wire   [7:0] grp_fu_1255_p0;
wire   [6:0] grp_fu_1255_p1;
wire   [6:0] grp_fu_1255_p2;
wire   [7:0] grp_fu_1263_p0;
wire   [6:0] grp_fu_1263_p1;
wire   [6:0] grp_fu_1263_p2;
wire   [7:0] grp_fu_1271_p0;
wire   [6:0] grp_fu_1271_p1;
wire   [6:0] grp_fu_1271_p2;
wire   [7:0] grp_fu_1279_p0;
wire   [6:0] grp_fu_1279_p1;
wire   [6:0] grp_fu_1279_p2;
wire   [7:0] grp_fu_1287_p0;
wire   [6:0] grp_fu_1287_p1;
wire   [6:0] grp_fu_1287_p2;
reg    grp_fu_1263_ce;
reg    grp_fu_1271_ce;
reg    grp_fu_1279_ce;
reg    grp_fu_1287_ce;
reg   [31:0] grp_fu_1921_p0;
reg   [31:0] grp_fu_1921_p1;
reg    grp_fu_1921_ce;
reg   [31:0] grp_fu_1925_p0;
reg   [31:0] grp_fu_1925_p1;
reg    grp_fu_1925_ce;
reg   [31:0] grp_fu_1929_p0;
reg   [31:0] grp_fu_1929_p1;
reg    grp_fu_1929_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire   [14:0] grp_fu_1151_p00;
wire   [14:0] grp_fu_1159_p00;
wire   [14:0] grp_fu_1167_p00;
wire   [14:0] grp_fu_1175_p00;
wire   [14:0] grp_fu_1183_p00;
wire   [14:0] grp_fu_1191_p00;
wire   [14:0] grp_fu_1199_p00;
wire   [14:0] grp_fu_1207_p00;
wire   [14:0] grp_fu_1215_p00;
wire   [14:0] grp_fu_1223_p00;
wire   [14:0] grp_fu_1231_p00;
wire   [14:0] grp_fu_1239_p00;
wire   [14:0] grp_fu_1247_p00;
wire   [14:0] grp_fu_1255_p00;
wire   [14:0] grp_fu_1263_p00;
wire   [14:0] grp_fu_1271_p00;
wire   [14:0] grp_fu_1279_p00;
wire   [14:0] grp_fu_1287_p00;
wire   [15:0] mul_ln101_1_fu_1074_p00;
wire   [15:0] mul_ln101_fu_889_p00;
wire   [15:0] mul_ln114_1_fu_1083_p00;
wire   [15:0] mul_ln114_fu_898_p00;
wire   [15:0] mul_ln127_1_fu_1092_p00;
wire   [15:0] mul_ln127_fu_907_p00;
wire   [15:0] mul_ln140_1_fu_1101_p00;
wire   [15:0] mul_ln140_fu_916_p00;
wire   [15:0] mul_ln34_1_fu_1029_p00;
wire   [15:0] mul_ln34_fu_844_p00;
wire   [15:0] mul_ln49_1_fu_1038_p00;
wire   [15:0] mul_ln49_fu_853_p00;
wire   [15:0] mul_ln62_1_fu_1047_p00;
wire   [15:0] mul_ln62_fu_862_p00;
wire   [15:0] mul_ln75_1_fu_1056_p00;
wire   [15:0] mul_ln75_fu_871_p00;
wire   [15:0] mul_ln88_1_fu_1065_p00;
wire   [15:0] mul_ln88_fu_880_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start_reg = 1'b0;
#0 phi_mul_fu_104 = 16'd0;
#0 v5_fu_108 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_442(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_ready),.phi_mul(phi_mul_load_reg_1315),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1631),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_1636),.mul_ln62(mul_ln62_reg_1641),.mul_ln75(mul_ln75_reg_1646),.mul_ln88(mul_ln88_reg_1651),.mul_ln101(mul_ln101_reg_1656),.mul_ln114(mul_ln114_reg_1661),.mul_ln127(mul_ln127_reg_1666),.mul_ln140(mul_ln140_reg_1671),.v4(v4),.cmp11(cmp11_reg_1362),.v11(v11_reg_1726),.v24(v24_reg_1731),.v35(v35_reg_1736),.v46(v46_reg_1741),.v57(v57_reg_1746),.v68(v68_reg_1751),.v79(v79_reg_1756),.v90(v90_reg_1761),.v101(v101_reg_1766),.grp_fu_1921_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_din0),.grp_fu_1921_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_din1),.grp_fu_1921_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_opcode),.grp_fu_1921_p_dout0(grp_fu_144_p_dout0),.grp_fu_1921_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_ce),.grp_fu_1925_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_din0),.grp_fu_1925_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_din1),.grp_fu_1925_p_dout0(grp_fu_148_p_dout0),.grp_fu_1925_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_ce),.grp_fu_1929_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_din0),.grp_fu_1929_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_din1),.grp_fu_1929_p_dout0(grp_fu_152_p_dout0),.grp_fu_1929_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_26 grp_kernel_2mm_node0_Pipeline_label_26_fu_471(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_ready),.phi_mul(phi_mul_load_reg_1315),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_ce1),.v228_q1(v228_q1),.mul_ln34_1(mul_ln34_1_reg_1831),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_1836),.mul_ln62_1(mul_ln62_1_reg_1841),.mul_ln75_1(mul_ln75_1_reg_1846),.mul_ln88_1(mul_ln88_1_reg_1851),.mul_ln101_1(mul_ln101_1_reg_1856),.mul_ln114_1(mul_ln114_1_reg_1861),.mul_ln127_1(mul_ln127_1_reg_1866),.mul_ln140_1(mul_ln140_1_reg_1871),.v4(v4),.cmp11(cmp11_reg_1362),.v11_1(v11_1_reg_1876),.v24_1(v24_1_reg_1881),.v35_1(v35_1_reg_1886),.v46_1(v46_1_reg_1891),.v57_1(v57_1_reg_1896),.v68_1(v68_1_reg_1901),.v79_1(v79_1_reg_1906),.v90_1(v90_1_reg_1911),.v101_1(v101_1_reg_1916),.grp_fu_1921_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_din0),.grp_fu_1921_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_din1),.grp_fu_1921_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_opcode),.grp_fu_1921_p_dout0(grp_fu_144_p_dout0),.grp_fu_1921_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_ce),.grp_fu_1925_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_din0),.grp_fu_1925_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_din1),.grp_fu_1925_p_dout0(grp_fu_148_p_dout0),.grp_fu_1925_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_ce),.grp_fu_1929_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_din0),.grp_fu_1929_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_din1),.grp_fu_1929_p_dout0(grp_fu_152_p_dout0),.grp_fu_1929_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U243(.din0(mul_ln34_fu_844_p0),.din1(mul_ln34_fu_844_p1),.dout(mul_ln34_fu_844_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U244(.din0(mul_ln49_fu_853_p0),.din1(mul_ln49_fu_853_p1),.dout(mul_ln49_fu_853_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U245(.din0(mul_ln62_fu_862_p0),.din1(mul_ln62_fu_862_p1),.dout(mul_ln62_fu_862_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U246(.din0(mul_ln75_fu_871_p0),.din1(mul_ln75_fu_871_p1),.dout(mul_ln75_fu_871_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U247(.din0(mul_ln88_fu_880_p0),.din1(mul_ln88_fu_880_p1),.dout(mul_ln88_fu_880_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U248(.din0(mul_ln101_fu_889_p0),.din1(mul_ln101_fu_889_p1),.dout(mul_ln101_fu_889_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U249(.din0(mul_ln114_fu_898_p0),.din1(mul_ln114_fu_898_p1),.dout(mul_ln114_fu_898_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U250(.din0(mul_ln127_fu_907_p0),.din1(mul_ln127_fu_907_p1),.dout(mul_ln127_fu_907_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U251(.din0(mul_ln140_fu_916_p0),.din1(mul_ln140_fu_916_p1),.dout(mul_ln140_fu_916_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U252(.din0(mul_ln34_1_fu_1029_p0),.din1(mul_ln34_1_fu_1029_p1),.dout(mul_ln34_1_fu_1029_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U253(.din0(mul_ln49_1_fu_1038_p0),.din1(mul_ln49_1_fu_1038_p1),.dout(mul_ln49_1_fu_1038_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U254(.din0(mul_ln62_1_fu_1047_p0),.din1(mul_ln62_1_fu_1047_p1),.dout(mul_ln62_1_fu_1047_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U255(.din0(mul_ln75_1_fu_1056_p0),.din1(mul_ln75_1_fu_1056_p1),.dout(mul_ln75_1_fu_1056_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U256(.din0(mul_ln88_1_fu_1065_p0),.din1(mul_ln88_1_fu_1065_p1),.dout(mul_ln88_1_fu_1065_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U257(.din0(mul_ln101_1_fu_1074_p0),.din1(mul_ln101_1_fu_1074_p1),.dout(mul_ln101_1_fu_1074_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U258(.din0(mul_ln114_1_fu_1083_p0),.din1(mul_ln114_1_fu_1083_p1),.dout(mul_ln114_1_fu_1083_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U259(.din0(mul_ln127_1_fu_1092_p0),.din1(mul_ln127_1_fu_1092_p1),.dout(mul_ln127_1_fu_1092_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U260(.din0(mul_ln140_1_fu_1101_p0),.din1(mul_ln140_1_fu_1101_p1),.dout(mul_ln140_1_fu_1101_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U261(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1151_p0),.din1(grp_fu_1151_p1),.din2(grp_fu_1151_p2),.ce(1'b1),.dout(grp_fu_1151_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U262(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1159_p0),.din1(grp_fu_1159_p1),.din2(grp_fu_1159_p2),.ce(1'b1),.dout(grp_fu_1159_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U263(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1167_p0),.din1(grp_fu_1167_p1),.din2(grp_fu_1167_p2),.ce(1'b1),.dout(grp_fu_1167_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U264(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1175_p0),.din1(grp_fu_1175_p1),.din2(grp_fu_1175_p2),.ce(1'b1),.dout(grp_fu_1175_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U265(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1183_p0),.din1(grp_fu_1183_p1),.din2(grp_fu_1183_p2),.ce(1'b1),.dout(grp_fu_1183_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U266(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1191_p0),.din1(grp_fu_1191_p1),.din2(grp_fu_1191_p2),.ce(1'b1),.dout(grp_fu_1191_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U267(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1199_p0),.din1(grp_fu_1199_p1),.din2(grp_fu_1199_p2),.ce(1'b1),.dout(grp_fu_1199_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1207_p0),.din1(grp_fu_1207_p1),.din2(grp_fu_1207_p2),.ce(1'b1),.dout(grp_fu_1207_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1215_p0),.din1(grp_fu_1215_p1),.din2(grp_fu_1215_p2),.ce(1'b1),.dout(grp_fu_1215_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1223_p0),.din1(grp_fu_1223_p1),.din2(grp_fu_1223_p2),.ce(1'b1),.dout(grp_fu_1223_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U271(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1231_p0),.din1(grp_fu_1231_p1),.din2(grp_fu_1231_p2),.ce(1'b1),.dout(grp_fu_1231_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1239_p0),.din1(grp_fu_1239_p1),.din2(grp_fu_1239_p2),.ce(1'b1),.dout(grp_fu_1239_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1247_p0),.din1(grp_fu_1247_p1),.din2(grp_fu_1247_p2),.ce(1'b1),.dout(grp_fu_1247_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U274(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1255_p0),.din1(grp_fu_1255_p1),.din2(grp_fu_1255_p2),.ce(1'b1),.dout(grp_fu_1255_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U275(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1263_p0),.din1(grp_fu_1263_p1),.din2(grp_fu_1263_p2),.ce(grp_fu_1263_ce),.dout(grp_fu_1263_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U276(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1271_p0),.din1(grp_fu_1271_p1),.din2(grp_fu_1271_p2),.ce(grp_fu_1271_ce),.dout(grp_fu_1271_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U277(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1279_p0),.din1(grp_fu_1279_p1),.din2(grp_fu_1279_p2),.ce(grp_fu_1279_ce),.dout(grp_fu_1279_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U278(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1287_p0),.din1(grp_fu_1287_p1),.din2(grp_fu_1287_p2),.ce(grp_fu_1287_ce),.dout(grp_fu_1287_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_104 <= 16'd0;
    end else if (((icmp_ln32_fu_604_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_104 <= add_ln31_1_reg_1321;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_108 <= 8'd0;
    end else if (((icmp_ln32_fu_604_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_108 <= add_ln31_reg_1329;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_568_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_430 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v6_reg_430 <= add_ln32_1_reg_1386;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_1321 <= add_ln31_1_fu_562_p2;
        add_ln31_reg_1329 <= add_ln31_fu_574_p2;
        cmp11_reg_1362 <= cmp11_fu_598_p2;
        phi_mul_load_reg_1315 <= phi_mul_fu_104;
        trunc_ln31_reg_1334 <= trunc_ln31_fu_580_p1;
        zext_ln31_reg_1340[6 : 0] <= zext_ln31_fu_594_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_1386 <= add_ln32_1_fu_636_p2;
        tmp_s_reg_1376[7 : 1] <= tmp_s_fu_624_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln32_reg_1501 <= add_ln32_fu_740_p2;
        empty_145_reg_1491 <= empty_145_fu_730_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_127_reg_1391 <= empty_127_fu_650_p2;
        empty_130_reg_1401 <= empty_130_fu_660_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_133_reg_1411 <= empty_133_fu_670_p2;
        empty_136_reg_1421 <= empty_136_fu_680_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_139_reg_1451 <= empty_139_fu_700_p2;
        empty_142_reg_1461 <= empty_142_fu_710_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_150_reg_1531 <= empty_150_fu_760_p2;
        empty_153_reg_1541 <= empty_153_fu_770_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_156_reg_1571 <= empty_156_fu_790_p2;
        empty_159_reg_1581 <= empty_159_fu_800_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_162_reg_1611 <= empty_162_fu_820_p2;
        empty_165_reg_1621 <= empty_165_fu_830_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_168_reg_1706 <= empty_168_fu_932_p2;
        empty_171_reg_1716 <= empty_171_fu_942_p2;
        mul_ln101_reg_1656 <= mul_ln101_fu_889_p2;
        mul_ln114_reg_1661 <= mul_ln114_fu_898_p2;
        mul_ln127_reg_1666 <= mul_ln127_fu_907_p2;
        mul_ln140_reg_1671 <= mul_ln140_fu_916_p2;
        mul_ln34_reg_1631 <= mul_ln34_fu_844_p2;
        mul_ln49_reg_1636 <= mul_ln49_fu_853_p2;
        mul_ln62_reg_1641 <= mul_ln62_fu_862_p2;
        mul_ln75_reg_1646 <= mul_ln75_fu_871_p2;
        mul_ln88_reg_1651 <= mul_ln88_fu_880_p2;
        v101_v_reg_1676 <= grp_fu_500_p3;
        v11_1_v_reg_1681 <= grp_fu_507_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_1_reg_1856 <= mul_ln101_1_fu_1074_p2;
        mul_ln114_1_reg_1861 <= mul_ln114_1_fu_1083_p2;
        mul_ln127_1_reg_1866 <= mul_ln127_1_fu_1092_p2;
        mul_ln140_1_reg_1871 <= mul_ln140_1_fu_1101_p2;
        mul_ln34_1_reg_1831 <= mul_ln34_1_fu_1029_p2;
        mul_ln49_1_reg_1836 <= mul_ln49_1_fu_1038_p2;
        mul_ln62_1_reg_1841 <= mul_ln62_1_fu_1047_p2;
        mul_ln75_1_reg_1846 <= mul_ln75_1_fu_1056_p2;
        mul_ln88_1_reg_1851 <= mul_ln88_1_fu_1065_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_514 <= grp_fu_500_p3;
        reg_518 <= grp_fu_507_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_522 <= grp_fu_500_p3;
        reg_526 <= grp_fu_507_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_530 <= grp_fu_500_p3;
        reg_534 <= grp_fu_507_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_538 <= grp_fu_500_p3;
        reg_542 <= grp_fu_507_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1916 <= v101_1_fu_1146_p1;
        v11_1_reg_1876 <= v11_1_fu_1107_p1;
        v24_1_reg_1881 <= v24_1_fu_1111_p1;
        v35_1_reg_1886 <= v35_1_fu_1116_p1;
        v46_1_reg_1891 <= v46_1_fu_1121_p1;
        v57_1_reg_1896 <= v57_1_fu_1126_p1;
        v68_1_reg_1901 <= v68_1_fu_1131_p1;
        v79_1_reg_1906 <= v79_1_fu_1136_p1;
        v90_1_reg_1911 <= v90_1_fu_1141_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1766 <= v101_fu_992_p1;
        v11_reg_1726 <= v11_fu_952_p1;
        v24_reg_1731 <= v24_fu_957_p1;
        v35_reg_1736 <= v35_fu_962_p1;
        v46_reg_1741 <= v46_fu_967_p1;
        v57_reg_1746 <= v57_fu_972_p1;
        v68_reg_1751 <= v68_fu_977_p1;
        v79_reg_1756 <= v79_fu_982_p1;
        v90_reg_1761 <= v90_fu_987_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_568_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_fu_568_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1263_ce = 1'b1;
    end else begin
        grp_fu_1263_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1271_ce = 1'b1;
    end else begin
        grp_fu_1271_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1279_ce = 1'b1;
    end else begin
        grp_fu_1279_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1287_ce = 1'b1;
    end else begin
        grp_fu_1287_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1921_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1921_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_ce;
    end else begin
        grp_fu_1921_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1921_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1921_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_din0;
    end else begin
        grp_fu_1921_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1921_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1921_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1921_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1921_p_din1;
    end else begin
        grp_fu_1921_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1925_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1925_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_ce;
    end else begin
        grp_fu_1925_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1925_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1925_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_din0;
    end else begin
        grp_fu_1925_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1925_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1925_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1925_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1925_p_din1;
    end else begin
        grp_fu_1925_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1929_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1929_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_ce;
    end else begin
        grp_fu_1929_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1929_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1929_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_din0;
    end else begin
        grp_fu_1929_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1929_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_grp_fu_1929_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1929_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_grp_fu_1929_p_din1;
    end else begin
        grp_fu_1929_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_0_address0_local = p_cast744_fu_1021_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_0_address0_local = p_cast742_fu_1011_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address0_local = p_cast740_fu_1001_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address0_local = p_cast738_fu_927_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast736_fu_815_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast734_fu_785_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast732_fu_755_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast730_fu_725_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast_fu_695_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_0_address1_local = p_cast743_fu_1016_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_0_address1_local = p_cast741_fu_1006_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address1_local = p_cast739_fu_996_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address1_local = p_cast737_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast735_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast733_fu_780_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast731_fu_750_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast729_fu_720_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast728_fu_690_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address0_local = p_cast744_fu_1021_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address0_local = p_cast742_fu_1011_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address0_local = p_cast740_fu_1001_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast738_fu_927_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast736_fu_815_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast734_fu_785_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast732_fu_755_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast730_fu_725_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast_fu_695_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address1_local = p_cast743_fu_1016_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address1_local = p_cast741_fu_1006_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address1_local = p_cast739_fu_996_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address1_local = p_cast737_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast735_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = p_cast733_fu_780_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast731_fu_750_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast729_fu_720_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast728_fu_690_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_v229_we1;
    end else begin
        v229_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((icmp_ln31_fu_568_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_604_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_562_p2 = (phi_mul_fu_104 + 16'd220);
assign add_ln31_fu_574_p2 = (v5_fu_108 + 8'd1);
assign add_ln32_1_fu_636_p2 = (v6_reg_430 + 8'd18);
assign add_ln32_fu_740_p2 = (v6_reg_430 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
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
assign cmp11_fu_598_p2 = ((v5_fu_108 == 8'd0) ? 1'b1 : 1'b0);
assign empty_127_fu_650_p2 = (v6_reg_430 + 8'd2);
assign empty_130_fu_660_p2 = (v6_reg_430 + 8'd3);
assign empty_133_fu_670_p2 = (v6_reg_430 + 8'd4);
assign empty_136_fu_680_p2 = (v6_reg_430 + 8'd5);
assign empty_139_fu_700_p2 = (v6_reg_430 + 8'd6);
assign empty_142_fu_710_p2 = (v6_reg_430 + 8'd7);
assign empty_145_fu_730_p2 = (v6_reg_430 + 8'd8);
assign empty_150_fu_760_p2 = (v6_reg_430 + 8'd10);
assign empty_153_fu_770_p2 = (v6_reg_430 + 8'd11);
assign empty_156_fu_790_p2 = (v6_reg_430 + 8'd12);
assign empty_159_fu_800_p2 = (v6_reg_430 + 8'd13);
assign empty_162_fu_820_p2 = (v6_reg_430 + 8'd14);
assign empty_165_fu_830_p2 = (v6_reg_430 + 8'd15);
assign empty_168_fu_932_p2 = (v6_reg_430 + 8'd16);
assign empty_171_fu_942_p2 = (v6_reg_430 + 8'd17);
assign grp_fu_1151_p0 = grp_fu_1151_p00;
assign grp_fu_1151_p00 = v6_reg_430;
assign grp_fu_1151_p1 = 15'd95;
assign grp_fu_1151_p2 = zext_ln31_reg_1340;
assign grp_fu_1159_p0 = grp_fu_1159_p00;
assign grp_fu_1159_p00 = tmp_s_fu_624_p3;
assign grp_fu_1159_p1 = 15'd95;
assign grp_fu_1159_p2 = zext_ln31_reg_1340;
assign grp_fu_1167_p0 = grp_fu_1167_p00;
assign grp_fu_1167_p00 = empty_127_fu_650_p2;
assign grp_fu_1167_p1 = 15'd95;
assign grp_fu_1167_p2 = zext_ln31_reg_1340;
assign grp_fu_1175_p0 = grp_fu_1175_p00;
assign grp_fu_1175_p00 = empty_130_fu_660_p2;
assign grp_fu_1175_p1 = 15'd95;
assign grp_fu_1175_p2 = zext_ln31_reg_1340;
assign grp_fu_1183_p0 = grp_fu_1183_p00;
assign grp_fu_1183_p00 = empty_133_fu_670_p2;
assign grp_fu_1183_p1 = 15'd95;
assign grp_fu_1183_p2 = zext_ln31_reg_1340;
assign grp_fu_1191_p0 = grp_fu_1191_p00;
assign grp_fu_1191_p00 = empty_136_fu_680_p2;
assign grp_fu_1191_p1 = 15'd95;
assign grp_fu_1191_p2 = zext_ln31_reg_1340;
assign grp_fu_1199_p0 = grp_fu_1199_p00;
assign grp_fu_1199_p00 = empty_139_fu_700_p2;
assign grp_fu_1199_p1 = 15'd95;
assign grp_fu_1199_p2 = zext_ln31_reg_1340;
assign grp_fu_1207_p0 = grp_fu_1207_p00;
assign grp_fu_1207_p00 = empty_142_fu_710_p2;
assign grp_fu_1207_p1 = 15'd95;
assign grp_fu_1207_p2 = zext_ln31_reg_1340;
assign grp_fu_1215_p0 = grp_fu_1215_p00;
assign grp_fu_1215_p00 = empty_145_fu_730_p2;
assign grp_fu_1215_p1 = 15'd95;
assign grp_fu_1215_p2 = zext_ln31_reg_1340;
assign grp_fu_1223_p0 = grp_fu_1223_p00;
assign grp_fu_1223_p00 = add_ln32_fu_740_p2;
assign grp_fu_1223_p1 = 15'd95;
assign grp_fu_1223_p2 = zext_ln31_reg_1340;
assign grp_fu_1231_p0 = grp_fu_1231_p00;
assign grp_fu_1231_p00 = empty_150_fu_760_p2;
assign grp_fu_1231_p1 = 15'd95;
assign grp_fu_1231_p2 = zext_ln31_reg_1340;
assign grp_fu_1239_p0 = grp_fu_1239_p00;
assign grp_fu_1239_p00 = empty_153_fu_770_p2;
assign grp_fu_1239_p1 = 15'd95;
assign grp_fu_1239_p2 = zext_ln31_reg_1340;
assign grp_fu_1247_p0 = grp_fu_1247_p00;
assign grp_fu_1247_p00 = empty_156_fu_790_p2;
assign grp_fu_1247_p1 = 15'd95;
assign grp_fu_1247_p2 = zext_ln31_reg_1340;
assign grp_fu_1255_p0 = grp_fu_1255_p00;
assign grp_fu_1255_p00 = empty_159_fu_800_p2;
assign grp_fu_1255_p1 = 15'd95;
assign grp_fu_1255_p2 = zext_ln31_reg_1340;
assign grp_fu_1263_p0 = grp_fu_1263_p00;
assign grp_fu_1263_p00 = empty_162_fu_820_p2;
assign grp_fu_1263_p1 = 15'd95;
assign grp_fu_1263_p2 = zext_ln31_reg_1340;
assign grp_fu_1271_p0 = grp_fu_1271_p00;
assign grp_fu_1271_p00 = empty_165_fu_830_p2;
assign grp_fu_1271_p1 = 15'd95;
assign grp_fu_1271_p2 = zext_ln31_reg_1340;
assign grp_fu_1279_p0 = grp_fu_1279_p00;
assign grp_fu_1279_p00 = empty_168_fu_932_p2;
assign grp_fu_1279_p1 = 15'd95;
assign grp_fu_1279_p2 = zext_ln31_reg_1340;
assign grp_fu_1287_p0 = grp_fu_1287_p00;
assign grp_fu_1287_p00 = empty_171_fu_942_p2;
assign grp_fu_1287_p1 = 15'd95;
assign grp_fu_1287_p2 = zext_ln31_reg_1340;
assign grp_fu_144_p_ce = grp_fu_1921_ce;
assign grp_fu_144_p_din0 = grp_fu_1921_p0;
assign grp_fu_144_p_din1 = grp_fu_1921_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = grp_fu_1925_ce;
assign grp_fu_148_p_din0 = grp_fu_1925_p0;
assign grp_fu_148_p_din1 = grp_fu_1925_p1;
assign grp_fu_152_p_ce = grp_fu_1929_ce;
assign grp_fu_152_p_din0 = grp_fu_1929_p0;
assign grp_fu_152_p_din1 = grp_fu_1929_p1;
assign grp_fu_500_p3 = ((trunc_ln31_reg_1334[0:0] == 1'b1) ? v224_1_q1 : v224_0_q1);
assign grp_fu_507_p3 = ((trunc_ln31_reg_1334[0:0] == 1'b1) ? v224_1_q0 : v224_0_q0);
assign grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start = grp_kernel_2mm_node0_Pipeline_label_26_fu_471_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_442_ap_start_reg;
assign icmp_ln31_fu_568_p2 = ((v5_fu_108 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_604_p2 = ((v6_reg_430 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_584_p4 = {{v5_fu_108[7:1]}};
assign mul_ln101_1_fu_1074_p0 = mul_ln101_1_fu_1074_p00;
assign mul_ln101_1_fu_1074_p00 = empty_162_reg_1611;
assign mul_ln101_1_fu_1074_p1 = 16'd220;
assign mul_ln101_fu_889_p0 = mul_ln101_fu_889_p00;
assign mul_ln101_fu_889_p00 = empty_136_reg_1421;
assign mul_ln101_fu_889_p1 = 16'd220;
assign mul_ln114_1_fu_1083_p0 = mul_ln114_1_fu_1083_p00;
assign mul_ln114_1_fu_1083_p00 = empty_165_reg_1621;
assign mul_ln114_1_fu_1083_p1 = 16'd220;
assign mul_ln114_fu_898_p0 = mul_ln114_fu_898_p00;
assign mul_ln114_fu_898_p00 = empty_139_reg_1451;
assign mul_ln114_fu_898_p1 = 16'd220;
assign mul_ln127_1_fu_1092_p0 = mul_ln127_1_fu_1092_p00;
assign mul_ln127_1_fu_1092_p00 = empty_168_reg_1706;
assign mul_ln127_1_fu_1092_p1 = 16'd220;
assign mul_ln127_fu_907_p0 = mul_ln127_fu_907_p00;
assign mul_ln127_fu_907_p00 = empty_142_reg_1461;
assign mul_ln127_fu_907_p1 = 16'd220;
assign mul_ln140_1_fu_1101_p0 = mul_ln140_1_fu_1101_p00;
assign mul_ln140_1_fu_1101_p00 = empty_171_reg_1716;
assign mul_ln140_1_fu_1101_p1 = 16'd220;
assign mul_ln140_fu_916_p0 = mul_ln140_fu_916_p00;
assign mul_ln140_fu_916_p00 = empty_145_reg_1491;
assign mul_ln140_fu_916_p1 = 16'd220;
assign mul_ln34_1_fu_1029_p0 = mul_ln34_1_fu_1029_p00;
assign mul_ln34_1_fu_1029_p00 = add_ln32_reg_1501;
assign mul_ln34_1_fu_1029_p1 = 16'd220;
assign mul_ln34_fu_844_p0 = mul_ln34_fu_844_p00;
assign mul_ln34_fu_844_p00 = v6_reg_430;
assign mul_ln34_fu_844_p1 = 16'd220;
assign mul_ln49_1_fu_1038_p0 = mul_ln49_1_fu_1038_p00;
assign mul_ln49_1_fu_1038_p00 = empty_150_reg_1531;
assign mul_ln49_1_fu_1038_p1 = 16'd220;
assign mul_ln49_fu_853_p0 = mul_ln49_fu_853_p00;
assign mul_ln49_fu_853_p00 = tmp_s_reg_1376;
assign mul_ln49_fu_853_p1 = 16'd220;
assign mul_ln62_1_fu_1047_p0 = mul_ln62_1_fu_1047_p00;
assign mul_ln62_1_fu_1047_p00 = empty_153_reg_1541;
assign mul_ln62_1_fu_1047_p1 = 16'd220;
assign mul_ln62_fu_862_p0 = mul_ln62_fu_862_p00;
assign mul_ln62_fu_862_p00 = empty_127_reg_1391;
assign mul_ln62_fu_862_p1 = 16'd220;
assign mul_ln75_1_fu_1056_p0 = mul_ln75_1_fu_1056_p00;
assign mul_ln75_1_fu_1056_p00 = empty_156_reg_1571;
assign mul_ln75_1_fu_1056_p1 = 16'd220;
assign mul_ln75_fu_871_p0 = mul_ln75_fu_871_p00;
assign mul_ln75_fu_871_p00 = empty_130_reg_1401;
assign mul_ln75_fu_871_p1 = 16'd220;
assign mul_ln88_1_fu_1065_p0 = mul_ln88_1_fu_1065_p00;
assign mul_ln88_1_fu_1065_p00 = empty_159_reg_1581;
assign mul_ln88_1_fu_1065_p1 = 16'd220;
assign mul_ln88_fu_880_p0 = mul_ln88_fu_880_p00;
assign mul_ln88_fu_880_p00 = empty_133_reg_1411;
assign mul_ln88_fu_880_p1 = 16'd220;
assign p_cast728_fu_690_p1 = grp_fu_1151_p3;
assign p_cast729_fu_720_p1 = grp_fu_1167_p3;
assign p_cast730_fu_725_p1 = grp_fu_1175_p3;
assign p_cast731_fu_750_p1 = grp_fu_1183_p3;
assign p_cast732_fu_755_p1 = grp_fu_1191_p3;
assign p_cast733_fu_780_p1 = grp_fu_1199_p3;
assign p_cast734_fu_785_p1 = grp_fu_1207_p3;
assign p_cast735_fu_810_p1 = grp_fu_1215_p3;
assign p_cast736_fu_815_p1 = grp_fu_1223_p3;
assign p_cast737_fu_922_p1 = grp_fu_1231_p3;
assign p_cast738_fu_927_p1 = grp_fu_1239_p3;
assign p_cast739_fu_996_p1 = grp_fu_1247_p3;
assign p_cast740_fu_1001_p1 = grp_fu_1255_p3;
assign p_cast741_fu_1006_p1 = grp_fu_1263_p3;
assign p_cast742_fu_1011_p1 = grp_fu_1271_p3;
assign p_cast743_fu_1016_p1 = grp_fu_1279_p3;
assign p_cast744_fu_1021_p1 = grp_fu_1287_p3;
assign p_cast_fu_695_p1 = grp_fu_1159_p3;
assign tmp_fu_614_p4 = {{v6_reg_430[7:1]}};
assign tmp_s_fu_624_p3 = {{tmp_fu_614_p4}, {1'd1}};
assign trunc_ln31_fu_580_p1 = v5_fu_108[0:0];
assign v101_1_fu_1146_p1 = reg_542;
assign v101_fu_992_p1 = v101_v_reg_1676;
assign v11_1_fu_1107_p1 = v11_1_v_reg_1681;
assign v11_fu_952_p1 = reg_514;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_1111_p1 = reg_514;
assign v24_fu_957_p1 = reg_518;
assign v35_1_fu_1116_p1 = reg_518;
assign v35_fu_962_p1 = reg_522;
assign v46_1_fu_1121_p1 = reg_522;
assign v46_fu_967_p1 = reg_526;
assign v57_1_fu_1126_p1 = reg_526;
assign v57_fu_972_p1 = reg_530;
assign v68_1_fu_1131_p1 = reg_530;
assign v68_fu_977_p1 = reg_534;
assign v79_1_fu_1136_p1 = reg_534;
assign v79_fu_982_p1 = reg_538;
assign v90_1_fu_1141_p1 = reg_538;
assign v90_fu_987_p1 = reg_542;
assign zext_ln31_fu_594_p1 = lshr_ln_fu_584_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1340[14:7] <= 8'b00000000;
    tmp_s_reg_1376[0] <= 1'b1;
end
endmodule 
