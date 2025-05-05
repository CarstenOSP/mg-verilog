module backprop_backprop_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_12,v26_10,v26_11,v20_address0,v20_ce0,v20_we0,v20_d0,grp_fu_34218_p_din0,grp_fu_34218_p_din1,grp_fu_34218_p_opcode,grp_fu_34218_p_dout0,grp_fu_34218_p_ce,grp_fu_34222_p_din0,grp_fu_34222_p_din1,grp_fu_34222_p_opcode,grp_fu_34222_p_dout0,grp_fu_34222_p_ce,grp_fu_34226_p_din0,grp_fu_34226_p_din1,grp_fu_34226_p_dout0,grp_fu_34226_p_ce,grp_fu_34230_p_din0,grp_fu_34230_p_din1,grp_fu_34230_p_dout0,grp_fu_34230_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v0_0_address0;
output   v0_0_ce0;
input  [63:0] v0_0_q0;
output  [6:0] v0_0_address1;
output   v0_0_ce1;
input  [63:0] v0_0_q1;
output  [6:0] v0_1_address0;
output   v0_1_ce0;
input  [63:0] v0_1_q0;
output  [6:0] v0_1_address1;
output   v0_1_ce1;
input  [63:0] v0_1_q1;
output  [6:0] v0_2_address0;
output   v0_2_ce0;
input  [63:0] v0_2_q0;
output  [6:0] v0_2_address1;
output   v0_2_ce1;
input  [63:0] v0_2_q1;
output  [6:0] v0_3_address0;
output   v0_3_ce0;
input  [63:0] v0_3_q0;
output  [6:0] v0_3_address1;
output   v0_3_ce1;
input  [63:0] v0_3_q1;
output  [6:0] v0_4_address0;
output   v0_4_ce0;
input  [63:0] v0_4_q0;
output  [6:0] v0_4_address1;
output   v0_4_ce1;
input  [63:0] v0_4_q1;
output  [6:0] v0_5_address0;
output   v0_5_ce0;
input  [63:0] v0_5_q0;
output  [6:0] v0_5_address1;
output   v0_5_ce1;
input  [63:0] v0_5_q1;
output  [6:0] v0_6_address0;
output   v0_6_ce0;
input  [63:0] v0_6_q0;
output  [6:0] v0_6_address1;
output   v0_6_ce1;
input  [63:0] v0_6_q1;
output  [6:0] v0_7_address0;
output   v0_7_ce0;
input  [63:0] v0_7_q0;
output  [6:0] v0_7_address1;
output   v0_7_ce1;
input  [63:0] v0_7_q1;
input  [63:0] v26;
input  [63:0] v26_1;
input  [63:0] v26_2;
input  [63:0] v26_3;
input  [63:0] v26_4;
input  [63:0] v26_5;
input  [63:0] v26_6;
input  [63:0] v26_7;
input  [63:0] v26_8;
input  [63:0] v26_9;
input  [63:0] v26_12;
input  [63:0] v26_10;
input  [63:0] v26_11;
output  [5:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [63:0] grp_fu_34218_p_din0;
output  [63:0] grp_fu_34218_p_din1;
output  [0:0] grp_fu_34218_p_opcode;
input  [63:0] grp_fu_34218_p_dout0;
output   grp_fu_34218_p_ce;
output  [63:0] grp_fu_34222_p_din0;
output  [63:0] grp_fu_34222_p_din1;
output  [0:0] grp_fu_34222_p_opcode;
input  [63:0] grp_fu_34222_p_dout0;
output   grp_fu_34222_p_ce;
output  [63:0] grp_fu_34226_p_din0;
output  [63:0] grp_fu_34226_p_din1;
input  [63:0] grp_fu_34226_p_dout0;
output   grp_fu_34226_p_ce;
output  [63:0] grp_fu_34230_p_din0;
output  [63:0] grp_fu_34230_p_din1;
input  [63:0] grp_fu_34230_p_dout0;
output   grp_fu_34230_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln66_reg_2756;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v23_1_reg_2749;
reg   [6:0] v23_1_reg_2749_pp0_iter1_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter2_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter3_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter4_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter5_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter6_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter7_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter8_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter9_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter10_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter11_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter12_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter13_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter14_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter15_reg;
reg   [6:0] v23_1_reg_2749_pp0_iter16_reg;
wire   [0:0] icmp_ln66_fu_1177_p2;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_2756_pp0_iter15_reg;
reg   [9:0] phi_mul_load_reg_2760;
wire   [6:0] mul_ln69_fu_1194_p2;
reg   [6:0] mul_ln69_reg_2775;
wire   [9:0] add_ln69_fu_1200_p2;
reg   [9:0] add_ln69_reg_2780;
reg   [9:0] add_ln69_reg_2780_pp0_iter1_reg;
wire   [9:0] add_ln69_1_fu_1212_p2;
reg   [9:0] add_ln69_1_reg_2786;
reg   [9:0] add_ln69_1_reg_2786_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [9:0] add_ln69_2_fu_1235_p2;
reg   [9:0] add_ln69_2_reg_2832;
reg   [9:0] add_ln69_2_reg_2832_pp0_iter1_reg;
wire   [9:0] add_ln69_3_fu_1246_p2;
reg   [9:0] add_ln69_3_reg_2838;
reg   [9:0] add_ln69_3_reg_2838_pp0_iter1_reg;
wire   [63:0] v25_fu_1298_p19;
reg   [63:0] v25_reg_2844;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [9:0] add_ln69_4_fu_1338_p2;
reg   [9:0] add_ln69_4_reg_2849;
reg   [9:0] add_ln69_4_reg_2849_pp0_iter1_reg;
wire   [9:0] add_ln69_5_fu_1349_p2;
reg   [9:0] add_ln69_5_reg_2855;
reg   [9:0] add_ln69_5_reg_2855_pp0_iter1_reg;
wire   [9:0] add_ln69_6_fu_1360_p2;
reg   [9:0] add_ln69_6_reg_2861;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [9:0] add_ln69_6_reg_2861_pp0_iter1_reg;
wire   [9:0] add_ln69_7_fu_1371_p2;
reg   [9:0] add_ln69_7_reg_2867;
reg   [9:0] add_ln69_7_reg_2867_pp0_iter1_reg;
wire   [9:0] add_ln69_8_fu_1382_p2;
reg   [9:0] add_ln69_8_reg_2873;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [9:0] add_ln69_8_reg_2873_pp0_iter1_reg;
wire   [9:0] add_ln69_9_fu_1393_p2;
reg   [9:0] add_ln69_9_reg_2879;
reg   [9:0] add_ln69_9_reg_2879_pp0_iter1_reg;
wire   [9:0] add_ln69_10_fu_1404_p2;
reg   [9:0] add_ln69_10_reg_2885;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [9:0] add_ln69_10_reg_2885_pp0_iter1_reg;
wire   [9:0] add_ln69_11_fu_1415_p2;
reg   [9:0] add_ln69_11_reg_2891;
reg   [9:0] add_ln69_11_reg_2891_pp0_iter1_reg;
reg   [2:0] trunc_ln69_1_reg_2897;
reg   [2:0] trunc_ln69_2_reg_2902;
reg   [63:0] v27_reg_2907;
reg   [2:0] trunc_ln69_3_reg_2912;
reg   [2:0] trunc_ln69_4_reg_2917;
reg   [2:0] trunc_ln69_5_reg_2922;
reg   [2:0] trunc_ln69_6_reg_2927;
reg   [2:0] trunc_ln69_7_reg_2932;
reg   [2:0] trunc_ln69_8_reg_2937;
reg   [2:0] trunc_ln69_9_reg_2942;
reg   [2:0] trunc_ln69_s_reg_2947;
wire    ap_block_pp0_stage6_11001;
reg   [2:0] trunc_ln69_10_reg_3032;
reg   [2:0] trunc_ln69_11_reg_3037;
wire   [63:0] v25_1_fu_1730_p19;
reg   [63:0] v25_1_reg_3042;
wire   [63:0] v25_2_fu_1801_p19;
reg   [63:0] v25_2_reg_3047;
wire   [63:0] v25_3_fu_1896_p19;
reg   [63:0] v25_3_reg_3132;
wire   [63:0] v25_4_fu_1967_p19;
reg   [63:0] v25_4_reg_3137;
wire   [9:0] grp_fu_1354_p2;
reg   [9:0] urem_ln69_5_reg_3182;
wire   [63:0] v25_5_fu_2050_p19;
reg   [63:0] v25_5_reg_3187;
wire   [9:0] grp_fu_1376_p2;
reg   [9:0] urem_ln69_7_reg_3272;
reg   [63:0] v29_13_reg_3277;
wire   [63:0] v25_6_fu_2144_p19;
reg   [63:0] v25_6_reg_3282;
wire   [63:0] v25_7_fu_2215_p19;
reg   [63:0] v25_7_reg_3287;
wire   [9:0] grp_fu_1398_p2;
reg   [9:0] urem_ln69_9_reg_3372;
wire   [63:0] v25_8_fu_2309_p19;
reg   [63:0] v25_8_reg_3377;
wire   [63:0] v25_9_fu_2380_p19;
reg   [63:0] v25_9_reg_3382;
wire   [9:0] grp_fu_1420_p2;
reg   [9:0] urem_ln69_11_reg_3467;
wire   [63:0] v25_10_fu_2474_p19;
reg   [63:0] v25_10_reg_3472;
wire   [63:0] v25_11_fu_2545_p19;
reg   [63:0] v25_11_reg_3477;
wire   [63:0] v25_12_fu_2627_p19;
reg   [63:0] v25_12_reg_3522;
reg   [63:0] v27_1_reg_3527;
reg   [63:0] v27_2_reg_3532;
reg   [63:0] v27_2_reg_3532_pp0_iter4_reg;
reg   [63:0] v27_3_reg_3537;
reg   [63:0] v27_3_reg_3537_pp0_iter4_reg;
reg   [63:0] v27_3_reg_3537_pp0_iter5_reg;
reg   [63:0] v27_4_reg_3542;
reg   [63:0] v27_4_reg_3542_pp0_iter4_reg;
reg   [63:0] v27_4_reg_3542_pp0_iter5_reg;
reg   [63:0] v27_4_reg_3542_pp0_iter6_reg;
reg   [63:0] v27_5_reg_3547;
reg   [63:0] v27_5_reg_3547_pp0_iter4_reg;
reg   [63:0] v27_5_reg_3547_pp0_iter5_reg;
reg   [63:0] v27_5_reg_3547_pp0_iter6_reg;
reg   [63:0] v27_5_reg_3547_pp0_iter7_reg;
reg   [63:0] v27_6_reg_3552;
reg   [63:0] v27_6_reg_3552_pp0_iter4_reg;
reg   [63:0] v27_6_reg_3552_pp0_iter5_reg;
reg   [63:0] v27_6_reg_3552_pp0_iter6_reg;
reg   [63:0] v27_6_reg_3552_pp0_iter7_reg;
reg   [63:0] v27_6_reg_3552_pp0_iter8_reg;
reg   [63:0] v27_7_reg_3557;
reg   [63:0] v27_7_reg_3557_pp0_iter4_reg;
reg   [63:0] v27_7_reg_3557_pp0_iter5_reg;
reg   [63:0] v27_7_reg_3557_pp0_iter6_reg;
reg   [63:0] v27_7_reg_3557_pp0_iter7_reg;
reg   [63:0] v27_7_reg_3557_pp0_iter8_reg;
reg   [63:0] v27_7_reg_3557_pp0_iter9_reg;
reg   [63:0] v27_8_reg_3562;
reg   [63:0] v27_8_reg_3562_pp0_iter4_reg;
reg   [63:0] v27_8_reg_3562_pp0_iter5_reg;
reg   [63:0] v27_8_reg_3562_pp0_iter6_reg;
reg   [63:0] v27_8_reg_3562_pp0_iter7_reg;
reg   [63:0] v27_8_reg_3562_pp0_iter8_reg;
reg   [63:0] v27_8_reg_3562_pp0_iter9_reg;
reg   [63:0] v27_8_reg_3562_pp0_iter10_reg;
reg   [63:0] v27_9_reg_3567;
reg   [63:0] v27_9_reg_3567_pp0_iter4_reg;
reg   [63:0] v27_9_reg_3567_pp0_iter5_reg;
reg   [63:0] v27_9_reg_3567_pp0_iter6_reg;
reg   [63:0] v27_9_reg_3567_pp0_iter7_reg;
reg   [63:0] v27_9_reg_3567_pp0_iter8_reg;
reg   [63:0] v27_9_reg_3567_pp0_iter9_reg;
reg   [63:0] v27_9_reg_3567_pp0_iter10_reg;
reg   [63:0] v27_9_reg_3567_pp0_iter11_reg;
reg   [63:0] v27_10_reg_3572;
reg   [63:0] v27_10_reg_3572_pp0_iter4_reg;
reg   [63:0] v27_10_reg_3572_pp0_iter5_reg;
reg   [63:0] v27_10_reg_3572_pp0_iter6_reg;
reg   [63:0] v27_10_reg_3572_pp0_iter7_reg;
reg   [63:0] v27_10_reg_3572_pp0_iter8_reg;
reg   [63:0] v27_10_reg_3572_pp0_iter9_reg;
reg   [63:0] v27_10_reg_3572_pp0_iter10_reg;
reg   [63:0] v27_10_reg_3572_pp0_iter11_reg;
reg   [63:0] v27_10_reg_3572_pp0_iter12_reg;
reg   [63:0] v27_11_reg_3577;
reg   [63:0] v27_11_reg_3577_pp0_iter4_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter5_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter6_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter7_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter8_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter9_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter10_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter11_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter12_reg;
reg   [63:0] v27_11_reg_3577_pp0_iter13_reg;
reg   [63:0] v27_12_reg_3582;
reg   [63:0] v27_12_reg_3582_pp0_iter4_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter5_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter6_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter7_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter8_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter9_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter10_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter11_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter12_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter13_reg;
reg   [63:0] v27_12_reg_3582_pp0_iter14_reg;
reg   [63:0] v29_14_reg_3587;
reg   [63:0] v29_15_reg_3592;
reg   [63:0] v29_16_reg_3597;
reg   [63:0] v29_17_reg_3602;
reg   [63:0] v29_18_reg_3607;
reg   [63:0] v29_19_reg_3612;
reg   [63:0] v29_20_reg_3617;
reg   [63:0] v29_21_reg_3622;
reg   [63:0] v29_22_reg_3627;
reg   [63:0] v29_23_reg_3632;
reg   [63:0] v29_24_reg_3637;
reg   [63:0] v29_reg_3642;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln69_1_fu_1224_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln69_2_fu_1636_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln69_4_fu_1648_p1;
wire   [63:0] zext_ln69_5_fu_1840_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln69_6_fu_1852_p1;
wire   [63:0] zext_ln69_7_fu_2006_p1;
wire   [63:0] zext_ln69_8_fu_2089_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln69_9_fu_2100_p1;
wire   [63:0] zext_ln69_10_fu_2254_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln69_11_fu_2265_p1;
wire   [63:0] zext_ln69_12_fu_2419_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln69_13_fu_2430_p1;
wire   [63:0] zext_ln69_14_fu_2584_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln66_fu_2666_p1;
reg   [9:0] phi_mul_fu_144;
wire   [9:0] add_ln69_12_fu_1431_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] v23_fu_148;
wire   [6:0] add_ln66_fu_1426_p2;
reg   [6:0] ap_sig_allocacmp_v23_1;
reg    v0_0_ce1_local;
reg   [6:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [6:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [6:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [6:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [6:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [6:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [6:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [6:0] v0_3_address0_local;
reg    v0_4_ce1_local;
reg   [6:0] v0_4_address1_local;
reg    v0_4_ce0_local;
reg   [6:0] v0_4_address0_local;
reg    v0_5_ce1_local;
reg   [6:0] v0_5_address1_local;
reg    v0_5_ce0_local;
reg   [6:0] v0_5_address0_local;
reg    v0_6_ce1_local;
reg   [6:0] v0_6_address1_local;
reg    v0_6_ce0_local;
reg   [6:0] v0_6_address0_local;
reg    v0_7_ce1_local;
reg   [6:0] v0_7_address1_local;
reg    v0_7_ce0_local;
reg   [6:0] v0_7_address0_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg   [63:0] grp_fu_1147_p0;
reg   [63:0] grp_fu_1147_p1;
reg   [63:0] grp_fu_1152_p0;
reg   [63:0] grp_fu_1152_p1;
reg   [63:0] grp_fu_1156_p0;
reg   [63:0] grp_fu_1156_p1;
reg   [63:0] grp_fu_1160_p0;
reg   [63:0] grp_fu_1160_p1;
wire   [2:0] trunc_ln66_fu_1186_p1;
wire   [2:0] mul_ln69_fu_1194_p0;
wire   [4:0] mul_ln69_fu_1194_p1;
wire   [9:0] grp_fu_1206_p0;
wire   [7:0] grp_fu_1206_p1;
wire   [9:0] grp_fu_1218_p0;
wire   [7:0] grp_fu_1218_p1;
wire   [9:0] grp_fu_1240_p0;
wire   [7:0] grp_fu_1240_p1;
wire   [9:0] grp_fu_1251_p0;
wire   [7:0] grp_fu_1251_p1;
wire   [63:0] v25_fu_1298_p2;
wire   [63:0] v25_fu_1298_p4;
wire   [63:0] v25_fu_1298_p6;
wire   [63:0] v25_fu_1298_p8;
wire   [63:0] v25_fu_1298_p10;
wire   [63:0] v25_fu_1298_p12;
wire   [63:0] v25_fu_1298_p14;
wire   [63:0] v25_fu_1298_p16;
wire   [63:0] v25_fu_1298_p17;
wire   [2:0] v25_fu_1298_p18;
wire   [9:0] grp_fu_1343_p0;
wire   [7:0] grp_fu_1343_p1;
wire   [9:0] grp_fu_1354_p0;
wire   [7:0] grp_fu_1354_p1;
wire   [9:0] grp_fu_1365_p0;
wire   [7:0] grp_fu_1365_p1;
wire   [9:0] grp_fu_1376_p0;
wire   [7:0] grp_fu_1376_p1;
wire   [9:0] grp_fu_1387_p0;
wire   [7:0] grp_fu_1387_p1;
wire   [9:0] grp_fu_1398_p0;
wire   [7:0] grp_fu_1398_p1;
wire   [9:0] grp_fu_1409_p0;
wire   [7:0] grp_fu_1409_p1;
wire   [9:0] grp_fu_1420_p0;
wire   [7:0] grp_fu_1420_p1;
wire   [9:0] mul_ln69_1_fu_1449_p0;
wire   [11:0] mul_ln69_1_fu_1449_p1;
wire   [20:0] mul_ln69_1_fu_1449_p2;
wire   [9:0] mul_ln69_2_fu_1468_p0;
wire   [11:0] mul_ln69_2_fu_1468_p1;
wire   [20:0] mul_ln69_2_fu_1468_p2;
wire   [9:0] mul_ln69_3_fu_1487_p0;
wire   [11:0] mul_ln69_3_fu_1487_p1;
wire   [20:0] mul_ln69_3_fu_1487_p2;
wire   [9:0] mul_ln69_4_fu_1506_p0;
wire   [11:0] mul_ln69_4_fu_1506_p1;
wire   [20:0] mul_ln69_4_fu_1506_p2;
wire   [9:0] mul_ln69_5_fu_1525_p0;
wire   [11:0] mul_ln69_5_fu_1525_p1;
wire   [20:0] mul_ln69_5_fu_1525_p2;
wire   [9:0] mul_ln69_6_fu_1544_p0;
wire   [11:0] mul_ln69_6_fu_1544_p1;
wire   [20:0] mul_ln69_6_fu_1544_p2;
wire   [9:0] mul_ln69_7_fu_1563_p0;
wire   [11:0] mul_ln69_7_fu_1563_p1;
wire   [20:0] mul_ln69_7_fu_1563_p2;
wire   [9:0] mul_ln69_8_fu_1582_p0;
wire   [11:0] mul_ln69_8_fu_1582_p1;
wire   [20:0] mul_ln69_8_fu_1582_p2;
wire   [9:0] mul_ln69_9_fu_1601_p0;
wire   [11:0] mul_ln69_9_fu_1601_p1;
wire   [20:0] mul_ln69_9_fu_1601_p2;
wire   [9:0] mul_ln69_10_fu_1620_p0;
wire   [11:0] mul_ln69_10_fu_1620_p1;
wire   [20:0] mul_ln69_10_fu_1620_p2;
wire   [9:0] grp_fu_1206_p2;
wire   [9:0] grp_fu_1218_p2;
wire   [9:0] mul_ln69_11_fu_1663_p0;
wire   [11:0] mul_ln69_11_fu_1663_p1;
wire   [20:0] mul_ln69_11_fu_1663_p2;
wire   [9:0] mul_ln69_12_fu_1682_p0;
wire   [11:0] mul_ln69_12_fu_1682_p1;
wire   [20:0] mul_ln69_12_fu_1682_p2;
wire   [63:0] v25_1_fu_1730_p2;
wire   [63:0] v25_1_fu_1730_p4;
wire   [63:0] v25_1_fu_1730_p6;
wire   [63:0] v25_1_fu_1730_p8;
wire   [63:0] v25_1_fu_1730_p10;
wire   [63:0] v25_1_fu_1730_p12;
wire   [63:0] v25_1_fu_1730_p14;
wire   [63:0] v25_1_fu_1730_p16;
wire   [63:0] v25_1_fu_1730_p17;
wire   [63:0] v25_2_fu_1801_p2;
wire   [63:0] v25_2_fu_1801_p4;
wire   [63:0] v25_2_fu_1801_p6;
wire   [63:0] v25_2_fu_1801_p8;
wire   [63:0] v25_2_fu_1801_p10;
wire   [63:0] v25_2_fu_1801_p12;
wire   [63:0] v25_2_fu_1801_p14;
wire   [63:0] v25_2_fu_1801_p16;
wire   [63:0] v25_2_fu_1801_p17;
wire   [9:0] grp_fu_1240_p2;
wire   [9:0] grp_fu_1251_p2;
wire   [63:0] v25_3_fu_1896_p2;
wire   [63:0] v25_3_fu_1896_p4;
wire   [63:0] v25_3_fu_1896_p6;
wire   [63:0] v25_3_fu_1896_p8;
wire   [63:0] v25_3_fu_1896_p10;
wire   [63:0] v25_3_fu_1896_p12;
wire   [63:0] v25_3_fu_1896_p14;
wire   [63:0] v25_3_fu_1896_p16;
wire   [63:0] v25_3_fu_1896_p17;
wire   [63:0] v25_4_fu_1967_p2;
wire   [63:0] v25_4_fu_1967_p4;
wire   [63:0] v25_4_fu_1967_p6;
wire   [63:0] v25_4_fu_1967_p8;
wire   [63:0] v25_4_fu_1967_p10;
wire   [63:0] v25_4_fu_1967_p12;
wire   [63:0] v25_4_fu_1967_p14;
wire   [63:0] v25_4_fu_1967_p16;
wire   [63:0] v25_4_fu_1967_p17;
wire   [9:0] grp_fu_1343_p2;
wire   [63:0] v25_5_fu_2050_p2;
wire   [63:0] v25_5_fu_2050_p4;
wire   [63:0] v25_5_fu_2050_p6;
wire   [63:0] v25_5_fu_2050_p8;
wire   [63:0] v25_5_fu_2050_p10;
wire   [63:0] v25_5_fu_2050_p12;
wire   [63:0] v25_5_fu_2050_p14;
wire   [63:0] v25_5_fu_2050_p16;
wire   [63:0] v25_5_fu_2050_p17;
wire   [9:0] grp_fu_1365_p2;
wire   [63:0] v25_6_fu_2144_p2;
wire   [63:0] v25_6_fu_2144_p4;
wire   [63:0] v25_6_fu_2144_p6;
wire   [63:0] v25_6_fu_2144_p8;
wire   [63:0] v25_6_fu_2144_p10;
wire   [63:0] v25_6_fu_2144_p12;
wire   [63:0] v25_6_fu_2144_p14;
wire   [63:0] v25_6_fu_2144_p16;
wire   [63:0] v25_6_fu_2144_p17;
wire   [63:0] v25_7_fu_2215_p2;
wire   [63:0] v25_7_fu_2215_p4;
wire   [63:0] v25_7_fu_2215_p6;
wire   [63:0] v25_7_fu_2215_p8;
wire   [63:0] v25_7_fu_2215_p10;
wire   [63:0] v25_7_fu_2215_p12;
wire   [63:0] v25_7_fu_2215_p14;
wire   [63:0] v25_7_fu_2215_p16;
wire   [63:0] v25_7_fu_2215_p17;
wire   [9:0] grp_fu_1387_p2;
wire   [63:0] v25_8_fu_2309_p2;
wire   [63:0] v25_8_fu_2309_p4;
wire   [63:0] v25_8_fu_2309_p6;
wire   [63:0] v25_8_fu_2309_p8;
wire   [63:0] v25_8_fu_2309_p10;
wire   [63:0] v25_8_fu_2309_p12;
wire   [63:0] v25_8_fu_2309_p14;
wire   [63:0] v25_8_fu_2309_p16;
wire   [63:0] v25_8_fu_2309_p17;
wire   [63:0] v25_9_fu_2380_p2;
wire   [63:0] v25_9_fu_2380_p4;
wire   [63:0] v25_9_fu_2380_p6;
wire   [63:0] v25_9_fu_2380_p8;
wire   [63:0] v25_9_fu_2380_p10;
wire   [63:0] v25_9_fu_2380_p12;
wire   [63:0] v25_9_fu_2380_p14;
wire   [63:0] v25_9_fu_2380_p16;
wire   [63:0] v25_9_fu_2380_p17;
wire   [9:0] grp_fu_1409_p2;
wire   [63:0] v25_10_fu_2474_p2;
wire   [63:0] v25_10_fu_2474_p4;
wire   [63:0] v25_10_fu_2474_p6;
wire   [63:0] v25_10_fu_2474_p8;
wire   [63:0] v25_10_fu_2474_p10;
wire   [63:0] v25_10_fu_2474_p12;
wire   [63:0] v25_10_fu_2474_p14;
wire   [63:0] v25_10_fu_2474_p16;
wire   [63:0] v25_10_fu_2474_p17;
wire   [63:0] v25_11_fu_2545_p2;
wire   [63:0] v25_11_fu_2545_p4;
wire   [63:0] v25_11_fu_2545_p6;
wire   [63:0] v25_11_fu_2545_p8;
wire   [63:0] v25_11_fu_2545_p10;
wire   [63:0] v25_11_fu_2545_p12;
wire   [63:0] v25_11_fu_2545_p14;
wire   [63:0] v25_11_fu_2545_p16;
wire   [63:0] v25_11_fu_2545_p17;
wire   [63:0] v25_12_fu_2627_p2;
wire   [63:0] v25_12_fu_2627_p4;
wire   [63:0] v25_12_fu_2627_p6;
wire   [63:0] v25_12_fu_2627_p8;
wire   [63:0] v25_12_fu_2627_p10;
wire   [63:0] v25_12_fu_2627_p12;
wire   [63:0] v25_12_fu_2627_p14;
wire   [63:0] v25_12_fu_2627_p16;
wire   [63:0] v25_12_fu_2627_p17;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter16_stage0;
reg    ap_idle_pp0_0to15;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [6:0] ap_NS_fsm;
reg    ap_idle_pp0_1to17;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [20:0] mul_ln69_10_fu_1620_p00;
wire   [20:0] mul_ln69_11_fu_1663_p00;
wire   [20:0] mul_ln69_12_fu_1682_p00;
wire   [20:0] mul_ln69_1_fu_1449_p00;
wire   [20:0] mul_ln69_2_fu_1468_p00;
wire   [20:0] mul_ln69_3_fu_1487_p00;
wire   [20:0] mul_ln69_4_fu_1506_p00;
wire   [20:0] mul_ln69_5_fu_1525_p00;
wire   [20:0] mul_ln69_6_fu_1544_p00;
wire   [20:0] mul_ln69_7_fu_1563_p00;
wire   [20:0] mul_ln69_8_fu_1582_p00;
wire   [20:0] mul_ln69_9_fu_1601_p00;
wire   [6:0] mul_ln69_fu_1194_p00;
wire   [2:0] v25_fu_1298_p1;
wire   [2:0] v25_fu_1298_p3;
wire   [2:0] v25_fu_1298_p5;
wire   [2:0] v25_fu_1298_p7;
wire  signed [2:0] v25_fu_1298_p9;
wire  signed [2:0] v25_fu_1298_p11;
wire  signed [2:0] v25_fu_1298_p13;
wire  signed [2:0] v25_fu_1298_p15;
wire   [2:0] v25_1_fu_1730_p1;
wire   [2:0] v25_1_fu_1730_p3;
wire   [2:0] v25_1_fu_1730_p5;
wire   [2:0] v25_1_fu_1730_p7;
wire  signed [2:0] v25_1_fu_1730_p9;
wire  signed [2:0] v25_1_fu_1730_p11;
wire  signed [2:0] v25_1_fu_1730_p13;
wire  signed [2:0] v25_1_fu_1730_p15;
wire   [2:0] v25_2_fu_1801_p1;
wire   [2:0] v25_2_fu_1801_p3;
wire   [2:0] v25_2_fu_1801_p5;
wire   [2:0] v25_2_fu_1801_p7;
wire  signed [2:0] v25_2_fu_1801_p9;
wire  signed [2:0] v25_2_fu_1801_p11;
wire  signed [2:0] v25_2_fu_1801_p13;
wire  signed [2:0] v25_2_fu_1801_p15;
wire   [2:0] v25_3_fu_1896_p1;
wire   [2:0] v25_3_fu_1896_p3;
wire   [2:0] v25_3_fu_1896_p5;
wire   [2:0] v25_3_fu_1896_p7;
wire  signed [2:0] v25_3_fu_1896_p9;
wire  signed [2:0] v25_3_fu_1896_p11;
wire  signed [2:0] v25_3_fu_1896_p13;
wire  signed [2:0] v25_3_fu_1896_p15;
wire   [2:0] v25_4_fu_1967_p1;
wire   [2:0] v25_4_fu_1967_p3;
wire   [2:0] v25_4_fu_1967_p5;
wire   [2:0] v25_4_fu_1967_p7;
wire  signed [2:0] v25_4_fu_1967_p9;
wire  signed [2:0] v25_4_fu_1967_p11;
wire  signed [2:0] v25_4_fu_1967_p13;
wire  signed [2:0] v25_4_fu_1967_p15;
wire   [2:0] v25_5_fu_2050_p1;
wire   [2:0] v25_5_fu_2050_p3;
wire   [2:0] v25_5_fu_2050_p5;
wire   [2:0] v25_5_fu_2050_p7;
wire  signed [2:0] v25_5_fu_2050_p9;
wire  signed [2:0] v25_5_fu_2050_p11;
wire  signed [2:0] v25_5_fu_2050_p13;
wire  signed [2:0] v25_5_fu_2050_p15;
wire   [2:0] v25_6_fu_2144_p1;
wire   [2:0] v25_6_fu_2144_p3;
wire   [2:0] v25_6_fu_2144_p5;
wire   [2:0] v25_6_fu_2144_p7;
wire  signed [2:0] v25_6_fu_2144_p9;
wire  signed [2:0] v25_6_fu_2144_p11;
wire  signed [2:0] v25_6_fu_2144_p13;
wire  signed [2:0] v25_6_fu_2144_p15;
wire   [2:0] v25_7_fu_2215_p1;
wire   [2:0] v25_7_fu_2215_p3;
wire   [2:0] v25_7_fu_2215_p5;
wire   [2:0] v25_7_fu_2215_p7;
wire  signed [2:0] v25_7_fu_2215_p9;
wire  signed [2:0] v25_7_fu_2215_p11;
wire  signed [2:0] v25_7_fu_2215_p13;
wire  signed [2:0] v25_7_fu_2215_p15;
wire   [2:0] v25_8_fu_2309_p1;
wire   [2:0] v25_8_fu_2309_p3;
wire   [2:0] v25_8_fu_2309_p5;
wire   [2:0] v25_8_fu_2309_p7;
wire  signed [2:0] v25_8_fu_2309_p9;
wire  signed [2:0] v25_8_fu_2309_p11;
wire  signed [2:0] v25_8_fu_2309_p13;
wire  signed [2:0] v25_8_fu_2309_p15;
wire   [2:0] v25_9_fu_2380_p1;
wire   [2:0] v25_9_fu_2380_p3;
wire   [2:0] v25_9_fu_2380_p5;
wire   [2:0] v25_9_fu_2380_p7;
wire  signed [2:0] v25_9_fu_2380_p9;
wire  signed [2:0] v25_9_fu_2380_p11;
wire  signed [2:0] v25_9_fu_2380_p13;
wire  signed [2:0] v25_9_fu_2380_p15;
wire   [2:0] v25_10_fu_2474_p1;
wire   [2:0] v25_10_fu_2474_p3;
wire   [2:0] v25_10_fu_2474_p5;
wire   [2:0] v25_10_fu_2474_p7;
wire  signed [2:0] v25_10_fu_2474_p9;
wire  signed [2:0] v25_10_fu_2474_p11;
wire  signed [2:0] v25_10_fu_2474_p13;
wire  signed [2:0] v25_10_fu_2474_p15;
wire   [2:0] v25_11_fu_2545_p1;
wire   [2:0] v25_11_fu_2545_p3;
wire   [2:0] v25_11_fu_2545_p5;
wire   [2:0] v25_11_fu_2545_p7;
wire  signed [2:0] v25_11_fu_2545_p9;
wire  signed [2:0] v25_11_fu_2545_p11;
wire  signed [2:0] v25_11_fu_2545_p13;
wire  signed [2:0] v25_11_fu_2545_p15;
wire   [2:0] v25_12_fu_2627_p1;
wire   [2:0] v25_12_fu_2627_p3;
wire   [2:0] v25_12_fu_2627_p5;
wire   [2:0] v25_12_fu_2627_p7;
wire  signed [2:0] v25_12_fu_2627_p9;
wire  signed [2:0] v25_12_fu_2627_p11;
wire  signed [2:0] v25_12_fu_2627_p13;
wire  signed [2:0] v25_12_fu_2627_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 phi_mul_fu_144 = 10'd0;
#0 v23_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_3ns_5ns_7_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 3 ),.din1_WIDTH( 5 ),.dout_WIDTH( 7 ))
mul_3ns_5ns_7_1_1_U140(.din0(mul_ln69_fu_1194_p0),.din1(mul_ln69_fu_1194_p1),.dout(mul_ln69_fu_1194_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1206_p0),.din1(grp_fu_1206_p1),.ce(1'b1),.dout(grp_fu_1206_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1218_p0),.din1(grp_fu_1218_p1),.ce(1'b1),.dout(grp_fu_1218_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1240_p0),.din1(grp_fu_1240_p1),.ce(1'b1),.dout(grp_fu_1240_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U144(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1251_p0),.din1(grp_fu_1251_p1),.ce(1'b1),.dout(grp_fu_1251_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U145(.din0(v25_fu_1298_p2),.din1(v25_fu_1298_p4),.din2(v25_fu_1298_p6),.din3(v25_fu_1298_p8),.din4(v25_fu_1298_p10),.din5(v25_fu_1298_p12),.din6(v25_fu_1298_p14),.din7(v25_fu_1298_p16),.def(v25_fu_1298_p17),.sel(v25_fu_1298_p18),.dout(v25_fu_1298_p19));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U146(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1343_p0),.din1(grp_fu_1343_p1),.ce(1'b1),.dout(grp_fu_1343_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U147(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1354_p0),.din1(grp_fu_1354_p1),.ce(1'b1),.dout(grp_fu_1354_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U148(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1365_p0),.din1(grp_fu_1365_p1),.ce(1'b1),.dout(grp_fu_1365_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1376_p0),.din1(grp_fu_1376_p1),.ce(1'b1),.dout(grp_fu_1376_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1387_p0),.din1(grp_fu_1387_p1),.ce(1'b1),.dout(grp_fu_1387_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1398_p0),.din1(grp_fu_1398_p1),.ce(1'b1),.dout(grp_fu_1398_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1409_p0),.din1(grp_fu_1409_p1),.ce(1'b1),.dout(grp_fu_1409_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U153(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1420_p0),.din1(grp_fu_1420_p1),.ce(1'b1),.dout(grp_fu_1420_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U154(.din0(mul_ln69_1_fu_1449_p0),.din1(mul_ln69_1_fu_1449_p1),.dout(mul_ln69_1_fu_1449_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U155(.din0(mul_ln69_2_fu_1468_p0),.din1(mul_ln69_2_fu_1468_p1),.dout(mul_ln69_2_fu_1468_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U156(.din0(mul_ln69_3_fu_1487_p0),.din1(mul_ln69_3_fu_1487_p1),.dout(mul_ln69_3_fu_1487_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U157(.din0(mul_ln69_4_fu_1506_p0),.din1(mul_ln69_4_fu_1506_p1),.dout(mul_ln69_4_fu_1506_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U158(.din0(mul_ln69_5_fu_1525_p0),.din1(mul_ln69_5_fu_1525_p1),.dout(mul_ln69_5_fu_1525_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U159(.din0(mul_ln69_6_fu_1544_p0),.din1(mul_ln69_6_fu_1544_p1),.dout(mul_ln69_6_fu_1544_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U160(.din0(mul_ln69_7_fu_1563_p0),.din1(mul_ln69_7_fu_1563_p1),.dout(mul_ln69_7_fu_1563_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U161(.din0(mul_ln69_8_fu_1582_p0),.din1(mul_ln69_8_fu_1582_p1),.dout(mul_ln69_8_fu_1582_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U162(.din0(mul_ln69_9_fu_1601_p0),.din1(mul_ln69_9_fu_1601_p1),.dout(mul_ln69_9_fu_1601_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U163(.din0(mul_ln69_10_fu_1620_p0),.din1(mul_ln69_10_fu_1620_p1),.dout(mul_ln69_10_fu_1620_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U164(.din0(mul_ln69_11_fu_1663_p0),.din1(mul_ln69_11_fu_1663_p1),.dout(mul_ln69_11_fu_1663_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U165(.din0(mul_ln69_12_fu_1682_p0),.din1(mul_ln69_12_fu_1682_p1),.dout(mul_ln69_12_fu_1682_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U166(.din0(v25_1_fu_1730_p2),.din1(v25_1_fu_1730_p4),.din2(v25_1_fu_1730_p6),.din3(v25_1_fu_1730_p8),.din4(v25_1_fu_1730_p10),.din5(v25_1_fu_1730_p12),.din6(v25_1_fu_1730_p14),.din7(v25_1_fu_1730_p16),.def(v25_1_fu_1730_p17),.sel(trunc_ln69_1_reg_2897),.dout(v25_1_fu_1730_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U167(.din0(v25_2_fu_1801_p2),.din1(v25_2_fu_1801_p4),.din2(v25_2_fu_1801_p6),.din3(v25_2_fu_1801_p8),.din4(v25_2_fu_1801_p10),.din5(v25_2_fu_1801_p12),.din6(v25_2_fu_1801_p14),.din7(v25_2_fu_1801_p16),.def(v25_2_fu_1801_p17),.sel(trunc_ln69_2_reg_2902),.dout(v25_2_fu_1801_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U168(.din0(v25_3_fu_1896_p2),.din1(v25_3_fu_1896_p4),.din2(v25_3_fu_1896_p6),.din3(v25_3_fu_1896_p8),.din4(v25_3_fu_1896_p10),.din5(v25_3_fu_1896_p12),.din6(v25_3_fu_1896_p14),.din7(v25_3_fu_1896_p16),.def(v25_3_fu_1896_p17),.sel(trunc_ln69_3_reg_2912),.dout(v25_3_fu_1896_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U169(.din0(v25_4_fu_1967_p2),.din1(v25_4_fu_1967_p4),.din2(v25_4_fu_1967_p6),.din3(v25_4_fu_1967_p8),.din4(v25_4_fu_1967_p10),.din5(v25_4_fu_1967_p12),.din6(v25_4_fu_1967_p14),.din7(v25_4_fu_1967_p16),.def(v25_4_fu_1967_p17),.sel(trunc_ln69_4_reg_2917),.dout(v25_4_fu_1967_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U170(.din0(v25_5_fu_2050_p2),.din1(v25_5_fu_2050_p4),.din2(v25_5_fu_2050_p6),.din3(v25_5_fu_2050_p8),.din4(v25_5_fu_2050_p10),.din5(v25_5_fu_2050_p12),.din6(v25_5_fu_2050_p14),.din7(v25_5_fu_2050_p16),.def(v25_5_fu_2050_p17),.sel(trunc_ln69_5_reg_2922),.dout(v25_5_fu_2050_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U171(.din0(v25_6_fu_2144_p2),.din1(v25_6_fu_2144_p4),.din2(v25_6_fu_2144_p6),.din3(v25_6_fu_2144_p8),.din4(v25_6_fu_2144_p10),.din5(v25_6_fu_2144_p12),.din6(v25_6_fu_2144_p14),.din7(v25_6_fu_2144_p16),.def(v25_6_fu_2144_p17),.sel(trunc_ln69_6_reg_2927),.dout(v25_6_fu_2144_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U172(.din0(v25_7_fu_2215_p2),.din1(v25_7_fu_2215_p4),.din2(v25_7_fu_2215_p6),.din3(v25_7_fu_2215_p8),.din4(v25_7_fu_2215_p10),.din5(v25_7_fu_2215_p12),.din6(v25_7_fu_2215_p14),.din7(v25_7_fu_2215_p16),.def(v25_7_fu_2215_p17),.sel(trunc_ln69_7_reg_2932),.dout(v25_7_fu_2215_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U173(.din0(v25_8_fu_2309_p2),.din1(v25_8_fu_2309_p4),.din2(v25_8_fu_2309_p6),.din3(v25_8_fu_2309_p8),.din4(v25_8_fu_2309_p10),.din5(v25_8_fu_2309_p12),.din6(v25_8_fu_2309_p14),.din7(v25_8_fu_2309_p16),.def(v25_8_fu_2309_p17),.sel(trunc_ln69_8_reg_2937),.dout(v25_8_fu_2309_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U174(.din0(v25_9_fu_2380_p2),.din1(v25_9_fu_2380_p4),.din2(v25_9_fu_2380_p6),.din3(v25_9_fu_2380_p8),.din4(v25_9_fu_2380_p10),.din5(v25_9_fu_2380_p12),.din6(v25_9_fu_2380_p14),.din7(v25_9_fu_2380_p16),.def(v25_9_fu_2380_p17),.sel(trunc_ln69_9_reg_2942),.dout(v25_9_fu_2380_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U175(.din0(v25_10_fu_2474_p2),.din1(v25_10_fu_2474_p4),.din2(v25_10_fu_2474_p6),.din3(v25_10_fu_2474_p8),.din4(v25_10_fu_2474_p10),.din5(v25_10_fu_2474_p12),.din6(v25_10_fu_2474_p14),.din7(v25_10_fu_2474_p16),.def(v25_10_fu_2474_p17),.sel(trunc_ln69_s_reg_2947),.dout(v25_10_fu_2474_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U176(.din0(v25_11_fu_2545_p2),.din1(v25_11_fu_2545_p4),.din2(v25_11_fu_2545_p6),.din3(v25_11_fu_2545_p8),.din4(v25_11_fu_2545_p10),.din5(v25_11_fu_2545_p12),.din6(v25_11_fu_2545_p14),.din7(v25_11_fu_2545_p16),.def(v25_11_fu_2545_p17),.sel(trunc_ln69_10_reg_3032),.dout(v25_11_fu_2545_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U177(.din0(v25_12_fu_2627_p2),.din1(v25_12_fu_2627_p4),.din2(v25_12_fu_2627_p6),.din3(v25_12_fu_2627_p8),.din4(v25_12_fu_2627_p10),.din5(v25_12_fu_2627_p12),.din6(v25_12_fu_2627_p14),.din7(v25_12_fu_2627_p16),.def(v25_12_fu_2627_p17),.sel(trunc_ln69_11_reg_3037),.dout(v25_12_fu_2627_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter17 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        phi_mul_fu_144 <= 10'd0;
    end else if (((icmp_ln66_reg_2756 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        phi_mul_fu_144 <= add_ln69_12_fu_1431_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        v23_fu_148 <= 7'd0;
    end else if (((icmp_ln66_reg_2756 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v23_fu_148 <= add_ln66_fu_1426_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln69_10_reg_2885 <= add_ln69_10_fu_1404_p2;
        add_ln69_10_reg_2885_pp0_iter1_reg <= add_ln69_10_reg_2885;
        add_ln69_11_reg_2891 <= add_ln69_11_fu_1415_p2;
        add_ln69_11_reg_2891_pp0_iter1_reg <= add_ln69_11_reg_2891;
        trunc_ln69_9_reg_2942 <= {{mul_ln69_9_fu_1601_p2[19:17]}};
        trunc_ln69_s_reg_2947 <= {{mul_ln69_10_fu_1620_p2[19:17]}};
        v25_10_reg_3472 <= v25_10_fu_2474_p19;
        v25_11_reg_3477 <= v25_11_fu_2545_p19;
        v27_10_reg_3572_pp0_iter10_reg <= v27_10_reg_3572_pp0_iter9_reg;
        v27_10_reg_3572_pp0_iter11_reg <= v27_10_reg_3572_pp0_iter10_reg;
        v27_10_reg_3572_pp0_iter12_reg <= v27_10_reg_3572_pp0_iter11_reg;
        v27_10_reg_3572_pp0_iter4_reg <= v27_10_reg_3572;
        v27_10_reg_3572_pp0_iter5_reg <= v27_10_reg_3572_pp0_iter4_reg;
        v27_10_reg_3572_pp0_iter6_reg <= v27_10_reg_3572_pp0_iter5_reg;
        v27_10_reg_3572_pp0_iter7_reg <= v27_10_reg_3572_pp0_iter6_reg;
        v27_10_reg_3572_pp0_iter8_reg <= v27_10_reg_3572_pp0_iter7_reg;
        v27_10_reg_3572_pp0_iter9_reg <= v27_10_reg_3572_pp0_iter8_reg;
        v27_11_reg_3577_pp0_iter10_reg <= v27_11_reg_3577_pp0_iter9_reg;
        v27_11_reg_3577_pp0_iter11_reg <= v27_11_reg_3577_pp0_iter10_reg;
        v27_11_reg_3577_pp0_iter12_reg <= v27_11_reg_3577_pp0_iter11_reg;
        v27_11_reg_3577_pp0_iter13_reg <= v27_11_reg_3577_pp0_iter12_reg;
        v27_11_reg_3577_pp0_iter4_reg <= v27_11_reg_3577;
        v27_11_reg_3577_pp0_iter5_reg <= v27_11_reg_3577_pp0_iter4_reg;
        v27_11_reg_3577_pp0_iter6_reg <= v27_11_reg_3577_pp0_iter5_reg;
        v27_11_reg_3577_pp0_iter7_reg <= v27_11_reg_3577_pp0_iter6_reg;
        v27_11_reg_3577_pp0_iter8_reg <= v27_11_reg_3577_pp0_iter7_reg;
        v27_11_reg_3577_pp0_iter9_reg <= v27_11_reg_3577_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_1_reg_2786 <= add_ln69_1_fu_1212_p2;
        add_ln69_1_reg_2786_pp0_iter1_reg <= add_ln69_1_reg_2786;
        add_ln69_reg_2780 <= add_ln69_fu_1200_p2;
        add_ln69_reg_2780_pp0_iter1_reg <= add_ln69_reg_2780;
        icmp_ln66_reg_2756 <= icmp_ln66_fu_1177_p2;
        icmp_ln66_reg_2756_pp0_iter10_reg <= icmp_ln66_reg_2756_pp0_iter9_reg;
        icmp_ln66_reg_2756_pp0_iter11_reg <= icmp_ln66_reg_2756_pp0_iter10_reg;
        icmp_ln66_reg_2756_pp0_iter12_reg <= icmp_ln66_reg_2756_pp0_iter11_reg;
        icmp_ln66_reg_2756_pp0_iter13_reg <= icmp_ln66_reg_2756_pp0_iter12_reg;
        icmp_ln66_reg_2756_pp0_iter14_reg <= icmp_ln66_reg_2756_pp0_iter13_reg;
        icmp_ln66_reg_2756_pp0_iter15_reg <= icmp_ln66_reg_2756_pp0_iter14_reg;
        icmp_ln66_reg_2756_pp0_iter1_reg <= icmp_ln66_reg_2756;
        icmp_ln66_reg_2756_pp0_iter2_reg <= icmp_ln66_reg_2756_pp0_iter1_reg;
        icmp_ln66_reg_2756_pp0_iter3_reg <= icmp_ln66_reg_2756_pp0_iter2_reg;
        icmp_ln66_reg_2756_pp0_iter4_reg <= icmp_ln66_reg_2756_pp0_iter3_reg;
        icmp_ln66_reg_2756_pp0_iter5_reg <= icmp_ln66_reg_2756_pp0_iter4_reg;
        icmp_ln66_reg_2756_pp0_iter6_reg <= icmp_ln66_reg_2756_pp0_iter5_reg;
        icmp_ln66_reg_2756_pp0_iter7_reg <= icmp_ln66_reg_2756_pp0_iter6_reg;
        icmp_ln66_reg_2756_pp0_iter8_reg <= icmp_ln66_reg_2756_pp0_iter7_reg;
        icmp_ln66_reg_2756_pp0_iter9_reg <= icmp_ln66_reg_2756_pp0_iter8_reg;
        mul_ln69_reg_2775 <= mul_ln69_fu_1194_p2;
        phi_mul_load_reg_2760 <= ap_sig_allocacmp_phi_mul_load;
        v23_1_reg_2749 <= ap_sig_allocacmp_v23_1;
        v23_1_reg_2749_pp0_iter10_reg <= v23_1_reg_2749_pp0_iter9_reg;
        v23_1_reg_2749_pp0_iter11_reg <= v23_1_reg_2749_pp0_iter10_reg;
        v23_1_reg_2749_pp0_iter12_reg <= v23_1_reg_2749_pp0_iter11_reg;
        v23_1_reg_2749_pp0_iter13_reg <= v23_1_reg_2749_pp0_iter12_reg;
        v23_1_reg_2749_pp0_iter14_reg <= v23_1_reg_2749_pp0_iter13_reg;
        v23_1_reg_2749_pp0_iter15_reg <= v23_1_reg_2749_pp0_iter14_reg;
        v23_1_reg_2749_pp0_iter16_reg <= v23_1_reg_2749_pp0_iter15_reg;
        v23_1_reg_2749_pp0_iter1_reg <= v23_1_reg_2749;
        v23_1_reg_2749_pp0_iter2_reg <= v23_1_reg_2749_pp0_iter1_reg;
        v23_1_reg_2749_pp0_iter3_reg <= v23_1_reg_2749_pp0_iter2_reg;
        v23_1_reg_2749_pp0_iter4_reg <= v23_1_reg_2749_pp0_iter3_reg;
        v23_1_reg_2749_pp0_iter5_reg <= v23_1_reg_2749_pp0_iter4_reg;
        v23_1_reg_2749_pp0_iter6_reg <= v23_1_reg_2749_pp0_iter5_reg;
        v23_1_reg_2749_pp0_iter7_reg <= v23_1_reg_2749_pp0_iter6_reg;
        v23_1_reg_2749_pp0_iter8_reg <= v23_1_reg_2749_pp0_iter7_reg;
        v23_1_reg_2749_pp0_iter9_reg <= v23_1_reg_2749_pp0_iter8_reg;
        v25_1_reg_3042 <= v25_1_fu_1730_p19;
        v25_2_reg_3047 <= v25_2_fu_1801_p19;
        v27_2_reg_3532_pp0_iter4_reg <= v27_2_reg_3532;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_2_reg_2832 <= add_ln69_2_fu_1235_p2;
        add_ln69_2_reg_2832_pp0_iter1_reg <= add_ln69_2_reg_2832;
        add_ln69_3_reg_2838 <= add_ln69_3_fu_1246_p2;
        add_ln69_3_reg_2838_pp0_iter1_reg <= add_ln69_3_reg_2838;
        trunc_ln69_1_reg_2897 <= {{mul_ln69_1_fu_1449_p2[19:17]}};
        trunc_ln69_2_reg_2902 <= {{mul_ln69_2_fu_1468_p2[19:17]}};
        urem_ln69_5_reg_3182 <= grp_fu_1354_p2;
        v25_3_reg_3132 <= v25_3_fu_1896_p19;
        v25_4_reg_3137 <= v25_4_fu_1967_p19;
        v27_3_reg_3537_pp0_iter4_reg <= v27_3_reg_3537;
        v27_3_reg_3537_pp0_iter5_reg <= v27_3_reg_3537_pp0_iter4_reg;
        v27_4_reg_3542_pp0_iter4_reg <= v27_4_reg_3542;
        v27_4_reg_3542_pp0_iter5_reg <= v27_4_reg_3542_pp0_iter4_reg;
        v27_4_reg_3542_pp0_iter6_reg <= v27_4_reg_3542_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln69_4_reg_2849 <= add_ln69_4_fu_1338_p2;
        add_ln69_4_reg_2849_pp0_iter1_reg <= add_ln69_4_reg_2849;
        add_ln69_5_reg_2855 <= add_ln69_5_fu_1349_p2;
        add_ln69_5_reg_2855_pp0_iter1_reg <= add_ln69_5_reg_2855;
        trunc_ln69_3_reg_2912 <= {{mul_ln69_3_fu_1487_p2[19:17]}};
        trunc_ln69_4_reg_2917 <= {{mul_ln69_4_fu_1506_p2[19:17]}};
        urem_ln69_7_reg_3272 <= grp_fu_1376_p2;
        v25_5_reg_3187 <= v25_5_fu_2050_p19;
        v25_reg_2844 <= v25_fu_1298_p19;
        v27_5_reg_3547_pp0_iter4_reg <= v27_5_reg_3547;
        v27_5_reg_3547_pp0_iter5_reg <= v27_5_reg_3547_pp0_iter4_reg;
        v27_5_reg_3547_pp0_iter6_reg <= v27_5_reg_3547_pp0_iter5_reg;
        v27_5_reg_3547_pp0_iter7_reg <= v27_5_reg_3547_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_6_reg_2861 <= add_ln69_6_fu_1360_p2;
        add_ln69_6_reg_2861_pp0_iter1_reg <= add_ln69_6_reg_2861;
        add_ln69_7_reg_2867 <= add_ln69_7_fu_1371_p2;
        add_ln69_7_reg_2867_pp0_iter1_reg <= add_ln69_7_reg_2867;
        trunc_ln69_5_reg_2922 <= {{mul_ln69_5_fu_1525_p2[19:17]}};
        trunc_ln69_6_reg_2927 <= {{mul_ln69_6_fu_1544_p2[19:17]}};
        urem_ln69_9_reg_3372 <= grp_fu_1398_p2;
        v25_6_reg_3282 <= v25_6_fu_2144_p19;
        v25_7_reg_3287 <= v25_7_fu_2215_p19;
        v27_6_reg_3552_pp0_iter4_reg <= v27_6_reg_3552;
        v27_6_reg_3552_pp0_iter5_reg <= v27_6_reg_3552_pp0_iter4_reg;
        v27_6_reg_3552_pp0_iter6_reg <= v27_6_reg_3552_pp0_iter5_reg;
        v27_6_reg_3552_pp0_iter7_reg <= v27_6_reg_3552_pp0_iter6_reg;
        v27_6_reg_3552_pp0_iter8_reg <= v27_6_reg_3552_pp0_iter7_reg;
        v27_7_reg_3557_pp0_iter4_reg <= v27_7_reg_3557;
        v27_7_reg_3557_pp0_iter5_reg <= v27_7_reg_3557_pp0_iter4_reg;
        v27_7_reg_3557_pp0_iter6_reg <= v27_7_reg_3557_pp0_iter5_reg;
        v27_7_reg_3557_pp0_iter7_reg <= v27_7_reg_3557_pp0_iter6_reg;
        v27_7_reg_3557_pp0_iter8_reg <= v27_7_reg_3557_pp0_iter7_reg;
        v27_7_reg_3557_pp0_iter9_reg <= v27_7_reg_3557_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln69_8_reg_2873 <= add_ln69_8_fu_1382_p2;
        add_ln69_8_reg_2873_pp0_iter1_reg <= add_ln69_8_reg_2873;
        add_ln69_9_reg_2879 <= add_ln69_9_fu_1393_p2;
        add_ln69_9_reg_2879_pp0_iter1_reg <= add_ln69_9_reg_2879;
        trunc_ln69_7_reg_2932 <= {{mul_ln69_7_fu_1563_p2[19:17]}};
        trunc_ln69_8_reg_2937 <= {{mul_ln69_8_fu_1582_p2[19:17]}};
        urem_ln69_11_reg_3467 <= grp_fu_1420_p2;
        v25_8_reg_3377 <= v25_8_fu_2309_p19;
        v25_9_reg_3382 <= v25_9_fu_2380_p19;
        v27_8_reg_3562_pp0_iter10_reg <= v27_8_reg_3562_pp0_iter9_reg;
        v27_8_reg_3562_pp0_iter4_reg <= v27_8_reg_3562;
        v27_8_reg_3562_pp0_iter5_reg <= v27_8_reg_3562_pp0_iter4_reg;
        v27_8_reg_3562_pp0_iter6_reg <= v27_8_reg_3562_pp0_iter5_reg;
        v27_8_reg_3562_pp0_iter7_reg <= v27_8_reg_3562_pp0_iter6_reg;
        v27_8_reg_3562_pp0_iter8_reg <= v27_8_reg_3562_pp0_iter7_reg;
        v27_8_reg_3562_pp0_iter9_reg <= v27_8_reg_3562_pp0_iter8_reg;
        v27_9_reg_3567_pp0_iter10_reg <= v27_9_reg_3567_pp0_iter9_reg;
        v27_9_reg_3567_pp0_iter11_reg <= v27_9_reg_3567_pp0_iter10_reg;
        v27_9_reg_3567_pp0_iter4_reg <= v27_9_reg_3567;
        v27_9_reg_3567_pp0_iter5_reg <= v27_9_reg_3567_pp0_iter4_reg;
        v27_9_reg_3567_pp0_iter6_reg <= v27_9_reg_3567_pp0_iter5_reg;
        v27_9_reg_3567_pp0_iter7_reg <= v27_9_reg_3567_pp0_iter6_reg;
        v27_9_reg_3567_pp0_iter8_reg <= v27_9_reg_3567_pp0_iter7_reg;
        v27_9_reg_3567_pp0_iter9_reg <= v27_9_reg_3567_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln69_10_reg_3032 <= {{mul_ln69_11_fu_1663_p2[19:17]}};
        trunc_ln69_11_reg_3037 <= {{mul_ln69_12_fu_1682_p2[19:17]}};
        v25_12_reg_3522 <= v25_12_fu_2627_p19;
        v27_12_reg_3582_pp0_iter10_reg <= v27_12_reg_3582_pp0_iter9_reg;
        v27_12_reg_3582_pp0_iter11_reg <= v27_12_reg_3582_pp0_iter10_reg;
        v27_12_reg_3582_pp0_iter12_reg <= v27_12_reg_3582_pp0_iter11_reg;
        v27_12_reg_3582_pp0_iter13_reg <= v27_12_reg_3582_pp0_iter12_reg;
        v27_12_reg_3582_pp0_iter14_reg <= v27_12_reg_3582_pp0_iter13_reg;
        v27_12_reg_3582_pp0_iter4_reg <= v27_12_reg_3582;
        v27_12_reg_3582_pp0_iter5_reg <= v27_12_reg_3582_pp0_iter4_reg;
        v27_12_reg_3582_pp0_iter6_reg <= v27_12_reg_3582_pp0_iter5_reg;
        v27_12_reg_3582_pp0_iter7_reg <= v27_12_reg_3582_pp0_iter6_reg;
        v27_12_reg_3582_pp0_iter8_reg <= v27_12_reg_3582_pp0_iter7_reg;
        v27_12_reg_3582_pp0_iter9_reg <= v27_12_reg_3582_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_10_reg_3572 <= grp_fu_34226_p_dout0;
        v27_11_reg_3577 <= grp_fu_34230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_12_reg_3582 <= grp_fu_34226_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_1_reg_3527 <= grp_fu_34226_p_dout0;
        v27_2_reg_3532 <= grp_fu_34230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_3_reg_3537 <= grp_fu_34226_p_dout0;
        v27_4_reg_3542 <= grp_fu_34230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_5_reg_3547 <= grp_fu_34230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_3552 <= grp_fu_34226_p_dout0;
        v27_7_reg_3557 <= grp_fu_34230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_8_reg_3562 <= grp_fu_34226_p_dout0;
        v27_9_reg_3567 <= grp_fu_34230_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_reg_2907 <= grp_fu_34226_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_13_reg_3277 <= grp_fu_34218_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_14_reg_3587 <= grp_fu_34218_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_15_reg_3592 <= grp_fu_34218_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_16_reg_3597 <= grp_fu_34222_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_17_reg_3602 <= grp_fu_34218_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_18_reg_3607 <= grp_fu_34218_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_19_reg_3612 <= grp_fu_34218_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_20_reg_3617 <= grp_fu_34218_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_21_reg_3622 <= grp_fu_34222_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_22_reg_3627 <= grp_fu_34222_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_23_reg_3632 <= grp_fu_34222_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_24_reg_3637 <= grp_fu_34222_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_reg_3642 <= grp_fu_34222_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_2756 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln66_reg_2756_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to15 = 1'b1;
    end else begin
        ap_idle_pp0_0to15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to17 = 1'b1;
    end else begin
        ap_idle_pp0_1to17 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_phi_mul_load = 10'd0;
    end else begin
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_144;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1147_p0 = v29_19_reg_3612;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1147_p0 = v29_18_reg_3607;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1147_p0 = v29_17_reg_3602;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1147_p0 = v29_16_reg_3597;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1147_p0 = v29_14_reg_3587;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1147_p0 = v29_13_reg_3277;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1147_p0 = v27_reg_2907;
    end else begin
        grp_fu_1147_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1147_p1 = v27_7_reg_3557_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1147_p1 = v27_6_reg_3552_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1147_p1 = v27_5_reg_3547_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1147_p1 = v27_4_reg_3542_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1147_p1 = v27_2_reg_3532_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1147_p1 = v27_1_reg_3527;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1147_p1 = 64'd0;
    end else begin
        grp_fu_1147_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1152_p0 = v29_24_reg_3637;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1152_p0 = v29_23_reg_3632;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1152_p0 = v29_22_reg_3627;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1152_p0 = v29_21_reg_3622;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1152_p0 = v29_20_reg_3617;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1152_p0 = v29_15_reg_3592;
    end else begin
        grp_fu_1152_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1152_p1 = v27_12_reg_3582_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1152_p1 = v27_11_reg_3577_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1152_p1 = v27_10_reg_3572_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1152_p1 = v27_9_reg_3567_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1152_p1 = v27_8_reg_3562_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1152_p1 = v27_3_reg_3537_pp0_iter5_reg;
    end else begin
        grp_fu_1152_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1156_p0 = v25_12_reg_3522;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1156_p0 = v25_10_reg_3472;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1156_p0 = v25_8_reg_3377;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1156_p0 = v25_6_reg_3282;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1156_p0 = v25_3_reg_3132;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1156_p0 = v25_1_reg_3042;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1156_p0 = v25_reg_2844;
    end else begin
        grp_fu_1156_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1156_p1 = v26_11;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1156_p1 = v26_12;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1156_p1 = v26_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1156_p1 = v26_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1156_p1 = v26_3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1156_p1 = v26_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1156_p1 = v26;
    end else begin
        grp_fu_1156_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1160_p0 = v25_11_reg_3477;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1160_p0 = v25_9_reg_3382;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1160_p0 = v25_7_reg_3287;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1160_p0 = v25_5_reg_3187;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1160_p0 = v25_4_reg_3137;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1160_p0 = v25_2_reg_3047;
        end else begin
            grp_fu_1160_p0 = 'bx;
        end
    end else begin
        grp_fu_1160_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1160_p1 = v26_10;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1160_p1 = v26_9;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1160_p1 = v26_7;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1160_p1 = v26_5;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1160_p1 = v26_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1160_p1 = v26_2;
        end else begin
            grp_fu_1160_p1 = 'bx;
        end
    end else begin
        grp_fu_1160_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_0_address0_local = zext_ln69_14_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address0_local = zext_ln69_13_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln69_11_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln69_9_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln69_7_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln69_6_fu_1852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address0_local = zext_ln69_2_fu_1636_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address1_local = zext_ln69_12_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln69_10_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln69_8_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln69_5_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address1_local = zext_ln69_4_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln69_1_fu_1224_p1;
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_1_address0_local = zext_ln69_14_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address0_local = zext_ln69_13_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln69_11_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln69_9_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln69_7_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln69_6_fu_1852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address0_local = zext_ln69_2_fu_1636_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address1_local = zext_ln69_12_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln69_10_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln69_8_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln69_5_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address1_local = zext_ln69_4_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln69_1_fu_1224_p1;
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_2_address0_local = zext_ln69_14_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address0_local = zext_ln69_13_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln69_11_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln69_9_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln69_7_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln69_6_fu_1852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_2_address0_local = zext_ln69_2_fu_1636_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address1_local = zext_ln69_12_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln69_10_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln69_8_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln69_5_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_2_address1_local = zext_ln69_4_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln69_1_fu_1224_p1;
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_3_address0_local = zext_ln69_14_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address0_local = zext_ln69_13_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln69_11_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln69_9_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln69_7_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln69_6_fu_1852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_3_address0_local = zext_ln69_2_fu_1636_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address1_local = zext_ln69_12_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln69_10_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln69_8_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln69_5_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_3_address1_local = zext_ln69_4_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln69_1_fu_1224_p1;
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_4_address0_local = zext_ln69_14_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_4_address0_local = zext_ln69_13_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address0_local = zext_ln69_11_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_4_address0_local = zext_ln69_9_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address0_local = zext_ln69_7_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address0_local = zext_ln69_6_fu_1852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_4_address0_local = zext_ln69_2_fu_1636_p1;
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_4_address1_local = zext_ln69_12_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address1_local = zext_ln69_10_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_4_address1_local = zext_ln69_8_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address1_local = zext_ln69_5_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_4_address1_local = zext_ln69_4_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address1_local = zext_ln69_1_fu_1224_p1;
    end else begin
        v0_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_4_ce1_local = 1'b1;
    end else begin
        v0_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_5_address0_local = zext_ln69_14_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_5_address0_local = zext_ln69_13_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address0_local = zext_ln69_11_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_5_address0_local = zext_ln69_9_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address0_local = zext_ln69_7_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address0_local = zext_ln69_6_fu_1852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_5_address0_local = zext_ln69_2_fu_1636_p1;
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_5_address1_local = zext_ln69_12_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address1_local = zext_ln69_10_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_5_address1_local = zext_ln69_8_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address1_local = zext_ln69_5_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_5_address1_local = zext_ln69_4_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address1_local = zext_ln69_1_fu_1224_p1;
    end else begin
        v0_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_5_ce1_local = 1'b1;
    end else begin
        v0_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_6_address0_local = zext_ln69_14_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_6_address0_local = zext_ln69_13_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address0_local = zext_ln69_11_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_6_address0_local = zext_ln69_9_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address0_local = zext_ln69_7_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address0_local = zext_ln69_6_fu_1852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_6_address0_local = zext_ln69_2_fu_1636_p1;
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_6_address1_local = zext_ln69_12_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address1_local = zext_ln69_10_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_6_address1_local = zext_ln69_8_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address1_local = zext_ln69_5_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_6_address1_local = zext_ln69_4_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address1_local = zext_ln69_1_fu_1224_p1;
    end else begin
        v0_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_6_ce1_local = 1'b1;
    end else begin
        v0_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_7_address0_local = zext_ln69_14_fu_2584_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_7_address0_local = zext_ln69_13_fu_2430_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address0_local = zext_ln69_11_fu_2265_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_7_address0_local = zext_ln69_9_fu_2100_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address0_local = zext_ln69_7_fu_2006_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address0_local = zext_ln69_6_fu_1852_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_7_address0_local = zext_ln69_2_fu_1636_p1;
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_7_address1_local = zext_ln69_12_fu_2419_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address1_local = zext_ln69_10_fu_2254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_7_address1_local = zext_ln69_8_fu_2089_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address1_local = zext_ln69_5_fu_1840_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_7_address1_local = zext_ln69_4_fu_1648_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address1_local = zext_ln69_1_fu_1224_p1;
    end else begin
        v0_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_7_ce1_local = 1'b1;
    end else begin
        v0_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to15 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter16_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to17 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln66_fu_1426_p2 = (v23_1_reg_2749 + 7'd1);
assign add_ln69_10_fu_1404_p2 = (phi_mul_load_reg_2760 + 10'd11);
assign add_ln69_11_fu_1415_p2 = (phi_mul_load_reg_2760 + 10'd12);
assign add_ln69_12_fu_1431_p2 = (phi_mul_load_reg_2760 + 10'd13);
assign add_ln69_1_fu_1212_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign add_ln69_2_fu_1235_p2 = (phi_mul_load_reg_2760 + 10'd3);
assign add_ln69_3_fu_1246_p2 = (phi_mul_load_reg_2760 + 10'd4);
assign add_ln69_4_fu_1338_p2 = (phi_mul_load_reg_2760 + 10'd5);
assign add_ln69_5_fu_1349_p2 = (phi_mul_load_reg_2760 + 10'd6);
assign add_ln69_6_fu_1360_p2 = (phi_mul_load_reg_2760 + 10'd7);
assign add_ln69_7_fu_1371_p2 = (phi_mul_load_reg_2760 + 10'd8);
assign add_ln69_8_fu_1382_p2 = (phi_mul_load_reg_2760 + 10'd9);
assign add_ln69_9_fu_1393_p2 = (phi_mul_load_reg_2760 + 10'd10);
assign add_ln69_fu_1200_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign grp_fu_1206_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign grp_fu_1206_p1 = 10'd104;
assign grp_fu_1218_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign grp_fu_1218_p1 = 10'd104;
assign grp_fu_1240_p0 = (phi_mul_load_reg_2760 + 10'd3);
assign grp_fu_1240_p1 = 10'd104;
assign grp_fu_1251_p0 = (phi_mul_load_reg_2760 + 10'd4);
assign grp_fu_1251_p1 = 10'd104;
assign grp_fu_1343_p0 = (phi_mul_load_reg_2760 + 10'd5);
assign grp_fu_1343_p1 = 10'd104;
assign grp_fu_1354_p0 = (phi_mul_load_reg_2760 + 10'd6);
assign grp_fu_1354_p1 = 10'd104;
assign grp_fu_1365_p0 = (phi_mul_load_reg_2760 + 10'd7);
assign grp_fu_1365_p1 = 10'd104;
assign grp_fu_1376_p0 = (phi_mul_load_reg_2760 + 10'd8);
assign grp_fu_1376_p1 = 10'd104;
assign grp_fu_1387_p0 = (phi_mul_load_reg_2760 + 10'd9);
assign grp_fu_1387_p1 = 10'd104;
assign grp_fu_1398_p0 = (phi_mul_load_reg_2760 + 10'd10);
assign grp_fu_1398_p1 = 10'd104;
assign grp_fu_1409_p0 = (phi_mul_load_reg_2760 + 10'd11);
assign grp_fu_1409_p1 = 10'd104;
assign grp_fu_1420_p0 = (phi_mul_load_reg_2760 + 10'd12);
assign grp_fu_1420_p1 = 10'd104;
assign grp_fu_34218_p_ce = 1'b1;
assign grp_fu_34218_p_din0 = grp_fu_1147_p0;
assign grp_fu_34218_p_din1 = grp_fu_1147_p1;
assign grp_fu_34218_p_opcode = 2'd0;
assign grp_fu_34222_p_ce = 1'b1;
assign grp_fu_34222_p_din0 = grp_fu_1152_p0;
assign grp_fu_34222_p_din1 = grp_fu_1152_p1;
assign grp_fu_34222_p_opcode = 2'd0;
assign grp_fu_34226_p_ce = 1'b1;
assign grp_fu_34226_p_din0 = grp_fu_1156_p0;
assign grp_fu_34226_p_din1 = grp_fu_1156_p1;
assign grp_fu_34230_p_ce = 1'b1;
assign grp_fu_34230_p_din0 = grp_fu_1160_p0;
assign grp_fu_34230_p_din1 = grp_fu_1160_p1;
assign icmp_ln66_fu_1177_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln69_10_fu_1620_p0 = mul_ln69_10_fu_1620_p00;
assign mul_ln69_10_fu_1620_p00 = add_ln69_9_reg_2879_pp0_iter1_reg;
assign mul_ln69_10_fu_1620_p1 = 21'd1261;
assign mul_ln69_11_fu_1663_p0 = mul_ln69_11_fu_1663_p00;
assign mul_ln69_11_fu_1663_p00 = add_ln69_10_reg_2885_pp0_iter1_reg;
assign mul_ln69_11_fu_1663_p1 = 21'd1261;
assign mul_ln69_12_fu_1682_p0 = mul_ln69_12_fu_1682_p00;
assign mul_ln69_12_fu_1682_p00 = add_ln69_11_reg_2891_pp0_iter1_reg;
assign mul_ln69_12_fu_1682_p1 = 21'd1261;
assign mul_ln69_1_fu_1449_p0 = mul_ln69_1_fu_1449_p00;
assign mul_ln69_1_fu_1449_p00 = add_ln69_reg_2780_pp0_iter1_reg;
assign mul_ln69_1_fu_1449_p1 = 21'd1261;
assign mul_ln69_2_fu_1468_p0 = mul_ln69_2_fu_1468_p00;
assign mul_ln69_2_fu_1468_p00 = add_ln69_1_reg_2786_pp0_iter1_reg;
assign mul_ln69_2_fu_1468_p1 = 21'd1261;
assign mul_ln69_3_fu_1487_p0 = mul_ln69_3_fu_1487_p00;
assign mul_ln69_3_fu_1487_p00 = add_ln69_2_reg_2832_pp0_iter1_reg;
assign mul_ln69_3_fu_1487_p1 = 21'd1261;
assign mul_ln69_4_fu_1506_p0 = mul_ln69_4_fu_1506_p00;
assign mul_ln69_4_fu_1506_p00 = add_ln69_3_reg_2838_pp0_iter1_reg;
assign mul_ln69_4_fu_1506_p1 = 21'd1261;
assign mul_ln69_5_fu_1525_p0 = mul_ln69_5_fu_1525_p00;
assign mul_ln69_5_fu_1525_p00 = add_ln69_4_reg_2849_pp0_iter1_reg;
assign mul_ln69_5_fu_1525_p1 = 21'd1261;
assign mul_ln69_6_fu_1544_p0 = mul_ln69_6_fu_1544_p00;
assign mul_ln69_6_fu_1544_p00 = add_ln69_5_reg_2855_pp0_iter1_reg;
assign mul_ln69_6_fu_1544_p1 = 21'd1261;
assign mul_ln69_7_fu_1563_p0 = mul_ln69_7_fu_1563_p00;
assign mul_ln69_7_fu_1563_p00 = add_ln69_6_reg_2861_pp0_iter1_reg;
assign mul_ln69_7_fu_1563_p1 = 21'd1261;
assign mul_ln69_8_fu_1582_p0 = mul_ln69_8_fu_1582_p00;
assign mul_ln69_8_fu_1582_p00 = add_ln69_7_reg_2867_pp0_iter1_reg;
assign mul_ln69_8_fu_1582_p1 = 21'd1261;
assign mul_ln69_9_fu_1601_p0 = mul_ln69_9_fu_1601_p00;
assign mul_ln69_9_fu_1601_p00 = add_ln69_8_reg_2873_pp0_iter1_reg;
assign mul_ln69_9_fu_1601_p1 = 21'd1261;
assign mul_ln69_fu_1194_p0 = mul_ln69_fu_1194_p00;
assign mul_ln69_fu_1194_p00 = trunc_ln66_fu_1186_p1;
assign mul_ln69_fu_1194_p1 = 7'd13;
assign trunc_ln66_fu_1186_p1 = ap_sig_allocacmp_v23_1[2:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = v0_2_address1_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = v0_3_address1_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_address1 = v0_4_address1_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_ce1 = v0_4_ce1_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_address1 = v0_5_address1_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_ce1 = v0_5_ce1_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_address1 = v0_6_address1_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_ce1 = v0_6_ce1_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_address1 = v0_7_address1_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_ce1 = v0_7_ce1_local;
assign v20_address0 = zext_ln66_fu_2666_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_3642;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_2474_p10 = v0_4_q1;
assign v25_10_fu_2474_p12 = v0_5_q1;
assign v25_10_fu_2474_p14 = v0_6_q1;
assign v25_10_fu_2474_p16 = v0_7_q1;
assign v25_10_fu_2474_p17 = 'bx;
assign v25_10_fu_2474_p2 = v0_0_q1;
assign v25_10_fu_2474_p4 = v0_1_q1;
assign v25_10_fu_2474_p6 = v0_2_q1;
assign v25_10_fu_2474_p8 = v0_3_q1;
assign v25_11_fu_2545_p10 = v0_4_q0;
assign v25_11_fu_2545_p12 = v0_5_q0;
assign v25_11_fu_2545_p14 = v0_6_q0;
assign v25_11_fu_2545_p16 = v0_7_q0;
assign v25_11_fu_2545_p17 = 'bx;
assign v25_11_fu_2545_p2 = v0_0_q0;
assign v25_11_fu_2545_p4 = v0_1_q0;
assign v25_11_fu_2545_p6 = v0_2_q0;
assign v25_11_fu_2545_p8 = v0_3_q0;
assign v25_12_fu_2627_p10 = v0_4_q0;
assign v25_12_fu_2627_p12 = v0_5_q0;
assign v25_12_fu_2627_p14 = v0_6_q0;
assign v25_12_fu_2627_p16 = v0_7_q0;
assign v25_12_fu_2627_p17 = 'bx;
assign v25_12_fu_2627_p2 = v0_0_q0;
assign v25_12_fu_2627_p4 = v0_1_q0;
assign v25_12_fu_2627_p6 = v0_2_q0;
assign v25_12_fu_2627_p8 = v0_3_q0;
assign v25_1_fu_1730_p10 = v0_4_q0;
assign v25_1_fu_1730_p12 = v0_5_q0;
assign v25_1_fu_1730_p14 = v0_6_q0;
assign v25_1_fu_1730_p16 = v0_7_q0;
assign v25_1_fu_1730_p17 = 'bx;
assign v25_1_fu_1730_p2 = v0_0_q0;
assign v25_1_fu_1730_p4 = v0_1_q0;
assign v25_1_fu_1730_p6 = v0_2_q0;
assign v25_1_fu_1730_p8 = v0_3_q0;
assign v25_2_fu_1801_p10 = v0_4_q1;
assign v25_2_fu_1801_p12 = v0_5_q1;
assign v25_2_fu_1801_p14 = v0_6_q1;
assign v25_2_fu_1801_p16 = v0_7_q1;
assign v25_2_fu_1801_p17 = 'bx;
assign v25_2_fu_1801_p2 = v0_0_q1;
assign v25_2_fu_1801_p4 = v0_1_q1;
assign v25_2_fu_1801_p6 = v0_2_q1;
assign v25_2_fu_1801_p8 = v0_3_q1;
assign v25_3_fu_1896_p10 = v0_4_q1;
assign v25_3_fu_1896_p12 = v0_5_q1;
assign v25_3_fu_1896_p14 = v0_6_q1;
assign v25_3_fu_1896_p16 = v0_7_q1;
assign v25_3_fu_1896_p17 = 'bx;
assign v25_3_fu_1896_p2 = v0_0_q1;
assign v25_3_fu_1896_p4 = v0_1_q1;
assign v25_3_fu_1896_p6 = v0_2_q1;
assign v25_3_fu_1896_p8 = v0_3_q1;
assign v25_4_fu_1967_p10 = v0_4_q0;
assign v25_4_fu_1967_p12 = v0_5_q0;
assign v25_4_fu_1967_p14 = v0_6_q0;
assign v25_4_fu_1967_p16 = v0_7_q0;
assign v25_4_fu_1967_p17 = 'bx;
assign v25_4_fu_1967_p2 = v0_0_q0;
assign v25_4_fu_1967_p4 = v0_1_q0;
assign v25_4_fu_1967_p6 = v0_2_q0;
assign v25_4_fu_1967_p8 = v0_3_q0;
assign v25_5_fu_2050_p10 = v0_4_q0;
assign v25_5_fu_2050_p12 = v0_5_q0;
assign v25_5_fu_2050_p14 = v0_6_q0;
assign v25_5_fu_2050_p16 = v0_7_q0;
assign v25_5_fu_2050_p17 = 'bx;
assign v25_5_fu_2050_p2 = v0_0_q0;
assign v25_5_fu_2050_p4 = v0_1_q0;
assign v25_5_fu_2050_p6 = v0_2_q0;
assign v25_5_fu_2050_p8 = v0_3_q0;
assign v25_6_fu_2144_p10 = v0_4_q1;
assign v25_6_fu_2144_p12 = v0_5_q1;
assign v25_6_fu_2144_p14 = v0_6_q1;
assign v25_6_fu_2144_p16 = v0_7_q1;
assign v25_6_fu_2144_p17 = 'bx;
assign v25_6_fu_2144_p2 = v0_0_q1;
assign v25_6_fu_2144_p4 = v0_1_q1;
assign v25_6_fu_2144_p6 = v0_2_q1;
assign v25_6_fu_2144_p8 = v0_3_q1;
assign v25_7_fu_2215_p10 = v0_4_q0;
assign v25_7_fu_2215_p12 = v0_5_q0;
assign v25_7_fu_2215_p14 = v0_6_q0;
assign v25_7_fu_2215_p16 = v0_7_q0;
assign v25_7_fu_2215_p17 = 'bx;
assign v25_7_fu_2215_p2 = v0_0_q0;
assign v25_7_fu_2215_p4 = v0_1_q0;
assign v25_7_fu_2215_p6 = v0_2_q0;
assign v25_7_fu_2215_p8 = v0_3_q0;
assign v25_8_fu_2309_p10 = v0_4_q1;
assign v25_8_fu_2309_p12 = v0_5_q1;
assign v25_8_fu_2309_p14 = v0_6_q1;
assign v25_8_fu_2309_p16 = v0_7_q1;
assign v25_8_fu_2309_p17 = 'bx;
assign v25_8_fu_2309_p2 = v0_0_q1;
assign v25_8_fu_2309_p4 = v0_1_q1;
assign v25_8_fu_2309_p6 = v0_2_q1;
assign v25_8_fu_2309_p8 = v0_3_q1;
assign v25_9_fu_2380_p10 = v0_4_q0;
assign v25_9_fu_2380_p12 = v0_5_q0;
assign v25_9_fu_2380_p14 = v0_6_q0;
assign v25_9_fu_2380_p16 = v0_7_q0;
assign v25_9_fu_2380_p17 = 'bx;
assign v25_9_fu_2380_p2 = v0_0_q0;
assign v25_9_fu_2380_p4 = v0_1_q0;
assign v25_9_fu_2380_p6 = v0_2_q0;
assign v25_9_fu_2380_p8 = v0_3_q0;
assign v25_fu_1298_p10 = v0_4_q1;
assign v25_fu_1298_p12 = v0_5_q1;
assign v25_fu_1298_p14 = v0_6_q1;
assign v25_fu_1298_p16 = v0_7_q1;
assign v25_fu_1298_p17 = 'bx;
assign v25_fu_1298_p18 = {{v23_1_reg_2749[5:3]}};
assign v25_fu_1298_p2 = v0_0_q1;
assign v25_fu_1298_p4 = v0_1_q1;
assign v25_fu_1298_p6 = v0_2_q1;
assign v25_fu_1298_p8 = v0_3_q1;
assign zext_ln66_fu_2666_p1 = v23_1_reg_2749_pp0_iter16_reg;
assign zext_ln69_10_fu_2254_p1 = urem_ln69_7_reg_3272;
assign zext_ln69_11_fu_2265_p1 = grp_fu_1387_p2;
assign zext_ln69_12_fu_2419_p1 = urem_ln69_9_reg_3372;
assign zext_ln69_13_fu_2430_p1 = grp_fu_1409_p2;
assign zext_ln69_14_fu_2584_p1 = urem_ln69_11_reg_3467;
assign zext_ln69_1_fu_1224_p1 = mul_ln69_reg_2775;
assign zext_ln69_2_fu_1636_p1 = grp_fu_1206_p2;
assign zext_ln69_4_fu_1648_p1 = grp_fu_1218_p2;
assign zext_ln69_5_fu_1840_p1 = grp_fu_1240_p2;
assign zext_ln69_6_fu_1852_p1 = grp_fu_1251_p2;
assign zext_ln69_7_fu_2006_p1 = grp_fu_1343_p2;
assign zext_ln69_8_fu_2089_p1 = urem_ln69_5_reg_3182;
assign zext_ln69_9_fu_2100_p1 = grp_fu_1365_p2;
endmodule 