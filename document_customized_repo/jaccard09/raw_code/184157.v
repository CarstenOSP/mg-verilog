module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v226_4_address0,v226_4_ce0,v226_4_q0,v226_4_address1,v226_4_ce1,v226_4_q1,v226_5_address0,v226_5_ce0,v226_5_q0,v226_5_address1,v226_5_ce1,v226_5_q1,v226_6_address0,v226_6_ce0,v226_6_q0,v226_6_address1,v226_6_ce1,v226_6_q1,v226_7_address0,v226_7_ce0,v226_7_q0,v226_7_address1,v226_7_ce1,v226_7_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_opcode,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_dout0,grp_fu_228_p_ce,grp_fu_232_p_din0,grp_fu_232_p_din1,grp_fu_232_p_dout0,grp_fu_232_p_ce,grp_fu_236_p_din0,grp_fu_236_p_din1,grp_fu_236_p_dout0,grp_fu_236_p_ce,grp_fu_240_p_din0,grp_fu_240_p_din1,grp_fu_240_p_dout0,grp_fu_240_p_ce); 
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
output  [12:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [12:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [12:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [12:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [12:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [12:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [12:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [12:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
output  [12:0] v226_4_address0;
output   v226_4_ce0;
input  [31:0] v226_4_q0;
output  [12:0] v226_4_address1;
output   v226_4_ce1;
input  [31:0] v226_4_q1;
output  [12:0] v226_5_address0;
output   v226_5_ce0;
input  [31:0] v226_5_q0;
output  [12:0] v226_5_address1;
output   v226_5_ce1;
input  [31:0] v226_5_q1;
output  [12:0] v226_6_address0;
output   v226_6_ce0;
input  [31:0] v226_6_q0;
output  [12:0] v226_6_address1;
output   v226_6_ce1;
input  [31:0] v226_6_q1;
output  [12:0] v226_7_address0;
output   v226_7_ce0;
input  [31:0] v226_7_q0;
output  [12:0] v226_7_address1;
output   v226_7_ce1;
input  [31:0] v226_7_q1;
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
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
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_895_p2;
wire   [7:0] add_ln168_fu_901_p2;
reg   [7:0] add_ln168_reg_1952;
wire   [2:0] trunc_ln168_fu_907_p1;
reg   [2:0] trunc_ln168_reg_1957;
wire   [12:0] zext_ln175_fu_921_p1;
reg   [12:0] zext_ln175_reg_1971;
wire   [12:0] mul_ln175_fu_925_p2;
reg   [12:0] mul_ln175_reg_1984;
wire   [0:0] cmp11_fu_931_p2;
reg   [0:0] cmp11_reg_1989;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_947_p2;
reg   [7:0] add_ln169_reg_2002;
wire   [7:0] empty_29_fu_957_p2;
reg   [7:0] empty_29_reg_2007;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_40_fu_967_p2;
reg   [7:0] empty_40_reg_2017;
wire   [7:0] empty_51_fu_977_p2;
reg   [7:0] empty_51_reg_2027;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_62_fu_987_p2;
reg   [7:0] empty_62_reg_2037;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_73_fu_1008_p2;
reg   [7:0] empty_73_reg_2087;
wire   [7:0] empty_84_fu_1018_p2;
reg   [7:0] empty_84_reg_2097;
wire   [31:0] v_fu_1060_p19;
reg   [31:0] v_reg_2107;
wire    ap_CS_fsm_state7;
wire   [7:0] empty_95_fu_1121_p2;
reg   [7:0] empty_95_reg_2192;
wire   [7:0] empty_106_fu_1131_p2;
reg   [7:0] empty_106_reg_2202;
wire   [31:0] v39_fu_1173_p19;
reg   [31:0] v39_reg_2212;
wire    ap_CS_fsm_state8;
wire   [31:0] v41_fu_1244_p19;
reg   [31:0] v41_reg_2217;
wire   [31:0] v43_fu_1337_p19;
reg   [31:0] v43_reg_2302;
wire    ap_CS_fsm_state9;
wire   [31:0] v45_fu_1408_p19;
reg   [31:0] v45_reg_2307;
wire   [31:0] v47_fu_1501_p19;
reg   [31:0] v47_reg_2392;
wire    ap_CS_fsm_state10;
wire   [31:0] v49_fu_1572_p19;
reg   [31:0] v49_reg_2397;
wire   [31:0] v51_fu_1665_p19;
reg   [31:0] v51_reg_2482;
wire    ap_CS_fsm_state11;
wire   [31:0] v53_fu_1736_p19;
reg   [31:0] v53_reg_2487;
wire   [15:0] mul_ln171_fu_1779_p2;
reg   [15:0] mul_ln171_reg_2492;
wire    ap_CS_fsm_state15;
reg   [31:0] v38_reg_2497;
wire   [15:0] mul_ln186_fu_1788_p2;
reg   [15:0] mul_ln186_reg_2502;
reg   [31:0] v40_reg_2507;
wire   [15:0] mul_ln199_fu_1797_p2;
reg   [15:0] mul_ln199_reg_2512;
reg   [31:0] v42_reg_2517;
wire   [15:0] mul_ln212_fu_1806_p2;
reg   [15:0] mul_ln212_reg_2522;
reg   [31:0] v44_reg_2527;
wire   [15:0] mul_ln225_fu_1815_p2;
reg   [15:0] mul_ln225_reg_2532;
reg   [31:0] v46_reg_2537;
wire   [15:0] mul_ln238_fu_1824_p2;
reg   [15:0] mul_ln238_reg_2542;
reg   [31:0] v48_reg_2547;
wire   [15:0] mul_ln251_fu_1833_p2;
reg   [15:0] mul_ln251_reg_2552;
reg   [31:0] v50_reg_2557;
wire   [15:0] mul_ln264_fu_1842_p2;
reg   [15:0] mul_ln264_reg_2562;
reg   [31:0] v52_reg_2567;
wire   [15:0] mul_ln277_fu_1851_p2;
reg   [15:0] mul_ln277_reg_2572;
reg   [31:0] v54_reg_2577;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_ce;
reg   [7:0] v115_reg_796;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast2084_fu_997_p1;
wire   [63:0] p_cast_fu_1099_p1;
wire   [63:0] p_cast2085_fu_1110_p1;
wire   [63:0] p_cast2086_fu_1283_p1;
wire   [63:0] p_cast2087_fu_1294_p1;
wire   [63:0] p_cast2088_fu_1447_p1;
wire   [63:0] p_cast2089_fu_1458_p1;
wire   [63:0] p_cast2090_fu_1611_p1;
wire   [63:0] p_cast2091_fu_1622_p1;
reg   [7:0] v114_fu_130;
wire   [0:0] icmp_ln169_fu_937_p2;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [12:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [12:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [12:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [12:0] v226_1_address1_local;
reg    v226_2_ce0_local;
reg   [12:0] v226_2_address0_local;
reg    v226_2_ce1_local;
reg   [12:0] v226_2_address1_local;
reg    v226_3_ce0_local;
reg   [12:0] v226_3_address0_local;
reg    v226_3_ce1_local;
reg   [12:0] v226_3_address1_local;
reg    v226_4_ce0_local;
reg   [12:0] v226_4_address0_local;
reg    v226_4_ce1_local;
reg   [12:0] v226_4_address1_local;
reg    v226_5_ce0_local;
reg   [12:0] v226_5_address0_local;
reg    v226_5_ce1_local;
reg   [12:0] v226_5_address1_local;
reg    v226_6_ce0_local;
reg   [12:0] v226_6_address0_local;
reg    v226_6_ce1_local;
reg   [12:0] v226_6_address1_local;
reg    v226_7_ce0_local;
reg   [12:0] v226_7_address0_local;
reg    v226_7_ce1_local;
reg   [12:0] v226_7_address1_local;
reg   [31:0] grp_fu_851_p0;
reg   [31:0] grp_fu_851_p1;
wire    ap_CS_fsm_state12;
wire   [4:0] lshr_ln_fu_911_p4;
wire   [4:0] mul_ln175_fu_925_p0;
wire   [8:0] mul_ln175_fu_925_p1;
wire   [12:0] grp_fu_1857_p3;
wire   [31:0] v_fu_1060_p2;
wire   [31:0] v_fu_1060_p4;
wire   [31:0] v_fu_1060_p6;
wire   [31:0] v_fu_1060_p8;
wire   [31:0] v_fu_1060_p10;
wire   [31:0] v_fu_1060_p12;
wire   [31:0] v_fu_1060_p14;
wire   [31:0] v_fu_1060_p16;
wire   [31:0] v_fu_1060_p17;
wire   [12:0] grp_fu_1865_p3;
wire   [12:0] grp_fu_1873_p3;
wire   [31:0] v39_fu_1173_p2;
wire   [31:0] v39_fu_1173_p4;
wire   [31:0] v39_fu_1173_p6;
wire   [31:0] v39_fu_1173_p8;
wire   [31:0] v39_fu_1173_p10;
wire   [31:0] v39_fu_1173_p12;
wire   [31:0] v39_fu_1173_p14;
wire   [31:0] v39_fu_1173_p16;
wire   [31:0] v39_fu_1173_p17;
wire   [31:0] v41_fu_1244_p2;
wire   [31:0] v41_fu_1244_p4;
wire   [31:0] v41_fu_1244_p6;
wire   [31:0] v41_fu_1244_p8;
wire   [31:0] v41_fu_1244_p10;
wire   [31:0] v41_fu_1244_p12;
wire   [31:0] v41_fu_1244_p14;
wire   [31:0] v41_fu_1244_p16;
wire   [31:0] v41_fu_1244_p17;
wire   [12:0] grp_fu_1881_p3;
wire   [12:0] grp_fu_1889_p3;
wire   [31:0] v43_fu_1337_p2;
wire   [31:0] v43_fu_1337_p4;
wire   [31:0] v43_fu_1337_p6;
wire   [31:0] v43_fu_1337_p8;
wire   [31:0] v43_fu_1337_p10;
wire   [31:0] v43_fu_1337_p12;
wire   [31:0] v43_fu_1337_p14;
wire   [31:0] v43_fu_1337_p16;
wire   [31:0] v43_fu_1337_p17;
wire   [31:0] v45_fu_1408_p2;
wire   [31:0] v45_fu_1408_p4;
wire   [31:0] v45_fu_1408_p6;
wire   [31:0] v45_fu_1408_p8;
wire   [31:0] v45_fu_1408_p10;
wire   [31:0] v45_fu_1408_p12;
wire   [31:0] v45_fu_1408_p14;
wire   [31:0] v45_fu_1408_p16;
wire   [31:0] v45_fu_1408_p17;
wire   [12:0] grp_fu_1897_p3;
wire   [12:0] grp_fu_1905_p3;
wire   [31:0] v47_fu_1501_p2;
wire   [31:0] v47_fu_1501_p4;
wire   [31:0] v47_fu_1501_p6;
wire   [31:0] v47_fu_1501_p8;
wire   [31:0] v47_fu_1501_p10;
wire   [31:0] v47_fu_1501_p12;
wire   [31:0] v47_fu_1501_p14;
wire   [31:0] v47_fu_1501_p16;
wire   [31:0] v47_fu_1501_p17;
wire   [31:0] v49_fu_1572_p2;
wire   [31:0] v49_fu_1572_p4;
wire   [31:0] v49_fu_1572_p6;
wire   [31:0] v49_fu_1572_p8;
wire   [31:0] v49_fu_1572_p10;
wire   [31:0] v49_fu_1572_p12;
wire   [31:0] v49_fu_1572_p14;
wire   [31:0] v49_fu_1572_p16;
wire   [31:0] v49_fu_1572_p17;
wire   [12:0] grp_fu_1913_p3;
wire   [12:0] grp_fu_1921_p3;
wire   [31:0] v51_fu_1665_p2;
wire   [31:0] v51_fu_1665_p4;
wire   [31:0] v51_fu_1665_p6;
wire   [31:0] v51_fu_1665_p8;
wire   [31:0] v51_fu_1665_p10;
wire   [31:0] v51_fu_1665_p12;
wire   [31:0] v51_fu_1665_p14;
wire   [31:0] v51_fu_1665_p16;
wire   [31:0] v51_fu_1665_p17;
wire   [31:0] v53_fu_1736_p2;
wire   [31:0] v53_fu_1736_p4;
wire   [31:0] v53_fu_1736_p6;
wire   [31:0] v53_fu_1736_p8;
wire   [31:0] v53_fu_1736_p10;
wire   [31:0] v53_fu_1736_p12;
wire   [31:0] v53_fu_1736_p14;
wire   [31:0] v53_fu_1736_p16;
wire   [31:0] v53_fu_1736_p17;
wire   [7:0] mul_ln171_fu_1779_p0;
wire   [8:0] mul_ln171_fu_1779_p1;
wire   [7:0] mul_ln186_fu_1788_p0;
wire   [8:0] mul_ln186_fu_1788_p1;
wire   [7:0] mul_ln199_fu_1797_p0;
wire   [8:0] mul_ln199_fu_1797_p1;
wire   [7:0] mul_ln212_fu_1806_p0;
wire   [8:0] mul_ln212_fu_1806_p1;
wire   [7:0] mul_ln225_fu_1815_p0;
wire   [8:0] mul_ln225_fu_1815_p1;
wire   [7:0] mul_ln238_fu_1824_p0;
wire   [8:0] mul_ln238_fu_1824_p1;
wire   [7:0] mul_ln251_fu_1833_p0;
wire   [8:0] mul_ln251_fu_1833_p1;
wire   [7:0] mul_ln264_fu_1842_p0;
wire   [8:0] mul_ln264_fu_1842_p1;
wire   [7:0] mul_ln277_fu_1851_p0;
wire   [8:0] mul_ln277_fu_1851_p1;
wire   [7:0] grp_fu_1857_p0;
wire   [4:0] grp_fu_1857_p1;
wire   [4:0] grp_fu_1857_p2;
wire   [7:0] grp_fu_1865_p0;
wire   [4:0] grp_fu_1865_p1;
wire   [4:0] grp_fu_1865_p2;
wire   [7:0] grp_fu_1873_p0;
wire   [4:0] grp_fu_1873_p1;
wire   [4:0] grp_fu_1873_p2;
wire   [7:0] grp_fu_1881_p0;
wire   [4:0] grp_fu_1881_p1;
wire   [4:0] grp_fu_1881_p2;
wire   [7:0] grp_fu_1889_p0;
wire   [4:0] grp_fu_1889_p1;
wire   [4:0] grp_fu_1889_p2;
wire   [7:0] grp_fu_1897_p0;
wire   [4:0] grp_fu_1897_p1;
wire   [4:0] grp_fu_1897_p2;
wire   [7:0] grp_fu_1905_p0;
wire   [4:0] grp_fu_1905_p1;
wire   [4:0] grp_fu_1905_p2;
wire   [7:0] grp_fu_1913_p0;
wire   [4:0] grp_fu_1913_p1;
wire   [4:0] grp_fu_1913_p2;
wire   [7:0] grp_fu_1921_p0;
wire   [4:0] grp_fu_1921_p1;
wire   [4:0] grp_fu_1921_p2;
reg    grp_fu_851_ce;
reg    grp_fu_2582_ce;
reg   [16:0] ap_NS_fsm;
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
wire   [12:0] grp_fu_1857_p00;
wire   [12:0] grp_fu_1865_p00;
wire   [12:0] grp_fu_1873_p00;
wire   [12:0] grp_fu_1881_p00;
wire   [12:0] grp_fu_1889_p00;
wire   [12:0] grp_fu_1897_p00;
wire   [12:0] grp_fu_1905_p00;
wire   [12:0] grp_fu_1913_p00;
wire   [12:0] grp_fu_1921_p00;
wire   [15:0] mul_ln171_fu_1779_p00;
wire   [12:0] mul_ln175_fu_925_p00;
wire   [15:0] mul_ln186_fu_1788_p00;
wire   [15:0] mul_ln199_fu_1797_p00;
wire   [15:0] mul_ln212_fu_1806_p00;
wire   [15:0] mul_ln225_fu_1815_p00;
wire   [15:0] mul_ln238_fu_1824_p00;
wire   [15:0] mul_ln251_fu_1833_p00;
wire   [15:0] mul_ln264_fu_1842_p00;
wire   [15:0] mul_ln277_fu_1851_p00;
wire   [2:0] v_fu_1060_p1;
wire   [2:0] v_fu_1060_p3;
wire   [2:0] v_fu_1060_p5;
wire   [2:0] v_fu_1060_p7;
wire  signed [2:0] v_fu_1060_p9;
wire  signed [2:0] v_fu_1060_p11;
wire  signed [2:0] v_fu_1060_p13;
wire  signed [2:0] v_fu_1060_p15;
wire   [2:0] v39_fu_1173_p1;
wire   [2:0] v39_fu_1173_p3;
wire   [2:0] v39_fu_1173_p5;
wire   [2:0] v39_fu_1173_p7;
wire  signed [2:0] v39_fu_1173_p9;
wire  signed [2:0] v39_fu_1173_p11;
wire  signed [2:0] v39_fu_1173_p13;
wire  signed [2:0] v39_fu_1173_p15;
wire   [2:0] v41_fu_1244_p1;
wire   [2:0] v41_fu_1244_p3;
wire   [2:0] v41_fu_1244_p5;
wire   [2:0] v41_fu_1244_p7;
wire  signed [2:0] v41_fu_1244_p9;
wire  signed [2:0] v41_fu_1244_p11;
wire  signed [2:0] v41_fu_1244_p13;
wire  signed [2:0] v41_fu_1244_p15;
wire   [2:0] v43_fu_1337_p1;
wire   [2:0] v43_fu_1337_p3;
wire   [2:0] v43_fu_1337_p5;
wire   [2:0] v43_fu_1337_p7;
wire  signed [2:0] v43_fu_1337_p9;
wire  signed [2:0] v43_fu_1337_p11;
wire  signed [2:0] v43_fu_1337_p13;
wire  signed [2:0] v43_fu_1337_p15;
wire   [2:0] v45_fu_1408_p1;
wire   [2:0] v45_fu_1408_p3;
wire   [2:0] v45_fu_1408_p5;
wire   [2:0] v45_fu_1408_p7;
wire  signed [2:0] v45_fu_1408_p9;
wire  signed [2:0] v45_fu_1408_p11;
wire  signed [2:0] v45_fu_1408_p13;
wire  signed [2:0] v45_fu_1408_p15;
wire   [2:0] v47_fu_1501_p1;
wire   [2:0] v47_fu_1501_p3;
wire   [2:0] v47_fu_1501_p5;
wire   [2:0] v47_fu_1501_p7;
wire  signed [2:0] v47_fu_1501_p9;
wire  signed [2:0] v47_fu_1501_p11;
wire  signed [2:0] v47_fu_1501_p13;
wire  signed [2:0] v47_fu_1501_p15;
wire   [2:0] v49_fu_1572_p1;
wire   [2:0] v49_fu_1572_p3;
wire   [2:0] v49_fu_1572_p5;
wire   [2:0] v49_fu_1572_p7;
wire  signed [2:0] v49_fu_1572_p9;
wire  signed [2:0] v49_fu_1572_p11;
wire  signed [2:0] v49_fu_1572_p13;
wire  signed [2:0] v49_fu_1572_p15;
wire   [2:0] v51_fu_1665_p1;
wire   [2:0] v51_fu_1665_p3;
wire   [2:0] v51_fu_1665_p5;
wire   [2:0] v51_fu_1665_p7;
wire  signed [2:0] v51_fu_1665_p9;
wire  signed [2:0] v51_fu_1665_p11;
wire  signed [2:0] v51_fu_1665_p13;
wire  signed [2:0] v51_fu_1665_p15;
wire   [2:0] v53_fu_1736_p1;
wire   [2:0] v53_fu_1736_p3;
wire   [2:0] v53_fu_1736_p5;
wire   [2:0] v53_fu_1736_p7;
wire  signed [2:0] v53_fu_1736_p9;
wire  signed [2:0] v53_fu_1736_p11;
wire  signed [2:0] v53_fu_1736_p13;
wire  signed [2:0] v53_fu_1736_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start_reg = 1'b0;
#0 v114_fu_130 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_808(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_d1),.v225_q1(v225_q1),.mul_ln175(mul_ln175_reg_1984),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_ce1),.v227_7_q1(v227_7_q1),.mul_ln171(mul_ln171_reg_2492),.mul_ln186(mul_ln186_reg_2502),.mul_ln199(mul_ln199_reg_2512),.mul_ln212(mul_ln212_reg_2522),.mul_ln225(mul_ln225_reg_2532),.mul_ln238(mul_ln238_reg_2542),.mul_ln251(mul_ln251_reg_2552),.mul_ln264(mul_ln264_reg_2562),.mul_ln277(mul_ln277_reg_2572),.cmp11(cmp11_reg_1989),.empty(trunc_ln168_reg_1957),.v120(v38_reg_2497),.v133(v40_reg_2507),.v144(v42_reg_2517),.v155(v44_reg_2527),.v166(v46_reg_2537),.v177(v48_reg_2547),.v188(v50_reg_2557),.v199(v52_reg_2567),.v210(v54_reg_2577),.grp_fu_2582_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_din0),.grp_fu_2582_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_din1),.grp_fu_2582_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_opcode),.grp_fu_2582_p_dout0(grp_fu_204_p_dout0),.grp_fu_2582_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_ce),.grp_fu_851_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_din0),.grp_fu_851_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_din1),.grp_fu_851_p_dout0(grp_fu_208_p_dout0),.grp_fu_851_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U59(.din0(mul_ln175_fu_925_p0),.din1(mul_ln175_fu_925_p1),.dout(mul_ln175_fu_925_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U60(.din0(v_fu_1060_p2),.din1(v_fu_1060_p4),.din2(v_fu_1060_p6),.din3(v_fu_1060_p8),.din4(v_fu_1060_p10),.din5(v_fu_1060_p12),.din6(v_fu_1060_p14),.din7(v_fu_1060_p16),.def(v_fu_1060_p17),.sel(trunc_ln168_reg_1957),.dout(v_fu_1060_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U61(.din0(v39_fu_1173_p2),.din1(v39_fu_1173_p4),.din2(v39_fu_1173_p6),.din3(v39_fu_1173_p8),.din4(v39_fu_1173_p10),.din5(v39_fu_1173_p12),.din6(v39_fu_1173_p14),.din7(v39_fu_1173_p16),.def(v39_fu_1173_p17),.sel(trunc_ln168_reg_1957),.dout(v39_fu_1173_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U62(.din0(v41_fu_1244_p2),.din1(v41_fu_1244_p4),.din2(v41_fu_1244_p6),.din3(v41_fu_1244_p8),.din4(v41_fu_1244_p10),.din5(v41_fu_1244_p12),.din6(v41_fu_1244_p14),.din7(v41_fu_1244_p16),.def(v41_fu_1244_p17),.sel(trunc_ln168_reg_1957),.dout(v41_fu_1244_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U63(.din0(v43_fu_1337_p2),.din1(v43_fu_1337_p4),.din2(v43_fu_1337_p6),.din3(v43_fu_1337_p8),.din4(v43_fu_1337_p10),.din5(v43_fu_1337_p12),.din6(v43_fu_1337_p14),.din7(v43_fu_1337_p16),.def(v43_fu_1337_p17),.sel(trunc_ln168_reg_1957),.dout(v43_fu_1337_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U64(.din0(v45_fu_1408_p2),.din1(v45_fu_1408_p4),.din2(v45_fu_1408_p6),.din3(v45_fu_1408_p8),.din4(v45_fu_1408_p10),.din5(v45_fu_1408_p12),.din6(v45_fu_1408_p14),.din7(v45_fu_1408_p16),.def(v45_fu_1408_p17),.sel(trunc_ln168_reg_1957),.dout(v45_fu_1408_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U65(.din0(v47_fu_1501_p2),.din1(v47_fu_1501_p4),.din2(v47_fu_1501_p6),.din3(v47_fu_1501_p8),.din4(v47_fu_1501_p10),.din5(v47_fu_1501_p12),.din6(v47_fu_1501_p14),.din7(v47_fu_1501_p16),.def(v47_fu_1501_p17),.sel(trunc_ln168_reg_1957),.dout(v47_fu_1501_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U66(.din0(v49_fu_1572_p2),.din1(v49_fu_1572_p4),.din2(v49_fu_1572_p6),.din3(v49_fu_1572_p8),.din4(v49_fu_1572_p10),.din5(v49_fu_1572_p12),.din6(v49_fu_1572_p14),.din7(v49_fu_1572_p16),.def(v49_fu_1572_p17),.sel(trunc_ln168_reg_1957),.dout(v49_fu_1572_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U67(.din0(v51_fu_1665_p2),.din1(v51_fu_1665_p4),.din2(v51_fu_1665_p6),.din3(v51_fu_1665_p8),.din4(v51_fu_1665_p10),.din5(v51_fu_1665_p12),.din6(v51_fu_1665_p14),.din7(v51_fu_1665_p16),.def(v51_fu_1665_p17),.sel(trunc_ln168_reg_1957),.dout(v51_fu_1665_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U68(.din0(v53_fu_1736_p2),.din1(v53_fu_1736_p4),.din2(v53_fu_1736_p6),.din3(v53_fu_1736_p8),.din4(v53_fu_1736_p10),.din5(v53_fu_1736_p12),.din6(v53_fu_1736_p14),.din7(v53_fu_1736_p16),.def(v53_fu_1736_p17),.sel(trunc_ln168_reg_1957),.dout(v53_fu_1736_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln171_fu_1779_p0),.din1(mul_ln171_fu_1779_p1),.dout(mul_ln171_fu_1779_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln186_fu_1788_p0),.din1(mul_ln186_fu_1788_p1),.dout(mul_ln186_fu_1788_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln199_fu_1797_p0),.din1(mul_ln199_fu_1797_p1),.dout(mul_ln199_fu_1797_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln212_fu_1806_p0),.din1(mul_ln212_fu_1806_p1),.dout(mul_ln212_fu_1806_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln225_fu_1815_p0),.din1(mul_ln225_fu_1815_p1),.dout(mul_ln225_fu_1815_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln238_fu_1824_p0),.din1(mul_ln238_fu_1824_p1),.dout(mul_ln238_fu_1824_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln251_fu_1833_p0),.din1(mul_ln251_fu_1833_p1),.dout(mul_ln251_fu_1833_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U76(.din0(mul_ln264_fu_1842_p0),.din1(mul_ln264_fu_1842_p1),.dout(mul_ln264_fu_1842_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U77(.din0(mul_ln277_fu_1851_p0),.din1(mul_ln277_fu_1851_p1),.dout(mul_ln277_fu_1851_p2));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1857_p0),.din1(grp_fu_1857_p1),.din2(grp_fu_1857_p2),.ce(1'b1),.dout(grp_fu_1857_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1865_p0),.din1(grp_fu_1865_p1),.din2(grp_fu_1865_p2),.ce(1'b1),.dout(grp_fu_1865_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1873_p0),.din1(grp_fu_1873_p1),.din2(grp_fu_1873_p2),.ce(1'b1),.dout(grp_fu_1873_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1881_p0),.din1(grp_fu_1881_p1),.din2(grp_fu_1881_p2),.ce(1'b1),.dout(grp_fu_1881_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1889_p0),.din1(grp_fu_1889_p1),.din2(grp_fu_1889_p2),.ce(1'b1),.dout(grp_fu_1889_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1897_p0),.din1(grp_fu_1897_p1),.din2(grp_fu_1897_p2),.ce(1'b1),.dout(grp_fu_1897_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1905_p0),.din1(grp_fu_1905_p1),.din2(grp_fu_1905_p2),.ce(1'b1),.dout(grp_fu_1905_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1913_p0),.din1(grp_fu_1913_p1),.din2(grp_fu_1913_p2),.ce(1'b1),.dout(grp_fu_1913_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1921_p0),.din1(grp_fu_1921_p1),.din2(grp_fu_1921_p2),.ce(1'b1),.dout(grp_fu_1921_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_130 <= 8'd0;
    end else if (((icmp_ln169_fu_937_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_130 <= add_ln168_reg_1952;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_796 <= add_ln169_reg_2002;
    end else if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_895_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_796 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_1952 <= add_ln168_fu_901_p2;
        cmp11_reg_1989 <= cmp11_fu_931_p2;
        mul_ln175_reg_1984 <= mul_ln175_fu_925_p2;
        trunc_ln168_reg_1957 <= trunc_ln168_fu_907_p1;
        zext_ln175_reg_1971[4 : 0] <= zext_ln175_fu_921_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_2002 <= add_ln169_fu_947_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_106_reg_2202 <= empty_106_fu_1131_p2;
        empty_95_reg_2192 <= empty_95_fu_1121_p2;
        v_reg_2107 <= v_fu_1060_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_29_reg_2007 <= empty_29_fu_957_p2;
        empty_40_reg_2017 <= empty_40_fu_967_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_51_reg_2027 <= empty_51_fu_977_p2;
        empty_62_reg_2037 <= empty_62_fu_987_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_73_reg_2087 <= empty_73_fu_1008_p2;
        empty_84_reg_2097 <= empty_84_fu_1018_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_2492 <= mul_ln171_fu_1779_p2;
        mul_ln186_reg_2502 <= mul_ln186_fu_1788_p2;
        mul_ln199_reg_2512 <= mul_ln199_fu_1797_p2;
        mul_ln212_reg_2522 <= mul_ln212_fu_1806_p2;
        mul_ln225_reg_2532 <= mul_ln225_fu_1815_p2;
        mul_ln238_reg_2542 <= mul_ln238_fu_1824_p2;
        mul_ln251_reg_2552 <= mul_ln251_fu_1833_p2;
        mul_ln264_reg_2562 <= mul_ln264_fu_1842_p2;
        mul_ln277_reg_2572 <= mul_ln277_fu_1851_p2;
        v38_reg_2497 <= grp_fu_208_p_dout0;
        v40_reg_2507 <= grp_fu_212_p_dout0;
        v42_reg_2517 <= grp_fu_216_p_dout0;
        v44_reg_2527 <= grp_fu_220_p_dout0;
        v46_reg_2537 <= grp_fu_224_p_dout0;
        v48_reg_2547 <= grp_fu_228_p_dout0;
        v50_reg_2557 <= grp_fu_232_p_dout0;
        v52_reg_2567 <= grp_fu_236_p_dout0;
        v54_reg_2577 <= grp_fu_240_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v39_reg_2212 <= v39_fu_1173_p19;
        v41_reg_2217 <= v41_fu_1244_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v43_reg_2302 <= v43_fu_1337_p19;
        v45_reg_2307 <= v45_fu_1408_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v47_reg_2392 <= v47_fu_1501_p19;
        v49_reg_2397 <= v49_fu_1572_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v51_reg_2482 <= v51_fu_1665_p19;
        v53_reg_2487 <= v53_fu_1736_p19;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
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
    if ((((1'b0 == ap_block_state2) & (icmp_ln168_fu_895_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_895_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2582_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_ce;
    end else begin
        grp_fu_2582_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_851_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_ce;
    end else begin
        grp_fu_851_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_851_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_851_p0 = v_reg_2107;
    end else begin
        grp_fu_851_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_851_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_851_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_851_p1 = v113;
    end else begin
        grp_fu_851_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast2090_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast2088_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast2086_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast2085_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast2084_fu_997_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast2091_fu_1622_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast2089_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast2087_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_1099_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast2090_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast2088_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast2086_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast2085_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast2084_fu_997_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast2091_fu_1622_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast2089_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast2087_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_1099_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address0_local = p_cast2090_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast2088_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast2086_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast2085_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast2084_fu_997_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast2091_fu_1622_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast2089_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast2087_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_1099_p1;
    end else begin
        v226_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce0_local = 1'b1;
    end else begin
        v226_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_2_ce1_local = 1'b1;
    end else begin
        v226_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address0_local = p_cast2090_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast2088_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast2086_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast2085_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast2084_fu_997_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast2091_fu_1622_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast2089_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast2087_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_1099_p1;
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address0_local = p_cast2090_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address0_local = p_cast2088_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address0_local = p_cast2086_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address0_local = p_cast2085_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_4_address0_local = p_cast2084_fu_997_p1;
    end else begin
        v226_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address1_local = p_cast2091_fu_1622_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address1_local = p_cast2089_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address1_local = p_cast2087_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address1_local = p_cast_fu_1099_p1;
    end else begin
        v226_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_4_ce0_local = 1'b1;
    end else begin
        v226_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_4_ce1_local = 1'b1;
    end else begin
        v226_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address0_local = p_cast2090_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address0_local = p_cast2088_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address0_local = p_cast2086_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address0_local = p_cast2085_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_5_address0_local = p_cast2084_fu_997_p1;
    end else begin
        v226_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address1_local = p_cast2091_fu_1622_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address1_local = p_cast2089_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address1_local = p_cast2087_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address1_local = p_cast_fu_1099_p1;
    end else begin
        v226_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_5_ce0_local = 1'b1;
    end else begin
        v226_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_5_ce1_local = 1'b1;
    end else begin
        v226_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address0_local = p_cast2090_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address0_local = p_cast2088_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address0_local = p_cast2086_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address0_local = p_cast2085_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_6_address0_local = p_cast2084_fu_997_p1;
    end else begin
        v226_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address1_local = p_cast2091_fu_1622_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address1_local = p_cast2089_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address1_local = p_cast2087_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address1_local = p_cast_fu_1099_p1;
    end else begin
        v226_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_6_ce0_local = 1'b1;
    end else begin
        v226_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_6_ce1_local = 1'b1;
    end else begin
        v226_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address0_local = p_cast2090_fu_1611_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address0_local = p_cast2088_fu_1447_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address0_local = p_cast2086_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address0_local = p_cast2085_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_7_address0_local = p_cast2084_fu_997_p1;
    end else begin
        v226_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address1_local = p_cast2091_fu_1622_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address1_local = p_cast2089_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address1_local = p_cast2087_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address1_local = p_cast_fu_1099_p1;
    end else begin
        v226_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_7_ce0_local = 1'b1;
    end else begin
        v226_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_7_ce1_local = 1'b1;
    end else begin
        v226_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_895_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_895_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_895_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_895_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_937_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_901_p2 = (v114_fu_130 + 8'd1);
assign add_ln169_fu_947_p2 = (v115_reg_796 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
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
    ap_block_state2 = ((icmp_ln168_fu_895_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_931_p2 = ((v114_fu_130 == 8'd0) ? 1'b1 : 1'b0);
assign empty_106_fu_1131_p2 = (v115_reg_796 + 8'd8);
assign empty_29_fu_957_p2 = (v115_reg_796 + 8'd1);
assign empty_40_fu_967_p2 = (v115_reg_796 + 8'd2);
assign empty_51_fu_977_p2 = (v115_reg_796 + 8'd3);
assign empty_62_fu_987_p2 = (v115_reg_796 + 8'd4);
assign empty_73_fu_1008_p2 = (v115_reg_796 + 8'd5);
assign empty_84_fu_1018_p2 = (v115_reg_796 + 8'd6);
assign empty_95_fu_1121_p2 = (v115_reg_796 + 8'd7);
assign grp_fu_1857_p0 = grp_fu_1857_p00;
assign grp_fu_1857_p00 = v115_reg_796;
assign grp_fu_1857_p1 = 13'd27;
assign grp_fu_1857_p2 = zext_ln175_reg_1971;
assign grp_fu_1865_p0 = grp_fu_1865_p00;
assign grp_fu_1865_p00 = empty_29_fu_957_p2;
assign grp_fu_1865_p1 = 13'd27;
assign grp_fu_1865_p2 = zext_ln175_reg_1971;
assign grp_fu_1873_p0 = grp_fu_1873_p00;
assign grp_fu_1873_p00 = empty_40_fu_967_p2;
assign grp_fu_1873_p1 = 13'd27;
assign grp_fu_1873_p2 = zext_ln175_reg_1971;
assign grp_fu_1881_p0 = grp_fu_1881_p00;
assign grp_fu_1881_p00 = empty_51_fu_977_p2;
assign grp_fu_1881_p1 = 13'd27;
assign grp_fu_1881_p2 = zext_ln175_reg_1971;
assign grp_fu_1889_p0 = grp_fu_1889_p00;
assign grp_fu_1889_p00 = empty_62_fu_987_p2;
assign grp_fu_1889_p1 = 13'd27;
assign grp_fu_1889_p2 = zext_ln175_reg_1971;
assign grp_fu_1897_p0 = grp_fu_1897_p00;
assign grp_fu_1897_p00 = empty_73_fu_1008_p2;
assign grp_fu_1897_p1 = 13'd27;
assign grp_fu_1897_p2 = zext_ln175_reg_1971;
assign grp_fu_1905_p0 = grp_fu_1905_p00;
assign grp_fu_1905_p00 = empty_84_fu_1018_p2;
assign grp_fu_1905_p1 = 13'd27;
assign grp_fu_1905_p2 = zext_ln175_reg_1971;
assign grp_fu_1913_p0 = grp_fu_1913_p00;
assign grp_fu_1913_p00 = empty_95_fu_1121_p2;
assign grp_fu_1913_p1 = 13'd27;
assign grp_fu_1913_p2 = zext_ln175_reg_1971;
assign grp_fu_1921_p0 = grp_fu_1921_p00;
assign grp_fu_1921_p00 = empty_106_fu_1131_p2;
assign grp_fu_1921_p1 = 13'd27;
assign grp_fu_1921_p2 = zext_ln175_reg_1971;
assign grp_fu_204_p_ce = grp_fu_2582_ce;
assign grp_fu_204_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_din0;
assign grp_fu_204_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_grp_fu_2582_p_din1;
assign grp_fu_204_p_opcode = 2'd0;
assign grp_fu_208_p_ce = grp_fu_851_ce;
assign grp_fu_208_p_din0 = grp_fu_851_p0;
assign grp_fu_208_p_din1 = grp_fu_851_p1;
assign grp_fu_212_p_ce = 1'b1;
assign grp_fu_212_p_din0 = v39_reg_2212;
assign grp_fu_212_p_din1 = v113;
assign grp_fu_216_p_ce = 1'b1;
assign grp_fu_216_p_din0 = v41_reg_2217;
assign grp_fu_216_p_din1 = v113;
assign grp_fu_220_p_ce = 1'b1;
assign grp_fu_220_p_din0 = v43_reg_2302;
assign grp_fu_220_p_din1 = v113;
assign grp_fu_224_p_ce = 1'b1;
assign grp_fu_224_p_din0 = v45_reg_2307;
assign grp_fu_224_p_din1 = v113;
assign grp_fu_228_p_ce = 1'b1;
assign grp_fu_228_p_din0 = v47_reg_2392;
assign grp_fu_228_p_din1 = v113;
assign grp_fu_232_p_ce = 1'b1;
assign grp_fu_232_p_din0 = v49_reg_2397;
assign grp_fu_232_p_din1 = v113;
assign grp_fu_236_p_ce = 1'b1;
assign grp_fu_236_p_din0 = v51_reg_2482;
assign grp_fu_236_p_din1 = v113;
assign grp_fu_240_p_ce = 1'b1;
assign grp_fu_240_p_din0 = v53_reg_2487;
assign grp_fu_240_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_ap_start_reg;
assign icmp_ln168_fu_895_p2 = ((v114_fu_130 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_937_p2 = ((v115_reg_796 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_911_p4 = {{v114_fu_130[7:3]}};
assign mul_ln171_fu_1779_p0 = mul_ln171_fu_1779_p00;
assign mul_ln171_fu_1779_p00 = v115_reg_796;
assign mul_ln171_fu_1779_p1 = 16'd190;
assign mul_ln175_fu_925_p0 = mul_ln175_fu_925_p00;
assign mul_ln175_fu_925_p00 = lshr_ln_fu_911_p4;
assign mul_ln175_fu_925_p1 = 13'd190;
assign mul_ln186_fu_1788_p0 = mul_ln186_fu_1788_p00;
assign mul_ln186_fu_1788_p00 = empty_29_reg_2007;
assign mul_ln186_fu_1788_p1 = 16'd190;
assign mul_ln199_fu_1797_p0 = mul_ln199_fu_1797_p00;
assign mul_ln199_fu_1797_p00 = empty_40_reg_2017;
assign mul_ln199_fu_1797_p1 = 16'd190;
assign mul_ln212_fu_1806_p0 = mul_ln212_fu_1806_p00;
assign mul_ln212_fu_1806_p00 = empty_51_reg_2027;
assign mul_ln212_fu_1806_p1 = 16'd190;
assign mul_ln225_fu_1815_p0 = mul_ln225_fu_1815_p00;
assign mul_ln225_fu_1815_p00 = empty_62_reg_2037;
assign mul_ln225_fu_1815_p1 = 16'd190;
assign mul_ln238_fu_1824_p0 = mul_ln238_fu_1824_p00;
assign mul_ln238_fu_1824_p00 = empty_73_reg_2087;
assign mul_ln238_fu_1824_p1 = 16'd190;
assign mul_ln251_fu_1833_p0 = mul_ln251_fu_1833_p00;
assign mul_ln251_fu_1833_p00 = empty_84_reg_2097;
assign mul_ln251_fu_1833_p1 = 16'd190;
assign mul_ln264_fu_1842_p0 = mul_ln264_fu_1842_p00;
assign mul_ln264_fu_1842_p00 = empty_95_reg_2192;
assign mul_ln264_fu_1842_p1 = 16'd190;
assign mul_ln277_fu_1851_p0 = mul_ln277_fu_1851_p00;
assign mul_ln277_fu_1851_p00 = empty_106_reg_2202;
assign mul_ln277_fu_1851_p1 = 16'd190;
assign p_cast2084_fu_997_p1 = grp_fu_1857_p3;
assign p_cast2085_fu_1110_p1 = grp_fu_1873_p3;
assign p_cast2086_fu_1283_p1 = grp_fu_1881_p3;
assign p_cast2087_fu_1294_p1 = grp_fu_1889_p3;
assign p_cast2088_fu_1447_p1 = grp_fu_1897_p3;
assign p_cast2089_fu_1458_p1 = grp_fu_1905_p3;
assign p_cast2090_fu_1611_p1 = grp_fu_1913_p3;
assign p_cast2091_fu_1622_p1 = grp_fu_1921_p3;
assign p_cast_fu_1099_p1 = grp_fu_1865_p3;
assign trunc_ln168_fu_907_p1 = v114_fu_130[2:0];
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v225_we1;
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
assign v226_4_address0 = v226_4_address0_local;
assign v226_4_address1 = v226_4_address1_local;
assign v226_4_ce0 = v226_4_ce0_local;
assign v226_4_ce1 = v226_4_ce1_local;
assign v226_5_address0 = v226_5_address0_local;
assign v226_5_address1 = v226_5_address1_local;
assign v226_5_ce0 = v226_5_ce0_local;
assign v226_5_ce1 = v226_5_ce1_local;
assign v226_6_address0 = v226_6_address0_local;
assign v226_6_address1 = v226_6_address1_local;
assign v226_6_ce0 = v226_6_ce0_local;
assign v226_6_ce1 = v226_6_ce1_local;
assign v226_7_address0 = v226_7_address0_local;
assign v226_7_address1 = v226_7_address1_local;
assign v226_7_ce0 = v226_7_ce0_local;
assign v226_7_ce1 = v226_7_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_808_v227_7_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v39_fu_1173_p10 = v226_4_q1;
assign v39_fu_1173_p12 = v226_5_q1;
assign v39_fu_1173_p14 = v226_6_q1;
assign v39_fu_1173_p16 = v226_7_q1;
assign v39_fu_1173_p17 = 'bx;
assign v39_fu_1173_p2 = v226_0_q1;
assign v39_fu_1173_p4 = v226_1_q1;
assign v39_fu_1173_p6 = v226_2_q1;
assign v39_fu_1173_p8 = v226_3_q1;
assign v41_fu_1244_p10 = v226_4_q0;
assign v41_fu_1244_p12 = v226_5_q0;
assign v41_fu_1244_p14 = v226_6_q0;
assign v41_fu_1244_p16 = v226_7_q0;
assign v41_fu_1244_p17 = 'bx;
assign v41_fu_1244_p2 = v226_0_q0;
assign v41_fu_1244_p4 = v226_1_q0;
assign v41_fu_1244_p6 = v226_2_q0;
assign v41_fu_1244_p8 = v226_3_q0;
assign v43_fu_1337_p10 = v226_4_q0;
assign v43_fu_1337_p12 = v226_5_q0;
assign v43_fu_1337_p14 = v226_6_q0;
assign v43_fu_1337_p16 = v226_7_q0;
assign v43_fu_1337_p17 = 'bx;
assign v43_fu_1337_p2 = v226_0_q0;
assign v43_fu_1337_p4 = v226_1_q0;
assign v43_fu_1337_p6 = v226_2_q0;
assign v43_fu_1337_p8 = v226_3_q0;
assign v45_fu_1408_p10 = v226_4_q1;
assign v45_fu_1408_p12 = v226_5_q1;
assign v45_fu_1408_p14 = v226_6_q1;
assign v45_fu_1408_p16 = v226_7_q1;
assign v45_fu_1408_p17 = 'bx;
assign v45_fu_1408_p2 = v226_0_q1;
assign v45_fu_1408_p4 = v226_1_q1;
assign v45_fu_1408_p6 = v226_2_q1;
assign v45_fu_1408_p8 = v226_3_q1;
assign v47_fu_1501_p10 = v226_4_q0;
assign v47_fu_1501_p12 = v226_5_q0;
assign v47_fu_1501_p14 = v226_6_q0;
assign v47_fu_1501_p16 = v226_7_q0;
assign v47_fu_1501_p17 = 'bx;
assign v47_fu_1501_p2 = v226_0_q0;
assign v47_fu_1501_p4 = v226_1_q0;
assign v47_fu_1501_p6 = v226_2_q0;
assign v47_fu_1501_p8 = v226_3_q0;
assign v49_fu_1572_p10 = v226_4_q1;
assign v49_fu_1572_p12 = v226_5_q1;
assign v49_fu_1572_p14 = v226_6_q1;
assign v49_fu_1572_p16 = v226_7_q1;
assign v49_fu_1572_p17 = 'bx;
assign v49_fu_1572_p2 = v226_0_q1;
assign v49_fu_1572_p4 = v226_1_q1;
assign v49_fu_1572_p6 = v226_2_q1;
assign v49_fu_1572_p8 = v226_3_q1;
assign v51_fu_1665_p10 = v226_4_q0;
assign v51_fu_1665_p12 = v226_5_q0;
assign v51_fu_1665_p14 = v226_6_q0;
assign v51_fu_1665_p16 = v226_7_q0;
assign v51_fu_1665_p17 = 'bx;
assign v51_fu_1665_p2 = v226_0_q0;
assign v51_fu_1665_p4 = v226_1_q0;
assign v51_fu_1665_p6 = v226_2_q0;
assign v51_fu_1665_p8 = v226_3_q0;
assign v53_fu_1736_p10 = v226_4_q1;
assign v53_fu_1736_p12 = v226_5_q1;
assign v53_fu_1736_p14 = v226_6_q1;
assign v53_fu_1736_p16 = v226_7_q1;
assign v53_fu_1736_p17 = 'bx;
assign v53_fu_1736_p2 = v226_0_q1;
assign v53_fu_1736_p4 = v226_1_q1;
assign v53_fu_1736_p6 = v226_2_q1;
assign v53_fu_1736_p8 = v226_3_q1;
assign v_fu_1060_p10 = v226_4_q0;
assign v_fu_1060_p12 = v226_5_q0;
assign v_fu_1060_p14 = v226_6_q0;
assign v_fu_1060_p16 = v226_7_q0;
assign v_fu_1060_p17 = 'bx;
assign v_fu_1060_p2 = v226_0_q0;
assign v_fu_1060_p4 = v226_1_q0;
assign v_fu_1060_p6 = v226_2_q0;
assign v_fu_1060_p8 = v226_3_q0;
assign zext_ln175_fu_921_p1 = lshr_ln_fu_911_p4;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1971[12:5] <= 8'b00000000;
end
endmodule 