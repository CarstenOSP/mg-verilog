module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v226_4_address0,v226_4_ce0,v226_4_q0,v226_4_address1,v226_4_ce1,v226_4_q1,v226_5_address0,v226_5_ce0,v226_5_q0,v226_5_address1,v226_5_ce1,v226_5_q1,v226_6_address0,v226_6_ce0,v226_6_q0,v226_6_address1,v226_6_ce1,v226_6_q1,v226_7_address0,v226_7_ce0,v226_7_q0,v226_7_address1,v226_7_ce1,v226_7_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce); 
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
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_884_p2;
reg   [15:0] phi_mul_load_reg_1943;
wire   [15:0] add_ln168_1_fu_878_p2;
reg   [15:0] add_ln168_1_reg_1948;
wire   [7:0] add_ln168_fu_890_p2;
reg   [7:0] add_ln168_reg_1956;
wire   [2:0] trunc_ln168_fu_896_p1;
reg   [2:0] trunc_ln168_reg_1961;
wire   [12:0] zext_ln168_fu_910_p1;
reg   [12:0] zext_ln168_reg_1974;
wire   [0:0] cmp11_fu_914_p2;
reg   [0:0] cmp11_reg_1987;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_930_p2;
reg   [7:0] add_ln169_reg_2000;
wire   [7:0] empty_23_fu_944_p2;
reg   [7:0] empty_23_reg_2005;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_34_fu_954_p2;
reg   [7:0] empty_34_reg_2015;
wire   [7:0] empty_45_fu_964_p2;
reg   [7:0] empty_45_reg_2025;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_56_fu_974_p2;
reg   [7:0] empty_56_reg_2035;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_67_fu_995_p2;
reg   [7:0] empty_67_reg_2085;
wire   [7:0] empty_78_fu_1005_p2;
reg   [7:0] empty_78_reg_2095;
wire   [31:0] v_fu_1047_p19;
reg   [31:0] v_reg_2105;
wire    ap_CS_fsm_state7;
wire   [7:0] empty_89_fu_1108_p2;
reg   [7:0] empty_89_reg_2190;
wire   [7:0] empty_100_fu_1118_p2;
reg   [7:0] empty_100_reg_2200;
wire   [31:0] v37_fu_1160_p19;
reg   [31:0] v37_reg_2210;
wire    ap_CS_fsm_state8;
wire   [31:0] v39_fu_1231_p19;
reg   [31:0] v39_reg_2215;
wire   [31:0] v41_fu_1324_p19;
reg   [31:0] v41_reg_2300;
wire    ap_CS_fsm_state9;
wire   [31:0] v43_fu_1395_p19;
reg   [31:0] v43_reg_2305;
wire   [31:0] v45_fu_1488_p19;
reg   [31:0] v45_reg_2390;
wire    ap_CS_fsm_state10;
wire   [31:0] v47_fu_1559_p19;
reg   [31:0] v47_reg_2395;
wire   [31:0] v49_fu_1652_p19;
reg   [31:0] v49_reg_2480;
wire    ap_CS_fsm_state11;
wire   [31:0] v51_fu_1723_p19;
reg   [31:0] v51_reg_2485;
wire   [15:0] mul_ln171_fu_1766_p2;
reg   [15:0] mul_ln171_reg_2490;
wire    ap_CS_fsm_state15;
reg   [31:0] v36_reg_2495;
wire   [15:0] mul_ln186_fu_1775_p2;
reg   [15:0] mul_ln186_reg_2500;
reg   [31:0] v38_reg_2505;
wire   [15:0] mul_ln199_fu_1784_p2;
reg   [15:0] mul_ln199_reg_2510;
wire   [31:0] grp_fu_834_p2;
reg   [31:0] v40_reg_2515;
wire   [15:0] mul_ln212_fu_1793_p2;
reg   [15:0] mul_ln212_reg_2520;
wire   [31:0] grp_fu_838_p2;
reg   [31:0] v42_reg_2525;
wire   [15:0] mul_ln225_fu_1802_p2;
reg   [15:0] mul_ln225_reg_2530;
wire   [31:0] grp_fu_842_p2;
reg   [31:0] v44_reg_2535;
wire   [15:0] mul_ln238_fu_1811_p2;
reg   [15:0] mul_ln238_reg_2540;
wire   [31:0] grp_fu_846_p2;
reg   [31:0] v46_reg_2545;
wire   [15:0] mul_ln251_fu_1820_p2;
reg   [15:0] mul_ln251_reg_2550;
wire   [31:0] grp_fu_850_p2;
reg   [31:0] v48_reg_2555;
wire   [15:0] mul_ln264_fu_1829_p2;
reg   [15:0] mul_ln264_reg_2560;
wire   [31:0] grp_fu_854_p2;
reg   [31:0] v50_reg_2565;
wire   [15:0] mul_ln277_fu_1838_p2;
reg   [15:0] mul_ln277_reg_2570;
wire   [31:0] grp_fu_858_p2;
reg   [31:0] v52_reg_2575;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_ce;
reg   [7:0] v115_reg_786;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast926_fu_984_p1;
wire   [63:0] p_cast_fu_1086_p1;
wire   [63:0] p_cast927_fu_1097_p1;
wire   [63:0] p_cast928_fu_1270_p1;
wire   [63:0] p_cast929_fu_1281_p1;
wire   [63:0] p_cast930_fu_1434_p1;
wire   [63:0] p_cast931_fu_1445_p1;
wire   [63:0] p_cast932_fu_1598_p1;
wire   [63:0] p_cast933_fu_1609_p1;
reg   [15:0] phi_mul_fu_116;
wire   [0:0] icmp_ln169_fu_920_p2;
reg   [7:0] v114_fu_120;
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
reg   [31:0] grp_fu_826_p0;
reg   [31:0] grp_fu_826_p1;
wire    ap_CS_fsm_state12;
wire   [4:0] lshr_ln_fu_900_p4;
wire   [12:0] grp_fu_1844_p3;
wire   [31:0] v_fu_1047_p2;
wire   [31:0] v_fu_1047_p4;
wire   [31:0] v_fu_1047_p6;
wire   [31:0] v_fu_1047_p8;
wire   [31:0] v_fu_1047_p10;
wire   [31:0] v_fu_1047_p12;
wire   [31:0] v_fu_1047_p14;
wire   [31:0] v_fu_1047_p16;
wire   [31:0] v_fu_1047_p17;
wire   [12:0] grp_fu_1852_p3;
wire   [12:0] grp_fu_1860_p3;
wire   [31:0] v37_fu_1160_p2;
wire   [31:0] v37_fu_1160_p4;
wire   [31:0] v37_fu_1160_p6;
wire   [31:0] v37_fu_1160_p8;
wire   [31:0] v37_fu_1160_p10;
wire   [31:0] v37_fu_1160_p12;
wire   [31:0] v37_fu_1160_p14;
wire   [31:0] v37_fu_1160_p16;
wire   [31:0] v37_fu_1160_p17;
wire   [31:0] v39_fu_1231_p2;
wire   [31:0] v39_fu_1231_p4;
wire   [31:0] v39_fu_1231_p6;
wire   [31:0] v39_fu_1231_p8;
wire   [31:0] v39_fu_1231_p10;
wire   [31:0] v39_fu_1231_p12;
wire   [31:0] v39_fu_1231_p14;
wire   [31:0] v39_fu_1231_p16;
wire   [31:0] v39_fu_1231_p17;
wire   [12:0] grp_fu_1868_p3;
wire   [12:0] grp_fu_1876_p3;
wire   [31:0] v41_fu_1324_p2;
wire   [31:0] v41_fu_1324_p4;
wire   [31:0] v41_fu_1324_p6;
wire   [31:0] v41_fu_1324_p8;
wire   [31:0] v41_fu_1324_p10;
wire   [31:0] v41_fu_1324_p12;
wire   [31:0] v41_fu_1324_p14;
wire   [31:0] v41_fu_1324_p16;
wire   [31:0] v41_fu_1324_p17;
wire   [31:0] v43_fu_1395_p2;
wire   [31:0] v43_fu_1395_p4;
wire   [31:0] v43_fu_1395_p6;
wire   [31:0] v43_fu_1395_p8;
wire   [31:0] v43_fu_1395_p10;
wire   [31:0] v43_fu_1395_p12;
wire   [31:0] v43_fu_1395_p14;
wire   [31:0] v43_fu_1395_p16;
wire   [31:0] v43_fu_1395_p17;
wire   [12:0] grp_fu_1884_p3;
wire   [12:0] grp_fu_1892_p3;
wire   [31:0] v45_fu_1488_p2;
wire   [31:0] v45_fu_1488_p4;
wire   [31:0] v45_fu_1488_p6;
wire   [31:0] v45_fu_1488_p8;
wire   [31:0] v45_fu_1488_p10;
wire   [31:0] v45_fu_1488_p12;
wire   [31:0] v45_fu_1488_p14;
wire   [31:0] v45_fu_1488_p16;
wire   [31:0] v45_fu_1488_p17;
wire   [31:0] v47_fu_1559_p2;
wire   [31:0] v47_fu_1559_p4;
wire   [31:0] v47_fu_1559_p6;
wire   [31:0] v47_fu_1559_p8;
wire   [31:0] v47_fu_1559_p10;
wire   [31:0] v47_fu_1559_p12;
wire   [31:0] v47_fu_1559_p14;
wire   [31:0] v47_fu_1559_p16;
wire   [31:0] v47_fu_1559_p17;
wire   [12:0] grp_fu_1900_p3;
wire   [12:0] grp_fu_1908_p3;
wire   [31:0] v49_fu_1652_p2;
wire   [31:0] v49_fu_1652_p4;
wire   [31:0] v49_fu_1652_p6;
wire   [31:0] v49_fu_1652_p8;
wire   [31:0] v49_fu_1652_p10;
wire   [31:0] v49_fu_1652_p12;
wire   [31:0] v49_fu_1652_p14;
wire   [31:0] v49_fu_1652_p16;
wire   [31:0] v49_fu_1652_p17;
wire   [31:0] v51_fu_1723_p2;
wire   [31:0] v51_fu_1723_p4;
wire   [31:0] v51_fu_1723_p6;
wire   [31:0] v51_fu_1723_p8;
wire   [31:0] v51_fu_1723_p10;
wire   [31:0] v51_fu_1723_p12;
wire   [31:0] v51_fu_1723_p14;
wire   [31:0] v51_fu_1723_p16;
wire   [31:0] v51_fu_1723_p17;
wire   [7:0] mul_ln171_fu_1766_p0;
wire   [8:0] mul_ln171_fu_1766_p1;
wire   [7:0] mul_ln186_fu_1775_p0;
wire   [8:0] mul_ln186_fu_1775_p1;
wire   [7:0] mul_ln199_fu_1784_p0;
wire   [8:0] mul_ln199_fu_1784_p1;
wire   [7:0] mul_ln212_fu_1793_p0;
wire   [8:0] mul_ln212_fu_1793_p1;
wire   [7:0] mul_ln225_fu_1802_p0;
wire   [8:0] mul_ln225_fu_1802_p1;
wire   [7:0] mul_ln238_fu_1811_p0;
wire   [8:0] mul_ln238_fu_1811_p1;
wire   [7:0] mul_ln251_fu_1820_p0;
wire   [8:0] mul_ln251_fu_1820_p1;
wire   [7:0] mul_ln264_fu_1829_p0;
wire   [8:0] mul_ln264_fu_1829_p1;
wire   [7:0] mul_ln277_fu_1838_p0;
wire   [8:0] mul_ln277_fu_1838_p1;
wire   [7:0] grp_fu_1844_p0;
wire   [4:0] grp_fu_1844_p1;
wire   [4:0] grp_fu_1844_p2;
wire   [7:0] grp_fu_1852_p0;
wire   [4:0] grp_fu_1852_p1;
wire   [4:0] grp_fu_1852_p2;
wire   [7:0] grp_fu_1860_p0;
wire   [4:0] grp_fu_1860_p1;
wire   [4:0] grp_fu_1860_p2;
wire   [7:0] grp_fu_1868_p0;
wire   [4:0] grp_fu_1868_p1;
wire   [4:0] grp_fu_1868_p2;
wire   [7:0] grp_fu_1876_p0;
wire   [4:0] grp_fu_1876_p1;
wire   [4:0] grp_fu_1876_p2;
wire   [7:0] grp_fu_1884_p0;
wire   [4:0] grp_fu_1884_p1;
wire   [4:0] grp_fu_1884_p2;
wire   [7:0] grp_fu_1892_p0;
wire   [4:0] grp_fu_1892_p1;
wire   [4:0] grp_fu_1892_p2;
wire   [7:0] grp_fu_1900_p0;
wire   [4:0] grp_fu_1900_p1;
wire   [4:0] grp_fu_1900_p2;
wire   [7:0] grp_fu_1908_p0;
wire   [4:0] grp_fu_1908_p1;
wire   [4:0] grp_fu_1908_p2;
reg    grp_fu_826_ce;
reg    grp_fu_2580_ce;
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
wire   [12:0] grp_fu_1844_p00;
wire   [12:0] grp_fu_1852_p00;
wire   [12:0] grp_fu_1860_p00;
wire   [12:0] grp_fu_1868_p00;
wire   [12:0] grp_fu_1876_p00;
wire   [12:0] grp_fu_1884_p00;
wire   [12:0] grp_fu_1892_p00;
wire   [12:0] grp_fu_1900_p00;
wire   [12:0] grp_fu_1908_p00;
wire   [15:0] mul_ln171_fu_1766_p00;
wire   [15:0] mul_ln186_fu_1775_p00;
wire   [15:0] mul_ln199_fu_1784_p00;
wire   [15:0] mul_ln212_fu_1793_p00;
wire   [15:0] mul_ln225_fu_1802_p00;
wire   [15:0] mul_ln238_fu_1811_p00;
wire   [15:0] mul_ln251_fu_1820_p00;
wire   [15:0] mul_ln264_fu_1829_p00;
wire   [15:0] mul_ln277_fu_1838_p00;
wire   [2:0] v_fu_1047_p1;
wire   [2:0] v_fu_1047_p3;
wire   [2:0] v_fu_1047_p5;
wire   [2:0] v_fu_1047_p7;
wire  signed [2:0] v_fu_1047_p9;
wire  signed [2:0] v_fu_1047_p11;
wire  signed [2:0] v_fu_1047_p13;
wire  signed [2:0] v_fu_1047_p15;
wire   [2:0] v37_fu_1160_p1;
wire   [2:0] v37_fu_1160_p3;
wire   [2:0] v37_fu_1160_p5;
wire   [2:0] v37_fu_1160_p7;
wire  signed [2:0] v37_fu_1160_p9;
wire  signed [2:0] v37_fu_1160_p11;
wire  signed [2:0] v37_fu_1160_p13;
wire  signed [2:0] v37_fu_1160_p15;
wire   [2:0] v39_fu_1231_p1;
wire   [2:0] v39_fu_1231_p3;
wire   [2:0] v39_fu_1231_p5;
wire   [2:0] v39_fu_1231_p7;
wire  signed [2:0] v39_fu_1231_p9;
wire  signed [2:0] v39_fu_1231_p11;
wire  signed [2:0] v39_fu_1231_p13;
wire  signed [2:0] v39_fu_1231_p15;
wire   [2:0] v41_fu_1324_p1;
wire   [2:0] v41_fu_1324_p3;
wire   [2:0] v41_fu_1324_p5;
wire   [2:0] v41_fu_1324_p7;
wire  signed [2:0] v41_fu_1324_p9;
wire  signed [2:0] v41_fu_1324_p11;
wire  signed [2:0] v41_fu_1324_p13;
wire  signed [2:0] v41_fu_1324_p15;
wire   [2:0] v43_fu_1395_p1;
wire   [2:0] v43_fu_1395_p3;
wire   [2:0] v43_fu_1395_p5;
wire   [2:0] v43_fu_1395_p7;
wire  signed [2:0] v43_fu_1395_p9;
wire  signed [2:0] v43_fu_1395_p11;
wire  signed [2:0] v43_fu_1395_p13;
wire  signed [2:0] v43_fu_1395_p15;
wire   [2:0] v45_fu_1488_p1;
wire   [2:0] v45_fu_1488_p3;
wire   [2:0] v45_fu_1488_p5;
wire   [2:0] v45_fu_1488_p7;
wire  signed [2:0] v45_fu_1488_p9;
wire  signed [2:0] v45_fu_1488_p11;
wire  signed [2:0] v45_fu_1488_p13;
wire  signed [2:0] v45_fu_1488_p15;
wire   [2:0] v47_fu_1559_p1;
wire   [2:0] v47_fu_1559_p3;
wire   [2:0] v47_fu_1559_p5;
wire   [2:0] v47_fu_1559_p7;
wire  signed [2:0] v47_fu_1559_p9;
wire  signed [2:0] v47_fu_1559_p11;
wire  signed [2:0] v47_fu_1559_p13;
wire  signed [2:0] v47_fu_1559_p15;
wire   [2:0] v49_fu_1652_p1;
wire   [2:0] v49_fu_1652_p3;
wire   [2:0] v49_fu_1652_p5;
wire   [2:0] v49_fu_1652_p7;
wire  signed [2:0] v49_fu_1652_p9;
wire  signed [2:0] v49_fu_1652_p11;
wire  signed [2:0] v49_fu_1652_p13;
wire  signed [2:0] v49_fu_1652_p15;
wire   [2:0] v51_fu_1723_p1;
wire   [2:0] v51_fu_1723_p3;
wire   [2:0] v51_fu_1723_p5;
wire   [2:0] v51_fu_1723_p7;
wire  signed [2:0] v51_fu_1723_p9;
wire  signed [2:0] v51_fu_1723_p11;
wire  signed [2:0] v51_fu_1723_p13;
wire  signed [2:0] v51_fu_1723_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start_reg = 1'b0;
#0 phi_mul_fu_116 = 16'd0;
#0 v114_fu_120 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_798(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_ready),.phi_mul(phi_mul_load_reg_1943),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_2490),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_2500),.mul_ln199(mul_ln199_reg_2510),.mul_ln212(mul_ln212_reg_2520),.mul_ln225(mul_ln225_reg_2530),.mul_ln238(mul_ln238_reg_2540),.mul_ln251(mul_ln251_reg_2550),.mul_ln264(mul_ln264_reg_2560),.mul_ln277(mul_ln277_reg_2570),.cmp11(cmp11_reg_1987),.v120(v36_reg_2495),.v133(v38_reg_2505),.v144(v40_reg_2515),.v155(v42_reg_2525),.v166(v44_reg_2535),.v177(v46_reg_2545),.v188(v48_reg_2555),.v199(v50_reg_2565),.v210(v52_reg_2575),.grp_fu_2580_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_din0),.grp_fu_2580_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_din1),.grp_fu_2580_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_opcode),.grp_fu_2580_p_dout0(grp_fu_160_p_dout0),.grp_fu_2580_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_ce),.grp_fu_826_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_din0),.grp_fu_826_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_din1),.grp_fu_826_p_dout0(grp_fu_164_p_dout0),.grp_fu_826_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(v39_reg_2215),.din1(v113),.ce(1'b1),.dout(grp_fu_834_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(v41_reg_2300),.din1(v113),.ce(1'b1),.dout(grp_fu_838_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(v43_reg_2305),.din1(v113),.ce(1'b1),.dout(grp_fu_842_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U30(.clk(ap_clk),.reset(ap_rst),.din0(v45_reg_2390),.din1(v113),.ce(1'b1),.dout(grp_fu_846_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U31(.clk(ap_clk),.reset(ap_rst),.din0(v47_reg_2395),.din1(v113),.ce(1'b1),.dout(grp_fu_850_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(v49_reg_2480),.din1(v113),.ce(1'b1),.dout(grp_fu_854_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(v51_reg_2485),.din1(v113),.ce(1'b1),.dout(grp_fu_858_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U34(.din0(v_fu_1047_p2),.din1(v_fu_1047_p4),.din2(v_fu_1047_p6),.din3(v_fu_1047_p8),.din4(v_fu_1047_p10),.din5(v_fu_1047_p12),.din6(v_fu_1047_p14),.din7(v_fu_1047_p16),.def(v_fu_1047_p17),.sel(trunc_ln168_reg_1961),.dout(v_fu_1047_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U35(.din0(v37_fu_1160_p2),.din1(v37_fu_1160_p4),.din2(v37_fu_1160_p6),.din3(v37_fu_1160_p8),.din4(v37_fu_1160_p10),.din5(v37_fu_1160_p12),.din6(v37_fu_1160_p14),.din7(v37_fu_1160_p16),.def(v37_fu_1160_p17),.sel(trunc_ln168_reg_1961),.dout(v37_fu_1160_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U36(.din0(v39_fu_1231_p2),.din1(v39_fu_1231_p4),.din2(v39_fu_1231_p6),.din3(v39_fu_1231_p8),.din4(v39_fu_1231_p10),.din5(v39_fu_1231_p12),.din6(v39_fu_1231_p14),.din7(v39_fu_1231_p16),.def(v39_fu_1231_p17),.sel(trunc_ln168_reg_1961),.dout(v39_fu_1231_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U37(.din0(v41_fu_1324_p2),.din1(v41_fu_1324_p4),.din2(v41_fu_1324_p6),.din3(v41_fu_1324_p8),.din4(v41_fu_1324_p10),.din5(v41_fu_1324_p12),.din6(v41_fu_1324_p14),.din7(v41_fu_1324_p16),.def(v41_fu_1324_p17),.sel(trunc_ln168_reg_1961),.dout(v41_fu_1324_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U38(.din0(v43_fu_1395_p2),.din1(v43_fu_1395_p4),.din2(v43_fu_1395_p6),.din3(v43_fu_1395_p8),.din4(v43_fu_1395_p10),.din5(v43_fu_1395_p12),.din6(v43_fu_1395_p14),.din7(v43_fu_1395_p16),.def(v43_fu_1395_p17),.sel(trunc_ln168_reg_1961),.dout(v43_fu_1395_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U39(.din0(v45_fu_1488_p2),.din1(v45_fu_1488_p4),.din2(v45_fu_1488_p6),.din3(v45_fu_1488_p8),.din4(v45_fu_1488_p10),.din5(v45_fu_1488_p12),.din6(v45_fu_1488_p14),.din7(v45_fu_1488_p16),.def(v45_fu_1488_p17),.sel(trunc_ln168_reg_1961),.dout(v45_fu_1488_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U40(.din0(v47_fu_1559_p2),.din1(v47_fu_1559_p4),.din2(v47_fu_1559_p6),.din3(v47_fu_1559_p8),.din4(v47_fu_1559_p10),.din5(v47_fu_1559_p12),.din6(v47_fu_1559_p14),.din7(v47_fu_1559_p16),.def(v47_fu_1559_p17),.sel(trunc_ln168_reg_1961),.dout(v47_fu_1559_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U41(.din0(v49_fu_1652_p2),.din1(v49_fu_1652_p4),.din2(v49_fu_1652_p6),.din3(v49_fu_1652_p8),.din4(v49_fu_1652_p10),.din5(v49_fu_1652_p12),.din6(v49_fu_1652_p14),.din7(v49_fu_1652_p16),.def(v49_fu_1652_p17),.sel(trunc_ln168_reg_1961),.dout(v49_fu_1652_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U42(.din0(v51_fu_1723_p2),.din1(v51_fu_1723_p4),.din2(v51_fu_1723_p6),.din3(v51_fu_1723_p8),.din4(v51_fu_1723_p10),.din5(v51_fu_1723_p12),.din6(v51_fu_1723_p14),.din7(v51_fu_1723_p16),.def(v51_fu_1723_p17),.sel(trunc_ln168_reg_1961),.dout(v51_fu_1723_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U43(.din0(mul_ln171_fu_1766_p0),.din1(mul_ln171_fu_1766_p1),.dout(mul_ln171_fu_1766_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U44(.din0(mul_ln186_fu_1775_p0),.din1(mul_ln186_fu_1775_p1),.dout(mul_ln186_fu_1775_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U45(.din0(mul_ln199_fu_1784_p0),.din1(mul_ln199_fu_1784_p1),.dout(mul_ln199_fu_1784_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U46(.din0(mul_ln212_fu_1793_p0),.din1(mul_ln212_fu_1793_p1),.dout(mul_ln212_fu_1793_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U47(.din0(mul_ln225_fu_1802_p0),.din1(mul_ln225_fu_1802_p1),.dout(mul_ln225_fu_1802_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U48(.din0(mul_ln238_fu_1811_p0),.din1(mul_ln238_fu_1811_p1),.dout(mul_ln238_fu_1811_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U49(.din0(mul_ln251_fu_1820_p0),.din1(mul_ln251_fu_1820_p1),.dout(mul_ln251_fu_1820_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U50(.din0(mul_ln264_fu_1829_p0),.din1(mul_ln264_fu_1829_p1),.dout(mul_ln264_fu_1829_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U51(.din0(mul_ln277_fu_1838_p0),.din1(mul_ln277_fu_1838_p1),.dout(mul_ln277_fu_1838_p2));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1844_p0),.din1(grp_fu_1844_p1),.din2(grp_fu_1844_p2),.ce(1'b1),.dout(grp_fu_1844_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1852_p0),.din1(grp_fu_1852_p1),.din2(grp_fu_1852_p2),.ce(1'b1),.dout(grp_fu_1852_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1860_p0),.din1(grp_fu_1860_p1),.din2(grp_fu_1860_p2),.ce(1'b1),.dout(grp_fu_1860_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1868_p0),.din1(grp_fu_1868_p1),.din2(grp_fu_1868_p2),.ce(1'b1),.dout(grp_fu_1868_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1876_p0),.din1(grp_fu_1876_p1),.din2(grp_fu_1876_p2),.ce(1'b1),.dout(grp_fu_1876_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1884_p0),.din1(grp_fu_1884_p1),.din2(grp_fu_1884_p2),.ce(1'b1),.dout(grp_fu_1884_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U58(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1892_p0),.din1(grp_fu_1892_p1),.din2(grp_fu_1892_p2),.ce(1'b1),.dout(grp_fu_1892_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1900_p0),.din1(grp_fu_1900_p1),.din2(grp_fu_1900_p2),.ce(1'b1),.dout(grp_fu_1900_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1908_p0),.din1(grp_fu_1908_p1),.din2(grp_fu_1908_p2),.ce(1'b1),.dout(grp_fu_1908_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_116 <= 16'd0;
    end else if (((icmp_ln169_fu_920_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_116 <= add_ln168_1_reg_1948;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_120 <= 8'd0;
    end else if (((icmp_ln169_fu_920_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_120 <= add_ln168_reg_1956;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_786 <= add_ln169_reg_2000;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_884_p2 == 1'd0))) begin
        v115_reg_786 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1948 <= add_ln168_1_fu_878_p2;
        add_ln168_reg_1956 <= add_ln168_fu_890_p2;
        cmp11_reg_1987 <= cmp11_fu_914_p2;
        phi_mul_load_reg_1943 <= phi_mul_fu_116;
        trunc_ln168_reg_1961 <= trunc_ln168_fu_896_p1;
        zext_ln168_reg_1974[4 : 0] <= zext_ln168_fu_910_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_2000 <= add_ln169_fu_930_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_100_reg_2200 <= empty_100_fu_1118_p2;
        empty_89_reg_2190 <= empty_89_fu_1108_p2;
        v_reg_2105 <= v_fu_1047_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_23_reg_2005 <= empty_23_fu_944_p2;
        empty_34_reg_2015 <= empty_34_fu_954_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_45_reg_2025 <= empty_45_fu_964_p2;
        empty_56_reg_2035 <= empty_56_fu_974_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_67_reg_2085 <= empty_67_fu_995_p2;
        empty_78_reg_2095 <= empty_78_fu_1005_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_2490 <= mul_ln171_fu_1766_p2;
        mul_ln186_reg_2500 <= mul_ln186_fu_1775_p2;
        mul_ln199_reg_2510 <= mul_ln199_fu_1784_p2;
        mul_ln212_reg_2520 <= mul_ln212_fu_1793_p2;
        mul_ln225_reg_2530 <= mul_ln225_fu_1802_p2;
        mul_ln238_reg_2540 <= mul_ln238_fu_1811_p2;
        mul_ln251_reg_2550 <= mul_ln251_fu_1820_p2;
        mul_ln264_reg_2560 <= mul_ln264_fu_1829_p2;
        mul_ln277_reg_2570 <= mul_ln277_fu_1838_p2;
        v36_reg_2495 <= grp_fu_164_p_dout0;
        v38_reg_2505 <= grp_fu_168_p_dout0;
        v40_reg_2515 <= grp_fu_834_p2;
        v42_reg_2525 <= grp_fu_838_p2;
        v44_reg_2535 <= grp_fu_842_p2;
        v46_reg_2545 <= grp_fu_846_p2;
        v48_reg_2555 <= grp_fu_850_p2;
        v50_reg_2565 <= grp_fu_854_p2;
        v52_reg_2575 <= grp_fu_858_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v37_reg_2210 <= v37_fu_1160_p19;
        v39_reg_2215 <= v39_fu_1231_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v41_reg_2300 <= v41_fu_1324_p19;
        v43_reg_2305 <= v43_fu_1395_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v45_reg_2390 <= v45_fu_1488_p19;
        v47_reg_2395 <= v47_fu_1559_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v49_reg_2480 <= v49_fu_1652_p19;
        v51_reg_2485 <= v51_fu_1723_p19;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_884_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_884_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2580_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_ce;
    end else begin
        grp_fu_2580_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_826_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_ce;
    end else begin
        grp_fu_826_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_826_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_826_p0 = v_reg_2105;
    end else begin
        grp_fu_826_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_826_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_826_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_826_p1 = v113;
    end else begin
        grp_fu_826_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast932_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast930_fu_1434_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast928_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast927_fu_1097_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast926_fu_984_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast933_fu_1609_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast931_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast929_fu_1281_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_1086_p1;
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
        v226_1_address0_local = p_cast932_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast930_fu_1434_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast928_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast927_fu_1097_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast926_fu_984_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast933_fu_1609_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast931_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast929_fu_1281_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_1086_p1;
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
        v226_2_address0_local = p_cast932_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast930_fu_1434_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast928_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast927_fu_1097_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast926_fu_984_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast933_fu_1609_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast931_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast929_fu_1281_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_1086_p1;
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
        v226_3_address0_local = p_cast932_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast930_fu_1434_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast928_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast927_fu_1097_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast926_fu_984_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast933_fu_1609_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast931_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast929_fu_1281_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_1086_p1;
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
        v226_4_address0_local = p_cast932_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address0_local = p_cast930_fu_1434_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address0_local = p_cast928_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address0_local = p_cast927_fu_1097_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_4_address0_local = p_cast926_fu_984_p1;
    end else begin
        v226_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address1_local = p_cast933_fu_1609_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address1_local = p_cast931_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address1_local = p_cast929_fu_1281_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address1_local = p_cast_fu_1086_p1;
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
        v226_5_address0_local = p_cast932_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address0_local = p_cast930_fu_1434_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address0_local = p_cast928_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address0_local = p_cast927_fu_1097_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_5_address0_local = p_cast926_fu_984_p1;
    end else begin
        v226_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address1_local = p_cast933_fu_1609_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address1_local = p_cast931_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address1_local = p_cast929_fu_1281_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address1_local = p_cast_fu_1086_p1;
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
        v226_6_address0_local = p_cast932_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address0_local = p_cast930_fu_1434_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address0_local = p_cast928_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address0_local = p_cast927_fu_1097_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_6_address0_local = p_cast926_fu_984_p1;
    end else begin
        v226_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address1_local = p_cast933_fu_1609_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address1_local = p_cast931_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address1_local = p_cast929_fu_1281_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address1_local = p_cast_fu_1086_p1;
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
        v226_7_address0_local = p_cast932_fu_1598_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address0_local = p_cast930_fu_1434_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address0_local = p_cast928_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address0_local = p_cast927_fu_1097_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_7_address0_local = p_cast926_fu_984_p1;
    end else begin
        v226_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address1_local = p_cast933_fu_1609_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address1_local = p_cast931_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address1_local = p_cast929_fu_1281_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address1_local = p_cast_fu_1086_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_884_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_884_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_884_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_884_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_920_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_1_fu_878_p2 = (phi_mul_fu_116 + 16'd190);
assign add_ln168_fu_890_p2 = (v114_fu_120 + 8'd1);
assign add_ln169_fu_930_p2 = (v115_reg_786 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_884_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_914_p2 = ((v114_fu_120 == 8'd0) ? 1'b1 : 1'b0);
assign empty_100_fu_1118_p2 = (v115_reg_786 + 8'd8);
assign empty_23_fu_944_p2 = (v115_reg_786 + 8'd1);
assign empty_34_fu_954_p2 = (v115_reg_786 + 8'd2);
assign empty_45_fu_964_p2 = (v115_reg_786 + 8'd3);
assign empty_56_fu_974_p2 = (v115_reg_786 + 8'd4);
assign empty_67_fu_995_p2 = (v115_reg_786 + 8'd5);
assign empty_78_fu_1005_p2 = (v115_reg_786 + 8'd6);
assign empty_89_fu_1108_p2 = (v115_reg_786 + 8'd7);
assign grp_fu_160_p_ce = grp_fu_2580_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_grp_fu_2580_p_din1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_826_ce;
assign grp_fu_164_p_din0 = grp_fu_826_p0;
assign grp_fu_164_p_din1 = grp_fu_826_p1;
assign grp_fu_168_p_ce = 1'b1;
assign grp_fu_168_p_din0 = v37_reg_2210;
assign grp_fu_168_p_din1 = v113;
assign grp_fu_1844_p0 = grp_fu_1844_p00;
assign grp_fu_1844_p00 = v115_reg_786;
assign grp_fu_1844_p1 = 13'd27;
assign grp_fu_1844_p2 = zext_ln168_reg_1974;
assign grp_fu_1852_p0 = grp_fu_1852_p00;
assign grp_fu_1852_p00 = empty_23_fu_944_p2;
assign grp_fu_1852_p1 = 13'd27;
assign grp_fu_1852_p2 = zext_ln168_reg_1974;
assign grp_fu_1860_p0 = grp_fu_1860_p00;
assign grp_fu_1860_p00 = empty_34_fu_954_p2;
assign grp_fu_1860_p1 = 13'd27;
assign grp_fu_1860_p2 = zext_ln168_reg_1974;
assign grp_fu_1868_p0 = grp_fu_1868_p00;
assign grp_fu_1868_p00 = empty_45_fu_964_p2;
assign grp_fu_1868_p1 = 13'd27;
assign grp_fu_1868_p2 = zext_ln168_reg_1974;
assign grp_fu_1876_p0 = grp_fu_1876_p00;
assign grp_fu_1876_p00 = empty_56_fu_974_p2;
assign grp_fu_1876_p1 = 13'd27;
assign grp_fu_1876_p2 = zext_ln168_reg_1974;
assign grp_fu_1884_p0 = grp_fu_1884_p00;
assign grp_fu_1884_p00 = empty_67_fu_995_p2;
assign grp_fu_1884_p1 = 13'd27;
assign grp_fu_1884_p2 = zext_ln168_reg_1974;
assign grp_fu_1892_p0 = grp_fu_1892_p00;
assign grp_fu_1892_p00 = empty_78_fu_1005_p2;
assign grp_fu_1892_p1 = 13'd27;
assign grp_fu_1892_p2 = zext_ln168_reg_1974;
assign grp_fu_1900_p0 = grp_fu_1900_p00;
assign grp_fu_1900_p00 = empty_89_fu_1108_p2;
assign grp_fu_1900_p1 = 13'd27;
assign grp_fu_1900_p2 = zext_ln168_reg_1974;
assign grp_fu_1908_p0 = grp_fu_1908_p00;
assign grp_fu_1908_p00 = empty_100_fu_1118_p2;
assign grp_fu_1908_p1 = 13'd27;
assign grp_fu_1908_p2 = zext_ln168_reg_1974;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_ap_start_reg;
assign icmp_ln168_fu_884_p2 = ((v114_fu_120 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_920_p2 = ((v115_reg_786 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_900_p4 = {{v114_fu_120[7:3]}};
assign mul_ln171_fu_1766_p0 = mul_ln171_fu_1766_p00;
assign mul_ln171_fu_1766_p00 = v115_reg_786;
assign mul_ln171_fu_1766_p1 = 16'd190;
assign mul_ln186_fu_1775_p0 = mul_ln186_fu_1775_p00;
assign mul_ln186_fu_1775_p00 = empty_23_reg_2005;
assign mul_ln186_fu_1775_p1 = 16'd190;
assign mul_ln199_fu_1784_p0 = mul_ln199_fu_1784_p00;
assign mul_ln199_fu_1784_p00 = empty_34_reg_2015;
assign mul_ln199_fu_1784_p1 = 16'd190;
assign mul_ln212_fu_1793_p0 = mul_ln212_fu_1793_p00;
assign mul_ln212_fu_1793_p00 = empty_45_reg_2025;
assign mul_ln212_fu_1793_p1 = 16'd190;
assign mul_ln225_fu_1802_p0 = mul_ln225_fu_1802_p00;
assign mul_ln225_fu_1802_p00 = empty_56_reg_2035;
assign mul_ln225_fu_1802_p1 = 16'd190;
assign mul_ln238_fu_1811_p0 = mul_ln238_fu_1811_p00;
assign mul_ln238_fu_1811_p00 = empty_67_reg_2085;
assign mul_ln238_fu_1811_p1 = 16'd190;
assign mul_ln251_fu_1820_p0 = mul_ln251_fu_1820_p00;
assign mul_ln251_fu_1820_p00 = empty_78_reg_2095;
assign mul_ln251_fu_1820_p1 = 16'd190;
assign mul_ln264_fu_1829_p0 = mul_ln264_fu_1829_p00;
assign mul_ln264_fu_1829_p00 = empty_89_reg_2190;
assign mul_ln264_fu_1829_p1 = 16'd190;
assign mul_ln277_fu_1838_p0 = mul_ln277_fu_1838_p00;
assign mul_ln277_fu_1838_p00 = empty_100_reg_2200;
assign mul_ln277_fu_1838_p1 = 16'd190;
assign p_cast926_fu_984_p1 = grp_fu_1844_p3;
assign p_cast927_fu_1097_p1 = grp_fu_1860_p3;
assign p_cast928_fu_1270_p1 = grp_fu_1868_p3;
assign p_cast929_fu_1281_p1 = grp_fu_1876_p3;
assign p_cast930_fu_1434_p1 = grp_fu_1884_p3;
assign p_cast931_fu_1445_p1 = grp_fu_1892_p3;
assign p_cast932_fu_1598_p1 = grp_fu_1900_p3;
assign p_cast933_fu_1609_p1 = grp_fu_1908_p3;
assign p_cast_fu_1086_p1 = grp_fu_1852_p3;
assign trunc_ln168_fu_896_p1 = v114_fu_120[2:0];
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v225_we1;
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
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_798_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v37_fu_1160_p10 = v226_4_q1;
assign v37_fu_1160_p12 = v226_5_q1;
assign v37_fu_1160_p14 = v226_6_q1;
assign v37_fu_1160_p16 = v226_7_q1;
assign v37_fu_1160_p17 = 'bx;
assign v37_fu_1160_p2 = v226_0_q1;
assign v37_fu_1160_p4 = v226_1_q1;
assign v37_fu_1160_p6 = v226_2_q1;
assign v37_fu_1160_p8 = v226_3_q1;
assign v39_fu_1231_p10 = v226_4_q0;
assign v39_fu_1231_p12 = v226_5_q0;
assign v39_fu_1231_p14 = v226_6_q0;
assign v39_fu_1231_p16 = v226_7_q0;
assign v39_fu_1231_p17 = 'bx;
assign v39_fu_1231_p2 = v226_0_q0;
assign v39_fu_1231_p4 = v226_1_q0;
assign v39_fu_1231_p6 = v226_2_q0;
assign v39_fu_1231_p8 = v226_3_q0;
assign v41_fu_1324_p10 = v226_4_q0;
assign v41_fu_1324_p12 = v226_5_q0;
assign v41_fu_1324_p14 = v226_6_q0;
assign v41_fu_1324_p16 = v226_7_q0;
assign v41_fu_1324_p17 = 'bx;
assign v41_fu_1324_p2 = v226_0_q0;
assign v41_fu_1324_p4 = v226_1_q0;
assign v41_fu_1324_p6 = v226_2_q0;
assign v41_fu_1324_p8 = v226_3_q0;
assign v43_fu_1395_p10 = v226_4_q1;
assign v43_fu_1395_p12 = v226_5_q1;
assign v43_fu_1395_p14 = v226_6_q1;
assign v43_fu_1395_p16 = v226_7_q1;
assign v43_fu_1395_p17 = 'bx;
assign v43_fu_1395_p2 = v226_0_q1;
assign v43_fu_1395_p4 = v226_1_q1;
assign v43_fu_1395_p6 = v226_2_q1;
assign v43_fu_1395_p8 = v226_3_q1;
assign v45_fu_1488_p10 = v226_4_q0;
assign v45_fu_1488_p12 = v226_5_q0;
assign v45_fu_1488_p14 = v226_6_q0;
assign v45_fu_1488_p16 = v226_7_q0;
assign v45_fu_1488_p17 = 'bx;
assign v45_fu_1488_p2 = v226_0_q0;
assign v45_fu_1488_p4 = v226_1_q0;
assign v45_fu_1488_p6 = v226_2_q0;
assign v45_fu_1488_p8 = v226_3_q0;
assign v47_fu_1559_p10 = v226_4_q1;
assign v47_fu_1559_p12 = v226_5_q1;
assign v47_fu_1559_p14 = v226_6_q1;
assign v47_fu_1559_p16 = v226_7_q1;
assign v47_fu_1559_p17 = 'bx;
assign v47_fu_1559_p2 = v226_0_q1;
assign v47_fu_1559_p4 = v226_1_q1;
assign v47_fu_1559_p6 = v226_2_q1;
assign v47_fu_1559_p8 = v226_3_q1;
assign v49_fu_1652_p10 = v226_4_q0;
assign v49_fu_1652_p12 = v226_5_q0;
assign v49_fu_1652_p14 = v226_6_q0;
assign v49_fu_1652_p16 = v226_7_q0;
assign v49_fu_1652_p17 = 'bx;
assign v49_fu_1652_p2 = v226_0_q0;
assign v49_fu_1652_p4 = v226_1_q0;
assign v49_fu_1652_p6 = v226_2_q0;
assign v49_fu_1652_p8 = v226_3_q0;
assign v51_fu_1723_p10 = v226_4_q1;
assign v51_fu_1723_p12 = v226_5_q1;
assign v51_fu_1723_p14 = v226_6_q1;
assign v51_fu_1723_p16 = v226_7_q1;
assign v51_fu_1723_p17 = 'bx;
assign v51_fu_1723_p2 = v226_0_q1;
assign v51_fu_1723_p4 = v226_1_q1;
assign v51_fu_1723_p6 = v226_2_q1;
assign v51_fu_1723_p8 = v226_3_q1;
assign v_fu_1047_p10 = v226_4_q0;
assign v_fu_1047_p12 = v226_5_q0;
assign v_fu_1047_p14 = v226_6_q0;
assign v_fu_1047_p16 = v226_7_q0;
assign v_fu_1047_p17 = 'bx;
assign v_fu_1047_p2 = v226_0_q0;
assign v_fu_1047_p4 = v226_1_q0;
assign v_fu_1047_p6 = v226_2_q0;
assign v_fu_1047_p8 = v226_3_q0;
assign zext_ln168_fu_910_p1 = lshr_ln_fu_900_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1974[12:5] <= 8'b00000000;
end
endmodule 