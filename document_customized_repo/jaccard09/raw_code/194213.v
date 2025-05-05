module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
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
output  [13:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [13:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [13:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [13:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [13:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [13:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [13:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [13:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
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
wire   [0:0] icmp_ln168_fu_938_p2;
reg   [31:0] reg_862;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_868;
reg   [31:0] reg_874;
reg   [31:0] reg_880;
reg   [31:0] reg_886;
reg   [31:0] reg_892;
reg   [31:0] reg_898;
reg   [31:0] reg_904;
reg   [31:0] reg_910;
reg   [15:0] phi_mul_load_reg_2342;
wire   [15:0] add_ln168_1_fu_932_p2;
reg   [15:0] add_ln168_1_reg_2348;
wire   [7:0] add_ln168_fu_944_p2;
reg   [7:0] add_ln168_reg_2356;
wire   [1:0] trunc_ln168_fu_950_p1;
reg   [1:0] trunc_ln168_reg_2361;
wire   [13:0] zext_ln168_fu_964_p1;
reg   [13:0] zext_ln168_reg_2383;
wire   [0:0] cmp11_fu_968_p2;
reg   [0:0] cmp11_reg_2405;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_1_fu_994_p3;
reg   [7:0] tmp_1_reg_2419;
wire   [7:0] add_ln169_1_fu_1006_p2;
reg   [7:0] add_ln169_1_reg_2429;
wire   [7:0] empty_30_fu_1020_p2;
reg   [7:0] empty_30_reg_2434;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_37_fu_1030_p2;
reg   [7:0] empty_37_reg_2444;
wire   [7:0] empty_44_fu_1040_p2;
reg   [7:0] empty_44_reg_2454;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_51_fu_1050_p2;
reg   [7:0] empty_51_reg_2464;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_58_fu_1074_p2;
reg   [7:0] empty_58_reg_2514;
wire   [7:0] empty_65_fu_1084_p2;
reg   [7:0] empty_65_reg_2524;
wire   [31:0] v_fu_1110_p11;
reg   [31:0] v_reg_2534;
wire    ap_CS_fsm_state7;
wire   [31:0] v2_fu_1149_p11;
reg   [31:0] v2_reg_2539;
wire   [7:0] empty_72_fu_1186_p2;
reg   [7:0] empty_72_reg_2584;
wire   [7:0] add_ln169_fu_1196_p2;
reg   [7:0] add_ln169_reg_2594;
wire   [31:0] v4_fu_1222_p11;
reg   [31:0] v4_reg_2604;
wire    ap_CS_fsm_state8;
wire   [31:0] v6_fu_1261_p11;
reg   [31:0] v6_reg_2609;
wire   [7:0] empty_85_fu_1298_p2;
reg   [7:0] empty_85_reg_2654;
wire   [7:0] empty_92_fu_1308_p2;
reg   [7:0] empty_92_reg_2664;
wire   [31:0] v8_fu_1334_p11;
reg   [31:0] v8_reg_2674;
wire    ap_CS_fsm_state9;
wire   [31:0] v10_fu_1373_p11;
reg   [31:0] v10_reg_2679;
wire   [7:0] empty_99_fu_1410_p2;
reg   [7:0] empty_99_reg_2724;
wire   [7:0] empty_106_fu_1420_p2;
reg   [7:0] empty_106_reg_2734;
wire   [31:0] v12_fu_1446_p11;
reg   [31:0] v12_reg_2744;
wire    ap_CS_fsm_state10;
wire   [31:0] v14_fu_1485_p11;
reg   [31:0] v14_reg_2749;
wire   [7:0] empty_113_fu_1522_p2;
reg   [7:0] empty_113_reg_2794;
wire   [7:0] empty_120_fu_1532_p2;
reg   [7:0] empty_120_reg_2804;
wire   [31:0] v16_fu_1558_p11;
reg   [31:0] v16_reg_2814;
wire    ap_CS_fsm_state11;
wire   [31:0] v119_1_fu_1597_p11;
reg   [31:0] v119_1_reg_2819;
wire   [7:0] empty_127_fu_1634_p2;
reg   [7:0] empty_127_reg_2864;
wire   [7:0] empty_134_fu_1644_p2;
reg   [7:0] empty_134_reg_2874;
wire   [31:0] v132_1_fu_1670_p11;
reg   [31:0] v132_1_reg_2884;
wire    ap_CS_fsm_state12;
wire   [31:0] v143_1_fu_1709_p11;
reg   [31:0] v143_1_reg_2889;
wire   [31:0] v154_1_fu_1762_p11;
reg   [31:0] v154_1_reg_2934;
wire    ap_CS_fsm_state13;
wire   [31:0] v165_1_fu_1801_p11;
reg   [31:0] v165_1_reg_2939;
wire   [31:0] v176_1_fu_1854_p11;
reg   [31:0] v176_1_reg_2984;
wire    ap_CS_fsm_state14;
wire   [31:0] v187_1_fu_1893_p11;
reg   [31:0] v187_1_reg_2989;
wire   [15:0] mul_ln171_fu_1934_p2;
reg   [15:0] mul_ln171_reg_3034;
wire   [15:0] mul_ln186_fu_1943_p2;
reg   [15:0] mul_ln186_reg_3039;
wire   [15:0] mul_ln199_fu_1952_p2;
reg   [15:0] mul_ln199_reg_3044;
wire   [15:0] mul_ln212_fu_1961_p2;
reg   [15:0] mul_ln212_reg_3049;
wire   [15:0] mul_ln225_fu_1970_p2;
reg   [15:0] mul_ln225_reg_3054;
wire   [15:0] mul_ln238_fu_1979_p2;
reg   [15:0] mul_ln238_reg_3059;
wire   [15:0] mul_ln251_fu_1988_p2;
reg   [15:0] mul_ln251_reg_3064;
wire   [15:0] mul_ln264_fu_1997_p2;
reg   [15:0] mul_ln264_reg_3069;
wire   [15:0] mul_ln277_fu_2006_p2;
reg   [15:0] mul_ln277_reg_3074;
wire   [31:0] v198_1_fu_2028_p11;
reg   [31:0] v198_1_reg_3079;
wire   [31:0] v209_1_fu_2067_p11;
reg   [31:0] v209_1_reg_3084;
wire   [15:0] mul_ln171_1_fu_2093_p2;
reg   [15:0] mul_ln171_1_reg_3089;
wire   [15:0] mul_ln186_1_fu_2102_p2;
reg   [15:0] mul_ln186_1_reg_3094;
wire   [15:0] mul_ln199_1_fu_2111_p2;
reg   [15:0] mul_ln199_1_reg_3099;
wire   [15:0] mul_ln212_1_fu_2120_p2;
reg   [15:0] mul_ln212_1_reg_3104;
wire   [15:0] mul_ln225_1_fu_2129_p2;
reg   [15:0] mul_ln225_1_reg_3109;
wire   [15:0] mul_ln238_1_fu_2138_p2;
reg   [15:0] mul_ln238_1_reg_3114;
wire   [15:0] mul_ln251_1_fu_2147_p2;
reg   [15:0] mul_ln251_1_reg_3119;
wire   [15:0] mul_ln264_1_fu_2156_p2;
reg   [15:0] mul_ln264_1_reg_3124;
wire   [15:0] mul_ln277_1_fu_2165_p2;
reg   [15:0] mul_ln277_1_reg_3129;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_ce;
reg   [7:0] v115_reg_758;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast704_fu_1060_p1;
wire   [63:0] p_cast_fu_1067_p1;
wire   [63:0] p_cast705_fu_1172_p1;
wire   [63:0] p_cast706_fu_1179_p1;
wire   [63:0] p_cast707_fu_1284_p1;
wire   [63:0] p_cast708_fu_1291_p1;
wire   [63:0] p_cast709_fu_1396_p1;
wire   [63:0] p_cast710_fu_1403_p1;
wire   [63:0] p_cast711_fu_1508_p1;
wire   [63:0] p_cast712_fu_1515_p1;
wire   [63:0] p_cast713_fu_1620_p1;
wire   [63:0] p_cast714_fu_1627_p1;
wire   [63:0] p_cast715_fu_1732_p1;
wire   [63:0] p_cast716_fu_1739_p1;
wire   [63:0] p_cast717_fu_1824_p1;
wire   [63:0] p_cast718_fu_1831_p1;
wire   [63:0] p_cast719_fu_1916_p1;
wire   [63:0] p_cast720_fu_1923_p1;
reg   [15:0] phi_mul_fu_124;
wire   [0:0] icmp_ln169_fu_974_p2;
reg   [7:0] v114_fu_128;
reg    v236_write_local;
reg    v226_0_ce1_local;
reg   [13:0] v226_0_address1_local;
reg    v226_0_ce0_local;
reg   [13:0] v226_0_address0_local;
reg    v226_1_ce1_local;
reg   [13:0] v226_1_address1_local;
reg    v226_1_ce0_local;
reg   [13:0] v226_1_address0_local;
reg    v226_2_ce1_local;
reg   [13:0] v226_2_address1_local;
reg    v226_2_ce0_local;
reg   [13:0] v226_2_address0_local;
reg    v226_3_ce1_local;
reg   [13:0] v226_3_address1_local;
reg    v226_3_ce0_local;
reg   [13:0] v226_3_address0_local;
reg   [31:0] grp_fu_826_p0;
reg   [31:0] grp_fu_830_p0;
reg   [31:0] grp_fu_834_p0;
reg   [31:0] grp_fu_838_p0;
reg   [31:0] grp_fu_842_p0;
reg   [31:0] grp_fu_846_p0;
reg   [31:0] grp_fu_850_p0;
reg   [31:0] grp_fu_854_p0;
reg   [31:0] grp_fu_858_p0;
wire   [5:0] lshr_ln_fu_954_p4;
wire   [6:0] tmp_fu_984_p4;
wire   [13:0] grp_fu_2171_p3;
wire   [13:0] grp_fu_2179_p3;
wire   [31:0] v_fu_1110_p2;
wire   [31:0] v_fu_1110_p4;
wire   [31:0] v_fu_1110_p6;
wire   [31:0] v_fu_1110_p8;
wire   [31:0] v_fu_1110_p9;
wire   [31:0] v2_fu_1149_p2;
wire   [31:0] v2_fu_1149_p4;
wire   [31:0] v2_fu_1149_p6;
wire   [31:0] v2_fu_1149_p8;
wire   [31:0] v2_fu_1149_p9;
wire   [13:0] grp_fu_2187_p3;
wire   [13:0] grp_fu_2195_p3;
wire   [31:0] v4_fu_1222_p2;
wire   [31:0] v4_fu_1222_p4;
wire   [31:0] v4_fu_1222_p6;
wire   [31:0] v4_fu_1222_p8;
wire   [31:0] v4_fu_1222_p9;
wire   [31:0] v6_fu_1261_p2;
wire   [31:0] v6_fu_1261_p4;
wire   [31:0] v6_fu_1261_p6;
wire   [31:0] v6_fu_1261_p8;
wire   [31:0] v6_fu_1261_p9;
wire   [13:0] grp_fu_2203_p3;
wire   [13:0] grp_fu_2211_p3;
wire   [31:0] v8_fu_1334_p2;
wire   [31:0] v8_fu_1334_p4;
wire   [31:0] v8_fu_1334_p6;
wire   [31:0] v8_fu_1334_p8;
wire   [31:0] v8_fu_1334_p9;
wire   [31:0] v10_fu_1373_p2;
wire   [31:0] v10_fu_1373_p4;
wire   [31:0] v10_fu_1373_p6;
wire   [31:0] v10_fu_1373_p8;
wire   [31:0] v10_fu_1373_p9;
wire   [13:0] grp_fu_2219_p3;
wire   [13:0] grp_fu_2227_p3;
wire   [31:0] v12_fu_1446_p2;
wire   [31:0] v12_fu_1446_p4;
wire   [31:0] v12_fu_1446_p6;
wire   [31:0] v12_fu_1446_p8;
wire   [31:0] v12_fu_1446_p9;
wire   [31:0] v14_fu_1485_p2;
wire   [31:0] v14_fu_1485_p4;
wire   [31:0] v14_fu_1485_p6;
wire   [31:0] v14_fu_1485_p8;
wire   [31:0] v14_fu_1485_p9;
wire   [13:0] grp_fu_2235_p3;
wire   [13:0] grp_fu_2243_p3;
wire   [31:0] v16_fu_1558_p2;
wire   [31:0] v16_fu_1558_p4;
wire   [31:0] v16_fu_1558_p6;
wire   [31:0] v16_fu_1558_p8;
wire   [31:0] v16_fu_1558_p9;
wire   [31:0] v119_1_fu_1597_p2;
wire   [31:0] v119_1_fu_1597_p4;
wire   [31:0] v119_1_fu_1597_p6;
wire   [31:0] v119_1_fu_1597_p8;
wire   [31:0] v119_1_fu_1597_p9;
wire   [13:0] grp_fu_2251_p3;
wire   [13:0] grp_fu_2259_p3;
wire   [31:0] v132_1_fu_1670_p2;
wire   [31:0] v132_1_fu_1670_p4;
wire   [31:0] v132_1_fu_1670_p6;
wire   [31:0] v132_1_fu_1670_p8;
wire   [31:0] v132_1_fu_1670_p9;
wire   [31:0] v143_1_fu_1709_p2;
wire   [31:0] v143_1_fu_1709_p4;
wire   [31:0] v143_1_fu_1709_p6;
wire   [31:0] v143_1_fu_1709_p8;
wire   [31:0] v143_1_fu_1709_p9;
wire   [13:0] grp_fu_2267_p3;
wire   [13:0] grp_fu_2275_p3;
wire   [31:0] v154_1_fu_1762_p2;
wire   [31:0] v154_1_fu_1762_p4;
wire   [31:0] v154_1_fu_1762_p6;
wire   [31:0] v154_1_fu_1762_p8;
wire   [31:0] v154_1_fu_1762_p9;
wire   [31:0] v165_1_fu_1801_p2;
wire   [31:0] v165_1_fu_1801_p4;
wire   [31:0] v165_1_fu_1801_p6;
wire   [31:0] v165_1_fu_1801_p8;
wire   [31:0] v165_1_fu_1801_p9;
wire   [13:0] grp_fu_2283_p3;
wire   [13:0] grp_fu_2291_p3;
wire   [31:0] v176_1_fu_1854_p2;
wire   [31:0] v176_1_fu_1854_p4;
wire   [31:0] v176_1_fu_1854_p6;
wire   [31:0] v176_1_fu_1854_p8;
wire   [31:0] v176_1_fu_1854_p9;
wire   [31:0] v187_1_fu_1893_p2;
wire   [31:0] v187_1_fu_1893_p4;
wire   [31:0] v187_1_fu_1893_p6;
wire   [31:0] v187_1_fu_1893_p8;
wire   [31:0] v187_1_fu_1893_p9;
wire   [13:0] grp_fu_2299_p3;
wire   [13:0] grp_fu_2307_p3;
wire   [7:0] mul_ln171_fu_1934_p0;
wire   [8:0] mul_ln171_fu_1934_p1;
wire   [7:0] mul_ln186_fu_1943_p0;
wire   [8:0] mul_ln186_fu_1943_p1;
wire   [7:0] mul_ln199_fu_1952_p0;
wire   [8:0] mul_ln199_fu_1952_p1;
wire   [7:0] mul_ln212_fu_1961_p0;
wire   [8:0] mul_ln212_fu_1961_p1;
wire   [7:0] mul_ln225_fu_1970_p0;
wire   [8:0] mul_ln225_fu_1970_p1;
wire   [7:0] mul_ln238_fu_1979_p0;
wire   [8:0] mul_ln238_fu_1979_p1;
wire   [7:0] mul_ln251_fu_1988_p0;
wire   [8:0] mul_ln251_fu_1988_p1;
wire   [7:0] mul_ln264_fu_1997_p0;
wire   [8:0] mul_ln264_fu_1997_p1;
wire   [7:0] mul_ln277_fu_2006_p0;
wire   [8:0] mul_ln277_fu_2006_p1;
wire   [31:0] v198_1_fu_2028_p2;
wire   [31:0] v198_1_fu_2028_p4;
wire   [31:0] v198_1_fu_2028_p6;
wire   [31:0] v198_1_fu_2028_p8;
wire   [31:0] v198_1_fu_2028_p9;
wire   [31:0] v209_1_fu_2067_p2;
wire   [31:0] v209_1_fu_2067_p4;
wire   [31:0] v209_1_fu_2067_p6;
wire   [31:0] v209_1_fu_2067_p8;
wire   [31:0] v209_1_fu_2067_p9;
wire   [7:0] mul_ln171_1_fu_2093_p0;
wire   [8:0] mul_ln171_1_fu_2093_p1;
wire   [7:0] mul_ln186_1_fu_2102_p0;
wire   [8:0] mul_ln186_1_fu_2102_p1;
wire   [7:0] mul_ln199_1_fu_2111_p0;
wire   [8:0] mul_ln199_1_fu_2111_p1;
wire   [7:0] mul_ln212_1_fu_2120_p0;
wire   [8:0] mul_ln212_1_fu_2120_p1;
wire   [7:0] mul_ln225_1_fu_2129_p0;
wire   [8:0] mul_ln225_1_fu_2129_p1;
wire   [7:0] mul_ln238_1_fu_2138_p0;
wire   [8:0] mul_ln238_1_fu_2138_p1;
wire   [7:0] mul_ln251_1_fu_2147_p0;
wire   [8:0] mul_ln251_1_fu_2147_p1;
wire   [7:0] mul_ln264_1_fu_2156_p0;
wire   [8:0] mul_ln264_1_fu_2156_p1;
wire   [7:0] mul_ln277_1_fu_2165_p0;
wire   [8:0] mul_ln277_1_fu_2165_p1;
wire   [7:0] grp_fu_2171_p0;
wire   [5:0] grp_fu_2171_p1;
wire   [5:0] grp_fu_2171_p2;
wire   [7:0] grp_fu_2179_p0;
wire   [5:0] grp_fu_2179_p1;
wire   [5:0] grp_fu_2179_p2;
wire   [7:0] grp_fu_2187_p0;
wire   [5:0] grp_fu_2187_p1;
wire   [5:0] grp_fu_2187_p2;
wire   [7:0] grp_fu_2195_p0;
wire   [5:0] grp_fu_2195_p1;
wire   [5:0] grp_fu_2195_p2;
wire   [7:0] grp_fu_2203_p0;
wire   [5:0] grp_fu_2203_p1;
wire   [5:0] grp_fu_2203_p2;
wire   [7:0] grp_fu_2211_p0;
wire   [5:0] grp_fu_2211_p1;
wire   [5:0] grp_fu_2211_p2;
wire   [7:0] grp_fu_2219_p0;
wire   [5:0] grp_fu_2219_p1;
wire   [5:0] grp_fu_2219_p2;
wire   [7:0] grp_fu_2227_p0;
wire   [5:0] grp_fu_2227_p1;
wire   [5:0] grp_fu_2227_p2;
wire   [7:0] grp_fu_2235_p0;
wire   [5:0] grp_fu_2235_p1;
wire   [5:0] grp_fu_2235_p2;
wire   [7:0] grp_fu_2243_p0;
wire   [5:0] grp_fu_2243_p1;
wire   [5:0] grp_fu_2243_p2;
wire   [7:0] grp_fu_2251_p0;
wire   [5:0] grp_fu_2251_p1;
wire   [5:0] grp_fu_2251_p2;
wire   [7:0] grp_fu_2259_p0;
wire   [5:0] grp_fu_2259_p1;
wire   [5:0] grp_fu_2259_p2;
wire   [7:0] grp_fu_2267_p0;
wire   [5:0] grp_fu_2267_p1;
wire   [5:0] grp_fu_2267_p2;
wire   [7:0] grp_fu_2275_p0;
wire   [5:0] grp_fu_2275_p1;
wire   [5:0] grp_fu_2275_p2;
wire   [7:0] grp_fu_2283_p0;
wire   [5:0] grp_fu_2283_p1;
wire   [5:0] grp_fu_2283_p2;
wire   [7:0] grp_fu_2291_p0;
wire   [5:0] grp_fu_2291_p1;
wire   [5:0] grp_fu_2291_p2;
wire   [7:0] grp_fu_2299_p0;
wire   [5:0] grp_fu_2299_p1;
wire   [5:0] grp_fu_2299_p2;
wire   [7:0] grp_fu_2307_p0;
wire   [5:0] grp_fu_2307_p1;
wire   [5:0] grp_fu_2307_p2;
reg    grp_fu_826_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_830_ce;
reg    grp_fu_834_ce;
reg    grp_fu_838_ce;
reg    grp_fu_842_ce;
reg    grp_fu_846_ce;
reg    grp_fu_850_ce;
reg    grp_fu_854_ce;
reg    grp_fu_858_ce;
reg   [31:0] grp_fu_3134_p0;
reg   [31:0] grp_fu_3134_p1;
reg    grp_fu_3134_ce;
reg   [31:0] grp_fu_3138_p0;
reg   [31:0] grp_fu_3138_p1;
reg    grp_fu_3138_ce;
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
wire   [13:0] grp_fu_2171_p00;
wire   [13:0] grp_fu_2179_p00;
wire   [13:0] grp_fu_2187_p00;
wire   [13:0] grp_fu_2195_p00;
wire   [13:0] grp_fu_2203_p00;
wire   [13:0] grp_fu_2211_p00;
wire   [13:0] grp_fu_2219_p00;
wire   [13:0] grp_fu_2227_p00;
wire   [13:0] grp_fu_2235_p00;
wire   [13:0] grp_fu_2243_p00;
wire   [13:0] grp_fu_2251_p00;
wire   [13:0] grp_fu_2259_p00;
wire   [13:0] grp_fu_2267_p00;
wire   [13:0] grp_fu_2275_p00;
wire   [13:0] grp_fu_2283_p00;
wire   [13:0] grp_fu_2291_p00;
wire   [13:0] grp_fu_2299_p00;
wire   [13:0] grp_fu_2307_p00;
wire   [15:0] mul_ln171_1_fu_2093_p00;
wire   [15:0] mul_ln171_fu_1934_p00;
wire   [15:0] mul_ln186_1_fu_2102_p00;
wire   [15:0] mul_ln186_fu_1943_p00;
wire   [15:0] mul_ln199_1_fu_2111_p00;
wire   [15:0] mul_ln199_fu_1952_p00;
wire   [15:0] mul_ln212_1_fu_2120_p00;
wire   [15:0] mul_ln212_fu_1961_p00;
wire   [15:0] mul_ln225_1_fu_2129_p00;
wire   [15:0] mul_ln225_fu_1970_p00;
wire   [15:0] mul_ln238_1_fu_2138_p00;
wire   [15:0] mul_ln238_fu_1979_p00;
wire   [15:0] mul_ln251_1_fu_2147_p00;
wire   [15:0] mul_ln251_fu_1988_p00;
wire   [15:0] mul_ln264_1_fu_2156_p00;
wire   [15:0] mul_ln264_fu_1997_p00;
wire   [15:0] mul_ln277_1_fu_2165_p00;
wire   [15:0] mul_ln277_fu_2006_p00;
wire   [1:0] v_fu_1110_p1;
wire   [1:0] v_fu_1110_p3;
wire  signed [1:0] v_fu_1110_p5;
wire  signed [1:0] v_fu_1110_p7;
wire   [1:0] v2_fu_1149_p1;
wire   [1:0] v2_fu_1149_p3;
wire  signed [1:0] v2_fu_1149_p5;
wire  signed [1:0] v2_fu_1149_p7;
wire   [1:0] v4_fu_1222_p1;
wire   [1:0] v4_fu_1222_p3;
wire  signed [1:0] v4_fu_1222_p5;
wire  signed [1:0] v4_fu_1222_p7;
wire   [1:0] v6_fu_1261_p1;
wire   [1:0] v6_fu_1261_p3;
wire  signed [1:0] v6_fu_1261_p5;
wire  signed [1:0] v6_fu_1261_p7;
wire   [1:0] v8_fu_1334_p1;
wire   [1:0] v8_fu_1334_p3;
wire  signed [1:0] v8_fu_1334_p5;
wire  signed [1:0] v8_fu_1334_p7;
wire   [1:0] v10_fu_1373_p1;
wire   [1:0] v10_fu_1373_p3;
wire  signed [1:0] v10_fu_1373_p5;
wire  signed [1:0] v10_fu_1373_p7;
wire   [1:0] v12_fu_1446_p1;
wire   [1:0] v12_fu_1446_p3;
wire  signed [1:0] v12_fu_1446_p5;
wire  signed [1:0] v12_fu_1446_p7;
wire   [1:0] v14_fu_1485_p1;
wire   [1:0] v14_fu_1485_p3;
wire  signed [1:0] v14_fu_1485_p5;
wire  signed [1:0] v14_fu_1485_p7;
wire   [1:0] v16_fu_1558_p1;
wire   [1:0] v16_fu_1558_p3;
wire  signed [1:0] v16_fu_1558_p5;
wire  signed [1:0] v16_fu_1558_p7;
wire   [1:0] v119_1_fu_1597_p1;
wire   [1:0] v119_1_fu_1597_p3;
wire  signed [1:0] v119_1_fu_1597_p5;
wire  signed [1:0] v119_1_fu_1597_p7;
wire   [1:0] v132_1_fu_1670_p1;
wire   [1:0] v132_1_fu_1670_p3;
wire  signed [1:0] v132_1_fu_1670_p5;
wire  signed [1:0] v132_1_fu_1670_p7;
wire   [1:0] v143_1_fu_1709_p1;
wire   [1:0] v143_1_fu_1709_p3;
wire  signed [1:0] v143_1_fu_1709_p5;
wire  signed [1:0] v143_1_fu_1709_p7;
wire   [1:0] v154_1_fu_1762_p1;
wire   [1:0] v154_1_fu_1762_p3;
wire  signed [1:0] v154_1_fu_1762_p5;
wire  signed [1:0] v154_1_fu_1762_p7;
wire   [1:0] v165_1_fu_1801_p1;
wire   [1:0] v165_1_fu_1801_p3;
wire  signed [1:0] v165_1_fu_1801_p5;
wire  signed [1:0] v165_1_fu_1801_p7;
wire   [1:0] v176_1_fu_1854_p1;
wire   [1:0] v176_1_fu_1854_p3;
wire  signed [1:0] v176_1_fu_1854_p5;
wire  signed [1:0] v176_1_fu_1854_p7;
wire   [1:0] v187_1_fu_1893_p1;
wire   [1:0] v187_1_fu_1893_p3;
wire  signed [1:0] v187_1_fu_1893_p5;
wire  signed [1:0] v187_1_fu_1893_p7;
wire   [1:0] v198_1_fu_2028_p1;
wire   [1:0] v198_1_fu_2028_p3;
wire  signed [1:0] v198_1_fu_2028_p5;
wire  signed [1:0] v198_1_fu_2028_p7;
wire   [1:0] v209_1_fu_2067_p1;
wire   [1:0] v209_1_fu_2067_p3;
wire  signed [1:0] v209_1_fu_2067_p5;
wire  signed [1:0] v209_1_fu_2067_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start_reg = 1'b0;
#0 phi_mul_fu_124 = 16'd0;
#0 v114_fu_128 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_770(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_ready),.phi_mul(phi_mul_load_reg_2342),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_3034),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_3039),.mul_ln199(mul_ln199_reg_3044),.mul_ln212(mul_ln212_reg_3049),.mul_ln225(mul_ln225_reg_3054),.mul_ln238(mul_ln238_reg_3059),.mul_ln251(mul_ln251_reg_3064),.mul_ln264(mul_ln264_reg_3069),.mul_ln277(mul_ln277_reg_3074),.cmp11(cmp11_reg_2405),.v120(reg_862),.v133(reg_868),.v144(reg_874),.v155(reg_880),.v166(reg_886),.v177(reg_892),.v188(reg_898),.v199(reg_904),.v210(reg_910),.grp_fu_3134_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_din0),.grp_fu_3134_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_din1),.grp_fu_3134_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_opcode),.grp_fu_3134_p_dout0(grp_fu_144_p_dout0),.grp_fu_3134_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_ce),.grp_fu_3138_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_din0),.grp_fu_3138_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_din1),.grp_fu_3138_p_dout0(grp_fu_148_p_dout0),.grp_fu_3138_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_798(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_ready),.phi_mul(phi_mul_load_reg_2342),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_3089),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_d1),.v225_q1(v225_q1),.mul_ln186_1(mul_ln186_1_reg_3094),.mul_ln199_1(mul_ln199_1_reg_3099),.mul_ln212_1(mul_ln212_1_reg_3104),.mul_ln225_1(mul_ln225_1_reg_3109),.mul_ln238_1(mul_ln238_1_reg_3114),.mul_ln251_1(mul_ln251_1_reg_3119),.mul_ln264_1(mul_ln264_1_reg_3124),.mul_ln277_1(mul_ln277_1_reg_3129),.cmp11(cmp11_reg_2405),.v120_1(reg_862),.v133_1(reg_868),.v144_1(reg_874),.v155_1(reg_880),.v166_1(reg_886),.v177_1(reg_892),.v188_1(reg_898),.v199_1(reg_904),.v210_1(reg_910),.grp_fu_3134_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_din0),.grp_fu_3134_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_din1),.grp_fu_3134_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_opcode),.grp_fu_3134_p_dout0(grp_fu_144_p_dout0),.grp_fu_3134_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_ce),.grp_fu_3138_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_din0),.grp_fu_3138_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_din1),.grp_fu_3138_p_dout0(grp_fu_148_p_dout0),.grp_fu_3138_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_ce));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U58(.din0(v_fu_1110_p2),.din1(v_fu_1110_p4),.din2(v_fu_1110_p6),.din3(v_fu_1110_p8),.def(v_fu_1110_p9),.sel(trunc_ln168_reg_2361),.dout(v_fu_1110_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U59(.din0(v2_fu_1149_p2),.din1(v2_fu_1149_p4),.din2(v2_fu_1149_p6),.din3(v2_fu_1149_p8),.def(v2_fu_1149_p9),.sel(trunc_ln168_reg_2361),.dout(v2_fu_1149_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U60(.din0(v4_fu_1222_p2),.din1(v4_fu_1222_p4),.din2(v4_fu_1222_p6),.din3(v4_fu_1222_p8),.def(v4_fu_1222_p9),.sel(trunc_ln168_reg_2361),.dout(v4_fu_1222_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U61(.din0(v6_fu_1261_p2),.din1(v6_fu_1261_p4),.din2(v6_fu_1261_p6),.din3(v6_fu_1261_p8),.def(v6_fu_1261_p9),.sel(trunc_ln168_reg_2361),.dout(v6_fu_1261_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U62(.din0(v8_fu_1334_p2),.din1(v8_fu_1334_p4),.din2(v8_fu_1334_p6),.din3(v8_fu_1334_p8),.def(v8_fu_1334_p9),.sel(trunc_ln168_reg_2361),.dout(v8_fu_1334_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U63(.din0(v10_fu_1373_p2),.din1(v10_fu_1373_p4),.din2(v10_fu_1373_p6),.din3(v10_fu_1373_p8),.def(v10_fu_1373_p9),.sel(trunc_ln168_reg_2361),.dout(v10_fu_1373_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U64(.din0(v12_fu_1446_p2),.din1(v12_fu_1446_p4),.din2(v12_fu_1446_p6),.din3(v12_fu_1446_p8),.def(v12_fu_1446_p9),.sel(trunc_ln168_reg_2361),.dout(v12_fu_1446_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U65(.din0(v14_fu_1485_p2),.din1(v14_fu_1485_p4),.din2(v14_fu_1485_p6),.din3(v14_fu_1485_p8),.def(v14_fu_1485_p9),.sel(trunc_ln168_reg_2361),.dout(v14_fu_1485_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U66(.din0(v16_fu_1558_p2),.din1(v16_fu_1558_p4),.din2(v16_fu_1558_p6),.din3(v16_fu_1558_p8),.def(v16_fu_1558_p9),.sel(trunc_ln168_reg_2361),.dout(v16_fu_1558_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U67(.din0(v119_1_fu_1597_p2),.din1(v119_1_fu_1597_p4),.din2(v119_1_fu_1597_p6),.din3(v119_1_fu_1597_p8),.def(v119_1_fu_1597_p9),.sel(trunc_ln168_reg_2361),.dout(v119_1_fu_1597_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U68(.din0(v132_1_fu_1670_p2),.din1(v132_1_fu_1670_p4),.din2(v132_1_fu_1670_p6),.din3(v132_1_fu_1670_p8),.def(v132_1_fu_1670_p9),.sel(trunc_ln168_reg_2361),.dout(v132_1_fu_1670_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U69(.din0(v143_1_fu_1709_p2),.din1(v143_1_fu_1709_p4),.din2(v143_1_fu_1709_p6),.din3(v143_1_fu_1709_p8),.def(v143_1_fu_1709_p9),.sel(trunc_ln168_reg_2361),.dout(v143_1_fu_1709_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U70(.din0(v154_1_fu_1762_p2),.din1(v154_1_fu_1762_p4),.din2(v154_1_fu_1762_p6),.din3(v154_1_fu_1762_p8),.def(v154_1_fu_1762_p9),.sel(trunc_ln168_reg_2361),.dout(v154_1_fu_1762_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U71(.din0(v165_1_fu_1801_p2),.din1(v165_1_fu_1801_p4),.din2(v165_1_fu_1801_p6),.din3(v165_1_fu_1801_p8),.def(v165_1_fu_1801_p9),.sel(trunc_ln168_reg_2361),.dout(v165_1_fu_1801_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U72(.din0(v176_1_fu_1854_p2),.din1(v176_1_fu_1854_p4),.din2(v176_1_fu_1854_p6),.din3(v176_1_fu_1854_p8),.def(v176_1_fu_1854_p9),.sel(trunc_ln168_reg_2361),.dout(v176_1_fu_1854_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U73(.din0(v187_1_fu_1893_p2),.din1(v187_1_fu_1893_p4),.din2(v187_1_fu_1893_p6),.din3(v187_1_fu_1893_p8),.def(v187_1_fu_1893_p9),.sel(trunc_ln168_reg_2361),.dout(v187_1_fu_1893_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln171_fu_1934_p0),.din1(mul_ln171_fu_1934_p1),.dout(mul_ln171_fu_1934_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln186_fu_1943_p0),.din1(mul_ln186_fu_1943_p1),.dout(mul_ln186_fu_1943_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U76(.din0(mul_ln199_fu_1952_p0),.din1(mul_ln199_fu_1952_p1),.dout(mul_ln199_fu_1952_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U77(.din0(mul_ln212_fu_1961_p0),.din1(mul_ln212_fu_1961_p1),.dout(mul_ln212_fu_1961_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U78(.din0(mul_ln225_fu_1970_p0),.din1(mul_ln225_fu_1970_p1),.dout(mul_ln225_fu_1970_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U79(.din0(mul_ln238_fu_1979_p0),.din1(mul_ln238_fu_1979_p1),.dout(mul_ln238_fu_1979_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U80(.din0(mul_ln251_fu_1988_p0),.din1(mul_ln251_fu_1988_p1),.dout(mul_ln251_fu_1988_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U81(.din0(mul_ln264_fu_1997_p0),.din1(mul_ln264_fu_1997_p1),.dout(mul_ln264_fu_1997_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U82(.din0(mul_ln277_fu_2006_p0),.din1(mul_ln277_fu_2006_p1),.dout(mul_ln277_fu_2006_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U83(.din0(v198_1_fu_2028_p2),.din1(v198_1_fu_2028_p4),.din2(v198_1_fu_2028_p6),.din3(v198_1_fu_2028_p8),.def(v198_1_fu_2028_p9),.sel(trunc_ln168_reg_2361),.dout(v198_1_fu_2028_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U84(.din0(v209_1_fu_2067_p2),.din1(v209_1_fu_2067_p4),.din2(v209_1_fu_2067_p6),.din3(v209_1_fu_2067_p8),.def(v209_1_fu_2067_p9),.sel(trunc_ln168_reg_2361),.dout(v209_1_fu_2067_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U85(.din0(mul_ln171_1_fu_2093_p0),.din1(mul_ln171_1_fu_2093_p1),.dout(mul_ln171_1_fu_2093_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U86(.din0(mul_ln186_1_fu_2102_p0),.din1(mul_ln186_1_fu_2102_p1),.dout(mul_ln186_1_fu_2102_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U87(.din0(mul_ln199_1_fu_2111_p0),.din1(mul_ln199_1_fu_2111_p1),.dout(mul_ln199_1_fu_2111_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U88(.din0(mul_ln212_1_fu_2120_p0),.din1(mul_ln212_1_fu_2120_p1),.dout(mul_ln212_1_fu_2120_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U89(.din0(mul_ln225_1_fu_2129_p0),.din1(mul_ln225_1_fu_2129_p1),.dout(mul_ln225_1_fu_2129_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U90(.din0(mul_ln238_1_fu_2138_p0),.din1(mul_ln238_1_fu_2138_p1),.dout(mul_ln238_1_fu_2138_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U91(.din0(mul_ln251_1_fu_2147_p0),.din1(mul_ln251_1_fu_2147_p1),.dout(mul_ln251_1_fu_2147_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U92(.din0(mul_ln264_1_fu_2156_p0),.din1(mul_ln264_1_fu_2156_p1),.dout(mul_ln264_1_fu_2156_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U93(.din0(mul_ln277_1_fu_2165_p0),.din1(mul_ln277_1_fu_2165_p1),.dout(mul_ln277_1_fu_2165_p2));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2171_p0),.din1(grp_fu_2171_p1),.din2(grp_fu_2171_p2),.ce(1'b1),.dout(grp_fu_2171_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U95(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2179_p0),.din1(grp_fu_2179_p1),.din2(grp_fu_2179_p2),.ce(1'b1),.dout(grp_fu_2179_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2187_p0),.din1(grp_fu_2187_p1),.din2(grp_fu_2187_p2),.ce(1'b1),.dout(grp_fu_2187_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2195_p0),.din1(grp_fu_2195_p1),.din2(grp_fu_2195_p2),.ce(1'b1),.dout(grp_fu_2195_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2203_p0),.din1(grp_fu_2203_p1),.din2(grp_fu_2203_p2),.ce(1'b1),.dout(grp_fu_2203_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2211_p0),.din1(grp_fu_2211_p1),.din2(grp_fu_2211_p2),.ce(1'b1),.dout(grp_fu_2211_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2219_p0),.din1(grp_fu_2219_p1),.din2(grp_fu_2219_p2),.ce(1'b1),.dout(grp_fu_2219_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2227_p0),.din1(grp_fu_2227_p1),.din2(grp_fu_2227_p2),.ce(1'b1),.dout(grp_fu_2227_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2235_p0),.din1(grp_fu_2235_p1),.din2(grp_fu_2235_p2),.ce(1'b1),.dout(grp_fu_2235_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2243_p0),.din1(grp_fu_2243_p1),.din2(grp_fu_2243_p2),.ce(1'b1),.dout(grp_fu_2243_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2251_p0),.din1(grp_fu_2251_p1),.din2(grp_fu_2251_p2),.ce(1'b1),.dout(grp_fu_2251_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2259_p0),.din1(grp_fu_2259_p1),.din2(grp_fu_2259_p2),.ce(1'b1),.dout(grp_fu_2259_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2267_p0),.din1(grp_fu_2267_p1),.din2(grp_fu_2267_p2),.ce(1'b1),.dout(grp_fu_2267_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2275_p0),.din1(grp_fu_2275_p1),.din2(grp_fu_2275_p2),.ce(1'b1),.dout(grp_fu_2275_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2283_p0),.din1(grp_fu_2283_p1),.din2(grp_fu_2283_p2),.ce(1'b1),.dout(grp_fu_2283_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2291_p0),.din1(grp_fu_2291_p1),.din2(grp_fu_2291_p2),.ce(1'b1),.dout(grp_fu_2291_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2299_p0),.din1(grp_fu_2299_p1),.din2(grp_fu_2299_p2),.ce(1'b1),.dout(grp_fu_2299_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2307_p0),.din1(grp_fu_2307_p1),.din2(grp_fu_2307_p2),.ce(1'b1),.dout(grp_fu_2307_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_124 <= 16'd0;
    end else if (((icmp_ln169_fu_974_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_124 <= add_ln168_1_reg_2348;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_128 <= 8'd0;
    end else if (((icmp_ln169_fu_974_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_128 <= add_ln168_reg_2356;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_938_p2 == 1'd0))) begin
        v115_reg_758 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_758 <= add_ln169_1_reg_2429;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_2348 <= add_ln168_1_fu_932_p2;
        add_ln168_reg_2356 <= add_ln168_fu_944_p2;
        cmp11_reg_2405 <= cmp11_fu_968_p2;
        phi_mul_load_reg_2342 <= phi_mul_fu_124;
        trunc_ln168_reg_2361 <= trunc_ln168_fu_950_p1;
        zext_ln168_reg_2383[5 : 0] <= zext_ln168_fu_964_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_2429 <= add_ln169_1_fu_1006_p2;
        tmp_1_reg_2419[7 : 1] <= tmp_1_fu_994_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln169_reg_2594 <= add_ln169_fu_1196_p2;
        empty_72_reg_2584 <= empty_72_fu_1186_p2;
        v2_reg_2539 <= v2_fu_1149_p11;
        v_reg_2534 <= v_fu_1110_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_106_reg_2734 <= empty_106_fu_1420_p2;
        empty_99_reg_2724 <= empty_99_fu_1410_p2;
        v10_reg_2679 <= v10_fu_1373_p11;
        v8_reg_2674 <= v8_fu_1334_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_113_reg_2794 <= empty_113_fu_1522_p2;
        empty_120_reg_2804 <= empty_120_fu_1532_p2;
        v12_reg_2744 <= v12_fu_1446_p11;
        v14_reg_2749 <= v14_fu_1485_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_127_reg_2864 <= empty_127_fu_1634_p2;
        empty_134_reg_2874 <= empty_134_fu_1644_p2;
        v119_1_reg_2819 <= v119_1_fu_1597_p11;
        v16_reg_2814 <= v16_fu_1558_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_30_reg_2434 <= empty_30_fu_1020_p2;
        empty_37_reg_2444 <= empty_37_fu_1030_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_44_reg_2454 <= empty_44_fu_1040_p2;
        empty_51_reg_2464 <= empty_51_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_58_reg_2514 <= empty_58_fu_1074_p2;
        empty_65_reg_2524 <= empty_65_fu_1084_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_85_reg_2654 <= empty_85_fu_1298_p2;
        empty_92_reg_2664 <= empty_92_fu_1308_p2;
        v4_reg_2604 <= v4_fu_1222_p11;
        v6_reg_2609 <= v6_fu_1261_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_3089 <= mul_ln171_1_fu_2093_p2;
        mul_ln186_1_reg_3094 <= mul_ln186_1_fu_2102_p2;
        mul_ln199_1_reg_3099 <= mul_ln199_1_fu_2111_p2;
        mul_ln212_1_reg_3104 <= mul_ln212_1_fu_2120_p2;
        mul_ln225_1_reg_3109 <= mul_ln225_1_fu_2129_p2;
        mul_ln238_1_reg_3114 <= mul_ln238_1_fu_2138_p2;
        mul_ln251_1_reg_3119 <= mul_ln251_1_fu_2147_p2;
        mul_ln264_1_reg_3124 <= mul_ln264_1_fu_2156_p2;
        mul_ln277_1_reg_3129 <= mul_ln277_1_fu_2165_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_3034 <= mul_ln171_fu_1934_p2;
        mul_ln186_reg_3039 <= mul_ln186_fu_1943_p2;
        mul_ln199_reg_3044 <= mul_ln199_fu_1952_p2;
        mul_ln212_reg_3049 <= mul_ln212_fu_1961_p2;
        mul_ln225_reg_3054 <= mul_ln225_fu_1970_p2;
        mul_ln238_reg_3059 <= mul_ln238_fu_1979_p2;
        mul_ln251_reg_3064 <= mul_ln251_fu_1988_p2;
        mul_ln264_reg_3069 <= mul_ln264_fu_1997_p2;
        mul_ln277_reg_3074 <= mul_ln277_fu_2006_p2;
        v198_1_reg_3079 <= v198_1_fu_2028_p11;
        v209_1_reg_3084 <= v209_1_fu_2067_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_862 <= grp_fu_152_p_dout0;
        reg_868 <= grp_fu_156_p_dout0;
        reg_874 <= grp_fu_160_p_dout0;
        reg_880 <= grp_fu_164_p_dout0;
        reg_886 <= grp_fu_168_p_dout0;
        reg_892 <= grp_fu_172_p_dout0;
        reg_898 <= grp_fu_176_p_dout0;
        reg_904 <= grp_fu_180_p_dout0;
        reg_910 <= grp_fu_184_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v132_1_reg_2884 <= v132_1_fu_1670_p11;
        v143_1_reg_2889 <= v143_1_fu_1709_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        v154_1_reg_2934 <= v154_1_fu_1762_p11;
        v165_1_reg_2939 <= v165_1_fu_1801_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v176_1_reg_2984 <= v176_1_fu_1854_p11;
        v187_1_reg_2989 <= v187_1_fu_1893_p11;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_938_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_938_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3134_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3134_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_ce;
    end else begin
        grp_fu_3134_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3134_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3134_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_din0;
    end else begin
        grp_fu_3134_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3134_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3134_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3134_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3134_p_din1;
    end else begin
        grp_fu_3134_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3138_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3138_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_ce;
    end else begin
        grp_fu_3138_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3138_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3138_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_din0;
    end else begin
        grp_fu_3138_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3138_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_grp_fu_3138_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3138_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_grp_fu_3138_p_din1;
    end else begin
        grp_fu_3138_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_826_ce = 1'b1;
    end else begin
        grp_fu_826_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_826_p0 = v119_1_reg_2819;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_826_p0 = v_reg_2534;
    end else begin
        grp_fu_826_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_830_ce = 1'b1;
    end else begin
        grp_fu_830_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_830_p0 = v132_1_reg_2884;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_830_p0 = v2_reg_2539;
    end else begin
        grp_fu_830_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_834_ce = 1'b1;
    end else begin
        grp_fu_834_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_834_p0 = v143_1_reg_2889;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_834_p0 = v4_reg_2604;
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_838_ce = 1'b1;
    end else begin
        grp_fu_838_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_838_p0 = v154_1_reg_2934;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_838_p0 = v6_reg_2609;
    end else begin
        grp_fu_838_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_842_ce = 1'b1;
    end else begin
        grp_fu_842_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_842_p0 = v165_1_reg_2939;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_842_p0 = v8_reg_2674;
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_846_ce = 1'b1;
    end else begin
        grp_fu_846_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_846_p0 = v176_1_reg_2984;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_846_p0 = v10_reg_2679;
    end else begin
        grp_fu_846_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_850_ce = 1'b1;
    end else begin
        grp_fu_850_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_850_p0 = v187_1_reg_2989;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_850_p0 = v12_reg_2744;
    end else begin
        grp_fu_850_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_854_ce = 1'b1;
    end else begin
        grp_fu_854_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_854_p0 = v198_1_reg_3079;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_854_p0 = v14_reg_2749;
    end else begin
        grp_fu_854_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_858_ce = 1'b1;
    end else begin
        grp_fu_858_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_858_p0 = v209_1_reg_3084;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_858_p0 = v16_reg_2814;
    end else begin
        grp_fu_858_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address0_local = p_cast720_fu_1923_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address0_local = p_cast718_fu_1831_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0_local = p_cast716_fu_1739_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address0_local = p_cast714_fu_1627_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast712_fu_1515_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast710_fu_1403_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast708_fu_1291_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast706_fu_1179_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast_fu_1067_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address1_local = p_cast719_fu_1916_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address1_local = p_cast717_fu_1824_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address1_local = p_cast715_fu_1732_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address1_local = p_cast713_fu_1620_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast711_fu_1508_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast709_fu_1396_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast707_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast705_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address1_local = p_cast704_fu_1060_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0_local = p_cast720_fu_1923_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address0_local = p_cast718_fu_1831_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address0_local = p_cast716_fu_1739_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address0_local = p_cast714_fu_1627_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast712_fu_1515_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast710_fu_1403_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast708_fu_1291_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast706_fu_1179_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast_fu_1067_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address1_local = p_cast719_fu_1916_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address1_local = p_cast717_fu_1824_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address1_local = p_cast715_fu_1732_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address1_local = p_cast713_fu_1620_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast711_fu_1508_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast709_fu_1396_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast707_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast705_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address1_local = p_cast704_fu_1060_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_2_address0_local = p_cast720_fu_1923_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_2_address0_local = p_cast718_fu_1831_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_2_address0_local = p_cast716_fu_1739_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_2_address0_local = p_cast714_fu_1627_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address0_local = p_cast712_fu_1515_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast710_fu_1403_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast708_fu_1291_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast706_fu_1179_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast_fu_1067_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_2_address1_local = p_cast719_fu_1916_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_2_address1_local = p_cast717_fu_1824_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_2_address1_local = p_cast715_fu_1732_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_2_address1_local = p_cast713_fu_1620_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast711_fu_1508_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast709_fu_1396_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast707_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast705_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address1_local = p_cast704_fu_1060_p1;
    end else begin
        v226_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce0_local = 1'b1;
    end else begin
        v226_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce1_local = 1'b1;
    end else begin
        v226_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_3_address0_local = p_cast720_fu_1923_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_3_address0_local = p_cast718_fu_1831_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_3_address0_local = p_cast716_fu_1739_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_3_address0_local = p_cast714_fu_1627_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address0_local = p_cast712_fu_1515_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast710_fu_1403_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast708_fu_1291_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast706_fu_1179_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast_fu_1067_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_3_address1_local = p_cast719_fu_1916_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_3_address1_local = p_cast717_fu_1824_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_3_address1_local = p_cast715_fu_1732_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_3_address1_local = p_cast713_fu_1620_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast711_fu_1508_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast709_fu_1396_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast707_fu_1284_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast705_fu_1172_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address1_local = p_cast704_fu_1060_p1;
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_938_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_938_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_938_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_938_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_974_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
assign add_ln168_1_fu_932_p2 = (phi_mul_fu_124 + 16'd190);
assign add_ln168_fu_944_p2 = (v114_fu_128 + 8'd1);
assign add_ln169_1_fu_1006_p2 = (v115_reg_758 + 8'd18);
assign add_ln169_fu_1196_p2 = (v115_reg_758 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_938_p2 == 1'd1));
end
assign cmp11_fu_968_p2 = ((v114_fu_128 == 8'd0) ? 1'b1 : 1'b0);
assign empty_106_fu_1420_p2 = (v115_reg_758 + 8'd13);
assign empty_113_fu_1522_p2 = (v115_reg_758 + 8'd14);
assign empty_120_fu_1532_p2 = (v115_reg_758 + 8'd15);
assign empty_127_fu_1634_p2 = (v115_reg_758 + 8'd16);
assign empty_134_fu_1644_p2 = (v115_reg_758 + 8'd17);
assign empty_30_fu_1020_p2 = (v115_reg_758 + 8'd2);
assign empty_37_fu_1030_p2 = (v115_reg_758 + 8'd3);
assign empty_44_fu_1040_p2 = (v115_reg_758 + 8'd4);
assign empty_51_fu_1050_p2 = (v115_reg_758 + 8'd5);
assign empty_58_fu_1074_p2 = (v115_reg_758 + 8'd6);
assign empty_65_fu_1084_p2 = (v115_reg_758 + 8'd7);
assign empty_72_fu_1186_p2 = (v115_reg_758 + 8'd8);
assign empty_85_fu_1298_p2 = (v115_reg_758 + 8'd10);
assign empty_92_fu_1308_p2 = (v115_reg_758 + 8'd11);
assign empty_99_fu_1410_p2 = (v115_reg_758 + 8'd12);
assign grp_fu_144_p_ce = grp_fu_3134_ce;
assign grp_fu_144_p_din0 = grp_fu_3134_p0;
assign grp_fu_144_p_din1 = grp_fu_3134_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = grp_fu_3138_ce;
assign grp_fu_148_p_din0 = grp_fu_3138_p0;
assign grp_fu_148_p_din1 = grp_fu_3138_p1;
assign grp_fu_152_p_ce = grp_fu_826_ce;
assign grp_fu_152_p_din0 = grp_fu_826_p0;
assign grp_fu_152_p_din1 = v113;
assign grp_fu_156_p_ce = grp_fu_830_ce;
assign grp_fu_156_p_din0 = grp_fu_830_p0;
assign grp_fu_156_p_din1 = v113;
assign grp_fu_160_p_ce = grp_fu_834_ce;
assign grp_fu_160_p_din0 = grp_fu_834_p0;
assign grp_fu_160_p_din1 = v113;
assign grp_fu_164_p_ce = grp_fu_838_ce;
assign grp_fu_164_p_din0 = grp_fu_838_p0;
assign grp_fu_164_p_din1 = v113;
assign grp_fu_168_p_ce = grp_fu_842_ce;
assign grp_fu_168_p_din0 = grp_fu_842_p0;
assign grp_fu_168_p_din1 = v113;
assign grp_fu_172_p_ce = grp_fu_846_ce;
assign grp_fu_172_p_din0 = grp_fu_846_p0;
assign grp_fu_172_p_din1 = v113;
assign grp_fu_176_p_ce = grp_fu_850_ce;
assign grp_fu_176_p_din0 = grp_fu_850_p0;
assign grp_fu_176_p_din1 = v113;
assign grp_fu_180_p_ce = grp_fu_854_ce;
assign grp_fu_180_p_din0 = grp_fu_854_p0;
assign grp_fu_180_p_din1 = v113;
assign grp_fu_184_p_ce = grp_fu_858_ce;
assign grp_fu_184_p_din0 = grp_fu_858_p0;
assign grp_fu_184_p_din1 = v113;
assign grp_fu_2171_p0 = grp_fu_2171_p00;
assign grp_fu_2171_p00 = v115_reg_758;
assign grp_fu_2171_p1 = 14'd53;
assign grp_fu_2171_p2 = zext_ln168_reg_2383;
assign grp_fu_2179_p0 = grp_fu_2179_p00;
assign grp_fu_2179_p00 = tmp_1_fu_994_p3;
assign grp_fu_2179_p1 = 14'd53;
assign grp_fu_2179_p2 = zext_ln168_reg_2383;
assign grp_fu_2187_p0 = grp_fu_2187_p00;
assign grp_fu_2187_p00 = empty_30_fu_1020_p2;
assign grp_fu_2187_p1 = 14'd53;
assign grp_fu_2187_p2 = zext_ln168_reg_2383;
assign grp_fu_2195_p0 = grp_fu_2195_p00;
assign grp_fu_2195_p00 = empty_37_fu_1030_p2;
assign grp_fu_2195_p1 = 14'd53;
assign grp_fu_2195_p2 = zext_ln168_reg_2383;
assign grp_fu_2203_p0 = grp_fu_2203_p00;
assign grp_fu_2203_p00 = empty_44_fu_1040_p2;
assign grp_fu_2203_p1 = 14'd53;
assign grp_fu_2203_p2 = zext_ln168_reg_2383;
assign grp_fu_2211_p0 = grp_fu_2211_p00;
assign grp_fu_2211_p00 = empty_51_fu_1050_p2;
assign grp_fu_2211_p1 = 14'd53;
assign grp_fu_2211_p2 = zext_ln168_reg_2383;
assign grp_fu_2219_p0 = grp_fu_2219_p00;
assign grp_fu_2219_p00 = empty_58_fu_1074_p2;
assign grp_fu_2219_p1 = 14'd53;
assign grp_fu_2219_p2 = zext_ln168_reg_2383;
assign grp_fu_2227_p0 = grp_fu_2227_p00;
assign grp_fu_2227_p00 = empty_65_fu_1084_p2;
assign grp_fu_2227_p1 = 14'd53;
assign grp_fu_2227_p2 = zext_ln168_reg_2383;
assign grp_fu_2235_p0 = grp_fu_2235_p00;
assign grp_fu_2235_p00 = empty_72_fu_1186_p2;
assign grp_fu_2235_p1 = 14'd53;
assign grp_fu_2235_p2 = zext_ln168_reg_2383;
assign grp_fu_2243_p0 = grp_fu_2243_p00;
assign grp_fu_2243_p00 = add_ln169_fu_1196_p2;
assign grp_fu_2243_p1 = 14'd53;
assign grp_fu_2243_p2 = zext_ln168_reg_2383;
assign grp_fu_2251_p0 = grp_fu_2251_p00;
assign grp_fu_2251_p00 = empty_85_fu_1298_p2;
assign grp_fu_2251_p1 = 14'd53;
assign grp_fu_2251_p2 = zext_ln168_reg_2383;
assign grp_fu_2259_p0 = grp_fu_2259_p00;
assign grp_fu_2259_p00 = empty_92_fu_1308_p2;
assign grp_fu_2259_p1 = 14'd53;
assign grp_fu_2259_p2 = zext_ln168_reg_2383;
assign grp_fu_2267_p0 = grp_fu_2267_p00;
assign grp_fu_2267_p00 = empty_99_fu_1410_p2;
assign grp_fu_2267_p1 = 14'd53;
assign grp_fu_2267_p2 = zext_ln168_reg_2383;
assign grp_fu_2275_p0 = grp_fu_2275_p00;
assign grp_fu_2275_p00 = empty_106_fu_1420_p2;
assign grp_fu_2275_p1 = 14'd53;
assign grp_fu_2275_p2 = zext_ln168_reg_2383;
assign grp_fu_2283_p0 = grp_fu_2283_p00;
assign grp_fu_2283_p00 = empty_113_fu_1522_p2;
assign grp_fu_2283_p1 = 14'd53;
assign grp_fu_2283_p2 = zext_ln168_reg_2383;
assign grp_fu_2291_p0 = grp_fu_2291_p00;
assign grp_fu_2291_p00 = empty_120_fu_1532_p2;
assign grp_fu_2291_p1 = 14'd53;
assign grp_fu_2291_p2 = zext_ln168_reg_2383;
assign grp_fu_2299_p0 = grp_fu_2299_p00;
assign grp_fu_2299_p00 = empty_127_fu_1634_p2;
assign grp_fu_2299_p1 = 14'd53;
assign grp_fu_2299_p2 = zext_ln168_reg_2383;
assign grp_fu_2307_p0 = grp_fu_2307_p00;
assign grp_fu_2307_p00 = empty_134_fu_1644_p2;
assign grp_fu_2307_p1 = 14'd53;
assign grp_fu_2307_p2 = zext_ln168_reg_2383;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_798_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_770_ap_start_reg;
assign icmp_ln168_fu_938_p2 = ((v114_fu_128 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_974_p2 = ((v115_reg_758 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_954_p4 = {{v114_fu_128[7:2]}};
assign mul_ln171_1_fu_2093_p0 = mul_ln171_1_fu_2093_p00;
assign mul_ln171_1_fu_2093_p00 = add_ln169_reg_2594;
assign mul_ln171_1_fu_2093_p1 = 16'd190;
assign mul_ln171_fu_1934_p0 = mul_ln171_fu_1934_p00;
assign mul_ln171_fu_1934_p00 = v115_reg_758;
assign mul_ln171_fu_1934_p1 = 16'd190;
assign mul_ln186_1_fu_2102_p0 = mul_ln186_1_fu_2102_p00;
assign mul_ln186_1_fu_2102_p00 = empty_85_reg_2654;
assign mul_ln186_1_fu_2102_p1 = 16'd190;
assign mul_ln186_fu_1943_p0 = mul_ln186_fu_1943_p00;
assign mul_ln186_fu_1943_p00 = tmp_1_reg_2419;
assign mul_ln186_fu_1943_p1 = 16'd190;
assign mul_ln199_1_fu_2111_p0 = mul_ln199_1_fu_2111_p00;
assign mul_ln199_1_fu_2111_p00 = empty_92_reg_2664;
assign mul_ln199_1_fu_2111_p1 = 16'd190;
assign mul_ln199_fu_1952_p0 = mul_ln199_fu_1952_p00;
assign mul_ln199_fu_1952_p00 = empty_30_reg_2434;
assign mul_ln199_fu_1952_p1 = 16'd190;
assign mul_ln212_1_fu_2120_p0 = mul_ln212_1_fu_2120_p00;
assign mul_ln212_1_fu_2120_p00 = empty_99_reg_2724;
assign mul_ln212_1_fu_2120_p1 = 16'd190;
assign mul_ln212_fu_1961_p0 = mul_ln212_fu_1961_p00;
assign mul_ln212_fu_1961_p00 = empty_37_reg_2444;
assign mul_ln212_fu_1961_p1 = 16'd190;
assign mul_ln225_1_fu_2129_p0 = mul_ln225_1_fu_2129_p00;
assign mul_ln225_1_fu_2129_p00 = empty_106_reg_2734;
assign mul_ln225_1_fu_2129_p1 = 16'd190;
assign mul_ln225_fu_1970_p0 = mul_ln225_fu_1970_p00;
assign mul_ln225_fu_1970_p00 = empty_44_reg_2454;
assign mul_ln225_fu_1970_p1 = 16'd190;
assign mul_ln238_1_fu_2138_p0 = mul_ln238_1_fu_2138_p00;
assign mul_ln238_1_fu_2138_p00 = empty_113_reg_2794;
assign mul_ln238_1_fu_2138_p1 = 16'd190;
assign mul_ln238_fu_1979_p0 = mul_ln238_fu_1979_p00;
assign mul_ln238_fu_1979_p00 = empty_51_reg_2464;
assign mul_ln238_fu_1979_p1 = 16'd190;
assign mul_ln251_1_fu_2147_p0 = mul_ln251_1_fu_2147_p00;
assign mul_ln251_1_fu_2147_p00 = empty_120_reg_2804;
assign mul_ln251_1_fu_2147_p1 = 16'd190;
assign mul_ln251_fu_1988_p0 = mul_ln251_fu_1988_p00;
assign mul_ln251_fu_1988_p00 = empty_58_reg_2514;
assign mul_ln251_fu_1988_p1 = 16'd190;
assign mul_ln264_1_fu_2156_p0 = mul_ln264_1_fu_2156_p00;
assign mul_ln264_1_fu_2156_p00 = empty_127_reg_2864;
assign mul_ln264_1_fu_2156_p1 = 16'd190;
assign mul_ln264_fu_1997_p0 = mul_ln264_fu_1997_p00;
assign mul_ln264_fu_1997_p00 = empty_65_reg_2524;
assign mul_ln264_fu_1997_p1 = 16'd190;
assign mul_ln277_1_fu_2165_p0 = mul_ln277_1_fu_2165_p00;
assign mul_ln277_1_fu_2165_p00 = empty_134_reg_2874;
assign mul_ln277_1_fu_2165_p1 = 16'd190;
assign mul_ln277_fu_2006_p0 = mul_ln277_fu_2006_p00;
assign mul_ln277_fu_2006_p00 = empty_72_reg_2584;
assign mul_ln277_fu_2006_p1 = 16'd190;
assign p_cast704_fu_1060_p1 = grp_fu_2171_p3;
assign p_cast705_fu_1172_p1 = grp_fu_2187_p3;
assign p_cast706_fu_1179_p1 = grp_fu_2195_p3;
assign p_cast707_fu_1284_p1 = grp_fu_2203_p3;
assign p_cast708_fu_1291_p1 = grp_fu_2211_p3;
assign p_cast709_fu_1396_p1 = grp_fu_2219_p3;
assign p_cast710_fu_1403_p1 = grp_fu_2227_p3;
assign p_cast711_fu_1508_p1 = grp_fu_2235_p3;
assign p_cast712_fu_1515_p1 = grp_fu_2243_p3;
assign p_cast713_fu_1620_p1 = grp_fu_2251_p3;
assign p_cast714_fu_1627_p1 = grp_fu_2259_p3;
assign p_cast715_fu_1732_p1 = grp_fu_2267_p3;
assign p_cast716_fu_1739_p1 = grp_fu_2275_p3;
assign p_cast717_fu_1824_p1 = grp_fu_2283_p3;
assign p_cast718_fu_1831_p1 = grp_fu_2291_p3;
assign p_cast719_fu_1916_p1 = grp_fu_2299_p3;
assign p_cast720_fu_1923_p1 = grp_fu_2307_p3;
assign p_cast_fu_1067_p1 = grp_fu_2179_p3;
assign tmp_1_fu_994_p3 = {{tmp_fu_984_p4}, {1'd1}};
assign tmp_fu_984_p4 = {{v115_reg_758[7:1]}};
assign trunc_ln168_fu_950_p1 = v114_fu_128[1:0];
assign v10_fu_1373_p2 = v226_0_q0;
assign v10_fu_1373_p4 = v226_1_q0;
assign v10_fu_1373_p6 = v226_2_q0;
assign v10_fu_1373_p8 = v226_3_q0;
assign v10_fu_1373_p9 = 'bx;
assign v119_1_fu_1597_p2 = v226_0_q0;
assign v119_1_fu_1597_p4 = v226_1_q0;
assign v119_1_fu_1597_p6 = v226_2_q0;
assign v119_1_fu_1597_p8 = v226_3_q0;
assign v119_1_fu_1597_p9 = 'bx;
assign v12_fu_1446_p2 = v226_0_q1;
assign v12_fu_1446_p4 = v226_1_q1;
assign v12_fu_1446_p6 = v226_2_q1;
assign v12_fu_1446_p8 = v226_3_q1;
assign v12_fu_1446_p9 = 'bx;
assign v132_1_fu_1670_p2 = v226_0_q1;
assign v132_1_fu_1670_p4 = v226_1_q1;
assign v132_1_fu_1670_p6 = v226_2_q1;
assign v132_1_fu_1670_p8 = v226_3_q1;
assign v132_1_fu_1670_p9 = 'bx;
assign v143_1_fu_1709_p2 = v226_0_q0;
assign v143_1_fu_1709_p4 = v226_1_q0;
assign v143_1_fu_1709_p6 = v226_2_q0;
assign v143_1_fu_1709_p8 = v226_3_q0;
assign v143_1_fu_1709_p9 = 'bx;
assign v14_fu_1485_p2 = v226_0_q0;
assign v14_fu_1485_p4 = v226_1_q0;
assign v14_fu_1485_p6 = v226_2_q0;
assign v14_fu_1485_p8 = v226_3_q0;
assign v14_fu_1485_p9 = 'bx;
assign v154_1_fu_1762_p2 = v226_0_q1;
assign v154_1_fu_1762_p4 = v226_1_q1;
assign v154_1_fu_1762_p6 = v226_2_q1;
assign v154_1_fu_1762_p8 = v226_3_q1;
assign v154_1_fu_1762_p9 = 'bx;
assign v165_1_fu_1801_p2 = v226_0_q0;
assign v165_1_fu_1801_p4 = v226_1_q0;
assign v165_1_fu_1801_p6 = v226_2_q0;
assign v165_1_fu_1801_p8 = v226_3_q0;
assign v165_1_fu_1801_p9 = 'bx;
assign v16_fu_1558_p2 = v226_0_q1;
assign v16_fu_1558_p4 = v226_1_q1;
assign v16_fu_1558_p6 = v226_2_q1;
assign v16_fu_1558_p8 = v226_3_q1;
assign v16_fu_1558_p9 = 'bx;
assign v176_1_fu_1854_p2 = v226_0_q1;
assign v176_1_fu_1854_p4 = v226_1_q1;
assign v176_1_fu_1854_p6 = v226_2_q1;
assign v176_1_fu_1854_p8 = v226_3_q1;
assign v176_1_fu_1854_p9 = 'bx;
assign v187_1_fu_1893_p2 = v226_0_q0;
assign v187_1_fu_1893_p4 = v226_1_q0;
assign v187_1_fu_1893_p6 = v226_2_q0;
assign v187_1_fu_1893_p8 = v226_3_q0;
assign v187_1_fu_1893_p9 = 'bx;
assign v198_1_fu_2028_p2 = v226_0_q1;
assign v198_1_fu_2028_p4 = v226_1_q1;
assign v198_1_fu_2028_p6 = v226_2_q1;
assign v198_1_fu_2028_p8 = v226_3_q1;
assign v198_1_fu_2028_p9 = 'bx;
assign v209_1_fu_2067_p2 = v226_0_q0;
assign v209_1_fu_2067_p4 = v226_1_q0;
assign v209_1_fu_2067_p6 = v226_2_q0;
assign v209_1_fu_2067_p8 = v226_3_q0;
assign v209_1_fu_2067_p9 = 'bx;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v226_2_address0 = v226_2_address0_local;
assign v226_2_address1 = v226_2_address1_local;
assign v226_2_ce0 = v226_2_ce0_local;
assign v226_2_ce1 = v226_2_ce1_local;
assign v226_3_address0 = v226_3_address0_local;
assign v226_3_address1 = v226_3_address1_local;
assign v226_3_ce0 = v226_3_ce0_local;
assign v226_3_ce1 = v226_3_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v2_fu_1149_p2 = v226_0_q0;
assign v2_fu_1149_p4 = v226_1_q0;
assign v2_fu_1149_p6 = v226_2_q0;
assign v2_fu_1149_p8 = v226_3_q0;
assign v2_fu_1149_p9 = 'bx;
assign v4_fu_1222_p2 = v226_0_q1;
assign v4_fu_1222_p4 = v226_1_q1;
assign v4_fu_1222_p6 = v226_2_q1;
assign v4_fu_1222_p8 = v226_3_q1;
assign v4_fu_1222_p9 = 'bx;
assign v6_fu_1261_p2 = v226_0_q0;
assign v6_fu_1261_p4 = v226_1_q0;
assign v6_fu_1261_p6 = v226_2_q0;
assign v6_fu_1261_p8 = v226_3_q0;
assign v6_fu_1261_p9 = 'bx;
assign v8_fu_1334_p2 = v226_0_q1;
assign v8_fu_1334_p4 = v226_1_q1;
assign v8_fu_1334_p6 = v226_2_q1;
assign v8_fu_1334_p8 = v226_3_q1;
assign v8_fu_1334_p9 = 'bx;
assign v_fu_1110_p2 = v226_0_q1;
assign v_fu_1110_p4 = v226_1_q1;
assign v_fu_1110_p6 = v226_2_q1;
assign v_fu_1110_p8 = v226_3_q1;
assign v_fu_1110_p9 = 'bx;
assign zext_ln168_fu_964_p1 = lshr_ln_fu_954_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_2383[13:6] <= 8'b00000000;
    tmp_1_reg_2419[0] <= 1'b1;
end
endmodule 