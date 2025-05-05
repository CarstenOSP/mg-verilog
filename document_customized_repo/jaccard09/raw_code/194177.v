module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v4,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
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
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_715;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_260_p2;
reg   [15:0] add_ln31_1_reg_720;
wire   [7:0] add_ln31_fu_272_p2;
reg   [7:0] add_ln31_reg_728;
wire   [15:0] zext_ln31_fu_278_p1;
reg   [15:0] zext_ln31_reg_733;
wire   [0:0] cmp11_fu_282_p2;
reg   [0:0] cmp11_reg_746;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_298_p2;
reg   [7:0] add_ln32_reg_759;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_reg_769;
reg   [5:0] tmp_4_reg_779;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_5_reg_789;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_6_reg_804;
reg   [5:0] tmp_7_reg_814;
reg   [31:0] v224_load_reg_819;
wire    ap_CS_fsm_state7;
reg   [5:0] tmp_8_reg_839;
reg   [31:0] v224_load_1_reg_844;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_849;
reg   [31:0] v224_load_3_reg_864;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_869;
reg   [31:0] v224_load_5_reg_884;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_889;
wire   [1:0] trunc_ln32_fu_468_p1;
reg   [1:0] trunc_ln32_reg_904;
wire    ap_CS_fsm_state11;
wire   [13:0] mul_ln34_fu_486_p2;
reg   [13:0] mul_ln34_reg_910;
wire   [13:0] mul_ln49_fu_495_p2;
reg   [13:0] mul_ln49_reg_915;
wire   [13:0] mul_ln62_fu_504_p2;
reg   [13:0] mul_ln62_reg_920;
wire   [13:0] mul_ln75_fu_513_p2;
reg   [13:0] mul_ln75_reg_925;
wire   [13:0] mul_ln88_fu_529_p2;
reg   [13:0] mul_ln88_reg_930;
wire   [13:0] mul_ln101_fu_538_p2;
reg   [13:0] mul_ln101_reg_935;
wire   [13:0] mul_ln114_fu_547_p2;
reg   [13:0] mul_ln114_reg_940;
wire   [13:0] mul_ln127_fu_556_p2;
reg   [13:0] mul_ln127_reg_945;
reg   [31:0] v224_load_7_reg_950;
wire   [13:0] mul_ln140_fu_572_p2;
reg   [13:0] mul_ln140_reg_955;
reg   [31:0] v224_load_8_reg_960;
wire   [31:0] v11_fu_578_p1;
reg   [31:0] v11_reg_965;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_582_p1;
reg   [31:0] v24_reg_970;
wire   [31:0] v35_fu_586_p1;
reg   [31:0] v35_reg_975;
wire   [31:0] v46_fu_590_p1;
reg   [31:0] v46_reg_980;
wire   [31:0] v57_fu_594_p1;
reg   [31:0] v57_reg_985;
wire   [31:0] v68_fu_598_p1;
reg   [31:0] v68_reg_990;
wire   [31:0] v79_fu_602_p1;
reg   [31:0] v79_reg_995;
wire   [31:0] v90_fu_606_p1;
reg   [31:0] v90_reg_1000;
wire   [31:0] v101_fu_610_p1;
reg   [31:0] v101_reg_1005;
wire   [0:0] empty_168_fu_614_p2;
reg   [0:0] empty_168_reg_1010;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_ce;
reg   [7:0] v6_reg_195;
wire   [0:0] icmp_ln31_fu_266_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start_reg;
wire   [63:0] p_cast3638_fu_372_p1;
wire   [63:0] p_cast_fu_416_p1;
wire   [63:0] p_cast3639_fu_420_p1;
wire   [63:0] p_cast3640_fu_444_p1;
wire   [63:0] p_cast3641_fu_448_p1;
wire   [63:0] p_cast3642_fu_452_p1;
wire   [63:0] p_cast3643_fu_456_p1;
wire   [63:0] p_cast3644_fu_460_p1;
wire   [63:0] p_cast3645_fu_464_p1;
reg   [15:0] phi_mul_fu_94;
wire   [0:0] icmp_ln32_fu_288_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_98;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [7:0] empty_142_fu_312_p2;
wire   [7:0] empty_145_fu_332_p2;
wire   [7:0] empty_148_fu_352_p2;
wire   [15:0] grp_fu_620_p3;
wire   [7:0] empty_155_fu_376_p2;
wire   [7:0] empty_158_fu_396_p2;
wire   [15:0] grp_fu_628_p3;
wire   [15:0] grp_fu_636_p3;
wire   [7:0] empty_161_fu_424_p2;
wire   [15:0] grp_fu_644_p3;
wire   [15:0] grp_fu_652_p4;
wire   [15:0] grp_fu_662_p3;
wire   [15:0] grp_fu_670_p3;
wire   [15:0] grp_fu_678_p3;
wire   [15:0] grp_fu_686_p4;
wire   [5:0] lshr_ln_fu_472_p4;
wire   [5:0] mul_ln34_fu_486_p0;
wire   [8:0] mul_ln34_fu_486_p1;
wire   [5:0] mul_ln49_fu_495_p0;
wire   [8:0] mul_ln49_fu_495_p1;
wire   [5:0] mul_ln62_fu_504_p0;
wire   [8:0] mul_ln62_fu_504_p1;
wire   [5:0] mul_ln75_fu_513_p0;
wire   [8:0] mul_ln75_fu_513_p1;
wire   [5:0] empty_154_fu_519_p2;
wire   [5:0] mul_ln88_fu_529_p0;
wire   [8:0] mul_ln88_fu_529_p1;
wire   [5:0] mul_ln101_fu_538_p0;
wire   [8:0] mul_ln101_fu_538_p1;
wire   [5:0] mul_ln114_fu_547_p0;
wire   [8:0] mul_ln114_fu_547_p1;
wire   [5:0] mul_ln127_fu_556_p0;
wire   [8:0] mul_ln127_fu_556_p1;
wire   [5:0] empty_167_fu_562_p2;
wire   [5:0] mul_ln140_fu_572_p0;
wire   [8:0] mul_ln140_fu_572_p1;
wire   [7:0] grp_fu_620_p0;
wire   [7:0] grp_fu_620_p1;
wire   [7:0] grp_fu_620_p2;
wire   [7:0] grp_fu_628_p0;
wire   [7:0] grp_fu_628_p1;
wire   [7:0] grp_fu_628_p2;
wire   [7:0] grp_fu_636_p0;
wire   [7:0] grp_fu_636_p1;
wire   [7:0] grp_fu_636_p2;
wire   [7:0] grp_fu_644_p0;
wire   [7:0] grp_fu_644_p1;
wire   [7:0] grp_fu_644_p2;
wire   [2:0] grp_fu_652_p1;
wire   [7:0] grp_fu_652_p2;
wire   [7:0] grp_fu_652_p3;
wire   [7:0] grp_fu_662_p0;
wire   [7:0] grp_fu_662_p1;
wire   [7:0] grp_fu_662_p2;
wire   [7:0] grp_fu_670_p0;
wire   [7:0] grp_fu_670_p1;
wire   [7:0] grp_fu_670_p2;
wire   [7:0] grp_fu_678_p0;
wire   [7:0] grp_fu_678_p1;
wire   [7:0] grp_fu_678_p2;
wire   [3:0] grp_fu_686_p1;
wire   [7:0] grp_fu_686_p2;
wire   [7:0] grp_fu_686_p3;
reg    grp_fu_1015_ce;
reg    grp_fu_1019_ce;
reg    grp_fu_1023_ce;
reg    grp_fu_1027_ce;
reg    grp_fu_1031_ce;
reg    grp_fu_1035_ce;
reg    grp_fu_1039_ce;
reg    grp_fu_1043_ce;
reg    grp_fu_1047_ce;
reg    grp_fu_1051_ce;
reg    grp_fu_1055_ce;
reg   [12:0] ap_NS_fsm;
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
wire   [15:0] grp_fu_620_p00;
wire   [15:0] grp_fu_628_p00;
wire   [15:0] grp_fu_636_p00;
wire   [15:0] grp_fu_644_p00;
wire   [15:0] grp_fu_662_p00;
wire   [15:0] grp_fu_670_p00;
wire   [15:0] grp_fu_678_p00;
wire   [13:0] mul_ln101_fu_538_p00;
wire   [13:0] mul_ln114_fu_547_p00;
wire   [13:0] mul_ln127_fu_556_p00;
wire   [13:0] mul_ln140_fu_572_p00;
wire   [13:0] mul_ln34_fu_486_p00;
wire   [13:0] mul_ln49_fu_495_p00;
wire   [13:0] mul_ln62_fu_504_p00;
wire   [13:0] mul_ln75_fu_513_p00;
wire   [13:0] mul_ln88_fu_529_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start_reg = 1'b0;
#0 phi_mul_fu_94 = 16'd0;
#0 v5_fu_98 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_207(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_d1),.v229_3_q1(v229_3_q1),.phi_mul(phi_mul_load_reg_715),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_910),.mul_ln88(mul_ln88_reg_930),.mul_ln140(mul_ln140_reg_955),.mul_ln75(mul_ln75_reg_925),.mul_ln127(mul_ln127_reg_945),.mul_ln62(mul_ln62_reg_920),.mul_ln114(mul_ln114_reg_940),.mul_ln49(mul_ln49_reg_915),.mul_ln101(mul_ln101_reg_935),.empty_17(trunc_ln32_reg_904),.v4(v4),.cmp11(cmp11_reg_746),.v11(v11_reg_965),.v24(v24_reg_970),.v35(v35_reg_975),.v46(v46_reg_980),.v57(v57_reg_985),.v68(v68_reg_990),.v79(v79_reg_995),.v90(v90_reg_1000),.v101(v101_reg_1005),.empty(empty_168_reg_1010),.grp_fu_1015_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_din0),.grp_fu_1015_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_din1),.grp_fu_1015_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_opcode),.grp_fu_1015_p_dout0(grp_fu_144_p_dout0),.grp_fu_1015_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_ce),.grp_fu_1019_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_din0),.grp_fu_1019_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_din1),.grp_fu_1019_p_dout0(grp_fu_148_p_dout0),.grp_fu_1019_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_ce),.grp_fu_1023_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_din0),.grp_fu_1023_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_din1),.grp_fu_1023_p_dout0(grp_fu_152_p_dout0),.grp_fu_1023_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_ce),.grp_fu_1027_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_din0),.grp_fu_1027_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_din1),.grp_fu_1027_p_dout0(grp_fu_156_p_dout0),.grp_fu_1027_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_ce),.grp_fu_1031_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_din0),.grp_fu_1031_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_din1),.grp_fu_1031_p_dout0(grp_fu_160_p_dout0),.grp_fu_1031_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_ce),.grp_fu_1035_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_din0),.grp_fu_1035_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_din1),.grp_fu_1035_p_dout0(grp_fu_164_p_dout0),.grp_fu_1035_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_ce),.grp_fu_1039_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_din0),.grp_fu_1039_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_din1),.grp_fu_1039_p_dout0(grp_fu_168_p_dout0),.grp_fu_1039_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_ce),.grp_fu_1043_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_din0),.grp_fu_1043_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_din1),.grp_fu_1043_p_dout0(grp_fu_172_p_dout0),.grp_fu_1043_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_ce),.grp_fu_1047_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_din0),.grp_fu_1047_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_din1),.grp_fu_1047_p_dout0(grp_fu_176_p_dout0),.grp_fu_1047_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_ce),.grp_fu_1051_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_din0),.grp_fu_1051_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_din1),.grp_fu_1051_p_dout0(grp_fu_180_p_dout0),.grp_fu_1051_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_ce),.grp_fu_1055_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_din0),.grp_fu_1055_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_din1),.grp_fu_1055_p_dout0(grp_fu_184_p_dout0),.grp_fu_1055_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U188(.din0(mul_ln34_fu_486_p0),.din1(mul_ln34_fu_486_p1),.dout(mul_ln34_fu_486_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U189(.din0(mul_ln49_fu_495_p0),.din1(mul_ln49_fu_495_p1),.dout(mul_ln49_fu_495_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U190(.din0(mul_ln62_fu_504_p0),.din1(mul_ln62_fu_504_p1),.dout(mul_ln62_fu_504_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U191(.din0(mul_ln75_fu_513_p0),.din1(mul_ln75_fu_513_p1),.dout(mul_ln75_fu_513_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U192(.din0(mul_ln88_fu_529_p0),.din1(mul_ln88_fu_529_p1),.dout(mul_ln88_fu_529_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U193(.din0(mul_ln101_fu_538_p0),.din1(mul_ln101_fu_538_p1),.dout(mul_ln101_fu_538_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U194(.din0(mul_ln114_fu_547_p0),.din1(mul_ln114_fu_547_p1),.dout(mul_ln114_fu_547_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U195(.din0(mul_ln127_fu_556_p0),.din1(mul_ln127_fu_556_p1),.dout(mul_ln127_fu_556_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U196(.din0(mul_ln140_fu_572_p0),.din1(mul_ln140_fu_572_p1),.dout(mul_ln140_fu_572_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U197(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_620_p0),.din1(grp_fu_620_p1),.din2(grp_fu_620_p2),.ce(1'b1),.dout(grp_fu_620_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U198(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_628_p0),.din1(grp_fu_628_p1),.din2(grp_fu_628_p2),.ce(1'b1),.dout(grp_fu_628_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U199(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_636_p0),.din1(grp_fu_636_p1),.din2(grp_fu_636_p2),.ce(1'b1),.dout(grp_fu_636_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U200(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_644_p0),.din1(grp_fu_644_p1),.din2(grp_fu_644_p2),.ce(1'b1),.dout(grp_fu_644_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U201(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_195),.din1(grp_fu_652_p1),.din2(grp_fu_652_p2),.din3(grp_fu_652_p3),.ce(1'b1),.dout(grp_fu_652_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U202(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_662_p0),.din1(grp_fu_662_p1),.din2(grp_fu_662_p2),.ce(1'b1),.dout(grp_fu_662_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_670_p0),.din1(grp_fu_670_p1),.din2(grp_fu_670_p2),.ce(1'b1),.dout(grp_fu_670_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U204(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_678_p0),.din1(grp_fu_678_p1),.din2(grp_fu_678_p2),.ce(1'b1),.dout(grp_fu_678_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U205(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_195),.din1(grp_fu_686_p1),.din2(grp_fu_686_p2),.din3(grp_fu_686_p3),.ce(1'b1),.dout(grp_fu_686_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_94 <= 16'd0;
    end else if (((icmp_ln32_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_94 <= add_ln31_1_reg_720;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_98 <= 8'd0;
    end else if (((icmp_ln32_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_98 <= add_ln31_reg_728;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_195 <= add_ln32_reg_759;
    end else if (((icmp_ln31_fu_266_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_195 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_720 <= add_ln31_1_fu_260_p2;
        add_ln31_reg_728 <= add_ln31_fu_272_p2;
        cmp11_reg_746 <= cmp11_fu_282_p2;
        phi_mul_load_reg_715 <= phi_mul_fu_94;
        zext_ln31_reg_733[7 : 0] <= zext_ln31_fu_278_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_759 <= add_ln32_fu_298_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_168_reg_1010 <= empty_168_fu_614_p2;
        v101_reg_1005 <= v101_fu_610_p1;
        v11_reg_965 <= v11_fu_578_p1;
        v24_reg_970 <= v24_fu_582_p1;
        v35_reg_975 <= v35_fu_586_p1;
        v46_reg_980 <= v46_fu_590_p1;
        v57_reg_985 <= v57_fu_594_p1;
        v68_reg_990 <= v68_fu_598_p1;
        v79_reg_995 <= v79_fu_602_p1;
        v90_reg_1000 <= v90_fu_606_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_935 <= mul_ln101_fu_538_p2;
        mul_ln114_reg_940 <= mul_ln114_fu_547_p2;
        mul_ln127_reg_945 <= mul_ln127_fu_556_p2;
        mul_ln140_reg_955 <= mul_ln140_fu_572_p2;
        mul_ln34_reg_910 <= mul_ln34_fu_486_p2;
        mul_ln49_reg_915 <= mul_ln49_fu_495_p2;
        mul_ln62_reg_920 <= mul_ln62_fu_504_p2;
        mul_ln75_reg_925 <= mul_ln75_fu_513_p2;
        mul_ln88_reg_930 <= mul_ln88_fu_529_p2;
        trunc_ln32_reg_904 <= trunc_ln32_fu_468_p1;
        v224_load_7_reg_950 <= v224_q0;
        v224_load_8_reg_960 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_4_reg_779 <= {{empty_145_fu_332_p2[7:2]}};
        tmp_reg_769 <= {{empty_142_fu_312_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_5_reg_789 <= {{empty_148_fu_352_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_6_reg_804 <= {{empty_155_fu_376_p2[7:2]}};
        tmp_7_reg_814 <= {{empty_158_fu_396_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_8_reg_839 <= {{empty_161_fu_424_p2[7:2]}};
        v224_load_reg_819 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_844 <= v224_q1;
        v224_load_2_reg_849 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_864 <= v224_q0;
        v224_load_4_reg_869 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_884 <= v224_q0;
        v224_load_6_reg_889 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
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
    if ((((icmp_ln31_fu_266_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_266_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1015_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_ce;
    end else begin
        grp_fu_1015_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1019_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_ce;
    end else begin
        grp_fu_1019_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1023_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_ce;
    end else begin
        grp_fu_1023_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1027_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_ce;
    end else begin
        grp_fu_1027_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1031_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_ce;
    end else begin
        grp_fu_1031_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1035_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_ce;
    end else begin
        grp_fu_1035_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1039_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_ce;
    end else begin
        grp_fu_1039_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1043_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_ce;
    end else begin
        grp_fu_1043_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1047_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_ce;
    end else begin
        grp_fu_1047_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1051_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_ce;
    end else begin
        grp_fu_1051_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1055_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_ce;
    end else begin
        grp_fu_1055_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast3644_fu_460_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast3642_fu_452_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast3640_fu_444_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast3639_fu_420_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast3638_fu_372_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast3645_fu_464_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast3643_fu_456_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast3641_fu_448_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_416_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
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
            if (((icmp_ln31_fu_266_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_288_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_260_p2 = (phi_mul_fu_94 + 16'd220);
assign add_ln31_fu_272_p2 = (v5_fu_98 + 8'd1);
assign add_ln32_fu_298_p2 = (v6_reg_195 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
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
assign cmp11_fu_282_p2 = ((v5_fu_98 == 8'd0) ? 1'b1 : 1'b0);
assign empty_142_fu_312_p2 = (v6_reg_195 + 8'd1);
assign empty_145_fu_332_p2 = (v6_reg_195 + 8'd2);
assign empty_148_fu_352_p2 = (v6_reg_195 + 8'd3);
assign empty_154_fu_519_p2 = (lshr_ln_fu_472_p4 + 6'd1);
assign empty_155_fu_376_p2 = (v6_reg_195 + 8'd5);
assign empty_158_fu_396_p2 = (v6_reg_195 + 8'd6);
assign empty_161_fu_424_p2 = (v6_reg_195 + 8'd7);
assign empty_167_fu_562_p2 = (lshr_ln_fu_472_p4 + 6'd2);
assign empty_168_fu_614_p2 = ((trunc_ln32_reg_904 == 2'd3) ? 1'b1 : 1'b0);
assign grp_fu_144_p_ce = grp_fu_1015_ce;
assign grp_fu_144_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_din0;
assign grp_fu_144_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1015_p_din1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = grp_fu_1019_ce;
assign grp_fu_148_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_din0;
assign grp_fu_148_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1019_p_din1;
assign grp_fu_152_p_ce = grp_fu_1023_ce;
assign grp_fu_152_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_din0;
assign grp_fu_152_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1023_p_din1;
assign grp_fu_156_p_ce = grp_fu_1027_ce;
assign grp_fu_156_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_din0;
assign grp_fu_156_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1027_p_din1;
assign grp_fu_160_p_ce = grp_fu_1031_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1031_p_din1;
assign grp_fu_164_p_ce = grp_fu_1035_ce;
assign grp_fu_164_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_din0;
assign grp_fu_164_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1035_p_din1;
assign grp_fu_168_p_ce = grp_fu_1039_ce;
assign grp_fu_168_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_din0;
assign grp_fu_168_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1039_p_din1;
assign grp_fu_172_p_ce = grp_fu_1043_ce;
assign grp_fu_172_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1043_p_din1;
assign grp_fu_176_p_ce = grp_fu_1047_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1047_p_din1;
assign grp_fu_180_p_ce = grp_fu_1051_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1051_p_din1;
assign grp_fu_184_p_ce = grp_fu_1055_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_grp_fu_1055_p_din1;
assign grp_fu_620_p0 = grp_fu_620_p00;
assign grp_fu_620_p00 = v6_reg_195;
assign grp_fu_620_p1 = 16'd190;
assign grp_fu_620_p2 = zext_ln31_reg_733;
assign grp_fu_628_p0 = grp_fu_628_p00;
assign grp_fu_628_p00 = empty_142_fu_312_p2;
assign grp_fu_628_p1 = 16'd190;
assign grp_fu_628_p2 = zext_ln31_reg_733;
assign grp_fu_636_p0 = grp_fu_636_p00;
assign grp_fu_636_p00 = empty_145_fu_332_p2;
assign grp_fu_636_p1 = 16'd190;
assign grp_fu_636_p2 = zext_ln31_reg_733;
assign grp_fu_644_p0 = grp_fu_644_p00;
assign grp_fu_644_p00 = empty_148_fu_352_p2;
assign grp_fu_644_p1 = 16'd190;
assign grp_fu_644_p2 = zext_ln31_reg_733;
assign grp_fu_652_p1 = 8'd4;
assign grp_fu_652_p2 = 16'd190;
assign grp_fu_652_p3 = zext_ln31_reg_733;
assign grp_fu_662_p0 = grp_fu_662_p00;
assign grp_fu_662_p00 = empty_155_fu_376_p2;
assign grp_fu_662_p1 = 16'd190;
assign grp_fu_662_p2 = zext_ln31_reg_733;
assign grp_fu_670_p0 = grp_fu_670_p00;
assign grp_fu_670_p00 = empty_158_fu_396_p2;
assign grp_fu_670_p1 = 16'd190;
assign grp_fu_670_p2 = zext_ln31_reg_733;
assign grp_fu_678_p0 = grp_fu_678_p00;
assign grp_fu_678_p00 = empty_161_fu_424_p2;
assign grp_fu_678_p1 = 16'd190;
assign grp_fu_678_p2 = zext_ln31_reg_733;
assign grp_fu_686_p1 = 8'd8;
assign grp_fu_686_p2 = 16'd190;
assign grp_fu_686_p3 = zext_ln31_reg_733;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_ap_start_reg;
assign icmp_ln31_fu_266_p2 = ((v5_fu_98 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_288_p2 = ((v6_reg_195 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_472_p4 = {{v6_reg_195[7:2]}};
assign mul_ln101_fu_538_p0 = mul_ln101_fu_538_p00;
assign mul_ln101_fu_538_p00 = tmp_6_reg_804;
assign mul_ln101_fu_538_p1 = 14'd220;
assign mul_ln114_fu_547_p0 = mul_ln114_fu_547_p00;
assign mul_ln114_fu_547_p00 = tmp_7_reg_814;
assign mul_ln114_fu_547_p1 = 14'd220;
assign mul_ln127_fu_556_p0 = mul_ln127_fu_556_p00;
assign mul_ln127_fu_556_p00 = tmp_8_reg_839;
assign mul_ln127_fu_556_p1 = 14'd220;
assign mul_ln140_fu_572_p0 = mul_ln140_fu_572_p00;
assign mul_ln140_fu_572_p00 = empty_167_fu_562_p2;
assign mul_ln140_fu_572_p1 = 14'd220;
assign mul_ln34_fu_486_p0 = mul_ln34_fu_486_p00;
assign mul_ln34_fu_486_p00 = lshr_ln_fu_472_p4;
assign mul_ln34_fu_486_p1 = 14'd220;
assign mul_ln49_fu_495_p0 = mul_ln49_fu_495_p00;
assign mul_ln49_fu_495_p00 = tmp_reg_769;
assign mul_ln49_fu_495_p1 = 14'd220;
assign mul_ln62_fu_504_p0 = mul_ln62_fu_504_p00;
assign mul_ln62_fu_504_p00 = tmp_4_reg_779;
assign mul_ln62_fu_504_p1 = 14'd220;
assign mul_ln75_fu_513_p0 = mul_ln75_fu_513_p00;
assign mul_ln75_fu_513_p00 = tmp_5_reg_789;
assign mul_ln75_fu_513_p1 = 14'd220;
assign mul_ln88_fu_529_p0 = mul_ln88_fu_529_p00;
assign mul_ln88_fu_529_p00 = empty_154_fu_519_p2;
assign mul_ln88_fu_529_p1 = 14'd220;
assign p_cast3638_fu_372_p1 = grp_fu_620_p3;
assign p_cast3639_fu_420_p1 = grp_fu_636_p3;
assign p_cast3640_fu_444_p1 = grp_fu_644_p3;
assign p_cast3641_fu_448_p1 = grp_fu_652_p4;
assign p_cast3642_fu_452_p1 = grp_fu_662_p3;
assign p_cast3643_fu_456_p1 = grp_fu_670_p3;
assign p_cast3644_fu_460_p1 = grp_fu_678_p3;
assign p_cast3645_fu_464_p1 = grp_fu_686_p4;
assign p_cast_fu_416_p1 = grp_fu_628_p3;
assign trunc_ln32_fu_468_p1 = v6_reg_195[1:0];
assign v101_fu_610_p1 = v224_load_8_reg_960;
assign v11_fu_578_p1 = v224_load_reg_819;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_address0;
assign v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_address1;
assign v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_ce0;
assign v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v228_ce1;
assign v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_address0;
assign v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_address1;
assign v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_ce1;
assign v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_d0;
assign v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_d1;
assign v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_we0;
assign v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_0_we1;
assign v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_address0;
assign v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_address1;
assign v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_ce1;
assign v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_d0;
assign v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_d1;
assign v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_we0;
assign v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_1_we1;
assign v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_address0;
assign v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_address1;
assign v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_ce0;
assign v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_ce1;
assign v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_d0;
assign v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_d1;
assign v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_we0;
assign v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_2_we1;
assign v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_address0;
assign v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_address1;
assign v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_ce0;
assign v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_ce1;
assign v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_d0;
assign v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_d1;
assign v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_we0;
assign v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_207_v229_3_we1;
assign v236_read = v236_read_local;
assign v24_fu_582_p1 = v224_load_1_reg_844;
assign v35_fu_586_p1 = v224_load_2_reg_849;
assign v46_fu_590_p1 = v224_load_3_reg_864;
assign v57_fu_594_p1 = v224_load_4_reg_869;
assign v68_fu_598_p1 = v224_load_5_reg_884;
assign v79_fu_602_p1 = v224_load_6_reg_889;
assign v90_fu_606_p1 = v224_load_7_reg_950;
assign zext_ln31_fu_278_p1 = v5_fu_98;
always @ (posedge ap_clk) begin
    zext_ln31_reg_733[15:8] <= 8'b00000000;
end
endmodule 