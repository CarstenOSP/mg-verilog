module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;
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
output  [15:0] v225_address0;
output   v225_ce0;
output   v225_we0;
output  [31:0] v225_d0;
input  [31:0] v225_q0;
output  [15:0] v225_address1;
output   v225_ce1;
output   v225_we1;
output  [31:0] v225_d1;
input  [31:0] v225_q1;
input  [31:0] v113;
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
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_489_p2;
reg   [31:0] reg_381;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_385;
reg   [31:0] reg_389;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_393;
reg   [31:0] reg_397;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_401;
reg   [31:0] reg_405;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_409;
reg   [31:0] reg_413;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_419;
reg   [31:0] reg_425;
reg   [31:0] reg_431;
reg   [31:0] reg_437;
reg   [31:0] reg_443;
reg   [31:0] reg_449;
reg   [31:0] reg_455;
reg   [31:0] reg_461;
reg   [15:0] phi_mul_load_reg_1138;
wire   [15:0] add_ln168_1_fu_483_p2;
reg   [15:0] add_ln168_1_reg_1144;
wire   [7:0] add_ln168_fu_495_p2;
reg   [7:0] add_ln168_reg_1152;
wire   [15:0] zext_ln168_fu_501_p1;
reg   [15:0] zext_ln168_reg_1157;
wire   [0:0] cmp11_fu_505_p2;
reg   [0:0] cmp11_reg_1179;
wire   [15:0] v115_cast_fu_517_p1;
reg   [15:0] v115_cast_reg_1188;
wire    ap_CS_fsm_state3;
wire   [15:0] tmp_1_cast_fu_539_p1;
reg   [15:0] tmp_1_cast_reg_1194;
wire   [7:0] add_ln169_1_fu_543_p2;
reg   [7:0] add_ln169_1_reg_1200;
wire   [15:0] p_cast346_fu_563_p1;
reg   [15:0] p_cast346_reg_1205;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast347_fu_573_p1;
reg   [15:0] p_cast347_reg_1211;
wire   [15:0] p_cast348_fu_583_p1;
reg   [15:0] p_cast348_reg_1217;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast349_fu_593_p1;
reg   [15:0] p_cast349_reg_1223;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast350_fu_611_p1;
reg   [15:0] p_cast350_reg_1239;
wire   [15:0] p_cast351_fu_621_p1;
reg   [15:0] p_cast351_reg_1245;
wire   [15:0] p_cast352_fu_639_p1;
reg   [15:0] p_cast352_reg_1261;
wire   [15:0] add_ln169_cast353_fu_649_p1;
reg   [15:0] add_ln169_cast353_reg_1267;
wire   [15:0] p_cast354_fu_667_p1;
reg   [15:0] p_cast354_reg_1283;
wire   [15:0] p_cast355_fu_677_p1;
reg   [15:0] p_cast355_reg_1289;
wire   [15:0] p_cast356_fu_695_p1;
reg   [15:0] p_cast356_reg_1305;
wire   [15:0] p_cast357_fu_705_p1;
reg   [15:0] p_cast357_reg_1311;
wire   [15:0] p_cast358_fu_723_p1;
reg   [15:0] p_cast358_reg_1327;
wire   [15:0] p_cast359_fu_733_p1;
reg   [15:0] p_cast359_reg_1333;
reg   [31:0] v226_load_8_reg_1339;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_9_reg_1344;
wire   [15:0] p_cast360_fu_751_p1;
reg   [15:0] p_cast360_reg_1359;
wire   [15:0] p_cast361_fu_761_p1;
reg   [15:0] p_cast361_reg_1365;
wire   [31:0] v119_fu_765_p1;
wire   [31:0] v132_fu_770_p1;
wire   [31:0] v143_fu_775_p1;
wire   [31:0] v154_fu_780_p1;
wire   [31:0] v165_fu_785_p1;
wire   [31:0] v176_fu_790_p1;
wire   [31:0] v187_fu_795_p1;
wire   [31:0] v198_fu_800_p1;
wire   [31:0] v209_fu_805_p1;
wire   [15:0] mul_ln171_fu_833_p2;
reg   [15:0] mul_ln171_reg_1446;
wire   [15:0] mul_ln186_fu_838_p2;
reg   [15:0] mul_ln186_reg_1451;
wire   [15:0] mul_ln199_fu_843_p2;
reg   [15:0] mul_ln199_reg_1456;
wire   [15:0] mul_ln212_fu_848_p2;
reg   [15:0] mul_ln212_reg_1461;
wire   [15:0] mul_ln225_fu_853_p2;
reg   [15:0] mul_ln225_reg_1466;
wire   [15:0] mul_ln238_fu_858_p2;
reg   [15:0] mul_ln238_reg_1471;
wire   [15:0] mul_ln251_fu_863_p2;
reg   [15:0] mul_ln251_reg_1476;
wire   [15:0] mul_ln264_fu_868_p2;
reg   [15:0] mul_ln264_reg_1481;
wire   [15:0] mul_ln277_fu_873_p2;
reg   [15:0] mul_ln277_reg_1486;
wire   [31:0] v119_1_fu_878_p1;
wire    ap_CS_fsm_state16;
wire   [31:0] v132_1_fu_882_p1;
wire   [31:0] v143_1_fu_887_p1;
wire   [31:0] v154_1_fu_892_p1;
wire   [31:0] v165_1_fu_897_p1;
wire   [31:0] v176_1_fu_902_p1;
wire   [31:0] v187_1_fu_907_p1;
wire   [31:0] v198_1_fu_912_p1;
wire   [31:0] v209_1_fu_917_p1;
wire   [15:0] mul_ln171_1_fu_922_p2;
reg   [15:0] mul_ln171_1_reg_1536;
wire   [15:0] mul_ln186_1_fu_927_p2;
reg   [15:0] mul_ln186_1_reg_1541;
wire   [15:0] mul_ln199_1_fu_932_p2;
reg   [15:0] mul_ln199_1_reg_1546;
wire   [15:0] mul_ln212_1_fu_937_p2;
reg   [15:0] mul_ln212_1_reg_1551;
wire   [15:0] mul_ln225_1_fu_942_p2;
reg   [15:0] mul_ln225_1_reg_1556;
wire   [15:0] mul_ln238_1_fu_947_p2;
reg   [15:0] mul_ln238_1_reg_1561;
wire   [15:0] mul_ln251_1_fu_952_p2;
reg   [15:0] mul_ln251_1_reg_1566;
wire   [15:0] mul_ln264_1_fu_957_p2;
reg   [15:0] mul_ln264_1_reg_1571;
wire   [15:0] mul_ln277_1_fu_962_p2;
reg   [15:0] mul_ln277_1_reg_1576;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_ce;
reg   [7:0] v115_reg_277;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast362_fu_597_p1;
wire   [63:0] p_cast_fu_601_p1;
wire   [63:0] p_cast363_fu_625_p1;
wire   [63:0] p_cast364_fu_629_p1;
wire   [63:0] p_cast365_fu_653_p1;
wire   [63:0] p_cast366_fu_657_p1;
wire   [63:0] p_cast367_fu_681_p1;
wire   [63:0] p_cast368_fu_685_p1;
wire   [63:0] p_cast369_fu_709_p1;
wire   [63:0] p_cast370_fu_713_p1;
wire   [63:0] p_cast371_fu_737_p1;
wire   [63:0] p_cast372_fu_741_p1;
wire   [63:0] p_cast373_fu_809_p1;
wire   [63:0] p_cast374_fu_813_p1;
wire   [63:0] p_cast375_fu_817_p1;
wire   [63:0] p_cast376_fu_821_p1;
wire   [63:0] p_cast377_fu_825_p1;
wire   [63:0] p_cast378_fu_829_p1;
reg   [15:0] phi_mul_fu_102;
wire   [0:0] icmp_ln169_fu_511_p2;
reg   [7:0] v114_fu_106;
reg    v236_write_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg   [31:0] grp_fu_345_p0;
reg   [31:0] grp_fu_349_p0;
reg   [31:0] grp_fu_353_p0;
reg   [31:0] grp_fu_357_p0;
reg   [31:0] grp_fu_361_p0;
reg   [31:0] grp_fu_365_p0;
reg   [31:0] grp_fu_369_p0;
reg   [31:0] grp_fu_373_p0;
reg   [31:0] grp_fu_377_p0;
wire   [6:0] tmp_fu_521_p4;
wire   [7:0] tmp_1_fu_531_p3;
wire   [7:0] empty_17_fu_557_p2;
wire   [7:0] empty_20_fu_567_p2;
wire   [7:0] empty_23_fu_577_p2;
wire   [7:0] empty_26_fu_587_p2;
wire   [15:0] grp_fu_967_p3;
wire   [15:0] grp_fu_975_p3;
wire   [7:0] empty_29_fu_605_p2;
wire   [7:0] empty_32_fu_615_p2;
wire   [15:0] grp_fu_983_p3;
wire   [15:0] grp_fu_991_p3;
wire   [7:0] empty_35_fu_633_p2;
wire   [7:0] add_ln169_fu_643_p2;
wire   [15:0] grp_fu_999_p3;
wire   [15:0] grp_fu_1007_p3;
wire   [7:0] empty_40_fu_661_p2;
wire   [7:0] empty_43_fu_671_p2;
wire   [15:0] grp_fu_1015_p3;
wire   [15:0] grp_fu_1023_p3;
wire   [7:0] empty_46_fu_689_p2;
wire   [7:0] empty_49_fu_699_p2;
wire   [15:0] grp_fu_1031_p3;
wire   [15:0] grp_fu_1039_p3;
wire   [7:0] empty_52_fu_717_p2;
wire   [7:0] empty_55_fu_727_p2;
wire   [15:0] grp_fu_1047_p3;
wire   [15:0] grp_fu_1055_p3;
wire   [7:0] empty_58_fu_745_p2;
wire   [7:0] empty_61_fu_755_p2;
wire   [15:0] grp_fu_1063_p3;
wire   [15:0] grp_fu_1071_p3;
wire   [15:0] grp_fu_1079_p3;
wire   [15:0] grp_fu_1087_p3;
wire   [15:0] grp_fu_1095_p3;
wire   [15:0] grp_fu_1103_p3;
wire   [7:0] mul_ln171_fu_833_p0;
wire   [8:0] mul_ln171_fu_833_p1;
wire   [7:0] mul_ln186_fu_838_p0;
wire   [8:0] mul_ln186_fu_838_p1;
wire   [7:0] mul_ln199_fu_843_p0;
wire   [8:0] mul_ln199_fu_843_p1;
wire   [7:0] mul_ln212_fu_848_p0;
wire   [8:0] mul_ln212_fu_848_p1;
wire   [7:0] mul_ln225_fu_853_p0;
wire   [8:0] mul_ln225_fu_853_p1;
wire   [7:0] mul_ln238_fu_858_p0;
wire   [8:0] mul_ln238_fu_858_p1;
wire   [7:0] mul_ln251_fu_863_p0;
wire   [8:0] mul_ln251_fu_863_p1;
wire   [7:0] mul_ln264_fu_868_p0;
wire   [8:0] mul_ln264_fu_868_p1;
wire   [7:0] mul_ln277_fu_873_p0;
wire   [8:0] mul_ln277_fu_873_p1;
wire   [7:0] mul_ln171_1_fu_922_p0;
wire   [8:0] mul_ln171_1_fu_922_p1;
wire   [7:0] mul_ln186_1_fu_927_p0;
wire   [8:0] mul_ln186_1_fu_927_p1;
wire   [7:0] mul_ln199_1_fu_932_p0;
wire   [8:0] mul_ln199_1_fu_932_p1;
wire   [7:0] mul_ln212_1_fu_937_p0;
wire   [8:0] mul_ln212_1_fu_937_p1;
wire   [7:0] mul_ln225_1_fu_942_p0;
wire   [8:0] mul_ln225_1_fu_942_p1;
wire   [7:0] mul_ln238_1_fu_947_p0;
wire   [8:0] mul_ln238_1_fu_947_p1;
wire   [7:0] mul_ln251_1_fu_952_p0;
wire   [8:0] mul_ln251_1_fu_952_p1;
wire   [7:0] mul_ln264_1_fu_957_p0;
wire   [8:0] mul_ln264_1_fu_957_p1;
wire   [7:0] mul_ln277_1_fu_962_p0;
wire   [8:0] mul_ln277_1_fu_962_p1;
wire   [7:0] grp_fu_967_p0;
wire   [7:0] grp_fu_967_p1;
wire   [7:0] grp_fu_967_p2;
wire   [7:0] grp_fu_975_p0;
wire   [7:0] grp_fu_975_p1;
wire   [7:0] grp_fu_975_p2;
wire   [7:0] grp_fu_983_p0;
wire   [7:0] grp_fu_983_p1;
wire   [7:0] grp_fu_983_p2;
wire   [7:0] grp_fu_991_p0;
wire   [7:0] grp_fu_991_p1;
wire   [7:0] grp_fu_991_p2;
wire   [7:0] grp_fu_999_p0;
wire   [7:0] grp_fu_999_p1;
wire   [7:0] grp_fu_999_p2;
wire   [7:0] grp_fu_1007_p0;
wire   [7:0] grp_fu_1007_p1;
wire   [7:0] grp_fu_1007_p2;
wire   [7:0] grp_fu_1015_p0;
wire   [7:0] grp_fu_1015_p1;
wire   [7:0] grp_fu_1015_p2;
wire   [7:0] grp_fu_1023_p0;
wire   [7:0] grp_fu_1023_p1;
wire   [7:0] grp_fu_1023_p2;
wire   [7:0] grp_fu_1031_p0;
wire   [7:0] grp_fu_1031_p1;
wire   [7:0] grp_fu_1031_p2;
wire   [7:0] grp_fu_1039_p0;
wire   [7:0] grp_fu_1039_p1;
wire   [7:0] grp_fu_1039_p2;
wire   [7:0] grp_fu_1047_p0;
wire   [7:0] grp_fu_1047_p1;
wire   [7:0] grp_fu_1047_p2;
wire   [7:0] grp_fu_1055_p0;
wire   [7:0] grp_fu_1055_p1;
wire   [7:0] grp_fu_1055_p2;
wire   [7:0] grp_fu_1063_p0;
wire   [7:0] grp_fu_1063_p1;
wire   [7:0] grp_fu_1063_p2;
wire   [7:0] grp_fu_1071_p0;
wire   [7:0] grp_fu_1071_p1;
wire   [7:0] grp_fu_1071_p2;
wire   [7:0] grp_fu_1079_p0;
wire   [7:0] grp_fu_1079_p1;
wire   [7:0] grp_fu_1079_p2;
wire   [7:0] grp_fu_1087_p0;
wire   [7:0] grp_fu_1087_p1;
wire   [7:0] grp_fu_1087_p2;
wire   [7:0] grp_fu_1095_p0;
wire   [7:0] grp_fu_1095_p1;
wire   [7:0] grp_fu_1095_p2;
wire   [7:0] grp_fu_1103_p0;
wire   [7:0] grp_fu_1103_p1;
wire   [7:0] grp_fu_1103_p2;
reg    grp_fu_345_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_349_ce;
reg    grp_fu_353_ce;
reg    grp_fu_357_ce;
reg    grp_fu_361_ce;
reg    grp_fu_365_ce;
reg    grp_fu_369_ce;
reg    grp_fu_373_ce;
reg    grp_fu_377_ce;
reg   [31:0] grp_fu_1581_p0;
reg   [31:0] grp_fu_1581_p1;
reg    grp_fu_1581_ce;
reg   [31:0] grp_fu_1585_p0;
reg   [31:0] grp_fu_1585_p1;
reg    grp_fu_1585_ce;
reg   [20:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state21_blk;
wire   [15:0] grp_fu_1007_p00;
wire   [15:0] grp_fu_1015_p00;
wire   [15:0] grp_fu_1023_p00;
wire   [15:0] grp_fu_1031_p00;
wire   [15:0] grp_fu_1039_p00;
wire   [15:0] grp_fu_1047_p00;
wire   [15:0] grp_fu_1055_p00;
wire   [15:0] grp_fu_1063_p00;
wire   [15:0] grp_fu_1071_p00;
wire   [15:0] grp_fu_1079_p00;
wire   [15:0] grp_fu_1087_p00;
wire   [15:0] grp_fu_1095_p00;
wire   [15:0] grp_fu_1103_p00;
wire   [15:0] grp_fu_967_p00;
wire   [15:0] grp_fu_975_p00;
wire   [15:0] grp_fu_983_p00;
wire   [15:0] grp_fu_991_p00;
wire   [15:0] grp_fu_999_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start_reg = 1'b0;
#0 phi_mul_fu_102 = 16'd0;
#0 v114_fu_106 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_289(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_ready),.phi_mul(phi_mul_load_reg_1138),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1446),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_1451),.mul_ln199(mul_ln199_reg_1456),.mul_ln212(mul_ln212_reg_1461),.mul_ln225(mul_ln225_reg_1466),.mul_ln238(mul_ln238_reg_1471),.mul_ln251(mul_ln251_reg_1476),.mul_ln264(mul_ln264_reg_1481),.mul_ln277(mul_ln277_reg_1486),.cmp11(cmp11_reg_1179),.v120(reg_413),.v133(reg_419),.v144(reg_425),.v155(reg_431),.v166(reg_437),.v177(reg_443),.v188(reg_449),.v199(reg_455),.v210(reg_461),.grp_fu_1581_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_din0),.grp_fu_1581_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_din1),.grp_fu_1581_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_opcode),.grp_fu_1581_p_dout0(grp_fu_144_p_dout0),.grp_fu_1581_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_ce),.grp_fu_1585_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_din0),.grp_fu_1585_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_din1),.grp_fu_1585_p_dout0(grp_fu_148_p_dout0),.grp_fu_1585_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_317(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_ready),.phi_mul(phi_mul_load_reg_1138),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_1536),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_d1),.v225_q1(v225_q1),.mul_ln186_1(mul_ln186_1_reg_1541),.mul_ln199_1(mul_ln199_1_reg_1546),.mul_ln212_1(mul_ln212_1_reg_1551),.mul_ln225_1(mul_ln225_1_reg_1556),.mul_ln238_1(mul_ln238_1_reg_1561),.mul_ln251_1(mul_ln251_1_reg_1566),.mul_ln264_1(mul_ln264_1_reg_1571),.mul_ln277_1(mul_ln277_1_reg_1576),.cmp11(cmp11_reg_1179),.v120_1(reg_413),.v133_1(reg_419),.v144_1(reg_425),.v155_1(reg_431),.v166_1(reg_437),.v177_1(reg_443),.v188_1(reg_449),.v199_1(reg_455),.v210_1(reg_461),.grp_fu_1581_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_din0),.grp_fu_1581_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_din1),.grp_fu_1581_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_opcode),.grp_fu_1581_p_dout0(grp_fu_144_p_dout0),.grp_fu_1581_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_ce),.grp_fu_1585_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_din0),.grp_fu_1585_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_din1),.grp_fu_1585_p_dout0(grp_fu_148_p_dout0),.grp_fu_1585_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U58(.din0(mul_ln171_fu_833_p0),.din1(mul_ln171_fu_833_p1),.dout(mul_ln171_fu_833_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U59(.din0(mul_ln186_fu_838_p0),.din1(mul_ln186_fu_838_p1),.dout(mul_ln186_fu_838_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U60(.din0(mul_ln199_fu_843_p0),.din1(mul_ln199_fu_843_p1),.dout(mul_ln199_fu_843_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U61(.din0(mul_ln212_fu_848_p0),.din1(mul_ln212_fu_848_p1),.dout(mul_ln212_fu_848_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U62(.din0(mul_ln225_fu_853_p0),.din1(mul_ln225_fu_853_p1),.dout(mul_ln225_fu_853_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U63(.din0(mul_ln238_fu_858_p0),.din1(mul_ln238_fu_858_p1),.dout(mul_ln238_fu_858_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U64(.din0(mul_ln251_fu_863_p0),.din1(mul_ln251_fu_863_p1),.dout(mul_ln251_fu_863_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U65(.din0(mul_ln264_fu_868_p0),.din1(mul_ln264_fu_868_p1),.dout(mul_ln264_fu_868_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U66(.din0(mul_ln277_fu_873_p0),.din1(mul_ln277_fu_873_p1),.dout(mul_ln277_fu_873_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln171_1_fu_922_p0),.din1(mul_ln171_1_fu_922_p1),.dout(mul_ln171_1_fu_922_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln186_1_fu_927_p0),.din1(mul_ln186_1_fu_927_p1),.dout(mul_ln186_1_fu_927_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln199_1_fu_932_p0),.din1(mul_ln199_1_fu_932_p1),.dout(mul_ln199_1_fu_932_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln212_1_fu_937_p0),.din1(mul_ln212_1_fu_937_p1),.dout(mul_ln212_1_fu_937_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln225_1_fu_942_p0),.din1(mul_ln225_1_fu_942_p1),.dout(mul_ln225_1_fu_942_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln238_1_fu_947_p0),.din1(mul_ln238_1_fu_947_p1),.dout(mul_ln238_1_fu_947_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln251_1_fu_952_p0),.din1(mul_ln251_1_fu_952_p1),.dout(mul_ln251_1_fu_952_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln264_1_fu_957_p0),.din1(mul_ln264_1_fu_957_p1),.dout(mul_ln264_1_fu_957_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln277_1_fu_962_p0),.din1(mul_ln277_1_fu_962_p1),.dout(mul_ln277_1_fu_962_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_967_p0),.din1(grp_fu_967_p1),.din2(grp_fu_967_p2),.ce(1'b1),.dout(grp_fu_967_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_975_p0),.din1(grp_fu_975_p1),.din2(grp_fu_975_p2),.ce(1'b1),.dout(grp_fu_975_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_983_p0),.din1(grp_fu_983_p1),.din2(grp_fu_983_p2),.ce(1'b1),.dout(grp_fu_983_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_991_p0),.din1(grp_fu_991_p1),.din2(grp_fu_991_p2),.ce(1'b1),.dout(grp_fu_991_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_999_p0),.din1(grp_fu_999_p1),.din2(grp_fu_999_p2),.ce(1'b1),.dout(grp_fu_999_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1007_p0),.din1(grp_fu_1007_p1),.din2(grp_fu_1007_p2),.ce(1'b1),.dout(grp_fu_1007_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1015_p0),.din1(grp_fu_1015_p1),.din2(grp_fu_1015_p2),.ce(1'b1),.dout(grp_fu_1015_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1023_p0),.din1(grp_fu_1023_p1),.din2(grp_fu_1023_p2),.ce(1'b1),.dout(grp_fu_1023_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1031_p0),.din1(grp_fu_1031_p1),.din2(grp_fu_1031_p2),.ce(1'b1),.dout(grp_fu_1031_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1039_p0),.din1(grp_fu_1039_p1),.din2(grp_fu_1039_p2),.ce(1'b1),.dout(grp_fu_1039_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1047_p0),.din1(grp_fu_1047_p1),.din2(grp_fu_1047_p2),.ce(1'b1),.dout(grp_fu_1047_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1055_p0),.din1(grp_fu_1055_p1),.din2(grp_fu_1055_p2),.ce(1'b1),.dout(grp_fu_1055_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1063_p0),.din1(grp_fu_1063_p1),.din2(grp_fu_1063_p2),.ce(1'b1),.dout(grp_fu_1063_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1071_p0),.din1(grp_fu_1071_p1),.din2(grp_fu_1071_p2),.ce(1'b1),.dout(grp_fu_1071_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1079_p0),.din1(grp_fu_1079_p1),.din2(grp_fu_1079_p2),.ce(1'b1),.dout(grp_fu_1079_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1087_p0),.din1(grp_fu_1087_p1),.din2(grp_fu_1087_p2),.ce(1'b1),.dout(grp_fu_1087_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1095_p0),.din1(grp_fu_1095_p1),.din2(grp_fu_1095_p2),.ce(1'b1),.dout(grp_fu_1095_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1103_p0),.din1(grp_fu_1103_p1),.din2(grp_fu_1103_p2),.ce(1'b1),.dout(grp_fu_1103_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start_reg <= 1'b0;
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
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_102 <= 16'd0;
    end else if (((icmp_ln169_fu_511_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_102 <= add_ln168_1_reg_1144;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_106 <= 8'd0;
    end else if (((icmp_ln169_fu_511_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_106 <= add_ln168_reg_1152;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln168_fu_489_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_277 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_277 <= add_ln169_1_reg_1200;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1144 <= add_ln168_1_fu_483_p2;
        add_ln168_reg_1152 <= add_ln168_fu_495_p2;
        cmp11_reg_1179 <= cmp11_fu_505_p2;
        phi_mul_load_reg_1138 <= phi_mul_fu_102;
        zext_ln168_reg_1157[7 : 0] <= zext_ln168_fu_501_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_1200 <= add_ln169_1_fu_543_p2;
        tmp_1_cast_reg_1194[7 : 1] <= tmp_1_cast_fu_539_p1[7 : 1];
        v115_cast_reg_1188[7 : 0] <= v115_cast_fu_517_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln169_cast353_reg_1267[7 : 0] <= add_ln169_cast353_fu_649_p1[7 : 0];
        p_cast352_reg_1261[7 : 0] <= p_cast352_fu_639_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_1536 <= mul_ln171_1_fu_922_p2;
        mul_ln186_1_reg_1541 <= mul_ln186_1_fu_927_p2;
        mul_ln199_1_reg_1546 <= mul_ln199_1_fu_932_p2;
        mul_ln212_1_reg_1551 <= mul_ln212_1_fu_937_p2;
        mul_ln225_1_reg_1556 <= mul_ln225_1_fu_942_p2;
        mul_ln238_1_reg_1561 <= mul_ln238_1_fu_947_p2;
        mul_ln251_1_reg_1566 <= mul_ln251_1_fu_952_p2;
        mul_ln264_1_reg_1571 <= mul_ln264_1_fu_957_p2;
        mul_ln277_1_reg_1576 <= mul_ln277_1_fu_962_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1446 <= mul_ln171_fu_833_p2;
        mul_ln186_reg_1451 <= mul_ln186_fu_838_p2;
        mul_ln199_reg_1456 <= mul_ln199_fu_843_p2;
        mul_ln212_reg_1461 <= mul_ln212_fu_848_p2;
        mul_ln225_reg_1466 <= mul_ln225_fu_853_p2;
        mul_ln238_reg_1471 <= mul_ln238_fu_858_p2;
        mul_ln251_reg_1476 <= mul_ln251_fu_863_p2;
        mul_ln264_reg_1481 <= mul_ln264_fu_868_p2;
        mul_ln277_reg_1486 <= mul_ln277_fu_873_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast346_reg_1205[7 : 0] <= p_cast346_fu_563_p1[7 : 0];
        p_cast347_reg_1211[7 : 0] <= p_cast347_fu_573_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast348_reg_1217[7 : 0] <= p_cast348_fu_583_p1[7 : 0];
        p_cast349_reg_1223[7 : 0] <= p_cast349_fu_593_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast350_reg_1239[7 : 0] <= p_cast350_fu_611_p1[7 : 0];
        p_cast351_reg_1245[7 : 0] <= p_cast351_fu_621_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_cast354_reg_1283[7 : 0] <= p_cast354_fu_667_p1[7 : 0];
        p_cast355_reg_1289[7 : 0] <= p_cast355_fu_677_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_cast356_reg_1305[7 : 0] <= p_cast356_fu_695_p1[7 : 0];
        p_cast357_reg_1311[7 : 0] <= p_cast357_fu_705_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_cast358_reg_1327[7 : 0] <= p_cast358_fu_723_p1[7 : 0];
        p_cast359_reg_1333[7 : 0] <= p_cast359_fu_733_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        p_cast360_reg_1359[7 : 0] <= p_cast360_fu_751_p1[7 : 0];
        p_cast361_reg_1365[7 : 0] <= p_cast361_fu_761_p1[7 : 0];
        v226_load_8_reg_1339 <= v226_q1;
        v226_load_9_reg_1344 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_381 <= v226_q1;
        reg_385 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_389 <= v226_q1;
        reg_393 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_397 <= v226_q1;
        reg_401 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_405 <= v226_q1;
        reg_409 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_413 <= grp_fu_152_p_dout0;
        reg_419 <= grp_fu_156_p_dout0;
        reg_425 <= grp_fu_160_p_dout0;
        reg_431 <= grp_fu_164_p_dout0;
        reg_437 <= grp_fu_168_p_dout0;
        reg_443 <= grp_fu_172_p_dout0;
        reg_449 <= grp_fu_176_p_dout0;
        reg_455 <= grp_fu_180_p_dout0;
        reg_461 <= grp_fu_184_p_dout0;
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
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
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
    if ((((icmp_ln168_fu_489_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln168_fu_489_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1581_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1581_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_ce;
    end else begin
        grp_fu_1581_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1581_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1581_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_din0;
    end else begin
        grp_fu_1581_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1581_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1581_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1581_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1581_p_din1;
    end else begin
        grp_fu_1581_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1585_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1585_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_ce;
    end else begin
        grp_fu_1585_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1585_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1585_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_din0;
    end else begin
        grp_fu_1585_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1585_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_grp_fu_1585_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1585_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_grp_fu_1585_p_din1;
    end else begin
        grp_fu_1585_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_345_ce = 1'b1;
    end else begin
        grp_fu_345_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_345_p0 = v119_1_fu_878_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_345_p0 = v119_fu_765_p1;
    end else begin
        grp_fu_345_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_349_ce = 1'b1;
    end else begin
        grp_fu_349_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_349_p0 = v132_1_fu_882_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_349_p0 = v132_fu_770_p1;
    end else begin
        grp_fu_349_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_353_ce = 1'b1;
    end else begin
        grp_fu_353_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_353_p0 = v143_1_fu_887_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_353_p0 = v143_fu_775_p1;
    end else begin
        grp_fu_353_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_357_ce = 1'b1;
    end else begin
        grp_fu_357_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_357_p0 = v154_1_fu_892_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_357_p0 = v154_fu_780_p1;
    end else begin
        grp_fu_357_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_361_ce = 1'b1;
    end else begin
        grp_fu_361_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_361_p0 = v165_1_fu_897_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_361_p0 = v165_fu_785_p1;
    end else begin
        grp_fu_361_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_365_ce = 1'b1;
    end else begin
        grp_fu_365_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_365_p0 = v176_1_fu_902_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_365_p0 = v176_fu_790_p1;
    end else begin
        grp_fu_365_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_369_ce = 1'b1;
    end else begin
        grp_fu_369_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_369_p0 = v187_1_fu_907_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_369_p0 = v187_fu_795_p1;
    end else begin
        grp_fu_369_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_373_ce = 1'b1;
    end else begin
        grp_fu_373_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_373_p0 = v198_1_fu_912_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_373_p0 = v198_fu_800_p1;
    end else begin
        grp_fu_373_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_377_ce = 1'b1;
    end else begin
        grp_fu_377_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_377_p0 = v209_1_fu_917_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_377_p0 = v209_fu_805_p1;
    end else begin
        grp_fu_377_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address0_local = p_cast378_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address0_local = p_cast376_fu_821_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address0_local = p_cast374_fu_813_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address0_local = p_cast372_fu_741_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast370_fu_713_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast368_fu_685_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast366_fu_657_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast364_fu_629_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast_fu_601_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address1_local = p_cast377_fu_825_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address1_local = p_cast375_fu_817_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address1_local = p_cast373_fu_809_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address1_local = p_cast371_fu_737_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast369_fu_709_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast367_fu_681_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast365_fu_653_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast363_fu_625_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address1_local = p_cast362_fu_597_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_489_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_489_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln168_fu_489_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln168_fu_489_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_511_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_1_fu_483_p2 = (phi_mul_fu_102 + 16'd190);
assign add_ln168_fu_495_p2 = (v114_fu_106 + 8'd1);
assign add_ln169_1_fu_543_p2 = (v115_reg_277 + 8'd18);
assign add_ln169_cast353_fu_649_p1 = add_ln169_fu_643_p2;
assign add_ln169_fu_643_p2 = (v115_reg_277 + 8'd9);
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_489_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_505_p2 = ((v114_fu_106 == 8'd0) ? 1'b1 : 1'b0);
assign empty_17_fu_557_p2 = (v115_reg_277 + 8'd2);
assign empty_20_fu_567_p2 = (v115_reg_277 + 8'd3);
assign empty_23_fu_577_p2 = (v115_reg_277 + 8'd4);
assign empty_26_fu_587_p2 = (v115_reg_277 + 8'd5);
assign empty_29_fu_605_p2 = (v115_reg_277 + 8'd6);
assign empty_32_fu_615_p2 = (v115_reg_277 + 8'd7);
assign empty_35_fu_633_p2 = (v115_reg_277 + 8'd8);
assign empty_40_fu_661_p2 = (v115_reg_277 + 8'd10);
assign empty_43_fu_671_p2 = (v115_reg_277 + 8'd11);
assign empty_46_fu_689_p2 = (v115_reg_277 + 8'd12);
assign empty_49_fu_699_p2 = (v115_reg_277 + 8'd13);
assign empty_52_fu_717_p2 = (v115_reg_277 + 8'd14);
assign empty_55_fu_727_p2 = (v115_reg_277 + 8'd15);
assign empty_58_fu_745_p2 = (v115_reg_277 + 8'd16);
assign empty_61_fu_755_p2 = (v115_reg_277 + 8'd17);
assign grp_fu_1007_p0 = grp_fu_1007_p00;
assign grp_fu_1007_p00 = empty_26_fu_587_p2;
assign grp_fu_1007_p1 = 16'd210;
assign grp_fu_1007_p2 = zext_ln168_reg_1157;
assign grp_fu_1015_p0 = grp_fu_1015_p00;
assign grp_fu_1015_p00 = empty_29_fu_605_p2;
assign grp_fu_1015_p1 = 16'd210;
assign grp_fu_1015_p2 = zext_ln168_reg_1157;
assign grp_fu_1023_p0 = grp_fu_1023_p00;
assign grp_fu_1023_p00 = empty_32_fu_615_p2;
assign grp_fu_1023_p1 = 16'd210;
assign grp_fu_1023_p2 = zext_ln168_reg_1157;
assign grp_fu_1031_p0 = grp_fu_1031_p00;
assign grp_fu_1031_p00 = empty_35_fu_633_p2;
assign grp_fu_1031_p1 = 16'd210;
assign grp_fu_1031_p2 = zext_ln168_reg_1157;
assign grp_fu_1039_p0 = grp_fu_1039_p00;
assign grp_fu_1039_p00 = add_ln169_fu_643_p2;
assign grp_fu_1039_p1 = 16'd210;
assign grp_fu_1039_p2 = zext_ln168_reg_1157;
assign grp_fu_1047_p0 = grp_fu_1047_p00;
assign grp_fu_1047_p00 = empty_40_fu_661_p2;
assign grp_fu_1047_p1 = 16'd210;
assign grp_fu_1047_p2 = zext_ln168_reg_1157;
assign grp_fu_1055_p0 = grp_fu_1055_p00;
assign grp_fu_1055_p00 = empty_43_fu_671_p2;
assign grp_fu_1055_p1 = 16'd210;
assign grp_fu_1055_p2 = zext_ln168_reg_1157;
assign grp_fu_1063_p0 = grp_fu_1063_p00;
assign grp_fu_1063_p00 = empty_46_fu_689_p2;
assign grp_fu_1063_p1 = 16'd210;
assign grp_fu_1063_p2 = zext_ln168_reg_1157;
assign grp_fu_1071_p0 = grp_fu_1071_p00;
assign grp_fu_1071_p00 = empty_49_fu_699_p2;
assign grp_fu_1071_p1 = 16'd210;
assign grp_fu_1071_p2 = zext_ln168_reg_1157;
assign grp_fu_1079_p0 = grp_fu_1079_p00;
assign grp_fu_1079_p00 = empty_52_fu_717_p2;
assign grp_fu_1079_p1 = 16'd210;
assign grp_fu_1079_p2 = zext_ln168_reg_1157;
assign grp_fu_1087_p0 = grp_fu_1087_p00;
assign grp_fu_1087_p00 = empty_55_fu_727_p2;
assign grp_fu_1087_p1 = 16'd210;
assign grp_fu_1087_p2 = zext_ln168_reg_1157;
assign grp_fu_1095_p0 = grp_fu_1095_p00;
assign grp_fu_1095_p00 = empty_58_fu_745_p2;
assign grp_fu_1095_p1 = 16'd210;
assign grp_fu_1095_p2 = zext_ln168_reg_1157;
assign grp_fu_1103_p0 = grp_fu_1103_p00;
assign grp_fu_1103_p00 = empty_61_fu_755_p2;
assign grp_fu_1103_p1 = 16'd210;
assign grp_fu_1103_p2 = zext_ln168_reg_1157;
assign grp_fu_144_p_ce = grp_fu_1581_ce;
assign grp_fu_144_p_din0 = grp_fu_1581_p0;
assign grp_fu_144_p_din1 = grp_fu_1581_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = grp_fu_1585_ce;
assign grp_fu_148_p_din0 = grp_fu_1585_p0;
assign grp_fu_148_p_din1 = grp_fu_1585_p1;
assign grp_fu_152_p_ce = grp_fu_345_ce;
assign grp_fu_152_p_din0 = grp_fu_345_p0;
assign grp_fu_152_p_din1 = v113;
assign grp_fu_156_p_ce = grp_fu_349_ce;
assign grp_fu_156_p_din0 = grp_fu_349_p0;
assign grp_fu_156_p_din1 = v113;
assign grp_fu_160_p_ce = grp_fu_353_ce;
assign grp_fu_160_p_din0 = grp_fu_353_p0;
assign grp_fu_160_p_din1 = v113;
assign grp_fu_164_p_ce = grp_fu_357_ce;
assign grp_fu_164_p_din0 = grp_fu_357_p0;
assign grp_fu_164_p_din1 = v113;
assign grp_fu_168_p_ce = grp_fu_361_ce;
assign grp_fu_168_p_din0 = grp_fu_361_p0;
assign grp_fu_168_p_din1 = v113;
assign grp_fu_172_p_ce = grp_fu_365_ce;
assign grp_fu_172_p_din0 = grp_fu_365_p0;
assign grp_fu_172_p_din1 = v113;
assign grp_fu_176_p_ce = grp_fu_369_ce;
assign grp_fu_176_p_din0 = grp_fu_369_p0;
assign grp_fu_176_p_din1 = v113;
assign grp_fu_180_p_ce = grp_fu_373_ce;
assign grp_fu_180_p_din0 = grp_fu_373_p0;
assign grp_fu_180_p_din1 = v113;
assign grp_fu_184_p_ce = grp_fu_377_ce;
assign grp_fu_184_p_din0 = grp_fu_377_p0;
assign grp_fu_184_p_din1 = v113;
assign grp_fu_967_p0 = grp_fu_967_p00;
assign grp_fu_967_p00 = v115_reg_277;
assign grp_fu_967_p1 = 16'd210;
assign grp_fu_967_p2 = zext_ln168_reg_1157;
assign grp_fu_975_p0 = grp_fu_975_p00;
assign grp_fu_975_p00 = tmp_1_fu_531_p3;
assign grp_fu_975_p1 = 16'd210;
assign grp_fu_975_p2 = zext_ln168_reg_1157;
assign grp_fu_983_p0 = grp_fu_983_p00;
assign grp_fu_983_p00 = empty_17_fu_557_p2;
assign grp_fu_983_p1 = 16'd210;
assign grp_fu_983_p2 = zext_ln168_reg_1157;
assign grp_fu_991_p0 = grp_fu_991_p00;
assign grp_fu_991_p00 = empty_20_fu_567_p2;
assign grp_fu_991_p1 = 16'd210;
assign grp_fu_991_p2 = zext_ln168_reg_1157;
assign grp_fu_999_p0 = grp_fu_999_p00;
assign grp_fu_999_p00 = empty_23_fu_577_p2;
assign grp_fu_999_p1 = 16'd210;
assign grp_fu_999_p2 = zext_ln168_reg_1157;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_317_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_289_ap_start_reg;
assign icmp_ln168_fu_489_p2 = ((v114_fu_106 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_511_p2 = ((v115_reg_277 < 8'd180) ? 1'b1 : 1'b0);
assign mul_ln171_1_fu_922_p0 = add_ln169_cast353_reg_1267;
assign mul_ln171_1_fu_922_p1 = 16'd190;
assign mul_ln171_fu_833_p0 = v115_cast_reg_1188;
assign mul_ln171_fu_833_p1 = 16'd190;
assign mul_ln186_1_fu_927_p0 = p_cast354_reg_1283;
assign mul_ln186_1_fu_927_p1 = 16'd190;
assign mul_ln186_fu_838_p0 = tmp_1_cast_reg_1194;
assign mul_ln186_fu_838_p1 = 16'd190;
assign mul_ln199_1_fu_932_p0 = p_cast355_reg_1289;
assign mul_ln199_1_fu_932_p1 = 16'd190;
assign mul_ln199_fu_843_p0 = p_cast346_reg_1205;
assign mul_ln199_fu_843_p1 = 16'd190;
assign mul_ln212_1_fu_937_p0 = p_cast356_reg_1305;
assign mul_ln212_1_fu_937_p1 = 16'd190;
assign mul_ln212_fu_848_p0 = p_cast347_reg_1211;
assign mul_ln212_fu_848_p1 = 16'd190;
assign mul_ln225_1_fu_942_p0 = p_cast357_reg_1311;
assign mul_ln225_1_fu_942_p1 = 16'd190;
assign mul_ln225_fu_853_p0 = p_cast348_reg_1217;
assign mul_ln225_fu_853_p1 = 16'd190;
assign mul_ln238_1_fu_947_p0 = p_cast358_reg_1327;
assign mul_ln238_1_fu_947_p1 = 16'd190;
assign mul_ln238_fu_858_p0 = p_cast349_reg_1223;
assign mul_ln238_fu_858_p1 = 16'd190;
assign mul_ln251_1_fu_952_p0 = p_cast359_reg_1333;
assign mul_ln251_1_fu_952_p1 = 16'd190;
assign mul_ln251_fu_863_p0 = p_cast350_reg_1239;
assign mul_ln251_fu_863_p1 = 16'd190;
assign mul_ln264_1_fu_957_p0 = p_cast360_reg_1359;
assign mul_ln264_1_fu_957_p1 = 16'd190;
assign mul_ln264_fu_868_p0 = p_cast351_reg_1245;
assign mul_ln264_fu_868_p1 = 16'd190;
assign mul_ln277_1_fu_962_p0 = p_cast361_reg_1365;
assign mul_ln277_1_fu_962_p1 = 16'd190;
assign mul_ln277_fu_873_p0 = p_cast352_reg_1261;
assign mul_ln277_fu_873_p1 = 16'd190;
assign p_cast346_fu_563_p1 = empty_17_fu_557_p2;
assign p_cast347_fu_573_p1 = empty_20_fu_567_p2;
assign p_cast348_fu_583_p1 = empty_23_fu_577_p2;
assign p_cast349_fu_593_p1 = empty_26_fu_587_p2;
assign p_cast350_fu_611_p1 = empty_29_fu_605_p2;
assign p_cast351_fu_621_p1 = empty_32_fu_615_p2;
assign p_cast352_fu_639_p1 = empty_35_fu_633_p2;
assign p_cast354_fu_667_p1 = empty_40_fu_661_p2;
assign p_cast355_fu_677_p1 = empty_43_fu_671_p2;
assign p_cast356_fu_695_p1 = empty_46_fu_689_p2;
assign p_cast357_fu_705_p1 = empty_49_fu_699_p2;
assign p_cast358_fu_723_p1 = empty_52_fu_717_p2;
assign p_cast359_fu_733_p1 = empty_55_fu_727_p2;
assign p_cast360_fu_751_p1 = empty_58_fu_745_p2;
assign p_cast361_fu_761_p1 = empty_61_fu_755_p2;
assign p_cast362_fu_597_p1 = grp_fu_967_p3;
assign p_cast363_fu_625_p1 = grp_fu_983_p3;
assign p_cast364_fu_629_p1 = grp_fu_991_p3;
assign p_cast365_fu_653_p1 = grp_fu_999_p3;
assign p_cast366_fu_657_p1 = grp_fu_1007_p3;
assign p_cast367_fu_681_p1 = grp_fu_1015_p3;
assign p_cast368_fu_685_p1 = grp_fu_1023_p3;
assign p_cast369_fu_709_p1 = grp_fu_1031_p3;
assign p_cast370_fu_713_p1 = grp_fu_1039_p3;
assign p_cast371_fu_737_p1 = grp_fu_1047_p3;
assign p_cast372_fu_741_p1 = grp_fu_1055_p3;
assign p_cast373_fu_809_p1 = grp_fu_1063_p3;
assign p_cast374_fu_813_p1 = grp_fu_1071_p3;
assign p_cast375_fu_817_p1 = grp_fu_1079_p3;
assign p_cast376_fu_821_p1 = grp_fu_1087_p3;
assign p_cast377_fu_825_p1 = grp_fu_1095_p3;
assign p_cast378_fu_829_p1 = grp_fu_1103_p3;
assign p_cast_fu_601_p1 = grp_fu_975_p3;
assign tmp_1_cast_fu_539_p1 = tmp_1_fu_531_p3;
assign tmp_1_fu_531_p3 = {{tmp_fu_521_p4}, {1'd1}};
assign tmp_fu_521_p4 = {{v115_reg_277[7:1]}};
assign v115_cast_fu_517_p1 = v115_reg_277;
assign v119_1_fu_878_p1 = v226_load_9_reg_1344;
assign v119_fu_765_p1 = reg_381;
assign v132_1_fu_882_p1 = reg_381;
assign v132_fu_770_p1 = reg_385;
assign v143_1_fu_887_p1 = reg_385;
assign v143_fu_775_p1 = reg_389;
assign v154_1_fu_892_p1 = reg_389;
assign v154_fu_780_p1 = reg_393;
assign v165_1_fu_897_p1 = reg_393;
assign v165_fu_785_p1 = reg_397;
assign v176_1_fu_902_p1 = reg_397;
assign v176_fu_790_p1 = reg_401;
assign v187_1_fu_907_p1 = reg_401;
assign v187_fu_795_p1 = reg_405;
assign v198_1_fu_912_p1 = reg_405;
assign v198_fu_800_p1 = reg_409;
assign v209_1_fu_917_p1 = reg_409;
assign v209_fu_805_p1 = v226_load_8_reg_1339;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_501_p1 = v114_fu_106;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1157[15:8] <= 8'b00000000;
    v115_cast_reg_1188[15:8] <= 8'b00000000;
    tmp_1_cast_reg_1194[0] <= 1'b1;
    tmp_1_cast_reg_1194[15:8] <= 8'b00000000;
    p_cast346_reg_1205[15:8] <= 8'b00000000;
    p_cast347_reg_1211[15:8] <= 8'b00000000;
    p_cast348_reg_1217[15:8] <= 8'b00000000;
    p_cast349_reg_1223[15:8] <= 8'b00000000;
    p_cast350_reg_1239[15:8] <= 8'b00000000;
    p_cast351_reg_1245[15:8] <= 8'b00000000;
    p_cast352_reg_1261[15:8] <= 8'b00000000;
    add_ln169_cast353_reg_1267[15:8] <= 8'b00000000;
    p_cast354_reg_1283[15:8] <= 8'b00000000;
    p_cast355_reg_1289[15:8] <= 8'b00000000;
    p_cast356_reg_1305[15:8] <= 8'b00000000;
    p_cast357_reg_1311[15:8] <= 8'b00000000;
    p_cast358_reg_1327[15:8] <= 8'b00000000;
    p_cast359_reg_1333[15:8] <= 8'b00000000;
    p_cast360_reg_1359[15:8] <= 8'b00000000;
    p_cast361_reg_1365[15:8] <= 8'b00000000;
end
endmodule 