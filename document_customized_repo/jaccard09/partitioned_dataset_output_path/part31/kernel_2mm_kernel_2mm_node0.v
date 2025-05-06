
module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v4,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce);  
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
output  [13:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [13:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [13:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [13:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [13:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [13:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [13:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [13:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [12:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [12:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [12:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [12:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [12:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [12:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [12:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [12:0] v229_4_address0;
output   v229_4_ce0;
output   v229_4_we0;
output  [31:0] v229_4_d0;
input  [31:0] v229_4_q0;
output  [12:0] v229_4_address1;
output   v229_4_ce1;
output   v229_4_we1;
output  [31:0] v229_4_d1;
input  [31:0] v229_4_q1;
output  [12:0] v229_5_address0;
output   v229_5_ce0;
output   v229_5_we0;
output  [31:0] v229_5_d0;
input  [31:0] v229_5_q0;
output  [12:0] v229_5_address1;
output   v229_5_ce1;
output   v229_5_we1;
output  [31:0] v229_5_d1;
input  [31:0] v229_5_q1;
output  [12:0] v229_6_address0;
output   v229_6_ce0;
output   v229_6_we0;
output  [31:0] v229_6_d0;
input  [31:0] v229_6_q0;
output  [12:0] v229_6_address1;
output   v229_6_ce1;
output   v229_6_we1;
output  [31:0] v229_6_d1;
input  [31:0] v229_6_q1;
output  [12:0] v229_7_address0;
output   v229_7_ce0;
output   v229_7_we0;
output  [31:0] v229_7_d0;
input  [31:0] v229_7_q0;
output  [12:0] v229_7_address1;
output   v229_7_ce1;
output   v229_7_we1;
output  [31:0] v229_7_d1;
input  [31:0] v229_7_q1;
input  [31:0] v4;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
output  [1:0] grp_fu_160_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_283_p2;
reg   [7:0] add_ln31_reg_753;
wire    ap_CS_fsm_state2;
wire   [15:0] zext_ln31_fu_289_p1;
reg   [15:0] zext_ln31_reg_758;
wire   [1:0] trunc_ln31_fu_293_p1;
reg   [1:0] trunc_ln31_reg_771;
wire   [13:0] mul_ln38_fu_311_p2;
reg   [13:0] mul_ln38_reg_776;
wire   [0:0] cmp11_fu_317_p2;
reg   [0:0] cmp11_reg_781;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_333_p2;
reg   [7:0] add_ln32_reg_794;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_reg_804;
reg   [4:0] tmp_1_reg_814;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_2_reg_824;
reg   [4:0] tmp_3_reg_834;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_4_reg_849;
reg   [4:0] tmp_5_reg_859;
reg   [31:0] v224_load_reg_864;
wire    ap_CS_fsm_state7;
reg   [4:0] tmp_6_reg_884;
reg   [31:0] v224_load_1_reg_889;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_load_2_reg_894;
reg   [31:0] v224_load_3_reg_909;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_load_4_reg_914;
reg   [31:0] v224_load_5_reg_929;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_load_6_reg_934;
wire   [2:0] trunc_ln32_fu_519_p1;
reg   [2:0] trunc_ln32_reg_949;
wire    ap_CS_fsm_state11;
wire   [12:0] mul_ln34_fu_537_p2;
reg   [12:0] mul_ln34_reg_955;
wire   [12:0] mul_ln49_fu_546_p2;
reg   [12:0] mul_ln49_reg_960;
wire   [12:0] mul_ln62_fu_555_p2;
reg   [12:0] mul_ln62_reg_965;
wire   [12:0] mul_ln75_fu_564_p2;
reg   [12:0] mul_ln75_reg_970;
wire   [12:0] mul_ln88_fu_573_p2;
reg   [12:0] mul_ln88_reg_975;
wire   [12:0] mul_ln101_fu_582_p2;
reg   [12:0] mul_ln101_reg_980;
wire   [12:0] mul_ln114_fu_591_p2;
reg   [12:0] mul_ln114_reg_985;
wire   [12:0] mul_ln127_fu_600_p2;
reg   [12:0] mul_ln127_reg_990;
reg   [31:0] v224_load_7_reg_995;
wire   [12:0] mul_ln140_fu_616_p2;
reg   [12:0] mul_ln140_reg_1000;
reg   [31:0] v224_load_8_reg_1005;
wire   [31:0] v11_fu_622_p1;
reg   [31:0] v11_reg_1010;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_626_p1;
reg   [31:0] v24_reg_1015;
wire   [31:0] v35_fu_630_p1;
reg   [31:0] v35_reg_1020;
wire   [31:0] v46_fu_634_p1;
reg   [31:0] v46_reg_1025;
wire   [31:0] v57_fu_638_p1;
reg   [31:0] v57_reg_1030;
wire   [31:0] v68_fu_642_p1;
reg   [31:0] v68_reg_1035;
wire   [31:0] v79_fu_646_p1;
reg   [31:0] v79_reg_1040;
wire   [31:0] v90_fu_650_p1;
reg   [31:0] v90_reg_1045;
wire   [31:0] v101_fu_654_p1;
reg   [31:0] v101_reg_1050;
wire   [0:0] empty_67_fu_658_p2;
reg   [0:0] empty_67_reg_1055;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_ce;
reg   [7:0] v6_reg_205;
wire   [0:0] icmp_ln31_fu_277_p2;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start_reg;
wire   [63:0] p_cast1022_fu_423_p1;
wire   [63:0] p_cast_fu_467_p1;
wire   [63:0] p_cast1023_fu_471_p1;
wire   [63:0] p_cast1024_fu_495_p1;
wire   [63:0] p_cast1025_fu_499_p1;
wire   [63:0] p_cast1026_fu_503_p1;
wire   [63:0] p_cast1027_fu_507_p1;
wire   [63:0] p_cast1028_fu_511_p1;
wire   [63:0] p_cast1029_fu_515_p1;
reg   [7:0] v5_fu_108;
wire   [0:0] icmp_ln32_fu_323_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [5:0] lshr_ln_fu_297_p4;
wire   [5:0] mul_ln38_fu_311_p0;
wire   [8:0] mul_ln38_fu_311_p1;
wire   [7:0] empty_42_fu_343_p2;
wire   [7:0] empty_45_fu_363_p2;
wire   [7:0] empty_48_fu_383_p2;
wire   [7:0] empty_51_fu_403_p2;
wire   [15:0] grp_fu_664_p3;
wire   [7:0] empty_54_fu_427_p2;
wire   [7:0] empty_57_fu_447_p2;
wire   [15:0] grp_fu_672_p3;
wire   [15:0] grp_fu_680_p3;
wire   [7:0] empty_60_fu_475_p2;
wire   [15:0] grp_fu_688_p3;
wire   [15:0] grp_fu_696_p3;
wire   [15:0] grp_fu_704_p3;
wire   [15:0] grp_fu_712_p3;
wire   [15:0] grp_fu_720_p3;
wire   [15:0] grp_fu_728_p4;
wire   [4:0] lshr_ln1_fu_523_p4;
wire   [4:0] mul_ln34_fu_537_p0;
wire   [8:0] mul_ln34_fu_537_p1;
wire   [4:0] mul_ln49_fu_546_p0;
wire   [8:0] mul_ln49_fu_546_p1;
wire   [4:0] mul_ln62_fu_555_p0;
wire   [8:0] mul_ln62_fu_555_p1;
wire   [4:0] mul_ln75_fu_564_p0;
wire   [8:0] mul_ln75_fu_564_p1;
wire   [4:0] mul_ln88_fu_573_p0;
wire   [8:0] mul_ln88_fu_573_p1;
wire   [4:0] mul_ln101_fu_582_p0;
wire   [8:0] mul_ln101_fu_582_p1;
wire   [4:0] mul_ln114_fu_591_p0;
wire   [8:0] mul_ln114_fu_591_p1;
wire   [4:0] mul_ln127_fu_600_p0;
wire   [8:0] mul_ln127_fu_600_p1;
wire   [4:0] empty_66_fu_606_p2;
wire   [4:0] mul_ln140_fu_616_p0;
wire   [8:0] mul_ln140_fu_616_p1;
wire   [7:0] grp_fu_664_p0;
wire   [7:0] grp_fu_664_p1;
wire   [7:0] grp_fu_664_p2;
wire   [7:0] grp_fu_672_p0;
wire   [7:0] grp_fu_672_p1;
wire   [7:0] grp_fu_672_p2;
wire   [7:0] grp_fu_680_p0;
wire   [7:0] grp_fu_680_p1;
wire   [7:0] grp_fu_680_p2;
wire   [7:0] grp_fu_688_p0;
wire   [7:0] grp_fu_688_p1;
wire   [7:0] grp_fu_688_p2;
wire   [7:0] grp_fu_696_p0;
wire   [7:0] grp_fu_696_p1;
wire   [7:0] grp_fu_696_p2;
wire   [7:0] grp_fu_704_p0;
wire   [7:0] grp_fu_704_p1;
wire   [7:0] grp_fu_704_p2;
wire   [7:0] grp_fu_712_p0;
wire   [7:0] grp_fu_712_p1;
wire   [7:0] grp_fu_712_p2;
wire   [7:0] grp_fu_720_p0;
wire   [7:0] grp_fu_720_p1;
wire   [7:0] grp_fu_720_p2;
wire   [3:0] grp_fu_728_p1;
wire   [7:0] grp_fu_728_p2;
wire   [7:0] grp_fu_728_p3;
reg    grp_fu_1060_ce;
reg    grp_fu_1064_ce;
reg    grp_fu_1068_ce;
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
wire   [15:0] grp_fu_664_p00;
wire   [15:0] grp_fu_672_p00;
wire   [15:0] grp_fu_680_p00;
wire   [15:0] grp_fu_688_p00;
wire   [15:0] grp_fu_696_p00;
wire   [15:0] grp_fu_704_p00;
wire   [15:0] grp_fu_712_p00;
wire   [15:0] grp_fu_720_p00;
wire   [12:0] mul_ln101_fu_582_p00;
wire   [12:0] mul_ln114_fu_591_p00;
wire   [12:0] mul_ln127_fu_600_p00;
wire   [12:0] mul_ln140_fu_616_p00;
wire   [12:0] mul_ln34_fu_537_p00;
wire   [13:0] mul_ln38_fu_311_p00;
wire   [12:0] mul_ln49_fu_546_p00;
wire   [12:0] mul_ln62_fu_555_p00;
wire   [12:0] mul_ln75_fu_564_p00;
wire   [12:0] mul_ln88_fu_573_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start_reg = 1'b0;
#0 v5_fu_108 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_217(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_ready),.v4(v4),.cmp11(cmp11_reg_781),.v229_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_address0),.v229_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_ce0),.v229_7_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_we0),.v229_7_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_d0),.v229_7_q0(v229_7_q0),.v229_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_address1),.v229_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_ce1),.v229_7_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_we1),.v229_7_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_d1),.v229_7_q1(v229_7_q1),.v229_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_address0),.v229_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_ce0),.v229_6_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_we0),.v229_6_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_d0),.v229_6_q0(v229_6_q0),.v229_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_address1),.v229_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_ce1),.v229_6_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_we1),.v229_6_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_d1),.v229_6_q1(v229_6_q1),.v229_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_address0),.v229_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_ce0),.v229_5_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_we0),.v229_5_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_d0),.v229_5_q0(v229_5_q0),.v229_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_address1),.v229_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_ce1),.v229_5_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_we1),.v229_5_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_d1),.v229_5_q1(v229_5_q1),.v229_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_address0),.v229_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_ce0),.v229_4_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_we0),.v229_4_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_d0),.v229_4_q0(v229_4_q0),.v229_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_address1),.v229_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_ce1),.v229_4_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_we1),.v229_4_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_d1),.v229_4_q1(v229_4_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_d1),.v229_0_q1(v229_0_q1),.mul_ln38(mul_ln38_reg_776),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34(mul_ln34_reg_955),.mul_ln140(mul_ln140_reg_1000),.mul_ln127(mul_ln127_reg_990),.mul_ln114(mul_ln114_reg_985),.mul_ln101(mul_ln101_reg_980),.mul_ln88(mul_ln88_reg_975),.mul_ln75(mul_ln75_reg_970),.mul_ln62(mul_ln62_reg_965),.mul_ln49(mul_ln49_reg_960),.empty_13(trunc_ln32_reg_949),.empty_14(trunc_ln31_reg_771),.v11(v11_reg_1010),.v24(v24_reg_1015),.v35(v35_reg_1020),.v46(v46_reg_1025),.v57(v57_reg_1030),.v68(v68_reg_1035),.v79(v79_reg_1040),.v90(v90_reg_1045),.v101(v101_reg_1050),.empty(empty_67_reg_1055),.grp_fu_1060_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_din0),.grp_fu_1060_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_din1),.grp_fu_1060_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_opcode),.grp_fu_1060_p_dout0(grp_fu_160_p_dout0),.grp_fu_1060_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_ce),.grp_fu_1064_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_din0),.grp_fu_1064_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_din1),.grp_fu_1064_p_dout0(grp_fu_164_p_dout0),.grp_fu_1064_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_ce),.grp_fu_1068_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_din0),.grp_fu_1068_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_din1),.grp_fu_1068_p_dout0(grp_fu_168_p_dout0),.grp_fu_1068_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U117(.din0(mul_ln38_fu_311_p0),.din1(mul_ln38_fu_311_p1),.dout(mul_ln38_fu_311_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U118(.din0(mul_ln34_fu_537_p0),.din1(mul_ln34_fu_537_p1),.dout(mul_ln34_fu_537_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U119(.din0(mul_ln49_fu_546_p0),.din1(mul_ln49_fu_546_p1),.dout(mul_ln49_fu_546_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U120(.din0(mul_ln62_fu_555_p0),.din1(mul_ln62_fu_555_p1),.dout(mul_ln62_fu_555_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U121(.din0(mul_ln75_fu_564_p0),.din1(mul_ln75_fu_564_p1),.dout(mul_ln75_fu_564_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U122(.din0(mul_ln88_fu_573_p0),.din1(mul_ln88_fu_573_p1),.dout(mul_ln88_fu_573_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U123(.din0(mul_ln101_fu_582_p0),.din1(mul_ln101_fu_582_p1),.dout(mul_ln101_fu_582_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U124(.din0(mul_ln114_fu_591_p0),.din1(mul_ln114_fu_591_p1),.dout(mul_ln114_fu_591_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U125(.din0(mul_ln127_fu_600_p0),.din1(mul_ln127_fu_600_p1),.dout(mul_ln127_fu_600_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U126(.din0(mul_ln140_fu_616_p0),.din1(mul_ln140_fu_616_p1),.dout(mul_ln140_fu_616_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_664_p0),.din1(grp_fu_664_p1),.din2(grp_fu_664_p2),.ce(1'b1),.dout(grp_fu_664_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_672_p0),.din1(grp_fu_672_p1),.din2(grp_fu_672_p2),.ce(1'b1),.dout(grp_fu_672_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_680_p0),.din1(grp_fu_680_p1),.din2(grp_fu_680_p2),.ce(1'b1),.dout(grp_fu_680_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U130(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_688_p0),.din1(grp_fu_688_p1),.din2(grp_fu_688_p2),.ce(1'b1),.dout(grp_fu_688_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_696_p0),.din1(grp_fu_696_p1),.din2(grp_fu_696_p2),.ce(1'b1),.dout(grp_fu_696_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_704_p0),.din1(grp_fu_704_p1),.din2(grp_fu_704_p2),.ce(1'b1),.dout(grp_fu_704_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_712_p0),.din1(grp_fu_712_p1),.din2(grp_fu_712_p2),.ce(1'b1),.dout(grp_fu_712_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_720_p0),.din1(grp_fu_720_p1),.din2(grp_fu_720_p2),.ce(1'b1),.dout(grp_fu_720_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_205),.din1(grp_fu_728_p1),.din2(grp_fu_728_p2),.din3(grp_fu_728_p3),.ce(1'b1),.dout(grp_fu_728_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_108 <= 8'd0;
    end else if (((icmp_ln32_fu_323_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_108 <= add_ln31_reg_753;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_205 <= add_ln32_reg_794;
    end else if (((icmp_ln31_fu_277_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_205 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_753 <= add_ln31_fu_283_p2;
        cmp11_reg_781 <= cmp11_fu_317_p2;
        mul_ln38_reg_776 <= mul_ln38_fu_311_p2;
        trunc_ln31_reg_771 <= trunc_ln31_fu_293_p1;
        zext_ln31_reg_758[7 : 0] <= zext_ln31_fu_289_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_794 <= add_ln32_fu_333_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_67_reg_1055 <= empty_67_fu_658_p2;
        v101_reg_1050 <= v101_fu_654_p1;
        v11_reg_1010 <= v11_fu_622_p1;
        v24_reg_1015 <= v24_fu_626_p1;
        v35_reg_1020 <= v35_fu_630_p1;
        v46_reg_1025 <= v46_fu_634_p1;
        v57_reg_1030 <= v57_fu_638_p1;
        v68_reg_1035 <= v68_fu_642_p1;
        v79_reg_1040 <= v79_fu_646_p1;
        v90_reg_1045 <= v90_fu_650_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_980 <= mul_ln101_fu_582_p2;
        mul_ln114_reg_985 <= mul_ln114_fu_591_p2;
        mul_ln127_reg_990 <= mul_ln127_fu_600_p2;
        mul_ln140_reg_1000 <= mul_ln140_fu_616_p2;
        mul_ln34_reg_955 <= mul_ln34_fu_537_p2;
        mul_ln49_reg_960 <= mul_ln49_fu_546_p2;
        mul_ln62_reg_965 <= mul_ln62_fu_555_p2;
        mul_ln75_reg_970 <= mul_ln75_fu_564_p2;
        mul_ln88_reg_975 <= mul_ln88_fu_573_p2;
        trunc_ln32_reg_949 <= trunc_ln32_fu_519_p1;
        v224_load_7_reg_995 <= v224_q0;
        v224_load_8_reg_1005 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_814 <= {{empty_45_fu_363_p2[7:3]}};
        tmp_reg_804 <= {{empty_42_fu_343_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_824 <= {{empty_48_fu_383_p2[7:3]}};
        tmp_3_reg_834 <= {{empty_51_fu_403_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_4_reg_849 <= {{empty_54_fu_427_p2[7:3]}};
        tmp_5_reg_859 <= {{empty_57_fu_447_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_6_reg_884 <= {{empty_60_fu_475_p2[7:3]}};
        v224_load_reg_864 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_load_1_reg_889 <= v224_q1;
        v224_load_2_reg_894 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_load_3_reg_909 <= v224_q0;
        v224_load_4_reg_914 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_load_5_reg_929 <= v224_q0;
        v224_load_6_reg_934 <= v224_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_done == 1'b0)) begin
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
    if ((((icmp_ln31_fu_277_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_fu_277_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1060_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_ce;
    end else begin
        grp_fu_1060_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1064_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_ce;
    end else begin
        grp_fu_1064_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1068_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_ce;
    end else begin
        grp_fu_1068_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast1028_fu_511_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast1026_fu_503_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast1024_fu_495_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast1023_fu_471_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast1022_fu_423_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast1029_fu_515_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast1027_fu_507_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast1025_fu_499_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_467_p1;
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
            if (((icmp_ln31_fu_277_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_323_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
assign add_ln31_fu_283_p2 = (v5_fu_108 + 8'd1);
assign add_ln32_fu_333_p2 = (v6_reg_205 + 8'd9);
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
assign cmp11_fu_317_p2 = ((v5_fu_108 == 8'd0) ? 1'b1 : 1'b0);
assign empty_42_fu_343_p2 = (v6_reg_205 + 8'd1);
assign empty_45_fu_363_p2 = (v6_reg_205 + 8'd2);
assign empty_48_fu_383_p2 = (v6_reg_205 + 8'd3);
assign empty_51_fu_403_p2 = (v6_reg_205 + 8'd4);
assign empty_54_fu_427_p2 = (v6_reg_205 + 8'd5);
assign empty_57_fu_447_p2 = (v6_reg_205 + 8'd6);
assign empty_60_fu_475_p2 = (v6_reg_205 + 8'd7);
assign empty_66_fu_606_p2 = (lshr_ln1_fu_523_p4 + 5'd1);
assign empty_67_fu_658_p2 = ((trunc_ln32_reg_949 == 3'd7) ? 1'b1 : 1'b0);
assign grp_fu_160_p_ce = grp_fu_1060_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1060_p_din1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_1064_ce;
assign grp_fu_164_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_din0;
assign grp_fu_164_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1064_p_din1;
assign grp_fu_168_p_ce = grp_fu_1068_ce;
assign grp_fu_168_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_din0;
assign grp_fu_168_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_grp_fu_1068_p_din1;
assign grp_fu_664_p0 = grp_fu_664_p00;
assign grp_fu_664_p00 = v6_reg_205;
assign grp_fu_664_p1 = 16'd190;
assign grp_fu_664_p2 = zext_ln31_reg_758;
assign grp_fu_672_p0 = grp_fu_672_p00;
assign grp_fu_672_p00 = empty_42_fu_343_p2;
assign grp_fu_672_p1 = 16'd190;
assign grp_fu_672_p2 = zext_ln31_reg_758;
assign grp_fu_680_p0 = grp_fu_680_p00;
assign grp_fu_680_p00 = empty_45_fu_363_p2;
assign grp_fu_680_p1 = 16'd190;
assign grp_fu_680_p2 = zext_ln31_reg_758;
assign grp_fu_688_p0 = grp_fu_688_p00;
assign grp_fu_688_p00 = empty_48_fu_383_p2;
assign grp_fu_688_p1 = 16'd190;
assign grp_fu_688_p2 = zext_ln31_reg_758;
assign grp_fu_696_p0 = grp_fu_696_p00;
assign grp_fu_696_p00 = empty_51_fu_403_p2;
assign grp_fu_696_p1 = 16'd190;
assign grp_fu_696_p2 = zext_ln31_reg_758;
assign grp_fu_704_p0 = grp_fu_704_p00;
assign grp_fu_704_p00 = empty_54_fu_427_p2;
assign grp_fu_704_p1 = 16'd190;
assign grp_fu_704_p2 = zext_ln31_reg_758;
assign grp_fu_712_p0 = grp_fu_712_p00;
assign grp_fu_712_p00 = empty_57_fu_447_p2;
assign grp_fu_712_p1 = 16'd190;
assign grp_fu_712_p2 = zext_ln31_reg_758;
assign grp_fu_720_p0 = grp_fu_720_p00;
assign grp_fu_720_p00 = empty_60_fu_475_p2;
assign grp_fu_720_p1 = 16'd190;
assign grp_fu_720_p2 = zext_ln31_reg_758;
assign grp_fu_728_p1 = 8'd8;
assign grp_fu_728_p2 = 16'd190;
assign grp_fu_728_p3 = zext_ln31_reg_758;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_ap_start_reg;
assign icmp_ln31_fu_277_p2 = ((v5_fu_108 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_323_p2 = ((v6_reg_205 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_523_p4 = {{v6_reg_205[7:3]}};
assign lshr_ln_fu_297_p4 = {{v5_fu_108[7:2]}};
assign mul_ln101_fu_582_p0 = mul_ln101_fu_582_p00;
assign mul_ln101_fu_582_p00 = tmp_4_reg_849;
assign mul_ln101_fu_582_p1 = 13'd220;
assign mul_ln114_fu_591_p0 = mul_ln114_fu_591_p00;
assign mul_ln114_fu_591_p00 = tmp_5_reg_859;
assign mul_ln114_fu_591_p1 = 13'd220;
assign mul_ln127_fu_600_p0 = mul_ln127_fu_600_p00;
assign mul_ln127_fu_600_p00 = tmp_6_reg_884;
assign mul_ln127_fu_600_p1 = 13'd220;
assign mul_ln140_fu_616_p0 = mul_ln140_fu_616_p00;
assign mul_ln140_fu_616_p00 = empty_66_fu_606_p2;
assign mul_ln140_fu_616_p1 = 13'd220;
assign mul_ln34_fu_537_p0 = mul_ln34_fu_537_p00;
assign mul_ln34_fu_537_p00 = lshr_ln1_fu_523_p4;
assign mul_ln34_fu_537_p1 = 13'd220;
assign mul_ln38_fu_311_p0 = mul_ln38_fu_311_p00;
assign mul_ln38_fu_311_p00 = lshr_ln_fu_297_p4;
assign mul_ln38_fu_311_p1 = 14'd220;
assign mul_ln49_fu_546_p0 = mul_ln49_fu_546_p00;
assign mul_ln49_fu_546_p00 = tmp_reg_804;
assign mul_ln49_fu_546_p1 = 13'd220;
assign mul_ln62_fu_555_p0 = mul_ln62_fu_555_p00;
assign mul_ln62_fu_555_p00 = tmp_1_reg_814;
assign mul_ln62_fu_555_p1 = 13'd220;
assign mul_ln75_fu_564_p0 = mul_ln75_fu_564_p00;
assign mul_ln75_fu_564_p00 = tmp_2_reg_824;
assign mul_ln75_fu_564_p1 = 13'd220;
assign mul_ln88_fu_573_p0 = mul_ln88_fu_573_p00;
assign mul_ln88_fu_573_p00 = tmp_3_reg_834;
assign mul_ln88_fu_573_p1 = 13'd220;
assign p_cast1022_fu_423_p1 = grp_fu_664_p3;
assign p_cast1023_fu_471_p1 = grp_fu_680_p3;
assign p_cast1024_fu_495_p1 = grp_fu_688_p3;
assign p_cast1025_fu_499_p1 = grp_fu_696_p3;
assign p_cast1026_fu_503_p1 = grp_fu_704_p3;
assign p_cast1027_fu_507_p1 = grp_fu_712_p3;
assign p_cast1028_fu_511_p1 = grp_fu_720_p3;
assign p_cast1029_fu_515_p1 = grp_fu_728_p4;
assign p_cast_fu_467_p1 = grp_fu_672_p3;
assign trunc_ln31_fu_293_p1 = v5_fu_108[1:0];
assign trunc_ln32_fu_519_p1 = v6_reg_205[2:0];
assign v101_fu_654_p1 = v224_load_8_reg_1005;
assign v11_fu_622_p1 = v224_load_reg_864;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v228_3_ce1;
assign v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_address0;
assign v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_address1;
assign v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_ce0;
assign v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_ce1;
assign v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_d0;
assign v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_d1;
assign v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_we0;
assign v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_0_we1;
assign v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_address0;
assign v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_address1;
assign v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_ce0;
assign v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_ce1;
assign v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_d0;
assign v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_d1;
assign v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_we0;
assign v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_1_we1;
assign v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_address0;
assign v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_address1;
assign v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_ce0;
assign v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_ce1;
assign v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_d0;
assign v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_d1;
assign v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_we0;
assign v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_2_we1;
assign v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_address0;
assign v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_address1;
assign v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_ce0;
assign v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_ce1;
assign v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_d0;
assign v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_d1;
assign v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_we0;
assign v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_3_we1;
assign v229_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_address0;
assign v229_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_address1;
assign v229_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_ce0;
assign v229_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_ce1;
assign v229_4_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_d0;
assign v229_4_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_d1;
assign v229_4_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_we0;
assign v229_4_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_4_we1;
assign v229_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_address0;
assign v229_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_address1;
assign v229_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_ce0;
assign v229_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_ce1;
assign v229_5_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_d0;
assign v229_5_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_d1;
assign v229_5_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_we0;
assign v229_5_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_5_we1;
assign v229_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_address0;
assign v229_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_address1;
assign v229_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_ce0;
assign v229_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_ce1;
assign v229_6_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_d0;
assign v229_6_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_d1;
assign v229_6_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_we0;
assign v229_6_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_6_we1;
assign v229_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_address0;
assign v229_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_address1;
assign v229_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_ce0;
assign v229_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_ce1;
assign v229_7_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_d0;
assign v229_7_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_d1;
assign v229_7_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_we0;
assign v229_7_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_217_v229_7_we1;
assign v236_read = v236_read_local;
assign v24_fu_626_p1 = v224_load_1_reg_889;
assign v35_fu_630_p1 = v224_load_2_reg_894;
assign v46_fu_634_p1 = v224_load_3_reg_909;
assign v57_fu_638_p1 = v224_load_4_reg_914;
assign v68_fu_642_p1 = v224_load_5_reg_929;
assign v79_fu_646_p1 = v224_load_6_reg_934;
assign v90_fu_650_p1 = v224_load_7_reg_995;
assign zext_ln31_fu_289_p1 = v5_fu_108;
always @ (posedge ap_clk) begin
    zext_ln31_reg_758[15:8] <= 8'b00000000;
end
endmodule 
