module backprop_backprop_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,phi_mul190,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,v6_4_address0,v6_4_ce0,v6_4_q0,v6_5_address0,v6_5_ce0,v6_5_q0,v6_6_address0,v6_6_ce0,v6_6_q0,v6_7_address0,v6_7_ce0,v6_7_q0,v29_12_out,v29_12_out_ap_vld,grp_fu_5240_p_din0,grp_fu_5240_p_din1,grp_fu_5240_p_opcode,grp_fu_5240_p_dout0,grp_fu_5240_p_ce,grp_fu_5258_p_din0,grp_fu_5258_p_din1,grp_fu_5258_p_dout0,grp_fu_5258_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 64'd1;
parameter    ap_ST_fsm_pp0_stage1 = 64'd2;
parameter    ap_ST_fsm_pp0_stage2 = 64'd4;
parameter    ap_ST_fsm_pp0_stage3 = 64'd8;
parameter    ap_ST_fsm_pp0_stage4 = 64'd16;
parameter    ap_ST_fsm_pp0_stage5 = 64'd32;
parameter    ap_ST_fsm_pp0_stage6 = 64'd64;
parameter    ap_ST_fsm_pp0_stage7 = 64'd128;
parameter    ap_ST_fsm_pp0_stage8 = 64'd256;
parameter    ap_ST_fsm_pp0_stage9 = 64'd512;
parameter    ap_ST_fsm_pp0_stage10 = 64'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 64'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 64'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 64'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 64'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 64'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 64'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 64'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 64'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 64'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 64'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 64'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 64'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 64'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 64'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 64'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 64'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 64'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 64'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 64'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 64'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 64'd2147483648;
parameter    ap_ST_fsm_pp0_stage32 = 64'd4294967296;
parameter    ap_ST_fsm_pp0_stage33 = 64'd8589934592;
parameter    ap_ST_fsm_pp0_stage34 = 64'd17179869184;
parameter    ap_ST_fsm_pp0_stage35 = 64'd34359738368;
parameter    ap_ST_fsm_pp0_stage36 = 64'd68719476736;
parameter    ap_ST_fsm_pp0_stage37 = 64'd137438953472;
parameter    ap_ST_fsm_pp0_stage38 = 64'd274877906944;
parameter    ap_ST_fsm_pp0_stage39 = 64'd549755813888;
parameter    ap_ST_fsm_pp0_stage40 = 64'd1099511627776;
parameter    ap_ST_fsm_pp0_stage41 = 64'd2199023255552;
parameter    ap_ST_fsm_pp0_stage42 = 64'd4398046511104;
parameter    ap_ST_fsm_pp0_stage43 = 64'd8796093022208;
parameter    ap_ST_fsm_pp0_stage44 = 64'd17592186044416;
parameter    ap_ST_fsm_pp0_stage45 = 64'd35184372088832;
parameter    ap_ST_fsm_pp0_stage46 = 64'd70368744177664;
parameter    ap_ST_fsm_pp0_stage47 = 64'd140737488355328;
parameter    ap_ST_fsm_pp0_stage48 = 64'd281474976710656;
parameter    ap_ST_fsm_pp0_stage49 = 64'd562949953421312;
parameter    ap_ST_fsm_pp0_stage50 = 64'd1125899906842624;
parameter    ap_ST_fsm_pp0_stage51 = 64'd2251799813685248;
parameter    ap_ST_fsm_pp0_stage52 = 64'd4503599627370496;
parameter    ap_ST_fsm_pp0_stage53 = 64'd9007199254740992;
parameter    ap_ST_fsm_pp0_stage54 = 64'd18014398509481984;
parameter    ap_ST_fsm_pp0_stage55 = 64'd36028797018963968;
parameter    ap_ST_fsm_pp0_stage56 = 64'd72057594037927936;
parameter    ap_ST_fsm_pp0_stage57 = 64'd144115188075855872;
parameter    ap_ST_fsm_pp0_stage58 = 64'd288230376151711744;
parameter    ap_ST_fsm_pp0_stage59 = 64'd576460752303423488;
parameter    ap_ST_fsm_pp0_stage60 = 64'd1152921504606846976;
parameter    ap_ST_fsm_pp0_stage61 = 64'd2305843009213693952;
parameter    ap_ST_fsm_pp0_stage62 = 64'd4611686018427387904;
parameter    ap_ST_fsm_pp0_stage63 = 64'd9223372036854775808;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] phi_mul;
output  [7:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [7:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [7:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [7:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
input  [11:0] phi_mul190;
output  [8:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [8:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [8:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [8:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
output  [8:0] v6_4_address0;
output   v6_4_ce0;
input  [63:0] v6_4_q0;
output  [8:0] v6_5_address0;
output   v6_5_ce0;
input  [63:0] v6_5_q0;
output  [8:0] v6_6_address0;
output   v6_6_ce0;
input  [63:0] v6_6_q0;
output  [8:0] v6_7_address0;
output   v6_7_ce0;
input  [63:0] v6_7_q0;
output  [63:0] v29_12_out;
output   v29_12_out_ap_vld;
output  [63:0] grp_fu_5240_p_din0;
output  [63:0] grp_fu_5240_p_din1;
output  [0:0] grp_fu_5240_p_opcode;
input  [63:0] grp_fu_5240_p_dout0;
output   grp_fu_5240_p_ce;
output  [63:0] grp_fu_5258_p_din0;
output  [63:0] grp_fu_5258_p_din1;
input  [63:0] grp_fu_5258_p_dout0;
output   grp_fu_5258_p_ce;
reg ap_idle;
reg v29_12_out_ap_vld;
(* fsm_encoding = "none" *) reg   [63:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage63;
wire    ap_block_pp0_stage63_subdone;
reg   [0:0] icmp_ln68_reg_2941;
reg    ap_condition_exit_pp0_iter0_stage63;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_1016;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_11001;
reg   [63:0] reg_1021;
wire    ap_CS_fsm_pp0_stage39;
wire    ap_block_pp0_stage39_11001;
wire    ap_CS_fsm_pp0_stage47;
wire    ap_block_pp0_stage47_11001;
wire    ap_CS_fsm_pp0_stage55;
wire    ap_block_pp0_stage55_11001;
wire    ap_block_pp0_stage63_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v24_1_reg_2767;
wire   [11:0] add_ln70_fu_1043_p2;
reg   [11:0] add_ln70_reg_2774;
reg   [2:0] tmp_2_reg_2780;
reg   [1:0] tmp_3_reg_2785;
wire   [0:0] trunc_ln68_fu_1075_p1;
reg   [0:0] trunc_ln68_reg_2791;
reg   [0:0] tmp_reg_2796;
wire   [1:0] trunc_ln68_1_fu_1087_p1;
reg   [1:0] trunc_ln68_1_reg_2802;
reg   [0:0] tmp_44_reg_2807;
wire   [9:0] add_ln69_fu_1102_p2;
reg   [9:0] add_ln69_reg_2812;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [2:0] trunc_ln1_reg_2818;
reg   [1:0] trunc_ln_reg_2823;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [3:0] or_ln_fu_1151_p3;
reg   [3:0] or_ln_reg_2828;
wire   [11:0] add_ln70_1_fu_1162_p2;
reg   [11:0] add_ln70_1_reg_2833;
wire   [9:0] add_ln69_1_fu_1176_p2;
reg   [9:0] add_ln69_1_reg_2839;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [2:0] trunc_ln70_1_reg_2845;
reg   [1:0] trunc_ln69_1_reg_2850;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [3:0] or_ln68_1_fu_1225_p4;
reg   [3:0] or_ln68_1_reg_2855;
wire   [11:0] add_ln70_2_fu_1237_p2;
reg   [11:0] add_ln70_2_reg_2860;
wire   [9:0] add_ln69_2_fu_1251_p2;
reg   [9:0] add_ln69_2_reg_2866;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [2:0] trunc_ln70_2_reg_2872;
reg   [1:0] trunc_ln69_2_reg_2877;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [3:0] or_ln68_2_fu_1300_p3;
reg   [3:0] or_ln68_2_reg_2882;
wire   [11:0] add_ln70_3_fu_1311_p2;
reg   [11:0] add_ln70_3_reg_2887;
wire   [9:0] add_ln69_3_fu_1325_p2;
reg   [9:0] add_ln69_3_reg_2893;
reg   [2:0] trunc_ln70_3_reg_2899;
reg   [1:0] trunc_ln69_3_reg_2904;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [3:0] or_ln68_3_fu_1374_p4;
reg   [3:0] or_ln68_3_reg_2909;
wire   [11:0] add_ln70_4_fu_1386_p2;
reg   [11:0] add_ln70_4_reg_2914;
wire   [9:0] add_ln69_4_fu_1400_p2;
reg   [9:0] add_ln69_4_reg_2920;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [2:0] trunc_ln70_4_reg_2926;
reg   [1:0] trunc_ln69_4_reg_2931;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [3:0] or_ln68_4_fu_1449_p5;
reg   [3:0] or_ln68_4_reg_2936;
wire   [0:0] icmp_ln68_fu_1459_p2;
wire   [11:0] add_ln70_5_fu_1469_p2;
reg   [11:0] add_ln70_5_reg_2945;
wire   [9:0] add_ln69_5_fu_1512_p2;
reg   [9:0] add_ln69_5_reg_2951;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [2:0] trunc_ln70_5_reg_2957;
reg   [1:0] trunc_ln69_5_reg_2962;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [11:0] add_ln70_6_fu_1561_p2;
reg   [11:0] add_ln70_6_reg_2967;
wire   [9:0] add_ln69_6_fu_1572_p2;
reg   [9:0] add_ln69_6_reg_2973;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [2:0] trunc_ln70_6_reg_2979;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [1:0] trunc_ln69_6_reg_3004;
wire   [11:0] add_ln70_7_fu_1629_p2;
reg   [11:0] add_ln70_7_reg_3009;
wire   [63:0] v25_fu_1656_p11;
reg   [63:0] v25_reg_3015;
wire   [9:0] add_ln69_7_fu_1691_p2;
reg   [9:0] add_ln69_7_reg_3060;
reg   [2:0] trunc_ln70_7_reg_3066;
wire   [63:0] v26_fu_1753_p19;
reg   [63:0] v26_reg_3071;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [1:0] trunc_ln69_7_reg_3096;
wire   [63:0] v25_1_fu_1835_p11;
reg   [63:0] v25_1_reg_3101;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire   [63:0] v26_1_fu_1902_p19;
reg   [63:0] v26_1_reg_3146;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] v25_2_fu_1965_p11;
reg   [63:0] v25_2_reg_3171;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [63:0] v26_2_fu_2032_p19;
reg   [63:0] v26_2_reg_3216;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire   [63:0] v25_3_fu_2095_p11;
reg   [63:0] v25_3_reg_3241;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] v26_3_fu_2162_p19;
reg   [63:0] v26_3_reg_3286;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [63:0] v25_4_fu_2225_p11;
reg   [63:0] v25_4_reg_3311;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [63:0] v26_4_fu_2296_p19;
reg   [63:0] v26_4_reg_3361;
reg   [63:0] v27_1_reg_3386;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [63:0] v25_5_fu_2359_p11;
reg   [63:0] v25_5_reg_3391;
wire   [63:0] v26_5_fu_2426_p19;
reg   [63:0] v26_5_reg_3436;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_11001;
reg   [63:0] v27_2_reg_3461;
wire    ap_CS_fsm_pp0_stage27;
wire    ap_block_pp0_stage27_11001;
wire   [63:0] v25_6_fu_2489_p11;
reg   [63:0] v25_6_reg_3466;
wire   [63:0] v26_6_fu_2556_p19;
reg   [63:0] v26_6_reg_3511;
wire    ap_CS_fsm_pp0_stage28;
wire    ap_block_pp0_stage28_11001;
reg   [63:0] v27_3_reg_3536;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_11001;
wire   [63:0] v25_7_fu_2619_p11;
reg   [63:0] v25_7_reg_3541;
wire   [63:0] v26_7_fu_2686_p19;
reg   [63:0] v26_7_reg_3586;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_11001;
reg   [63:0] v27_5_reg_3591;
wire    ap_CS_fsm_pp0_stage33;
wire    ap_block_pp0_stage33_11001;
reg   [63:0] v27_6_reg_3596;
wire    ap_CS_fsm_pp0_stage35;
wire    ap_block_pp0_stage35_11001;
reg   [63:0] v27_7_reg_3601;
wire    ap_CS_fsm_pp0_stage37;
wire    ap_block_pp0_stage37_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage23_subdone;
wire   [63:0] zext_ln69_fu_1602_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln70_fu_1679_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln69_3_fu_1792_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln70_1_fu_1858_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln69_6_fu_1941_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln70_2_fu_1988_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln69_9_fu_2071_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln70_3_fu_2118_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln69_12_fu_2201_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln70_4_fu_2248_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln69_13_fu_2335_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] zext_ln70_5_fu_2382_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] zext_ln69_14_fu_2465_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] zext_ln70_6_fu_2512_p1;
wire    ap_block_pp0_stage27;
wire   [63:0] zext_ln69_15_fu_2595_p1;
wire    ap_block_pp0_stage28;
wire   [63:0] zext_ln70_7_fu_2642_p1;
wire    ap_block_pp0_stage29;
reg   [63:0] v28_fu_152;
wire    ap_loop_init;
reg   [3:0] v24_fu_156;
wire   [3:0] xor_ln_fu_1496_p3;
reg   [3:0] ap_sig_allocacmp_v24_1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage63_01001;
reg    v0_0_ce0_local;
reg   [7:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [7:0] v0_1_address0_local;
reg    v0_2_ce0_local;
reg   [7:0] v0_2_address0_local;
reg    v0_3_ce0_local;
reg   [7:0] v0_3_address0_local;
reg    v6_0_ce0_local;
reg   [8:0] v6_0_address0_local;
reg    v6_1_ce0_local;
reg   [8:0] v6_1_address0_local;
reg    v6_2_ce0_local;
reg   [8:0] v6_2_address0_local;
reg    v6_3_ce0_local;
reg   [8:0] v6_3_address0_local;
reg    v6_4_ce0_local;
reg   [8:0] v6_4_address0_local;
reg    v6_5_ce0_local;
reg   [8:0] v6_5_address0_local;
reg    v6_6_ce0_local;
reg   [8:0] v6_6_address0_local;
reg    v6_7_ce0_local;
reg   [8:0] v6_7_address0_local;
reg   [63:0] grp_fu_1007_p0;
reg   [63:0] grp_fu_1007_p1;
wire    ap_CS_fsm_pp0_stage32;
wire    ap_block_pp0_stage32;
wire    ap_CS_fsm_pp0_stage40;
wire    ap_block_pp0_stage40;
wire    ap_CS_fsm_pp0_stage48;
wire    ap_block_pp0_stage48;
wire    ap_CS_fsm_pp0_stage56;
wire    ap_block_pp0_stage56;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_1012_p0;
reg   [63:0] grp_fu_1012_p1;
wire    ap_block_pp0_stage31;
wire   [11:0] zext_ln68_fu_1039_p1;
wire   [11:0] grp_fu_1049_p0;
wire   [9:0] grp_fu_1049_p1;
wire    ap_block_pp0_stage1;
wire   [9:0] zext_ln68_1_fu_1099_p1;
wire   [9:0] grp_fu_1107_p0;
wire   [8:0] grp_fu_1107_p1;
wire   [11:0] mul_ln70_fu_1116_p0;
wire   [13:0] mul_ln70_fu_1116_p1;
wire   [24:0] mul_ln70_fu_1116_p2;
wire    ap_block_pp0_stage2;
wire   [9:0] mul_ln69_fu_1135_p0;
wire   [11:0] mul_ln69_fu_1135_p1;
wire   [20:0] mul_ln69_fu_1135_p2;
wire   [11:0] zext_ln69_1_fu_1158_p1;
wire   [11:0] grp_fu_1167_p0;
wire   [9:0] grp_fu_1167_p1;
wire    ap_block_pp0_stage3;
wire   [9:0] zext_ln69_2_fu_1173_p1;
wire   [9:0] grp_fu_1181_p0;
wire   [8:0] grp_fu_1181_p1;
wire   [11:0] mul_ln70_1_fu_1190_p0;
wire   [13:0] mul_ln70_1_fu_1190_p1;
wire   [24:0] mul_ln70_1_fu_1190_p2;
wire    ap_block_pp0_stage4;
wire   [9:0] mul_ln69_1_fu_1209_p0;
wire   [11:0] mul_ln69_1_fu_1209_p1;
wire   [20:0] mul_ln69_1_fu_1209_p2;
wire   [11:0] zext_ln69_4_fu_1233_p1;
wire   [11:0] grp_fu_1242_p0;
wire   [9:0] grp_fu_1242_p1;
wire    ap_block_pp0_stage5;
wire   [9:0] zext_ln69_5_fu_1248_p1;
wire   [9:0] grp_fu_1256_p0;
wire   [8:0] grp_fu_1256_p1;
wire   [11:0] mul_ln70_2_fu_1265_p0;
wire   [13:0] mul_ln70_2_fu_1265_p1;
wire   [24:0] mul_ln70_2_fu_1265_p2;
wire    ap_block_pp0_stage6;
wire   [9:0] mul_ln69_2_fu_1284_p0;
wire   [11:0] mul_ln69_2_fu_1284_p1;
wire   [20:0] mul_ln69_2_fu_1284_p2;
wire   [11:0] zext_ln69_7_fu_1307_p1;
wire   [11:0] grp_fu_1316_p0;
wire   [9:0] grp_fu_1316_p1;
wire    ap_block_pp0_stage7;
wire   [9:0] zext_ln69_8_fu_1322_p1;
wire   [9:0] grp_fu_1330_p0;
wire   [8:0] grp_fu_1330_p1;
wire   [11:0] mul_ln70_3_fu_1339_p0;
wire   [13:0] mul_ln70_3_fu_1339_p1;
wire   [24:0] mul_ln70_3_fu_1339_p2;
wire   [9:0] mul_ln69_3_fu_1358_p0;
wire   [11:0] mul_ln69_3_fu_1358_p1;
wire   [20:0] mul_ln69_3_fu_1358_p2;
wire   [11:0] zext_ln69_10_fu_1382_p1;
wire   [11:0] grp_fu_1391_p0;
wire   [9:0] grp_fu_1391_p1;
wire    ap_block_pp0_stage9;
wire   [9:0] zext_ln69_11_fu_1397_p1;
wire   [9:0] grp_fu_1405_p0;
wire   [8:0] grp_fu_1405_p1;
wire   [11:0] mul_ln70_4_fu_1414_p0;
wire   [13:0] mul_ln70_4_fu_1414_p1;
wire   [24:0] mul_ln70_4_fu_1414_p2;
wire    ap_block_pp0_stage10;
wire   [9:0] mul_ln69_4_fu_1433_p0;
wire   [11:0] mul_ln69_4_fu_1433_p1;
wire   [20:0] mul_ln69_4_fu_1433_p2;
wire   [11:0] zext_ln68_2_fu_1465_p1;
wire   [11:0] grp_fu_1474_p0;
wire   [9:0] grp_fu_1474_p1;
wire   [0:0] bit_sel1_fu_1480_p3;
wire   [0:0] xor_ln68_fu_1487_p2;
wire   [2:0] trunc_ln68_2_fu_1493_p1;
wire    ap_block_pp0_stage11;
wire   [9:0] zext_ln68_3_fu_1509_p1;
wire   [9:0] grp_fu_1517_p0;
wire   [8:0] grp_fu_1517_p1;
wire   [11:0] mul_ln70_5_fu_1526_p0;
wire   [13:0] mul_ln70_5_fu_1526_p1;
wire   [24:0] mul_ln70_5_fu_1526_p2;
wire    ap_block_pp0_stage12;
wire   [9:0] mul_ln69_5_fu_1545_p0;
wire   [11:0] mul_ln69_5_fu_1545_p1;
wire   [20:0] mul_ln69_5_fu_1545_p2;
wire   [11:0] grp_fu_1566_p0;
wire   [9:0] grp_fu_1566_p1;
wire    ap_block_pp0_stage13;
wire   [9:0] grp_fu_1577_p0;
wire   [8:0] grp_fu_1577_p1;
wire   [11:0] mul_ln70_6_fu_1586_p0;
wire   [13:0] mul_ln70_6_fu_1586_p1;
wire   [24:0] mul_ln70_6_fu_1586_p2;
wire   [9:0] grp_fu_1107_p2;
wire   [9:0] mul_ln69_6_fu_1613_p0;
wire   [11:0] mul_ln69_6_fu_1613_p1;
wire   [20:0] mul_ln69_6_fu_1613_p2;
wire   [11:0] grp_fu_1634_p0;
wire   [9:0] grp_fu_1634_p1;
wire   [63:0] v25_fu_1656_p2;
wire   [63:0] v25_fu_1656_p4;
wire   [63:0] v25_fu_1656_p6;
wire   [63:0] v25_fu_1656_p8;
wire   [63:0] v25_fu_1656_p9;
wire   [11:0] grp_fu_1049_p2;
wire   [9:0] grp_fu_1696_p0;
wire   [8:0] grp_fu_1696_p1;
wire   [11:0] mul_ln70_7_fu_1705_p0;
wire   [13:0] mul_ln70_7_fu_1705_p1;
wire   [24:0] mul_ln70_7_fu_1705_p2;
wire   [63:0] v26_fu_1753_p2;
wire   [63:0] v26_fu_1753_p4;
wire   [63:0] v26_fu_1753_p6;
wire   [63:0] v26_fu_1753_p8;
wire   [63:0] v26_fu_1753_p10;
wire   [63:0] v26_fu_1753_p12;
wire   [63:0] v26_fu_1753_p14;
wire   [63:0] v26_fu_1753_p16;
wire   [63:0] v26_fu_1753_p17;
wire   [9:0] grp_fu_1181_p2;
wire   [9:0] mul_ln69_7_fu_1803_p0;
wire   [11:0] mul_ln69_7_fu_1803_p1;
wire   [20:0] mul_ln69_7_fu_1803_p2;
wire   [63:0] v25_1_fu_1835_p2;
wire   [63:0] v25_1_fu_1835_p4;
wire   [63:0] v25_1_fu_1835_p6;
wire   [63:0] v25_1_fu_1835_p8;
wire   [63:0] v25_1_fu_1835_p9;
wire   [11:0] grp_fu_1167_p2;
wire   [63:0] v26_1_fu_1902_p2;
wire   [63:0] v26_1_fu_1902_p4;
wire   [63:0] v26_1_fu_1902_p6;
wire   [63:0] v26_1_fu_1902_p8;
wire   [63:0] v26_1_fu_1902_p10;
wire   [63:0] v26_1_fu_1902_p12;
wire   [63:0] v26_1_fu_1902_p14;
wire   [63:0] v26_1_fu_1902_p16;
wire   [63:0] v26_1_fu_1902_p17;
wire   [9:0] grp_fu_1256_p2;
wire   [63:0] v25_2_fu_1965_p2;
wire   [63:0] v25_2_fu_1965_p4;
wire   [63:0] v25_2_fu_1965_p6;
wire   [63:0] v25_2_fu_1965_p8;
wire   [63:0] v25_2_fu_1965_p9;
wire   [11:0] grp_fu_1242_p2;
wire   [63:0] v26_2_fu_2032_p2;
wire   [63:0] v26_2_fu_2032_p4;
wire   [63:0] v26_2_fu_2032_p6;
wire   [63:0] v26_2_fu_2032_p8;
wire   [63:0] v26_2_fu_2032_p10;
wire   [63:0] v26_2_fu_2032_p12;
wire   [63:0] v26_2_fu_2032_p14;
wire   [63:0] v26_2_fu_2032_p16;
wire   [63:0] v26_2_fu_2032_p17;
wire   [9:0] grp_fu_1330_p2;
wire   [63:0] v25_3_fu_2095_p2;
wire   [63:0] v25_3_fu_2095_p4;
wire   [63:0] v25_3_fu_2095_p6;
wire   [63:0] v25_3_fu_2095_p8;
wire   [63:0] v25_3_fu_2095_p9;
wire   [11:0] grp_fu_1316_p2;
wire   [63:0] v26_3_fu_2162_p2;
wire   [63:0] v26_3_fu_2162_p4;
wire   [63:0] v26_3_fu_2162_p6;
wire   [63:0] v26_3_fu_2162_p8;
wire   [63:0] v26_3_fu_2162_p10;
wire   [63:0] v26_3_fu_2162_p12;
wire   [63:0] v26_3_fu_2162_p14;
wire   [63:0] v26_3_fu_2162_p16;
wire   [63:0] v26_3_fu_2162_p17;
wire   [9:0] grp_fu_1405_p2;
wire   [63:0] v25_4_fu_2225_p2;
wire   [63:0] v25_4_fu_2225_p4;
wire   [63:0] v25_4_fu_2225_p6;
wire   [63:0] v25_4_fu_2225_p8;
wire   [63:0] v25_4_fu_2225_p9;
wire   [11:0] grp_fu_1391_p2;
wire   [63:0] v26_4_fu_2296_p2;
wire   [63:0] v26_4_fu_2296_p4;
wire   [63:0] v26_4_fu_2296_p6;
wire   [63:0] v26_4_fu_2296_p8;
wire   [63:0] v26_4_fu_2296_p10;
wire   [63:0] v26_4_fu_2296_p12;
wire   [63:0] v26_4_fu_2296_p14;
wire   [63:0] v26_4_fu_2296_p16;
wire   [63:0] v26_4_fu_2296_p17;
wire   [9:0] grp_fu_1517_p2;
wire   [63:0] v25_5_fu_2359_p2;
wire   [63:0] v25_5_fu_2359_p4;
wire   [63:0] v25_5_fu_2359_p6;
wire   [63:0] v25_5_fu_2359_p8;
wire   [63:0] v25_5_fu_2359_p9;
wire   [11:0] grp_fu_1474_p2;
wire   [63:0] v26_5_fu_2426_p2;
wire   [63:0] v26_5_fu_2426_p4;
wire   [63:0] v26_5_fu_2426_p6;
wire   [63:0] v26_5_fu_2426_p8;
wire   [63:0] v26_5_fu_2426_p10;
wire   [63:0] v26_5_fu_2426_p12;
wire   [63:0] v26_5_fu_2426_p14;
wire   [63:0] v26_5_fu_2426_p16;
wire   [63:0] v26_5_fu_2426_p17;
wire   [9:0] grp_fu_1577_p2;
wire   [63:0] v25_6_fu_2489_p2;
wire   [63:0] v25_6_fu_2489_p4;
wire   [63:0] v25_6_fu_2489_p6;
wire   [63:0] v25_6_fu_2489_p8;
wire   [63:0] v25_6_fu_2489_p9;
wire   [11:0] grp_fu_1566_p2;
wire   [63:0] v26_6_fu_2556_p2;
wire   [63:0] v26_6_fu_2556_p4;
wire   [63:0] v26_6_fu_2556_p6;
wire   [63:0] v26_6_fu_2556_p8;
wire   [63:0] v26_6_fu_2556_p10;
wire   [63:0] v26_6_fu_2556_p12;
wire   [63:0] v26_6_fu_2556_p14;
wire   [63:0] v26_6_fu_2556_p16;
wire   [63:0] v26_6_fu_2556_p17;
wire   [9:0] grp_fu_1696_p2;
wire   [63:0] v25_7_fu_2619_p2;
wire   [63:0] v25_7_fu_2619_p4;
wire   [63:0] v25_7_fu_2619_p6;
wire   [63:0] v25_7_fu_2619_p8;
wire   [63:0] v25_7_fu_2619_p9;
wire   [11:0] grp_fu_1634_p2;
wire    ap_block_pp0_stage30;
wire   [63:0] v26_7_fu_2686_p2;
wire   [63:0] v26_7_fu_2686_p4;
wire   [63:0] v26_7_fu_2686_p6;
wire   [63:0] v26_7_fu_2686_p8;
wire   [63:0] v26_7_fu_2686_p10;
wire   [63:0] v26_7_fu_2686_p12;
wire   [63:0] v26_7_fu_2686_p14;
wire   [63:0] v26_7_fu_2686_p16;
wire   [63:0] v26_7_fu_2686_p17;
wire    ap_block_pp0_stage24_00001;
wire    ap_block_pp0_stage32_00001;
wire    ap_block_pp0_stage40_00001;
wire    ap_block_pp0_stage48_00001;
wire    ap_block_pp0_stage56_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage16_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [63:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage31_subdone;
wire    ap_block_pp0_stage32_subdone;
wire    ap_block_pp0_stage33_subdone;
wire    ap_block_pp0_stage34_subdone;
wire    ap_block_pp0_stage35_subdone;
wire    ap_block_pp0_stage36_subdone;
wire    ap_block_pp0_stage37_subdone;
wire    ap_block_pp0_stage38_subdone;
wire    ap_block_pp0_stage39_subdone;
wire    ap_block_pp0_stage40_subdone;
wire    ap_block_pp0_stage41_subdone;
wire    ap_block_pp0_stage42_subdone;
wire    ap_block_pp0_stage43_subdone;
wire    ap_block_pp0_stage44_subdone;
wire    ap_block_pp0_stage45_subdone;
wire    ap_block_pp0_stage46_subdone;
wire    ap_block_pp0_stage47_subdone;
wire    ap_block_pp0_stage48_subdone;
wire    ap_block_pp0_stage49_subdone;
wire    ap_block_pp0_stage50_subdone;
wire    ap_block_pp0_stage51_subdone;
wire    ap_block_pp0_stage52_subdone;
wire    ap_block_pp0_stage53_subdone;
wire    ap_block_pp0_stage54_subdone;
wire    ap_block_pp0_stage55_subdone;
wire    ap_block_pp0_stage56_subdone;
wire    ap_block_pp0_stage57_subdone;
wire    ap_block_pp0_stage58_subdone;
wire    ap_block_pp0_stage59_subdone;
wire    ap_block_pp0_stage60_subdone;
wire    ap_block_pp0_stage61_subdone;
wire    ap_block_pp0_stage62_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [20:0] mul_ln69_1_fu_1209_p00;
wire   [20:0] mul_ln69_2_fu_1284_p00;
wire   [20:0] mul_ln69_3_fu_1358_p00;
wire   [20:0] mul_ln69_4_fu_1433_p00;
wire   [20:0] mul_ln69_5_fu_1545_p00;
wire   [20:0] mul_ln69_6_fu_1613_p00;
wire   [20:0] mul_ln69_7_fu_1803_p00;
wire   [20:0] mul_ln69_fu_1135_p00;
wire   [24:0] mul_ln70_1_fu_1190_p00;
wire   [24:0] mul_ln70_2_fu_1265_p00;
wire   [24:0] mul_ln70_3_fu_1339_p00;
wire   [24:0] mul_ln70_4_fu_1414_p00;
wire   [24:0] mul_ln70_5_fu_1526_p00;
wire   [24:0] mul_ln70_6_fu_1586_p00;
wire   [24:0] mul_ln70_7_fu_1705_p00;
wire   [24:0] mul_ln70_fu_1116_p00;
wire   [1:0] v25_fu_1656_p1;
wire   [1:0] v25_fu_1656_p3;
wire  signed [1:0] v25_fu_1656_p5;
wire  signed [1:0] v25_fu_1656_p7;
wire   [2:0] v26_fu_1753_p1;
wire   [2:0] v26_fu_1753_p3;
wire   [2:0] v26_fu_1753_p5;
wire   [2:0] v26_fu_1753_p7;
wire  signed [2:0] v26_fu_1753_p9;
wire  signed [2:0] v26_fu_1753_p11;
wire  signed [2:0] v26_fu_1753_p13;
wire  signed [2:0] v26_fu_1753_p15;
wire   [1:0] v25_1_fu_1835_p1;
wire   [1:0] v25_1_fu_1835_p3;
wire  signed [1:0] v25_1_fu_1835_p5;
wire  signed [1:0] v25_1_fu_1835_p7;
wire   [2:0] v26_1_fu_1902_p1;
wire   [2:0] v26_1_fu_1902_p3;
wire   [2:0] v26_1_fu_1902_p5;
wire   [2:0] v26_1_fu_1902_p7;
wire  signed [2:0] v26_1_fu_1902_p9;
wire  signed [2:0] v26_1_fu_1902_p11;
wire  signed [2:0] v26_1_fu_1902_p13;
wire  signed [2:0] v26_1_fu_1902_p15;
wire   [1:0] v25_2_fu_1965_p1;
wire   [1:0] v25_2_fu_1965_p3;
wire  signed [1:0] v25_2_fu_1965_p5;
wire  signed [1:0] v25_2_fu_1965_p7;
wire   [2:0] v26_2_fu_2032_p1;
wire   [2:0] v26_2_fu_2032_p3;
wire   [2:0] v26_2_fu_2032_p5;
wire   [2:0] v26_2_fu_2032_p7;
wire  signed [2:0] v26_2_fu_2032_p9;
wire  signed [2:0] v26_2_fu_2032_p11;
wire  signed [2:0] v26_2_fu_2032_p13;
wire  signed [2:0] v26_2_fu_2032_p15;
wire   [1:0] v25_3_fu_2095_p1;
wire   [1:0] v25_3_fu_2095_p3;
wire  signed [1:0] v25_3_fu_2095_p5;
wire  signed [1:0] v25_3_fu_2095_p7;
wire   [2:0] v26_3_fu_2162_p1;
wire   [2:0] v26_3_fu_2162_p3;
wire   [2:0] v26_3_fu_2162_p5;
wire   [2:0] v26_3_fu_2162_p7;
wire  signed [2:0] v26_3_fu_2162_p9;
wire  signed [2:0] v26_3_fu_2162_p11;
wire  signed [2:0] v26_3_fu_2162_p13;
wire  signed [2:0] v26_3_fu_2162_p15;
wire   [1:0] v25_4_fu_2225_p1;
wire   [1:0] v25_4_fu_2225_p3;
wire  signed [1:0] v25_4_fu_2225_p5;
wire  signed [1:0] v25_4_fu_2225_p7;
wire   [2:0] v26_4_fu_2296_p1;
wire   [2:0] v26_4_fu_2296_p3;
wire   [2:0] v26_4_fu_2296_p5;
wire   [2:0] v26_4_fu_2296_p7;
wire  signed [2:0] v26_4_fu_2296_p9;
wire  signed [2:0] v26_4_fu_2296_p11;
wire  signed [2:0] v26_4_fu_2296_p13;
wire  signed [2:0] v26_4_fu_2296_p15;
wire   [1:0] v25_5_fu_2359_p1;
wire   [1:0] v25_5_fu_2359_p3;
wire  signed [1:0] v25_5_fu_2359_p5;
wire  signed [1:0] v25_5_fu_2359_p7;
wire   [2:0] v26_5_fu_2426_p1;
wire   [2:0] v26_5_fu_2426_p3;
wire   [2:0] v26_5_fu_2426_p5;
wire   [2:0] v26_5_fu_2426_p7;
wire  signed [2:0] v26_5_fu_2426_p9;
wire  signed [2:0] v26_5_fu_2426_p11;
wire  signed [2:0] v26_5_fu_2426_p13;
wire  signed [2:0] v26_5_fu_2426_p15;
wire   [1:0] v25_6_fu_2489_p1;
wire   [1:0] v25_6_fu_2489_p3;
wire  signed [1:0] v25_6_fu_2489_p5;
wire  signed [1:0] v25_6_fu_2489_p7;
wire   [2:0] v26_6_fu_2556_p1;
wire   [2:0] v26_6_fu_2556_p3;
wire   [2:0] v26_6_fu_2556_p5;
wire   [2:0] v26_6_fu_2556_p7;
wire  signed [2:0] v26_6_fu_2556_p9;
wire  signed [2:0] v26_6_fu_2556_p11;
wire  signed [2:0] v26_6_fu_2556_p13;
wire  signed [2:0] v26_6_fu_2556_p15;
wire   [1:0] v25_7_fu_2619_p1;
wire   [1:0] v25_7_fu_2619_p3;
wire  signed [1:0] v25_7_fu_2619_p5;
wire  signed [1:0] v25_7_fu_2619_p7;
wire   [2:0] v26_7_fu_2686_p1;
wire   [2:0] v26_7_fu_2686_p3;
wire   [2:0] v26_7_fu_2686_p5;
wire   [2:0] v26_7_fu_2686_p7;
wire  signed [2:0] v26_7_fu_2686_p9;
wire  signed [2:0] v26_7_fu_2686_p11;
wire  signed [2:0] v26_7_fu_2686_p13;
wire  signed [2:0] v26_7_fu_2686_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 64'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v28_fu_152 = 64'd0;
#0 v24_fu_156 = 4'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U8(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1049_p0),.din1(grp_fu_1049_p1),.ce(1'b1),.dout(grp_fu_1049_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1107_p0),.din1(grp_fu_1107_p1),.ce(1'b1),.dout(grp_fu_1107_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U10(.din0(mul_ln70_fu_1116_p0),.din1(mul_ln70_fu_1116_p1),.dout(mul_ln70_fu_1116_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U11(.din0(mul_ln69_fu_1135_p0),.din1(mul_ln69_fu_1135_p1),.dout(mul_ln69_fu_1135_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1167_p0),.din1(grp_fu_1167_p1),.ce(1'b1),.dout(grp_fu_1167_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1181_p0),.din1(grp_fu_1181_p1),.ce(1'b1),.dout(grp_fu_1181_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U14(.din0(mul_ln70_1_fu_1190_p0),.din1(mul_ln70_1_fu_1190_p1),.dout(mul_ln70_1_fu_1190_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U15(.din0(mul_ln69_1_fu_1209_p0),.din1(mul_ln69_1_fu_1209_p1),.dout(mul_ln69_1_fu_1209_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1242_p0),.din1(grp_fu_1242_p1),.ce(1'b1),.dout(grp_fu_1242_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1256_p0),.din1(grp_fu_1256_p1),.ce(1'b1),.dout(grp_fu_1256_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U18(.din0(mul_ln70_2_fu_1265_p0),.din1(mul_ln70_2_fu_1265_p1),.dout(mul_ln70_2_fu_1265_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U19(.din0(mul_ln69_2_fu_1284_p0),.din1(mul_ln69_2_fu_1284_p1),.dout(mul_ln69_2_fu_1284_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1316_p0),.din1(grp_fu_1316_p1),.ce(1'b1),.dout(grp_fu_1316_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1330_p0),.din1(grp_fu_1330_p1),.ce(1'b1),.dout(grp_fu_1330_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U22(.din0(mul_ln70_3_fu_1339_p0),.din1(mul_ln70_3_fu_1339_p1),.dout(mul_ln70_3_fu_1339_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U23(.din0(mul_ln69_3_fu_1358_p0),.din1(mul_ln69_3_fu_1358_p1),.dout(mul_ln69_3_fu_1358_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1391_p0),.din1(grp_fu_1391_p1),.ce(1'b1),.dout(grp_fu_1391_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1405_p0),.din1(grp_fu_1405_p1),.ce(1'b1),.dout(grp_fu_1405_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U26(.din0(mul_ln70_4_fu_1414_p0),.din1(mul_ln70_4_fu_1414_p1),.dout(mul_ln70_4_fu_1414_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U27(.din0(mul_ln69_4_fu_1433_p0),.din1(mul_ln69_4_fu_1433_p1),.dout(mul_ln69_4_fu_1433_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1474_p0),.din1(grp_fu_1474_p1),.ce(1'b1),.dout(grp_fu_1474_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1517_p0),.din1(grp_fu_1517_p1),.ce(1'b1),.dout(grp_fu_1517_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U30(.din0(mul_ln70_5_fu_1526_p0),.din1(mul_ln70_5_fu_1526_p1),.dout(mul_ln70_5_fu_1526_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U31(.din0(mul_ln69_5_fu_1545_p0),.din1(mul_ln69_5_fu_1545_p1),.dout(mul_ln69_5_fu_1545_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U32(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1566_p0),.din1(grp_fu_1566_p1),.ce(1'b1),.dout(grp_fu_1566_p2));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U33(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1577_p0),.din1(grp_fu_1577_p1),.ce(1'b1),.dout(grp_fu_1577_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U34(.din0(mul_ln70_6_fu_1586_p0),.din1(mul_ln70_6_fu_1586_p1),.dout(mul_ln70_6_fu_1586_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U35(.din0(mul_ln69_6_fu_1613_p0),.din1(mul_ln69_6_fu_1613_p1),.dout(mul_ln69_6_fu_1613_p2));
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U36(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1634_p0),.din1(grp_fu_1634_p1),.ce(1'b1),.dout(grp_fu_1634_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U37(.din0(v25_fu_1656_p2),.din1(v25_fu_1656_p4),.din2(v25_fu_1656_p6),.din3(v25_fu_1656_p8),.def(v25_fu_1656_p9),.sel(trunc_ln_reg_2823),.dout(v25_fu_1656_p11));
backprop_urem_10ns_9ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.dout_WIDTH( 10 ))
urem_10ns_9ns_10_14_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1696_p0),.din1(grp_fu_1696_p1),.ce(1'b1),.dout(grp_fu_1696_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U39(.din0(mul_ln70_7_fu_1705_p0),.din1(mul_ln70_7_fu_1705_p1),.dout(mul_ln70_7_fu_1705_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U40(.din0(v26_fu_1753_p2),.din1(v26_fu_1753_p4),.din2(v26_fu_1753_p6),.din3(v26_fu_1753_p8),.din4(v26_fu_1753_p10),.din5(v26_fu_1753_p12),.din6(v26_fu_1753_p14),.din7(v26_fu_1753_p16),.def(v26_fu_1753_p17),.sel(trunc_ln1_reg_2818),.dout(v26_fu_1753_p19));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U41(.din0(mul_ln69_7_fu_1803_p0),.din1(mul_ln69_7_fu_1803_p1),.dout(mul_ln69_7_fu_1803_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U42(.din0(v25_1_fu_1835_p2),.din1(v25_1_fu_1835_p4),.din2(v25_1_fu_1835_p6),.din3(v25_1_fu_1835_p8),.def(v25_1_fu_1835_p9),.sel(trunc_ln69_1_reg_2850),.dout(v25_1_fu_1835_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U43(.din0(v26_1_fu_1902_p2),.din1(v26_1_fu_1902_p4),.din2(v26_1_fu_1902_p6),.din3(v26_1_fu_1902_p8),.din4(v26_1_fu_1902_p10),.din5(v26_1_fu_1902_p12),.din6(v26_1_fu_1902_p14),.din7(v26_1_fu_1902_p16),.def(v26_1_fu_1902_p17),.sel(trunc_ln70_1_reg_2845),.dout(v26_1_fu_1902_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U44(.din0(v25_2_fu_1965_p2),.din1(v25_2_fu_1965_p4),.din2(v25_2_fu_1965_p6),.din3(v25_2_fu_1965_p8),.def(v25_2_fu_1965_p9),.sel(trunc_ln69_2_reg_2877),.dout(v25_2_fu_1965_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U45(.din0(v26_2_fu_2032_p2),.din1(v26_2_fu_2032_p4),.din2(v26_2_fu_2032_p6),.din3(v26_2_fu_2032_p8),.din4(v26_2_fu_2032_p10),.din5(v26_2_fu_2032_p12),.din6(v26_2_fu_2032_p14),.din7(v26_2_fu_2032_p16),.def(v26_2_fu_2032_p17),.sel(trunc_ln70_2_reg_2872),.dout(v26_2_fu_2032_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U46(.din0(v25_3_fu_2095_p2),.din1(v25_3_fu_2095_p4),.din2(v25_3_fu_2095_p6),.din3(v25_3_fu_2095_p8),.def(v25_3_fu_2095_p9),.sel(trunc_ln69_3_reg_2904),.dout(v25_3_fu_2095_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U47(.din0(v26_3_fu_2162_p2),.din1(v26_3_fu_2162_p4),.din2(v26_3_fu_2162_p6),.din3(v26_3_fu_2162_p8),.din4(v26_3_fu_2162_p10),.din5(v26_3_fu_2162_p12),.din6(v26_3_fu_2162_p14),.din7(v26_3_fu_2162_p16),.def(v26_3_fu_2162_p17),.sel(trunc_ln70_3_reg_2899),.dout(v26_3_fu_2162_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U48(.din0(v25_4_fu_2225_p2),.din1(v25_4_fu_2225_p4),.din2(v25_4_fu_2225_p6),.din3(v25_4_fu_2225_p8),.def(v25_4_fu_2225_p9),.sel(trunc_ln69_4_reg_2931),.dout(v25_4_fu_2225_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U49(.din0(v26_4_fu_2296_p2),.din1(v26_4_fu_2296_p4),.din2(v26_4_fu_2296_p6),.din3(v26_4_fu_2296_p8),.din4(v26_4_fu_2296_p10),.din5(v26_4_fu_2296_p12),.din6(v26_4_fu_2296_p14),.din7(v26_4_fu_2296_p16),.def(v26_4_fu_2296_p17),.sel(trunc_ln70_4_reg_2926),.dout(v26_4_fu_2296_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U50(.din0(v25_5_fu_2359_p2),.din1(v25_5_fu_2359_p4),.din2(v25_5_fu_2359_p6),.din3(v25_5_fu_2359_p8),.def(v25_5_fu_2359_p9),.sel(trunc_ln69_5_reg_2962),.dout(v25_5_fu_2359_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U51(.din0(v26_5_fu_2426_p2),.din1(v26_5_fu_2426_p4),.din2(v26_5_fu_2426_p6),.din3(v26_5_fu_2426_p8),.din4(v26_5_fu_2426_p10),.din5(v26_5_fu_2426_p12),.din6(v26_5_fu_2426_p14),.din7(v26_5_fu_2426_p16),.def(v26_5_fu_2426_p17),.sel(trunc_ln70_5_reg_2957),.dout(v26_5_fu_2426_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U52(.din0(v25_6_fu_2489_p2),.din1(v25_6_fu_2489_p4),.din2(v25_6_fu_2489_p6),.din3(v25_6_fu_2489_p8),.def(v25_6_fu_2489_p9),.sel(trunc_ln69_6_reg_3004),.dout(v25_6_fu_2489_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U53(.din0(v26_6_fu_2556_p2),.din1(v26_6_fu_2556_p4),.din2(v26_6_fu_2556_p6),.din3(v26_6_fu_2556_p8),.din4(v26_6_fu_2556_p10),.din5(v26_6_fu_2556_p12),.din6(v26_6_fu_2556_p14),.din7(v26_6_fu_2556_p16),.def(v26_6_fu_2556_p17),.sel(trunc_ln70_6_reg_2979),.dout(v26_6_fu_2556_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U54(.din0(v25_7_fu_2619_p2),.din1(v25_7_fu_2619_p4),.din2(v25_7_fu_2619_p6),.din3(v25_7_fu_2619_p8),.def(v25_7_fu_2619_p9),.sel(trunc_ln69_7_reg_3096),.dout(v25_7_fu_2619_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U55(.din0(v26_7_fu_2686_p2),.din1(v26_7_fu_2686_p4),.din2(v26_7_fu_2686_p6),.din3(v26_7_fu_2686_p8),.din4(v26_7_fu_2686_p10),.din5(v26_7_fu_2686_p12),.din6(v26_7_fu_2686_p14),.din7(v26_7_fu_2686_p16),.def(v26_7_fu_2686_p17),.sel(trunc_ln70_7_reg_3066),.dout(v26_7_fu_2686_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage63),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63) & (ap_loop_exit_ready == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage63) | ((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        v24_fu_156 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln68_fu_1459_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v24_fu_156 <= xor_ln_fu_1496_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        v28_fu_152 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v28_fu_152 <= grp_fu_5240_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_1_reg_2839 <= add_ln69_1_fu_1176_p2;
        trunc_ln70_1_reg_2845 <= {{mul_ln70_1_fu_1190_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln69_2_reg_2866 <= add_ln69_2_fu_1251_p2;
        trunc_ln70_2_reg_2872 <= {{mul_ln70_2_fu_1265_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln69_3_reg_2893 <= add_ln69_3_fu_1325_p2;
        trunc_ln70_3_reg_2899 <= {{mul_ln70_3_fu_1339_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln69_4_reg_2920 <= add_ln69_4_fu_1400_p2;
        trunc_ln70_4_reg_2926 <= {{mul_ln70_4_fu_1414_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln69_5_reg_2951 <= add_ln69_5_fu_1512_p2;
        trunc_ln70_5_reg_2957 <= {{mul_ln70_5_fu_1526_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln69_6_reg_2973 <= add_ln69_6_fu_1572_p2;
        trunc_ln70_6_reg_2979 <= {{mul_ln70_6_fu_1586_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        add_ln69_7_reg_3060 <= add_ln69_7_fu_1691_p2;
        trunc_ln70_7_reg_3066 <= {{mul_ln70_7_fu_1705_p2[23:21]}};
        v25_reg_3015 <= v25_fu_1656_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_reg_2812 <= add_ln69_fu_1102_p2;
        trunc_ln1_reg_2818 <= {{mul_ln70_fu_1116_p2[23:21]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln70_1_reg_2833 <= add_ln70_1_fu_1162_p2;
        or_ln_reg_2828[3 : 1] <= or_ln_fu_1151_p3[3 : 1];
        trunc_ln_reg_2823 <= {{mul_ln69_fu_1135_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln70_2_reg_2860 <= add_ln70_2_fu_1237_p2;
        or_ln68_1_reg_2855[0] <= or_ln68_1_fu_1225_p4[0];
or_ln68_1_reg_2855[3 : 2] <= or_ln68_1_fu_1225_p4[3 : 2];
        trunc_ln69_1_reg_2850 <= {{mul_ln69_1_fu_1209_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln70_3_reg_2887 <= add_ln70_3_fu_1311_p2;
        or_ln68_2_reg_2882[3 : 2] <= or_ln68_2_fu_1300_p3[3 : 2];
        trunc_ln69_2_reg_2877 <= {{mul_ln69_2_fu_1284_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        add_ln70_4_reg_2914 <= add_ln70_4_fu_1386_p2;
        or_ln68_3_reg_2909[1 : 0] <= or_ln68_3_fu_1374_p4[1 : 0];
or_ln68_3_reg_2909[3] <= or_ln68_3_fu_1374_p4[3];
        trunc_ln69_3_reg_2904 <= {{mul_ln69_3_fu_1358_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln70_5_reg_2945 <= add_ln70_5_fu_1469_p2;
        icmp_ln68_reg_2941 <= icmp_ln68_fu_1459_p2;
        or_ln68_4_reg_2936[1] <= or_ln68_4_fu_1449_p5[1];
or_ln68_4_reg_2936[3] <= or_ln68_4_fu_1449_p5[3];
        trunc_ln69_4_reg_2931 <= {{mul_ln69_4_fu_1433_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln70_6_reg_2967 <= add_ln70_6_fu_1561_p2;
        trunc_ln69_5_reg_2962 <= {{mul_ln69_5_fu_1545_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln70_7_reg_3009 <= add_ln70_7_fu_1629_p2;
        trunc_ln69_6_reg_3004 <= {{mul_ln69_6_fu_1613_p2[19:18]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln70_reg_2774 <= add_ln70_fu_1043_p2;
        tmp_2_reg_2780 <= {{ap_sig_allocacmp_v24_1[3:1]}};
        tmp_3_reg_2785 <= {{ap_sig_allocacmp_v24_1[3:2]}};
        tmp_44_reg_2807 <= ap_sig_allocacmp_v24_1[32'd1];
        tmp_reg_2796 <= ap_sig_allocacmp_v24_1[32'd3];
        trunc_ln68_1_reg_2802 <= trunc_ln68_1_fu_1087_p1;
        trunc_ln68_reg_2791 <= trunc_ln68_fu_1075_p1;
        v24_1_reg_2767 <= ap_sig_allocacmp_v24_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        reg_1016 <= grp_fu_5258_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage63_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63)) | ((1'b0 == ap_block_pp0_stage55_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage55)) | ((1'b0 == ap_block_pp0_stage47_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage47)) | ((1'b0 == ap_block_pp0_stage39_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage39)) | ((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)))) begin
        reg_1021 <= grp_fu_5240_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        trunc_ln69_7_reg_3096 <= {{mul_ln69_7_fu_1803_p2[19:18]}};
        v26_reg_3071 <= v26_fu_1753_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        v25_1_reg_3101 <= v25_1_fu_1835_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        v25_2_reg_3171 <= v25_2_fu_1965_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        v25_3_reg_3241 <= v25_3_fu_2095_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        v25_4_reg_3311 <= v25_4_fu_2225_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        v25_5_reg_3391 <= v25_5_fu_2359_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        v25_6_reg_3466 <= v25_6_fu_2489_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        v25_7_reg_3541 <= v25_7_fu_2619_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        v26_1_reg_3146 <= v26_1_fu_1902_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        v26_2_reg_3216 <= v26_2_fu_2032_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        v26_3_reg_3286 <= v26_3_fu_2162_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        v26_4_reg_3361 <= v26_4_fu_2296_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        v26_5_reg_3436 <= v26_5_fu_2426_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage28_11001) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
        v26_6_reg_3511 <= v26_6_fu_2556_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage30_11001) & (1'b1 == ap_CS_fsm_pp0_stage30))) begin
        v26_7_reg_3586 <= v26_7_fu_2686_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        v27_1_reg_3386 <= grp_fu_5258_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
        v27_2_reg_3461 <= grp_fu_5258_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        v27_3_reg_3536 <= grp_fu_5258_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage33_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage33))) begin
        v27_5_reg_3591 <= grp_fu_5258_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage35_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage35))) begin
        v27_6_reg_3596 <= grp_fu_5258_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage37_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage37))) begin
        v27_7_reg_3601 <= grp_fu_5258_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63) & (icmp_ln68_reg_2941 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage63 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage63 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (1'b1 == ap_CS_fsm_pp0_stage63) & (ap_loop_exit_ready == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage63))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v24_1 = 4'd0;
    end else begin
        ap_sig_allocacmp_v24_1 = v24_fu_156;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48)) | ((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40)) | ((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_1007_p0 = reg_1021;
    end else if (((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        grp_fu_1007_p0 = v28_fu_152;
    end else begin
        grp_fu_1007_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_1007_p1 = v27_7_reg_3601;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_1007_p1 = v27_6_reg_3596;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1007_p1 = v27_5_reg_3591;
    end else if (((1'b0 == ap_block_pp0_stage48) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage48))) begin
        grp_fu_1007_p1 = v27_3_reg_3536;
    end else if (((1'b0 == ap_block_pp0_stage40) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage40))) begin
        grp_fu_1007_p1 = v27_2_reg_3461;
    end else if (((1'b0 == ap_block_pp0_stage32) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage32))) begin
        grp_fu_1007_p1 = v27_1_reg_3386;
    end else if ((((1'b0 == ap_block_pp0_stage56) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage56)) | ((1'b0 == ap_block_pp0_stage24) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)))) begin
        grp_fu_1007_p1 = reg_1016;
    end else begin
        grp_fu_1007_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            grp_fu_1012_p0 = v25_7_reg_3541;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            grp_fu_1012_p0 = v25_6_reg_3466;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            grp_fu_1012_p0 = v25_5_reg_3391;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            grp_fu_1012_p0 = v25_4_reg_3311;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            grp_fu_1012_p0 = v25_3_reg_3241;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_1012_p0 = v25_2_reg_3171;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_1012_p0 = v25_1_reg_3101;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_1012_p0 = v25_reg_3015;
        end else begin
            grp_fu_1012_p0 = 'bx;
        end
    end else begin
        grp_fu_1012_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage31) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            grp_fu_1012_p1 = v26_7_reg_3586;
        end else if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            grp_fu_1012_p1 = v26_6_reg_3511;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            grp_fu_1012_p1 = v26_5_reg_3436;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            grp_fu_1012_p1 = v26_4_reg_3361;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            grp_fu_1012_p1 = v26_3_reg_3286;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_1012_p1 = v26_2_reg_3216;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            grp_fu_1012_p1 = v26_1_reg_3146;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_fu_1012_p1 = v26_reg_3071;
        end else begin
            grp_fu_1012_p1 = 'bx;
        end
    end else begin
        grp_fu_1012_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            v0_0_address0_local = zext_ln69_15_fu_2595_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v0_0_address0_local = zext_ln69_14_fu_2465_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v0_0_address0_local = zext_ln69_13_fu_2335_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v0_0_address0_local = zext_ln69_12_fu_2201_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_0_address0_local = zext_ln69_9_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_0_address0_local = zext_ln69_6_fu_1941_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_0_address0_local = zext_ln69_3_fu_1792_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_0_address0_local = zext_ln69_fu_1602_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            v0_1_address0_local = zext_ln69_15_fu_2595_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v0_1_address0_local = zext_ln69_14_fu_2465_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v0_1_address0_local = zext_ln69_13_fu_2335_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v0_1_address0_local = zext_ln69_12_fu_2201_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_1_address0_local = zext_ln69_9_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_1_address0_local = zext_ln69_6_fu_1941_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_1_address0_local = zext_ln69_3_fu_1792_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_1_address0_local = zext_ln69_fu_1602_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            v0_2_address0_local = zext_ln69_15_fu_2595_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v0_2_address0_local = zext_ln69_14_fu_2465_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v0_2_address0_local = zext_ln69_13_fu_2335_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v0_2_address0_local = zext_ln69_12_fu_2201_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_2_address0_local = zext_ln69_9_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_2_address0_local = zext_ln69_6_fu_1941_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_2_address0_local = zext_ln69_3_fu_1792_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_2_address0_local = zext_ln69_fu_1602_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage28) & (1'b1 == ap_CS_fsm_pp0_stage28))) begin
            v0_3_address0_local = zext_ln69_15_fu_2595_p1;
        end else if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v0_3_address0_local = zext_ln69_14_fu_2465_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v0_3_address0_local = zext_ln69_13_fu_2335_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v0_3_address0_local = zext_ln69_12_fu_2201_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v0_3_address0_local = zext_ln69_9_fu_2071_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v0_3_address0_local = zext_ln69_6_fu_1941_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v0_3_address0_local = zext_ln69_3_fu_1792_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v0_3_address0_local = zext_ln69_fu_1602_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage28_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage28)) | ((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage63_11001) & (1'b1 == ap_CS_fsm_pp0_stage63) & (ap_loop_exit_ready == 1'b1) & (icmp_ln68_reg_2941 == 1'd1))) begin
        v29_12_out_ap_vld = 1'b1;
    end else begin
        v29_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_0_address0_local = zext_ln70_7_fu_2642_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_0_address0_local = zext_ln70_6_fu_2512_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_0_address0_local = zext_ln70_5_fu_2382_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_0_address0_local = zext_ln70_4_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_0_address0_local = zext_ln70_3_fu_2118_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_0_address0_local = zext_ln70_2_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_0_address0_local = zext_ln70_1_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_0_address0_local = zext_ln70_fu_1679_p1;
        end else begin
            v6_0_address0_local = 'bx;
        end
    end else begin
        v6_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_1_address0_local = zext_ln70_7_fu_2642_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_1_address0_local = zext_ln70_6_fu_2512_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_1_address0_local = zext_ln70_5_fu_2382_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_1_address0_local = zext_ln70_4_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_1_address0_local = zext_ln70_3_fu_2118_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_1_address0_local = zext_ln70_2_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_1_address0_local = zext_ln70_1_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_1_address0_local = zext_ln70_fu_1679_p1;
        end else begin
            v6_1_address0_local = 'bx;
        end
    end else begin
        v6_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_2_address0_local = zext_ln70_7_fu_2642_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_2_address0_local = zext_ln70_6_fu_2512_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_2_address0_local = zext_ln70_5_fu_2382_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_2_address0_local = zext_ln70_4_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_2_address0_local = zext_ln70_3_fu_2118_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_2_address0_local = zext_ln70_2_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_2_address0_local = zext_ln70_1_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_2_address0_local = zext_ln70_fu_1679_p1;
        end else begin
            v6_2_address0_local = 'bx;
        end
    end else begin
        v6_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_3_address0_local = zext_ln70_7_fu_2642_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_3_address0_local = zext_ln70_6_fu_2512_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_3_address0_local = zext_ln70_5_fu_2382_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_3_address0_local = zext_ln70_4_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_3_address0_local = zext_ln70_3_fu_2118_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_3_address0_local = zext_ln70_2_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_3_address0_local = zext_ln70_1_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_3_address0_local = zext_ln70_fu_1679_p1;
        end else begin
            v6_3_address0_local = 'bx;
        end
    end else begin
        v6_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_4_address0_local = zext_ln70_7_fu_2642_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_4_address0_local = zext_ln70_6_fu_2512_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_4_address0_local = zext_ln70_5_fu_2382_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_4_address0_local = zext_ln70_4_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_4_address0_local = zext_ln70_3_fu_2118_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_4_address0_local = zext_ln70_2_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_4_address0_local = zext_ln70_1_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_4_address0_local = zext_ln70_fu_1679_p1;
        end else begin
            v6_4_address0_local = 'bx;
        end
    end else begin
        v6_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_4_ce0_local = 1'b1;
    end else begin
        v6_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_5_address0_local = zext_ln70_7_fu_2642_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_5_address0_local = zext_ln70_6_fu_2512_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_5_address0_local = zext_ln70_5_fu_2382_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_5_address0_local = zext_ln70_4_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_5_address0_local = zext_ln70_3_fu_2118_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_5_address0_local = zext_ln70_2_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_5_address0_local = zext_ln70_1_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_5_address0_local = zext_ln70_fu_1679_p1;
        end else begin
            v6_5_address0_local = 'bx;
        end
    end else begin
        v6_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_5_ce0_local = 1'b1;
    end else begin
        v6_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_6_address0_local = zext_ln70_7_fu_2642_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_6_address0_local = zext_ln70_6_fu_2512_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_6_address0_local = zext_ln70_5_fu_2382_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_6_address0_local = zext_ln70_4_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_6_address0_local = zext_ln70_3_fu_2118_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_6_address0_local = zext_ln70_2_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_6_address0_local = zext_ln70_1_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_6_address0_local = zext_ln70_fu_1679_p1;
        end else begin
            v6_6_address0_local = 'bx;
        end
    end else begin
        v6_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_6_ce0_local = 1'b1;
    end else begin
        v6_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage29) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            v6_7_address0_local = zext_ln70_7_fu_2642_p1;
        end else if (((1'b0 == ap_block_pp0_stage27) & (1'b1 == ap_CS_fsm_pp0_stage27))) begin
            v6_7_address0_local = zext_ln70_6_fu_2512_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v6_7_address0_local = zext_ln70_5_fu_2382_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v6_7_address0_local = zext_ln70_4_fu_2248_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v6_7_address0_local = zext_ln70_3_fu_2118_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v6_7_address0_local = zext_ln70_2_fu_1988_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v6_7_address0_local = zext_ln70_1_fu_1858_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v6_7_address0_local = zext_ln70_fu_1679_p1;
        end else begin
            v6_7_address0_local = 'bx;
        end
    end else begin
        v6_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((1'b0 == ap_block_pp0_stage27_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage27)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)))) begin
        v6_7_ce0_local = 1'b1;
    end else begin
        v6_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        ap_ST_fsm_pp0_stage32 : begin
            if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage32;
            end
        end
        ap_ST_fsm_pp0_stage33 : begin
            if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage33;
            end
        end
        ap_ST_fsm_pp0_stage34 : begin
            if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage34;
            end
        end
        ap_ST_fsm_pp0_stage35 : begin
            if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage35;
            end
        end
        ap_ST_fsm_pp0_stage36 : begin
            if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage36;
            end
        end
        ap_ST_fsm_pp0_stage37 : begin
            if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage37;
            end
        end
        ap_ST_fsm_pp0_stage38 : begin
            if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage38;
            end
        end
        ap_ST_fsm_pp0_stage39 : begin
            if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage39;
            end
        end
        ap_ST_fsm_pp0_stage40 : begin
            if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage40;
            end
        end
        ap_ST_fsm_pp0_stage41 : begin
            if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage41;
            end
        end
        ap_ST_fsm_pp0_stage42 : begin
            if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage42;
            end
        end
        ap_ST_fsm_pp0_stage43 : begin
            if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage43;
            end
        end
        ap_ST_fsm_pp0_stage44 : begin
            if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage44;
            end
        end
        ap_ST_fsm_pp0_stage45 : begin
            if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage45;
            end
        end
        ap_ST_fsm_pp0_stage46 : begin
            if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage46;
            end
        end
        ap_ST_fsm_pp0_stage47 : begin
            if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage47;
            end
        end
        ap_ST_fsm_pp0_stage48 : begin
            if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage48;
            end
        end
        ap_ST_fsm_pp0_stage49 : begin
            if ((1'b0 == ap_block_pp0_stage49_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage49;
            end
        end
        ap_ST_fsm_pp0_stage50 : begin
            if ((1'b0 == ap_block_pp0_stage50_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage50;
            end
        end
        ap_ST_fsm_pp0_stage51 : begin
            if ((1'b0 == ap_block_pp0_stage51_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage51;
            end
        end
        ap_ST_fsm_pp0_stage52 : begin
            if ((1'b0 == ap_block_pp0_stage52_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage52;
            end
        end
        ap_ST_fsm_pp0_stage53 : begin
            if ((1'b0 == ap_block_pp0_stage53_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage53;
            end
        end
        ap_ST_fsm_pp0_stage54 : begin
            if ((1'b0 == ap_block_pp0_stage54_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage54;
            end
        end
        ap_ST_fsm_pp0_stage55 : begin
            if ((1'b0 == ap_block_pp0_stage55_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage55;
            end
        end
        ap_ST_fsm_pp0_stage56 : begin
            if ((1'b0 == ap_block_pp0_stage56_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage56;
            end
        end
        ap_ST_fsm_pp0_stage57 : begin
            if ((1'b0 == ap_block_pp0_stage57_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage57;
            end
        end
        ap_ST_fsm_pp0_stage58 : begin
            if ((1'b0 == ap_block_pp0_stage58_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage58;
            end
        end
        ap_ST_fsm_pp0_stage59 : begin
            if ((1'b0 == ap_block_pp0_stage59_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage59;
            end
        end
        ap_ST_fsm_pp0_stage60 : begin
            if ((1'b0 == ap_block_pp0_stage60_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage60;
            end
        end
        ap_ST_fsm_pp0_stage61 : begin
            if ((1'b0 == ap_block_pp0_stage61_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage61;
            end
        end
        ap_ST_fsm_pp0_stage62 : begin
            if ((1'b0 == ap_block_pp0_stage62_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage62;
            end
        end
        ap_ST_fsm_pp0_stage63 : begin
            if ((1'b0 == ap_block_pp0_stage63_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage63;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln69_1_fu_1176_p2 = (zext_ln69_2_fu_1173_p1 + phi_mul);
assign add_ln69_2_fu_1251_p2 = (zext_ln69_5_fu_1248_p1 + phi_mul);
assign add_ln69_3_fu_1325_p2 = (zext_ln69_8_fu_1322_p1 + phi_mul);
assign add_ln69_4_fu_1400_p2 = (zext_ln69_11_fu_1397_p1 + phi_mul);
assign add_ln69_5_fu_1512_p2 = (zext_ln68_3_fu_1509_p1 + phi_mul);
assign add_ln69_6_fu_1572_p2 = (phi_mul + 10'd6);
assign add_ln69_7_fu_1691_p2 = (phi_mul + 10'd7);
assign add_ln69_fu_1102_p2 = (zext_ln68_1_fu_1099_p1 + phi_mul);
assign add_ln70_1_fu_1162_p2 = (zext_ln69_1_fu_1158_p1 + phi_mul190);
assign add_ln70_2_fu_1237_p2 = (zext_ln69_4_fu_1233_p1 + phi_mul190);
assign add_ln70_3_fu_1311_p2 = (zext_ln69_7_fu_1307_p1 + phi_mul190);
assign add_ln70_4_fu_1386_p2 = (zext_ln69_10_fu_1382_p1 + phi_mul190);
assign add_ln70_5_fu_1469_p2 = (zext_ln68_2_fu_1465_p1 + phi_mul190);
assign add_ln70_6_fu_1561_p2 = (phi_mul190 + 12'd6);
assign add_ln70_7_fu_1629_p2 = (phi_mul190 + 12'd7);
assign add_ln70_fu_1043_p2 = (zext_ln68_fu_1039_p1 + phi_mul190);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage27 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_pp0_stage28 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage32 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_pp0_stage33 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_pp0_stage35 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_pp0_stage37 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_pp0_stage39 = ap_CS_fsm[32'd39];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage40 = ap_CS_fsm[32'd40];
assign ap_CS_fsm_pp0_stage47 = ap_CS_fsm[32'd47];
assign ap_CS_fsm_pp0_stage48 = ap_CS_fsm[32'd48];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage55 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_pp0_stage56 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage63 = ap_CS_fsm[32'd63];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage63;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_1480_p3 = v24_1_reg_2767[4'd3];
assign grp_fu_1049_p0 = (zext_ln68_fu_1039_p1 + phi_mul190);
assign grp_fu_1049_p1 = 12'd265;
assign grp_fu_1107_p0 = (zext_ln68_1_fu_1099_p1 + phi_mul);
assign grp_fu_1107_p1 = 10'd208;
assign grp_fu_1167_p0 = (zext_ln69_1_fu_1158_p1 + phi_mul190);
assign grp_fu_1167_p1 = 12'd265;
assign grp_fu_1181_p0 = (zext_ln69_2_fu_1173_p1 + phi_mul);
assign grp_fu_1181_p1 = 10'd208;
assign grp_fu_1242_p0 = (zext_ln69_4_fu_1233_p1 + phi_mul190);
assign grp_fu_1242_p1 = 12'd265;
assign grp_fu_1256_p0 = (zext_ln69_5_fu_1248_p1 + phi_mul);
assign grp_fu_1256_p1 = 10'd208;
assign grp_fu_1316_p0 = (zext_ln69_7_fu_1307_p1 + phi_mul190);
assign grp_fu_1316_p1 = 12'd265;
assign grp_fu_1330_p0 = (zext_ln69_8_fu_1322_p1 + phi_mul);
assign grp_fu_1330_p1 = 10'd208;
assign grp_fu_1391_p0 = (zext_ln69_10_fu_1382_p1 + phi_mul190);
assign grp_fu_1391_p1 = 12'd265;
assign grp_fu_1405_p0 = (zext_ln69_11_fu_1397_p1 + phi_mul);
assign grp_fu_1405_p1 = 10'd208;
assign grp_fu_1474_p0 = (zext_ln68_2_fu_1465_p1 + phi_mul190);
assign grp_fu_1474_p1 = 12'd265;
assign grp_fu_1517_p0 = (zext_ln68_3_fu_1509_p1 + phi_mul);
assign grp_fu_1517_p1 = 10'd208;
assign grp_fu_1566_p0 = (phi_mul190 + 12'd6);
assign grp_fu_1566_p1 = 12'd265;
assign grp_fu_1577_p0 = (phi_mul + 10'd6);
assign grp_fu_1577_p1 = 10'd208;
assign grp_fu_1634_p0 = (phi_mul190 + 12'd7);
assign grp_fu_1634_p1 = 12'd265;
assign grp_fu_1696_p0 = (phi_mul + 10'd7);
assign grp_fu_1696_p1 = 10'd208;
assign grp_fu_5240_p_ce = 1'b1;
assign grp_fu_5240_p_din0 = grp_fu_1007_p0;
assign grp_fu_5240_p_din1 = grp_fu_1007_p1;
assign grp_fu_5240_p_opcode = 2'd0;
assign grp_fu_5258_p_ce = 1'b1;
assign grp_fu_5258_p_din0 = grp_fu_1012_p0;
assign grp_fu_5258_p_din1 = grp_fu_1012_p1;
assign icmp_ln68_fu_1459_p2 = ((or_ln68_4_fu_1449_p5 == 4'd13) ? 1'b1 : 1'b0);
assign mul_ln69_1_fu_1209_p0 = mul_ln69_1_fu_1209_p00;
assign mul_ln69_1_fu_1209_p00 = add_ln69_1_reg_2839;
assign mul_ln69_1_fu_1209_p1 = 21'd1261;
assign mul_ln69_2_fu_1284_p0 = mul_ln69_2_fu_1284_p00;
assign mul_ln69_2_fu_1284_p00 = add_ln69_2_reg_2866;
assign mul_ln69_2_fu_1284_p1 = 21'd1261;
assign mul_ln69_3_fu_1358_p0 = mul_ln69_3_fu_1358_p00;
assign mul_ln69_3_fu_1358_p00 = add_ln69_3_reg_2893;
assign mul_ln69_3_fu_1358_p1 = 21'd1261;
assign mul_ln69_4_fu_1433_p0 = mul_ln69_4_fu_1433_p00;
assign mul_ln69_4_fu_1433_p00 = add_ln69_4_reg_2920;
assign mul_ln69_4_fu_1433_p1 = 21'd1261;
assign mul_ln69_5_fu_1545_p0 = mul_ln69_5_fu_1545_p00;
assign mul_ln69_5_fu_1545_p00 = add_ln69_5_reg_2951;
assign mul_ln69_5_fu_1545_p1 = 21'd1261;
assign mul_ln69_6_fu_1613_p0 = mul_ln69_6_fu_1613_p00;
assign mul_ln69_6_fu_1613_p00 = add_ln69_6_reg_2973;
assign mul_ln69_6_fu_1613_p1 = 21'd1261;
assign mul_ln69_7_fu_1803_p0 = mul_ln69_7_fu_1803_p00;
assign mul_ln69_7_fu_1803_p00 = add_ln69_7_reg_3060;
assign mul_ln69_7_fu_1803_p1 = 21'd1261;
assign mul_ln69_fu_1135_p0 = mul_ln69_fu_1135_p00;
assign mul_ln69_fu_1135_p00 = add_ln69_reg_2812;
assign mul_ln69_fu_1135_p1 = 21'd1261;
assign mul_ln70_1_fu_1190_p0 = mul_ln70_1_fu_1190_p00;
assign mul_ln70_1_fu_1190_p00 = add_ln70_1_reg_2833;
assign mul_ln70_1_fu_1190_p1 = 25'd7914;
assign mul_ln70_2_fu_1265_p0 = mul_ln70_2_fu_1265_p00;
assign mul_ln70_2_fu_1265_p00 = add_ln70_2_reg_2860;
assign mul_ln70_2_fu_1265_p1 = 25'd7914;
assign mul_ln70_3_fu_1339_p0 = mul_ln70_3_fu_1339_p00;
assign mul_ln70_3_fu_1339_p00 = add_ln70_3_reg_2887;
assign mul_ln70_3_fu_1339_p1 = 25'd7914;
assign mul_ln70_4_fu_1414_p0 = mul_ln70_4_fu_1414_p00;
assign mul_ln70_4_fu_1414_p00 = add_ln70_4_reg_2914;
assign mul_ln70_4_fu_1414_p1 = 25'd7914;
assign mul_ln70_5_fu_1526_p0 = mul_ln70_5_fu_1526_p00;
assign mul_ln70_5_fu_1526_p00 = add_ln70_5_reg_2945;
assign mul_ln70_5_fu_1526_p1 = 25'd7914;
assign mul_ln70_6_fu_1586_p0 = mul_ln70_6_fu_1586_p00;
assign mul_ln70_6_fu_1586_p00 = add_ln70_6_reg_2967;
assign mul_ln70_6_fu_1586_p1 = 25'd7914;
assign mul_ln70_7_fu_1705_p0 = mul_ln70_7_fu_1705_p00;
assign mul_ln70_7_fu_1705_p00 = add_ln70_7_reg_3009;
assign mul_ln70_7_fu_1705_p1 = 25'd7914;
assign mul_ln70_fu_1116_p0 = mul_ln70_fu_1116_p00;
assign mul_ln70_fu_1116_p00 = add_ln70_reg_2774;
assign mul_ln70_fu_1116_p1 = 25'd7914;
assign or_ln68_1_fu_1225_p4 = {{{tmp_3_reg_2785}, {1'd1}}, {trunc_ln68_reg_2791}};
assign or_ln68_2_fu_1300_p3 = {{tmp_3_reg_2785}, {2'd3}};
assign or_ln68_3_fu_1374_p4 = {{{tmp_reg_2796}, {1'd1}}, {trunc_ln68_1_reg_2802}};
assign or_ln68_4_fu_1449_p5 = {{{{tmp_reg_2796}, {1'd1}}, {tmp_44_reg_2807}}, {1'd1}};
assign or_ln_fu_1151_p3 = {{tmp_2_reg_2780}, {1'd1}};
assign trunc_ln68_1_fu_1087_p1 = ap_sig_allocacmp_v24_1[1:0];
assign trunc_ln68_2_fu_1493_p1 = v24_1_reg_2767[2:0];
assign trunc_ln68_fu_1075_p1 = ap_sig_allocacmp_v24_1[0:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v25_1_fu_1835_p2 = v0_0_q0;
assign v25_1_fu_1835_p4 = v0_1_q0;
assign v25_1_fu_1835_p6 = v0_2_q0;
assign v25_1_fu_1835_p8 = v0_3_q0;
assign v25_1_fu_1835_p9 = 'bx;
assign v25_2_fu_1965_p2 = v0_0_q0;
assign v25_2_fu_1965_p4 = v0_1_q0;
assign v25_2_fu_1965_p6 = v0_2_q0;
assign v25_2_fu_1965_p8 = v0_3_q0;
assign v25_2_fu_1965_p9 = 'bx;
assign v25_3_fu_2095_p2 = v0_0_q0;
assign v25_3_fu_2095_p4 = v0_1_q0;
assign v25_3_fu_2095_p6 = v0_2_q0;
assign v25_3_fu_2095_p8 = v0_3_q0;
assign v25_3_fu_2095_p9 = 'bx;
assign v25_4_fu_2225_p2 = v0_0_q0;
assign v25_4_fu_2225_p4 = v0_1_q0;
assign v25_4_fu_2225_p6 = v0_2_q0;
assign v25_4_fu_2225_p8 = v0_3_q0;
assign v25_4_fu_2225_p9 = 'bx;
assign v25_5_fu_2359_p2 = v0_0_q0;
assign v25_5_fu_2359_p4 = v0_1_q0;
assign v25_5_fu_2359_p6 = v0_2_q0;
assign v25_5_fu_2359_p8 = v0_3_q0;
assign v25_5_fu_2359_p9 = 'bx;
assign v25_6_fu_2489_p2 = v0_0_q0;
assign v25_6_fu_2489_p4 = v0_1_q0;
assign v25_6_fu_2489_p6 = v0_2_q0;
assign v25_6_fu_2489_p8 = v0_3_q0;
assign v25_6_fu_2489_p9 = 'bx;
assign v25_7_fu_2619_p2 = v0_0_q0;
assign v25_7_fu_2619_p4 = v0_1_q0;
assign v25_7_fu_2619_p6 = v0_2_q0;
assign v25_7_fu_2619_p8 = v0_3_q0;
assign v25_7_fu_2619_p9 = 'bx;
assign v25_fu_1656_p2 = v0_0_q0;
assign v25_fu_1656_p4 = v0_1_q0;
assign v25_fu_1656_p6 = v0_2_q0;
assign v25_fu_1656_p8 = v0_3_q0;
assign v25_fu_1656_p9 = 'bx;
assign v26_1_fu_1902_p10 = v6_4_q0;
assign v26_1_fu_1902_p12 = v6_5_q0;
assign v26_1_fu_1902_p14 = v6_6_q0;
assign v26_1_fu_1902_p16 = v6_7_q0;
assign v26_1_fu_1902_p17 = 'bx;
assign v26_1_fu_1902_p2 = v6_0_q0;
assign v26_1_fu_1902_p4 = v6_1_q0;
assign v26_1_fu_1902_p6 = v6_2_q0;
assign v26_1_fu_1902_p8 = v6_3_q0;
assign v26_2_fu_2032_p10 = v6_4_q0;
assign v26_2_fu_2032_p12 = v6_5_q0;
assign v26_2_fu_2032_p14 = v6_6_q0;
assign v26_2_fu_2032_p16 = v6_7_q0;
assign v26_2_fu_2032_p17 = 'bx;
assign v26_2_fu_2032_p2 = v6_0_q0;
assign v26_2_fu_2032_p4 = v6_1_q0;
assign v26_2_fu_2032_p6 = v6_2_q0;
assign v26_2_fu_2032_p8 = v6_3_q0;
assign v26_3_fu_2162_p10 = v6_4_q0;
assign v26_3_fu_2162_p12 = v6_5_q0;
assign v26_3_fu_2162_p14 = v6_6_q0;
assign v26_3_fu_2162_p16 = v6_7_q0;
assign v26_3_fu_2162_p17 = 'bx;
assign v26_3_fu_2162_p2 = v6_0_q0;
assign v26_3_fu_2162_p4 = v6_1_q0;
assign v26_3_fu_2162_p6 = v6_2_q0;
assign v26_3_fu_2162_p8 = v6_3_q0;
assign v26_4_fu_2296_p10 = v6_4_q0;
assign v26_4_fu_2296_p12 = v6_5_q0;
assign v26_4_fu_2296_p14 = v6_6_q0;
assign v26_4_fu_2296_p16 = v6_7_q0;
assign v26_4_fu_2296_p17 = 'bx;
assign v26_4_fu_2296_p2 = v6_0_q0;
assign v26_4_fu_2296_p4 = v6_1_q0;
assign v26_4_fu_2296_p6 = v6_2_q0;
assign v26_4_fu_2296_p8 = v6_3_q0;
assign v26_5_fu_2426_p10 = v6_4_q0;
assign v26_5_fu_2426_p12 = v6_5_q0;
assign v26_5_fu_2426_p14 = v6_6_q0;
assign v26_5_fu_2426_p16 = v6_7_q0;
assign v26_5_fu_2426_p17 = 'bx;
assign v26_5_fu_2426_p2 = v6_0_q0;
assign v26_5_fu_2426_p4 = v6_1_q0;
assign v26_5_fu_2426_p6 = v6_2_q0;
assign v26_5_fu_2426_p8 = v6_3_q0;
assign v26_6_fu_2556_p10 = v6_4_q0;
assign v26_6_fu_2556_p12 = v6_5_q0;
assign v26_6_fu_2556_p14 = v6_6_q0;
assign v26_6_fu_2556_p16 = v6_7_q0;
assign v26_6_fu_2556_p17 = 'bx;
assign v26_6_fu_2556_p2 = v6_0_q0;
assign v26_6_fu_2556_p4 = v6_1_q0;
assign v26_6_fu_2556_p6 = v6_2_q0;
assign v26_6_fu_2556_p8 = v6_3_q0;
assign v26_7_fu_2686_p10 = v6_4_q0;
assign v26_7_fu_2686_p12 = v6_5_q0;
assign v26_7_fu_2686_p14 = v6_6_q0;
assign v26_7_fu_2686_p16 = v6_7_q0;
assign v26_7_fu_2686_p17 = 'bx;
assign v26_7_fu_2686_p2 = v6_0_q0;
assign v26_7_fu_2686_p4 = v6_1_q0;
assign v26_7_fu_2686_p6 = v6_2_q0;
assign v26_7_fu_2686_p8 = v6_3_q0;
assign v26_fu_1753_p10 = v6_4_q0;
assign v26_fu_1753_p12 = v6_5_q0;
assign v26_fu_1753_p14 = v6_6_q0;
assign v26_fu_1753_p16 = v6_7_q0;
assign v26_fu_1753_p17 = 'bx;
assign v26_fu_1753_p2 = v6_0_q0;
assign v26_fu_1753_p4 = v6_1_q0;
assign v26_fu_1753_p6 = v6_2_q0;
assign v26_fu_1753_p8 = v6_3_q0;
assign v29_12_out = grp_fu_5240_p_dout0;
assign v6_0_address0 = v6_0_address0_local;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = v6_1_address0_local;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = v6_2_address0_local;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = v6_3_address0_local;
assign v6_3_ce0 = v6_3_ce0_local;
assign v6_4_address0 = v6_4_address0_local;
assign v6_4_ce0 = v6_4_ce0_local;
assign v6_5_address0 = v6_5_address0_local;
assign v6_5_ce0 = v6_5_ce0_local;
assign v6_6_address0 = v6_6_address0_local;
assign v6_6_ce0 = v6_6_ce0_local;
assign v6_7_address0 = v6_7_address0_local;
assign v6_7_ce0 = v6_7_ce0_local;
assign xor_ln68_fu_1487_p2 = (bit_sel1_fu_1480_p3 ^ 1'd1);
assign xor_ln_fu_1496_p3 = {{xor_ln68_fu_1487_p2}, {trunc_ln68_2_fu_1493_p1}};
assign zext_ln68_1_fu_1099_p1 = v24_1_reg_2767;
assign zext_ln68_2_fu_1465_p1 = or_ln68_4_fu_1449_p5;
assign zext_ln68_3_fu_1509_p1 = or_ln68_4_reg_2936;
assign zext_ln68_fu_1039_p1 = ap_sig_allocacmp_v24_1;
assign zext_ln69_10_fu_1382_p1 = or_ln68_3_fu_1374_p4;
assign zext_ln69_11_fu_1397_p1 = or_ln68_3_reg_2909;
assign zext_ln69_12_fu_2201_p1 = grp_fu_1405_p2;
assign zext_ln69_13_fu_2335_p1 = grp_fu_1517_p2;
assign zext_ln69_14_fu_2465_p1 = grp_fu_1577_p2;
assign zext_ln69_15_fu_2595_p1 = grp_fu_1696_p2;
assign zext_ln69_1_fu_1158_p1 = or_ln_fu_1151_p3;
assign zext_ln69_2_fu_1173_p1 = or_ln_reg_2828;
assign zext_ln69_3_fu_1792_p1 = grp_fu_1181_p2;
assign zext_ln69_4_fu_1233_p1 = or_ln68_1_fu_1225_p4;
assign zext_ln69_5_fu_1248_p1 = or_ln68_1_reg_2855;
assign zext_ln69_6_fu_1941_p1 = grp_fu_1256_p2;
assign zext_ln69_7_fu_1307_p1 = or_ln68_2_fu_1300_p3;
assign zext_ln69_8_fu_1322_p1 = or_ln68_2_reg_2882;
assign zext_ln69_9_fu_2071_p1 = grp_fu_1330_p2;
assign zext_ln69_fu_1602_p1 = grp_fu_1107_p2;
assign zext_ln70_1_fu_1858_p1 = grp_fu_1167_p2;
assign zext_ln70_2_fu_1988_p1 = grp_fu_1242_p2;
assign zext_ln70_3_fu_2118_p1 = grp_fu_1316_p2;
assign zext_ln70_4_fu_2248_p1 = grp_fu_1391_p2;
assign zext_ln70_5_fu_2382_p1 = grp_fu_1474_p2;
assign zext_ln70_6_fu_2512_p1 = grp_fu_1566_p2;
assign zext_ln70_7_fu_2642_p1 = grp_fu_1634_p2;
assign zext_ln70_fu_1679_p1 = grp_fu_1049_p2;
always @ (posedge ap_clk) begin
    or_ln_reg_2828[0] <= 1'b1;
    or_ln68_1_reg_2855[1] <= 1'b1;
    or_ln68_2_reg_2882[1:0] <= 2'b11;
    or_ln68_3_reg_2909[2] <= 1'b1;
    or_ln68_4_reg_2936[0] <= 1'b1;
    or_ln68_4_reg_2936[2] <= 1'b1;
end
endmodule 