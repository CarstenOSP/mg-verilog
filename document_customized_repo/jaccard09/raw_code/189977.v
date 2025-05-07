module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v226_4_address0,v226_4_ce0,v226_4_q0,v226_4_address1,v226_4_ce1,v226_4_q1,v226_5_address0,v226_5_ce0,v226_5_q0,v226_5_address1,v226_5_ce1,v226_5_q1,v226_6_address0,v226_6_ce0,v226_6_q0,v226_6_address1,v226_6_ce1,v226_6_q1,v226_7_address0,v226_7_ce0,v226_7_q0,v226_7_address1,v226_7_ce1,v226_7_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce); 
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_910_p2;
wire   [7:0] add_ln168_fu_916_p2;
reg   [7:0] add_ln168_reg_2017;
wire   [2:0] trunc_ln168_fu_922_p1;
reg   [2:0] trunc_ln168_reg_2022;
wire   [12:0] zext_ln175_fu_936_p1;
reg   [12:0] zext_ln175_reg_2036;
wire   [12:0] mul_ln175_fu_940_p2;
reg   [12:0] mul_ln175_reg_2049;
wire   [0:0] cmp11_fu_946_p2;
reg   [0:0] cmp11_reg_2054;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_962_p2;
reg   [7:0] add_ln169_reg_2067;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_2077;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_1_reg_2087;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_2_reg_2137;
wire   [31:0] v_fu_1075_p19;
reg   [31:0] v_reg_2142;
wire    ap_CS_fsm_state7;
reg   [6:0] tmp_3_reg_2232;
wire   [31:0] v20_fu_1188_p19;
reg   [31:0] v20_reg_2237;
wire    ap_CS_fsm_state8;
wire   [31:0] v22_fu_1259_p19;
reg   [31:0] v22_reg_2242;
wire   [31:0] v24_fu_1352_p19;
reg   [31:0] v24_reg_2327;
wire    ap_CS_fsm_state9;
wire   [31:0] v26_fu_1423_p19;
reg   [31:0] v26_reg_2332;
wire   [31:0] v28_fu_1516_p19;
reg   [31:0] v28_reg_2417;
wire    ap_CS_fsm_state10;
wire   [31:0] v30_fu_1587_p19;
reg   [31:0] v30_reg_2422;
wire   [31:0] v32_fu_1680_p19;
reg   [31:0] v32_reg_2507;
wire    ap_CS_fsm_state11;
wire   [31:0] v34_fu_1751_p19;
reg   [31:0] v34_reg_2512;
wire   [0:0] trunc_ln169_fu_1790_p1;
reg   [0:0] trunc_ln169_reg_2517;
wire    ap_CS_fsm_state15;
wire   [14:0] mul_ln171_fu_1808_p2;
reg   [14:0] mul_ln171_reg_2522;
reg   [31:0] v19_reg_2527;
wire   [14:0] mul_ln186_fu_1817_p2;
reg   [14:0] mul_ln186_reg_2532;
reg   [31:0] v21_reg_2537;
wire   [14:0] mul_ln199_fu_1833_p2;
reg   [14:0] mul_ln199_reg_2542;
wire   [31:0] grp_fu_874_p2;
reg   [31:0] v23_reg_2547;
wire   [14:0] mul_ln212_fu_1842_p2;
reg   [14:0] mul_ln212_reg_2552;
wire   [31:0] grp_fu_878_p2;
reg   [31:0] v25_reg_2557;
wire   [14:0] mul_ln225_fu_1858_p2;
reg   [14:0] mul_ln225_reg_2562;
wire   [31:0] grp_fu_882_p2;
reg   [31:0] v27_reg_2567;
wire   [14:0] mul_ln238_fu_1867_p2;
reg   [14:0] mul_ln238_reg_2572;
wire   [31:0] grp_fu_886_p2;
reg   [31:0] v29_reg_2577;
wire   [14:0] mul_ln251_fu_1883_p2;
reg   [14:0] mul_ln251_reg_2582;
wire   [31:0] grp_fu_890_p2;
reg   [31:0] v31_reg_2587;
wire   [14:0] mul_ln264_fu_1892_p2;
reg   [14:0] mul_ln264_reg_2592;
wire   [31:0] grp_fu_894_p2;
reg   [31:0] v33_reg_2597;
wire   [14:0] mul_ln277_fu_1908_p2;
reg   [14:0] mul_ln277_reg_2602;
wire   [31:0] grp_fu_898_p2;
reg   [31:0] v35_reg_2607;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_ce;
reg   [7:0] v115_reg_808;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast2950_fu_1012_p1;
wire   [63:0] p_cast_fu_1114_p1;
wire   [63:0] p_cast2951_fu_1125_p1;
wire   [63:0] p_cast2952_fu_1298_p1;
wire   [63:0] p_cast2953_fu_1309_p1;
wire   [63:0] p_cast2954_fu_1462_p1;
wire   [63:0] p_cast2955_fu_1473_p1;
wire   [63:0] p_cast2956_fu_1626_p1;
wire   [63:0] p_cast2957_fu_1637_p1;
reg   [7:0] v114_fu_142;
wire   [0:0] icmp_ln169_fu_952_p2;
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
reg   [31:0] grp_fu_866_p0;
reg   [31:0] grp_fu_866_p1;
wire    ap_CS_fsm_state12;
reg   [31:0] grp_fu_870_p0;
reg   [31:0] grp_fu_870_p1;
reg   [31:0] grp_fu_874_p0;
reg   [31:0] grp_fu_874_p1;
wire   [4:0] lshr_ln_fu_926_p4;
wire   [4:0] mul_ln175_fu_940_p0;
wire   [8:0] mul_ln175_fu_940_p1;
wire   [7:0] empty_30_fu_972_p2;
wire   [7:0] empty_53_fu_992_p2;
wire   [12:0] grp_fu_1914_p3;
wire   [7:0] empty_76_fu_1023_p2;
wire   [31:0] v_fu_1075_p2;
wire   [31:0] v_fu_1075_p4;
wire   [31:0] v_fu_1075_p6;
wire   [31:0] v_fu_1075_p8;
wire   [31:0] v_fu_1075_p10;
wire   [31:0] v_fu_1075_p12;
wire   [31:0] v_fu_1075_p14;
wire   [31:0] v_fu_1075_p16;
wire   [31:0] v_fu_1075_p17;
wire   [12:0] grp_fu_1922_p3;
wire   [12:0] grp_fu_1930_p4;
wire   [7:0] empty_99_fu_1136_p2;
wire   [31:0] v20_fu_1188_p2;
wire   [31:0] v20_fu_1188_p4;
wire   [31:0] v20_fu_1188_p6;
wire   [31:0] v20_fu_1188_p8;
wire   [31:0] v20_fu_1188_p10;
wire   [31:0] v20_fu_1188_p12;
wire   [31:0] v20_fu_1188_p14;
wire   [31:0] v20_fu_1188_p16;
wire   [31:0] v20_fu_1188_p17;
wire   [31:0] v22_fu_1259_p2;
wire   [31:0] v22_fu_1259_p4;
wire   [31:0] v22_fu_1259_p6;
wire   [31:0] v22_fu_1259_p8;
wire   [31:0] v22_fu_1259_p10;
wire   [31:0] v22_fu_1259_p12;
wire   [31:0] v22_fu_1259_p14;
wire   [31:0] v22_fu_1259_p16;
wire   [31:0] v22_fu_1259_p17;
wire   [12:0] grp_fu_1940_p3;
wire   [12:0] grp_fu_1948_p4;
wire   [31:0] v24_fu_1352_p2;
wire   [31:0] v24_fu_1352_p4;
wire   [31:0] v24_fu_1352_p6;
wire   [31:0] v24_fu_1352_p8;
wire   [31:0] v24_fu_1352_p10;
wire   [31:0] v24_fu_1352_p12;
wire   [31:0] v24_fu_1352_p14;
wire   [31:0] v24_fu_1352_p16;
wire   [31:0] v24_fu_1352_p17;
wire   [31:0] v26_fu_1423_p2;
wire   [31:0] v26_fu_1423_p4;
wire   [31:0] v26_fu_1423_p6;
wire   [31:0] v26_fu_1423_p8;
wire   [31:0] v26_fu_1423_p10;
wire   [31:0] v26_fu_1423_p12;
wire   [31:0] v26_fu_1423_p14;
wire   [31:0] v26_fu_1423_p16;
wire   [31:0] v26_fu_1423_p17;
wire   [12:0] grp_fu_1958_p3;
wire   [12:0] grp_fu_1966_p4;
wire   [31:0] v28_fu_1516_p2;
wire   [31:0] v28_fu_1516_p4;
wire   [31:0] v28_fu_1516_p6;
wire   [31:0] v28_fu_1516_p8;
wire   [31:0] v28_fu_1516_p10;
wire   [31:0] v28_fu_1516_p12;
wire   [31:0] v28_fu_1516_p14;
wire   [31:0] v28_fu_1516_p16;
wire   [31:0] v28_fu_1516_p17;
wire   [31:0] v30_fu_1587_p2;
wire   [31:0] v30_fu_1587_p4;
wire   [31:0] v30_fu_1587_p6;
wire   [31:0] v30_fu_1587_p8;
wire   [31:0] v30_fu_1587_p10;
wire   [31:0] v30_fu_1587_p12;
wire   [31:0] v30_fu_1587_p14;
wire   [31:0] v30_fu_1587_p16;
wire   [31:0] v30_fu_1587_p17;
wire   [12:0] grp_fu_1976_p3;
wire   [12:0] grp_fu_1984_p4;
wire   [31:0] v32_fu_1680_p2;
wire   [31:0] v32_fu_1680_p4;
wire   [31:0] v32_fu_1680_p6;
wire   [31:0] v32_fu_1680_p8;
wire   [31:0] v32_fu_1680_p10;
wire   [31:0] v32_fu_1680_p12;
wire   [31:0] v32_fu_1680_p14;
wire   [31:0] v32_fu_1680_p16;
wire   [31:0] v32_fu_1680_p17;
wire   [31:0] v34_fu_1751_p2;
wire   [31:0] v34_fu_1751_p4;
wire   [31:0] v34_fu_1751_p6;
wire   [31:0] v34_fu_1751_p8;
wire   [31:0] v34_fu_1751_p10;
wire   [31:0] v34_fu_1751_p12;
wire   [31:0] v34_fu_1751_p14;
wire   [31:0] v34_fu_1751_p16;
wire   [31:0] v34_fu_1751_p17;
wire   [6:0] lshr_ln1_fu_1794_p4;
wire   [6:0] mul_ln171_fu_1808_p0;
wire   [8:0] mul_ln171_fu_1808_p1;
wire   [6:0] mul_ln186_fu_1817_p0;
wire   [8:0] mul_ln186_fu_1817_p1;
wire   [6:0] empty_44_fu_1823_p2;
wire   [6:0] mul_ln199_fu_1833_p0;
wire   [8:0] mul_ln199_fu_1833_p1;
wire   [6:0] mul_ln212_fu_1842_p0;
wire   [8:0] mul_ln212_fu_1842_p1;
wire   [6:0] empty_67_fu_1848_p2;
wire   [6:0] mul_ln225_fu_1858_p0;
wire   [8:0] mul_ln225_fu_1858_p1;
wire   [6:0] mul_ln238_fu_1867_p0;
wire   [8:0] mul_ln238_fu_1867_p1;
wire   [6:0] empty_90_fu_1873_p2;
wire   [6:0] mul_ln251_fu_1883_p0;
wire   [8:0] mul_ln251_fu_1883_p1;
wire   [6:0] mul_ln264_fu_1892_p0;
wire   [8:0] mul_ln264_fu_1892_p1;
wire   [6:0] empty_113_fu_1898_p2;
wire   [6:0] mul_ln277_fu_1908_p0;
wire   [8:0] mul_ln277_fu_1908_p1;
wire   [7:0] grp_fu_1914_p0;
wire   [4:0] grp_fu_1914_p1;
wire   [4:0] grp_fu_1914_p2;
wire   [7:0] grp_fu_1922_p0;
wire   [4:0] grp_fu_1922_p1;
wire   [4:0] grp_fu_1922_p2;
wire   [1:0] grp_fu_1930_p1;
wire   [4:0] grp_fu_1930_p2;
wire   [4:0] grp_fu_1930_p3;
wire   [7:0] grp_fu_1940_p0;
wire   [4:0] grp_fu_1940_p1;
wire   [4:0] grp_fu_1940_p2;
wire   [2:0] grp_fu_1948_p1;
wire   [4:0] grp_fu_1948_p2;
wire   [4:0] grp_fu_1948_p3;
wire   [7:0] grp_fu_1958_p0;
wire   [4:0] grp_fu_1958_p1;
wire   [4:0] grp_fu_1958_p2;
wire   [2:0] grp_fu_1966_p1;
wire   [4:0] grp_fu_1966_p2;
wire   [4:0] grp_fu_1966_p3;
wire   [7:0] grp_fu_1976_p0;
wire   [4:0] grp_fu_1976_p1;
wire   [4:0] grp_fu_1976_p2;
wire   [3:0] grp_fu_1984_p1;
wire   [4:0] grp_fu_1984_p2;
wire   [4:0] grp_fu_1984_p3;
reg    grp_fu_866_ce;
reg    grp_fu_870_ce;
reg    grp_fu_874_ce;
reg    grp_fu_2612_ce;
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
wire   [12:0] grp_fu_1914_p00;
wire   [12:0] grp_fu_1922_p00;
wire   [12:0] grp_fu_1940_p00;
wire   [12:0] grp_fu_1958_p00;
wire   [12:0] grp_fu_1976_p00;
wire   [14:0] mul_ln171_fu_1808_p00;
wire   [12:0] mul_ln175_fu_940_p00;
wire   [14:0] mul_ln186_fu_1817_p00;
wire   [14:0] mul_ln199_fu_1833_p00;
wire   [14:0] mul_ln212_fu_1842_p00;
wire   [14:0] mul_ln225_fu_1858_p00;
wire   [14:0] mul_ln238_fu_1867_p00;
wire   [14:0] mul_ln251_fu_1883_p00;
wire   [14:0] mul_ln264_fu_1892_p00;
wire   [14:0] mul_ln277_fu_1908_p00;
wire   [2:0] v_fu_1075_p1;
wire   [2:0] v_fu_1075_p3;
wire   [2:0] v_fu_1075_p5;
wire   [2:0] v_fu_1075_p7;
wire  signed [2:0] v_fu_1075_p9;
wire  signed [2:0] v_fu_1075_p11;
wire  signed [2:0] v_fu_1075_p13;
wire  signed [2:0] v_fu_1075_p15;
wire   [2:0] v20_fu_1188_p1;
wire   [2:0] v20_fu_1188_p3;
wire   [2:0] v20_fu_1188_p5;
wire   [2:0] v20_fu_1188_p7;
wire  signed [2:0] v20_fu_1188_p9;
wire  signed [2:0] v20_fu_1188_p11;
wire  signed [2:0] v20_fu_1188_p13;
wire  signed [2:0] v20_fu_1188_p15;
wire   [2:0] v22_fu_1259_p1;
wire   [2:0] v22_fu_1259_p3;
wire   [2:0] v22_fu_1259_p5;
wire   [2:0] v22_fu_1259_p7;
wire  signed [2:0] v22_fu_1259_p9;
wire  signed [2:0] v22_fu_1259_p11;
wire  signed [2:0] v22_fu_1259_p13;
wire  signed [2:0] v22_fu_1259_p15;
wire   [2:0] v24_fu_1352_p1;
wire   [2:0] v24_fu_1352_p3;
wire   [2:0] v24_fu_1352_p5;
wire   [2:0] v24_fu_1352_p7;
wire  signed [2:0] v24_fu_1352_p9;
wire  signed [2:0] v24_fu_1352_p11;
wire  signed [2:0] v24_fu_1352_p13;
wire  signed [2:0] v24_fu_1352_p15;
wire   [2:0] v26_fu_1423_p1;
wire   [2:0] v26_fu_1423_p3;
wire   [2:0] v26_fu_1423_p5;
wire   [2:0] v26_fu_1423_p7;
wire  signed [2:0] v26_fu_1423_p9;
wire  signed [2:0] v26_fu_1423_p11;
wire  signed [2:0] v26_fu_1423_p13;
wire  signed [2:0] v26_fu_1423_p15;
wire   [2:0] v28_fu_1516_p1;
wire   [2:0] v28_fu_1516_p3;
wire   [2:0] v28_fu_1516_p5;
wire   [2:0] v28_fu_1516_p7;
wire  signed [2:0] v28_fu_1516_p9;
wire  signed [2:0] v28_fu_1516_p11;
wire  signed [2:0] v28_fu_1516_p13;
wire  signed [2:0] v28_fu_1516_p15;
wire   [2:0] v30_fu_1587_p1;
wire   [2:0] v30_fu_1587_p3;
wire   [2:0] v30_fu_1587_p5;
wire   [2:0] v30_fu_1587_p7;
wire  signed [2:0] v30_fu_1587_p9;
wire  signed [2:0] v30_fu_1587_p11;
wire  signed [2:0] v30_fu_1587_p13;
wire  signed [2:0] v30_fu_1587_p15;
wire   [2:0] v32_fu_1680_p1;
wire   [2:0] v32_fu_1680_p3;
wire   [2:0] v32_fu_1680_p5;
wire   [2:0] v32_fu_1680_p7;
wire  signed [2:0] v32_fu_1680_p9;
wire  signed [2:0] v32_fu_1680_p11;
wire  signed [2:0] v32_fu_1680_p13;
wire  signed [2:0] v32_fu_1680_p15;
wire   [2:0] v34_fu_1751_p1;
wire   [2:0] v34_fu_1751_p3;
wire   [2:0] v34_fu_1751_p5;
wire   [2:0] v34_fu_1751_p7;
wire  signed [2:0] v34_fu_1751_p9;
wire  signed [2:0] v34_fu_1751_p11;
wire  signed [2:0] v34_fu_1751_p13;
wire  signed [2:0] v34_fu_1751_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start_reg = 1'b0;
#0 v114_fu_142 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_820(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_d1),.v225_1_q1(v225_1_q1),.mul_ln175(mul_ln175_reg_2049),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_ce1),.v227_7_q1(v227_7_q1),.mul_ln171(mul_ln171_reg_2522),.mul_ln199(mul_ln199_reg_2542),.mul_ln225(mul_ln225_reg_2562),.mul_ln251(mul_ln251_reg_2582),.mul_ln277(mul_ln277_reg_2602),.mul_ln186(mul_ln186_reg_2532),.mul_ln212(mul_ln212_reg_2552),.mul_ln238(mul_ln238_reg_2572),.mul_ln264(mul_ln264_reg_2592),.empty_19(trunc_ln169_reg_2517),.cmp11(cmp11_reg_2054),.empty(trunc_ln168_reg_2022),.v120(v19_reg_2527),.v133(v21_reg_2537),.v144(v23_reg_2547),.v155(v25_reg_2557),.v166(v27_reg_2567),.v177(v29_reg_2577),.v188(v31_reg_2587),.v199(v33_reg_2597),.v210(v35_reg_2607),.grp_fu_2612_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_din0),.grp_fu_2612_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_din1),.grp_fu_2612_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_opcode),.grp_fu_2612_p_dout0(grp_fu_180_p_dout0),.grp_fu_2612_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_ce),.grp_fu_866_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_din0),.grp_fu_866_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_din1),.grp_fu_866_p_dout0(grp_fu_184_p_dout0),.grp_fu_866_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_ce),.grp_fu_870_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_din0),.grp_fu_870_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_din1),.grp_fu_870_p_dout0(grp_fu_188_p_dout0),.grp_fu_870_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_ce),.grp_fu_874_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_din0),.grp_fu_874_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_din1),.grp_fu_874_p_dout0(grp_fu_874_p2),.grp_fu_874_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_874_p0),.din1(grp_fu_874_p1),.ce(grp_fu_874_ce),.dout(grp_fu_874_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(v24_reg_2327),.din1(v113),.ce(1'b1),.dout(grp_fu_878_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(v26_reg_2332),.din1(v113),.ce(1'b1),.dout(grp_fu_882_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U62(.clk(ap_clk),.reset(ap_rst),.din0(v28_reg_2417),.din1(v113),.ce(1'b1),.dout(grp_fu_886_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U63(.clk(ap_clk),.reset(ap_rst),.din0(v30_reg_2422),.din1(v113),.ce(1'b1),.dout(grp_fu_890_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U64(.clk(ap_clk),.reset(ap_rst),.din0(v32_reg_2507),.din1(v113),.ce(1'b1),.dout(grp_fu_894_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U65(.clk(ap_clk),.reset(ap_rst),.din0(v34_reg_2512),.din1(v113),.ce(1'b1),.dout(grp_fu_898_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U66(.din0(mul_ln175_fu_940_p0),.din1(mul_ln175_fu_940_p1),.dout(mul_ln175_fu_940_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U67(.din0(v_fu_1075_p2),.din1(v_fu_1075_p4),.din2(v_fu_1075_p6),.din3(v_fu_1075_p8),.din4(v_fu_1075_p10),.din5(v_fu_1075_p12),.din6(v_fu_1075_p14),.din7(v_fu_1075_p16),.def(v_fu_1075_p17),.sel(trunc_ln168_reg_2022),.dout(v_fu_1075_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U68(.din0(v20_fu_1188_p2),.din1(v20_fu_1188_p4),.din2(v20_fu_1188_p6),.din3(v20_fu_1188_p8),.din4(v20_fu_1188_p10),.din5(v20_fu_1188_p12),.din6(v20_fu_1188_p14),.din7(v20_fu_1188_p16),.def(v20_fu_1188_p17),.sel(trunc_ln168_reg_2022),.dout(v20_fu_1188_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U69(.din0(v22_fu_1259_p2),.din1(v22_fu_1259_p4),.din2(v22_fu_1259_p6),.din3(v22_fu_1259_p8),.din4(v22_fu_1259_p10),.din5(v22_fu_1259_p12),.din6(v22_fu_1259_p14),.din7(v22_fu_1259_p16),.def(v22_fu_1259_p17),.sel(trunc_ln168_reg_2022),.dout(v22_fu_1259_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U70(.din0(v24_fu_1352_p2),.din1(v24_fu_1352_p4),.din2(v24_fu_1352_p6),.din3(v24_fu_1352_p8),.din4(v24_fu_1352_p10),.din5(v24_fu_1352_p12),.din6(v24_fu_1352_p14),.din7(v24_fu_1352_p16),.def(v24_fu_1352_p17),.sel(trunc_ln168_reg_2022),.dout(v24_fu_1352_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U71(.din0(v26_fu_1423_p2),.din1(v26_fu_1423_p4),.din2(v26_fu_1423_p6),.din3(v26_fu_1423_p8),.din4(v26_fu_1423_p10),.din5(v26_fu_1423_p12),.din6(v26_fu_1423_p14),.din7(v26_fu_1423_p16),.def(v26_fu_1423_p17),.sel(trunc_ln168_reg_2022),.dout(v26_fu_1423_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U72(.din0(v28_fu_1516_p2),.din1(v28_fu_1516_p4),.din2(v28_fu_1516_p6),.din3(v28_fu_1516_p8),.din4(v28_fu_1516_p10),.din5(v28_fu_1516_p12),.din6(v28_fu_1516_p14),.din7(v28_fu_1516_p16),.def(v28_fu_1516_p17),.sel(trunc_ln168_reg_2022),.dout(v28_fu_1516_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U73(.din0(v30_fu_1587_p2),.din1(v30_fu_1587_p4),.din2(v30_fu_1587_p6),.din3(v30_fu_1587_p8),.din4(v30_fu_1587_p10),.din5(v30_fu_1587_p12),.din6(v30_fu_1587_p14),.din7(v30_fu_1587_p16),.def(v30_fu_1587_p17),.sel(trunc_ln168_reg_2022),.dout(v30_fu_1587_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U74(.din0(v32_fu_1680_p2),.din1(v32_fu_1680_p4),.din2(v32_fu_1680_p6),.din3(v32_fu_1680_p8),.din4(v32_fu_1680_p10),.din5(v32_fu_1680_p12),.din6(v32_fu_1680_p14),.din7(v32_fu_1680_p16),.def(v32_fu_1680_p17),.sel(trunc_ln168_reg_2022),.dout(v32_fu_1680_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U75(.din0(v34_fu_1751_p2),.din1(v34_fu_1751_p4),.din2(v34_fu_1751_p6),.din3(v34_fu_1751_p8),.din4(v34_fu_1751_p10),.din5(v34_fu_1751_p12),.din6(v34_fu_1751_p14),.din7(v34_fu_1751_p16),.def(v34_fu_1751_p17),.sel(trunc_ln168_reg_2022),.dout(v34_fu_1751_p19));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U76(.din0(mul_ln171_fu_1808_p0),.din1(mul_ln171_fu_1808_p1),.dout(mul_ln171_fu_1808_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U77(.din0(mul_ln186_fu_1817_p0),.din1(mul_ln186_fu_1817_p1),.dout(mul_ln186_fu_1817_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U78(.din0(mul_ln199_fu_1833_p0),.din1(mul_ln199_fu_1833_p1),.dout(mul_ln199_fu_1833_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U79(.din0(mul_ln212_fu_1842_p0),.din1(mul_ln212_fu_1842_p1),.dout(mul_ln212_fu_1842_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U80(.din0(mul_ln225_fu_1858_p0),.din1(mul_ln225_fu_1858_p1),.dout(mul_ln225_fu_1858_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U81(.din0(mul_ln238_fu_1867_p0),.din1(mul_ln238_fu_1867_p1),.dout(mul_ln238_fu_1867_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U82(.din0(mul_ln251_fu_1883_p0),.din1(mul_ln251_fu_1883_p1),.dout(mul_ln251_fu_1883_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U83(.din0(mul_ln264_fu_1892_p0),.din1(mul_ln264_fu_1892_p1),.dout(mul_ln264_fu_1892_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U84(.din0(mul_ln277_fu_1908_p0),.din1(mul_ln277_fu_1908_p1),.dout(mul_ln277_fu_1908_p2));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1914_p0),.din1(grp_fu_1914_p1),.din2(grp_fu_1914_p2),.ce(1'b1),.dout(grp_fu_1914_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1922_p0),.din1(grp_fu_1922_p1),.din2(grp_fu_1922_p2),.ce(1'b1),.dout(grp_fu_1922_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 13 ))
ama_addmuladd_8ns_2ns_5ns_5ns_13_4_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_808),.din1(grp_fu_1930_p1),.din2(grp_fu_1930_p2),.din3(grp_fu_1930_p3),.ce(1'b1),.dout(grp_fu_1930_p4));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1940_p0),.din1(grp_fu_1940_p1),.din2(grp_fu_1940_p2),.ce(1'b1),.dout(grp_fu_1940_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 13 ))
ama_addmuladd_8ns_3ns_5ns_5ns_13_4_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_808),.din1(grp_fu_1948_p1),.din2(grp_fu_1948_p2),.din3(grp_fu_1948_p3),.ce(1'b1),.dout(grp_fu_1948_p4));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1958_p0),.din1(grp_fu_1958_p1),.din2(grp_fu_1958_p2),.ce(1'b1),.dout(grp_fu_1958_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 13 ))
ama_addmuladd_8ns_3ns_5ns_5ns_13_4_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_808),.din1(grp_fu_1966_p1),.din2(grp_fu_1966_p2),.din3(grp_fu_1966_p3),.ce(1'b1),.dout(grp_fu_1966_p4));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1976_p0),.din1(grp_fu_1976_p1),.din2(grp_fu_1976_p2),.ce(1'b1),.dout(grp_fu_1976_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 5 ),.din3_WIDTH( 5 ),.dout_WIDTH( 13 ))
ama_addmuladd_8ns_4ns_5ns_5ns_13_4_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_808),.din1(grp_fu_1984_p1),.din2(grp_fu_1984_p2),.din3(grp_fu_1984_p3),.ce(1'b1),.dout(grp_fu_1984_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_142 <= 8'd0;
    end else if (((icmp_ln169_fu_952_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_142 <= add_ln168_reg_2017;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_808 <= add_ln169_reg_2067;
    end else if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_910_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_808 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_2017 <= add_ln168_fu_916_p2;
        cmp11_reg_2054 <= cmp11_fu_946_p2;
        mul_ln175_reg_2049 <= mul_ln175_fu_940_p2;
        trunc_ln168_reg_2022 <= trunc_ln168_fu_922_p1;
        zext_ln175_reg_2036[4 : 0] <= zext_ln175_fu_936_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_2067 <= add_ln169_fu_962_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_2522 <= mul_ln171_fu_1808_p2;
        mul_ln186_reg_2532 <= mul_ln186_fu_1817_p2;
        mul_ln199_reg_2542 <= mul_ln199_fu_1833_p2;
        mul_ln212_reg_2552 <= mul_ln212_fu_1842_p2;
        mul_ln225_reg_2562 <= mul_ln225_fu_1858_p2;
        mul_ln238_reg_2572 <= mul_ln238_fu_1867_p2;
        mul_ln251_reg_2582 <= mul_ln251_fu_1883_p2;
        mul_ln264_reg_2592 <= mul_ln264_fu_1892_p2;
        mul_ln277_reg_2602 <= mul_ln277_fu_1908_p2;
        trunc_ln169_reg_2517 <= trunc_ln169_fu_1790_p1;
        v19_reg_2527 <= grp_fu_184_p_dout0;
        v21_reg_2537 <= grp_fu_188_p_dout0;
        v23_reg_2547 <= grp_fu_874_p2;
        v25_reg_2557 <= grp_fu_878_p2;
        v27_reg_2567 <= grp_fu_882_p2;
        v29_reg_2577 <= grp_fu_886_p2;
        v31_reg_2587 <= grp_fu_890_p2;
        v33_reg_2597 <= grp_fu_894_p2;
        v35_reg_2607 <= grp_fu_898_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_2087 <= {{empty_53_fu_992_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_2_reg_2137 <= {{empty_76_fu_1023_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_2232 <= {{empty_99_fu_1136_p2[7:1]}};
        v_reg_2142 <= v_fu_1075_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_2077 <= {{empty_30_fu_972_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v20_reg_2237 <= v20_fu_1188_p19;
        v22_reg_2242 <= v22_fu_1259_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v24_reg_2327 <= v24_fu_1352_p19;
        v26_reg_2332 <= v26_fu_1423_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v28_reg_2417 <= v28_fu_1516_p19;
        v30_reg_2422 <= v30_fu_1587_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v32_reg_2507 <= v32_fu_1680_p19;
        v34_reg_2512 <= v34_fu_1751_p19;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (icmp_ln168_fu_910_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_910_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2612_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_ce;
    end else begin
        grp_fu_2612_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_866_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_ce;
    end else begin
        grp_fu_866_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_866_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_866_p0 = v_reg_2142;
    end else begin
        grp_fu_866_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_866_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_866_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_866_p1 = v113;
    end else begin
        grp_fu_866_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_870_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_ce;
    end else begin
        grp_fu_870_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_870_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_870_p0 = v20_reg_2237;
    end else begin
        grp_fu_870_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_870_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_870_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_870_p1 = v113;
    end else begin
        grp_fu_870_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_874_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_ce;
    end else begin
        grp_fu_874_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_874_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_874_p0 = v22_reg_2242;
    end else begin
        grp_fu_874_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_874_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_874_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_874_p1 = v113;
    end else begin
        grp_fu_874_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast2956_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast2954_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast2952_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast2951_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast2950_fu_1012_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast2957_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast2955_fu_1473_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast2953_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_1114_p1;
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
        v226_1_address0_local = p_cast2956_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast2954_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast2952_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast2951_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast2950_fu_1012_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast2957_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast2955_fu_1473_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast2953_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_1114_p1;
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
        v226_2_address0_local = p_cast2956_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast2954_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast2952_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast2951_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast2950_fu_1012_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast2957_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast2955_fu_1473_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast2953_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_1114_p1;
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
        v226_3_address0_local = p_cast2956_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast2954_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast2952_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast2951_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast2950_fu_1012_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast2957_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast2955_fu_1473_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast2953_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_1114_p1;
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
        v226_4_address0_local = p_cast2956_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address0_local = p_cast2954_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address0_local = p_cast2952_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address0_local = p_cast2951_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_4_address0_local = p_cast2950_fu_1012_p1;
    end else begin
        v226_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address1_local = p_cast2957_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address1_local = p_cast2955_fu_1473_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address1_local = p_cast2953_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address1_local = p_cast_fu_1114_p1;
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
        v226_5_address0_local = p_cast2956_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address0_local = p_cast2954_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address0_local = p_cast2952_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address0_local = p_cast2951_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_5_address0_local = p_cast2950_fu_1012_p1;
    end else begin
        v226_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address1_local = p_cast2957_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address1_local = p_cast2955_fu_1473_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address1_local = p_cast2953_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address1_local = p_cast_fu_1114_p1;
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
        v226_6_address0_local = p_cast2956_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address0_local = p_cast2954_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address0_local = p_cast2952_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address0_local = p_cast2951_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_6_address0_local = p_cast2950_fu_1012_p1;
    end else begin
        v226_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address1_local = p_cast2957_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address1_local = p_cast2955_fu_1473_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address1_local = p_cast2953_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address1_local = p_cast_fu_1114_p1;
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
        v226_7_address0_local = p_cast2956_fu_1626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address0_local = p_cast2954_fu_1462_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address0_local = p_cast2952_fu_1298_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address0_local = p_cast2951_fu_1125_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_7_address0_local = p_cast2950_fu_1012_p1;
    end else begin
        v226_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address1_local = p_cast2957_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address1_local = p_cast2955_fu_1473_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address1_local = p_cast2953_fu_1309_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address1_local = p_cast_fu_1114_p1;
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
    if (((icmp_ln168_fu_910_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_910_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_910_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_910_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_952_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_916_p2 = (v114_fu_142 + 8'd1);
assign add_ln169_fu_962_p2 = (v115_reg_808 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_910_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_946_p2 = ((v114_fu_142 == 8'd0) ? 1'b1 : 1'b0);
assign empty_113_fu_1898_p2 = (lshr_ln1_fu_1794_p4 + 7'd4);
assign empty_30_fu_972_p2 = (v115_reg_808 + 8'd1);
assign empty_44_fu_1823_p2 = (lshr_ln1_fu_1794_p4 + 7'd1);
assign empty_53_fu_992_p2 = (v115_reg_808 + 8'd3);
assign empty_67_fu_1848_p2 = (lshr_ln1_fu_1794_p4 + 7'd2);
assign empty_76_fu_1023_p2 = (v115_reg_808 + 8'd5);
assign empty_90_fu_1873_p2 = (lshr_ln1_fu_1794_p4 + 7'd3);
assign empty_99_fu_1136_p2 = (v115_reg_808 + 8'd7);
assign grp_fu_180_p_ce = grp_fu_2612_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_grp_fu_2612_p_din1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_184_p_ce = grp_fu_866_ce;
assign grp_fu_184_p_din0 = grp_fu_866_p0;
assign grp_fu_184_p_din1 = grp_fu_866_p1;
assign grp_fu_188_p_ce = grp_fu_870_ce;
assign grp_fu_188_p_din0 = grp_fu_870_p0;
assign grp_fu_188_p_din1 = grp_fu_870_p1;
assign grp_fu_1914_p0 = grp_fu_1914_p00;
assign grp_fu_1914_p00 = v115_reg_808;
assign grp_fu_1914_p1 = 13'd27;
assign grp_fu_1914_p2 = zext_ln175_reg_2036;
assign grp_fu_1922_p0 = grp_fu_1922_p00;
assign grp_fu_1922_p00 = empty_30_fu_972_p2;
assign grp_fu_1922_p1 = 13'd27;
assign grp_fu_1922_p2 = zext_ln175_reg_2036;
assign grp_fu_1930_p1 = 8'd2;
assign grp_fu_1930_p2 = 13'd27;
assign grp_fu_1930_p3 = zext_ln175_reg_2036;
assign grp_fu_1940_p0 = grp_fu_1940_p00;
assign grp_fu_1940_p00 = empty_53_fu_992_p2;
assign grp_fu_1940_p1 = 13'd27;
assign grp_fu_1940_p2 = zext_ln175_reg_2036;
assign grp_fu_1948_p1 = 8'd4;
assign grp_fu_1948_p2 = 13'd27;
assign grp_fu_1948_p3 = zext_ln175_reg_2036;
assign grp_fu_1958_p0 = grp_fu_1958_p00;
assign grp_fu_1958_p00 = empty_76_fu_1023_p2;
assign grp_fu_1958_p1 = 13'd27;
assign grp_fu_1958_p2 = zext_ln175_reg_2036;
assign grp_fu_1966_p1 = 8'd6;
assign grp_fu_1966_p2 = 13'd27;
assign grp_fu_1966_p3 = zext_ln175_reg_2036;
assign grp_fu_1976_p0 = grp_fu_1976_p00;
assign grp_fu_1976_p00 = empty_99_fu_1136_p2;
assign grp_fu_1976_p1 = 13'd27;
assign grp_fu_1976_p2 = zext_ln175_reg_2036;
assign grp_fu_1984_p1 = 8'd8;
assign grp_fu_1984_p2 = 13'd27;
assign grp_fu_1984_p3 = zext_ln175_reg_2036;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_ap_start_reg;
assign icmp_ln168_fu_910_p2 = ((v114_fu_142 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_952_p2 = ((v115_reg_808 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1794_p4 = {{v115_reg_808[7:1]}};
assign lshr_ln_fu_926_p4 = {{v114_fu_142[7:3]}};
assign mul_ln171_fu_1808_p0 = mul_ln171_fu_1808_p00;
assign mul_ln171_fu_1808_p00 = lshr_ln1_fu_1794_p4;
assign mul_ln171_fu_1808_p1 = 15'd190;
assign mul_ln175_fu_940_p0 = mul_ln175_fu_940_p00;
assign mul_ln175_fu_940_p00 = lshr_ln_fu_926_p4;
assign mul_ln175_fu_940_p1 = 13'd190;
assign mul_ln186_fu_1817_p0 = mul_ln186_fu_1817_p00;
assign mul_ln186_fu_1817_p00 = tmp_reg_2077;
assign mul_ln186_fu_1817_p1 = 15'd190;
assign mul_ln199_fu_1833_p0 = mul_ln199_fu_1833_p00;
assign mul_ln199_fu_1833_p00 = empty_44_fu_1823_p2;
assign mul_ln199_fu_1833_p1 = 15'd190;
assign mul_ln212_fu_1842_p0 = mul_ln212_fu_1842_p00;
assign mul_ln212_fu_1842_p00 = tmp_1_reg_2087;
assign mul_ln212_fu_1842_p1 = 15'd190;
assign mul_ln225_fu_1858_p0 = mul_ln225_fu_1858_p00;
assign mul_ln225_fu_1858_p00 = empty_67_fu_1848_p2;
assign mul_ln225_fu_1858_p1 = 15'd190;
assign mul_ln238_fu_1867_p0 = mul_ln238_fu_1867_p00;
assign mul_ln238_fu_1867_p00 = tmp_2_reg_2137;
assign mul_ln238_fu_1867_p1 = 15'd190;
assign mul_ln251_fu_1883_p0 = mul_ln251_fu_1883_p00;
assign mul_ln251_fu_1883_p00 = empty_90_fu_1873_p2;
assign mul_ln251_fu_1883_p1 = 15'd190;
assign mul_ln264_fu_1892_p0 = mul_ln264_fu_1892_p00;
assign mul_ln264_fu_1892_p00 = tmp_3_reg_2232;
assign mul_ln264_fu_1892_p1 = 15'd190;
assign mul_ln277_fu_1908_p0 = mul_ln277_fu_1908_p00;
assign mul_ln277_fu_1908_p00 = empty_113_fu_1898_p2;
assign mul_ln277_fu_1908_p1 = 15'd190;
assign p_cast2950_fu_1012_p1 = grp_fu_1914_p3;
assign p_cast2951_fu_1125_p1 = grp_fu_1930_p4;
assign p_cast2952_fu_1298_p1 = grp_fu_1940_p3;
assign p_cast2953_fu_1309_p1 = grp_fu_1948_p4;
assign p_cast2954_fu_1462_p1 = grp_fu_1958_p3;
assign p_cast2955_fu_1473_p1 = grp_fu_1966_p4;
assign p_cast2956_fu_1626_p1 = grp_fu_1976_p3;
assign p_cast2957_fu_1637_p1 = grp_fu_1984_p4;
assign p_cast_fu_1114_p1 = grp_fu_1922_p3;
assign trunc_ln168_fu_922_p1 = v114_fu_142[2:0];
assign trunc_ln169_fu_1790_p1 = v115_reg_808[0:0];
assign v20_fu_1188_p10 = v226_4_q1;
assign v20_fu_1188_p12 = v226_5_q1;
assign v20_fu_1188_p14 = v226_6_q1;
assign v20_fu_1188_p16 = v226_7_q1;
assign v20_fu_1188_p17 = 'bx;
assign v20_fu_1188_p2 = v226_0_q1;
assign v20_fu_1188_p4 = v226_1_q1;
assign v20_fu_1188_p6 = v226_2_q1;
assign v20_fu_1188_p8 = v226_3_q1;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v225_1_we1;
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
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_820_v227_7_ce1;
assign v22_fu_1259_p10 = v226_4_q0;
assign v22_fu_1259_p12 = v226_5_q0;
assign v22_fu_1259_p14 = v226_6_q0;
assign v22_fu_1259_p16 = v226_7_q0;
assign v22_fu_1259_p17 = 'bx;
assign v22_fu_1259_p2 = v226_0_q0;
assign v22_fu_1259_p4 = v226_1_q0;
assign v22_fu_1259_p6 = v226_2_q0;
assign v22_fu_1259_p8 = v226_3_q0;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v24_fu_1352_p10 = v226_4_q0;
assign v24_fu_1352_p12 = v226_5_q0;
assign v24_fu_1352_p14 = v226_6_q0;
assign v24_fu_1352_p16 = v226_7_q0;
assign v24_fu_1352_p17 = 'bx;
assign v24_fu_1352_p2 = v226_0_q0;
assign v24_fu_1352_p4 = v226_1_q0;
assign v24_fu_1352_p6 = v226_2_q0;
assign v24_fu_1352_p8 = v226_3_q0;
assign v26_fu_1423_p10 = v226_4_q1;
assign v26_fu_1423_p12 = v226_5_q1;
assign v26_fu_1423_p14 = v226_6_q1;
assign v26_fu_1423_p16 = v226_7_q1;
assign v26_fu_1423_p17 = 'bx;
assign v26_fu_1423_p2 = v226_0_q1;
assign v26_fu_1423_p4 = v226_1_q1;
assign v26_fu_1423_p6 = v226_2_q1;
assign v26_fu_1423_p8 = v226_3_q1;
assign v28_fu_1516_p10 = v226_4_q0;
assign v28_fu_1516_p12 = v226_5_q0;
assign v28_fu_1516_p14 = v226_6_q0;
assign v28_fu_1516_p16 = v226_7_q0;
assign v28_fu_1516_p17 = 'bx;
assign v28_fu_1516_p2 = v226_0_q0;
assign v28_fu_1516_p4 = v226_1_q0;
assign v28_fu_1516_p6 = v226_2_q0;
assign v28_fu_1516_p8 = v226_3_q0;
assign v30_fu_1587_p10 = v226_4_q1;
assign v30_fu_1587_p12 = v226_5_q1;
assign v30_fu_1587_p14 = v226_6_q1;
assign v30_fu_1587_p16 = v226_7_q1;
assign v30_fu_1587_p17 = 'bx;
assign v30_fu_1587_p2 = v226_0_q1;
assign v30_fu_1587_p4 = v226_1_q1;
assign v30_fu_1587_p6 = v226_2_q1;
assign v30_fu_1587_p8 = v226_3_q1;
assign v32_fu_1680_p10 = v226_4_q0;
assign v32_fu_1680_p12 = v226_5_q0;
assign v32_fu_1680_p14 = v226_6_q0;
assign v32_fu_1680_p16 = v226_7_q0;
assign v32_fu_1680_p17 = 'bx;
assign v32_fu_1680_p2 = v226_0_q0;
assign v32_fu_1680_p4 = v226_1_q0;
assign v32_fu_1680_p6 = v226_2_q0;
assign v32_fu_1680_p8 = v226_3_q0;
assign v34_fu_1751_p10 = v226_4_q1;
assign v34_fu_1751_p12 = v226_5_q1;
assign v34_fu_1751_p14 = v226_6_q1;
assign v34_fu_1751_p16 = v226_7_q1;
assign v34_fu_1751_p17 = 'bx;
assign v34_fu_1751_p2 = v226_0_q1;
assign v34_fu_1751_p4 = v226_1_q1;
assign v34_fu_1751_p6 = v226_2_q1;
assign v34_fu_1751_p8 = v226_3_q1;
assign v_fu_1075_p10 = v226_4_q0;
assign v_fu_1075_p12 = v226_5_q0;
assign v_fu_1075_p14 = v226_6_q0;
assign v_fu_1075_p16 = v226_7_q0;
assign v_fu_1075_p17 = 'bx;
assign v_fu_1075_p2 = v226_0_q0;
assign v_fu_1075_p4 = v226_1_q0;
assign v_fu_1075_p6 = v226_2_q0;
assign v_fu_1075_p8 = v226_3_q0;
assign zext_ln175_fu_936_p1 = lshr_ln_fu_926_p4;
always @ (posedge ap_clk) begin
    zext_ln175_reg_2036[12:5] <= 8'b00000000;
end
endmodule 