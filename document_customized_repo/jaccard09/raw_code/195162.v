module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_opcode,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce); 
parameter    ap_ST_fsm_state1 = 32'd1;
parameter    ap_ST_fsm_state2 = 32'd2;
parameter    ap_ST_fsm_state3 = 32'd4;
parameter    ap_ST_fsm_state4 = 32'd8;
parameter    ap_ST_fsm_state5 = 32'd16;
parameter    ap_ST_fsm_state6 = 32'd32;
parameter    ap_ST_fsm_state7 = 32'd64;
parameter    ap_ST_fsm_state8 = 32'd128;
parameter    ap_ST_fsm_state9 = 32'd256;
parameter    ap_ST_fsm_state10 = 32'd512;
parameter    ap_ST_fsm_state11 = 32'd1024;
parameter    ap_ST_fsm_state12 = 32'd2048;
parameter    ap_ST_fsm_state13 = 32'd4096;
parameter    ap_ST_fsm_state14 = 32'd8192;
parameter    ap_ST_fsm_state15 = 32'd16384;
parameter    ap_ST_fsm_state16 = 32'd32768;
parameter    ap_ST_fsm_state17 = 32'd65536;
parameter    ap_ST_fsm_state18 = 32'd131072;
parameter    ap_ST_fsm_state19 = 32'd262144;
parameter    ap_ST_fsm_state20 = 32'd524288;
parameter    ap_ST_fsm_state21 = 32'd1048576;
parameter    ap_ST_fsm_state22 = 32'd2097152;
parameter    ap_ST_fsm_state23 = 32'd4194304;
parameter    ap_ST_fsm_state24 = 32'd8388608;
parameter    ap_ST_fsm_state25 = 32'd16777216;
parameter    ap_ST_fsm_state26 = 32'd33554432;
parameter    ap_ST_fsm_state27 = 32'd67108864;
parameter    ap_ST_fsm_state28 = 32'd134217728;
parameter    ap_ST_fsm_state29 = 32'd268435456;
parameter    ap_ST_fsm_state30 = 32'd536870912;
parameter    ap_ST_fsm_state31 = 32'd1073741824;
parameter    ap_ST_fsm_state32 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [14:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [14:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [14:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [14:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
input  [31:0] v113;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
output  [1:0] grp_fu_168_p_opcode;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
output  [1:0] grp_fu_172_p_opcode;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
output  [1:0] grp_fu_180_p_opcode;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
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
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[14:0] v225_0_address0;
reg v225_0_ce0;
reg v225_0_we0;
reg[31:0] v225_0_d0;
reg[14:0] v225_0_address1;
reg v225_0_ce1;
reg v225_0_we1;
reg[31:0] v225_0_d1;
reg[14:0] v225_1_address0;
reg v225_1_ce0;
reg v225_1_we0;
reg[31:0] v225_1_d0;
reg[14:0] v225_1_address1;
reg v225_1_ce1;
reg v225_1_we1;
reg[31:0] v225_1_d1;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_491_p2;
reg   [31:0] reg_386;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_391;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_395;
reg   [31:0] reg_399;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_404;
reg   [31:0] reg_409;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state25;
reg   [31:0] reg_414;
reg   [31:0] reg_419;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state26;
reg   [31:0] reg_424;
reg   [31:0] reg_429;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state30;
reg   [31:0] reg_435;
reg   [31:0] reg_441;
reg   [31:0] reg_447;
reg   [31:0] reg_453;
reg   [31:0] reg_459;
wire   [31:0] grp_fu_374_p2;
reg   [31:0] reg_465;
wire   [31:0] grp_fu_378_p2;
reg   [31:0] reg_471;
wire   [31:0] grp_fu_382_p2;
reg   [31:0] reg_477;
wire   [15:0] zext_ln175_fu_497_p1;
reg   [15:0] zext_ln175_reg_1338;
wire   [15:0] mul_ln175_fu_501_p2;
reg   [15:0] mul_ln175_reg_1351;
wire   [0:0] cmp11_fu_507_p2;
reg   [0:0] cmp11_reg_1356;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_523_p2;
reg   [7:0] add_ln169_reg_1369;
wire   [15:0] zext_ln175_7_fu_546_p1;
reg   [15:0] zext_ln175_7_reg_1374;
wire   [15:0] mul_ln175_1_fu_550_p2;
reg   [15:0] mul_ln175_1_reg_1387;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_1397;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_1_reg_1407;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_2_reg_1422;
reg   [6:0] tmp_3_reg_1442;
wire   [31:0] v119_fu_672_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_677_p1;
wire   [31:0] v143_fu_682_p1;
wire   [31:0] v154_fu_687_p1;
wire   [31:0] v165_fu_692_p1;
wire   [31:0] v176_fu_697_p1;
wire   [31:0] v187_fu_702_p1;
wire   [31:0] v198_fu_707_p1;
wire   [31:0] v209_fu_712_p1;
wire   [0:0] trunc_ln169_fu_717_p1;
reg   [0:0] trunc_ln169_reg_1522;
wire   [14:0] mul_ln171_fu_735_p2;
reg   [14:0] mul_ln171_reg_1527;
wire   [14:0] mul_ln186_fu_744_p2;
reg   [14:0] mul_ln186_reg_1532;
wire   [14:0] mul_ln199_fu_760_p2;
reg   [14:0] mul_ln199_reg_1537;
wire   [14:0] mul_ln212_fu_769_p2;
reg   [14:0] mul_ln212_reg_1542;
wire   [14:0] mul_ln225_fu_785_p2;
reg   [14:0] mul_ln225_reg_1547;
wire   [14:0] mul_ln238_fu_794_p2;
reg   [14:0] mul_ln238_reg_1552;
wire   [14:0] mul_ln251_fu_810_p2;
reg   [14:0] mul_ln251_reg_1557;
wire   [14:0] mul_ln264_fu_819_p2;
reg   [14:0] mul_ln264_reg_1562;
wire   [14:0] mul_ln277_fu_835_p2;
reg   [14:0] mul_ln277_reg_1567;
wire    ap_CS_fsm_state18;
wire   [7:0] add_ln169_1_fu_851_p2;
reg   [7:0] add_ln169_1_reg_1580;
wire    ap_CS_fsm_state19;
reg   [6:0] tmp_6_reg_1590;
wire    ap_CS_fsm_state20;
reg   [6:0] tmp_7_reg_1600;
wire    ap_CS_fsm_state21;
reg   [6:0] tmp_8_reg_1615;
reg   [6:0] tmp_9_reg_1635;
wire   [31:0] v119_1_fu_983_p1;
wire    ap_CS_fsm_state27;
wire   [31:0] v132_1_fu_988_p1;
wire   [31:0] v143_1_fu_993_p1;
wire   [31:0] v154_1_fu_998_p1;
wire   [31:0] v165_1_fu_1003_p1;
wire   [31:0] v176_1_fu_1008_p1;
wire   [31:0] v187_1_fu_1013_p1;
wire   [31:0] v198_1_fu_1018_p1;
wire   [31:0] v209_1_fu_1023_p1;
wire   [0:0] trunc_ln169_1_fu_1028_p1;
reg   [0:0] trunc_ln169_1_reg_1715;
wire   [14:0] mul_ln171_1_fu_1046_p2;
reg   [14:0] mul_ln171_1_reg_1720;
wire   [14:0] mul_ln186_1_fu_1055_p2;
reg   [14:0] mul_ln186_1_reg_1725;
wire   [14:0] mul_ln199_1_fu_1071_p2;
reg   [14:0] mul_ln199_1_reg_1730;
wire   [14:0] mul_ln212_1_fu_1080_p2;
reg   [14:0] mul_ln212_1_reg_1735;
wire   [14:0] mul_ln225_1_fu_1096_p2;
reg   [14:0] mul_ln225_1_reg_1740;
wire   [14:0] mul_ln238_1_fu_1105_p2;
reg   [14:0] mul_ln238_1_reg_1745;
wire   [14:0] mul_ln251_1_fu_1121_p2;
reg   [14:0] mul_ln251_1_reg_1750;
wire   [14:0] mul_ln264_1_fu_1130_p2;
reg   [14:0] mul_ln264_1_reg_1755;
wire   [14:0] mul_ln277_1_fu_1146_p2;
reg   [14:0] mul_ln277_1_reg_1760;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_ce;
reg   [7:0] v115_reg_265;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg   [7:0] v115_1_reg_277;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln169_fu_513_p2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg;
wire    ap_CS_fsm_state31;
wire   [63:0] p_cast1056_fu_596_p1;
wire   [63:0] p_cast_fu_620_p1;
wire   [63:0] p_cast1057_fu_624_p1;
wire   [63:0] p_cast1058_fu_648_p1;
wire   [63:0] p_cast1059_fu_652_p1;
wire   [63:0] p_cast1060_fu_656_p1;
wire   [63:0] p_cast1061_fu_660_p1;
wire   [63:0] p_cast1062_fu_664_p1;
wire   [63:0] p_cast1063_fu_668_p1;
wire   [63:0] p_cast1064_fu_907_p1;
wire   [63:0] p_cast1065_fu_931_p1;
wire   [63:0] p_cast1066_fu_935_p1;
wire   [63:0] p_cast1067_fu_959_p1;
wire   [63:0] p_cast1068_fu_963_p1;
wire   [63:0] p_cast1069_fu_967_p1;
wire   [63:0] p_cast1070_fu_971_p1;
wire   [63:0] p_cast1071_fu_975_p1;
wire   [63:0] p_cast1072_fu_979_p1;
reg   [7:0] v114_fu_94;
wire   [7:0] add_ln168_fu_857_p2;
wire   [0:0] icmp_ln169_1_fu_841_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_350_p0;
reg   [31:0] grp_fu_350_p1;
reg   [31:0] grp_fu_354_p0;
reg   [31:0] grp_fu_354_p1;
reg   [31:0] grp_fu_358_p0;
reg   [31:0] grp_fu_358_p1;
reg   [31:0] grp_fu_362_p0;
reg   [31:0] grp_fu_362_p1;
reg   [31:0] grp_fu_366_p0;
reg   [31:0] grp_fu_370_p0;
reg   [31:0] grp_fu_374_p0;
reg   [31:0] grp_fu_378_p0;
reg   [31:0] grp_fu_382_p0;
wire   [7:0] mul_ln175_fu_501_p0;
wire   [8:0] mul_ln175_fu_501_p1;
wire   [6:0] tmp_4_fu_529_p4;
wire   [7:0] or_ln_fu_538_p3;
wire   [7:0] mul_ln175_1_fu_550_p0;
wire   [8:0] mul_ln175_1_fu_550_p1;
wire   [7:0] empty_19_fu_556_p2;
wire   [7:0] empty_26_fu_576_p2;
wire   [15:0] grp_fu_1152_p3;
wire   [7:0] empty_33_fu_600_p2;
wire   [15:0] grp_fu_1160_p3;
wire   [15:0] grp_fu_1168_p4;
wire   [7:0] empty_40_fu_628_p2;
wire   [15:0] grp_fu_1178_p3;
wire   [15:0] grp_fu_1186_p4;
wire   [15:0] grp_fu_1196_p3;
wire   [15:0] grp_fu_1204_p4;
wire   [15:0] grp_fu_1214_p3;
wire   [15:0] grp_fu_1222_p4;
wire   [6:0] lshr_ln_fu_721_p4;
wire   [6:0] mul_ln171_fu_735_p0;
wire   [8:0] mul_ln171_fu_735_p1;
wire   [6:0] mul_ln186_fu_744_p0;
wire   [8:0] mul_ln186_fu_744_p1;
wire   [6:0] empty_25_fu_750_p2;
wire   [6:0] mul_ln199_fu_760_p0;
wire   [8:0] mul_ln199_fu_760_p1;
wire   [6:0] mul_ln212_fu_769_p0;
wire   [8:0] mul_ln212_fu_769_p1;
wire   [6:0] empty_32_fu_775_p2;
wire   [6:0] mul_ln225_fu_785_p0;
wire   [8:0] mul_ln225_fu_785_p1;
wire   [6:0] mul_ln238_fu_794_p0;
wire   [8:0] mul_ln238_fu_794_p1;
wire   [6:0] empty_39_fu_800_p2;
wire   [6:0] mul_ln251_fu_810_p0;
wire   [8:0] mul_ln251_fu_810_p1;
wire   [6:0] mul_ln264_fu_819_p0;
wire   [8:0] mul_ln264_fu_819_p1;
wire   [6:0] empty_46_fu_825_p2;
wire   [6:0] mul_ln277_fu_835_p0;
wire   [8:0] mul_ln277_fu_835_p1;
wire   [7:0] empty_49_fu_867_p2;
wire   [7:0] empty_56_fu_887_p2;
wire   [15:0] grp_fu_1232_p3;
wire   [7:0] empty_63_fu_911_p2;
wire   [15:0] grp_fu_1240_p3;
wire   [15:0] grp_fu_1248_p4;
wire   [7:0] empty_70_fu_939_p2;
wire   [15:0] grp_fu_1258_p3;
wire   [15:0] grp_fu_1266_p4;
wire   [15:0] grp_fu_1276_p3;
wire   [15:0] grp_fu_1284_p4;
wire   [15:0] grp_fu_1294_p3;
wire   [15:0] grp_fu_1302_p4;
wire   [6:0] lshr_ln169_1_fu_1032_p4;
wire   [6:0] mul_ln171_1_fu_1046_p0;
wire   [8:0] mul_ln171_1_fu_1046_p1;
wire   [6:0] mul_ln186_1_fu_1055_p0;
wire   [8:0] mul_ln186_1_fu_1055_p1;
wire   [6:0] empty_55_fu_1061_p2;
wire   [6:0] mul_ln199_1_fu_1071_p0;
wire   [8:0] mul_ln199_1_fu_1071_p1;
wire   [6:0] mul_ln212_1_fu_1080_p0;
wire   [8:0] mul_ln212_1_fu_1080_p1;
wire   [6:0] empty_62_fu_1086_p2;
wire   [6:0] mul_ln225_1_fu_1096_p0;
wire   [8:0] mul_ln225_1_fu_1096_p1;
wire   [6:0] mul_ln238_1_fu_1105_p0;
wire   [8:0] mul_ln238_1_fu_1105_p1;
wire   [6:0] empty_69_fu_1111_p2;
wire   [6:0] mul_ln251_1_fu_1121_p0;
wire   [8:0] mul_ln251_1_fu_1121_p1;
wire   [6:0] mul_ln264_1_fu_1130_p0;
wire   [8:0] mul_ln264_1_fu_1130_p1;
wire   [6:0] empty_76_fu_1136_p2;
wire   [6:0] mul_ln277_1_fu_1146_p0;
wire   [8:0] mul_ln277_1_fu_1146_p1;
wire   [7:0] grp_fu_1152_p0;
wire   [7:0] grp_fu_1152_p1;
wire   [7:0] grp_fu_1152_p2;
wire   [7:0] grp_fu_1160_p0;
wire   [7:0] grp_fu_1160_p1;
wire   [7:0] grp_fu_1160_p2;
wire   [1:0] grp_fu_1168_p1;
wire   [7:0] grp_fu_1168_p2;
wire   [7:0] grp_fu_1168_p3;
wire   [7:0] grp_fu_1178_p0;
wire   [7:0] grp_fu_1178_p1;
wire   [7:0] grp_fu_1178_p2;
wire   [2:0] grp_fu_1186_p1;
wire   [7:0] grp_fu_1186_p2;
wire   [7:0] grp_fu_1186_p3;
wire   [7:0] grp_fu_1196_p0;
wire   [7:0] grp_fu_1196_p1;
wire   [7:0] grp_fu_1196_p2;
wire   [2:0] grp_fu_1204_p1;
wire   [7:0] grp_fu_1204_p2;
wire   [7:0] grp_fu_1204_p3;
wire   [7:0] grp_fu_1214_p0;
wire   [7:0] grp_fu_1214_p1;
wire   [7:0] grp_fu_1214_p2;
wire   [3:0] grp_fu_1222_p1;
wire   [7:0] grp_fu_1222_p2;
wire   [7:0] grp_fu_1222_p3;
wire   [7:0] grp_fu_1232_p0;
wire   [7:0] grp_fu_1232_p1;
wire   [7:0] grp_fu_1232_p2;
wire   [7:0] grp_fu_1240_p0;
wire   [7:0] grp_fu_1240_p1;
wire   [7:0] grp_fu_1240_p2;
wire   [1:0] grp_fu_1248_p1;
wire   [7:0] grp_fu_1248_p2;
wire   [7:0] grp_fu_1248_p3;
wire   [7:0] grp_fu_1258_p0;
wire   [7:0] grp_fu_1258_p1;
wire   [7:0] grp_fu_1258_p2;
wire   [2:0] grp_fu_1266_p1;
wire   [7:0] grp_fu_1266_p2;
wire   [7:0] grp_fu_1266_p3;
wire   [7:0] grp_fu_1276_p0;
wire   [7:0] grp_fu_1276_p1;
wire   [7:0] grp_fu_1276_p2;
wire   [2:0] grp_fu_1284_p1;
wire   [7:0] grp_fu_1284_p2;
wire   [7:0] grp_fu_1284_p3;
wire   [7:0] grp_fu_1294_p0;
wire   [7:0] grp_fu_1294_p1;
wire   [7:0] grp_fu_1294_p2;
wire   [3:0] grp_fu_1302_p1;
wire   [7:0] grp_fu_1302_p2;
wire   [7:0] grp_fu_1302_p3;
reg    grp_fu_350_ce;
reg    grp_fu_354_ce;
reg    grp_fu_358_ce;
reg    grp_fu_362_ce;
reg   [31:0] grp_fu_1765_p0;
reg   [31:0] grp_fu_1765_p1;
reg    grp_fu_1765_ce;
reg   [31:0] grp_fu_1769_p0;
reg   [31:0] grp_fu_1769_p1;
reg    grp_fu_1769_ce;
reg   [31:0] grp_fu_1773_p0;
reg   [31:0] grp_fu_1773_p1;
reg    grp_fu_1773_ce;
reg   [31:0] grp_fu_1777_p0;
reg   [31:0] grp_fu_1777_p1;
reg    grp_fu_1777_ce;
reg   [31:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
reg    ap_ST_fsm_state32_blk;
wire   [15:0] grp_fu_1152_p00;
wire   [15:0] grp_fu_1160_p00;
wire   [15:0] grp_fu_1178_p00;
wire   [15:0] grp_fu_1196_p00;
wire   [15:0] grp_fu_1214_p00;
wire   [15:0] grp_fu_1232_p00;
wire   [15:0] grp_fu_1240_p00;
wire   [15:0] grp_fu_1258_p00;
wire   [15:0] grp_fu_1276_p00;
wire   [15:0] grp_fu_1294_p00;
wire   [14:0] mul_ln171_1_fu_1046_p00;
wire   [14:0] mul_ln171_fu_735_p00;
wire   [15:0] mul_ln175_1_fu_550_p00;
wire   [15:0] mul_ln175_fu_501_p00;
wire   [14:0] mul_ln186_1_fu_1055_p00;
wire   [14:0] mul_ln186_fu_744_p00;
wire   [14:0] mul_ln199_1_fu_1071_p00;
wire   [14:0] mul_ln199_fu_760_p00;
wire   [14:0] mul_ln212_1_fu_1080_p00;
wire   [14:0] mul_ln212_fu_769_p00;
wire   [14:0] mul_ln225_1_fu_1096_p00;
wire   [14:0] mul_ln225_fu_785_p00;
wire   [14:0] mul_ln238_1_fu_1105_p00;
wire   [14:0] mul_ln238_fu_794_p00;
wire   [14:0] mul_ln251_1_fu_1121_p00;
wire   [14:0] mul_ln251_fu_810_p00;
wire   [14:0] mul_ln264_1_fu_1130_p00;
wire   [14:0] mul_ln264_fu_819_p00;
wire   [14:0] mul_ln277_1_fu_1146_p00;
wire   [14:0] mul_ln277_fu_835_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg = 1'b0;
#0 v114_fu_94 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_289(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_d1),.v225_1_q1(v225_1_q1),.mul_ln175(mul_ln175_reg_1351),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1527),.mul_ln199(mul_ln199_reg_1537),.mul_ln225(mul_ln225_reg_1547),.mul_ln251(mul_ln251_reg_1557),.mul_ln277(mul_ln277_reg_1567),.mul_ln186(mul_ln186_reg_1532),.mul_ln212(mul_ln212_reg_1542),.mul_ln238(mul_ln238_reg_1552),.mul_ln264(mul_ln264_reg_1562),.empty(trunc_ln169_reg_1522),.cmp11(cmp11_reg_1356),.v120(reg_429),.v133(reg_435),.v144(reg_441),.v155(reg_447),.v166(reg_453),.v177(reg_459),.v188(reg_465),.v199(reg_471),.v210(reg_477),.grp_fu_1765_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_din0),.grp_fu_1765_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_din1),.grp_fu_1765_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_opcode),.grp_fu_1765_p_dout0(grp_fu_168_p_dout0),.grp_fu_1765_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_ce),.grp_fu_1769_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_din0),.grp_fu_1769_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_din1),.grp_fu_1769_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_opcode),.grp_fu_1769_p_dout0(grp_fu_172_p_dout0),.grp_fu_1769_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_ce),.grp_fu_1773_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_din0),.grp_fu_1773_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_din1),.grp_fu_1773_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_opcode),.grp_fu_1773_p_dout0(grp_fu_176_p_dout0),.grp_fu_1773_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_ce),.grp_fu_1777_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_din0),.grp_fu_1777_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_din1),.grp_fu_1777_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_opcode),.grp_fu_1777_p_dout0(grp_fu_180_p_dout0),.grp_fu_1777_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_ce),.grp_fu_350_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din0),.grp_fu_350_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din1),.grp_fu_350_p_dout0(grp_fu_184_p_dout0),.grp_fu_350_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_ce),.grp_fu_354_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_din0),.grp_fu_354_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_din1),.grp_fu_354_p_dout0(grp_fu_188_p_dout0),.grp_fu_354_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_ce),.grp_fu_358_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_din0),.grp_fu_358_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_din1),.grp_fu_358_p_dout0(grp_fu_192_p_dout0),.grp_fu_358_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_ce),.grp_fu_362_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_din0),.grp_fu_362_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_din1),.grp_fu_362_p_dout0(grp_fu_196_p_dout0),.grp_fu_362_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_320(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_d1),.v225_1_q1(v225_1_q1),.mul_ln175_1(mul_ln175_1_reg_1387),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_1720),.mul_ln199_1(mul_ln199_1_reg_1730),.mul_ln225_1(mul_ln225_1_reg_1740),.mul_ln251_1(mul_ln251_1_reg_1750),.mul_ln277_1(mul_ln277_1_reg_1760),.mul_ln186_1(mul_ln186_1_reg_1725),.mul_ln212_1(mul_ln212_1_reg_1735),.mul_ln238_1(mul_ln238_1_reg_1745),.mul_ln264_1(mul_ln264_1_reg_1755),.empty(trunc_ln169_1_reg_1715),.v120_2(reg_429),.v133_1(reg_435),.v144_1(reg_441),.v155_1(reg_447),.v166_1(reg_453),.v177_1(reg_459),.v188_1(reg_465),.v199_1(reg_471),.v210_1(reg_477),.grp_fu_1765_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_din0),.grp_fu_1765_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_din1),.grp_fu_1765_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_opcode),.grp_fu_1765_p_dout0(grp_fu_168_p_dout0),.grp_fu_1765_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_ce),.grp_fu_1769_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_din0),.grp_fu_1769_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_din1),.grp_fu_1769_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_opcode),.grp_fu_1769_p_dout0(grp_fu_172_p_dout0),.grp_fu_1769_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_ce),.grp_fu_1773_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_din0),.grp_fu_1773_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_din1),.grp_fu_1773_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_opcode),.grp_fu_1773_p_dout0(grp_fu_176_p_dout0),.grp_fu_1773_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_ce),.grp_fu_1777_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_din0),.grp_fu_1777_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_din1),.grp_fu_1777_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_opcode),.grp_fu_1777_p_dout0(grp_fu_180_p_dout0),.grp_fu_1777_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_ce),.grp_fu_350_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din0),.grp_fu_350_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din1),.grp_fu_350_p_dout0(grp_fu_184_p_dout0),.grp_fu_350_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_ce),.grp_fu_354_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_din0),.grp_fu_354_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_din1),.grp_fu_354_p_dout0(grp_fu_188_p_dout0),.grp_fu_354_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_ce),.grp_fu_358_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_din0),.grp_fu_358_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_din1),.grp_fu_358_p_dout0(grp_fu_192_p_dout0),.grp_fu_358_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_ce),.grp_fu_362_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_din0),.grp_fu_362_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_din1),.grp_fu_362_p_dout0(grp_fu_196_p_dout0),.grp_fu_362_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_374_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_374_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_378_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_378_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_382_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_382_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln175_fu_501_p0),.din1(mul_ln175_fu_501_p1),.dout(mul_ln175_fu_501_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln175_1_fu_550_p0),.din1(mul_ln175_1_fu_550_p1),.dout(mul_ln175_1_fu_550_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U75(.din0(mul_ln171_fu_735_p0),.din1(mul_ln171_fu_735_p1),.dout(mul_ln171_fu_735_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U76(.din0(mul_ln186_fu_744_p0),.din1(mul_ln186_fu_744_p1),.dout(mul_ln186_fu_744_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U77(.din0(mul_ln199_fu_760_p0),.din1(mul_ln199_fu_760_p1),.dout(mul_ln199_fu_760_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U78(.din0(mul_ln212_fu_769_p0),.din1(mul_ln212_fu_769_p1),.dout(mul_ln212_fu_769_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U79(.din0(mul_ln225_fu_785_p0),.din1(mul_ln225_fu_785_p1),.dout(mul_ln225_fu_785_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U80(.din0(mul_ln238_fu_794_p0),.din1(mul_ln238_fu_794_p1),.dout(mul_ln238_fu_794_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U81(.din0(mul_ln251_fu_810_p0),.din1(mul_ln251_fu_810_p1),.dout(mul_ln251_fu_810_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U82(.din0(mul_ln264_fu_819_p0),.din1(mul_ln264_fu_819_p1),.dout(mul_ln264_fu_819_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U83(.din0(mul_ln277_fu_835_p0),.din1(mul_ln277_fu_835_p1),.dout(mul_ln277_fu_835_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U84(.din0(mul_ln171_1_fu_1046_p0),.din1(mul_ln171_1_fu_1046_p1),.dout(mul_ln171_1_fu_1046_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U85(.din0(mul_ln186_1_fu_1055_p0),.din1(mul_ln186_1_fu_1055_p1),.dout(mul_ln186_1_fu_1055_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U86(.din0(mul_ln199_1_fu_1071_p0),.din1(mul_ln199_1_fu_1071_p1),.dout(mul_ln199_1_fu_1071_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U87(.din0(mul_ln212_1_fu_1080_p0),.din1(mul_ln212_1_fu_1080_p1),.dout(mul_ln212_1_fu_1080_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U88(.din0(mul_ln225_1_fu_1096_p0),.din1(mul_ln225_1_fu_1096_p1),.dout(mul_ln225_1_fu_1096_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U89(.din0(mul_ln238_1_fu_1105_p0),.din1(mul_ln238_1_fu_1105_p1),.dout(mul_ln238_1_fu_1105_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U90(.din0(mul_ln251_1_fu_1121_p0),.din1(mul_ln251_1_fu_1121_p1),.dout(mul_ln251_1_fu_1121_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U91(.din0(mul_ln264_1_fu_1130_p0),.din1(mul_ln264_1_fu_1130_p1),.dout(mul_ln264_1_fu_1130_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U92(.din0(mul_ln277_1_fu_1146_p0),.din1(mul_ln277_1_fu_1146_p1),.dout(mul_ln277_1_fu_1146_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1152_p0),.din1(grp_fu_1152_p1),.din2(grp_fu_1152_p2),.ce(1'b1),.dout(grp_fu_1152_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1160_p0),.din1(grp_fu_1160_p1),.din2(grp_fu_1160_p2),.ce(1'b1),.dout(grp_fu_1160_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U95(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_265),.din1(grp_fu_1168_p1),.din2(grp_fu_1168_p2),.din3(grp_fu_1168_p3),.ce(1'b1),.dout(grp_fu_1168_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1178_p0),.din1(grp_fu_1178_p1),.din2(grp_fu_1178_p2),.ce(1'b1),.dout(grp_fu_1178_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_265),.din1(grp_fu_1186_p1),.din2(grp_fu_1186_p2),.din3(grp_fu_1186_p3),.ce(1'b1),.dout(grp_fu_1186_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1196_p0),.din1(grp_fu_1196_p1),.din2(grp_fu_1196_p2),.ce(1'b1),.dout(grp_fu_1196_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_265),.din1(grp_fu_1204_p1),.din2(grp_fu_1204_p2),.din3(grp_fu_1204_p3),.ce(1'b1),.dout(grp_fu_1204_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1214_p0),.din1(grp_fu_1214_p1),.din2(grp_fu_1214_p2),.ce(1'b1),.dout(grp_fu_1214_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_265),.din1(grp_fu_1222_p1),.din2(grp_fu_1222_p2),.din3(grp_fu_1222_p3),.ce(1'b1),.dout(grp_fu_1222_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1232_p0),.din1(grp_fu_1232_p1),.din2(grp_fu_1232_p2),.ce(1'b1),.dout(grp_fu_1232_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1240_p0),.din1(grp_fu_1240_p1),.din2(grp_fu_1240_p2),.ce(1'b1),.dout(grp_fu_1240_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_277),.din1(grp_fu_1248_p1),.din2(grp_fu_1248_p2),.din3(grp_fu_1248_p3),.ce(1'b1),.dout(grp_fu_1248_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1258_p0),.din1(grp_fu_1258_p1),.din2(grp_fu_1258_p2),.ce(1'b1),.dout(grp_fu_1258_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_277),.din1(grp_fu_1266_p1),.din2(grp_fu_1266_p2),.din3(grp_fu_1266_p3),.ce(1'b1),.dout(grp_fu_1266_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1276_p0),.din1(grp_fu_1276_p1),.din2(grp_fu_1276_p2),.ce(1'b1),.dout(grp_fu_1276_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_277),.din1(grp_fu_1284_p1),.din2(grp_fu_1284_p2),.din3(grp_fu_1284_p3),.ce(1'b1),.dout(grp_fu_1284_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1294_p0),.din1(grp_fu_1294_p1),.din2(grp_fu_1294_p2),.ce(1'b1),.dout(grp_fu_1294_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_277),.din1(grp_fu_1302_p1),.din2(grp_fu_1302_p2),.din3(grp_fu_1302_p3),.ce(1'b1),.dout(grp_fu_1302_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state31)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_386 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_386 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_399 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_399 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_404 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_404 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_409 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_409 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_414 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_414 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_419 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_419 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_424 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_424 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_94 <= 8'd0;
    end else if (((icmp_ln169_1_fu_841_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        v114_fu_94 <= add_ln168_fu_857_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_513_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v115_1_reg_277 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
        v115_1_reg_277 <= add_ln169_1_reg_1580;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_265 <= add_ln169_reg_1369;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd1))) begin
        v115_reg_265 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln169_1_reg_1580 <= add_ln169_1_fu_851_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1369 <= add_ln169_fu_523_p2;
        mul_ln175_1_reg_1387 <= mul_ln175_1_fu_550_p2;
        zext_ln175_7_reg_1374[7 : 1] <= zext_ln175_7_fu_546_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1356 <= cmp11_fu_507_p2;
        mul_ln175_reg_1351 <= mul_ln175_fu_501_p2;
        zext_ln175_reg_1338[7 : 0] <= zext_ln175_fu_497_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        mul_ln171_1_reg_1720 <= mul_ln171_1_fu_1046_p2;
        mul_ln186_1_reg_1725 <= mul_ln186_1_fu_1055_p2;
        mul_ln199_1_reg_1730 <= mul_ln199_1_fu_1071_p2;
        mul_ln212_1_reg_1735 <= mul_ln212_1_fu_1080_p2;
        mul_ln225_1_reg_1740 <= mul_ln225_1_fu_1096_p2;
        mul_ln238_1_reg_1745 <= mul_ln238_1_fu_1105_p2;
        mul_ln251_1_reg_1750 <= mul_ln251_1_fu_1121_p2;
        mul_ln264_1_reg_1755 <= mul_ln264_1_fu_1130_p2;
        mul_ln277_1_reg_1760 <= mul_ln277_1_fu_1146_p2;
        trunc_ln169_1_reg_1715 <= trunc_ln169_1_fu_1028_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1527 <= mul_ln171_fu_735_p2;
        mul_ln186_reg_1532 <= mul_ln186_fu_744_p2;
        mul_ln199_reg_1537 <= mul_ln199_fu_760_p2;
        mul_ln212_reg_1542 <= mul_ln212_fu_769_p2;
        mul_ln225_reg_1547 <= mul_ln225_fu_785_p2;
        mul_ln238_reg_1552 <= mul_ln238_fu_794_p2;
        mul_ln251_reg_1557 <= mul_ln251_fu_810_p2;
        mul_ln264_reg_1562 <= mul_ln264_fu_819_p2;
        mul_ln277_reg_1567 <= mul_ln277_fu_835_p2;
        trunc_ln169_reg_1522 <= trunc_ln169_fu_717_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_391 <= v226_q1;
        reg_395 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_429 <= grp_fu_184_p_dout0;
        reg_435 <= grp_fu_188_p_dout0;
        reg_441 <= grp_fu_192_p_dout0;
        reg_447 <= grp_fu_196_p_dout0;
        reg_453 <= grp_fu_200_p_dout0;
        reg_459 <= grp_fu_204_p_dout0;
        reg_465 <= grp_fu_374_p2;
        reg_471 <= grp_fu_378_p2;
        reg_477 <= grp_fu_382_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_1407 <= {{empty_26_fu_576_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_2_reg_1422 <= {{empty_33_fu_600_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_1442 <= {{empty_40_fu_628_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        tmp_6_reg_1590 <= {{empty_49_fu_867_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_7_reg_1600 <= {{empty_56_fu_887_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp_8_reg_1615 <= {{empty_63_fu_911_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmp_9_reg_1635 <= {{empty_70_fu_939_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_1397 <= {{empty_19_fu_556_p2[7:1]}};
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done == 1'b0)) begin
        ap_ST_fsm_state32_blk = 1'b1;
    end else begin
        ap_ST_fsm_state32_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1765_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1765_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_ce;
    end else begin
        grp_fu_1765_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1765_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1765_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_din0;
    end else begin
        grp_fu_1765_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1765_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1765_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1765_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1765_p_din1;
    end else begin
        grp_fu_1765_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1769_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1769_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_ce;
    end else begin
        grp_fu_1769_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1769_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1769_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_din0;
    end else begin
        grp_fu_1769_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1769_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1769_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1769_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1769_p_din1;
    end else begin
        grp_fu_1769_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1773_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1773_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_ce;
    end else begin
        grp_fu_1773_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1773_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1773_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_din0;
    end else begin
        grp_fu_1773_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1773_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1773_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1773_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1773_p_din1;
    end else begin
        grp_fu_1773_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1777_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1777_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_ce;
    end else begin
        grp_fu_1777_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1777_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1777_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_din0;
    end else begin
        grp_fu_1777_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1777_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_1777_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1777_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1777_p_din1;
    end else begin
        grp_fu_1777_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_350_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_350_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_ce;
    end else begin
        grp_fu_350_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_350_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_350_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_350_p0 = v119_1_fu_983_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_350_p0 = v119_fu_672_p1;
    end else begin
        grp_fu_350_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_350_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_350_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_350_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_350_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_350_p1 = v113;
    end else begin
        grp_fu_350_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_354_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_354_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_ce;
    end else begin
        grp_fu_354_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_354_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_354_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_354_p0 = v132_1_fu_988_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_354_p0 = v132_fu_677_p1;
    end else begin
        grp_fu_354_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_354_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_354_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_354_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_354_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_354_p1 = v113;
    end else begin
        grp_fu_354_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_358_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_358_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_ce;
    end else begin
        grp_fu_358_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_358_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_358_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_358_p0 = v143_1_fu_993_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_358_p0 = v143_fu_682_p1;
    end else begin
        grp_fu_358_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_358_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_358_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_358_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_358_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_358_p1 = v113;
    end else begin
        grp_fu_358_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_362_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_362_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_ce;
    end else begin
        grp_fu_362_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_362_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_362_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_362_p0 = v154_1_fu_998_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_362_p0 = v154_fu_687_p1;
    end else begin
        grp_fu_362_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_362_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_grp_fu_362_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_362_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_362_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_362_p1 = v113;
    end else begin
        grp_fu_362_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_366_p0 = v165_1_fu_1003_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_366_p0 = v165_fu_692_p1;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_370_p0 = v176_1_fu_1008_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_370_p0 = v176_fu_697_p1;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_374_p0 = v187_1_fu_1013_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_374_p0 = v187_fu_702_p1;
    end else begin
        grp_fu_374_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_378_p0 = v198_1_fu_1018_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_378_p0 = v198_fu_707_p1;
    end else begin
        grp_fu_378_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_382_p0 = v209_1_fu_1023_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_382_p0 = v209_fu_712_p1;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address0_local = p_cast1072_fu_979_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address0_local = p_cast1070_fu_971_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address0_local = p_cast1068_fu_963_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address0_local = p_cast1066_fu_935_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast1062_fu_664_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast1060_fu_656_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast1058_fu_648_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast1057_fu_624_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast1056_fu_596_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address1_local = p_cast1071_fu_975_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address1_local = p_cast1069_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address1_local = p_cast1067_fu_959_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address1_local = p_cast1065_fu_931_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_address1_local = p_cast1064_fu_907_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast1063_fu_668_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast1061_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast1059_fu_652_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_620_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_491_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_513_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
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
            ap_NS_fsm = ap_ST_fsm_state14;
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln169_1_fu_841_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
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
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_857_p2 = (v114_fu_94 + 8'd2);
assign add_ln169_1_fu_851_p2 = (v115_1_reg_277 + 8'd9);
assign add_ln169_fu_523_p2 = (v115_reg_265 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
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
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_491_p2 == 1'd0));
end
assign cmp11_fu_507_p2 = ((v114_fu_94 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_556_p2 = (v115_reg_265 + 8'd1);
assign empty_25_fu_750_p2 = (lshr_ln_fu_721_p4 + 7'd1);
assign empty_26_fu_576_p2 = (v115_reg_265 + 8'd3);
assign empty_32_fu_775_p2 = (lshr_ln_fu_721_p4 + 7'd2);
assign empty_33_fu_600_p2 = (v115_reg_265 + 8'd5);
assign empty_39_fu_800_p2 = (lshr_ln_fu_721_p4 + 7'd3);
assign empty_40_fu_628_p2 = (v115_reg_265 + 8'd7);
assign empty_46_fu_825_p2 = (lshr_ln_fu_721_p4 + 7'd4);
assign empty_49_fu_867_p2 = (v115_1_reg_277 + 8'd1);
assign empty_55_fu_1061_p2 = (lshr_ln169_1_fu_1032_p4 + 7'd1);
assign empty_56_fu_887_p2 = (v115_1_reg_277 + 8'd3);
assign empty_62_fu_1086_p2 = (lshr_ln169_1_fu_1032_p4 + 7'd2);
assign empty_63_fu_911_p2 = (v115_1_reg_277 + 8'd5);
assign empty_69_fu_1111_p2 = (lshr_ln169_1_fu_1032_p4 + 7'd3);
assign empty_70_fu_939_p2 = (v115_1_reg_277 + 8'd7);
assign empty_76_fu_1136_p2 = (lshr_ln169_1_fu_1032_p4 + 7'd4);
assign grp_fu_1152_p0 = grp_fu_1152_p00;
assign grp_fu_1152_p00 = v115_reg_265;
assign grp_fu_1152_p1 = 16'd210;
assign grp_fu_1152_p2 = zext_ln175_reg_1338;
assign grp_fu_1160_p0 = grp_fu_1160_p00;
assign grp_fu_1160_p00 = empty_19_fu_556_p2;
assign grp_fu_1160_p1 = 16'd210;
assign grp_fu_1160_p2 = zext_ln175_reg_1338;
assign grp_fu_1168_p1 = 8'd2;
assign grp_fu_1168_p2 = 16'd210;
assign grp_fu_1168_p3 = zext_ln175_reg_1338;
assign grp_fu_1178_p0 = grp_fu_1178_p00;
assign grp_fu_1178_p00 = empty_26_fu_576_p2;
assign grp_fu_1178_p1 = 16'd210;
assign grp_fu_1178_p2 = zext_ln175_reg_1338;
assign grp_fu_1186_p1 = 8'd4;
assign grp_fu_1186_p2 = 16'd210;
assign grp_fu_1186_p3 = zext_ln175_reg_1338;
assign grp_fu_1196_p0 = grp_fu_1196_p00;
assign grp_fu_1196_p00 = empty_33_fu_600_p2;
assign grp_fu_1196_p1 = 16'd210;
assign grp_fu_1196_p2 = zext_ln175_reg_1338;
assign grp_fu_1204_p1 = 8'd6;
assign grp_fu_1204_p2 = 16'd210;
assign grp_fu_1204_p3 = zext_ln175_reg_1338;
assign grp_fu_1214_p0 = grp_fu_1214_p00;
assign grp_fu_1214_p00 = empty_40_fu_628_p2;
assign grp_fu_1214_p1 = 16'd210;
assign grp_fu_1214_p2 = zext_ln175_reg_1338;
assign grp_fu_1222_p1 = 8'd8;
assign grp_fu_1222_p2 = 16'd210;
assign grp_fu_1222_p3 = zext_ln175_reg_1338;
assign grp_fu_1232_p0 = grp_fu_1232_p00;
assign grp_fu_1232_p00 = v115_1_reg_277;
assign grp_fu_1232_p1 = 16'd210;
assign grp_fu_1232_p2 = zext_ln175_7_reg_1374;
assign grp_fu_1240_p0 = grp_fu_1240_p00;
assign grp_fu_1240_p00 = empty_49_fu_867_p2;
assign grp_fu_1240_p1 = 16'd210;
assign grp_fu_1240_p2 = zext_ln175_7_reg_1374;
assign grp_fu_1248_p1 = 8'd2;
assign grp_fu_1248_p2 = 16'd210;
assign grp_fu_1248_p3 = zext_ln175_7_reg_1374;
assign grp_fu_1258_p0 = grp_fu_1258_p00;
assign grp_fu_1258_p00 = empty_56_fu_887_p2;
assign grp_fu_1258_p1 = 16'd210;
assign grp_fu_1258_p2 = zext_ln175_7_reg_1374;
assign grp_fu_1266_p1 = 8'd4;
assign grp_fu_1266_p2 = 16'd210;
assign grp_fu_1266_p3 = zext_ln175_7_reg_1374;
assign grp_fu_1276_p0 = grp_fu_1276_p00;
assign grp_fu_1276_p00 = empty_63_fu_911_p2;
assign grp_fu_1276_p1 = 16'd210;
assign grp_fu_1276_p2 = zext_ln175_7_reg_1374;
assign grp_fu_1284_p1 = 8'd6;
assign grp_fu_1284_p2 = 16'd210;
assign grp_fu_1284_p3 = zext_ln175_7_reg_1374;
assign grp_fu_1294_p0 = grp_fu_1294_p00;
assign grp_fu_1294_p00 = empty_70_fu_939_p2;
assign grp_fu_1294_p1 = 16'd210;
assign grp_fu_1294_p2 = zext_ln175_7_reg_1374;
assign grp_fu_1302_p1 = 8'd8;
assign grp_fu_1302_p2 = 16'd210;
assign grp_fu_1302_p3 = zext_ln175_7_reg_1374;
assign grp_fu_168_p_ce = grp_fu_1765_ce;
assign grp_fu_168_p_din0 = grp_fu_1765_p0;
assign grp_fu_168_p_din1 = grp_fu_1765_p1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_172_p_ce = grp_fu_1769_ce;
assign grp_fu_172_p_din0 = grp_fu_1769_p0;
assign grp_fu_172_p_din1 = grp_fu_1769_p1;
assign grp_fu_172_p_opcode = 2'd0;
assign grp_fu_176_p_ce = grp_fu_1773_ce;
assign grp_fu_176_p_din0 = grp_fu_1773_p0;
assign grp_fu_176_p_din1 = grp_fu_1773_p1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_1777_ce;
assign grp_fu_180_p_din0 = grp_fu_1777_p0;
assign grp_fu_180_p_din1 = grp_fu_1777_p1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_184_p_ce = grp_fu_350_ce;
assign grp_fu_184_p_din0 = grp_fu_350_p0;
assign grp_fu_184_p_din1 = grp_fu_350_p1;
assign grp_fu_188_p_ce = grp_fu_354_ce;
assign grp_fu_188_p_din0 = grp_fu_354_p0;
assign grp_fu_188_p_din1 = grp_fu_354_p1;
assign grp_fu_192_p_ce = grp_fu_358_ce;
assign grp_fu_192_p_din0 = grp_fu_358_p0;
assign grp_fu_192_p_din1 = grp_fu_358_p1;
assign grp_fu_196_p_ce = grp_fu_362_ce;
assign grp_fu_196_p_din0 = grp_fu_362_p0;
assign grp_fu_196_p_din1 = grp_fu_362_p1;
assign grp_fu_200_p_ce = 1'b1;
assign grp_fu_200_p_din0 = grp_fu_366_p0;
assign grp_fu_200_p_din1 = v113;
assign grp_fu_204_p_ce = 1'b1;
assign grp_fu_204_p_din0 = grp_fu_370_p0;
assign grp_fu_204_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_320_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg;
assign icmp_ln168_fu_491_p2 = ((v114_fu_94 < 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_1_fu_841_p2 = ((v115_1_reg_277 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_513_p2 = ((v115_reg_265 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln169_1_fu_1032_p4 = {{v115_1_reg_277[7:1]}};
assign lshr_ln_fu_721_p4 = {{v115_reg_265[7:1]}};
assign mul_ln171_1_fu_1046_p0 = mul_ln171_1_fu_1046_p00;
assign mul_ln171_1_fu_1046_p00 = lshr_ln169_1_fu_1032_p4;
assign mul_ln171_1_fu_1046_p1 = 15'd190;
assign mul_ln171_fu_735_p0 = mul_ln171_fu_735_p00;
assign mul_ln171_fu_735_p00 = lshr_ln_fu_721_p4;
assign mul_ln171_fu_735_p1 = 15'd190;
assign mul_ln175_1_fu_550_p0 = mul_ln175_1_fu_550_p00;
assign mul_ln175_1_fu_550_p00 = or_ln_fu_538_p3;
assign mul_ln175_1_fu_550_p1 = 16'd190;
assign mul_ln175_fu_501_p0 = mul_ln175_fu_501_p00;
assign mul_ln175_fu_501_p00 = v114_fu_94;
assign mul_ln175_fu_501_p1 = 16'd190;
assign mul_ln186_1_fu_1055_p0 = mul_ln186_1_fu_1055_p00;
assign mul_ln186_1_fu_1055_p00 = tmp_6_reg_1590;
assign mul_ln186_1_fu_1055_p1 = 15'd190;
assign mul_ln186_fu_744_p0 = mul_ln186_fu_744_p00;
assign mul_ln186_fu_744_p00 = tmp_reg_1397;
assign mul_ln186_fu_744_p1 = 15'd190;
assign mul_ln199_1_fu_1071_p0 = mul_ln199_1_fu_1071_p00;
assign mul_ln199_1_fu_1071_p00 = empty_55_fu_1061_p2;
assign mul_ln199_1_fu_1071_p1 = 15'd190;
assign mul_ln199_fu_760_p0 = mul_ln199_fu_760_p00;
assign mul_ln199_fu_760_p00 = empty_25_fu_750_p2;
assign mul_ln199_fu_760_p1 = 15'd190;
assign mul_ln212_1_fu_1080_p0 = mul_ln212_1_fu_1080_p00;
assign mul_ln212_1_fu_1080_p00 = tmp_7_reg_1600;
assign mul_ln212_1_fu_1080_p1 = 15'd190;
assign mul_ln212_fu_769_p0 = mul_ln212_fu_769_p00;
assign mul_ln212_fu_769_p00 = tmp_1_reg_1407;
assign mul_ln212_fu_769_p1 = 15'd190;
assign mul_ln225_1_fu_1096_p0 = mul_ln225_1_fu_1096_p00;
assign mul_ln225_1_fu_1096_p00 = empty_62_fu_1086_p2;
assign mul_ln225_1_fu_1096_p1 = 15'd190;
assign mul_ln225_fu_785_p0 = mul_ln225_fu_785_p00;
assign mul_ln225_fu_785_p00 = empty_32_fu_775_p2;
assign mul_ln225_fu_785_p1 = 15'd190;
assign mul_ln238_1_fu_1105_p0 = mul_ln238_1_fu_1105_p00;
assign mul_ln238_1_fu_1105_p00 = tmp_8_reg_1615;
assign mul_ln238_1_fu_1105_p1 = 15'd190;
assign mul_ln238_fu_794_p0 = mul_ln238_fu_794_p00;
assign mul_ln238_fu_794_p00 = tmp_2_reg_1422;
assign mul_ln238_fu_794_p1 = 15'd190;
assign mul_ln251_1_fu_1121_p0 = mul_ln251_1_fu_1121_p00;
assign mul_ln251_1_fu_1121_p00 = empty_69_fu_1111_p2;
assign mul_ln251_1_fu_1121_p1 = 15'd190;
assign mul_ln251_fu_810_p0 = mul_ln251_fu_810_p00;
assign mul_ln251_fu_810_p00 = empty_39_fu_800_p2;
assign mul_ln251_fu_810_p1 = 15'd190;
assign mul_ln264_1_fu_1130_p0 = mul_ln264_1_fu_1130_p00;
assign mul_ln264_1_fu_1130_p00 = tmp_9_reg_1635;
assign mul_ln264_1_fu_1130_p1 = 15'd190;
assign mul_ln264_fu_819_p0 = mul_ln264_fu_819_p00;
assign mul_ln264_fu_819_p00 = tmp_3_reg_1442;
assign mul_ln264_fu_819_p1 = 15'd190;
assign mul_ln277_1_fu_1146_p0 = mul_ln277_1_fu_1146_p00;
assign mul_ln277_1_fu_1146_p00 = empty_76_fu_1136_p2;
assign mul_ln277_1_fu_1146_p1 = 15'd190;
assign mul_ln277_fu_835_p0 = mul_ln277_fu_835_p00;
assign mul_ln277_fu_835_p00 = empty_46_fu_825_p2;
assign mul_ln277_fu_835_p1 = 15'd190;
assign or_ln_fu_538_p3 = {{tmp_4_fu_529_p4}, {1'd1}};
assign p_cast1056_fu_596_p1 = grp_fu_1152_p3;
assign p_cast1057_fu_624_p1 = grp_fu_1168_p4;
assign p_cast1058_fu_648_p1 = grp_fu_1178_p3;
assign p_cast1059_fu_652_p1 = grp_fu_1186_p4;
assign p_cast1060_fu_656_p1 = grp_fu_1196_p3;
assign p_cast1061_fu_660_p1 = grp_fu_1204_p4;
assign p_cast1062_fu_664_p1 = grp_fu_1214_p3;
assign p_cast1063_fu_668_p1 = grp_fu_1222_p4;
assign p_cast1064_fu_907_p1 = grp_fu_1232_p3;
assign p_cast1065_fu_931_p1 = grp_fu_1240_p3;
assign p_cast1066_fu_935_p1 = grp_fu_1248_p4;
assign p_cast1067_fu_959_p1 = grp_fu_1258_p3;
assign p_cast1068_fu_963_p1 = grp_fu_1266_p4;
assign p_cast1069_fu_967_p1 = grp_fu_1276_p3;
assign p_cast1070_fu_971_p1 = grp_fu_1284_p4;
assign p_cast1071_fu_975_p1 = grp_fu_1294_p3;
assign p_cast1072_fu_979_p1 = grp_fu_1302_p4;
assign p_cast_fu_620_p1 = grp_fu_1160_p3;
assign tmp_4_fu_529_p4 = {{v114_fu_94[7:1]}};
assign trunc_ln169_1_fu_1028_p1 = v115_1_reg_277[0:0];
assign trunc_ln169_fu_717_p1 = v115_reg_265[0:0];
assign v119_1_fu_983_p1 = reg_386;
assign v119_fu_672_p1 = reg_386;
assign v132_1_fu_988_p1 = reg_391;
assign v132_fu_677_p1 = reg_391;
assign v143_1_fu_993_p1 = reg_395;
assign v143_fu_682_p1 = reg_395;
assign v154_1_fu_998_p1 = reg_399;
assign v154_fu_687_p1 = reg_399;
assign v165_1_fu_1003_p1 = reg_404;
assign v165_fu_692_p1 = reg_404;
assign v176_1_fu_1008_p1 = reg_409;
assign v176_fu_697_p1 = reg_409;
assign v187_1_fu_1013_p1 = reg_414;
assign v187_fu_702_p1 = reg_414;
assign v198_1_fu_1018_p1 = reg_419;
assign v198_fu_707_p1 = reg_419;
assign v209_1_fu_1023_p1 = reg_424;
assign v209_fu_712_p1 = reg_424;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln175_7_fu_546_p1 = or_ln_fu_538_p3;
assign zext_ln175_fu_497_p1 = v114_fu_94;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1338[15:8] <= 8'b00000000;
    zext_ln175_7_reg_1374[0] <= 1'b1;
    zext_ln175_7_reg_1374[15:8] <= 8'b00000000;
end
endmodule 