module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v224_4_address0,v224_4_ce0,v224_4_q0,v224_4_address1,v224_4_ce1,v224_4_q1,v224_5_address0,v224_5_ce0,v224_5_q0,v224_5_address1,v224_5_ce1,v224_5_q1,v224_6_address0,v224_6_ce0,v224_6_q0,v224_6_address1,v224_6_ce1,v224_6_q1,v224_7_address0,v224_7_ce0,v224_7_q0,v224_7_address1,v224_7_ce1,v224_7_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce); 
parameter    ap_ST_fsm_state1 = 23'd1;
parameter    ap_ST_fsm_state2 = 23'd2;
parameter    ap_ST_fsm_state3 = 23'd4;
parameter    ap_ST_fsm_state4 = 23'd8;
parameter    ap_ST_fsm_state5 = 23'd16;
parameter    ap_ST_fsm_state6 = 23'd32;
parameter    ap_ST_fsm_state7 = 23'd64;
parameter    ap_ST_fsm_state8 = 23'd128;
parameter    ap_ST_fsm_state9 = 23'd256;
parameter    ap_ST_fsm_state10 = 23'd512;
parameter    ap_ST_fsm_state11 = 23'd1024;
parameter    ap_ST_fsm_state12 = 23'd2048;
parameter    ap_ST_fsm_state13 = 23'd4096;
parameter    ap_ST_fsm_state14 = 23'd8192;
parameter    ap_ST_fsm_state15 = 23'd16384;
parameter    ap_ST_fsm_state16 = 23'd32768;
parameter    ap_ST_fsm_state17 = 23'd65536;
parameter    ap_ST_fsm_state18 = 23'd131072;
parameter    ap_ST_fsm_state19 = 23'd262144;
parameter    ap_ST_fsm_state20 = 23'd524288;
parameter    ap_ST_fsm_state21 = 23'd1048576;
parameter    ap_ST_fsm_state22 = 23'd2097152;
parameter    ap_ST_fsm_state23 = 23'd4194304;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [12:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [12:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [12:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [12:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [12:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [12:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [12:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [12:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [12:0] v224_4_address0;
output   v224_4_ce0;
input  [31:0] v224_4_q0;
output  [12:0] v224_4_address1;
output   v224_4_ce1;
input  [31:0] v224_4_q1;
output  [12:0] v224_5_address0;
output   v224_5_ce0;
input  [31:0] v224_5_q0;
output  [12:0] v224_5_address1;
output   v224_5_ce1;
input  [31:0] v224_5_q1;
output  [12:0] v224_6_address0;
output   v224_6_ce0;
input  [31:0] v224_6_q0;
output  [12:0] v224_6_address1;
output   v224_6_ce1;
input  [31:0] v224_6_q1;
output  [12:0] v224_7_address0;
output   v224_7_ce0;
input  [31:0] v224_7_q0;
output  [12:0] v224_7_address1;
output   v224_7_ce1;
input  [31:0] v224_7_q1;
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
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
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
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_7549;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_2756_p2;
reg   [15:0] add_ln31_1_reg_7557;
wire   [7:0] add_ln31_fu_2768_p2;
reg   [7:0] add_ln31_reg_7565;
wire   [2:0] trunc_ln31_fu_2774_p1;
reg   [2:0] trunc_ln31_reg_7570;
wire   [4:0] lshr_ln_fu_2778_p4;
reg   [4:0] lshr_ln_reg_7610;
wire   [12:0] zext_ln31_fu_2788_p1;
reg   [12:0] zext_ln31_reg_7623;
wire   [0:0] cmp11_fu_2792_p2;
reg   [0:0] cmp11_reg_7654;
wire    ap_CS_fsm_state3;
wire   [6:0] tmp_59_fu_2859_p4;
reg   [6:0] tmp_59_reg_7705;
wire   [7:0] add_ln32_3_fu_2912_p2;
reg   [7:0] add_ln32_3_reg_7750;
wire   [31:0] v11_4_fu_2958_p19;
reg   [31:0] v11_4_reg_7755;
wire    ap_CS_fsm_state4;
wire   [31:0] v24_4_fu_3029_p19;
reg   [31:0] v24_4_reg_7760;
wire   [5:0] tmp_61_fu_3068_p4;
reg   [5:0] tmp_61_reg_7765;
wire   [7:0] empty_993_fu_3164_p2;
reg   [7:0] empty_993_reg_7851;
wire   [7:0] empty_1003_fu_3170_p2;
reg   [7:0] empty_1003_reg_7858;
wire   [31:0] v35_4_fu_3208_p19;
reg   [31:0] v35_4_reg_7865;
wire    ap_CS_fsm_state5;
wire   [31:0] v46_4_fu_3279_p19;
reg   [31:0] v46_4_reg_7870;
wire   [7:0] empty_1014_fu_3412_p2;
reg   [7:0] empty_1014_reg_7955;
wire   [7:0] empty_1025_fu_3418_p2;
reg   [7:0] empty_1025_reg_7962;
wire   [31:0] v57_4_fu_3456_p19;
reg   [31:0] v57_4_reg_7969;
wire    ap_CS_fsm_state6;
wire   [31:0] v68_4_fu_3527_p19;
reg   [31:0] v68_4_reg_7974;
wire   [7:0] empty_1036_fu_3648_p2;
reg   [7:0] empty_1036_reg_8059;
wire   [7:0] add_ln32_fu_3654_p2;
reg   [7:0] add_ln32_reg_8066;
wire   [31:0] v79_4_fu_3692_p19;
reg   [31:0] v79_4_reg_8073;
wire    ap_CS_fsm_state7;
wire   [31:0] v90_4_fu_3763_p19;
reg   [31:0] v90_4_reg_8078;
wire   [7:0] empty_1056_fu_3896_p2;
reg   [7:0] empty_1056_reg_8163;
wire   [7:0] empty_1067_fu_3902_p2;
reg   [7:0] empty_1067_reg_8170;
wire   [15:0] mul_ln34_fu_3912_p2;
reg   [15:0] mul_ln34_reg_8177;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_3929_p2;
reg   [15:0] mul_ln49_reg_8182;
wire   [15:0] mul_ln62_fu_3946_p2;
reg   [15:0] mul_ln62_reg_8187;
wire   [15:0] mul_ln75_fu_3963_p2;
reg   [15:0] mul_ln75_reg_8192;
wire   [15:0] mul_ln88_fu_3972_p2;
reg   [15:0] mul_ln88_reg_8197;
wire   [15:0] mul_ln101_fu_3981_p2;
reg   [15:0] mul_ln101_reg_8202;
wire   [15:0] mul_ln114_fu_3990_p2;
reg   [15:0] mul_ln114_reg_8207;
wire   [15:0] mul_ln127_fu_3999_p2;
reg   [15:0] mul_ln127_reg_8212;
wire   [15:0] mul_ln140_fu_4008_p2;
reg   [15:0] mul_ln140_reg_8217;
wire   [31:0] v101_4_fu_4046_p19;
reg   [31:0] v101_4_reg_8222;
wire   [31:0] v11_1_fu_4117_p19;
reg   [31:0] v11_1_reg_8227;
wire   [7:0] empty_1078_fu_4238_p2;
reg   [7:0] empty_1078_reg_8312;
wire   [7:0] empty_1088_fu_4244_p2;
reg   [7:0] empty_1088_reg_8319;
wire   [31:0] v24_1_fu_4282_p19;
reg   [31:0] v24_1_reg_8326;
wire    ap_CS_fsm_state9;
wire   [31:0] v35_1_fu_4353_p19;
reg   [31:0] v35_1_reg_8331;
wire   [7:0] empty_1099_fu_4486_p2;
reg   [7:0] empty_1099_reg_8416;
wire   [7:0] empty_1110_fu_4492_p2;
reg   [7:0] empty_1110_reg_8423;
wire   [31:0] v46_1_fu_4530_p19;
reg   [31:0] v46_1_reg_8430;
wire    ap_CS_fsm_state10;
wire   [31:0] v57_1_fu_4601_p19;
reg   [31:0] v57_1_reg_8435;
wire   [7:0] empty_1121_fu_4722_p2;
reg   [7:0] empty_1121_reg_8520;
wire   [7:0] empty_1131_fu_4728_p2;
reg   [7:0] empty_1131_reg_8527;
wire   [31:0] v68_1_fu_4766_p19;
reg   [31:0] v68_1_reg_8534;
wire    ap_CS_fsm_state11;
wire   [31:0] v79_1_fu_4837_p19;
reg   [31:0] v79_1_reg_8539;
wire   [7:0] add_ln32_1_fu_4970_p2;
reg   [7:0] add_ln32_1_reg_8624;
wire   [7:0] empty_1152_fu_4976_p2;
reg   [7:0] empty_1152_reg_8631;
wire   [15:0] mul_ln34_1_fu_4985_p2;
reg   [15:0] mul_ln34_1_reg_8638;
wire    ap_CS_fsm_state12;
wire   [15:0] mul_ln49_1_fu_4994_p2;
reg   [15:0] mul_ln49_1_reg_8643;
wire   [15:0] mul_ln62_1_fu_5003_p2;
reg   [15:0] mul_ln62_1_reg_8648;
wire   [15:0] mul_ln75_1_fu_5012_p2;
reg   [15:0] mul_ln75_1_reg_8653;
wire   [15:0] mul_ln88_1_fu_5021_p2;
reg   [15:0] mul_ln88_1_reg_8658;
wire   [15:0] mul_ln101_1_fu_5030_p2;
reg   [15:0] mul_ln101_1_reg_8663;
wire   [15:0] mul_ln114_1_fu_5039_p2;
reg   [15:0] mul_ln114_1_reg_8668;
wire   [15:0] mul_ln127_1_fu_5048_p2;
reg   [15:0] mul_ln127_1_reg_8673;
wire   [31:0] v90_1_fu_5086_p19;
reg   [31:0] v90_1_reg_8678;
wire   [15:0] mul_ln140_1_fu_5128_p2;
reg   [15:0] mul_ln140_1_reg_8683;
wire   [31:0] v101_1_fu_5166_p19;
reg   [31:0] v101_1_reg_8688;
wire   [7:0] empty_1163_fu_5287_p2;
reg   [7:0] empty_1163_reg_8773;
wire   [7:0] empty_1173_fu_5293_p2;
reg   [7:0] empty_1173_reg_8780;
wire   [31:0] v11_2_fu_5331_p19;
reg   [31:0] v11_2_reg_8787;
wire    ap_CS_fsm_state13;
wire   [31:0] v24_2_fu_5402_p19;
reg   [31:0] v24_2_reg_8792;
wire   [7:0] empty_1184_fu_5535_p2;
reg   [7:0] empty_1184_reg_8877;
wire   [7:0] empty_1195_fu_5541_p2;
reg   [7:0] empty_1195_reg_8884;
wire   [31:0] v35_2_fu_5579_p19;
reg   [31:0] v35_2_reg_8891;
wire    ap_CS_fsm_state14;
wire   [31:0] v46_2_fu_5650_p19;
reg   [31:0] v46_2_reg_8896;
wire   [7:0] empty_1206_fu_5771_p2;
reg   [7:0] empty_1206_reg_8981;
wire   [7:0] empty_1216_fu_5777_p2;
reg   [7:0] empty_1216_reg_8988;
wire   [31:0] v57_2_fu_5815_p19;
reg   [31:0] v57_2_reg_8995;
wire    ap_CS_fsm_state15;
wire   [31:0] v68_2_fu_5886_p19;
reg   [31:0] v68_2_reg_9000;
wire   [7:0] empty_1227_fu_6019_p2;
reg   [7:0] empty_1227_reg_9085;
wire   [7:0] add_ln32_2_fu_6025_p2;
reg   [7:0] add_ln32_2_reg_9092;
wire   [31:0] v79_2_fu_6063_p19;
reg   [31:0] v79_2_reg_9099;
wire    ap_CS_fsm_state16;
wire   [31:0] v90_2_fu_6134_p19;
reg   [31:0] v90_2_reg_9104;
wire   [7:0] empty_1248_fu_6255_p2;
reg   [7:0] empty_1248_reg_9189;
wire   [7:0] empty_1258_fu_6261_p2;
reg   [7:0] empty_1258_reg_9196;
wire   [15:0] mul_ln34_2_fu_6270_p2;
reg   [15:0] mul_ln34_2_reg_9203;
wire    ap_CS_fsm_state17;
wire   [15:0] mul_ln49_2_fu_6279_p2;
reg   [15:0] mul_ln49_2_reg_9208;
wire   [15:0] mul_ln62_2_fu_6288_p2;
reg   [15:0] mul_ln62_2_reg_9213;
wire   [15:0] mul_ln75_2_fu_6297_p2;
reg   [15:0] mul_ln75_2_reg_9218;
wire   [15:0] mul_ln88_2_fu_6306_p2;
reg   [15:0] mul_ln88_2_reg_9223;
wire   [15:0] mul_ln101_2_fu_6315_p2;
reg   [15:0] mul_ln101_2_reg_9228;
wire   [15:0] mul_ln114_2_fu_6324_p2;
reg   [15:0] mul_ln114_2_reg_9233;
wire   [15:0] mul_ln127_2_fu_6333_p2;
reg   [15:0] mul_ln127_2_reg_9238;
wire   [15:0] mul_ln140_2_fu_6342_p2;
reg   [15:0] mul_ln140_2_reg_9243;
wire   [31:0] v101_2_fu_6380_p19;
reg   [31:0] v101_2_reg_9248;
wire   [31:0] v11_3_fu_6451_p19;
reg   [31:0] v11_3_reg_9253;
wire   [7:0] empty_1269_fu_6584_p2;
reg   [7:0] empty_1269_reg_9338;
wire   [7:0] empty_1280_fu_6590_p2;
reg   [7:0] empty_1280_reg_9345;
wire   [31:0] v24_3_fu_6628_p19;
reg   [31:0] v24_3_reg_9352;
wire    ap_CS_fsm_state18;
wire   [31:0] v35_3_fu_6699_p19;
reg   [31:0] v35_3_reg_9357;
wire   [7:0] empty_1291_fu_6820_p2;
reg   [7:0] empty_1291_reg_9442;
wire   [7:0] empty_1301_fu_6826_p2;
reg   [7:0] empty_1301_reg_9449;
wire   [31:0] v46_3_fu_6864_p19;
reg   [31:0] v46_3_reg_9456;
wire    ap_CS_fsm_state19;
wire   [31:0] v57_3_fu_6935_p19;
reg   [31:0] v57_3_reg_9461;
wire   [7:0] empty_1312_fu_7068_p2;
reg   [7:0] empty_1312_reg_9546;
wire   [7:0] empty_1323_fu_7074_p2;
reg   [7:0] empty_1323_reg_9553;
wire   [31:0] v68_3_fu_7112_p19;
reg   [31:0] v68_3_reg_9560;
wire    ap_CS_fsm_state20;
wire   [31:0] v79_3_fu_7183_p19;
reg   [31:0] v79_3_reg_9565;
wire   [15:0] mul_ln34_3_fu_7307_p2;
reg   [15:0] mul_ln34_3_reg_9650;
wire    ap_CS_fsm_state21;
wire   [15:0] mul_ln49_3_fu_7316_p2;
reg   [15:0] mul_ln49_3_reg_9655;
wire   [15:0] mul_ln62_3_fu_7325_p2;
reg   [15:0] mul_ln62_3_reg_9660;
wire   [15:0] mul_ln75_3_fu_7334_p2;
reg   [15:0] mul_ln75_3_reg_9665;
wire   [15:0] mul_ln88_3_fu_7343_p2;
reg   [15:0] mul_ln88_3_reg_9670;
wire   [15:0] mul_ln101_3_fu_7352_p2;
reg   [15:0] mul_ln101_3_reg_9675;
wire   [15:0] mul_ln114_3_fu_7361_p2;
reg   [15:0] mul_ln114_3_reg_9680;
wire   [15:0] mul_ln127_3_fu_7370_p2;
reg   [15:0] mul_ln127_3_reg_9685;
wire   [31:0] v90_3_fu_7408_p19;
reg   [31:0] v90_3_reg_9690;
wire   [15:0] mul_ln140_3_fu_7450_p2;
reg   [15:0] mul_ln140_3_reg_9695;
wire   [31:0] v101_3_fu_7488_p19;
reg   [31:0] v101_3_reg_9700;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_ce;
reg   [7:0] v6_reg_2612;
wire    ap_CS_fsm_state23;
wire   [0:0] icmp_ln31_fu_2762_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start_reg;
wire    ap_CS_fsm_state22;
wire   [63:0] tmp_111_cast_fu_2847_p1;
wire   [0:0] icmp_ln32_fu_2798_p2;
wire   [63:0] p_cast_fu_2900_p1;
wire   [63:0] p_cast5643_fu_3109_p1;
wire   [63:0] p_cast5644_fu_3152_p1;
wire   [63:0] tmp_121_cast_fu_3359_p1;
wire   [63:0] p_cast5646_fu_3400_p1;
wire   [63:0] p_cast5647_fu_3595_p1;
wire   [63:0] p_cast5648_fu_3636_p1;
wire   [63:0] tmp_124_cast_fu_3843_p1;
wire   [63:0] p_cast5650_fu_3884_p1;
wire   [63:0] p_cast5651_fu_4185_p1;
wire   [63:0] p_cast5652_fu_4226_p1;
wire   [63:0] tmp_154_cast_fu_4433_p1;
wire   [63:0] p_cast5654_fu_4474_p1;
wire   [63:0] p_cast5655_fu_4669_p1;
wire   [63:0] p_cast5656_fu_4710_p1;
wire   [63:0] tmp_157_cast_fu_4917_p1;
wire   [63:0] p_cast5658_fu_4958_p1;
wire   [63:0] p_cast5659_fu_5234_p1;
wire   [63:0] p_cast5660_fu_5275_p1;
wire   [63:0] tmp_187_cast_fu_5482_p1;
wire   [63:0] p_cast5662_fu_5523_p1;
wire   [63:0] p_cast5663_fu_5718_p1;
wire   [63:0] p_cast5664_fu_5759_p1;
wire   [63:0] tmp_190_cast_fu_5966_p1;
wire   [63:0] p_cast5666_fu_6007_p1;
wire   [63:0] p_cast5667_fu_6202_p1;
wire   [63:0] p_cast5668_fu_6243_p1;
wire   [63:0] tmp_220_cast_fu_6531_p1;
wire   [63:0] p_cast5670_fu_6572_p1;
wire   [63:0] p_cast5671_fu_6767_p1;
wire   [63:0] p_cast5672_fu_6808_p1;
wire   [63:0] tmp_223_cast_fu_7015_p1;
wire   [63:0] p_cast5674_fu_7056_p1;
wire   [63:0] p_cast5675_fu_7251_p1;
wire   [63:0] p_cast5676_fu_7292_p1;
reg   [15:0] phi_mul_fu_216;
reg    ap_block_state1;
reg   [7:0] v5_fu_220;
reg    v236_read_local;
reg    v224_0_ce1_local;
reg   [12:0] v224_0_address1_local;
reg    v224_0_ce0_local;
reg   [12:0] v224_0_address0_local;
reg    v224_1_ce1_local;
reg   [12:0] v224_1_address1_local;
reg    v224_1_ce0_local;
reg   [12:0] v224_1_address0_local;
reg    v224_2_ce1_local;
reg   [12:0] v224_2_address1_local;
reg    v224_2_ce0_local;
reg   [12:0] v224_2_address0_local;
reg    v224_3_ce1_local;
reg   [12:0] v224_3_address1_local;
reg    v224_3_ce0_local;
reg   [12:0] v224_3_address0_local;
reg    v224_4_ce1_local;
reg   [12:0] v224_4_address1_local;
reg    v224_4_ce0_local;
reg   [12:0] v224_4_address0_local;
reg    v224_5_ce1_local;
reg   [12:0] v224_5_address1_local;
reg    v224_5_ce0_local;
reg   [12:0] v224_5_address0_local;
reg    v224_6_ce1_local;
reg   [12:0] v224_6_address1_local;
reg    v224_6_ce0_local;
reg   [12:0] v224_6_address0_local;
reg    v224_7_ce1_local;
reg   [12:0] v224_7_address1_local;
reg    v224_7_ce0_local;
reg   [12:0] v224_7_address0_local;
wire   [10:0] tmp_fu_2812_p3;
wire   [12:0] p_shl1_fu_2804_p3;
wire   [12:0] p_shl5870_fu_2820_p1;
wire   [12:0] empty_fu_2824_p2;
wire   [7:0] tmp_110_cast_fu_2830_p4;
wire   [12:0] tmp_s_fu_2840_p3;
wire   [10:0] tmp_5_fu_2877_p3;
wire   [12:0] p_shl2_fu_2869_p3;
wire   [12:0] p_shl5868_fu_2885_p1;
wire   [12:0] empty_963_fu_2889_p2;
wire   [12:0] empty_964_fu_2895_p2;
wire   [31:0] v11_4_fu_2958_p2;
wire   [31:0] v11_4_fu_2958_p4;
wire   [31:0] v11_4_fu_2958_p6;
wire   [31:0] v11_4_fu_2958_p8;
wire   [31:0] v11_4_fu_2958_p10;
wire   [31:0] v11_4_fu_2958_p12;
wire   [31:0] v11_4_fu_2958_p14;
wire   [31:0] v11_4_fu_2958_p16;
wire   [31:0] v11_4_fu_2958_p17;
wire   [31:0] v24_4_fu_3029_p2;
wire   [31:0] v24_4_fu_3029_p4;
wire   [31:0] v24_4_fu_3029_p6;
wire   [31:0] v24_4_fu_3029_p8;
wire   [31:0] v24_4_fu_3029_p10;
wire   [31:0] v24_4_fu_3029_p12;
wire   [31:0] v24_4_fu_3029_p14;
wire   [31:0] v24_4_fu_3029_p16;
wire   [31:0] v24_4_fu_3029_p17;
wire   [10:0] tmp_6_fu_3086_p3;
wire   [12:0] p_shl3_fu_3078_p3;
wire   [12:0] p_shl5866_fu_3094_p1;
wire   [12:0] empty_973_fu_3098_p2;
wire   [12:0] empty_974_fu_3104_p2;
wire   [10:0] tmp_7_fu_3129_p3;
wire   [12:0] p_shl4_fu_3121_p3;
wire   [12:0] p_shl5864_fu_3137_p1;
wire   [12:0] empty_983_fu_3141_p2;
wire   [12:0] empty_984_fu_3147_p2;
wire   [31:0] v35_4_fu_3208_p2;
wire   [31:0] v35_4_fu_3208_p4;
wire   [31:0] v35_4_fu_3208_p6;
wire   [31:0] v35_4_fu_3208_p8;
wire   [31:0] v35_4_fu_3208_p10;
wire   [31:0] v35_4_fu_3208_p12;
wire   [31:0] v35_4_fu_3208_p14;
wire   [31:0] v35_4_fu_3208_p16;
wire   [31:0] v35_4_fu_3208_p17;
wire   [31:0] v46_4_fu_3279_p2;
wire   [31:0] v46_4_fu_3279_p4;
wire   [31:0] v46_4_fu_3279_p6;
wire   [31:0] v46_4_fu_3279_p8;
wire   [31:0] v46_4_fu_3279_p10;
wire   [31:0] v46_4_fu_3279_p12;
wire   [31:0] v46_4_fu_3279_p14;
wire   [31:0] v46_4_fu_3279_p16;
wire   [31:0] v46_4_fu_3279_p17;
wire   [10:0] tmp_8_fu_3325_p3;
wire   [12:0] p_shl5_fu_3318_p3;
wire   [12:0] p_shl5862_fu_3332_p1;
wire   [12:0] empty_994_fu_3336_p2;
wire   [7:0] tmp_120_cast_fu_3342_p4;
wire   [12:0] tmp_64_fu_3352_p3;
wire   [10:0] tmp_9_fu_3378_p3;
wire   [12:0] p_shl6_fu_3371_p3;
wire   [12:0] p_shl5860_fu_3385_p1;
wire   [12:0] empty_1004_fu_3389_p2;
wire   [12:0] empty_1005_fu_3395_p2;
wire   [31:0] v57_4_fu_3456_p2;
wire   [31:0] v57_4_fu_3456_p4;
wire   [31:0] v57_4_fu_3456_p6;
wire   [31:0] v57_4_fu_3456_p8;
wire   [31:0] v57_4_fu_3456_p10;
wire   [31:0] v57_4_fu_3456_p12;
wire   [31:0] v57_4_fu_3456_p14;
wire   [31:0] v57_4_fu_3456_p16;
wire   [31:0] v57_4_fu_3456_p17;
wire   [31:0] v68_4_fu_3527_p2;
wire   [31:0] v68_4_fu_3527_p4;
wire   [31:0] v68_4_fu_3527_p6;
wire   [31:0] v68_4_fu_3527_p8;
wire   [31:0] v68_4_fu_3527_p10;
wire   [31:0] v68_4_fu_3527_p12;
wire   [31:0] v68_4_fu_3527_p14;
wire   [31:0] v68_4_fu_3527_p16;
wire   [31:0] v68_4_fu_3527_p17;
wire   [10:0] tmp_10_fu_3573_p3;
wire   [12:0] p_shl7_fu_3566_p3;
wire   [12:0] p_shl5858_fu_3580_p1;
wire   [12:0] empty_1015_fu_3584_p2;
wire   [12:0] empty_1016_fu_3590_p2;
wire   [10:0] tmp_11_fu_3614_p3;
wire   [12:0] p_shl8_fu_3607_p3;
wire   [12:0] p_shl5856_fu_3621_p1;
wire   [12:0] empty_1026_fu_3625_p2;
wire   [12:0] empty_1027_fu_3631_p2;
wire   [31:0] v79_4_fu_3692_p2;
wire   [31:0] v79_4_fu_3692_p4;
wire   [31:0] v79_4_fu_3692_p6;
wire   [31:0] v79_4_fu_3692_p8;
wire   [31:0] v79_4_fu_3692_p10;
wire   [31:0] v79_4_fu_3692_p12;
wire   [31:0] v79_4_fu_3692_p14;
wire   [31:0] v79_4_fu_3692_p16;
wire   [31:0] v79_4_fu_3692_p17;
wire   [31:0] v90_4_fu_3763_p2;
wire   [31:0] v90_4_fu_3763_p4;
wire   [31:0] v90_4_fu_3763_p6;
wire   [31:0] v90_4_fu_3763_p8;
wire   [31:0] v90_4_fu_3763_p10;
wire   [31:0] v90_4_fu_3763_p12;
wire   [31:0] v90_4_fu_3763_p14;
wire   [31:0] v90_4_fu_3763_p16;
wire   [31:0] v90_4_fu_3763_p17;
wire   [10:0] tmp_12_fu_3809_p3;
wire   [12:0] p_shl9_fu_3802_p3;
wire   [12:0] p_shl5854_fu_3816_p1;
wire   [12:0] empty_1037_fu_3820_p2;
wire   [7:0] tmp_123_cast_fu_3826_p4;
wire   [12:0] tmp_65_fu_3836_p3;
wire   [10:0] tmp_13_fu_3862_p3;
wire   [12:0] p_shl10_fu_3855_p3;
wire   [12:0] p_shl5852_fu_3869_p1;
wire   [12:0] empty_1046_fu_3873_p2;
wire   [12:0] empty_1047_fu_3879_p2;
wire   [7:0] mul_ln34_fu_3912_p0;
wire   [8:0] mul_ln34_fu_3912_p1;
wire   [7:0] tmp_60_fu_3918_p3;
wire   [7:0] mul_ln49_fu_3929_p0;
wire   [8:0] mul_ln49_fu_3929_p1;
wire   [7:0] tmp_62_fu_3935_p3;
wire   [7:0] mul_ln62_fu_3946_p0;
wire   [8:0] mul_ln62_fu_3946_p1;
wire   [7:0] tmp_63_fu_3952_p3;
wire   [7:0] mul_ln75_fu_3963_p0;
wire   [8:0] mul_ln75_fu_3963_p1;
wire   [7:0] mul_ln88_fu_3972_p0;
wire   [8:0] mul_ln88_fu_3972_p1;
wire   [7:0] mul_ln101_fu_3981_p0;
wire   [8:0] mul_ln101_fu_3981_p1;
wire   [7:0] mul_ln114_fu_3990_p0;
wire   [8:0] mul_ln114_fu_3990_p1;
wire   [7:0] mul_ln127_fu_3999_p0;
wire   [8:0] mul_ln127_fu_3999_p1;
wire   [7:0] mul_ln140_fu_4008_p0;
wire   [8:0] mul_ln140_fu_4008_p1;
wire   [31:0] v101_4_fu_4046_p2;
wire   [31:0] v101_4_fu_4046_p4;
wire   [31:0] v101_4_fu_4046_p6;
wire   [31:0] v101_4_fu_4046_p8;
wire   [31:0] v101_4_fu_4046_p10;
wire   [31:0] v101_4_fu_4046_p12;
wire   [31:0] v101_4_fu_4046_p14;
wire   [31:0] v101_4_fu_4046_p16;
wire   [31:0] v101_4_fu_4046_p17;
wire   [31:0] v11_1_fu_4117_p2;
wire   [31:0] v11_1_fu_4117_p4;
wire   [31:0] v11_1_fu_4117_p6;
wire   [31:0] v11_1_fu_4117_p8;
wire   [31:0] v11_1_fu_4117_p10;
wire   [31:0] v11_1_fu_4117_p12;
wire   [31:0] v11_1_fu_4117_p14;
wire   [31:0] v11_1_fu_4117_p16;
wire   [31:0] v11_1_fu_4117_p17;
wire   [10:0] tmp_14_fu_4163_p3;
wire   [12:0] p_shl11_fu_4156_p3;
wire   [12:0] p_shl5850_fu_4170_p1;
wire   [12:0] empty_1057_fu_4174_p2;
wire   [12:0] empty_1058_fu_4180_p2;
wire   [10:0] tmp_15_fu_4204_p3;
wire   [12:0] p_shl12_fu_4197_p3;
wire   [12:0] p_shl5848_fu_4211_p1;
wire   [12:0] empty_1068_fu_4215_p2;
wire   [12:0] empty_1069_fu_4221_p2;
wire   [31:0] v24_1_fu_4282_p2;
wire   [31:0] v24_1_fu_4282_p4;
wire   [31:0] v24_1_fu_4282_p6;
wire   [31:0] v24_1_fu_4282_p8;
wire   [31:0] v24_1_fu_4282_p10;
wire   [31:0] v24_1_fu_4282_p12;
wire   [31:0] v24_1_fu_4282_p14;
wire   [31:0] v24_1_fu_4282_p16;
wire   [31:0] v24_1_fu_4282_p17;
wire   [31:0] v35_1_fu_4353_p2;
wire   [31:0] v35_1_fu_4353_p4;
wire   [31:0] v35_1_fu_4353_p6;
wire   [31:0] v35_1_fu_4353_p8;
wire   [31:0] v35_1_fu_4353_p10;
wire   [31:0] v35_1_fu_4353_p12;
wire   [31:0] v35_1_fu_4353_p14;
wire   [31:0] v35_1_fu_4353_p16;
wire   [31:0] v35_1_fu_4353_p17;
wire   [10:0] tmp_16_fu_4399_p3;
wire   [12:0] p_shl13_fu_4392_p3;
wire   [12:0] p_shl5846_fu_4406_p1;
wire   [12:0] empty_1079_fu_4410_p2;
wire   [7:0] tmp_153_cast_fu_4416_p4;
wire   [12:0] tmp_66_fu_4426_p3;
wire   [10:0] tmp_17_fu_4452_p3;
wire   [12:0] p_shl14_fu_4445_p3;
wire   [12:0] p_shl5844_fu_4459_p1;
wire   [12:0] empty_1089_fu_4463_p2;
wire   [12:0] empty_1090_fu_4469_p2;
wire   [31:0] v46_1_fu_4530_p2;
wire   [31:0] v46_1_fu_4530_p4;
wire   [31:0] v46_1_fu_4530_p6;
wire   [31:0] v46_1_fu_4530_p8;
wire   [31:0] v46_1_fu_4530_p10;
wire   [31:0] v46_1_fu_4530_p12;
wire   [31:0] v46_1_fu_4530_p14;
wire   [31:0] v46_1_fu_4530_p16;
wire   [31:0] v46_1_fu_4530_p17;
wire   [31:0] v57_1_fu_4601_p2;
wire   [31:0] v57_1_fu_4601_p4;
wire   [31:0] v57_1_fu_4601_p6;
wire   [31:0] v57_1_fu_4601_p8;
wire   [31:0] v57_1_fu_4601_p10;
wire   [31:0] v57_1_fu_4601_p12;
wire   [31:0] v57_1_fu_4601_p14;
wire   [31:0] v57_1_fu_4601_p16;
wire   [31:0] v57_1_fu_4601_p17;
wire   [10:0] tmp_18_fu_4647_p3;
wire   [12:0] p_shl15_fu_4640_p3;
wire   [12:0] p_shl5842_fu_4654_p1;
wire   [12:0] empty_1100_fu_4658_p2;
wire   [12:0] empty_1101_fu_4664_p2;
wire   [10:0] tmp_19_fu_4688_p3;
wire   [12:0] p_shl16_fu_4681_p3;
wire   [12:0] p_shl5840_fu_4695_p1;
wire   [12:0] empty_1111_fu_4699_p2;
wire   [12:0] empty_1112_fu_4705_p2;
wire   [31:0] v68_1_fu_4766_p2;
wire   [31:0] v68_1_fu_4766_p4;
wire   [31:0] v68_1_fu_4766_p6;
wire   [31:0] v68_1_fu_4766_p8;
wire   [31:0] v68_1_fu_4766_p10;
wire   [31:0] v68_1_fu_4766_p12;
wire   [31:0] v68_1_fu_4766_p14;
wire   [31:0] v68_1_fu_4766_p16;
wire   [31:0] v68_1_fu_4766_p17;
wire   [31:0] v79_1_fu_4837_p2;
wire   [31:0] v79_1_fu_4837_p4;
wire   [31:0] v79_1_fu_4837_p6;
wire   [31:0] v79_1_fu_4837_p8;
wire   [31:0] v79_1_fu_4837_p10;
wire   [31:0] v79_1_fu_4837_p12;
wire   [31:0] v79_1_fu_4837_p14;
wire   [31:0] v79_1_fu_4837_p16;
wire   [31:0] v79_1_fu_4837_p17;
wire   [10:0] tmp_20_fu_4883_p3;
wire   [12:0] p_shl17_fu_4876_p3;
wire   [12:0] p_shl5838_fu_4890_p1;
wire   [12:0] empty_1122_fu_4894_p2;
wire   [7:0] tmp_156_cast_fu_4900_p4;
wire   [12:0] tmp_67_fu_4910_p3;
wire   [10:0] tmp_21_fu_4936_p3;
wire   [12:0] p_shl18_fu_4929_p3;
wire   [12:0] p_shl5836_fu_4943_p1;
wire   [12:0] empty_1132_fu_4947_p2;
wire   [12:0] empty_1133_fu_4953_p2;
wire   [7:0] mul_ln34_1_fu_4985_p0;
wire   [8:0] mul_ln34_1_fu_4985_p1;
wire   [7:0] mul_ln49_1_fu_4994_p0;
wire   [8:0] mul_ln49_1_fu_4994_p1;
wire   [7:0] mul_ln62_1_fu_5003_p0;
wire   [8:0] mul_ln62_1_fu_5003_p1;
wire   [7:0] mul_ln75_1_fu_5012_p0;
wire   [8:0] mul_ln75_1_fu_5012_p1;
wire   [7:0] mul_ln88_1_fu_5021_p0;
wire   [8:0] mul_ln88_1_fu_5021_p1;
wire   [7:0] mul_ln101_1_fu_5030_p0;
wire   [8:0] mul_ln101_1_fu_5030_p1;
wire   [7:0] mul_ln114_1_fu_5039_p0;
wire   [8:0] mul_ln114_1_fu_5039_p1;
wire   [7:0] mul_ln127_1_fu_5048_p0;
wire   [8:0] mul_ln127_1_fu_5048_p1;
wire   [31:0] v90_1_fu_5086_p2;
wire   [31:0] v90_1_fu_5086_p4;
wire   [31:0] v90_1_fu_5086_p6;
wire   [31:0] v90_1_fu_5086_p8;
wire   [31:0] v90_1_fu_5086_p10;
wire   [31:0] v90_1_fu_5086_p12;
wire   [31:0] v90_1_fu_5086_p14;
wire   [31:0] v90_1_fu_5086_p16;
wire   [31:0] v90_1_fu_5086_p17;
wire   [7:0] mul_ln140_1_fu_5128_p0;
wire   [8:0] mul_ln140_1_fu_5128_p1;
wire   [31:0] v101_1_fu_5166_p2;
wire   [31:0] v101_1_fu_5166_p4;
wire   [31:0] v101_1_fu_5166_p6;
wire   [31:0] v101_1_fu_5166_p8;
wire   [31:0] v101_1_fu_5166_p10;
wire   [31:0] v101_1_fu_5166_p12;
wire   [31:0] v101_1_fu_5166_p14;
wire   [31:0] v101_1_fu_5166_p16;
wire   [31:0] v101_1_fu_5166_p17;
wire   [10:0] tmp_22_fu_5212_p3;
wire   [12:0] p_shl19_fu_5205_p3;
wire   [12:0] p_shl5834_fu_5219_p1;
wire   [12:0] empty_1142_fu_5223_p2;
wire   [12:0] empty_1143_fu_5229_p2;
wire   [10:0] tmp_23_fu_5253_p3;
wire   [12:0] p_shl20_fu_5246_p3;
wire   [12:0] p_shl5832_fu_5260_p1;
wire   [12:0] empty_1153_fu_5264_p2;
wire   [12:0] empty_1154_fu_5270_p2;
wire   [31:0] v11_2_fu_5331_p2;
wire   [31:0] v11_2_fu_5331_p4;
wire   [31:0] v11_2_fu_5331_p6;
wire   [31:0] v11_2_fu_5331_p8;
wire   [31:0] v11_2_fu_5331_p10;
wire   [31:0] v11_2_fu_5331_p12;
wire   [31:0] v11_2_fu_5331_p14;
wire   [31:0] v11_2_fu_5331_p16;
wire   [31:0] v11_2_fu_5331_p17;
wire   [31:0] v24_2_fu_5402_p2;
wire   [31:0] v24_2_fu_5402_p4;
wire   [31:0] v24_2_fu_5402_p6;
wire   [31:0] v24_2_fu_5402_p8;
wire   [31:0] v24_2_fu_5402_p10;
wire   [31:0] v24_2_fu_5402_p12;
wire   [31:0] v24_2_fu_5402_p14;
wire   [31:0] v24_2_fu_5402_p16;
wire   [31:0] v24_2_fu_5402_p17;
wire   [10:0] tmp_24_fu_5448_p3;
wire   [12:0] p_shl21_fu_5441_p3;
wire   [12:0] p_shl5830_fu_5455_p1;
wire   [12:0] empty_1164_fu_5459_p2;
wire   [7:0] tmp_186_cast_fu_5465_p4;
wire   [12:0] tmp_68_fu_5475_p3;
wire   [10:0] tmp_25_fu_5501_p3;
wire   [12:0] p_shl22_fu_5494_p3;
wire   [12:0] p_shl5828_fu_5508_p1;
wire   [12:0] empty_1174_fu_5512_p2;
wire   [12:0] empty_1175_fu_5518_p2;
wire   [31:0] v35_2_fu_5579_p2;
wire   [31:0] v35_2_fu_5579_p4;
wire   [31:0] v35_2_fu_5579_p6;
wire   [31:0] v35_2_fu_5579_p8;
wire   [31:0] v35_2_fu_5579_p10;
wire   [31:0] v35_2_fu_5579_p12;
wire   [31:0] v35_2_fu_5579_p14;
wire   [31:0] v35_2_fu_5579_p16;
wire   [31:0] v35_2_fu_5579_p17;
wire   [31:0] v46_2_fu_5650_p2;
wire   [31:0] v46_2_fu_5650_p4;
wire   [31:0] v46_2_fu_5650_p6;
wire   [31:0] v46_2_fu_5650_p8;
wire   [31:0] v46_2_fu_5650_p10;
wire   [31:0] v46_2_fu_5650_p12;
wire   [31:0] v46_2_fu_5650_p14;
wire   [31:0] v46_2_fu_5650_p16;
wire   [31:0] v46_2_fu_5650_p17;
wire   [10:0] tmp_26_fu_5696_p3;
wire   [12:0] p_shl23_fu_5689_p3;
wire   [12:0] p_shl5826_fu_5703_p1;
wire   [12:0] empty_1185_fu_5707_p2;
wire   [12:0] empty_1186_fu_5713_p2;
wire   [10:0] tmp_27_fu_5737_p3;
wire   [12:0] p_shl24_fu_5730_p3;
wire   [12:0] p_shl5824_fu_5744_p1;
wire   [12:0] empty_1196_fu_5748_p2;
wire   [12:0] empty_1197_fu_5754_p2;
wire   [31:0] v57_2_fu_5815_p2;
wire   [31:0] v57_2_fu_5815_p4;
wire   [31:0] v57_2_fu_5815_p6;
wire   [31:0] v57_2_fu_5815_p8;
wire   [31:0] v57_2_fu_5815_p10;
wire   [31:0] v57_2_fu_5815_p12;
wire   [31:0] v57_2_fu_5815_p14;
wire   [31:0] v57_2_fu_5815_p16;
wire   [31:0] v57_2_fu_5815_p17;
wire   [31:0] v68_2_fu_5886_p2;
wire   [31:0] v68_2_fu_5886_p4;
wire   [31:0] v68_2_fu_5886_p6;
wire   [31:0] v68_2_fu_5886_p8;
wire   [31:0] v68_2_fu_5886_p10;
wire   [31:0] v68_2_fu_5886_p12;
wire   [31:0] v68_2_fu_5886_p14;
wire   [31:0] v68_2_fu_5886_p16;
wire   [31:0] v68_2_fu_5886_p17;
wire   [10:0] tmp_28_fu_5932_p3;
wire   [12:0] p_shl25_fu_5925_p3;
wire   [12:0] p_shl5822_fu_5939_p1;
wire   [12:0] empty_1207_fu_5943_p2;
wire   [7:0] tmp_189_cast_fu_5949_p4;
wire   [12:0] tmp_69_fu_5959_p3;
wire   [10:0] tmp_29_fu_5985_p3;
wire   [12:0] p_shl26_fu_5978_p3;
wire   [12:0] p_shl5820_fu_5992_p1;
wire   [12:0] empty_1217_fu_5996_p2;
wire   [12:0] empty_1218_fu_6002_p2;
wire   [31:0] v79_2_fu_6063_p2;
wire   [31:0] v79_2_fu_6063_p4;
wire   [31:0] v79_2_fu_6063_p6;
wire   [31:0] v79_2_fu_6063_p8;
wire   [31:0] v79_2_fu_6063_p10;
wire   [31:0] v79_2_fu_6063_p12;
wire   [31:0] v79_2_fu_6063_p14;
wire   [31:0] v79_2_fu_6063_p16;
wire   [31:0] v79_2_fu_6063_p17;
wire   [31:0] v90_2_fu_6134_p2;
wire   [31:0] v90_2_fu_6134_p4;
wire   [31:0] v90_2_fu_6134_p6;
wire   [31:0] v90_2_fu_6134_p8;
wire   [31:0] v90_2_fu_6134_p10;
wire   [31:0] v90_2_fu_6134_p12;
wire   [31:0] v90_2_fu_6134_p14;
wire   [31:0] v90_2_fu_6134_p16;
wire   [31:0] v90_2_fu_6134_p17;
wire   [10:0] tmp_30_fu_6180_p3;
wire   [12:0] p_shl27_fu_6173_p3;
wire   [12:0] p_shl5818_fu_6187_p1;
wire   [12:0] empty_1228_fu_6191_p2;
wire   [12:0] empty_1229_fu_6197_p2;
wire   [10:0] tmp_31_fu_6221_p3;
wire   [12:0] p_shl28_fu_6214_p3;
wire   [12:0] p_shl5816_fu_6228_p1;
wire   [12:0] empty_1238_fu_6232_p2;
wire   [12:0] empty_1239_fu_6238_p2;
wire   [7:0] mul_ln34_2_fu_6270_p0;
wire   [8:0] mul_ln34_2_fu_6270_p1;
wire   [7:0] mul_ln49_2_fu_6279_p0;
wire   [8:0] mul_ln49_2_fu_6279_p1;
wire   [7:0] mul_ln62_2_fu_6288_p0;
wire   [8:0] mul_ln62_2_fu_6288_p1;
wire   [7:0] mul_ln75_2_fu_6297_p0;
wire   [8:0] mul_ln75_2_fu_6297_p1;
wire   [7:0] mul_ln88_2_fu_6306_p0;
wire   [8:0] mul_ln88_2_fu_6306_p1;
wire   [7:0] mul_ln101_2_fu_6315_p0;
wire   [8:0] mul_ln101_2_fu_6315_p1;
wire   [7:0] mul_ln114_2_fu_6324_p0;
wire   [8:0] mul_ln114_2_fu_6324_p1;
wire   [7:0] mul_ln127_2_fu_6333_p0;
wire   [8:0] mul_ln127_2_fu_6333_p1;
wire   [7:0] mul_ln140_2_fu_6342_p0;
wire   [8:0] mul_ln140_2_fu_6342_p1;
wire   [31:0] v101_2_fu_6380_p2;
wire   [31:0] v101_2_fu_6380_p4;
wire   [31:0] v101_2_fu_6380_p6;
wire   [31:0] v101_2_fu_6380_p8;
wire   [31:0] v101_2_fu_6380_p10;
wire   [31:0] v101_2_fu_6380_p12;
wire   [31:0] v101_2_fu_6380_p14;
wire   [31:0] v101_2_fu_6380_p16;
wire   [31:0] v101_2_fu_6380_p17;
wire   [31:0] v11_3_fu_6451_p2;
wire   [31:0] v11_3_fu_6451_p4;
wire   [31:0] v11_3_fu_6451_p6;
wire   [31:0] v11_3_fu_6451_p8;
wire   [31:0] v11_3_fu_6451_p10;
wire   [31:0] v11_3_fu_6451_p12;
wire   [31:0] v11_3_fu_6451_p14;
wire   [31:0] v11_3_fu_6451_p16;
wire   [31:0] v11_3_fu_6451_p17;
wire   [10:0] tmp_32_fu_6497_p3;
wire   [12:0] p_shl29_fu_6490_p3;
wire   [12:0] p_shl5814_fu_6504_p1;
wire   [12:0] empty_1249_fu_6508_p2;
wire   [7:0] tmp_219_cast_fu_6514_p4;
wire   [12:0] tmp_70_fu_6524_p3;
wire   [10:0] tmp_33_fu_6550_p3;
wire   [12:0] p_shl30_fu_6543_p3;
wire   [12:0] p_shl5812_fu_6557_p1;
wire   [12:0] empty_1259_fu_6561_p2;
wire   [12:0] empty_1260_fu_6567_p2;
wire   [31:0] v24_3_fu_6628_p2;
wire   [31:0] v24_3_fu_6628_p4;
wire   [31:0] v24_3_fu_6628_p6;
wire   [31:0] v24_3_fu_6628_p8;
wire   [31:0] v24_3_fu_6628_p10;
wire   [31:0] v24_3_fu_6628_p12;
wire   [31:0] v24_3_fu_6628_p14;
wire   [31:0] v24_3_fu_6628_p16;
wire   [31:0] v24_3_fu_6628_p17;
wire   [31:0] v35_3_fu_6699_p2;
wire   [31:0] v35_3_fu_6699_p4;
wire   [31:0] v35_3_fu_6699_p6;
wire   [31:0] v35_3_fu_6699_p8;
wire   [31:0] v35_3_fu_6699_p10;
wire   [31:0] v35_3_fu_6699_p12;
wire   [31:0] v35_3_fu_6699_p14;
wire   [31:0] v35_3_fu_6699_p16;
wire   [31:0] v35_3_fu_6699_p17;
wire   [10:0] tmp_34_fu_6745_p3;
wire   [12:0] p_shl31_fu_6738_p3;
wire   [12:0] p_shl5810_fu_6752_p1;
wire   [12:0] empty_1270_fu_6756_p2;
wire   [12:0] empty_1271_fu_6762_p2;
wire   [10:0] tmp_35_fu_6786_p3;
wire   [12:0] p_shl32_fu_6779_p3;
wire   [12:0] p_shl5808_fu_6793_p1;
wire   [12:0] empty_1281_fu_6797_p2;
wire   [12:0] empty_1282_fu_6803_p2;
wire   [31:0] v46_3_fu_6864_p2;
wire   [31:0] v46_3_fu_6864_p4;
wire   [31:0] v46_3_fu_6864_p6;
wire   [31:0] v46_3_fu_6864_p8;
wire   [31:0] v46_3_fu_6864_p10;
wire   [31:0] v46_3_fu_6864_p12;
wire   [31:0] v46_3_fu_6864_p14;
wire   [31:0] v46_3_fu_6864_p16;
wire   [31:0] v46_3_fu_6864_p17;
wire   [31:0] v57_3_fu_6935_p2;
wire   [31:0] v57_3_fu_6935_p4;
wire   [31:0] v57_3_fu_6935_p6;
wire   [31:0] v57_3_fu_6935_p8;
wire   [31:0] v57_3_fu_6935_p10;
wire   [31:0] v57_3_fu_6935_p12;
wire   [31:0] v57_3_fu_6935_p14;
wire   [31:0] v57_3_fu_6935_p16;
wire   [31:0] v57_3_fu_6935_p17;
wire   [10:0] tmp_36_fu_6981_p3;
wire   [12:0] p_shl33_fu_6974_p3;
wire   [12:0] p_shl5806_fu_6988_p1;
wire   [12:0] empty_1292_fu_6992_p2;
wire   [7:0] tmp_222_cast_fu_6998_p4;
wire   [12:0] tmp_71_fu_7008_p3;
wire   [10:0] tmp_37_fu_7034_p3;
wire   [12:0] p_shl34_fu_7027_p3;
wire   [12:0] p_shl5804_fu_7041_p1;
wire   [12:0] empty_1302_fu_7045_p2;
wire   [12:0] empty_1303_fu_7051_p2;
wire   [31:0] v68_3_fu_7112_p2;
wire   [31:0] v68_3_fu_7112_p4;
wire   [31:0] v68_3_fu_7112_p6;
wire   [31:0] v68_3_fu_7112_p8;
wire   [31:0] v68_3_fu_7112_p10;
wire   [31:0] v68_3_fu_7112_p12;
wire   [31:0] v68_3_fu_7112_p14;
wire   [31:0] v68_3_fu_7112_p16;
wire   [31:0] v68_3_fu_7112_p17;
wire   [31:0] v79_3_fu_7183_p2;
wire   [31:0] v79_3_fu_7183_p4;
wire   [31:0] v79_3_fu_7183_p6;
wire   [31:0] v79_3_fu_7183_p8;
wire   [31:0] v79_3_fu_7183_p10;
wire   [31:0] v79_3_fu_7183_p12;
wire   [31:0] v79_3_fu_7183_p14;
wire   [31:0] v79_3_fu_7183_p16;
wire   [31:0] v79_3_fu_7183_p17;
wire   [10:0] tmp_38_fu_7229_p3;
wire   [12:0] p_shl35_fu_7222_p3;
wire   [12:0] p_shl5802_fu_7236_p1;
wire   [12:0] empty_1313_fu_7240_p2;
wire   [12:0] empty_1314_fu_7246_p2;
wire   [10:0] tmp_39_fu_7270_p3;
wire   [12:0] p_shl_fu_7263_p3;
wire   [12:0] p_shl5800_fu_7277_p1;
wire   [12:0] empty_1324_fu_7281_p2;
wire   [12:0] empty_1325_fu_7287_p2;
wire   [7:0] mul_ln34_3_fu_7307_p0;
wire   [8:0] mul_ln34_3_fu_7307_p1;
wire   [7:0] mul_ln49_3_fu_7316_p0;
wire   [8:0] mul_ln49_3_fu_7316_p1;
wire   [7:0] mul_ln62_3_fu_7325_p0;
wire   [8:0] mul_ln62_3_fu_7325_p1;
wire   [7:0] mul_ln75_3_fu_7334_p0;
wire   [8:0] mul_ln75_3_fu_7334_p1;
wire   [7:0] mul_ln88_3_fu_7343_p0;
wire   [8:0] mul_ln88_3_fu_7343_p1;
wire   [7:0] mul_ln101_3_fu_7352_p0;
wire   [8:0] mul_ln101_3_fu_7352_p1;
wire   [7:0] mul_ln114_3_fu_7361_p0;
wire   [8:0] mul_ln114_3_fu_7361_p1;
wire   [7:0] mul_ln127_3_fu_7370_p0;
wire   [8:0] mul_ln127_3_fu_7370_p1;
wire   [31:0] v90_3_fu_7408_p2;
wire   [31:0] v90_3_fu_7408_p4;
wire   [31:0] v90_3_fu_7408_p6;
wire   [31:0] v90_3_fu_7408_p8;
wire   [31:0] v90_3_fu_7408_p10;
wire   [31:0] v90_3_fu_7408_p12;
wire   [31:0] v90_3_fu_7408_p14;
wire   [31:0] v90_3_fu_7408_p16;
wire   [31:0] v90_3_fu_7408_p17;
wire   [7:0] mul_ln140_3_fu_7450_p0;
wire   [8:0] mul_ln140_3_fu_7450_p1;
wire   [31:0] v101_3_fu_7488_p2;
wire   [31:0] v101_3_fu_7488_p4;
wire   [31:0] v101_3_fu_7488_p6;
wire   [31:0] v101_3_fu_7488_p8;
wire   [31:0] v101_3_fu_7488_p10;
wire   [31:0] v101_3_fu_7488_p12;
wire   [31:0] v101_3_fu_7488_p14;
wire   [31:0] v101_3_fu_7488_p16;
wire   [31:0] v101_3_fu_7488_p17;
reg   [31:0] grp_fu_9705_p0;
reg   [31:0] grp_fu_9705_p1;
reg    grp_fu_9705_ce;
reg   [31:0] grp_fu_9709_p0;
reg   [31:0] grp_fu_9709_p1;
reg    grp_fu_9709_ce;
reg   [31:0] grp_fu_9713_p0;
reg   [31:0] grp_fu_9713_p1;
reg    grp_fu_9713_ce;
reg   [22:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
reg    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
reg    ap_ST_fsm_state23_blk;
wire   [15:0] mul_ln101_1_fu_5030_p00;
wire   [15:0] mul_ln101_2_fu_6315_p00;
wire   [15:0] mul_ln101_3_fu_7352_p00;
wire   [15:0] mul_ln101_fu_3981_p00;
wire   [15:0] mul_ln114_1_fu_5039_p00;
wire   [15:0] mul_ln114_2_fu_6324_p00;
wire   [15:0] mul_ln114_3_fu_7361_p00;
wire   [15:0] mul_ln114_fu_3990_p00;
wire   [15:0] mul_ln127_1_fu_5048_p00;
wire   [15:0] mul_ln127_2_fu_6333_p00;
wire   [15:0] mul_ln127_3_fu_7370_p00;
wire   [15:0] mul_ln127_fu_3999_p00;
wire   [15:0] mul_ln140_1_fu_5128_p00;
wire   [15:0] mul_ln140_2_fu_6342_p00;
wire   [15:0] mul_ln140_3_fu_7450_p00;
wire   [15:0] mul_ln140_fu_4008_p00;
wire   [15:0] mul_ln34_1_fu_4985_p00;
wire   [15:0] mul_ln34_2_fu_6270_p00;
wire   [15:0] mul_ln34_3_fu_7307_p00;
wire   [15:0] mul_ln34_fu_3912_p00;
wire   [15:0] mul_ln49_1_fu_4994_p00;
wire   [15:0] mul_ln49_2_fu_6279_p00;
wire   [15:0] mul_ln49_3_fu_7316_p00;
wire   [15:0] mul_ln49_fu_3929_p00;
wire   [15:0] mul_ln62_1_fu_5003_p00;
wire   [15:0] mul_ln62_2_fu_6288_p00;
wire   [15:0] mul_ln62_3_fu_7325_p00;
wire   [15:0] mul_ln62_fu_3946_p00;
wire   [15:0] mul_ln75_1_fu_5012_p00;
wire   [15:0] mul_ln75_2_fu_6297_p00;
wire   [15:0] mul_ln75_3_fu_7334_p00;
wire   [15:0] mul_ln75_fu_3963_p00;
wire   [15:0] mul_ln88_1_fu_5021_p00;
wire   [15:0] mul_ln88_2_fu_6306_p00;
wire   [15:0] mul_ln88_3_fu_7343_p00;
wire   [15:0] mul_ln88_fu_3972_p00;
wire   [2:0] v11_4_fu_2958_p1;
wire   [2:0] v11_4_fu_2958_p3;
wire   [2:0] v11_4_fu_2958_p5;
wire   [2:0] v11_4_fu_2958_p7;
wire  signed [2:0] v11_4_fu_2958_p9;
wire  signed [2:0] v11_4_fu_2958_p11;
wire  signed [2:0] v11_4_fu_2958_p13;
wire  signed [2:0] v11_4_fu_2958_p15;
wire   [2:0] v24_4_fu_3029_p1;
wire   [2:0] v24_4_fu_3029_p3;
wire   [2:0] v24_4_fu_3029_p5;
wire   [2:0] v24_4_fu_3029_p7;
wire  signed [2:0] v24_4_fu_3029_p9;
wire  signed [2:0] v24_4_fu_3029_p11;
wire  signed [2:0] v24_4_fu_3029_p13;
wire  signed [2:0] v24_4_fu_3029_p15;
wire   [2:0] v35_4_fu_3208_p1;
wire   [2:0] v35_4_fu_3208_p3;
wire   [2:0] v35_4_fu_3208_p5;
wire   [2:0] v35_4_fu_3208_p7;
wire  signed [2:0] v35_4_fu_3208_p9;
wire  signed [2:0] v35_4_fu_3208_p11;
wire  signed [2:0] v35_4_fu_3208_p13;
wire  signed [2:0] v35_4_fu_3208_p15;
wire   [2:0] v46_4_fu_3279_p1;
wire   [2:0] v46_4_fu_3279_p3;
wire   [2:0] v46_4_fu_3279_p5;
wire   [2:0] v46_4_fu_3279_p7;
wire  signed [2:0] v46_4_fu_3279_p9;
wire  signed [2:0] v46_4_fu_3279_p11;
wire  signed [2:0] v46_4_fu_3279_p13;
wire  signed [2:0] v46_4_fu_3279_p15;
wire   [2:0] v57_4_fu_3456_p1;
wire   [2:0] v57_4_fu_3456_p3;
wire   [2:0] v57_4_fu_3456_p5;
wire   [2:0] v57_4_fu_3456_p7;
wire  signed [2:0] v57_4_fu_3456_p9;
wire  signed [2:0] v57_4_fu_3456_p11;
wire  signed [2:0] v57_4_fu_3456_p13;
wire  signed [2:0] v57_4_fu_3456_p15;
wire   [2:0] v68_4_fu_3527_p1;
wire   [2:0] v68_4_fu_3527_p3;
wire   [2:0] v68_4_fu_3527_p5;
wire   [2:0] v68_4_fu_3527_p7;
wire  signed [2:0] v68_4_fu_3527_p9;
wire  signed [2:0] v68_4_fu_3527_p11;
wire  signed [2:0] v68_4_fu_3527_p13;
wire  signed [2:0] v68_4_fu_3527_p15;
wire   [2:0] v79_4_fu_3692_p1;
wire   [2:0] v79_4_fu_3692_p3;
wire   [2:0] v79_4_fu_3692_p5;
wire   [2:0] v79_4_fu_3692_p7;
wire  signed [2:0] v79_4_fu_3692_p9;
wire  signed [2:0] v79_4_fu_3692_p11;
wire  signed [2:0] v79_4_fu_3692_p13;
wire  signed [2:0] v79_4_fu_3692_p15;
wire   [2:0] v90_4_fu_3763_p1;
wire   [2:0] v90_4_fu_3763_p3;
wire   [2:0] v90_4_fu_3763_p5;
wire   [2:0] v90_4_fu_3763_p7;
wire  signed [2:0] v90_4_fu_3763_p9;
wire  signed [2:0] v90_4_fu_3763_p11;
wire  signed [2:0] v90_4_fu_3763_p13;
wire  signed [2:0] v90_4_fu_3763_p15;
wire   [2:0] v101_4_fu_4046_p1;
wire   [2:0] v101_4_fu_4046_p3;
wire   [2:0] v101_4_fu_4046_p5;
wire   [2:0] v101_4_fu_4046_p7;
wire  signed [2:0] v101_4_fu_4046_p9;
wire  signed [2:0] v101_4_fu_4046_p11;
wire  signed [2:0] v101_4_fu_4046_p13;
wire  signed [2:0] v101_4_fu_4046_p15;
wire   [2:0] v11_1_fu_4117_p1;
wire   [2:0] v11_1_fu_4117_p3;
wire   [2:0] v11_1_fu_4117_p5;
wire   [2:0] v11_1_fu_4117_p7;
wire  signed [2:0] v11_1_fu_4117_p9;
wire  signed [2:0] v11_1_fu_4117_p11;
wire  signed [2:0] v11_1_fu_4117_p13;
wire  signed [2:0] v11_1_fu_4117_p15;
wire   [2:0] v24_1_fu_4282_p1;
wire   [2:0] v24_1_fu_4282_p3;
wire   [2:0] v24_1_fu_4282_p5;
wire   [2:0] v24_1_fu_4282_p7;
wire  signed [2:0] v24_1_fu_4282_p9;
wire  signed [2:0] v24_1_fu_4282_p11;
wire  signed [2:0] v24_1_fu_4282_p13;
wire  signed [2:0] v24_1_fu_4282_p15;
wire   [2:0] v35_1_fu_4353_p1;
wire   [2:0] v35_1_fu_4353_p3;
wire   [2:0] v35_1_fu_4353_p5;
wire   [2:0] v35_1_fu_4353_p7;
wire  signed [2:0] v35_1_fu_4353_p9;
wire  signed [2:0] v35_1_fu_4353_p11;
wire  signed [2:0] v35_1_fu_4353_p13;
wire  signed [2:0] v35_1_fu_4353_p15;
wire   [2:0] v46_1_fu_4530_p1;
wire   [2:0] v46_1_fu_4530_p3;
wire   [2:0] v46_1_fu_4530_p5;
wire   [2:0] v46_1_fu_4530_p7;
wire  signed [2:0] v46_1_fu_4530_p9;
wire  signed [2:0] v46_1_fu_4530_p11;
wire  signed [2:0] v46_1_fu_4530_p13;
wire  signed [2:0] v46_1_fu_4530_p15;
wire   [2:0] v57_1_fu_4601_p1;
wire   [2:0] v57_1_fu_4601_p3;
wire   [2:0] v57_1_fu_4601_p5;
wire   [2:0] v57_1_fu_4601_p7;
wire  signed [2:0] v57_1_fu_4601_p9;
wire  signed [2:0] v57_1_fu_4601_p11;
wire  signed [2:0] v57_1_fu_4601_p13;
wire  signed [2:0] v57_1_fu_4601_p15;
wire   [2:0] v68_1_fu_4766_p1;
wire   [2:0] v68_1_fu_4766_p3;
wire   [2:0] v68_1_fu_4766_p5;
wire   [2:0] v68_1_fu_4766_p7;
wire  signed [2:0] v68_1_fu_4766_p9;
wire  signed [2:0] v68_1_fu_4766_p11;
wire  signed [2:0] v68_1_fu_4766_p13;
wire  signed [2:0] v68_1_fu_4766_p15;
wire   [2:0] v79_1_fu_4837_p1;
wire   [2:0] v79_1_fu_4837_p3;
wire   [2:0] v79_1_fu_4837_p5;
wire   [2:0] v79_1_fu_4837_p7;
wire  signed [2:0] v79_1_fu_4837_p9;
wire  signed [2:0] v79_1_fu_4837_p11;
wire  signed [2:0] v79_1_fu_4837_p13;
wire  signed [2:0] v79_1_fu_4837_p15;
wire   [2:0] v90_1_fu_5086_p1;
wire   [2:0] v90_1_fu_5086_p3;
wire   [2:0] v90_1_fu_5086_p5;
wire   [2:0] v90_1_fu_5086_p7;
wire  signed [2:0] v90_1_fu_5086_p9;
wire  signed [2:0] v90_1_fu_5086_p11;
wire  signed [2:0] v90_1_fu_5086_p13;
wire  signed [2:0] v90_1_fu_5086_p15;
wire   [2:0] v101_1_fu_5166_p1;
wire   [2:0] v101_1_fu_5166_p3;
wire   [2:0] v101_1_fu_5166_p5;
wire   [2:0] v101_1_fu_5166_p7;
wire  signed [2:0] v101_1_fu_5166_p9;
wire  signed [2:0] v101_1_fu_5166_p11;
wire  signed [2:0] v101_1_fu_5166_p13;
wire  signed [2:0] v101_1_fu_5166_p15;
wire   [2:0] v11_2_fu_5331_p1;
wire   [2:0] v11_2_fu_5331_p3;
wire   [2:0] v11_2_fu_5331_p5;
wire   [2:0] v11_2_fu_5331_p7;
wire  signed [2:0] v11_2_fu_5331_p9;
wire  signed [2:0] v11_2_fu_5331_p11;
wire  signed [2:0] v11_2_fu_5331_p13;
wire  signed [2:0] v11_2_fu_5331_p15;
wire   [2:0] v24_2_fu_5402_p1;
wire   [2:0] v24_2_fu_5402_p3;
wire   [2:0] v24_2_fu_5402_p5;
wire   [2:0] v24_2_fu_5402_p7;
wire  signed [2:0] v24_2_fu_5402_p9;
wire  signed [2:0] v24_2_fu_5402_p11;
wire  signed [2:0] v24_2_fu_5402_p13;
wire  signed [2:0] v24_2_fu_5402_p15;
wire   [2:0] v35_2_fu_5579_p1;
wire   [2:0] v35_2_fu_5579_p3;
wire   [2:0] v35_2_fu_5579_p5;
wire   [2:0] v35_2_fu_5579_p7;
wire  signed [2:0] v35_2_fu_5579_p9;
wire  signed [2:0] v35_2_fu_5579_p11;
wire  signed [2:0] v35_2_fu_5579_p13;
wire  signed [2:0] v35_2_fu_5579_p15;
wire   [2:0] v46_2_fu_5650_p1;
wire   [2:0] v46_2_fu_5650_p3;
wire   [2:0] v46_2_fu_5650_p5;
wire   [2:0] v46_2_fu_5650_p7;
wire  signed [2:0] v46_2_fu_5650_p9;
wire  signed [2:0] v46_2_fu_5650_p11;
wire  signed [2:0] v46_2_fu_5650_p13;
wire  signed [2:0] v46_2_fu_5650_p15;
wire   [2:0] v57_2_fu_5815_p1;
wire   [2:0] v57_2_fu_5815_p3;
wire   [2:0] v57_2_fu_5815_p5;
wire   [2:0] v57_2_fu_5815_p7;
wire  signed [2:0] v57_2_fu_5815_p9;
wire  signed [2:0] v57_2_fu_5815_p11;
wire  signed [2:0] v57_2_fu_5815_p13;
wire  signed [2:0] v57_2_fu_5815_p15;
wire   [2:0] v68_2_fu_5886_p1;
wire   [2:0] v68_2_fu_5886_p3;
wire   [2:0] v68_2_fu_5886_p5;
wire   [2:0] v68_2_fu_5886_p7;
wire  signed [2:0] v68_2_fu_5886_p9;
wire  signed [2:0] v68_2_fu_5886_p11;
wire  signed [2:0] v68_2_fu_5886_p13;
wire  signed [2:0] v68_2_fu_5886_p15;
wire   [2:0] v79_2_fu_6063_p1;
wire   [2:0] v79_2_fu_6063_p3;
wire   [2:0] v79_2_fu_6063_p5;
wire   [2:0] v79_2_fu_6063_p7;
wire  signed [2:0] v79_2_fu_6063_p9;
wire  signed [2:0] v79_2_fu_6063_p11;
wire  signed [2:0] v79_2_fu_6063_p13;
wire  signed [2:0] v79_2_fu_6063_p15;
wire   [2:0] v90_2_fu_6134_p1;
wire   [2:0] v90_2_fu_6134_p3;
wire   [2:0] v90_2_fu_6134_p5;
wire   [2:0] v90_2_fu_6134_p7;
wire  signed [2:0] v90_2_fu_6134_p9;
wire  signed [2:0] v90_2_fu_6134_p11;
wire  signed [2:0] v90_2_fu_6134_p13;
wire  signed [2:0] v90_2_fu_6134_p15;
wire   [2:0] v101_2_fu_6380_p1;
wire   [2:0] v101_2_fu_6380_p3;
wire   [2:0] v101_2_fu_6380_p5;
wire   [2:0] v101_2_fu_6380_p7;
wire  signed [2:0] v101_2_fu_6380_p9;
wire  signed [2:0] v101_2_fu_6380_p11;
wire  signed [2:0] v101_2_fu_6380_p13;
wire  signed [2:0] v101_2_fu_6380_p15;
wire   [2:0] v11_3_fu_6451_p1;
wire   [2:0] v11_3_fu_6451_p3;
wire   [2:0] v11_3_fu_6451_p5;
wire   [2:0] v11_3_fu_6451_p7;
wire  signed [2:0] v11_3_fu_6451_p9;
wire  signed [2:0] v11_3_fu_6451_p11;
wire  signed [2:0] v11_3_fu_6451_p13;
wire  signed [2:0] v11_3_fu_6451_p15;
wire   [2:0] v24_3_fu_6628_p1;
wire   [2:0] v24_3_fu_6628_p3;
wire   [2:0] v24_3_fu_6628_p5;
wire   [2:0] v24_3_fu_6628_p7;
wire  signed [2:0] v24_3_fu_6628_p9;
wire  signed [2:0] v24_3_fu_6628_p11;
wire  signed [2:0] v24_3_fu_6628_p13;
wire  signed [2:0] v24_3_fu_6628_p15;
wire   [2:0] v35_3_fu_6699_p1;
wire   [2:0] v35_3_fu_6699_p3;
wire   [2:0] v35_3_fu_6699_p5;
wire   [2:0] v35_3_fu_6699_p7;
wire  signed [2:0] v35_3_fu_6699_p9;
wire  signed [2:0] v35_3_fu_6699_p11;
wire  signed [2:0] v35_3_fu_6699_p13;
wire  signed [2:0] v35_3_fu_6699_p15;
wire   [2:0] v46_3_fu_6864_p1;
wire   [2:0] v46_3_fu_6864_p3;
wire   [2:0] v46_3_fu_6864_p5;
wire   [2:0] v46_3_fu_6864_p7;
wire  signed [2:0] v46_3_fu_6864_p9;
wire  signed [2:0] v46_3_fu_6864_p11;
wire  signed [2:0] v46_3_fu_6864_p13;
wire  signed [2:0] v46_3_fu_6864_p15;
wire   [2:0] v57_3_fu_6935_p1;
wire   [2:0] v57_3_fu_6935_p3;
wire   [2:0] v57_3_fu_6935_p5;
wire   [2:0] v57_3_fu_6935_p7;
wire  signed [2:0] v57_3_fu_6935_p9;
wire  signed [2:0] v57_3_fu_6935_p11;
wire  signed [2:0] v57_3_fu_6935_p13;
wire  signed [2:0] v57_3_fu_6935_p15;
wire   [2:0] v68_3_fu_7112_p1;
wire   [2:0] v68_3_fu_7112_p3;
wire   [2:0] v68_3_fu_7112_p5;
wire   [2:0] v68_3_fu_7112_p7;
wire  signed [2:0] v68_3_fu_7112_p9;
wire  signed [2:0] v68_3_fu_7112_p11;
wire  signed [2:0] v68_3_fu_7112_p13;
wire  signed [2:0] v68_3_fu_7112_p15;
wire   [2:0] v79_3_fu_7183_p1;
wire   [2:0] v79_3_fu_7183_p3;
wire   [2:0] v79_3_fu_7183_p5;
wire   [2:0] v79_3_fu_7183_p7;
wire  signed [2:0] v79_3_fu_7183_p9;
wire  signed [2:0] v79_3_fu_7183_p11;
wire  signed [2:0] v79_3_fu_7183_p13;
wire  signed [2:0] v79_3_fu_7183_p15;
wire   [2:0] v90_3_fu_7408_p1;
wire   [2:0] v90_3_fu_7408_p3;
wire   [2:0] v90_3_fu_7408_p5;
wire   [2:0] v90_3_fu_7408_p7;
wire  signed [2:0] v90_3_fu_7408_p9;
wire  signed [2:0] v90_3_fu_7408_p11;
wire  signed [2:0] v90_3_fu_7408_p13;
wire  signed [2:0] v90_3_fu_7408_p15;
wire   [2:0] v101_3_fu_7488_p1;
wire   [2:0] v101_3_fu_7488_p3;
wire   [2:0] v101_3_fu_7488_p5;
wire   [2:0] v101_3_fu_7488_p7;
wire  signed [2:0] v101_3_fu_7488_p9;
wire  signed [2:0] v101_3_fu_7488_p11;
wire  signed [2:0] v101_3_fu_7488_p13;
wire  signed [2:0] v101_3_fu_7488_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 23'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start_reg = 1'b0;
#0 phi_mul_fu_216 = 16'd0;
#0 v5_fu_220 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_2624(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_d1),.v229_q1(v229_q1),.phi_mul(phi_mul_load_reg_7549),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_8177),.mul_ln49(mul_ln49_reg_8182),.mul_ln62(mul_ln62_reg_8187),.mul_ln75(mul_ln75_reg_8192),.mul_ln88(mul_ln88_reg_8197),.mul_ln101(mul_ln101_reg_8202),.mul_ln114(mul_ln114_reg_8207),.mul_ln127(mul_ln127_reg_8212),.mul_ln140(mul_ln140_reg_8217),.v4(v4),.cmp11(cmp11_reg_7654),.v11_4(v11_4_reg_7755),.v24_4(v24_4_reg_7760),.v35_4(v35_4_reg_7865),.v46_4(v46_4_reg_7870),.v57_4(v57_4_reg_7969),.v68_4(v68_4_reg_7974),.v79_4(v79_4_reg_8073),.v90_4(v90_4_reg_8078),.v101_4(v101_4_reg_8222),.grp_fu_9705_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_din0),.grp_fu_9705_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_din1),.grp_fu_9705_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_opcode),.grp_fu_9705_p_dout0(grp_fu_184_p_dout0),.grp_fu_9705_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_ce),.grp_fu_9709_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_din0),.grp_fu_9709_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_din1),.grp_fu_9709_p_dout0(grp_fu_188_p_dout0),.grp_fu_9709_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_ce),.grp_fu_9713_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_din0),.grp_fu_9713_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_din1),.grp_fu_9713_p_dout0(grp_fu_192_p_dout0),.grp_fu_9713_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_234 grp_kernel_2mm_node0_Pipeline_label_234_fu_2653(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_d1),.v229_q1(v229_q1),.phi_mul(phi_mul_load_reg_7549),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_ce1),.v228_q1(v228_q1),.mul_ln34_1(mul_ln34_1_reg_8638),.mul_ln49_1(mul_ln49_1_reg_8643),.mul_ln62_1(mul_ln62_1_reg_8648),.mul_ln75_1(mul_ln75_1_reg_8653),.mul_ln88_1(mul_ln88_1_reg_8658),.mul_ln101_1(mul_ln101_1_reg_8663),.mul_ln114_1(mul_ln114_1_reg_8668),.mul_ln127_1(mul_ln127_1_reg_8673),.mul_ln140_1(mul_ln140_1_reg_8683),.v4(v4),.cmp11(cmp11_reg_7654),.v11_1(v11_1_reg_8227),.v24_1(v24_1_reg_8326),.v35_1(v35_1_reg_8331),.v46_1(v46_1_reg_8430),.v57_1(v57_1_reg_8435),.v68_1(v68_1_reg_8534),.v79_1(v79_1_reg_8539),.v90_1(v90_1_reg_8678),.v101_1(v101_1_reg_8688),.grp_fu_9705_p_din0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_din0),.grp_fu_9705_p_din1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_din1),.grp_fu_9705_p_opcode(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_opcode),.grp_fu_9705_p_dout0(grp_fu_184_p_dout0),.grp_fu_9705_p_ce(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_ce),.grp_fu_9709_p_din0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_din0),.grp_fu_9709_p_din1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_din1),.grp_fu_9709_p_dout0(grp_fu_188_p_dout0),.grp_fu_9709_p_ce(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_ce),.grp_fu_9713_p_din0(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_din0),.grp_fu_9713_p_din1(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_din1),.grp_fu_9713_p_dout0(grp_fu_192_p_dout0),.grp_fu_9713_p_ce(grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_235 grp_kernel_2mm_node0_Pipeline_label_235_fu_2682(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_d1),.v229_q1(v229_q1),.phi_mul(phi_mul_load_reg_7549),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_ce1),.v228_q1(v228_q1),.mul_ln34_2(mul_ln34_2_reg_9203),.mul_ln49_2(mul_ln49_2_reg_9208),.mul_ln62_2(mul_ln62_2_reg_9213),.mul_ln75_2(mul_ln75_2_reg_9218),.mul_ln88_2(mul_ln88_2_reg_9223),.mul_ln101_2(mul_ln101_2_reg_9228),.mul_ln114_2(mul_ln114_2_reg_9233),.mul_ln127_2(mul_ln127_2_reg_9238),.mul_ln140_2(mul_ln140_2_reg_9243),.v4(v4),.cmp11(cmp11_reg_7654),.v11_2(v11_2_reg_8787),.v24_2(v24_2_reg_8792),.v35_2(v35_2_reg_8891),.v46_2(v46_2_reg_8896),.v57_2(v57_2_reg_8995),.v68_2(v68_2_reg_9000),.v79_2(v79_2_reg_9099),.v90_2(v90_2_reg_9104),.v101_2(v101_2_reg_9248),.grp_fu_9705_p_din0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_din0),.grp_fu_9705_p_din1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_din1),.grp_fu_9705_p_opcode(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_opcode),.grp_fu_9705_p_dout0(grp_fu_184_p_dout0),.grp_fu_9705_p_ce(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_ce),.grp_fu_9709_p_din0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_din0),.grp_fu_9709_p_din1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_din1),.grp_fu_9709_p_dout0(grp_fu_188_p_dout0),.grp_fu_9709_p_ce(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_ce),.grp_fu_9713_p_din0(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_din0),.grp_fu_9713_p_din1(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_din1),.grp_fu_9713_p_dout0(grp_fu_192_p_dout0),.grp_fu_9713_p_ce(grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_236 grp_kernel_2mm_node0_Pipeline_label_236_fu_2711(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_d1),.v229_q1(v229_q1),.phi_mul(phi_mul_load_reg_7549),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_ce1),.v228_q1(v228_q1),.mul_ln34_3(mul_ln34_3_reg_9650),.mul_ln49_3(mul_ln49_3_reg_9655),.mul_ln62_3(mul_ln62_3_reg_9660),.mul_ln75_3(mul_ln75_3_reg_9665),.mul_ln88_3(mul_ln88_3_reg_9670),.mul_ln101_3(mul_ln101_3_reg_9675),.mul_ln114_3(mul_ln114_3_reg_9680),.mul_ln127_3(mul_ln127_3_reg_9685),.mul_ln140_3(mul_ln140_3_reg_9695),.v4(v4),.cmp11(cmp11_reg_7654),.v11_3(v11_3_reg_9253),.v24_3(v24_3_reg_9352),.v35_3(v35_3_reg_9357),.v46_3(v46_3_reg_9456),.v57_3(v57_3_reg_9461),.v68_3(v68_3_reg_9560),.v79_3(v79_3_reg_9565),.v90_3(v90_3_reg_9690),.v101_3(v101_3_reg_9700),.grp_fu_9705_p_din0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_din0),.grp_fu_9705_p_din1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_din1),.grp_fu_9705_p_opcode(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_opcode),.grp_fu_9705_p_dout0(grp_fu_184_p_dout0),.grp_fu_9705_p_ce(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_ce),.grp_fu_9709_p_din0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_din0),.grp_fu_9709_p_din1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_din1),.grp_fu_9709_p_dout0(grp_fu_188_p_dout0),.grp_fu_9709_p_ce(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_ce),.grp_fu_9713_p_din0(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_din0),.grp_fu_9713_p_din1(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_din1),.grp_fu_9713_p_dout0(grp_fu_192_p_dout0),.grp_fu_9713_p_ce(grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_ce));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1284(.din0(v11_4_fu_2958_p2),.din1(v11_4_fu_2958_p4),.din2(v11_4_fu_2958_p6),.din3(v11_4_fu_2958_p8),.din4(v11_4_fu_2958_p10),.din5(v11_4_fu_2958_p12),.din6(v11_4_fu_2958_p14),.din7(v11_4_fu_2958_p16),.def(v11_4_fu_2958_p17),.sel(trunc_ln31_reg_7570),.dout(v11_4_fu_2958_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1285(.din0(v24_4_fu_3029_p2),.din1(v24_4_fu_3029_p4),.din2(v24_4_fu_3029_p6),.din3(v24_4_fu_3029_p8),.din4(v24_4_fu_3029_p10),.din5(v24_4_fu_3029_p12),.din6(v24_4_fu_3029_p14),.din7(v24_4_fu_3029_p16),.def(v24_4_fu_3029_p17),.sel(trunc_ln31_reg_7570),.dout(v24_4_fu_3029_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1286(.din0(v35_4_fu_3208_p2),.din1(v35_4_fu_3208_p4),.din2(v35_4_fu_3208_p6),.din3(v35_4_fu_3208_p8),.din4(v35_4_fu_3208_p10),.din5(v35_4_fu_3208_p12),.din6(v35_4_fu_3208_p14),.din7(v35_4_fu_3208_p16),.def(v35_4_fu_3208_p17),.sel(trunc_ln31_reg_7570),.dout(v35_4_fu_3208_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1287(.din0(v46_4_fu_3279_p2),.din1(v46_4_fu_3279_p4),.din2(v46_4_fu_3279_p6),.din3(v46_4_fu_3279_p8),.din4(v46_4_fu_3279_p10),.din5(v46_4_fu_3279_p12),.din6(v46_4_fu_3279_p14),.din7(v46_4_fu_3279_p16),.def(v46_4_fu_3279_p17),.sel(trunc_ln31_reg_7570),.dout(v46_4_fu_3279_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1288(.din0(v57_4_fu_3456_p2),.din1(v57_4_fu_3456_p4),.din2(v57_4_fu_3456_p6),.din3(v57_4_fu_3456_p8),.din4(v57_4_fu_3456_p10),.din5(v57_4_fu_3456_p12),.din6(v57_4_fu_3456_p14),.din7(v57_4_fu_3456_p16),.def(v57_4_fu_3456_p17),.sel(trunc_ln31_reg_7570),.dout(v57_4_fu_3456_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1289(.din0(v68_4_fu_3527_p2),.din1(v68_4_fu_3527_p4),.din2(v68_4_fu_3527_p6),.din3(v68_4_fu_3527_p8),.din4(v68_4_fu_3527_p10),.din5(v68_4_fu_3527_p12),.din6(v68_4_fu_3527_p14),.din7(v68_4_fu_3527_p16),.def(v68_4_fu_3527_p17),.sel(trunc_ln31_reg_7570),.dout(v68_4_fu_3527_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1290(.din0(v79_4_fu_3692_p2),.din1(v79_4_fu_3692_p4),.din2(v79_4_fu_3692_p6),.din3(v79_4_fu_3692_p8),.din4(v79_4_fu_3692_p10),.din5(v79_4_fu_3692_p12),.din6(v79_4_fu_3692_p14),.din7(v79_4_fu_3692_p16),.def(v79_4_fu_3692_p17),.sel(trunc_ln31_reg_7570),.dout(v79_4_fu_3692_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1291(.din0(v90_4_fu_3763_p2),.din1(v90_4_fu_3763_p4),.din2(v90_4_fu_3763_p6),.din3(v90_4_fu_3763_p8),.din4(v90_4_fu_3763_p10),.din5(v90_4_fu_3763_p12),.din6(v90_4_fu_3763_p14),.din7(v90_4_fu_3763_p16),.def(v90_4_fu_3763_p17),.sel(trunc_ln31_reg_7570),.dout(v90_4_fu_3763_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1292(.din0(mul_ln34_fu_3912_p0),.din1(mul_ln34_fu_3912_p1),.dout(mul_ln34_fu_3912_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1293(.din0(mul_ln49_fu_3929_p0),.din1(mul_ln49_fu_3929_p1),.dout(mul_ln49_fu_3929_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1294(.din0(mul_ln62_fu_3946_p0),.din1(mul_ln62_fu_3946_p1),.dout(mul_ln62_fu_3946_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1295(.din0(mul_ln75_fu_3963_p0),.din1(mul_ln75_fu_3963_p1),.dout(mul_ln75_fu_3963_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1296(.din0(mul_ln88_fu_3972_p0),.din1(mul_ln88_fu_3972_p1),.dout(mul_ln88_fu_3972_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1297(.din0(mul_ln101_fu_3981_p0),.din1(mul_ln101_fu_3981_p1),.dout(mul_ln101_fu_3981_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1298(.din0(mul_ln114_fu_3990_p0),.din1(mul_ln114_fu_3990_p1),.dout(mul_ln114_fu_3990_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1299(.din0(mul_ln127_fu_3999_p0),.din1(mul_ln127_fu_3999_p1),.dout(mul_ln127_fu_3999_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1300(.din0(mul_ln140_fu_4008_p0),.din1(mul_ln140_fu_4008_p1),.dout(mul_ln140_fu_4008_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1301(.din0(v101_4_fu_4046_p2),.din1(v101_4_fu_4046_p4),.din2(v101_4_fu_4046_p6),.din3(v101_4_fu_4046_p8),.din4(v101_4_fu_4046_p10),.din5(v101_4_fu_4046_p12),.din6(v101_4_fu_4046_p14),.din7(v101_4_fu_4046_p16),.def(v101_4_fu_4046_p17),.sel(trunc_ln31_reg_7570),.dout(v101_4_fu_4046_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1302(.din0(v11_1_fu_4117_p2),.din1(v11_1_fu_4117_p4),.din2(v11_1_fu_4117_p6),.din3(v11_1_fu_4117_p8),.din4(v11_1_fu_4117_p10),.din5(v11_1_fu_4117_p12),.din6(v11_1_fu_4117_p14),.din7(v11_1_fu_4117_p16),.def(v11_1_fu_4117_p17),.sel(trunc_ln31_reg_7570),.dout(v11_1_fu_4117_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1303(.din0(v24_1_fu_4282_p2),.din1(v24_1_fu_4282_p4),.din2(v24_1_fu_4282_p6),.din3(v24_1_fu_4282_p8),.din4(v24_1_fu_4282_p10),.din5(v24_1_fu_4282_p12),.din6(v24_1_fu_4282_p14),.din7(v24_1_fu_4282_p16),.def(v24_1_fu_4282_p17),.sel(trunc_ln31_reg_7570),.dout(v24_1_fu_4282_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1304(.din0(v35_1_fu_4353_p2),.din1(v35_1_fu_4353_p4),.din2(v35_1_fu_4353_p6),.din3(v35_1_fu_4353_p8),.din4(v35_1_fu_4353_p10),.din5(v35_1_fu_4353_p12),.din6(v35_1_fu_4353_p14),.din7(v35_1_fu_4353_p16),.def(v35_1_fu_4353_p17),.sel(trunc_ln31_reg_7570),.dout(v35_1_fu_4353_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1305(.din0(v46_1_fu_4530_p2),.din1(v46_1_fu_4530_p4),.din2(v46_1_fu_4530_p6),.din3(v46_1_fu_4530_p8),.din4(v46_1_fu_4530_p10),.din5(v46_1_fu_4530_p12),.din6(v46_1_fu_4530_p14),.din7(v46_1_fu_4530_p16),.def(v46_1_fu_4530_p17),.sel(trunc_ln31_reg_7570),.dout(v46_1_fu_4530_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1306(.din0(v57_1_fu_4601_p2),.din1(v57_1_fu_4601_p4),.din2(v57_1_fu_4601_p6),.din3(v57_1_fu_4601_p8),.din4(v57_1_fu_4601_p10),.din5(v57_1_fu_4601_p12),.din6(v57_1_fu_4601_p14),.din7(v57_1_fu_4601_p16),.def(v57_1_fu_4601_p17),.sel(trunc_ln31_reg_7570),.dout(v57_1_fu_4601_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1307(.din0(v68_1_fu_4766_p2),.din1(v68_1_fu_4766_p4),.din2(v68_1_fu_4766_p6),.din3(v68_1_fu_4766_p8),.din4(v68_1_fu_4766_p10),.din5(v68_1_fu_4766_p12),.din6(v68_1_fu_4766_p14),.din7(v68_1_fu_4766_p16),.def(v68_1_fu_4766_p17),.sel(trunc_ln31_reg_7570),.dout(v68_1_fu_4766_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1308(.din0(v79_1_fu_4837_p2),.din1(v79_1_fu_4837_p4),.din2(v79_1_fu_4837_p6),.din3(v79_1_fu_4837_p8),.din4(v79_1_fu_4837_p10),.din5(v79_1_fu_4837_p12),.din6(v79_1_fu_4837_p14),.din7(v79_1_fu_4837_p16),.def(v79_1_fu_4837_p17),.sel(trunc_ln31_reg_7570),.dout(v79_1_fu_4837_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1309(.din0(mul_ln34_1_fu_4985_p0),.din1(mul_ln34_1_fu_4985_p1),.dout(mul_ln34_1_fu_4985_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1310(.din0(mul_ln49_1_fu_4994_p0),.din1(mul_ln49_1_fu_4994_p1),.dout(mul_ln49_1_fu_4994_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1311(.din0(mul_ln62_1_fu_5003_p0),.din1(mul_ln62_1_fu_5003_p1),.dout(mul_ln62_1_fu_5003_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1312(.din0(mul_ln75_1_fu_5012_p0),.din1(mul_ln75_1_fu_5012_p1),.dout(mul_ln75_1_fu_5012_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1313(.din0(mul_ln88_1_fu_5021_p0),.din1(mul_ln88_1_fu_5021_p1),.dout(mul_ln88_1_fu_5021_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1314(.din0(mul_ln101_1_fu_5030_p0),.din1(mul_ln101_1_fu_5030_p1),.dout(mul_ln101_1_fu_5030_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1315(.din0(mul_ln114_1_fu_5039_p0),.din1(mul_ln114_1_fu_5039_p1),.dout(mul_ln114_1_fu_5039_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1316(.din0(mul_ln127_1_fu_5048_p0),.din1(mul_ln127_1_fu_5048_p1),.dout(mul_ln127_1_fu_5048_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1317(.din0(v90_1_fu_5086_p2),.din1(v90_1_fu_5086_p4),.din2(v90_1_fu_5086_p6),.din3(v90_1_fu_5086_p8),.din4(v90_1_fu_5086_p10),.din5(v90_1_fu_5086_p12),.din6(v90_1_fu_5086_p14),.din7(v90_1_fu_5086_p16),.def(v90_1_fu_5086_p17),.sel(trunc_ln31_reg_7570),.dout(v90_1_fu_5086_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1318(.din0(mul_ln140_1_fu_5128_p0),.din1(mul_ln140_1_fu_5128_p1),.dout(mul_ln140_1_fu_5128_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1319(.din0(v101_1_fu_5166_p2),.din1(v101_1_fu_5166_p4),.din2(v101_1_fu_5166_p6),.din3(v101_1_fu_5166_p8),.din4(v101_1_fu_5166_p10),.din5(v101_1_fu_5166_p12),.din6(v101_1_fu_5166_p14),.din7(v101_1_fu_5166_p16),.def(v101_1_fu_5166_p17),.sel(trunc_ln31_reg_7570),.dout(v101_1_fu_5166_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1320(.din0(v11_2_fu_5331_p2),.din1(v11_2_fu_5331_p4),.din2(v11_2_fu_5331_p6),.din3(v11_2_fu_5331_p8),.din4(v11_2_fu_5331_p10),.din5(v11_2_fu_5331_p12),.din6(v11_2_fu_5331_p14),.din7(v11_2_fu_5331_p16),.def(v11_2_fu_5331_p17),.sel(trunc_ln31_reg_7570),.dout(v11_2_fu_5331_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1321(.din0(v24_2_fu_5402_p2),.din1(v24_2_fu_5402_p4),.din2(v24_2_fu_5402_p6),.din3(v24_2_fu_5402_p8),.din4(v24_2_fu_5402_p10),.din5(v24_2_fu_5402_p12),.din6(v24_2_fu_5402_p14),.din7(v24_2_fu_5402_p16),.def(v24_2_fu_5402_p17),.sel(trunc_ln31_reg_7570),.dout(v24_2_fu_5402_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1322(.din0(v35_2_fu_5579_p2),.din1(v35_2_fu_5579_p4),.din2(v35_2_fu_5579_p6),.din3(v35_2_fu_5579_p8),.din4(v35_2_fu_5579_p10),.din5(v35_2_fu_5579_p12),.din6(v35_2_fu_5579_p14),.din7(v35_2_fu_5579_p16),.def(v35_2_fu_5579_p17),.sel(trunc_ln31_reg_7570),.dout(v35_2_fu_5579_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1323(.din0(v46_2_fu_5650_p2),.din1(v46_2_fu_5650_p4),.din2(v46_2_fu_5650_p6),.din3(v46_2_fu_5650_p8),.din4(v46_2_fu_5650_p10),.din5(v46_2_fu_5650_p12),.din6(v46_2_fu_5650_p14),.din7(v46_2_fu_5650_p16),.def(v46_2_fu_5650_p17),.sel(trunc_ln31_reg_7570),.dout(v46_2_fu_5650_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1324(.din0(v57_2_fu_5815_p2),.din1(v57_2_fu_5815_p4),.din2(v57_2_fu_5815_p6),.din3(v57_2_fu_5815_p8),.din4(v57_2_fu_5815_p10),.din5(v57_2_fu_5815_p12),.din6(v57_2_fu_5815_p14),.din7(v57_2_fu_5815_p16),.def(v57_2_fu_5815_p17),.sel(trunc_ln31_reg_7570),.dout(v57_2_fu_5815_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1325(.din0(v68_2_fu_5886_p2),.din1(v68_2_fu_5886_p4),.din2(v68_2_fu_5886_p6),.din3(v68_2_fu_5886_p8),.din4(v68_2_fu_5886_p10),.din5(v68_2_fu_5886_p12),.din6(v68_2_fu_5886_p14),.din7(v68_2_fu_5886_p16),.def(v68_2_fu_5886_p17),.sel(trunc_ln31_reg_7570),.dout(v68_2_fu_5886_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1326(.din0(v79_2_fu_6063_p2),.din1(v79_2_fu_6063_p4),.din2(v79_2_fu_6063_p6),.din3(v79_2_fu_6063_p8),.din4(v79_2_fu_6063_p10),.din5(v79_2_fu_6063_p12),.din6(v79_2_fu_6063_p14),.din7(v79_2_fu_6063_p16),.def(v79_2_fu_6063_p17),.sel(trunc_ln31_reg_7570),.dout(v79_2_fu_6063_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1327(.din0(v90_2_fu_6134_p2),.din1(v90_2_fu_6134_p4),.din2(v90_2_fu_6134_p6),.din3(v90_2_fu_6134_p8),.din4(v90_2_fu_6134_p10),.din5(v90_2_fu_6134_p12),.din6(v90_2_fu_6134_p14),.din7(v90_2_fu_6134_p16),.def(v90_2_fu_6134_p17),.sel(trunc_ln31_reg_7570),.dout(v90_2_fu_6134_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1328(.din0(mul_ln34_2_fu_6270_p0),.din1(mul_ln34_2_fu_6270_p1),.dout(mul_ln34_2_fu_6270_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1329(.din0(mul_ln49_2_fu_6279_p0),.din1(mul_ln49_2_fu_6279_p1),.dout(mul_ln49_2_fu_6279_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1330(.din0(mul_ln62_2_fu_6288_p0),.din1(mul_ln62_2_fu_6288_p1),.dout(mul_ln62_2_fu_6288_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1331(.din0(mul_ln75_2_fu_6297_p0),.din1(mul_ln75_2_fu_6297_p1),.dout(mul_ln75_2_fu_6297_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1332(.din0(mul_ln88_2_fu_6306_p0),.din1(mul_ln88_2_fu_6306_p1),.dout(mul_ln88_2_fu_6306_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1333(.din0(mul_ln101_2_fu_6315_p0),.din1(mul_ln101_2_fu_6315_p1),.dout(mul_ln101_2_fu_6315_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1334(.din0(mul_ln114_2_fu_6324_p0),.din1(mul_ln114_2_fu_6324_p1),.dout(mul_ln114_2_fu_6324_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1335(.din0(mul_ln127_2_fu_6333_p0),.din1(mul_ln127_2_fu_6333_p1),.dout(mul_ln127_2_fu_6333_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1336(.din0(mul_ln140_2_fu_6342_p0),.din1(mul_ln140_2_fu_6342_p1),.dout(mul_ln140_2_fu_6342_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1337(.din0(v101_2_fu_6380_p2),.din1(v101_2_fu_6380_p4),.din2(v101_2_fu_6380_p6),.din3(v101_2_fu_6380_p8),.din4(v101_2_fu_6380_p10),.din5(v101_2_fu_6380_p12),.din6(v101_2_fu_6380_p14),.din7(v101_2_fu_6380_p16),.def(v101_2_fu_6380_p17),.sel(trunc_ln31_reg_7570),.dout(v101_2_fu_6380_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1338(.din0(v11_3_fu_6451_p2),.din1(v11_3_fu_6451_p4),.din2(v11_3_fu_6451_p6),.din3(v11_3_fu_6451_p8),.din4(v11_3_fu_6451_p10),.din5(v11_3_fu_6451_p12),.din6(v11_3_fu_6451_p14),.din7(v11_3_fu_6451_p16),.def(v11_3_fu_6451_p17),.sel(trunc_ln31_reg_7570),.dout(v11_3_fu_6451_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1339(.din0(v24_3_fu_6628_p2),.din1(v24_3_fu_6628_p4),.din2(v24_3_fu_6628_p6),.din3(v24_3_fu_6628_p8),.din4(v24_3_fu_6628_p10),.din5(v24_3_fu_6628_p12),.din6(v24_3_fu_6628_p14),.din7(v24_3_fu_6628_p16),.def(v24_3_fu_6628_p17),.sel(trunc_ln31_reg_7570),.dout(v24_3_fu_6628_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1340(.din0(v35_3_fu_6699_p2),.din1(v35_3_fu_6699_p4),.din2(v35_3_fu_6699_p6),.din3(v35_3_fu_6699_p8),.din4(v35_3_fu_6699_p10),.din5(v35_3_fu_6699_p12),.din6(v35_3_fu_6699_p14),.din7(v35_3_fu_6699_p16),.def(v35_3_fu_6699_p17),.sel(trunc_ln31_reg_7570),.dout(v35_3_fu_6699_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1341(.din0(v46_3_fu_6864_p2),.din1(v46_3_fu_6864_p4),.din2(v46_3_fu_6864_p6),.din3(v46_3_fu_6864_p8),.din4(v46_3_fu_6864_p10),.din5(v46_3_fu_6864_p12),.din6(v46_3_fu_6864_p14),.din7(v46_3_fu_6864_p16),.def(v46_3_fu_6864_p17),.sel(trunc_ln31_reg_7570),.dout(v46_3_fu_6864_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1342(.din0(v57_3_fu_6935_p2),.din1(v57_3_fu_6935_p4),.din2(v57_3_fu_6935_p6),.din3(v57_3_fu_6935_p8),.din4(v57_3_fu_6935_p10),.din5(v57_3_fu_6935_p12),.din6(v57_3_fu_6935_p14),.din7(v57_3_fu_6935_p16),.def(v57_3_fu_6935_p17),.sel(trunc_ln31_reg_7570),.dout(v57_3_fu_6935_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1343(.din0(v68_3_fu_7112_p2),.din1(v68_3_fu_7112_p4),.din2(v68_3_fu_7112_p6),.din3(v68_3_fu_7112_p8),.din4(v68_3_fu_7112_p10),.din5(v68_3_fu_7112_p12),.din6(v68_3_fu_7112_p14),.din7(v68_3_fu_7112_p16),.def(v68_3_fu_7112_p17),.sel(trunc_ln31_reg_7570),.dout(v68_3_fu_7112_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1344(.din0(v79_3_fu_7183_p2),.din1(v79_3_fu_7183_p4),.din2(v79_3_fu_7183_p6),.din3(v79_3_fu_7183_p8),.din4(v79_3_fu_7183_p10),.din5(v79_3_fu_7183_p12),.din6(v79_3_fu_7183_p14),.din7(v79_3_fu_7183_p16),.def(v79_3_fu_7183_p17),.sel(trunc_ln31_reg_7570),.dout(v79_3_fu_7183_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1345(.din0(mul_ln34_3_fu_7307_p0),.din1(mul_ln34_3_fu_7307_p1),.dout(mul_ln34_3_fu_7307_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1346(.din0(mul_ln49_3_fu_7316_p0),.din1(mul_ln49_3_fu_7316_p1),.dout(mul_ln49_3_fu_7316_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1347(.din0(mul_ln62_3_fu_7325_p0),.din1(mul_ln62_3_fu_7325_p1),.dout(mul_ln62_3_fu_7325_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1348(.din0(mul_ln75_3_fu_7334_p0),.din1(mul_ln75_3_fu_7334_p1),.dout(mul_ln75_3_fu_7334_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1349(.din0(mul_ln88_3_fu_7343_p0),.din1(mul_ln88_3_fu_7343_p1),.dout(mul_ln88_3_fu_7343_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1350(.din0(mul_ln101_3_fu_7352_p0),.din1(mul_ln101_3_fu_7352_p1),.dout(mul_ln101_3_fu_7352_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1351(.din0(mul_ln114_3_fu_7361_p0),.din1(mul_ln114_3_fu_7361_p1),.dout(mul_ln114_3_fu_7361_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1352(.din0(mul_ln127_3_fu_7370_p0),.din1(mul_ln127_3_fu_7370_p1),.dout(mul_ln127_3_fu_7370_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1353(.din0(v90_3_fu_7408_p2),.din1(v90_3_fu_7408_p4),.din2(v90_3_fu_7408_p6),.din3(v90_3_fu_7408_p8),.din4(v90_3_fu_7408_p10),.din5(v90_3_fu_7408_p12),.din6(v90_3_fu_7408_p14),.din7(v90_3_fu_7408_p16),.def(v90_3_fu_7408_p17),.sel(trunc_ln31_reg_7570),.dout(v90_3_fu_7408_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U1354(.din0(mul_ln140_3_fu_7450_p0),.din1(mul_ln140_3_fu_7450_p1),.dout(mul_ln140_3_fu_7450_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1355(.din0(v101_3_fu_7488_p2),.din1(v101_3_fu_7488_p4),.din2(v101_3_fu_7488_p6),.din3(v101_3_fu_7488_p8),.din4(v101_3_fu_7488_p10),.din5(v101_3_fu_7488_p12),.din6(v101_3_fu_7488_p14),.din7(v101_3_fu_7488_p16),.def(v101_3_fu_7488_p17),.sel(trunc_ln31_reg_7570),.dout(v101_3_fu_7488_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state22)) begin
            grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        phi_mul_fu_216 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_2798_p2 == 1'd0))) begin
        phi_mul_fu_216 <= add_ln31_1_reg_7557;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v5_fu_220 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_2798_p2 == 1'd0))) begin
        v5_fu_220 <= add_ln31_reg_7565;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_2762_p2 == 1'd0))) begin
        v6_reg_2612 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state23) & (grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_done == 1'b1))) begin
        v6_reg_2612 <= add_ln32_3_reg_7750;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_7557 <= add_ln31_1_fu_2756_p2;
        add_ln31_reg_7565 <= add_ln31_fu_2768_p2;
        cmp11_reg_7654 <= cmp11_fu_2792_p2;
        lshr_ln_reg_7610 <= {{v5_fu_220[7:3]}};
        phi_mul_load_reg_7549 <= phi_mul_fu_216;
        trunc_ln31_reg_7570 <= trunc_ln31_fu_2774_p1;
        zext_ln31_reg_7623[4 : 0] <= zext_ln31_fu_2788_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        add_ln32_1_reg_8624 <= add_ln32_1_fu_4970_p2;
        empty_1152_reg_8631 <= empty_1152_fu_4976_p2;
        v68_1_reg_8534 <= v68_1_fu_4766_p19;
        v79_1_reg_8539 <= v79_1_fu_4837_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        add_ln32_2_reg_9092 <= add_ln32_2_fu_6025_p2;
        empty_1227_reg_9085 <= empty_1227_fu_6019_p2;
        v57_2_reg_8995 <= v57_2_fu_5815_p19;
        v68_2_reg_9000 <= v68_2_fu_5886_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_3_reg_7750 <= add_ln32_3_fu_2912_p2;
        tmp_59_reg_7705 <= {{v6_reg_2612[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln32_reg_8066 <= add_ln32_fu_3654_p2;
        empty_1036_reg_8059 <= empty_1036_fu_3648_p2;
        v57_4_reg_7969 <= v57_4_fu_3456_p19;
        v68_4_reg_7974 <= v68_4_fu_3527_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_1003_reg_7858 <= empty_1003_fu_3170_p2;
        empty_993_reg_7851 <= empty_993_fu_3164_p2;
        tmp_61_reg_7765 <= {{v6_reg_2612[7:2]}};
        v11_4_reg_7755 <= v11_4_fu_2958_p19;
        v24_4_reg_7760 <= v24_4_fu_3029_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_1014_reg_7955 <= empty_1014_fu_3412_p2;
        empty_1025_reg_7962 <= empty_1025_fu_3418_p2;
        v35_4_reg_7865 <= v35_4_fu_3208_p19;
        v46_4_reg_7870 <= v46_4_fu_3279_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_1056_reg_8163 <= empty_1056_fu_3896_p2;
        empty_1067_reg_8170 <= empty_1067_fu_3902_p2;
        v79_4_reg_8073 <= v79_4_fu_3692_p19;
        v90_4_reg_8078 <= v90_4_fu_3763_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_1078_reg_8312 <= empty_1078_fu_4238_p2;
        empty_1088_reg_8319 <= empty_1088_fu_4244_p2;
        mul_ln101_reg_8202 <= mul_ln101_fu_3981_p2;
        mul_ln114_reg_8207 <= mul_ln114_fu_3990_p2;
        mul_ln127_reg_8212 <= mul_ln127_fu_3999_p2;
        mul_ln140_reg_8217 <= mul_ln140_fu_4008_p2;
        mul_ln34_reg_8177 <= mul_ln34_fu_3912_p2;
        mul_ln49_reg_8182 <= mul_ln49_fu_3929_p2;
        mul_ln62_reg_8187 <= mul_ln62_fu_3946_p2;
        mul_ln75_reg_8192 <= mul_ln75_fu_3963_p2;
        mul_ln88_reg_8197 <= mul_ln88_fu_3972_p2;
        v101_4_reg_8222 <= v101_4_fu_4046_p19;
        v11_1_reg_8227 <= v11_1_fu_4117_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_1099_reg_8416 <= empty_1099_fu_4486_p2;
        empty_1110_reg_8423 <= empty_1110_fu_4492_p2;
        v24_1_reg_8326 <= v24_1_fu_4282_p19;
        v35_1_reg_8331 <= v35_1_fu_4353_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_1121_reg_8520 <= empty_1121_fu_4722_p2;
        empty_1131_reg_8527 <= empty_1131_fu_4728_p2;
        v46_1_reg_8430 <= v46_1_fu_4530_p19;
        v57_1_reg_8435 <= v57_1_fu_4601_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_1163_reg_8773 <= empty_1163_fu_5287_p2;
        empty_1173_reg_8780 <= empty_1173_fu_5293_p2;
        mul_ln101_1_reg_8663 <= mul_ln101_1_fu_5030_p2;
        mul_ln114_1_reg_8668 <= mul_ln114_1_fu_5039_p2;
        mul_ln127_1_reg_8673 <= mul_ln127_1_fu_5048_p2;
        mul_ln140_1_reg_8683 <= mul_ln140_1_fu_5128_p2;
        mul_ln34_1_reg_8638 <= mul_ln34_1_fu_4985_p2;
        mul_ln49_1_reg_8643 <= mul_ln49_1_fu_4994_p2;
        mul_ln62_1_reg_8648 <= mul_ln62_1_fu_5003_p2;
        mul_ln75_1_reg_8653 <= mul_ln75_1_fu_5012_p2;
        mul_ln88_1_reg_8658 <= mul_ln88_1_fu_5021_p2;
        v101_1_reg_8688 <= v101_1_fu_5166_p19;
        v90_1_reg_8678 <= v90_1_fu_5086_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_1184_reg_8877 <= empty_1184_fu_5535_p2;
        empty_1195_reg_8884 <= empty_1195_fu_5541_p2;
        v11_2_reg_8787 <= v11_2_fu_5331_p19;
        v24_2_reg_8792 <= v24_2_fu_5402_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_1206_reg_8981 <= empty_1206_fu_5771_p2;
        empty_1216_reg_8988 <= empty_1216_fu_5777_p2;
        v35_2_reg_8891 <= v35_2_fu_5579_p19;
        v46_2_reg_8896 <= v46_2_fu_5650_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_1248_reg_9189 <= empty_1248_fu_6255_p2;
        empty_1258_reg_9196 <= empty_1258_fu_6261_p2;
        v79_2_reg_9099 <= v79_2_fu_6063_p19;
        v90_2_reg_9104 <= v90_2_fu_6134_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        empty_1269_reg_9338 <= empty_1269_fu_6584_p2;
        empty_1280_reg_9345 <= empty_1280_fu_6590_p2;
        mul_ln101_2_reg_9228 <= mul_ln101_2_fu_6315_p2;
        mul_ln114_2_reg_9233 <= mul_ln114_2_fu_6324_p2;
        mul_ln127_2_reg_9238 <= mul_ln127_2_fu_6333_p2;
        mul_ln140_2_reg_9243 <= mul_ln140_2_fu_6342_p2;
        mul_ln34_2_reg_9203 <= mul_ln34_2_fu_6270_p2;
        mul_ln49_2_reg_9208 <= mul_ln49_2_fu_6279_p2;
        mul_ln62_2_reg_9213 <= mul_ln62_2_fu_6288_p2;
        mul_ln75_2_reg_9218 <= mul_ln75_2_fu_6297_p2;
        mul_ln88_2_reg_9223 <= mul_ln88_2_fu_6306_p2;
        v101_2_reg_9248 <= v101_2_fu_6380_p19;
        v11_3_reg_9253 <= v11_3_fu_6451_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        empty_1291_reg_9442 <= empty_1291_fu_6820_p2;
        empty_1301_reg_9449 <= empty_1301_fu_6826_p2;
        v24_3_reg_9352 <= v24_3_fu_6628_p19;
        v35_3_reg_9357 <= v35_3_fu_6699_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        empty_1312_reg_9546 <= empty_1312_fu_7068_p2;
        empty_1323_reg_9553 <= empty_1323_fu_7074_p2;
        v46_3_reg_9456 <= v46_3_fu_6864_p19;
        v57_3_reg_9461 <= v57_3_fu_6935_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        mul_ln101_3_reg_9675 <= mul_ln101_3_fu_7352_p2;
        mul_ln114_3_reg_9680 <= mul_ln114_3_fu_7361_p2;
        mul_ln127_3_reg_9685 <= mul_ln127_3_fu_7370_p2;
        mul_ln140_3_reg_9695 <= mul_ln140_3_fu_7450_p2;
        mul_ln34_3_reg_9650 <= mul_ln34_3_fu_7307_p2;
        mul_ln49_3_reg_9655 <= mul_ln49_3_fu_7316_p2;
        mul_ln62_3_reg_9660 <= mul_ln62_3_fu_7325_p2;
        mul_ln75_3_reg_9665 <= mul_ln75_3_fu_7334_p2;
        mul_ln88_3_reg_9670 <= mul_ln88_3_fu_7343_p2;
        v101_3_reg_9700 <= v101_3_fu_7488_p19;
        v90_3_reg_9690 <= v90_3_fu_7408_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v68_3_reg_9560 <= v68_3_fu_7112_p19;
        v79_3_reg_9565 <= v79_3_fu_7183_p19;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b0)) begin
        ap_ST_fsm_state19_blk = 1'b1;
    end else begin
        ap_ST_fsm_state19_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_done == 1'b0)) begin
        ap_ST_fsm_state23_blk = 1'b1;
    end else begin
        ap_ST_fsm_state23_blk = 1'b0;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_2762_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_2762_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9705_ce = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9705_ce = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9705_ce = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9705_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_ce;
    end else begin
        grp_fu_9705_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9705_p0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9705_p0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9705_p0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9705_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_din0;
    end else begin
        grp_fu_9705_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9705_p1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9705_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9705_p1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9705_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9705_p1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9705_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9705_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9705_p_din1;
    end else begin
        grp_fu_9705_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9709_ce = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9709_ce = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9709_ce = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9709_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_ce;
    end else begin
        grp_fu_9709_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9709_p0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9709_p0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9709_p0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9709_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_din0;
    end else begin
        grp_fu_9709_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9709_p1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9709_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9709_p1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9709_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9709_p1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9709_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9709_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9709_p_din1;
    end else begin
        grp_fu_9709_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9713_ce = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9713_ce = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9713_ce = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9713_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_ce;
    end else begin
        grp_fu_9713_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9713_p0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9713_p0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9713_p0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9713_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_din0;
    end else begin
        grp_fu_9713_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        grp_fu_9713_p1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_grp_fu_9713_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        grp_fu_9713_p1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_grp_fu_9713_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_9713_p1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_grp_fu_9713_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_9713_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_grp_fu_9713_p_din1;
    end else begin
        grp_fu_9713_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_0_address0_local = p_cast5676_fu_7292_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_0_address0_local = p_cast5674_fu_7056_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_0_address0_local = p_cast5672_fu_6808_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_0_address0_local = p_cast5670_fu_6572_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_0_address0_local = p_cast5668_fu_6243_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_0_address0_local = p_cast5666_fu_6007_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_0_address0_local = p_cast5664_fu_5759_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_0_address0_local = p_cast5662_fu_5523_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address0_local = p_cast5660_fu_5275_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address0_local = p_cast5658_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast5656_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast5654_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast5652_fu_4226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast5650_fu_3884_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast5648_fu_3636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast5646_fu_3400_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast5644_fu_3152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast_fu_2900_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_0_address1_local = p_cast5675_fu_7251_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_0_address1_local = tmp_223_cast_fu_7015_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_0_address1_local = p_cast5671_fu_6767_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_0_address1_local = tmp_220_cast_fu_6531_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_0_address1_local = p_cast5667_fu_6202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_0_address1_local = tmp_190_cast_fu_5966_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_0_address1_local = p_cast5663_fu_5718_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_0_address1_local = tmp_187_cast_fu_5482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address1_local = p_cast5659_fu_5234_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address1_local = tmp_157_cast_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast5655_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = tmp_154_cast_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast5651_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = tmp_124_cast_fu_3843_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast5647_fu_3595_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = tmp_121_cast_fu_3359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast5643_fu_3109_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address1_local = tmp_111_cast_fu_2847_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_address0_local = p_cast5676_fu_7292_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_address0_local = p_cast5674_fu_7056_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_1_address0_local = p_cast5672_fu_6808_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_1_address0_local = p_cast5670_fu_6572_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_1_address0_local = p_cast5668_fu_6243_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address0_local = p_cast5666_fu_6007_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address0_local = p_cast5664_fu_5759_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address0_local = p_cast5662_fu_5523_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address0_local = p_cast5660_fu_5275_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast5658_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast5656_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast5654_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast5652_fu_4226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast5650_fu_3884_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast5648_fu_3636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast5646_fu_3400_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast5644_fu_3152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast_fu_2900_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_address1_local = p_cast5675_fu_7251_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_address1_local = tmp_223_cast_fu_7015_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_1_address1_local = p_cast5671_fu_6767_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_1_address1_local = tmp_220_cast_fu_6531_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_1_address1_local = p_cast5667_fu_6202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address1_local = tmp_190_cast_fu_5966_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address1_local = p_cast5663_fu_5718_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address1_local = tmp_187_cast_fu_5482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address1_local = p_cast5659_fu_5234_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address1_local = tmp_157_cast_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast5655_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = tmp_154_cast_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast5651_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = tmp_124_cast_fu_3843_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast5647_fu_3595_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = tmp_121_cast_fu_3359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast5643_fu_3109_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address1_local = tmp_111_cast_fu_2847_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_2_address0_local = p_cast5676_fu_7292_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_2_address0_local = p_cast5674_fu_7056_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_2_address0_local = p_cast5672_fu_6808_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_2_address0_local = p_cast5670_fu_6572_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_2_address0_local = p_cast5668_fu_6243_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_2_address0_local = p_cast5666_fu_6007_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_2_address0_local = p_cast5664_fu_5759_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_2_address0_local = p_cast5662_fu_5523_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_2_address0_local = p_cast5660_fu_5275_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address0_local = p_cast5658_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address0_local = p_cast5656_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address0_local = p_cast5654_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address0_local = p_cast5652_fu_4226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast5650_fu_3884_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast5648_fu_3636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast5646_fu_3400_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast5644_fu_3152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast_fu_2900_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_2_address1_local = p_cast5675_fu_7251_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_2_address1_local = tmp_223_cast_fu_7015_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_2_address1_local = p_cast5671_fu_6767_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_2_address1_local = tmp_220_cast_fu_6531_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_2_address1_local = p_cast5667_fu_6202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_2_address1_local = tmp_190_cast_fu_5966_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_2_address1_local = p_cast5663_fu_5718_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_2_address1_local = tmp_187_cast_fu_5482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_2_address1_local = p_cast5659_fu_5234_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address1_local = tmp_157_cast_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address1_local = p_cast5655_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address1_local = tmp_154_cast_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address1_local = p_cast5651_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = tmp_124_cast_fu_3843_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast5647_fu_3595_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = tmp_121_cast_fu_3359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast5643_fu_3109_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address1_local = tmp_111_cast_fu_2847_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_3_address0_local = p_cast5676_fu_7292_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_3_address0_local = p_cast5674_fu_7056_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_3_address0_local = p_cast5672_fu_6808_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_3_address0_local = p_cast5670_fu_6572_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_3_address0_local = p_cast5668_fu_6243_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_3_address0_local = p_cast5666_fu_6007_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_3_address0_local = p_cast5664_fu_5759_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_3_address0_local = p_cast5662_fu_5523_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_3_address0_local = p_cast5660_fu_5275_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address0_local = p_cast5658_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address0_local = p_cast5656_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address0_local = p_cast5654_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address0_local = p_cast5652_fu_4226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast5650_fu_3884_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast5648_fu_3636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast5646_fu_3400_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast5644_fu_3152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast_fu_2900_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_3_address1_local = p_cast5675_fu_7251_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_3_address1_local = tmp_223_cast_fu_7015_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_3_address1_local = p_cast5671_fu_6767_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_3_address1_local = tmp_220_cast_fu_6531_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_3_address1_local = p_cast5667_fu_6202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_3_address1_local = tmp_190_cast_fu_5966_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_3_address1_local = p_cast5663_fu_5718_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_3_address1_local = tmp_187_cast_fu_5482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_3_address1_local = p_cast5659_fu_5234_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address1_local = tmp_157_cast_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address1_local = p_cast5655_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address1_local = tmp_154_cast_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address1_local = p_cast5651_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = tmp_124_cast_fu_3843_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast5647_fu_3595_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = tmp_121_cast_fu_3359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast5643_fu_3109_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address1_local = tmp_111_cast_fu_2847_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_4_address0_local = p_cast5676_fu_7292_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_4_address0_local = p_cast5674_fu_7056_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_4_address0_local = p_cast5672_fu_6808_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_4_address0_local = p_cast5670_fu_6572_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_4_address0_local = p_cast5668_fu_6243_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_4_address0_local = p_cast5666_fu_6007_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_4_address0_local = p_cast5664_fu_5759_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_4_address0_local = p_cast5662_fu_5523_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_4_address0_local = p_cast5660_fu_5275_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_4_address0_local = p_cast5658_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_4_address0_local = p_cast5656_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_4_address0_local = p_cast5654_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_4_address0_local = p_cast5652_fu_4226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address0_local = p_cast5650_fu_3884_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address0_local = p_cast5648_fu_3636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address0_local = p_cast5646_fu_3400_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address0_local = p_cast5644_fu_3152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_4_address0_local = p_cast_fu_2900_p1;
    end else begin
        v224_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_4_address1_local = p_cast5675_fu_7251_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_4_address1_local = tmp_223_cast_fu_7015_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_4_address1_local = p_cast5671_fu_6767_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_4_address1_local = tmp_220_cast_fu_6531_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_4_address1_local = p_cast5667_fu_6202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_4_address1_local = tmp_190_cast_fu_5966_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_4_address1_local = p_cast5663_fu_5718_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_4_address1_local = tmp_187_cast_fu_5482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_4_address1_local = p_cast5659_fu_5234_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_4_address1_local = tmp_157_cast_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_4_address1_local = p_cast5655_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_4_address1_local = tmp_154_cast_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_4_address1_local = p_cast5651_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address1_local = tmp_124_cast_fu_3843_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address1_local = p_cast5647_fu_3595_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address1_local = tmp_121_cast_fu_3359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address1_local = p_cast5643_fu_3109_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_4_address1_local = tmp_111_cast_fu_2847_p1;
    end else begin
        v224_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_4_ce0_local = 1'b1;
    end else begin
        v224_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_4_ce1_local = 1'b1;
    end else begin
        v224_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_5_address0_local = p_cast5676_fu_7292_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_5_address0_local = p_cast5674_fu_7056_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_5_address0_local = p_cast5672_fu_6808_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_5_address0_local = p_cast5670_fu_6572_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_5_address0_local = p_cast5668_fu_6243_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_5_address0_local = p_cast5666_fu_6007_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_5_address0_local = p_cast5664_fu_5759_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_5_address0_local = p_cast5662_fu_5523_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_5_address0_local = p_cast5660_fu_5275_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_5_address0_local = p_cast5658_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_5_address0_local = p_cast5656_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_5_address0_local = p_cast5654_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_5_address0_local = p_cast5652_fu_4226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_5_address0_local = p_cast5650_fu_3884_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_5_address0_local = p_cast5648_fu_3636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_5_address0_local = p_cast5646_fu_3400_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_5_address0_local = p_cast5644_fu_3152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_5_address0_local = p_cast_fu_2900_p1;
    end else begin
        v224_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_5_address1_local = p_cast5675_fu_7251_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_5_address1_local = tmp_223_cast_fu_7015_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_5_address1_local = p_cast5671_fu_6767_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_5_address1_local = tmp_220_cast_fu_6531_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_5_address1_local = p_cast5667_fu_6202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_5_address1_local = tmp_190_cast_fu_5966_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_5_address1_local = p_cast5663_fu_5718_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_5_address1_local = tmp_187_cast_fu_5482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_5_address1_local = p_cast5659_fu_5234_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_5_address1_local = tmp_157_cast_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_5_address1_local = p_cast5655_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_5_address1_local = tmp_154_cast_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_5_address1_local = p_cast5651_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_5_address1_local = tmp_124_cast_fu_3843_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_5_address1_local = p_cast5647_fu_3595_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_5_address1_local = tmp_121_cast_fu_3359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_5_address1_local = p_cast5643_fu_3109_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_5_address1_local = tmp_111_cast_fu_2847_p1;
    end else begin
        v224_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_5_ce0_local = 1'b1;
    end else begin
        v224_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_5_ce1_local = 1'b1;
    end else begin
        v224_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_6_address0_local = p_cast5676_fu_7292_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_6_address0_local = p_cast5674_fu_7056_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_6_address0_local = p_cast5672_fu_6808_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_6_address0_local = p_cast5670_fu_6572_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_6_address0_local = p_cast5668_fu_6243_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_6_address0_local = p_cast5666_fu_6007_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_6_address0_local = p_cast5664_fu_5759_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_6_address0_local = p_cast5662_fu_5523_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_6_address0_local = p_cast5660_fu_5275_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_6_address0_local = p_cast5658_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_6_address0_local = p_cast5656_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_6_address0_local = p_cast5654_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_6_address0_local = p_cast5652_fu_4226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address0_local = p_cast5650_fu_3884_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address0_local = p_cast5648_fu_3636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address0_local = p_cast5646_fu_3400_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address0_local = p_cast5644_fu_3152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_6_address0_local = p_cast_fu_2900_p1;
    end else begin
        v224_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_6_address1_local = p_cast5675_fu_7251_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_6_address1_local = tmp_223_cast_fu_7015_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_6_address1_local = p_cast5671_fu_6767_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_6_address1_local = tmp_220_cast_fu_6531_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_6_address1_local = p_cast5667_fu_6202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_6_address1_local = tmp_190_cast_fu_5966_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_6_address1_local = p_cast5663_fu_5718_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_6_address1_local = tmp_187_cast_fu_5482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_6_address1_local = p_cast5659_fu_5234_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_6_address1_local = tmp_157_cast_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_6_address1_local = p_cast5655_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_6_address1_local = tmp_154_cast_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_6_address1_local = p_cast5651_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address1_local = tmp_124_cast_fu_3843_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address1_local = p_cast5647_fu_3595_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address1_local = tmp_121_cast_fu_3359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address1_local = p_cast5643_fu_3109_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_6_address1_local = tmp_111_cast_fu_2847_p1;
    end else begin
        v224_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_6_ce0_local = 1'b1;
    end else begin
        v224_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_6_ce1_local = 1'b1;
    end else begin
        v224_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_7_address0_local = p_cast5676_fu_7292_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_7_address0_local = p_cast5674_fu_7056_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_7_address0_local = p_cast5672_fu_6808_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_7_address0_local = p_cast5670_fu_6572_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_7_address0_local = p_cast5668_fu_6243_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_7_address0_local = p_cast5666_fu_6007_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_7_address0_local = p_cast5664_fu_5759_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_7_address0_local = p_cast5662_fu_5523_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_7_address0_local = p_cast5660_fu_5275_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_7_address0_local = p_cast5658_fu_4958_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_7_address0_local = p_cast5656_fu_4710_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_7_address0_local = p_cast5654_fu_4474_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_7_address0_local = p_cast5652_fu_4226_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_7_address0_local = p_cast5650_fu_3884_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_7_address0_local = p_cast5648_fu_3636_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_7_address0_local = p_cast5646_fu_3400_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_7_address0_local = p_cast5644_fu_3152_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_7_address0_local = p_cast_fu_2900_p1;
    end else begin
        v224_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_7_address1_local = p_cast5675_fu_7251_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_7_address1_local = tmp_223_cast_fu_7015_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_7_address1_local = p_cast5671_fu_6767_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_7_address1_local = tmp_220_cast_fu_6531_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_7_address1_local = p_cast5667_fu_6202_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_7_address1_local = tmp_190_cast_fu_5966_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_7_address1_local = p_cast5663_fu_5718_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_7_address1_local = tmp_187_cast_fu_5482_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_7_address1_local = p_cast5659_fu_5234_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_7_address1_local = tmp_157_cast_fu_4917_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_7_address1_local = p_cast5655_fu_4669_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_7_address1_local = tmp_154_cast_fu_4433_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_7_address1_local = p_cast5651_fu_4185_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_7_address1_local = tmp_124_cast_fu_3843_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_7_address1_local = p_cast5647_fu_3595_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_7_address1_local = tmp_121_cast_fu_3359_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_7_address1_local = p_cast5643_fu_3109_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_7_address1_local = tmp_111_cast_fu_2847_p1;
    end else begin
        v224_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_7_ce0_local = 1'b1;
    end else begin
        v224_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1)))) begin
        v224_7_ce1_local = 1'b1;
    end else begin
        v224_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_v229_we1;
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
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_2762_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_2798_p2 == 1'd0))) begin
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
            if (((1'b1 == ap_CS_fsm_state10) & (grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            if (((1'b1 == ap_CS_fsm_state19) & (grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            if (((1'b1 == ap_CS_fsm_state23) & (grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_2756_p2 = (phi_mul_fu_216 + 16'd220);
assign add_ln31_fu_2768_p2 = (v5_fu_220 + 8'd1);
assign add_ln32_1_fu_4970_p2 = (v6_reg_2612 + 8'd18);
assign add_ln32_2_fu_6025_p2 = (v6_reg_2612 + 8'd27);
assign add_ln32_3_fu_2912_p2 = (v6_reg_2612 + 8'd36);
assign add_ln32_fu_3654_p2 = (v6_reg_2612 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
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
assign cmp11_fu_2792_p2 = ((v5_fu_220 == 8'd0) ? 1'b1 : 1'b0);
assign empty_1003_fu_3170_p2 = (v6_reg_2612 + 8'd5);
assign empty_1004_fu_3389_p2 = (p_shl6_fu_3371_p3 - p_shl5860_fu_3385_p1);
assign empty_1005_fu_3395_p2 = (empty_1004_fu_3389_p2 + zext_ln31_reg_7623);
assign empty_1014_fu_3412_p2 = (v6_reg_2612 + 8'd6);
assign empty_1015_fu_3584_p2 = (p_shl7_fu_3566_p3 - p_shl5858_fu_3580_p1);
assign empty_1016_fu_3590_p2 = (empty_1015_fu_3584_p2 + zext_ln31_reg_7623);
assign empty_1025_fu_3418_p2 = (v6_reg_2612 + 8'd7);
assign empty_1026_fu_3625_p2 = (p_shl8_fu_3607_p3 - p_shl5856_fu_3621_p1);
assign empty_1027_fu_3631_p2 = (empty_1026_fu_3625_p2 + zext_ln31_reg_7623);
assign empty_1036_fu_3648_p2 = (v6_reg_2612 + 8'd8);
assign empty_1037_fu_3820_p2 = (p_shl9_fu_3802_p3 - p_shl5854_fu_3816_p1);
assign empty_1046_fu_3873_p2 = (p_shl10_fu_3855_p3 - p_shl5852_fu_3869_p1);
assign empty_1047_fu_3879_p2 = (empty_1046_fu_3873_p2 + zext_ln31_reg_7623);
assign empty_1056_fu_3896_p2 = (v6_reg_2612 + 8'd10);
assign empty_1057_fu_4174_p2 = (p_shl11_fu_4156_p3 - p_shl5850_fu_4170_p1);
assign empty_1058_fu_4180_p2 = (empty_1057_fu_4174_p2 + zext_ln31_reg_7623);
assign empty_1067_fu_3902_p2 = (v6_reg_2612 + 8'd11);
assign empty_1068_fu_4215_p2 = (p_shl12_fu_4197_p3 - p_shl5848_fu_4211_p1);
assign empty_1069_fu_4221_p2 = (empty_1068_fu_4215_p2 + zext_ln31_reg_7623);
assign empty_1078_fu_4238_p2 = (v6_reg_2612 + 8'd12);
assign empty_1079_fu_4410_p2 = (p_shl13_fu_4392_p3 - p_shl5846_fu_4406_p1);
assign empty_1088_fu_4244_p2 = (v6_reg_2612 + 8'd13);
assign empty_1089_fu_4463_p2 = (p_shl14_fu_4445_p3 - p_shl5844_fu_4459_p1);
assign empty_1090_fu_4469_p2 = (empty_1089_fu_4463_p2 + zext_ln31_reg_7623);
assign empty_1099_fu_4486_p2 = (v6_reg_2612 + 8'd14);
assign empty_1100_fu_4658_p2 = (p_shl15_fu_4640_p3 - p_shl5842_fu_4654_p1);
assign empty_1101_fu_4664_p2 = (empty_1100_fu_4658_p2 + zext_ln31_reg_7623);
assign empty_1110_fu_4492_p2 = (v6_reg_2612 + 8'd15);
assign empty_1111_fu_4699_p2 = (p_shl16_fu_4681_p3 - p_shl5840_fu_4695_p1);
assign empty_1112_fu_4705_p2 = (empty_1111_fu_4699_p2 + zext_ln31_reg_7623);
assign empty_1121_fu_4722_p2 = (v6_reg_2612 + 8'd16);
assign empty_1122_fu_4894_p2 = (p_shl17_fu_4876_p3 - p_shl5838_fu_4890_p1);
assign empty_1131_fu_4728_p2 = (v6_reg_2612 + 8'd17);
assign empty_1132_fu_4947_p2 = (p_shl18_fu_4929_p3 - p_shl5836_fu_4943_p1);
assign empty_1133_fu_4953_p2 = (empty_1132_fu_4947_p2 + zext_ln31_reg_7623);
assign empty_1142_fu_5223_p2 = (p_shl19_fu_5205_p3 - p_shl5834_fu_5219_p1);
assign empty_1143_fu_5229_p2 = (empty_1142_fu_5223_p2 + zext_ln31_reg_7623);
assign empty_1152_fu_4976_p2 = (v6_reg_2612 + 8'd19);
assign empty_1153_fu_5264_p2 = (p_shl20_fu_5246_p3 - p_shl5832_fu_5260_p1);
assign empty_1154_fu_5270_p2 = (empty_1153_fu_5264_p2 + zext_ln31_reg_7623);
assign empty_1163_fu_5287_p2 = (v6_reg_2612 + 8'd20);
assign empty_1164_fu_5459_p2 = (p_shl21_fu_5441_p3 - p_shl5830_fu_5455_p1);
assign empty_1173_fu_5293_p2 = (v6_reg_2612 + 8'd21);
assign empty_1174_fu_5512_p2 = (p_shl22_fu_5494_p3 - p_shl5828_fu_5508_p1);
assign empty_1175_fu_5518_p2 = (empty_1174_fu_5512_p2 + zext_ln31_reg_7623);
assign empty_1184_fu_5535_p2 = (v6_reg_2612 + 8'd22);
assign empty_1185_fu_5707_p2 = (p_shl23_fu_5689_p3 - p_shl5826_fu_5703_p1);
assign empty_1186_fu_5713_p2 = (empty_1185_fu_5707_p2 + zext_ln31_reg_7623);
assign empty_1195_fu_5541_p2 = (v6_reg_2612 + 8'd23);
assign empty_1196_fu_5748_p2 = (p_shl24_fu_5730_p3 - p_shl5824_fu_5744_p1);
assign empty_1197_fu_5754_p2 = (empty_1196_fu_5748_p2 + zext_ln31_reg_7623);
assign empty_1206_fu_5771_p2 = (v6_reg_2612 + 8'd24);
assign empty_1207_fu_5943_p2 = (p_shl25_fu_5925_p3 - p_shl5822_fu_5939_p1);
assign empty_1216_fu_5777_p2 = (v6_reg_2612 + 8'd25);
assign empty_1217_fu_5996_p2 = (p_shl26_fu_5978_p3 - p_shl5820_fu_5992_p1);
assign empty_1218_fu_6002_p2 = (empty_1217_fu_5996_p2 + zext_ln31_reg_7623);
assign empty_1227_fu_6019_p2 = (v6_reg_2612 + 8'd26);
assign empty_1228_fu_6191_p2 = (p_shl27_fu_6173_p3 - p_shl5818_fu_6187_p1);
assign empty_1229_fu_6197_p2 = (empty_1228_fu_6191_p2 + zext_ln31_reg_7623);
assign empty_1238_fu_6232_p2 = (p_shl28_fu_6214_p3 - p_shl5816_fu_6228_p1);
assign empty_1239_fu_6238_p2 = (empty_1238_fu_6232_p2 + zext_ln31_reg_7623);
assign empty_1248_fu_6255_p2 = (v6_reg_2612 + 8'd28);
assign empty_1249_fu_6508_p2 = (p_shl29_fu_6490_p3 - p_shl5814_fu_6504_p1);
assign empty_1258_fu_6261_p2 = (v6_reg_2612 + 8'd29);
assign empty_1259_fu_6561_p2 = (p_shl30_fu_6543_p3 - p_shl5812_fu_6557_p1);
assign empty_1260_fu_6567_p2 = (empty_1259_fu_6561_p2 + zext_ln31_reg_7623);
assign empty_1269_fu_6584_p2 = (v6_reg_2612 + 8'd30);
assign empty_1270_fu_6756_p2 = (p_shl31_fu_6738_p3 - p_shl5810_fu_6752_p1);
assign empty_1271_fu_6762_p2 = (empty_1270_fu_6756_p2 + zext_ln31_reg_7623);
assign empty_1280_fu_6590_p2 = (v6_reg_2612 + 8'd31);
assign empty_1281_fu_6797_p2 = (p_shl32_fu_6779_p3 - p_shl5808_fu_6793_p1);
assign empty_1282_fu_6803_p2 = (empty_1281_fu_6797_p2 + zext_ln31_reg_7623);
assign empty_1291_fu_6820_p2 = (v6_reg_2612 + 8'd32);
assign empty_1292_fu_6992_p2 = (p_shl33_fu_6974_p3 - p_shl5806_fu_6988_p1);
assign empty_1301_fu_6826_p2 = (v6_reg_2612 + 8'd33);
assign empty_1302_fu_7045_p2 = (p_shl34_fu_7027_p3 - p_shl5804_fu_7041_p1);
assign empty_1303_fu_7051_p2 = (empty_1302_fu_7045_p2 + zext_ln31_reg_7623);
assign empty_1312_fu_7068_p2 = (v6_reg_2612 + 8'd34);
assign empty_1313_fu_7240_p2 = (p_shl35_fu_7222_p3 - p_shl5802_fu_7236_p1);
assign empty_1314_fu_7246_p2 = (empty_1313_fu_7240_p2 + zext_ln31_reg_7623);
assign empty_1323_fu_7074_p2 = (v6_reg_2612 + 8'd35);
assign empty_1324_fu_7281_p2 = (p_shl_fu_7263_p3 - p_shl5800_fu_7277_p1);
assign empty_1325_fu_7287_p2 = (empty_1324_fu_7281_p2 + zext_ln31_reg_7623);
assign empty_963_fu_2889_p2 = (p_shl2_fu_2869_p3 - p_shl5868_fu_2885_p1);
assign empty_964_fu_2895_p2 = (empty_963_fu_2889_p2 + zext_ln31_reg_7623);
assign empty_973_fu_3098_p2 = (p_shl3_fu_3078_p3 - p_shl5866_fu_3094_p1);
assign empty_974_fu_3104_p2 = (empty_973_fu_3098_p2 + zext_ln31_reg_7623);
assign empty_983_fu_3141_p2 = (p_shl4_fu_3121_p3 - p_shl5864_fu_3137_p1);
assign empty_984_fu_3147_p2 = (empty_983_fu_3141_p2 + zext_ln31_reg_7623);
assign empty_993_fu_3164_p2 = (v6_reg_2612 + 8'd4);
assign empty_994_fu_3336_p2 = (p_shl5_fu_3318_p3 - p_shl5862_fu_3332_p1);
assign empty_fu_2824_p2 = (p_shl1_fu_2804_p3 - p_shl5870_fu_2820_p1);
assign grp_fu_184_p_ce = grp_fu_9705_ce;
assign grp_fu_184_p_din0 = grp_fu_9705_p0;
assign grp_fu_184_p_din1 = grp_fu_9705_p1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_9709_ce;
assign grp_fu_188_p_din0 = grp_fu_9709_p0;
assign grp_fu_188_p_din1 = grp_fu_9709_p1;
assign grp_fu_192_p_ce = grp_fu_9713_ce;
assign grp_fu_192_p_din0 = grp_fu_9713_p0;
assign grp_fu_192_p_din1 = grp_fu_9713_p1;
assign grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start = grp_kernel_2mm_node0_Pipeline_label_234_fu_2653_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start = grp_kernel_2mm_node0_Pipeline_label_235_fu_2682_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start = grp_kernel_2mm_node0_Pipeline_label_236_fu_2711_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_2624_ap_start_reg;
assign icmp_ln31_fu_2762_p2 = ((v5_fu_220 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_2798_p2 = ((v6_reg_2612 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_2778_p4 = {{v5_fu_220[7:3]}};
assign mul_ln101_1_fu_5030_p0 = mul_ln101_1_fu_5030_p00;
assign mul_ln101_1_fu_5030_p00 = empty_1099_reg_8416;
assign mul_ln101_1_fu_5030_p1 = 16'd220;
assign mul_ln101_2_fu_6315_p0 = mul_ln101_2_fu_6315_p00;
assign mul_ln101_2_fu_6315_p00 = empty_1195_reg_8884;
assign mul_ln101_2_fu_6315_p1 = 16'd220;
assign mul_ln101_3_fu_7352_p0 = mul_ln101_3_fu_7352_p00;
assign mul_ln101_3_fu_7352_p00 = empty_1291_reg_9442;
assign mul_ln101_3_fu_7352_p1 = 16'd220;
assign mul_ln101_fu_3981_p0 = mul_ln101_fu_3981_p00;
assign mul_ln101_fu_3981_p00 = empty_1003_reg_7858;
assign mul_ln101_fu_3981_p1 = 16'd220;
assign mul_ln114_1_fu_5039_p0 = mul_ln114_1_fu_5039_p00;
assign mul_ln114_1_fu_5039_p00 = empty_1110_reg_8423;
assign mul_ln114_1_fu_5039_p1 = 16'd220;
assign mul_ln114_2_fu_6324_p0 = mul_ln114_2_fu_6324_p00;
assign mul_ln114_2_fu_6324_p00 = empty_1206_reg_8981;
assign mul_ln114_2_fu_6324_p1 = 16'd220;
assign mul_ln114_3_fu_7361_p0 = mul_ln114_3_fu_7361_p00;
assign mul_ln114_3_fu_7361_p00 = empty_1301_reg_9449;
assign mul_ln114_3_fu_7361_p1 = 16'd220;
assign mul_ln114_fu_3990_p0 = mul_ln114_fu_3990_p00;
assign mul_ln114_fu_3990_p00 = empty_1014_reg_7955;
assign mul_ln114_fu_3990_p1 = 16'd220;
assign mul_ln127_1_fu_5048_p0 = mul_ln127_1_fu_5048_p00;
assign mul_ln127_1_fu_5048_p00 = empty_1121_reg_8520;
assign mul_ln127_1_fu_5048_p1 = 16'd220;
assign mul_ln127_2_fu_6333_p0 = mul_ln127_2_fu_6333_p00;
assign mul_ln127_2_fu_6333_p00 = empty_1216_reg_8988;
assign mul_ln127_2_fu_6333_p1 = 16'd220;
assign mul_ln127_3_fu_7370_p0 = mul_ln127_3_fu_7370_p00;
assign mul_ln127_3_fu_7370_p00 = empty_1312_reg_9546;
assign mul_ln127_3_fu_7370_p1 = 16'd220;
assign mul_ln127_fu_3999_p0 = mul_ln127_fu_3999_p00;
assign mul_ln127_fu_3999_p00 = empty_1025_reg_7962;
assign mul_ln127_fu_3999_p1 = 16'd220;
assign mul_ln140_1_fu_5128_p0 = mul_ln140_1_fu_5128_p00;
assign mul_ln140_1_fu_5128_p00 = empty_1131_reg_8527;
assign mul_ln140_1_fu_5128_p1 = 16'd220;
assign mul_ln140_2_fu_6342_p0 = mul_ln140_2_fu_6342_p00;
assign mul_ln140_2_fu_6342_p00 = empty_1227_reg_9085;
assign mul_ln140_2_fu_6342_p1 = 16'd220;
assign mul_ln140_3_fu_7450_p0 = mul_ln140_3_fu_7450_p00;
assign mul_ln140_3_fu_7450_p00 = empty_1323_reg_9553;
assign mul_ln140_3_fu_7450_p1 = 16'd220;
assign mul_ln140_fu_4008_p0 = mul_ln140_fu_4008_p00;
assign mul_ln140_fu_4008_p00 = empty_1036_reg_8059;
assign mul_ln140_fu_4008_p1 = 16'd220;
assign mul_ln34_1_fu_4985_p0 = mul_ln34_1_fu_4985_p00;
assign mul_ln34_1_fu_4985_p00 = add_ln32_reg_8066;
assign mul_ln34_1_fu_4985_p1 = 16'd220;
assign mul_ln34_2_fu_6270_p0 = mul_ln34_2_fu_6270_p00;
assign mul_ln34_2_fu_6270_p00 = add_ln32_1_reg_8624;
assign mul_ln34_2_fu_6270_p1 = 16'd220;
assign mul_ln34_3_fu_7307_p0 = mul_ln34_3_fu_7307_p00;
assign mul_ln34_3_fu_7307_p00 = add_ln32_2_reg_9092;
assign mul_ln34_3_fu_7307_p1 = 16'd220;
assign mul_ln34_fu_3912_p0 = mul_ln34_fu_3912_p00;
assign mul_ln34_fu_3912_p00 = v6_reg_2612;
assign mul_ln34_fu_3912_p1 = 16'd220;
assign mul_ln49_1_fu_4994_p0 = mul_ln49_1_fu_4994_p00;
assign mul_ln49_1_fu_4994_p00 = empty_1056_reg_8163;
assign mul_ln49_1_fu_4994_p1 = 16'd220;
assign mul_ln49_2_fu_6279_p0 = mul_ln49_2_fu_6279_p00;
assign mul_ln49_2_fu_6279_p00 = empty_1152_reg_8631;
assign mul_ln49_2_fu_6279_p1 = 16'd220;
assign mul_ln49_3_fu_7316_p0 = mul_ln49_3_fu_7316_p00;
assign mul_ln49_3_fu_7316_p00 = empty_1248_reg_9189;
assign mul_ln49_3_fu_7316_p1 = 16'd220;
assign mul_ln49_fu_3929_p0 = mul_ln49_fu_3929_p00;
assign mul_ln49_fu_3929_p00 = tmp_60_fu_3918_p3;
assign mul_ln49_fu_3929_p1 = 16'd220;
assign mul_ln62_1_fu_5003_p0 = mul_ln62_1_fu_5003_p00;
assign mul_ln62_1_fu_5003_p00 = empty_1067_reg_8170;
assign mul_ln62_1_fu_5003_p1 = 16'd220;
assign mul_ln62_2_fu_6288_p0 = mul_ln62_2_fu_6288_p00;
assign mul_ln62_2_fu_6288_p00 = empty_1163_reg_8773;
assign mul_ln62_2_fu_6288_p1 = 16'd220;
assign mul_ln62_3_fu_7325_p0 = mul_ln62_3_fu_7325_p00;
assign mul_ln62_3_fu_7325_p00 = empty_1258_reg_9196;
assign mul_ln62_3_fu_7325_p1 = 16'd220;
assign mul_ln62_fu_3946_p0 = mul_ln62_fu_3946_p00;
assign mul_ln62_fu_3946_p00 = tmp_62_fu_3935_p3;
assign mul_ln62_fu_3946_p1 = 16'd220;
assign mul_ln75_1_fu_5012_p0 = mul_ln75_1_fu_5012_p00;
assign mul_ln75_1_fu_5012_p00 = empty_1078_reg_8312;
assign mul_ln75_1_fu_5012_p1 = 16'd220;
assign mul_ln75_2_fu_6297_p0 = mul_ln75_2_fu_6297_p00;
assign mul_ln75_2_fu_6297_p00 = empty_1173_reg_8780;
assign mul_ln75_2_fu_6297_p1 = 16'd220;
assign mul_ln75_3_fu_7334_p0 = mul_ln75_3_fu_7334_p00;
assign mul_ln75_3_fu_7334_p00 = empty_1269_reg_9338;
assign mul_ln75_3_fu_7334_p1 = 16'd220;
assign mul_ln75_fu_3963_p0 = mul_ln75_fu_3963_p00;
assign mul_ln75_fu_3963_p00 = tmp_63_fu_3952_p3;
assign mul_ln75_fu_3963_p1 = 16'd220;
assign mul_ln88_1_fu_5021_p0 = mul_ln88_1_fu_5021_p00;
assign mul_ln88_1_fu_5021_p00 = empty_1088_reg_8319;
assign mul_ln88_1_fu_5021_p1 = 16'd220;
assign mul_ln88_2_fu_6306_p0 = mul_ln88_2_fu_6306_p00;
assign mul_ln88_2_fu_6306_p00 = empty_1184_reg_8877;
assign mul_ln88_2_fu_6306_p1 = 16'd220;
assign mul_ln88_3_fu_7343_p0 = mul_ln88_3_fu_7343_p00;
assign mul_ln88_3_fu_7343_p00 = empty_1280_reg_9345;
assign mul_ln88_3_fu_7343_p1 = 16'd220;
assign mul_ln88_fu_3972_p0 = mul_ln88_fu_3972_p00;
assign mul_ln88_fu_3972_p00 = empty_993_reg_7851;
assign mul_ln88_fu_3972_p1 = 16'd220;
assign p_cast5643_fu_3109_p1 = empty_974_fu_3104_p2;
assign p_cast5644_fu_3152_p1 = empty_984_fu_3147_p2;
assign p_cast5646_fu_3400_p1 = empty_1005_fu_3395_p2;
assign p_cast5647_fu_3595_p1 = empty_1016_fu_3590_p2;
assign p_cast5648_fu_3636_p1 = empty_1027_fu_3631_p2;
assign p_cast5650_fu_3884_p1 = empty_1047_fu_3879_p2;
assign p_cast5651_fu_4185_p1 = empty_1058_fu_4180_p2;
assign p_cast5652_fu_4226_p1 = empty_1069_fu_4221_p2;
assign p_cast5654_fu_4474_p1 = empty_1090_fu_4469_p2;
assign p_cast5655_fu_4669_p1 = empty_1101_fu_4664_p2;
assign p_cast5656_fu_4710_p1 = empty_1112_fu_4705_p2;
assign p_cast5658_fu_4958_p1 = empty_1133_fu_4953_p2;
assign p_cast5659_fu_5234_p1 = empty_1143_fu_5229_p2;
assign p_cast5660_fu_5275_p1 = empty_1154_fu_5270_p2;
assign p_cast5662_fu_5523_p1 = empty_1175_fu_5518_p2;
assign p_cast5663_fu_5718_p1 = empty_1186_fu_5713_p2;
assign p_cast5664_fu_5759_p1 = empty_1197_fu_5754_p2;
assign p_cast5666_fu_6007_p1 = empty_1218_fu_6002_p2;
assign p_cast5667_fu_6202_p1 = empty_1229_fu_6197_p2;
assign p_cast5668_fu_6243_p1 = empty_1239_fu_6238_p2;
assign p_cast5670_fu_6572_p1 = empty_1260_fu_6567_p2;
assign p_cast5671_fu_6767_p1 = empty_1271_fu_6762_p2;
assign p_cast5672_fu_6808_p1 = empty_1282_fu_6803_p2;
assign p_cast5674_fu_7056_p1 = empty_1303_fu_7051_p2;
assign p_cast5675_fu_7251_p1 = empty_1314_fu_7246_p2;
assign p_cast5676_fu_7292_p1 = empty_1325_fu_7287_p2;
assign p_cast_fu_2900_p1 = empty_964_fu_2895_p2;
assign p_shl10_fu_3855_p3 = {{add_ln32_reg_8066}, {5'd0}};
assign p_shl11_fu_4156_p3 = {{empty_1056_reg_8163}, {5'd0}};
assign p_shl12_fu_4197_p3 = {{empty_1067_reg_8170}, {5'd0}};
assign p_shl13_fu_4392_p3 = {{empty_1078_reg_8312}, {5'd0}};
assign p_shl14_fu_4445_p3 = {{empty_1088_reg_8319}, {5'd0}};
assign p_shl15_fu_4640_p3 = {{empty_1099_reg_8416}, {5'd0}};
assign p_shl16_fu_4681_p3 = {{empty_1110_reg_8423}, {5'd0}};
assign p_shl17_fu_4876_p3 = {{empty_1121_reg_8520}, {5'd0}};
assign p_shl18_fu_4929_p3 = {{empty_1131_reg_8527}, {5'd0}};
assign p_shl19_fu_5205_p3 = {{add_ln32_1_reg_8624}, {5'd0}};
assign p_shl1_fu_2804_p3 = {{v6_reg_2612}, {5'd0}};
assign p_shl20_fu_5246_p3 = {{empty_1152_reg_8631}, {5'd0}};
assign p_shl21_fu_5441_p3 = {{empty_1163_reg_8773}, {5'd0}};
assign p_shl22_fu_5494_p3 = {{empty_1173_reg_8780}, {5'd0}};
assign p_shl23_fu_5689_p3 = {{empty_1184_reg_8877}, {5'd0}};
assign p_shl24_fu_5730_p3 = {{empty_1195_reg_8884}, {5'd0}};
assign p_shl25_fu_5925_p3 = {{empty_1206_reg_8981}, {5'd0}};
assign p_shl26_fu_5978_p3 = {{empty_1216_reg_8988}, {5'd0}};
assign p_shl27_fu_6173_p3 = {{empty_1227_reg_9085}, {5'd0}};
assign p_shl28_fu_6214_p3 = {{add_ln32_2_reg_9092}, {5'd0}};
assign p_shl29_fu_6490_p3 = {{empty_1248_reg_9189}, {5'd0}};
assign p_shl2_fu_2869_p3 = {{tmp_59_fu_2859_p4}, {6'd32}};
assign p_shl30_fu_6543_p3 = {{empty_1258_reg_9196}, {5'd0}};
assign p_shl31_fu_6738_p3 = {{empty_1269_reg_9338}, {5'd0}};
assign p_shl32_fu_6779_p3 = {{empty_1280_reg_9345}, {5'd0}};
assign p_shl33_fu_6974_p3 = {{empty_1291_reg_9442}, {5'd0}};
assign p_shl34_fu_7027_p3 = {{empty_1301_reg_9449}, {5'd0}};
assign p_shl35_fu_7222_p3 = {{empty_1312_reg_9546}, {5'd0}};
assign p_shl3_fu_3078_p3 = {{tmp_61_fu_3068_p4}, {7'd64}};
assign p_shl4_fu_3121_p3 = {{tmp_61_fu_3068_p4}, {7'd96}};
assign p_shl5800_fu_7277_p1 = tmp_39_fu_7270_p3;
assign p_shl5802_fu_7236_p1 = tmp_38_fu_7229_p3;
assign p_shl5804_fu_7041_p1 = tmp_37_fu_7034_p3;
assign p_shl5806_fu_6988_p1 = tmp_36_fu_6981_p3;
assign p_shl5808_fu_6793_p1 = tmp_35_fu_6786_p3;
assign p_shl5810_fu_6752_p1 = tmp_34_fu_6745_p3;
assign p_shl5812_fu_6557_p1 = tmp_33_fu_6550_p3;
assign p_shl5814_fu_6504_p1 = tmp_32_fu_6497_p3;
assign p_shl5816_fu_6228_p1 = tmp_31_fu_6221_p3;
assign p_shl5818_fu_6187_p1 = tmp_30_fu_6180_p3;
assign p_shl5820_fu_5992_p1 = tmp_29_fu_5985_p3;
assign p_shl5822_fu_5939_p1 = tmp_28_fu_5932_p3;
assign p_shl5824_fu_5744_p1 = tmp_27_fu_5737_p3;
assign p_shl5826_fu_5703_p1 = tmp_26_fu_5696_p3;
assign p_shl5828_fu_5508_p1 = tmp_25_fu_5501_p3;
assign p_shl5830_fu_5455_p1 = tmp_24_fu_5448_p3;
assign p_shl5832_fu_5260_p1 = tmp_23_fu_5253_p3;
assign p_shl5834_fu_5219_p1 = tmp_22_fu_5212_p3;
assign p_shl5836_fu_4943_p1 = tmp_21_fu_4936_p3;
assign p_shl5838_fu_4890_p1 = tmp_20_fu_4883_p3;
assign p_shl5840_fu_4695_p1 = tmp_19_fu_4688_p3;
assign p_shl5842_fu_4654_p1 = tmp_18_fu_4647_p3;
assign p_shl5844_fu_4459_p1 = tmp_17_fu_4452_p3;
assign p_shl5846_fu_4406_p1 = tmp_16_fu_4399_p3;
assign p_shl5848_fu_4211_p1 = tmp_15_fu_4204_p3;
assign p_shl5850_fu_4170_p1 = tmp_14_fu_4163_p3;
assign p_shl5852_fu_3869_p1 = tmp_13_fu_3862_p3;
assign p_shl5854_fu_3816_p1 = tmp_12_fu_3809_p3;
assign p_shl5856_fu_3621_p1 = tmp_11_fu_3614_p3;
assign p_shl5858_fu_3580_p1 = tmp_10_fu_3573_p3;
assign p_shl5860_fu_3385_p1 = tmp_9_fu_3378_p3;
assign p_shl5862_fu_3332_p1 = tmp_8_fu_3325_p3;
assign p_shl5864_fu_3137_p1 = tmp_7_fu_3129_p3;
assign p_shl5866_fu_3094_p1 = tmp_6_fu_3086_p3;
assign p_shl5868_fu_2885_p1 = tmp_5_fu_2877_p3;
assign p_shl5870_fu_2820_p1 = tmp_fu_2812_p3;
assign p_shl5_fu_3318_p3 = {{empty_993_reg_7851}, {5'd0}};
assign p_shl6_fu_3371_p3 = {{empty_1003_reg_7858}, {5'd0}};
assign p_shl7_fu_3566_p3 = {{empty_1014_reg_7955}, {5'd0}};
assign p_shl8_fu_3607_p3 = {{empty_1025_reg_7962}, {5'd0}};
assign p_shl9_fu_3802_p3 = {{empty_1036_reg_8059}, {5'd0}};
assign p_shl_fu_7263_p3 = {{empty_1323_reg_9553}, {5'd0}};
assign tmp_10_fu_3573_p3 = {{empty_1014_reg_7955}, {3'd0}};
assign tmp_110_cast_fu_2830_p4 = {{empty_fu_2824_p2[12:5]}};
assign tmp_111_cast_fu_2847_p1 = tmp_s_fu_2840_p3;
assign tmp_11_fu_3614_p3 = {{empty_1025_reg_7962}, {3'd0}};
assign tmp_120_cast_fu_3342_p4 = {{empty_994_fu_3336_p2[12:5]}};
assign tmp_121_cast_fu_3359_p1 = tmp_64_fu_3352_p3;
assign tmp_123_cast_fu_3826_p4 = {{empty_1037_fu_3820_p2[12:5]}};
assign tmp_124_cast_fu_3843_p1 = tmp_65_fu_3836_p3;
assign tmp_12_fu_3809_p3 = {{empty_1036_reg_8059}, {3'd0}};
assign tmp_13_fu_3862_p3 = {{add_ln32_reg_8066}, {3'd0}};
assign tmp_14_fu_4163_p3 = {{empty_1056_reg_8163}, {3'd0}};
assign tmp_153_cast_fu_4416_p4 = {{empty_1079_fu_4410_p2[12:5]}};
assign tmp_154_cast_fu_4433_p1 = tmp_66_fu_4426_p3;
assign tmp_156_cast_fu_4900_p4 = {{empty_1122_fu_4894_p2[12:5]}};
assign tmp_157_cast_fu_4917_p1 = tmp_67_fu_4910_p3;
assign tmp_15_fu_4204_p3 = {{empty_1067_reg_8170}, {3'd0}};
assign tmp_16_fu_4399_p3 = {{empty_1078_reg_8312}, {3'd0}};
assign tmp_17_fu_4452_p3 = {{empty_1088_reg_8319}, {3'd0}};
assign tmp_186_cast_fu_5465_p4 = {{empty_1164_fu_5459_p2[12:5]}};
assign tmp_187_cast_fu_5482_p1 = tmp_68_fu_5475_p3;
assign tmp_189_cast_fu_5949_p4 = {{empty_1207_fu_5943_p2[12:5]}};
assign tmp_18_fu_4647_p3 = {{empty_1099_reg_8416}, {3'd0}};
assign tmp_190_cast_fu_5966_p1 = tmp_69_fu_5959_p3;
assign tmp_19_fu_4688_p3 = {{empty_1110_reg_8423}, {3'd0}};
assign tmp_20_fu_4883_p3 = {{empty_1121_reg_8520}, {3'd0}};
assign tmp_219_cast_fu_6514_p4 = {{empty_1249_fu_6508_p2[12:5]}};
assign tmp_21_fu_4936_p3 = {{empty_1131_reg_8527}, {3'd0}};
assign tmp_220_cast_fu_6531_p1 = tmp_70_fu_6524_p3;
assign tmp_222_cast_fu_6998_p4 = {{empty_1292_fu_6992_p2[12:5]}};
assign tmp_223_cast_fu_7015_p1 = tmp_71_fu_7008_p3;
assign tmp_22_fu_5212_p3 = {{add_ln32_1_reg_8624}, {3'd0}};
assign tmp_23_fu_5253_p3 = {{empty_1152_reg_8631}, {3'd0}};
assign tmp_24_fu_5448_p3 = {{empty_1163_reg_8773}, {3'd0}};
assign tmp_25_fu_5501_p3 = {{empty_1173_reg_8780}, {3'd0}};
assign tmp_26_fu_5696_p3 = {{empty_1184_reg_8877}, {3'd0}};
assign tmp_27_fu_5737_p3 = {{empty_1195_reg_8884}, {3'd0}};
assign tmp_28_fu_5932_p3 = {{empty_1206_reg_8981}, {3'd0}};
assign tmp_29_fu_5985_p3 = {{empty_1216_reg_8988}, {3'd0}};
assign tmp_30_fu_6180_p3 = {{empty_1227_reg_9085}, {3'd0}};
assign tmp_31_fu_6221_p3 = {{add_ln32_2_reg_9092}, {3'd0}};
assign tmp_32_fu_6497_p3 = {{empty_1248_reg_9189}, {3'd0}};
assign tmp_33_fu_6550_p3 = {{empty_1258_reg_9196}, {3'd0}};
assign tmp_34_fu_6745_p3 = {{empty_1269_reg_9338}, {3'd0}};
assign tmp_35_fu_6786_p3 = {{empty_1280_reg_9345}, {3'd0}};
assign tmp_36_fu_6981_p3 = {{empty_1291_reg_9442}, {3'd0}};
assign tmp_37_fu_7034_p3 = {{empty_1301_reg_9449}, {3'd0}};
assign tmp_38_fu_7229_p3 = {{empty_1312_reg_9546}, {3'd0}};
assign tmp_39_fu_7270_p3 = {{empty_1323_reg_9553}, {3'd0}};
assign tmp_59_fu_2859_p4 = {{v6_reg_2612[7:1]}};
assign tmp_5_fu_2877_p3 = {{tmp_59_fu_2859_p4}, {4'd8}};
assign tmp_60_fu_3918_p3 = {{tmp_59_reg_7705}, {1'd1}};
assign tmp_61_fu_3068_p4 = {{v6_reg_2612[7:2]}};
assign tmp_62_fu_3935_p3 = {{tmp_61_reg_7765}, {2'd2}};
assign tmp_63_fu_3952_p3 = {{tmp_61_reg_7765}, {2'd3}};
assign tmp_64_fu_3352_p3 = {{tmp_120_cast_fu_3342_p4}, {lshr_ln_reg_7610}};
assign tmp_65_fu_3836_p3 = {{tmp_123_cast_fu_3826_p4}, {lshr_ln_reg_7610}};
assign tmp_66_fu_4426_p3 = {{tmp_153_cast_fu_4416_p4}, {lshr_ln_reg_7610}};
assign tmp_67_fu_4910_p3 = {{tmp_156_cast_fu_4900_p4}, {lshr_ln_reg_7610}};
assign tmp_68_fu_5475_p3 = {{tmp_186_cast_fu_5465_p4}, {lshr_ln_reg_7610}};
assign tmp_69_fu_5959_p3 = {{tmp_189_cast_fu_5949_p4}, {lshr_ln_reg_7610}};
assign tmp_6_fu_3086_p3 = {{tmp_61_fu_3068_p4}, {5'd16}};
assign tmp_70_fu_6524_p3 = {{tmp_219_cast_fu_6514_p4}, {lshr_ln_reg_7610}};
assign tmp_71_fu_7008_p3 = {{tmp_222_cast_fu_6998_p4}, {lshr_ln_reg_7610}};
assign tmp_7_fu_3129_p3 = {{tmp_61_fu_3068_p4}, {5'd24}};
assign tmp_8_fu_3325_p3 = {{empty_993_reg_7851}, {3'd0}};
assign tmp_9_fu_3378_p3 = {{empty_1003_reg_7858}, {3'd0}};
assign tmp_fu_2812_p3 = {{v6_reg_2612}, {3'd0}};
assign tmp_s_fu_2840_p3 = {{tmp_110_cast_fu_2830_p4}, {lshr_ln_reg_7610}};
assign trunc_ln31_fu_2774_p1 = v5_fu_220[2:0];
assign v101_1_fu_5166_p10 = v224_4_q0;
assign v101_1_fu_5166_p12 = v224_5_q0;
assign v101_1_fu_5166_p14 = v224_6_q0;
assign v101_1_fu_5166_p16 = v224_7_q0;
assign v101_1_fu_5166_p17 = 'bx;
assign v101_1_fu_5166_p2 = v224_0_q0;
assign v101_1_fu_5166_p4 = v224_1_q0;
assign v101_1_fu_5166_p6 = v224_2_q0;
assign v101_1_fu_5166_p8 = v224_3_q0;
assign v101_2_fu_6380_p10 = v224_4_q1;
assign v101_2_fu_6380_p12 = v224_5_q1;
assign v101_2_fu_6380_p14 = v224_6_q1;
assign v101_2_fu_6380_p16 = v224_7_q1;
assign v101_2_fu_6380_p17 = 'bx;
assign v101_2_fu_6380_p2 = v224_0_q1;
assign v101_2_fu_6380_p4 = v224_1_q1;
assign v101_2_fu_6380_p6 = v224_2_q1;
assign v101_2_fu_6380_p8 = v224_3_q1;
assign v101_3_fu_7488_p10 = v224_4_q0;
assign v101_3_fu_7488_p12 = v224_5_q0;
assign v101_3_fu_7488_p14 = v224_6_q0;
assign v101_3_fu_7488_p16 = v224_7_q0;
assign v101_3_fu_7488_p17 = 'bx;
assign v101_3_fu_7488_p2 = v224_0_q0;
assign v101_3_fu_7488_p4 = v224_1_q0;
assign v101_3_fu_7488_p6 = v224_2_q0;
assign v101_3_fu_7488_p8 = v224_3_q0;
assign v101_4_fu_4046_p10 = v224_4_q1;
assign v101_4_fu_4046_p12 = v224_5_q1;
assign v101_4_fu_4046_p14 = v224_6_q1;
assign v101_4_fu_4046_p16 = v224_7_q1;
assign v101_4_fu_4046_p17 = 'bx;
assign v101_4_fu_4046_p2 = v224_0_q1;
assign v101_4_fu_4046_p4 = v224_1_q1;
assign v101_4_fu_4046_p6 = v224_2_q1;
assign v101_4_fu_4046_p8 = v224_3_q1;
assign v11_1_fu_4117_p10 = v224_4_q0;
assign v11_1_fu_4117_p12 = v224_5_q0;
assign v11_1_fu_4117_p14 = v224_6_q0;
assign v11_1_fu_4117_p16 = v224_7_q0;
assign v11_1_fu_4117_p17 = 'bx;
assign v11_1_fu_4117_p2 = v224_0_q0;
assign v11_1_fu_4117_p4 = v224_1_q0;
assign v11_1_fu_4117_p6 = v224_2_q0;
assign v11_1_fu_4117_p8 = v224_3_q0;
assign v11_2_fu_5331_p10 = v224_4_q1;
assign v11_2_fu_5331_p12 = v224_5_q1;
assign v11_2_fu_5331_p14 = v224_6_q1;
assign v11_2_fu_5331_p16 = v224_7_q1;
assign v11_2_fu_5331_p17 = 'bx;
assign v11_2_fu_5331_p2 = v224_0_q1;
assign v11_2_fu_5331_p4 = v224_1_q1;
assign v11_2_fu_5331_p6 = v224_2_q1;
assign v11_2_fu_5331_p8 = v224_3_q1;
assign v11_3_fu_6451_p10 = v224_4_q0;
assign v11_3_fu_6451_p12 = v224_5_q0;
assign v11_3_fu_6451_p14 = v224_6_q0;
assign v11_3_fu_6451_p16 = v224_7_q0;
assign v11_3_fu_6451_p17 = 'bx;
assign v11_3_fu_6451_p2 = v224_0_q0;
assign v11_3_fu_6451_p4 = v224_1_q0;
assign v11_3_fu_6451_p6 = v224_2_q0;
assign v11_3_fu_6451_p8 = v224_3_q0;
assign v11_4_fu_2958_p10 = v224_4_q1;
assign v11_4_fu_2958_p12 = v224_5_q1;
assign v11_4_fu_2958_p14 = v224_6_q1;
assign v11_4_fu_2958_p16 = v224_7_q1;
assign v11_4_fu_2958_p17 = 'bx;
assign v11_4_fu_2958_p2 = v224_0_q1;
assign v11_4_fu_2958_p4 = v224_1_q1;
assign v11_4_fu_2958_p6 = v224_2_q1;
assign v11_4_fu_2958_p8 = v224_3_q1;
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
assign v224_4_address0 = v224_4_address0_local;
assign v224_4_address1 = v224_4_address1_local;
assign v224_4_ce0 = v224_4_ce0_local;
assign v224_4_ce1 = v224_4_ce1_local;
assign v224_5_address0 = v224_5_address0_local;
assign v224_5_address1 = v224_5_address1_local;
assign v224_5_ce0 = v224_5_ce0_local;
assign v224_5_ce1 = v224_5_ce1_local;
assign v224_6_address0 = v224_6_address0_local;
assign v224_6_address1 = v224_6_address1_local;
assign v224_6_ce0 = v224_6_ce0_local;
assign v224_6_ce1 = v224_6_ce1_local;
assign v224_7_address0 = v224_7_address0_local;
assign v224_7_address1 = v224_7_address1_local;
assign v224_7_ce0 = v224_7_ce0_local;
assign v224_7_ce1 = v224_7_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_4282_p10 = v224_4_q1;
assign v24_1_fu_4282_p12 = v224_5_q1;
assign v24_1_fu_4282_p14 = v224_6_q1;
assign v24_1_fu_4282_p16 = v224_7_q1;
assign v24_1_fu_4282_p17 = 'bx;
assign v24_1_fu_4282_p2 = v224_0_q1;
assign v24_1_fu_4282_p4 = v224_1_q1;
assign v24_1_fu_4282_p6 = v224_2_q1;
assign v24_1_fu_4282_p8 = v224_3_q1;
assign v24_2_fu_5402_p10 = v224_4_q0;
assign v24_2_fu_5402_p12 = v224_5_q0;
assign v24_2_fu_5402_p14 = v224_6_q0;
assign v24_2_fu_5402_p16 = v224_7_q0;
assign v24_2_fu_5402_p17 = 'bx;
assign v24_2_fu_5402_p2 = v224_0_q0;
assign v24_2_fu_5402_p4 = v224_1_q0;
assign v24_2_fu_5402_p6 = v224_2_q0;
assign v24_2_fu_5402_p8 = v224_3_q0;
assign v24_3_fu_6628_p10 = v224_4_q1;
assign v24_3_fu_6628_p12 = v224_5_q1;
assign v24_3_fu_6628_p14 = v224_6_q1;
assign v24_3_fu_6628_p16 = v224_7_q1;
assign v24_3_fu_6628_p17 = 'bx;
assign v24_3_fu_6628_p2 = v224_0_q1;
assign v24_3_fu_6628_p4 = v224_1_q1;
assign v24_3_fu_6628_p6 = v224_2_q1;
assign v24_3_fu_6628_p8 = v224_3_q1;
assign v24_4_fu_3029_p10 = v224_4_q0;
assign v24_4_fu_3029_p12 = v224_5_q0;
assign v24_4_fu_3029_p14 = v224_6_q0;
assign v24_4_fu_3029_p16 = v224_7_q0;
assign v24_4_fu_3029_p17 = 'bx;
assign v24_4_fu_3029_p2 = v224_0_q0;
assign v24_4_fu_3029_p4 = v224_1_q0;
assign v24_4_fu_3029_p6 = v224_2_q0;
assign v24_4_fu_3029_p8 = v224_3_q0;
assign v35_1_fu_4353_p10 = v224_4_q0;
assign v35_1_fu_4353_p12 = v224_5_q0;
assign v35_1_fu_4353_p14 = v224_6_q0;
assign v35_1_fu_4353_p16 = v224_7_q0;
assign v35_1_fu_4353_p17 = 'bx;
assign v35_1_fu_4353_p2 = v224_0_q0;
assign v35_1_fu_4353_p4 = v224_1_q0;
assign v35_1_fu_4353_p6 = v224_2_q0;
assign v35_1_fu_4353_p8 = v224_3_q0;
assign v35_2_fu_5579_p10 = v224_4_q1;
assign v35_2_fu_5579_p12 = v224_5_q1;
assign v35_2_fu_5579_p14 = v224_6_q1;
assign v35_2_fu_5579_p16 = v224_7_q1;
assign v35_2_fu_5579_p17 = 'bx;
assign v35_2_fu_5579_p2 = v224_0_q1;
assign v35_2_fu_5579_p4 = v224_1_q1;
assign v35_2_fu_5579_p6 = v224_2_q1;
assign v35_2_fu_5579_p8 = v224_3_q1;
assign v35_3_fu_6699_p10 = v224_4_q0;
assign v35_3_fu_6699_p12 = v224_5_q0;
assign v35_3_fu_6699_p14 = v224_6_q0;
assign v35_3_fu_6699_p16 = v224_7_q0;
assign v35_3_fu_6699_p17 = 'bx;
assign v35_3_fu_6699_p2 = v224_0_q0;
assign v35_3_fu_6699_p4 = v224_1_q0;
assign v35_3_fu_6699_p6 = v224_2_q0;
assign v35_3_fu_6699_p8 = v224_3_q0;
assign v35_4_fu_3208_p10 = v224_4_q1;
assign v35_4_fu_3208_p12 = v224_5_q1;
assign v35_4_fu_3208_p14 = v224_6_q1;
assign v35_4_fu_3208_p16 = v224_7_q1;
assign v35_4_fu_3208_p17 = 'bx;
assign v35_4_fu_3208_p2 = v224_0_q1;
assign v35_4_fu_3208_p4 = v224_1_q1;
assign v35_4_fu_3208_p6 = v224_2_q1;
assign v35_4_fu_3208_p8 = v224_3_q1;
assign v46_1_fu_4530_p10 = v224_4_q1;
assign v46_1_fu_4530_p12 = v224_5_q1;
assign v46_1_fu_4530_p14 = v224_6_q1;
assign v46_1_fu_4530_p16 = v224_7_q1;
assign v46_1_fu_4530_p17 = 'bx;
assign v46_1_fu_4530_p2 = v224_0_q1;
assign v46_1_fu_4530_p4 = v224_1_q1;
assign v46_1_fu_4530_p6 = v224_2_q1;
assign v46_1_fu_4530_p8 = v224_3_q1;
assign v46_2_fu_5650_p10 = v224_4_q0;
assign v46_2_fu_5650_p12 = v224_5_q0;
assign v46_2_fu_5650_p14 = v224_6_q0;
assign v46_2_fu_5650_p16 = v224_7_q0;
assign v46_2_fu_5650_p17 = 'bx;
assign v46_2_fu_5650_p2 = v224_0_q0;
assign v46_2_fu_5650_p4 = v224_1_q0;
assign v46_2_fu_5650_p6 = v224_2_q0;
assign v46_2_fu_5650_p8 = v224_3_q0;
assign v46_3_fu_6864_p10 = v224_4_q1;
assign v46_3_fu_6864_p12 = v224_5_q1;
assign v46_3_fu_6864_p14 = v224_6_q1;
assign v46_3_fu_6864_p16 = v224_7_q1;
assign v46_3_fu_6864_p17 = 'bx;
assign v46_3_fu_6864_p2 = v224_0_q1;
assign v46_3_fu_6864_p4 = v224_1_q1;
assign v46_3_fu_6864_p6 = v224_2_q1;
assign v46_3_fu_6864_p8 = v224_3_q1;
assign v46_4_fu_3279_p10 = v224_4_q0;
assign v46_4_fu_3279_p12 = v224_5_q0;
assign v46_4_fu_3279_p14 = v224_6_q0;
assign v46_4_fu_3279_p16 = v224_7_q0;
assign v46_4_fu_3279_p17 = 'bx;
assign v46_4_fu_3279_p2 = v224_0_q0;
assign v46_4_fu_3279_p4 = v224_1_q0;
assign v46_4_fu_3279_p6 = v224_2_q0;
assign v46_4_fu_3279_p8 = v224_3_q0;
assign v57_1_fu_4601_p10 = v224_4_q0;
assign v57_1_fu_4601_p12 = v224_5_q0;
assign v57_1_fu_4601_p14 = v224_6_q0;
assign v57_1_fu_4601_p16 = v224_7_q0;
assign v57_1_fu_4601_p17 = 'bx;
assign v57_1_fu_4601_p2 = v224_0_q0;
assign v57_1_fu_4601_p4 = v224_1_q0;
assign v57_1_fu_4601_p6 = v224_2_q0;
assign v57_1_fu_4601_p8 = v224_3_q0;
assign v57_2_fu_5815_p10 = v224_4_q1;
assign v57_2_fu_5815_p12 = v224_5_q1;
assign v57_2_fu_5815_p14 = v224_6_q1;
assign v57_2_fu_5815_p16 = v224_7_q1;
assign v57_2_fu_5815_p17 = 'bx;
assign v57_2_fu_5815_p2 = v224_0_q1;
assign v57_2_fu_5815_p4 = v224_1_q1;
assign v57_2_fu_5815_p6 = v224_2_q1;
assign v57_2_fu_5815_p8 = v224_3_q1;
assign v57_3_fu_6935_p10 = v224_4_q0;
assign v57_3_fu_6935_p12 = v224_5_q0;
assign v57_3_fu_6935_p14 = v224_6_q0;
assign v57_3_fu_6935_p16 = v224_7_q0;
assign v57_3_fu_6935_p17 = 'bx;
assign v57_3_fu_6935_p2 = v224_0_q0;
assign v57_3_fu_6935_p4 = v224_1_q0;
assign v57_3_fu_6935_p6 = v224_2_q0;
assign v57_3_fu_6935_p8 = v224_3_q0;
assign v57_4_fu_3456_p10 = v224_4_q1;
assign v57_4_fu_3456_p12 = v224_5_q1;
assign v57_4_fu_3456_p14 = v224_6_q1;
assign v57_4_fu_3456_p16 = v224_7_q1;
assign v57_4_fu_3456_p17 = 'bx;
assign v57_4_fu_3456_p2 = v224_0_q1;
assign v57_4_fu_3456_p4 = v224_1_q1;
assign v57_4_fu_3456_p6 = v224_2_q1;
assign v57_4_fu_3456_p8 = v224_3_q1;
assign v68_1_fu_4766_p10 = v224_4_q1;
assign v68_1_fu_4766_p12 = v224_5_q1;
assign v68_1_fu_4766_p14 = v224_6_q1;
assign v68_1_fu_4766_p16 = v224_7_q1;
assign v68_1_fu_4766_p17 = 'bx;
assign v68_1_fu_4766_p2 = v224_0_q1;
assign v68_1_fu_4766_p4 = v224_1_q1;
assign v68_1_fu_4766_p6 = v224_2_q1;
assign v68_1_fu_4766_p8 = v224_3_q1;
assign v68_2_fu_5886_p10 = v224_4_q0;
assign v68_2_fu_5886_p12 = v224_5_q0;
assign v68_2_fu_5886_p14 = v224_6_q0;
assign v68_2_fu_5886_p16 = v224_7_q0;
assign v68_2_fu_5886_p17 = 'bx;
assign v68_2_fu_5886_p2 = v224_0_q0;
assign v68_2_fu_5886_p4 = v224_1_q0;
assign v68_2_fu_5886_p6 = v224_2_q0;
assign v68_2_fu_5886_p8 = v224_3_q0;
assign v68_3_fu_7112_p10 = v224_4_q1;
assign v68_3_fu_7112_p12 = v224_5_q1;
assign v68_3_fu_7112_p14 = v224_6_q1;
assign v68_3_fu_7112_p16 = v224_7_q1;
assign v68_3_fu_7112_p17 = 'bx;
assign v68_3_fu_7112_p2 = v224_0_q1;
assign v68_3_fu_7112_p4 = v224_1_q1;
assign v68_3_fu_7112_p6 = v224_2_q1;
assign v68_3_fu_7112_p8 = v224_3_q1;
assign v68_4_fu_3527_p10 = v224_4_q0;
assign v68_4_fu_3527_p12 = v224_5_q0;
assign v68_4_fu_3527_p14 = v224_6_q0;
assign v68_4_fu_3527_p16 = v224_7_q0;
assign v68_4_fu_3527_p17 = 'bx;
assign v68_4_fu_3527_p2 = v224_0_q0;
assign v68_4_fu_3527_p4 = v224_1_q0;
assign v68_4_fu_3527_p6 = v224_2_q0;
assign v68_4_fu_3527_p8 = v224_3_q0;
assign v79_1_fu_4837_p10 = v224_4_q0;
assign v79_1_fu_4837_p12 = v224_5_q0;
assign v79_1_fu_4837_p14 = v224_6_q0;
assign v79_1_fu_4837_p16 = v224_7_q0;
assign v79_1_fu_4837_p17 = 'bx;
assign v79_1_fu_4837_p2 = v224_0_q0;
assign v79_1_fu_4837_p4 = v224_1_q0;
assign v79_1_fu_4837_p6 = v224_2_q0;
assign v79_1_fu_4837_p8 = v224_3_q0;
assign v79_2_fu_6063_p10 = v224_4_q1;
assign v79_2_fu_6063_p12 = v224_5_q1;
assign v79_2_fu_6063_p14 = v224_6_q1;
assign v79_2_fu_6063_p16 = v224_7_q1;
assign v79_2_fu_6063_p17 = 'bx;
assign v79_2_fu_6063_p2 = v224_0_q1;
assign v79_2_fu_6063_p4 = v224_1_q1;
assign v79_2_fu_6063_p6 = v224_2_q1;
assign v79_2_fu_6063_p8 = v224_3_q1;
assign v79_3_fu_7183_p10 = v224_4_q0;
assign v79_3_fu_7183_p12 = v224_5_q0;
assign v79_3_fu_7183_p14 = v224_6_q0;
assign v79_3_fu_7183_p16 = v224_7_q0;
assign v79_3_fu_7183_p17 = 'bx;
assign v79_3_fu_7183_p2 = v224_0_q0;
assign v79_3_fu_7183_p4 = v224_1_q0;
assign v79_3_fu_7183_p6 = v224_2_q0;
assign v79_3_fu_7183_p8 = v224_3_q0;
assign v79_4_fu_3692_p10 = v224_4_q1;
assign v79_4_fu_3692_p12 = v224_5_q1;
assign v79_4_fu_3692_p14 = v224_6_q1;
assign v79_4_fu_3692_p16 = v224_7_q1;
assign v79_4_fu_3692_p17 = 'bx;
assign v79_4_fu_3692_p2 = v224_0_q1;
assign v79_4_fu_3692_p4 = v224_1_q1;
assign v79_4_fu_3692_p6 = v224_2_q1;
assign v79_4_fu_3692_p8 = v224_3_q1;
assign v90_1_fu_5086_p10 = v224_4_q1;
assign v90_1_fu_5086_p12 = v224_5_q1;
assign v90_1_fu_5086_p14 = v224_6_q1;
assign v90_1_fu_5086_p16 = v224_7_q1;
assign v90_1_fu_5086_p17 = 'bx;
assign v90_1_fu_5086_p2 = v224_0_q1;
assign v90_1_fu_5086_p4 = v224_1_q1;
assign v90_1_fu_5086_p6 = v224_2_q1;
assign v90_1_fu_5086_p8 = v224_3_q1;
assign v90_2_fu_6134_p10 = v224_4_q0;
assign v90_2_fu_6134_p12 = v224_5_q0;
assign v90_2_fu_6134_p14 = v224_6_q0;
assign v90_2_fu_6134_p16 = v224_7_q0;
assign v90_2_fu_6134_p17 = 'bx;
assign v90_2_fu_6134_p2 = v224_0_q0;
assign v90_2_fu_6134_p4 = v224_1_q0;
assign v90_2_fu_6134_p6 = v224_2_q0;
assign v90_2_fu_6134_p8 = v224_3_q0;
assign v90_3_fu_7408_p10 = v224_4_q1;
assign v90_3_fu_7408_p12 = v224_5_q1;
assign v90_3_fu_7408_p14 = v224_6_q1;
assign v90_3_fu_7408_p16 = v224_7_q1;
assign v90_3_fu_7408_p17 = 'bx;
assign v90_3_fu_7408_p2 = v224_0_q1;
assign v90_3_fu_7408_p4 = v224_1_q1;
assign v90_3_fu_7408_p6 = v224_2_q1;
assign v90_3_fu_7408_p8 = v224_3_q1;
assign v90_4_fu_3763_p10 = v224_4_q0;
assign v90_4_fu_3763_p12 = v224_5_q0;
assign v90_4_fu_3763_p14 = v224_6_q0;
assign v90_4_fu_3763_p16 = v224_7_q0;
assign v90_4_fu_3763_p17 = 'bx;
assign v90_4_fu_3763_p2 = v224_0_q0;
assign v90_4_fu_3763_p4 = v224_1_q0;
assign v90_4_fu_3763_p6 = v224_2_q0;
assign v90_4_fu_3763_p8 = v224_3_q0;
assign zext_ln31_fu_2788_p1 = lshr_ln_fu_2778_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_7623[12:5] <= 8'b00000000;
end
endmodule 