module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v4,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_opcode,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_dout0,grp_fu_228_p_ce,grp_fu_232_p_din0,grp_fu_232_p_din1,grp_fu_232_p_dout0,grp_fu_232_p_ce,grp_fu_236_p_din0,grp_fu_236_p_din1,grp_fu_236_p_dout0,grp_fu_236_p_ce,grp_fu_240_p_din0,grp_fu_240_p_din1,grp_fu_240_p_dout0,grp_fu_240_p_ce); 
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
output  [14:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [14:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [14:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [14:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [13:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [13:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [13:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [13:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [13:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [13:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [13:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [13:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
input  [31:0] v4;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
output  [1:0] grp_fu_204_p_opcode;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
output  [31:0] grp_fu_208_p_din0;
output  [31:0] grp_fu_208_p_din1;
input  [31:0] grp_fu_208_p_dout0;
output   grp_fu_208_p_ce;
output  [31:0] grp_fu_212_p_din0;
output  [31:0] grp_fu_212_p_din1;
input  [31:0] grp_fu_212_p_dout0;
output   grp_fu_212_p_ce;
output  [31:0] grp_fu_216_p_din0;
output  [31:0] grp_fu_216_p_din1;
input  [31:0] grp_fu_216_p_dout0;
output   grp_fu_216_p_ce;
output  [31:0] grp_fu_220_p_din0;
output  [31:0] grp_fu_220_p_din1;
input  [31:0] grp_fu_220_p_dout0;
output   grp_fu_220_p_ce;
output  [31:0] grp_fu_224_p_din0;
output  [31:0] grp_fu_224_p_din1;
input  [31:0] grp_fu_224_p_dout0;
output   grp_fu_224_p_ce;
output  [31:0] grp_fu_228_p_din0;
output  [31:0] grp_fu_228_p_din1;
input  [31:0] grp_fu_228_p_dout0;
output   grp_fu_228_p_ce;
output  [31:0] grp_fu_232_p_din0;
output  [31:0] grp_fu_232_p_din1;
input  [31:0] grp_fu_232_p_dout0;
output   grp_fu_232_p_ce;
output  [31:0] grp_fu_236_p_din0;
output  [31:0] grp_fu_236_p_din1;
input  [31:0] grp_fu_236_p_dout0;
output   grp_fu_236_p_ce;
output  [31:0] grp_fu_240_p_din0;
output  [31:0] grp_fu_240_p_din1;
input  [31:0] grp_fu_240_p_dout0;
output   grp_fu_240_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_524_p2;
reg   [7:0] add_ln31_reg_1521;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln31_fu_530_p1;
reg   [1:0] trunc_ln31_reg_1526;
wire   [0:0] trunc_ln31_1_fu_534_p1;
reg   [0:0] trunc_ln31_1_reg_1539;
wire   [14:0] mul_ln38_fu_552_p2;
reg   [14:0] mul_ln38_reg_1544;
wire   [13:0] zext_ln31_fu_568_p1;
reg   [13:0] zext_ln31_reg_1549;
wire   [0:0] cmp11_fu_572_p2;
reg   [0:0] cmp11_reg_1562;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_122_fu_623_p2;
reg   [7:0] empty_122_reg_1590;
reg   [5:0] tmp_reg_1596;
wire   [7:0] empty_129_fu_639_p2;
reg   [7:0] empty_129_reg_1601;
reg   [5:0] tmp_s_reg_1607;
wire   [7:0] add_ln32_fu_655_p2;
reg   [7:0] add_ln32_reg_1612;
wire   [31:0] v11_fu_681_p11;
reg   [31:0] v11_reg_1617;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_136_fu_778_p2;
reg   [7:0] empty_136_reg_1662;
reg   [5:0] tmp_13_reg_1668;
wire   [7:0] empty_143_fu_794_p2;
reg   [7:0] empty_143_reg_1673;
wire   [31:0] v24_fu_816_p11;
reg   [31:0] v24_reg_1679;
wire    ap_CS_fsm_state5;
wire   [31:0] v35_fu_855_p11;
reg   [31:0] v35_reg_1684;
wire   [7:0] empty_151_fu_952_p2;
reg   [7:0] empty_151_reg_1729;
reg   [5:0] tmp_20_reg_1735;
wire   [7:0] empty_158_fu_968_p2;
reg   [7:0] empty_158_reg_1740;
reg   [5:0] tmp_22_reg_1746;
wire   [31:0] v46_fu_1000_p11;
reg   [31:0] v46_reg_1751;
wire    ap_CS_fsm_state6;
wire   [31:0] v57_1_fu_1039_p11;
reg   [31:0] v57_1_reg_1756;
wire   [13:0] empty_167_fu_1168_p2;
reg   [13:0] empty_167_reg_1801;
reg   [5:0] tmp_24_reg_1806;
wire   [13:0] empty_174_fu_1215_p2;
reg   [13:0] empty_174_reg_1811;
wire   [31:0] v68_1_fu_1236_p11;
reg   [31:0] v68_1_reg_1816;
wire    ap_CS_fsm_state7;
wire   [31:0] v79_1_fu_1275_p11;
reg   [31:0] v79_1_reg_1821;
wire   [1:0] trunc_ln32_fu_1312_p1;
reg   [1:0] trunc_ln32_reg_1866;
wire    ap_CS_fsm_state8;
wire   [13:0] mul_ln34_fu_1330_p2;
reg   [13:0] mul_ln34_reg_1872;
wire   [13:0] mul_ln49_fu_1339_p2;
reg   [13:0] mul_ln49_reg_1877;
wire   [13:0] mul_ln62_fu_1348_p2;
reg   [13:0] mul_ln62_reg_1882;
wire   [13:0] mul_ln75_fu_1357_p2;
reg   [13:0] mul_ln75_reg_1887;
wire   [13:0] mul_ln88_fu_1373_p2;
reg   [13:0] mul_ln88_reg_1892;
wire   [13:0] mul_ln101_fu_1382_p2;
reg   [13:0] mul_ln101_reg_1897;
wire   [13:0] mul_ln114_fu_1391_p2;
reg   [13:0] mul_ln114_reg_1902;
wire   [13:0] mul_ln127_fu_1400_p2;
reg   [13:0] mul_ln127_reg_1907;
wire   [31:0] v90_1_fu_1422_p11;
reg   [31:0] v90_1_reg_1912;
wire   [13:0] mul_ln140_fu_1455_p2;
reg   [13:0] mul_ln140_reg_1917;
wire   [31:0] v_fu_1477_p11;
reg   [31:0] v_reg_1922;
wire   [0:0] empty_180_fu_1500_p2;
reg   [0:0] empty_180_reg_1927;
wire    ap_CS_fsm_state9;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_ce;
reg   [7:0] v6_reg_458;
wire   [0:0] icmp_ln31_fu_518_p2;
wire    ap_CS_fsm_state10;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start_reg;
wire   [63:0] p_cast3897_fu_615_p1;
wire   [0:0] icmp_ln32_fu_578_p2;
wire   [63:0] p_cast_fu_733_p1;
wire   [63:0] p_cast3898_fu_770_p1;
wire   [63:0] p_cast3899_fu_907_p1;
wire   [63:0] p_cast3900_fu_944_p1;
wire   [63:0] p_cast3901_fu_1091_p1;
wire   [63:0] p_cast3902_fu_1128_p1;
wire   [63:0] p_cast3903_fu_1298_p1;
wire   [63:0] p_cast3904_fu_1305_p1;
reg   [7:0] v5_fu_118;
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
wire   [6:0] lshr_ln_fu_538_p4;
wire   [6:0] mul_ln38_fu_552_p0;
wire   [8:0] mul_ln38_fu_552_p1;
wire   [5:0] lshr_ln31_1_fu_558_p4;
wire   [11:0] tmp_14_fu_592_p3;
wire   [13:0] p_shl1_fu_584_p3;
wire   [13:0] p_shl3954_fu_600_p1;
wire   [13:0] empty_fu_604_p2;
wire   [13:0] empty_117_fu_610_p2;
wire   [31:0] v11_fu_681_p2;
wire   [31:0] v11_fu_681_p4;
wire   [31:0] v11_fu_681_p6;
wire   [31:0] v11_fu_681_p8;
wire   [31:0] v11_fu_681_p9;
wire   [11:0] tmp_15_fu_711_p3;
wire   [13:0] p_shl2_fu_704_p3;
wire   [13:0] p_shl3952_fu_718_p1;
wire   [13:0] empty_123_fu_722_p2;
wire   [13:0] empty_124_fu_728_p2;
wire   [11:0] tmp_16_fu_748_p3;
wire   [13:0] p_shl3_fu_741_p3;
wire   [13:0] p_shl3950_fu_755_p1;
wire   [13:0] empty_130_fu_759_p2;
wire   [13:0] empty_131_fu_765_p2;
wire   [31:0] v24_fu_816_p2;
wire   [31:0] v24_fu_816_p4;
wire   [31:0] v24_fu_816_p6;
wire   [31:0] v24_fu_816_p8;
wire   [31:0] v24_fu_816_p9;
wire   [31:0] v35_fu_855_p2;
wire   [31:0] v35_fu_855_p4;
wire   [31:0] v35_fu_855_p6;
wire   [31:0] v35_fu_855_p8;
wire   [31:0] v35_fu_855_p9;
wire   [11:0] tmp_17_fu_885_p3;
wire   [13:0] p_shl4_fu_878_p3;
wire   [13:0] p_shl3948_fu_892_p1;
wire   [13:0] empty_137_fu_896_p2;
wire   [13:0] empty_138_fu_902_p2;
wire   [11:0] tmp_18_fu_922_p3;
wire   [13:0] p_shl5_fu_915_p3;
wire   [13:0] p_shl3946_fu_929_p1;
wire   [13:0] empty_144_fu_933_p2;
wire   [13:0] empty_145_fu_939_p2;
wire   [31:0] v46_fu_1000_p2;
wire   [31:0] v46_fu_1000_p4;
wire   [31:0] v46_fu_1000_p6;
wire   [31:0] v46_fu_1000_p8;
wire   [31:0] v46_fu_1000_p9;
wire   [31:0] v57_1_fu_1039_p2;
wire   [31:0] v57_1_fu_1039_p4;
wire   [31:0] v57_1_fu_1039_p6;
wire   [31:0] v57_1_fu_1039_p8;
wire   [31:0] v57_1_fu_1039_p9;
wire   [11:0] tmp_19_fu_1069_p3;
wire   [13:0] p_shl6_fu_1062_p3;
wire   [13:0] p_shl3944_fu_1076_p1;
wire   [13:0] empty_152_fu_1080_p2;
wire   [13:0] empty_153_fu_1086_p2;
wire   [11:0] tmp_21_fu_1106_p3;
wire   [13:0] p_shl7_fu_1099_p3;
wire   [13:0] p_shl3942_fu_1113_p1;
wire   [13:0] empty_159_fu_1117_p2;
wire   [13:0] empty_160_fu_1123_p2;
wire   [7:0] empty_165_fu_1136_p2;
wire   [11:0] tmp_23_fu_1150_p3;
wire   [13:0] p_shl8_fu_1142_p3;
wire   [13:0] p_shl3940_fu_1158_p1;
wire   [13:0] empty_166_fu_1162_p2;
wire   [7:0] empty_172_fu_1183_p2;
wire   [11:0] tmp_25_fu_1197_p3;
wire   [13:0] p_shl_fu_1189_p3;
wire   [13:0] p_shl3938_fu_1205_p1;
wire   [13:0] empty_173_fu_1209_p2;
wire   [31:0] v68_1_fu_1236_p2;
wire   [31:0] v68_1_fu_1236_p4;
wire   [31:0] v68_1_fu_1236_p6;
wire   [31:0] v68_1_fu_1236_p8;
wire   [31:0] v68_1_fu_1236_p9;
wire   [31:0] v79_1_fu_1275_p2;
wire   [31:0] v79_1_fu_1275_p4;
wire   [31:0] v79_1_fu_1275_p6;
wire   [31:0] v79_1_fu_1275_p8;
wire   [31:0] v79_1_fu_1275_p9;
wire   [5:0] lshr_ln1_fu_1316_p4;
wire   [5:0] mul_ln34_fu_1330_p0;
wire   [8:0] mul_ln34_fu_1330_p1;
wire   [5:0] mul_ln49_fu_1339_p0;
wire   [8:0] mul_ln49_fu_1339_p1;
wire   [5:0] mul_ln62_fu_1348_p0;
wire   [8:0] mul_ln62_fu_1348_p1;
wire   [5:0] mul_ln75_fu_1357_p0;
wire   [8:0] mul_ln75_fu_1357_p1;
wire   [5:0] empty_146_fu_1363_p2;
wire   [5:0] mul_ln88_fu_1373_p0;
wire   [8:0] mul_ln88_fu_1373_p1;
wire   [5:0] mul_ln101_fu_1382_p0;
wire   [8:0] mul_ln101_fu_1382_p1;
wire   [5:0] mul_ln114_fu_1391_p0;
wire   [8:0] mul_ln114_fu_1391_p1;
wire   [5:0] mul_ln127_fu_1400_p0;
wire   [8:0] mul_ln127_fu_1400_p1;
wire   [31:0] v90_1_fu_1422_p2;
wire   [31:0] v90_1_fu_1422_p4;
wire   [31:0] v90_1_fu_1422_p6;
wire   [31:0] v90_1_fu_1422_p8;
wire   [31:0] v90_1_fu_1422_p9;
wire   [5:0] empty_175_fu_1445_p2;
wire   [5:0] mul_ln140_fu_1455_p0;
wire   [8:0] mul_ln140_fu_1455_p1;
wire   [31:0] v_fu_1477_p2;
wire   [31:0] v_fu_1477_p4;
wire   [31:0] v_fu_1477_p6;
wire   [31:0] v_fu_1477_p8;
wire   [31:0] v_fu_1477_p9;
reg    grp_fu_1932_ce;
reg    grp_fu_1936_ce;
reg    grp_fu_1940_ce;
reg    grp_fu_1944_ce;
reg    grp_fu_1948_ce;
reg    grp_fu_1952_ce;
reg    grp_fu_1956_ce;
reg    grp_fu_1960_ce;
reg    grp_fu_1964_ce;
reg    grp_fu_1968_ce;
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
wire   [13:0] mul_ln101_fu_1382_p00;
wire   [13:0] mul_ln114_fu_1391_p00;
wire   [13:0] mul_ln127_fu_1400_p00;
wire   [13:0] mul_ln140_fu_1455_p00;
wire   [13:0] mul_ln34_fu_1330_p00;
wire   [14:0] mul_ln38_fu_552_p00;
wire   [13:0] mul_ln49_fu_1339_p00;
wire   [13:0] mul_ln62_fu_1348_p00;
wire   [13:0] mul_ln75_fu_1357_p00;
wire   [13:0] mul_ln88_fu_1373_p00;
wire   [1:0] v11_fu_681_p1;
wire   [1:0] v11_fu_681_p3;
wire  signed [1:0] v11_fu_681_p5;
wire  signed [1:0] v11_fu_681_p7;
wire   [1:0] v24_fu_816_p1;
wire   [1:0] v24_fu_816_p3;
wire  signed [1:0] v24_fu_816_p5;
wire  signed [1:0] v24_fu_816_p7;
wire   [1:0] v35_fu_855_p1;
wire   [1:0] v35_fu_855_p3;
wire  signed [1:0] v35_fu_855_p5;
wire  signed [1:0] v35_fu_855_p7;
wire   [1:0] v46_fu_1000_p1;
wire   [1:0] v46_fu_1000_p3;
wire  signed [1:0] v46_fu_1000_p5;
wire  signed [1:0] v46_fu_1000_p7;
wire   [1:0] v57_1_fu_1039_p1;
wire   [1:0] v57_1_fu_1039_p3;
wire  signed [1:0] v57_1_fu_1039_p5;
wire  signed [1:0] v57_1_fu_1039_p7;
wire   [1:0] v68_1_fu_1236_p1;
wire   [1:0] v68_1_fu_1236_p3;
wire  signed [1:0] v68_1_fu_1236_p5;
wire  signed [1:0] v68_1_fu_1236_p7;
wire   [1:0] v79_1_fu_1275_p1;
wire   [1:0] v79_1_fu_1275_p3;
wire  signed [1:0] v79_1_fu_1275_p5;
wire  signed [1:0] v79_1_fu_1275_p7;
wire   [1:0] v90_1_fu_1422_p1;
wire   [1:0] v90_1_fu_1422_p3;
wire  signed [1:0] v90_1_fu_1422_p5;
wire  signed [1:0] v90_1_fu_1422_p7;
wire   [1:0] v_fu_1477_p1;
wire   [1:0] v_fu_1477_p3;
wire  signed [1:0] v_fu_1477_p5;
wire  signed [1:0] v_fu_1477_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start_reg = 1'b0;
#0 v5_fu_118 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_470(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_d1),.v229_3_q1(v229_3_q1),.mul_ln38(mul_ln38_reg_1544),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34(mul_ln34_reg_1872),.mul_ln88(mul_ln88_reg_1892),.mul_ln140(mul_ln140_reg_1917),.mul_ln75(mul_ln75_reg_1887),.mul_ln127(mul_ln127_reg_1907),.mul_ln62(mul_ln62_reg_1882),.mul_ln114(mul_ln114_reg_1902),.mul_ln49(mul_ln49_reg_1877),.mul_ln101(mul_ln101_reg_1897),.empty_17(trunc_ln32_reg_1866),.v4(v4),.cmp11(cmp11_reg_1562),.empty_18(trunc_ln31_1_reg_1539),.v11(v11_reg_1617),.v24(v24_reg_1679),.v35(v35_reg_1684),.v46(v46_reg_1751),.v57_1(v57_1_reg_1756),.v68_1(v68_1_reg_1816),.v79_1(v79_1_reg_1821),.v90_1(v90_1_reg_1912),.v101(v_reg_1922),.empty(empty_180_reg_1927),.grp_fu_1932_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_din0),.grp_fu_1932_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_din1),.grp_fu_1932_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_opcode),.grp_fu_1932_p_dout0(grp_fu_204_p_dout0),.grp_fu_1932_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_ce),.grp_fu_1936_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_din0),.grp_fu_1936_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_din1),.grp_fu_1936_p_dout0(grp_fu_208_p_dout0),.grp_fu_1936_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_ce),.grp_fu_1940_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_din0),.grp_fu_1940_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_din1),.grp_fu_1940_p_dout0(grp_fu_212_p_dout0),.grp_fu_1940_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_ce),.grp_fu_1944_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_din0),.grp_fu_1944_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_din1),.grp_fu_1944_p_dout0(grp_fu_216_p_dout0),.grp_fu_1944_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_ce),.grp_fu_1948_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_din0),.grp_fu_1948_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_din1),.grp_fu_1948_p_dout0(grp_fu_220_p_dout0),.grp_fu_1948_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_ce),.grp_fu_1952_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_din0),.grp_fu_1952_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_din1),.grp_fu_1952_p_dout0(grp_fu_224_p_dout0),.grp_fu_1952_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_ce),.grp_fu_1956_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_din0),.grp_fu_1956_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_din1),.grp_fu_1956_p_dout0(grp_fu_228_p_dout0),.grp_fu_1956_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_ce),.grp_fu_1960_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_din0),.grp_fu_1960_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_din1),.grp_fu_1960_p_dout0(grp_fu_232_p_dout0),.grp_fu_1960_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_ce),.grp_fu_1964_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_din0),.grp_fu_1964_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_din1),.grp_fu_1964_p_dout0(grp_fu_236_p_dout0),.grp_fu_1964_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_ce),.grp_fu_1968_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_din0),.grp_fu_1968_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_din1),.grp_fu_1968_p_dout0(grp_fu_240_p_dout0),.grp_fu_1968_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U176(.din0(mul_ln38_fu_552_p0),.din1(mul_ln38_fu_552_p1),.dout(mul_ln38_fu_552_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U177(.din0(v11_fu_681_p2),.din1(v11_fu_681_p4),.din2(v11_fu_681_p6),.din3(v11_fu_681_p8),.def(v11_fu_681_p9),.sel(trunc_ln31_reg_1526),.dout(v11_fu_681_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U178(.din0(v24_fu_816_p2),.din1(v24_fu_816_p4),.din2(v24_fu_816_p6),.din3(v24_fu_816_p8),.def(v24_fu_816_p9),.sel(trunc_ln31_reg_1526),.dout(v24_fu_816_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U179(.din0(v35_fu_855_p2),.din1(v35_fu_855_p4),.din2(v35_fu_855_p6),.din3(v35_fu_855_p8),.def(v35_fu_855_p9),.sel(trunc_ln31_reg_1526),.dout(v35_fu_855_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U180(.din0(v46_fu_1000_p2),.din1(v46_fu_1000_p4),.din2(v46_fu_1000_p6),.din3(v46_fu_1000_p8),.def(v46_fu_1000_p9),.sel(trunc_ln31_reg_1526),.dout(v46_fu_1000_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U181(.din0(v57_1_fu_1039_p2),.din1(v57_1_fu_1039_p4),.din2(v57_1_fu_1039_p6),.din3(v57_1_fu_1039_p8),.def(v57_1_fu_1039_p9),.sel(trunc_ln31_reg_1526),.dout(v57_1_fu_1039_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U182(.din0(v68_1_fu_1236_p2),.din1(v68_1_fu_1236_p4),.din2(v68_1_fu_1236_p6),.din3(v68_1_fu_1236_p8),.def(v68_1_fu_1236_p9),.sel(trunc_ln31_reg_1526),.dout(v68_1_fu_1236_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U183(.din0(v79_1_fu_1275_p2),.din1(v79_1_fu_1275_p4),.din2(v79_1_fu_1275_p6),.din3(v79_1_fu_1275_p8),.def(v79_1_fu_1275_p9),.sel(trunc_ln31_reg_1526),.dout(v79_1_fu_1275_p11));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U184(.din0(mul_ln34_fu_1330_p0),.din1(mul_ln34_fu_1330_p1),.dout(mul_ln34_fu_1330_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U185(.din0(mul_ln49_fu_1339_p0),.din1(mul_ln49_fu_1339_p1),.dout(mul_ln49_fu_1339_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U186(.din0(mul_ln62_fu_1348_p0),.din1(mul_ln62_fu_1348_p1),.dout(mul_ln62_fu_1348_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U187(.din0(mul_ln75_fu_1357_p0),.din1(mul_ln75_fu_1357_p1),.dout(mul_ln75_fu_1357_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U188(.din0(mul_ln88_fu_1373_p0),.din1(mul_ln88_fu_1373_p1),.dout(mul_ln88_fu_1373_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U189(.din0(mul_ln101_fu_1382_p0),.din1(mul_ln101_fu_1382_p1),.dout(mul_ln101_fu_1382_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U190(.din0(mul_ln114_fu_1391_p0),.din1(mul_ln114_fu_1391_p1),.dout(mul_ln114_fu_1391_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U191(.din0(mul_ln127_fu_1400_p0),.din1(mul_ln127_fu_1400_p1),.dout(mul_ln127_fu_1400_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U192(.din0(v90_1_fu_1422_p2),.din1(v90_1_fu_1422_p4),.din2(v90_1_fu_1422_p6),.din3(v90_1_fu_1422_p8),.def(v90_1_fu_1422_p9),.sel(trunc_ln31_reg_1526),.dout(v90_1_fu_1422_p11));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U193(.din0(mul_ln140_fu_1455_p0),.din1(mul_ln140_fu_1455_p1),.dout(mul_ln140_fu_1455_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U194(.din0(v_fu_1477_p2),.din1(v_fu_1477_p4),.din2(v_fu_1477_p6),.din3(v_fu_1477_p8),.def(v_fu_1477_p9),.sel(trunc_ln31_reg_1526),.dout(v_fu_1477_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_118 <= 8'd0;
    end else if (((icmp_ln32_fu_578_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_118 <= add_ln31_reg_1521;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_458 <= add_ln32_reg_1612;
    end else if (((icmp_ln31_fu_518_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_458 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_1521 <= add_ln31_fu_524_p2;
        cmp11_reg_1562 <= cmp11_fu_572_p2;
        mul_ln38_reg_1544 <= mul_ln38_fu_552_p2;
        trunc_ln31_1_reg_1539 <= trunc_ln31_1_fu_534_p1;
        trunc_ln31_reg_1526 <= trunc_ln31_fu_530_p1;
        zext_ln31_reg_1549[5 : 0] <= zext_ln31_fu_568_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1612 <= add_ln32_fu_655_p2;
        empty_122_reg_1590 <= empty_122_fu_623_p2;
        empty_129_reg_1601 <= empty_129_fu_639_p2;
        tmp_reg_1596 <= {{empty_122_fu_623_p2[7:2]}};
        tmp_s_reg_1607 <= {{empty_129_fu_639_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_136_reg_1662 <= empty_136_fu_778_p2;
        empty_143_reg_1673 <= empty_143_fu_794_p2;
        tmp_13_reg_1668 <= {{empty_136_fu_778_p2[7:2]}};
        v11_reg_1617 <= v11_fu_681_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_151_reg_1729 <= empty_151_fu_952_p2;
        empty_158_reg_1740 <= empty_158_fu_968_p2;
        tmp_20_reg_1735 <= {{empty_151_fu_952_p2[7:2]}};
        tmp_22_reg_1746 <= {{empty_158_fu_968_p2[7:2]}};
        v24_reg_1679 <= v24_fu_816_p11;
        v35_reg_1684 <= v35_fu_855_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_167_reg_1801 <= empty_167_fu_1168_p2;
        empty_174_reg_1811 <= empty_174_fu_1215_p2;
        tmp_24_reg_1806 <= {{empty_165_fu_1136_p2[7:2]}};
        v46_reg_1751 <= v46_fu_1000_p11;
        v57_1_reg_1756 <= v57_1_fu_1039_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_180_reg_1927 <= empty_180_fu_1500_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_1897 <= mul_ln101_fu_1382_p2;
        mul_ln114_reg_1902 <= mul_ln114_fu_1391_p2;
        mul_ln127_reg_1907 <= mul_ln127_fu_1400_p2;
        mul_ln140_reg_1917 <= mul_ln140_fu_1455_p2;
        mul_ln34_reg_1872 <= mul_ln34_fu_1330_p2;
        mul_ln49_reg_1877 <= mul_ln49_fu_1339_p2;
        mul_ln62_reg_1882 <= mul_ln62_fu_1348_p2;
        mul_ln75_reg_1887 <= mul_ln75_fu_1357_p2;
        mul_ln88_reg_1892 <= mul_ln88_fu_1373_p2;
        trunc_ln32_reg_1866 <= trunc_ln32_fu_1312_p1;
        v90_1_reg_1912 <= v90_1_fu_1422_p11;
        v_reg_1922 <= v_fu_1477_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v68_1_reg_1816 <= v68_1_fu_1236_p11;
        v79_1_reg_1821 <= v79_1_fu_1275_p11;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_done == 1'b0)) begin
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_518_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_518_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1932_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_ce;
    end else begin
        grp_fu_1932_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1936_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_ce;
    end else begin
        grp_fu_1936_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1940_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_ce;
    end else begin
        grp_fu_1940_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1944_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_ce;
    end else begin
        grp_fu_1944_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1948_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_ce;
    end else begin
        grp_fu_1948_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1952_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_ce;
    end else begin
        grp_fu_1952_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1956_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_ce;
    end else begin
        grp_fu_1956_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1960_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_ce;
    end else begin
        grp_fu_1960_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1964_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_ce;
    end else begin
        grp_fu_1964_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_1968_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_ce;
    end else begin
        grp_fu_1968_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast3903_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast3901_fu_1091_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast3899_fu_907_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast3898_fu_770_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast3897_fu_615_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast3904_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast3902_fu_1128_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast3900_fu_944_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_733_p1;
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
        v224_1_address0_local = p_cast3903_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast3901_fu_1091_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast3899_fu_907_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast3898_fu_770_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast3897_fu_615_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast3904_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast3902_fu_1128_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast3900_fu_944_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast_fu_733_p1;
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
        v224_2_address0_local = p_cast3903_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast3901_fu_1091_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast3899_fu_907_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast3898_fu_770_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast3897_fu_615_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast3904_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast3902_fu_1128_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast3900_fu_944_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_733_p1;
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
        v224_3_address0_local = p_cast3903_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast3901_fu_1091_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast3899_fu_907_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast3898_fu_770_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast3897_fu_615_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast3904_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast3902_fu_1128_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast3900_fu_944_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast_fu_733_p1;
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
            if (((icmp_ln31_fu_518_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_578_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln31_fu_524_p2 = (v5_fu_118 + 8'd1);
assign add_ln32_fu_655_p2 = (v6_reg_458 + 8'd9);
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
assign cmp11_fu_572_p2 = ((v5_fu_118 == 8'd0) ? 1'b1 : 1'b0);
assign empty_117_fu_610_p2 = (empty_fu_604_p2 + zext_ln31_reg_1549);
assign empty_122_fu_623_p2 = (v6_reg_458 + 8'd1);
assign empty_123_fu_722_p2 = (p_shl2_fu_704_p3 - p_shl3952_fu_718_p1);
assign empty_124_fu_728_p2 = (empty_123_fu_722_p2 + zext_ln31_reg_1549);
assign empty_129_fu_639_p2 = (v6_reg_458 + 8'd2);
assign empty_130_fu_759_p2 = (p_shl3_fu_741_p3 - p_shl3950_fu_755_p1);
assign empty_131_fu_765_p2 = (empty_130_fu_759_p2 + zext_ln31_reg_1549);
assign empty_136_fu_778_p2 = (v6_reg_458 + 8'd3);
assign empty_137_fu_896_p2 = (p_shl4_fu_878_p3 - p_shl3948_fu_892_p1);
assign empty_138_fu_902_p2 = (empty_137_fu_896_p2 + zext_ln31_reg_1549);
assign empty_143_fu_794_p2 = (v6_reg_458 + 8'd4);
assign empty_144_fu_933_p2 = (p_shl5_fu_915_p3 - p_shl3946_fu_929_p1);
assign empty_145_fu_939_p2 = (empty_144_fu_933_p2 + zext_ln31_reg_1549);
assign empty_146_fu_1363_p2 = (lshr_ln1_fu_1316_p4 + 6'd1);
assign empty_151_fu_952_p2 = (v6_reg_458 + 8'd5);
assign empty_152_fu_1080_p2 = (p_shl6_fu_1062_p3 - p_shl3944_fu_1076_p1);
assign empty_153_fu_1086_p2 = (empty_152_fu_1080_p2 + zext_ln31_reg_1549);
assign empty_158_fu_968_p2 = (v6_reg_458 + 8'd6);
assign empty_159_fu_1117_p2 = (p_shl7_fu_1099_p3 - p_shl3942_fu_1113_p1);
assign empty_160_fu_1123_p2 = (empty_159_fu_1117_p2 + zext_ln31_reg_1549);
assign empty_165_fu_1136_p2 = (v6_reg_458 + 8'd7);
assign empty_166_fu_1162_p2 = (p_shl8_fu_1142_p3 - p_shl3940_fu_1158_p1);
assign empty_167_fu_1168_p2 = (empty_166_fu_1162_p2 + zext_ln31_reg_1549);
assign empty_172_fu_1183_p2 = (v6_reg_458 + 8'd8);
assign empty_173_fu_1209_p2 = (p_shl_fu_1189_p3 - p_shl3938_fu_1205_p1);
assign empty_174_fu_1215_p2 = (empty_173_fu_1209_p2 + zext_ln31_reg_1549);
assign empty_175_fu_1445_p2 = (lshr_ln1_fu_1316_p4 + 6'd2);
assign empty_180_fu_1500_p2 = ((trunc_ln32_reg_1866 == 2'd3) ? 1'b1 : 1'b0);
assign empty_fu_604_p2 = (p_shl1_fu_584_p3 - p_shl3954_fu_600_p1);
assign grp_fu_204_p_ce = grp_fu_1932_ce;
assign grp_fu_204_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_din0;
assign grp_fu_204_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1932_p_din1;
assign grp_fu_204_p_opcode = 2'd0;
assign grp_fu_208_p_ce = grp_fu_1936_ce;
assign grp_fu_208_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_din0;
assign grp_fu_208_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1936_p_din1;
assign grp_fu_212_p_ce = grp_fu_1940_ce;
assign grp_fu_212_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_din0;
assign grp_fu_212_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1940_p_din1;
assign grp_fu_216_p_ce = grp_fu_1944_ce;
assign grp_fu_216_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_din0;
assign grp_fu_216_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1944_p_din1;
assign grp_fu_220_p_ce = grp_fu_1948_ce;
assign grp_fu_220_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_din0;
assign grp_fu_220_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1948_p_din1;
assign grp_fu_224_p_ce = grp_fu_1952_ce;
assign grp_fu_224_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_din0;
assign grp_fu_224_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1952_p_din1;
assign grp_fu_228_p_ce = grp_fu_1956_ce;
assign grp_fu_228_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_din0;
assign grp_fu_228_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1956_p_din1;
assign grp_fu_232_p_ce = grp_fu_1960_ce;
assign grp_fu_232_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_din0;
assign grp_fu_232_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1960_p_din1;
assign grp_fu_236_p_ce = grp_fu_1964_ce;
assign grp_fu_236_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_din0;
assign grp_fu_236_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1964_p_din1;
assign grp_fu_240_p_ce = grp_fu_1968_ce;
assign grp_fu_240_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_din0;
assign grp_fu_240_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_grp_fu_1968_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_ap_start_reg;
assign icmp_ln31_fu_518_p2 = ((v5_fu_118 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_578_p2 = ((v6_reg_458 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1316_p4 = {{v6_reg_458[7:2]}};
assign lshr_ln31_1_fu_558_p4 = {{v5_fu_118[7:2]}};
assign lshr_ln_fu_538_p4 = {{v5_fu_118[7:1]}};
assign mul_ln101_fu_1382_p0 = mul_ln101_fu_1382_p00;
assign mul_ln101_fu_1382_p00 = tmp_20_reg_1735;
assign mul_ln101_fu_1382_p1 = 14'd220;
assign mul_ln114_fu_1391_p0 = mul_ln114_fu_1391_p00;
assign mul_ln114_fu_1391_p00 = tmp_22_reg_1746;
assign mul_ln114_fu_1391_p1 = 14'd220;
assign mul_ln127_fu_1400_p0 = mul_ln127_fu_1400_p00;
assign mul_ln127_fu_1400_p00 = tmp_24_reg_1806;
assign mul_ln127_fu_1400_p1 = 14'd220;
assign mul_ln140_fu_1455_p0 = mul_ln140_fu_1455_p00;
assign mul_ln140_fu_1455_p00 = empty_175_fu_1445_p2;
assign mul_ln140_fu_1455_p1 = 14'd220;
assign mul_ln34_fu_1330_p0 = mul_ln34_fu_1330_p00;
assign mul_ln34_fu_1330_p00 = lshr_ln1_fu_1316_p4;
assign mul_ln34_fu_1330_p1 = 14'd220;
assign mul_ln38_fu_552_p0 = mul_ln38_fu_552_p00;
assign mul_ln38_fu_552_p00 = lshr_ln_fu_538_p4;
assign mul_ln38_fu_552_p1 = 15'd220;
assign mul_ln49_fu_1339_p0 = mul_ln49_fu_1339_p00;
assign mul_ln49_fu_1339_p00 = tmp_reg_1596;
assign mul_ln49_fu_1339_p1 = 14'd220;
assign mul_ln62_fu_1348_p0 = mul_ln62_fu_1348_p00;
assign mul_ln62_fu_1348_p00 = tmp_s_reg_1607;
assign mul_ln62_fu_1348_p1 = 14'd220;
assign mul_ln75_fu_1357_p0 = mul_ln75_fu_1357_p00;
assign mul_ln75_fu_1357_p00 = tmp_13_reg_1668;
assign mul_ln75_fu_1357_p1 = 14'd220;
assign mul_ln88_fu_1373_p0 = mul_ln88_fu_1373_p00;
assign mul_ln88_fu_1373_p00 = empty_146_fu_1363_p2;
assign mul_ln88_fu_1373_p1 = 14'd220;
assign p_cast3897_fu_615_p1 = empty_117_fu_610_p2;
assign p_cast3898_fu_770_p1 = empty_131_fu_765_p2;
assign p_cast3899_fu_907_p1 = empty_138_fu_902_p2;
assign p_cast3900_fu_944_p1 = empty_145_fu_939_p2;
assign p_cast3901_fu_1091_p1 = empty_153_fu_1086_p2;
assign p_cast3902_fu_1128_p1 = empty_160_fu_1123_p2;
assign p_cast3903_fu_1298_p1 = empty_167_reg_1801;
assign p_cast3904_fu_1305_p1 = empty_174_reg_1811;
assign p_cast_fu_733_p1 = empty_124_fu_728_p2;
assign p_shl1_fu_584_p3 = {{v6_reg_458}, {6'd0}};
assign p_shl2_fu_704_p3 = {{empty_122_reg_1590}, {6'd0}};
assign p_shl3938_fu_1205_p1 = tmp_25_fu_1197_p3;
assign p_shl3940_fu_1158_p1 = tmp_23_fu_1150_p3;
assign p_shl3942_fu_1113_p1 = tmp_21_fu_1106_p3;
assign p_shl3944_fu_1076_p1 = tmp_19_fu_1069_p3;
assign p_shl3946_fu_929_p1 = tmp_18_fu_922_p3;
assign p_shl3948_fu_892_p1 = tmp_17_fu_885_p3;
assign p_shl3950_fu_755_p1 = tmp_16_fu_748_p3;
assign p_shl3952_fu_718_p1 = tmp_15_fu_711_p3;
assign p_shl3954_fu_600_p1 = tmp_14_fu_592_p3;
assign p_shl3_fu_741_p3 = {{empty_129_reg_1601}, {6'd0}};
assign p_shl4_fu_878_p3 = {{empty_136_reg_1662}, {6'd0}};
assign p_shl5_fu_915_p3 = {{empty_143_reg_1673}, {6'd0}};
assign p_shl6_fu_1062_p3 = {{empty_151_reg_1729}, {6'd0}};
assign p_shl7_fu_1099_p3 = {{empty_158_reg_1740}, {6'd0}};
assign p_shl8_fu_1142_p3 = {{empty_165_fu_1136_p2}, {6'd0}};
assign p_shl_fu_1189_p3 = {{empty_172_fu_1183_p2}, {6'd0}};
assign tmp_14_fu_592_p3 = {{v6_reg_458}, {4'd0}};
assign tmp_15_fu_711_p3 = {{empty_122_reg_1590}, {4'd0}};
assign tmp_16_fu_748_p3 = {{empty_129_reg_1601}, {4'd0}};
assign tmp_17_fu_885_p3 = {{empty_136_reg_1662}, {4'd0}};
assign tmp_18_fu_922_p3 = {{empty_143_reg_1673}, {4'd0}};
assign tmp_19_fu_1069_p3 = {{empty_151_reg_1729}, {4'd0}};
assign tmp_21_fu_1106_p3 = {{empty_158_reg_1740}, {4'd0}};
assign tmp_23_fu_1150_p3 = {{empty_165_fu_1136_p2}, {4'd0}};
assign tmp_25_fu_1197_p3 = {{empty_172_fu_1183_p2}, {4'd0}};
assign trunc_ln31_1_fu_534_p1 = v5_fu_118[0:0];
assign trunc_ln31_fu_530_p1 = v5_fu_118[1:0];
assign trunc_ln32_fu_1312_p1 = v6_reg_458[1:0];
assign v11_fu_681_p2 = v224_0_q0;
assign v11_fu_681_p4 = v224_1_q0;
assign v11_fu_681_p6 = v224_2_q0;
assign v11_fu_681_p8 = v224_3_q0;
assign v11_fu_681_p9 = 'bx;
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
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v228_1_ce1;
assign v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_address0;
assign v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_address1;
assign v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_ce1;
assign v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_d0;
assign v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_d1;
assign v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_we0;
assign v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_0_we1;
assign v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_address0;
assign v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_address1;
assign v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_ce1;
assign v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_d0;
assign v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_d1;
assign v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_we0;
assign v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_1_we1;
assign v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_address0;
assign v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_address1;
assign v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_ce0;
assign v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_ce1;
assign v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_d0;
assign v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_d1;
assign v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_we0;
assign v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_2_we1;
assign v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_address0;
assign v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_address1;
assign v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_ce0;
assign v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_ce1;
assign v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_d0;
assign v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_d1;
assign v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_we0;
assign v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_470_v229_3_we1;
assign v236_read = v236_read_local;
assign v24_fu_816_p2 = v224_0_q1;
assign v24_fu_816_p4 = v224_1_q1;
assign v24_fu_816_p6 = v224_2_q1;
assign v24_fu_816_p8 = v224_3_q1;
assign v24_fu_816_p9 = 'bx;
assign v35_fu_855_p2 = v224_0_q0;
assign v35_fu_855_p4 = v224_1_q0;
assign v35_fu_855_p6 = v224_2_q0;
assign v35_fu_855_p8 = v224_3_q0;
assign v35_fu_855_p9 = 'bx;
assign v46_fu_1000_p2 = v224_0_q0;
assign v46_fu_1000_p4 = v224_1_q0;
assign v46_fu_1000_p6 = v224_2_q0;
assign v46_fu_1000_p8 = v224_3_q0;
assign v46_fu_1000_p9 = 'bx;
assign v57_1_fu_1039_p2 = v224_0_q1;
assign v57_1_fu_1039_p4 = v224_1_q1;
assign v57_1_fu_1039_p6 = v224_2_q1;
assign v57_1_fu_1039_p8 = v224_3_q1;
assign v57_1_fu_1039_p9 = 'bx;
assign v68_1_fu_1236_p2 = v224_0_q0;
assign v68_1_fu_1236_p4 = v224_1_q0;
assign v68_1_fu_1236_p6 = v224_2_q0;
assign v68_1_fu_1236_p8 = v224_3_q0;
assign v68_1_fu_1236_p9 = 'bx;
assign v79_1_fu_1275_p2 = v224_0_q1;
assign v79_1_fu_1275_p4 = v224_1_q1;
assign v79_1_fu_1275_p6 = v224_2_q1;
assign v79_1_fu_1275_p8 = v224_3_q1;
assign v79_1_fu_1275_p9 = 'bx;
assign v90_1_fu_1422_p2 = v224_0_q0;
assign v90_1_fu_1422_p4 = v224_1_q0;
assign v90_1_fu_1422_p6 = v224_2_q0;
assign v90_1_fu_1422_p8 = v224_3_q0;
assign v90_1_fu_1422_p9 = 'bx;
assign v_fu_1477_p2 = v224_0_q1;
assign v_fu_1477_p4 = v224_1_q1;
assign v_fu_1477_p6 = v224_2_q1;
assign v_fu_1477_p8 = v224_3_q1;
assign v_fu_1477_p9 = 'bx;
assign zext_ln31_fu_568_p1 = lshr_ln31_1_fu_558_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1549[13:6] <= 8'b00000000;
end
endmodule 