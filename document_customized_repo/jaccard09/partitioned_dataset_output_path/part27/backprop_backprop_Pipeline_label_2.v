
module backprop_backprop_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_1_address0,v20_1_ce0,v20_1_we0,v20_1_d0,v20_address0,v20_ce0,v20_we0,v20_d0,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,v26,v26_1,v26_2,v26_3,v26_4,v26_5,v26_6,v26_7,v26_8,v26_9,v26_10,v26_11,v26_12,grp_fu_6339_p_din0,grp_fu_6339_p_din1,grp_fu_6339_p_opcode,grp_fu_6339_p_dout0,grp_fu_6339_p_ce,grp_fu_6343_p_din0,grp_fu_6343_p_din1,grp_fu_6343_p_opcode,grp_fu_6343_p_dout0,grp_fu_6343_p_ce,grp_fu_6347_p_din0,grp_fu_6347_p_din1,grp_fu_6347_p_dout0,grp_fu_6347_p_ce,grp_fu_6351_p_din0,grp_fu_6351_p_din1,grp_fu_6351_p_dout0,grp_fu_6351_p_ce);  
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
output  [4:0] v20_1_address0;
output   v20_1_ce0;
output   v20_1_we0;
output  [63:0] v20_1_d0;
output  [4:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
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
input  [63:0] v26_10;
input  [63:0] v26_11;
input  [63:0] v26_12;
output  [63:0] grp_fu_6339_p_din0;
output  [63:0] grp_fu_6339_p_din1;
output  [0:0] grp_fu_6339_p_opcode;
input  [63:0] grp_fu_6339_p_dout0;
output   grp_fu_6339_p_ce;
output  [63:0] grp_fu_6343_p_din0;
output  [63:0] grp_fu_6343_p_din1;
output  [0:0] grp_fu_6343_p_opcode;
input  [63:0] grp_fu_6343_p_dout0;
output   grp_fu_6343_p_ce;
output  [63:0] grp_fu_6347_p_din0;
output  [63:0] grp_fu_6347_p_din1;
input  [63:0] grp_fu_6347_p_dout0;
output   grp_fu_6347_p_ce;
output  [63:0] grp_fu_6351_p_din0;
output  [63:0] grp_fu_6351_p_din1;
input  [63:0] grp_fu_6351_p_dout0;
output   grp_fu_6351_p_ce;
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
reg   [0:0] icmp_ln66_reg_2787;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v23_1_reg_2780;
wire   [0:0] icmp_ln66_fu_1194_p2;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter1_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter2_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter3_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter4_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter5_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter6_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter7_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter8_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter9_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter10_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter11_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter12_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter13_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter14_reg;
reg   [0:0] icmp_ln66_reg_2787_pp0_iter15_reg;
reg   [9:0] phi_mul_load_reg_2791;
wire   [0:0] trunc_ln66_1_fu_1207_p1;
reg   [0:0] trunc_ln66_1_reg_2806;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter1_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter2_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter3_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter4_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter5_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter6_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter7_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter8_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter9_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter10_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter11_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter12_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter13_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter14_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter15_reg;
reg   [0:0] trunc_ln66_1_reg_2806_pp0_iter16_reg;
wire   [6:0] mul_ln69_fu_1215_p2;
reg   [6:0] mul_ln69_reg_2810;
wire   [9:0] add_ln69_fu_1221_p2;
reg   [9:0] add_ln69_reg_2815;
reg   [9:0] add_ln69_reg_2815_pp0_iter1_reg;
wire   [9:0] add_ln69_1_fu_1233_p2;
reg   [9:0] add_ln69_1_reg_2821;
reg   [9:0] add_ln69_1_reg_2821_pp0_iter1_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [9:0] add_ln69_2_fu_1256_p2;
reg   [9:0] add_ln69_2_reg_2867;
reg   [9:0] add_ln69_2_reg_2867_pp0_iter1_reg;
wire   [9:0] add_ln69_3_fu_1267_p2;
reg   [9:0] add_ln69_3_reg_2873;
reg   [9:0] add_ln69_3_reg_2873_pp0_iter1_reg;
wire   [63:0] v25_fu_1319_p19;
reg   [63:0] v25_reg_2879;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [9:0] add_ln69_4_fu_1359_p2;
reg   [9:0] add_ln69_4_reg_2884;
reg   [9:0] add_ln69_4_reg_2884_pp0_iter1_reg;
wire   [9:0] add_ln69_5_fu_1370_p2;
reg   [9:0] add_ln69_5_reg_2890;
reg   [9:0] add_ln69_5_reg_2890_pp0_iter1_reg;
wire   [9:0] add_ln69_6_fu_1381_p2;
reg   [9:0] add_ln69_6_reg_2896;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [9:0] add_ln69_6_reg_2896_pp0_iter1_reg;
wire   [9:0] add_ln69_7_fu_1392_p2;
reg   [9:0] add_ln69_7_reg_2902;
reg   [9:0] add_ln69_7_reg_2902_pp0_iter1_reg;
wire   [9:0] add_ln69_8_fu_1403_p2;
reg   [9:0] add_ln69_8_reg_2908;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [9:0] add_ln69_8_reg_2908_pp0_iter1_reg;
wire   [9:0] add_ln69_9_fu_1414_p2;
reg   [9:0] add_ln69_9_reg_2914;
reg   [9:0] add_ln69_9_reg_2914_pp0_iter1_reg;
wire   [9:0] add_ln69_10_fu_1425_p2;
reg   [9:0] add_ln69_10_reg_2920;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [9:0] add_ln69_10_reg_2920_pp0_iter1_reg;
wire   [9:0] add_ln69_11_fu_1436_p2;
reg   [9:0] add_ln69_11_reg_2926;
reg   [9:0] add_ln69_11_reg_2926_pp0_iter1_reg;
reg   [4:0] lshr_ln1_reg_2932;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter1_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter2_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter3_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter4_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter5_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter6_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter7_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter8_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter9_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter10_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter11_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter12_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter13_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter14_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter15_reg;
reg   [4:0] lshr_ln1_reg_2932_pp0_iter16_reg;
reg   [2:0] trunc_ln69_1_reg_2937;
reg   [2:0] trunc_ln69_2_reg_2942;
reg   [63:0] v27_reg_2947;
reg   [2:0] trunc_ln69_3_reg_2952;
reg   [2:0] trunc_ln69_4_reg_2957;
reg   [2:0] trunc_ln69_5_reg_2962;
reg   [2:0] trunc_ln69_6_reg_2967;
reg   [2:0] trunc_ln69_7_reg_2972;
reg   [2:0] trunc_ln69_8_reg_2977;
reg   [2:0] trunc_ln69_9_reg_2982;
reg   [2:0] trunc_ln69_s_reg_2987;
reg   [2:0] trunc_ln69_10_reg_3072;
reg   [2:0] trunc_ln69_11_reg_3077;
wire   [63:0] v25_1_fu_1760_p19;
reg   [63:0] v25_1_reg_3082;
wire   [63:0] v25_2_fu_1831_p19;
reg   [63:0] v25_2_reg_3087;
wire   [63:0] v25_3_fu_1926_p19;
reg   [63:0] v25_3_reg_3172;
wire   [63:0] v25_4_fu_1997_p19;
reg   [63:0] v25_4_reg_3177;
wire   [9:0] grp_fu_1375_p2;
reg   [9:0] urem_ln69_5_reg_3222;
wire   [63:0] v25_5_fu_2080_p19;
reg   [63:0] v25_5_reg_3227;
wire   [9:0] grp_fu_1397_p2;
reg   [9:0] urem_ln69_7_reg_3312;
reg   [63:0] v29_13_reg_3317;
wire   [63:0] v25_6_fu_2174_p19;
reg   [63:0] v25_6_reg_3322;
wire   [63:0] v25_7_fu_2245_p19;
reg   [63:0] v25_7_reg_3327;
wire   [9:0] grp_fu_1419_p2;
reg   [9:0] urem_ln69_9_reg_3412;
wire   [63:0] v25_8_fu_2339_p19;
reg   [63:0] v25_8_reg_3417;
wire   [63:0] v25_9_fu_2410_p19;
reg   [63:0] v25_9_reg_3422;
wire   [9:0] grp_fu_1441_p2;
reg   [9:0] urem_ln69_11_reg_3507;
wire   [63:0] v25_10_fu_2504_p19;
reg   [63:0] v25_10_reg_3512;
wire   [63:0] v25_11_fu_2575_p19;
reg   [63:0] v25_11_reg_3517;
wire   [63:0] v25_12_fu_2657_p19;
reg   [63:0] v25_12_reg_3562;
reg   [63:0] v27_1_reg_3567;
reg   [63:0] v27_2_reg_3572;
reg   [63:0] v27_2_reg_3572_pp0_iter4_reg;
reg   [63:0] v27_3_reg_3577;
reg   [63:0] v27_3_reg_3577_pp0_iter4_reg;
reg   [63:0] v27_3_reg_3577_pp0_iter5_reg;
reg   [63:0] v27_4_reg_3582;
reg   [63:0] v27_4_reg_3582_pp0_iter4_reg;
reg   [63:0] v27_4_reg_3582_pp0_iter5_reg;
reg   [63:0] v27_4_reg_3582_pp0_iter6_reg;
reg   [63:0] v27_5_reg_3587;
reg   [63:0] v27_5_reg_3587_pp0_iter4_reg;
reg   [63:0] v27_5_reg_3587_pp0_iter5_reg;
reg   [63:0] v27_5_reg_3587_pp0_iter6_reg;
reg   [63:0] v27_5_reg_3587_pp0_iter7_reg;
reg   [63:0] v27_6_reg_3592;
reg   [63:0] v27_6_reg_3592_pp0_iter4_reg;
reg   [63:0] v27_6_reg_3592_pp0_iter5_reg;
reg   [63:0] v27_6_reg_3592_pp0_iter6_reg;
reg   [63:0] v27_6_reg_3592_pp0_iter7_reg;
reg   [63:0] v27_6_reg_3592_pp0_iter8_reg;
reg   [63:0] v27_7_reg_3597;
reg   [63:0] v27_7_reg_3597_pp0_iter4_reg;
reg   [63:0] v27_7_reg_3597_pp0_iter5_reg;
reg   [63:0] v27_7_reg_3597_pp0_iter6_reg;
reg   [63:0] v27_7_reg_3597_pp0_iter7_reg;
reg   [63:0] v27_7_reg_3597_pp0_iter8_reg;
reg   [63:0] v27_7_reg_3597_pp0_iter9_reg;
reg   [63:0] v27_8_reg_3602;
reg   [63:0] v27_8_reg_3602_pp0_iter4_reg;
reg   [63:0] v27_8_reg_3602_pp0_iter5_reg;
reg   [63:0] v27_8_reg_3602_pp0_iter6_reg;
reg   [63:0] v27_8_reg_3602_pp0_iter7_reg;
reg   [63:0] v27_8_reg_3602_pp0_iter8_reg;
reg   [63:0] v27_8_reg_3602_pp0_iter9_reg;
reg   [63:0] v27_8_reg_3602_pp0_iter10_reg;
reg   [63:0] v27_9_reg_3607;
reg   [63:0] v27_9_reg_3607_pp0_iter4_reg;
reg   [63:0] v27_9_reg_3607_pp0_iter5_reg;
reg   [63:0] v27_9_reg_3607_pp0_iter6_reg;
reg   [63:0] v27_9_reg_3607_pp0_iter7_reg;
reg   [63:0] v27_9_reg_3607_pp0_iter8_reg;
reg   [63:0] v27_9_reg_3607_pp0_iter9_reg;
reg   [63:0] v27_9_reg_3607_pp0_iter10_reg;
reg   [63:0] v27_9_reg_3607_pp0_iter11_reg;
reg   [63:0] v27_10_reg_3612;
reg   [63:0] v27_10_reg_3612_pp0_iter4_reg;
reg   [63:0] v27_10_reg_3612_pp0_iter5_reg;
reg   [63:0] v27_10_reg_3612_pp0_iter6_reg;
reg   [63:0] v27_10_reg_3612_pp0_iter7_reg;
reg   [63:0] v27_10_reg_3612_pp0_iter8_reg;
reg   [63:0] v27_10_reg_3612_pp0_iter9_reg;
reg   [63:0] v27_10_reg_3612_pp0_iter10_reg;
reg   [63:0] v27_10_reg_3612_pp0_iter11_reg;
reg   [63:0] v27_10_reg_3612_pp0_iter12_reg;
reg   [63:0] v27_11_reg_3617;
reg   [63:0] v27_11_reg_3617_pp0_iter4_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter5_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter6_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter7_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter8_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter9_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter10_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter11_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter12_reg;
reg   [63:0] v27_11_reg_3617_pp0_iter13_reg;
reg   [63:0] v27_12_reg_3622;
reg   [63:0] v27_12_reg_3622_pp0_iter4_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter5_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter6_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter7_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter8_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter9_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter10_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter11_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter12_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter13_reg;
reg   [63:0] v27_12_reg_3622_pp0_iter14_reg;
reg   [63:0] v29_14_reg_3627;
reg   [63:0] v29_15_reg_3632;
reg   [63:0] v29_16_reg_3637;
reg   [63:0] v29_17_reg_3642;
reg   [63:0] v29_18_reg_3647;
reg   [63:0] v29_19_reg_3652;
reg   [63:0] v29_20_reg_3657;
reg   [63:0] v29_21_reg_3662;
reg   [63:0] v29_22_reg_3667;
reg   [63:0] v29_23_reg_3672;
reg   [63:0] v29_24_reg_3677;
reg   [63:0] v29_reg_3682;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln69_1_fu_1245_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln69_2_fu_1666_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln69_4_fu_1678_p1;
wire   [63:0] zext_ln69_5_fu_1870_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln69_6_fu_1882_p1;
wire   [63:0] zext_ln69_7_fu_2036_p1;
wire   [63:0] zext_ln69_8_fu_2119_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln69_9_fu_2130_p1;
wire   [63:0] zext_ln69_10_fu_2284_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln69_11_fu_2295_p1;
wire   [63:0] zext_ln69_12_fu_2449_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln69_13_fu_2460_p1;
wire   [63:0] zext_ln69_14_fu_2614_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln66_fu_2696_p1;
reg   [9:0] phi_mul_fu_148;
wire   [9:0] add_ln69_12_fu_1461_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_phi_mul_load;
reg   [6:0] v23_fu_152;
wire   [6:0] add_ln66_fu_1447_p2;
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
reg    v20_1_we0_local;
reg    v20_1_ce0_local;
reg   [63:0] grp_fu_1164_p0;
reg   [63:0] grp_fu_1164_p1;
reg   [63:0] grp_fu_1169_p0;
reg   [63:0] grp_fu_1169_p1;
reg   [63:0] grp_fu_1173_p0;
reg   [63:0] grp_fu_1173_p1;
reg   [63:0] grp_fu_1177_p0;
reg   [63:0] grp_fu_1177_p1;
wire   [2:0] trunc_ln66_fu_1203_p1;
wire   [2:0] mul_ln69_fu_1215_p0;
wire   [4:0] mul_ln69_fu_1215_p1;
wire   [9:0] grp_fu_1227_p0;
wire   [7:0] grp_fu_1227_p1;
wire   [9:0] grp_fu_1239_p0;
wire   [7:0] grp_fu_1239_p1;
wire   [9:0] grp_fu_1261_p0;
wire   [7:0] grp_fu_1261_p1;
wire   [9:0] grp_fu_1272_p0;
wire   [7:0] grp_fu_1272_p1;
wire   [63:0] v25_fu_1319_p2;
wire   [63:0] v25_fu_1319_p4;
wire   [63:0] v25_fu_1319_p6;
wire   [63:0] v25_fu_1319_p8;
wire   [63:0] v25_fu_1319_p10;
wire   [63:0] v25_fu_1319_p12;
wire   [63:0] v25_fu_1319_p14;
wire   [63:0] v25_fu_1319_p16;
wire   [63:0] v25_fu_1319_p17;
wire   [2:0] v25_fu_1319_p18;
wire   [9:0] grp_fu_1364_p0;
wire   [7:0] grp_fu_1364_p1;
wire   [9:0] grp_fu_1375_p0;
wire   [7:0] grp_fu_1375_p1;
wire   [9:0] grp_fu_1386_p0;
wire   [7:0] grp_fu_1386_p1;
wire   [9:0] grp_fu_1397_p0;
wire   [7:0] grp_fu_1397_p1;
wire   [9:0] grp_fu_1408_p0;
wire   [7:0] grp_fu_1408_p1;
wire   [9:0] grp_fu_1419_p0;
wire   [7:0] grp_fu_1419_p1;
wire   [9:0] grp_fu_1430_p0;
wire   [7:0] grp_fu_1430_p1;
wire   [9:0] grp_fu_1441_p0;
wire   [7:0] grp_fu_1441_p1;
wire   [9:0] mul_ln69_1_fu_1479_p0;
wire   [11:0] mul_ln69_1_fu_1479_p1;
wire   [20:0] mul_ln69_1_fu_1479_p2;
wire   [9:0] mul_ln69_2_fu_1498_p0;
wire   [11:0] mul_ln69_2_fu_1498_p1;
wire   [20:0] mul_ln69_2_fu_1498_p2;
wire   [9:0] mul_ln69_3_fu_1517_p0;
wire   [11:0] mul_ln69_3_fu_1517_p1;
wire   [20:0] mul_ln69_3_fu_1517_p2;
wire   [9:0] mul_ln69_4_fu_1536_p0;
wire   [11:0] mul_ln69_4_fu_1536_p1;
wire   [20:0] mul_ln69_4_fu_1536_p2;
wire   [9:0] mul_ln69_5_fu_1555_p0;
wire   [11:0] mul_ln69_5_fu_1555_p1;
wire   [20:0] mul_ln69_5_fu_1555_p2;
wire   [9:0] mul_ln69_6_fu_1574_p0;
wire   [11:0] mul_ln69_6_fu_1574_p1;
wire   [20:0] mul_ln69_6_fu_1574_p2;
wire   [9:0] mul_ln69_7_fu_1593_p0;
wire   [11:0] mul_ln69_7_fu_1593_p1;
wire   [20:0] mul_ln69_7_fu_1593_p2;
wire   [9:0] mul_ln69_8_fu_1612_p0;
wire   [11:0] mul_ln69_8_fu_1612_p1;
wire   [20:0] mul_ln69_8_fu_1612_p2;
wire   [9:0] mul_ln69_9_fu_1631_p0;
wire   [11:0] mul_ln69_9_fu_1631_p1;
wire   [20:0] mul_ln69_9_fu_1631_p2;
wire   [9:0] mul_ln69_10_fu_1650_p0;
wire   [11:0] mul_ln69_10_fu_1650_p1;
wire   [20:0] mul_ln69_10_fu_1650_p2;
wire   [9:0] grp_fu_1227_p2;
wire   [9:0] grp_fu_1239_p2;
wire   [9:0] mul_ln69_11_fu_1693_p0;
wire   [11:0] mul_ln69_11_fu_1693_p1;
wire   [20:0] mul_ln69_11_fu_1693_p2;
wire   [9:0] mul_ln69_12_fu_1712_p0;
wire   [11:0] mul_ln69_12_fu_1712_p1;
wire   [20:0] mul_ln69_12_fu_1712_p2;
wire   [63:0] v25_1_fu_1760_p2;
wire   [63:0] v25_1_fu_1760_p4;
wire   [63:0] v25_1_fu_1760_p6;
wire   [63:0] v25_1_fu_1760_p8;
wire   [63:0] v25_1_fu_1760_p10;
wire   [63:0] v25_1_fu_1760_p12;
wire   [63:0] v25_1_fu_1760_p14;
wire   [63:0] v25_1_fu_1760_p16;
wire   [63:0] v25_1_fu_1760_p17;
wire   [63:0] v25_2_fu_1831_p2;
wire   [63:0] v25_2_fu_1831_p4;
wire   [63:0] v25_2_fu_1831_p6;
wire   [63:0] v25_2_fu_1831_p8;
wire   [63:0] v25_2_fu_1831_p10;
wire   [63:0] v25_2_fu_1831_p12;
wire   [63:0] v25_2_fu_1831_p14;
wire   [63:0] v25_2_fu_1831_p16;
wire   [63:0] v25_2_fu_1831_p17;
wire   [9:0] grp_fu_1261_p2;
wire   [9:0] grp_fu_1272_p2;
wire   [63:0] v25_3_fu_1926_p2;
wire   [63:0] v25_3_fu_1926_p4;
wire   [63:0] v25_3_fu_1926_p6;
wire   [63:0] v25_3_fu_1926_p8;
wire   [63:0] v25_3_fu_1926_p10;
wire   [63:0] v25_3_fu_1926_p12;
wire   [63:0] v25_3_fu_1926_p14;
wire   [63:0] v25_3_fu_1926_p16;
wire   [63:0] v25_3_fu_1926_p17;
wire   [63:0] v25_4_fu_1997_p2;
wire   [63:0] v25_4_fu_1997_p4;
wire   [63:0] v25_4_fu_1997_p6;
wire   [63:0] v25_4_fu_1997_p8;
wire   [63:0] v25_4_fu_1997_p10;
wire   [63:0] v25_4_fu_1997_p12;
wire   [63:0] v25_4_fu_1997_p14;
wire   [63:0] v25_4_fu_1997_p16;
wire   [63:0] v25_4_fu_1997_p17;
wire   [9:0] grp_fu_1364_p2;
wire   [63:0] v25_5_fu_2080_p2;
wire   [63:0] v25_5_fu_2080_p4;
wire   [63:0] v25_5_fu_2080_p6;
wire   [63:0] v25_5_fu_2080_p8;
wire   [63:0] v25_5_fu_2080_p10;
wire   [63:0] v25_5_fu_2080_p12;
wire   [63:0] v25_5_fu_2080_p14;
wire   [63:0] v25_5_fu_2080_p16;
wire   [63:0] v25_5_fu_2080_p17;
wire   [9:0] grp_fu_1386_p2;
wire   [63:0] v25_6_fu_2174_p2;
wire   [63:0] v25_6_fu_2174_p4;
wire   [63:0] v25_6_fu_2174_p6;
wire   [63:0] v25_6_fu_2174_p8;
wire   [63:0] v25_6_fu_2174_p10;
wire   [63:0] v25_6_fu_2174_p12;
wire   [63:0] v25_6_fu_2174_p14;
wire   [63:0] v25_6_fu_2174_p16;
wire   [63:0] v25_6_fu_2174_p17;
wire   [63:0] v25_7_fu_2245_p2;
wire   [63:0] v25_7_fu_2245_p4;
wire   [63:0] v25_7_fu_2245_p6;
wire   [63:0] v25_7_fu_2245_p8;
wire   [63:0] v25_7_fu_2245_p10;
wire   [63:0] v25_7_fu_2245_p12;
wire   [63:0] v25_7_fu_2245_p14;
wire   [63:0] v25_7_fu_2245_p16;
wire   [63:0] v25_7_fu_2245_p17;
wire   [9:0] grp_fu_1408_p2;
wire   [63:0] v25_8_fu_2339_p2;
wire   [63:0] v25_8_fu_2339_p4;
wire   [63:0] v25_8_fu_2339_p6;
wire   [63:0] v25_8_fu_2339_p8;
wire   [63:0] v25_8_fu_2339_p10;
wire   [63:0] v25_8_fu_2339_p12;
wire   [63:0] v25_8_fu_2339_p14;
wire   [63:0] v25_8_fu_2339_p16;
wire   [63:0] v25_8_fu_2339_p17;
wire   [63:0] v25_9_fu_2410_p2;
wire   [63:0] v25_9_fu_2410_p4;
wire   [63:0] v25_9_fu_2410_p6;
wire   [63:0] v25_9_fu_2410_p8;
wire   [63:0] v25_9_fu_2410_p10;
wire   [63:0] v25_9_fu_2410_p12;
wire   [63:0] v25_9_fu_2410_p14;
wire   [63:0] v25_9_fu_2410_p16;
wire   [63:0] v25_9_fu_2410_p17;
wire   [9:0] grp_fu_1430_p2;
wire   [63:0] v25_10_fu_2504_p2;
wire   [63:0] v25_10_fu_2504_p4;
wire   [63:0] v25_10_fu_2504_p6;
wire   [63:0] v25_10_fu_2504_p8;
wire   [63:0] v25_10_fu_2504_p10;
wire   [63:0] v25_10_fu_2504_p12;
wire   [63:0] v25_10_fu_2504_p14;
wire   [63:0] v25_10_fu_2504_p16;
wire   [63:0] v25_10_fu_2504_p17;
wire   [63:0] v25_11_fu_2575_p2;
wire   [63:0] v25_11_fu_2575_p4;
wire   [63:0] v25_11_fu_2575_p6;
wire   [63:0] v25_11_fu_2575_p8;
wire   [63:0] v25_11_fu_2575_p10;
wire   [63:0] v25_11_fu_2575_p12;
wire   [63:0] v25_11_fu_2575_p14;
wire   [63:0] v25_11_fu_2575_p16;
wire   [63:0] v25_11_fu_2575_p17;
wire   [63:0] v25_12_fu_2657_p2;
wire   [63:0] v25_12_fu_2657_p4;
wire   [63:0] v25_12_fu_2657_p6;
wire   [63:0] v25_12_fu_2657_p8;
wire   [63:0] v25_12_fu_2657_p10;
wire   [63:0] v25_12_fu_2657_p12;
wire   [63:0] v25_12_fu_2657_p14;
wire   [63:0] v25_12_fu_2657_p16;
wire   [63:0] v25_12_fu_2657_p17;
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
wire   [20:0] mul_ln69_10_fu_1650_p00;
wire   [20:0] mul_ln69_11_fu_1693_p00;
wire   [20:0] mul_ln69_12_fu_1712_p00;
wire   [20:0] mul_ln69_1_fu_1479_p00;
wire   [20:0] mul_ln69_2_fu_1498_p00;
wire   [20:0] mul_ln69_3_fu_1517_p00;
wire   [20:0] mul_ln69_4_fu_1536_p00;
wire   [20:0] mul_ln69_5_fu_1555_p00;
wire   [20:0] mul_ln69_6_fu_1574_p00;
wire   [20:0] mul_ln69_7_fu_1593_p00;
wire   [20:0] mul_ln69_8_fu_1612_p00;
wire   [20:0] mul_ln69_9_fu_1631_p00;
wire   [6:0] mul_ln69_fu_1215_p00;
wire   [2:0] v25_fu_1319_p1;
wire   [2:0] v25_fu_1319_p3;
wire   [2:0] v25_fu_1319_p5;
wire   [2:0] v25_fu_1319_p7;
wire  signed [2:0] v25_fu_1319_p9;
wire  signed [2:0] v25_fu_1319_p11;
wire  signed [2:0] v25_fu_1319_p13;
wire  signed [2:0] v25_fu_1319_p15;
wire   [2:0] v25_1_fu_1760_p1;
wire   [2:0] v25_1_fu_1760_p3;
wire   [2:0] v25_1_fu_1760_p5;
wire   [2:0] v25_1_fu_1760_p7;
wire  signed [2:0] v25_1_fu_1760_p9;
wire  signed [2:0] v25_1_fu_1760_p11;
wire  signed [2:0] v25_1_fu_1760_p13;
wire  signed [2:0] v25_1_fu_1760_p15;
wire   [2:0] v25_2_fu_1831_p1;
wire   [2:0] v25_2_fu_1831_p3;
wire   [2:0] v25_2_fu_1831_p5;
wire   [2:0] v25_2_fu_1831_p7;
wire  signed [2:0] v25_2_fu_1831_p9;
wire  signed [2:0] v25_2_fu_1831_p11;
wire  signed [2:0] v25_2_fu_1831_p13;
wire  signed [2:0] v25_2_fu_1831_p15;
wire   [2:0] v25_3_fu_1926_p1;
wire   [2:0] v25_3_fu_1926_p3;
wire   [2:0] v25_3_fu_1926_p5;
wire   [2:0] v25_3_fu_1926_p7;
wire  signed [2:0] v25_3_fu_1926_p9;
wire  signed [2:0] v25_3_fu_1926_p11;
wire  signed [2:0] v25_3_fu_1926_p13;
wire  signed [2:0] v25_3_fu_1926_p15;
wire   [2:0] v25_4_fu_1997_p1;
wire   [2:0] v25_4_fu_1997_p3;
wire   [2:0] v25_4_fu_1997_p5;
wire   [2:0] v25_4_fu_1997_p7;
wire  signed [2:0] v25_4_fu_1997_p9;
wire  signed [2:0] v25_4_fu_1997_p11;
wire  signed [2:0] v25_4_fu_1997_p13;
wire  signed [2:0] v25_4_fu_1997_p15;
wire   [2:0] v25_5_fu_2080_p1;
wire   [2:0] v25_5_fu_2080_p3;
wire   [2:0] v25_5_fu_2080_p5;
wire   [2:0] v25_5_fu_2080_p7;
wire  signed [2:0] v25_5_fu_2080_p9;
wire  signed [2:0] v25_5_fu_2080_p11;
wire  signed [2:0] v25_5_fu_2080_p13;
wire  signed [2:0] v25_5_fu_2080_p15;
wire   [2:0] v25_6_fu_2174_p1;
wire   [2:0] v25_6_fu_2174_p3;
wire   [2:0] v25_6_fu_2174_p5;
wire   [2:0] v25_6_fu_2174_p7;
wire  signed [2:0] v25_6_fu_2174_p9;
wire  signed [2:0] v25_6_fu_2174_p11;
wire  signed [2:0] v25_6_fu_2174_p13;
wire  signed [2:0] v25_6_fu_2174_p15;
wire   [2:0] v25_7_fu_2245_p1;
wire   [2:0] v25_7_fu_2245_p3;
wire   [2:0] v25_7_fu_2245_p5;
wire   [2:0] v25_7_fu_2245_p7;
wire  signed [2:0] v25_7_fu_2245_p9;
wire  signed [2:0] v25_7_fu_2245_p11;
wire  signed [2:0] v25_7_fu_2245_p13;
wire  signed [2:0] v25_7_fu_2245_p15;
wire   [2:0] v25_8_fu_2339_p1;
wire   [2:0] v25_8_fu_2339_p3;
wire   [2:0] v25_8_fu_2339_p5;
wire   [2:0] v25_8_fu_2339_p7;
wire  signed [2:0] v25_8_fu_2339_p9;
wire  signed [2:0] v25_8_fu_2339_p11;
wire  signed [2:0] v25_8_fu_2339_p13;
wire  signed [2:0] v25_8_fu_2339_p15;
wire   [2:0] v25_9_fu_2410_p1;
wire   [2:0] v25_9_fu_2410_p3;
wire   [2:0] v25_9_fu_2410_p5;
wire   [2:0] v25_9_fu_2410_p7;
wire  signed [2:0] v25_9_fu_2410_p9;
wire  signed [2:0] v25_9_fu_2410_p11;
wire  signed [2:0] v25_9_fu_2410_p13;
wire  signed [2:0] v25_9_fu_2410_p15;
wire   [2:0] v25_10_fu_2504_p1;
wire   [2:0] v25_10_fu_2504_p3;
wire   [2:0] v25_10_fu_2504_p5;
wire   [2:0] v25_10_fu_2504_p7;
wire  signed [2:0] v25_10_fu_2504_p9;
wire  signed [2:0] v25_10_fu_2504_p11;
wire  signed [2:0] v25_10_fu_2504_p13;
wire  signed [2:0] v25_10_fu_2504_p15;
wire   [2:0] v25_11_fu_2575_p1;
wire   [2:0] v25_11_fu_2575_p3;
wire   [2:0] v25_11_fu_2575_p5;
wire   [2:0] v25_11_fu_2575_p7;
wire  signed [2:0] v25_11_fu_2575_p9;
wire  signed [2:0] v25_11_fu_2575_p11;
wire  signed [2:0] v25_11_fu_2575_p13;
wire  signed [2:0] v25_11_fu_2575_p15;
wire   [2:0] v25_12_fu_2657_p1;
wire   [2:0] v25_12_fu_2657_p3;
wire   [2:0] v25_12_fu_2657_p5;
wire   [2:0] v25_12_fu_2657_p7;
wire  signed [2:0] v25_12_fu_2657_p9;
wire  signed [2:0] v25_12_fu_2657_p11;
wire  signed [2:0] v25_12_fu_2657_p13;
wire  signed [2:0] v25_12_fu_2657_p15;
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
#0 phi_mul_fu_148 = 10'd0;
#0 v23_fu_152 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_mul_3ns_5ns_7_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 3 ),.din1_WIDTH( 5 ),.dout_WIDTH( 7 ))
mul_3ns_5ns_7_1_1_U15(.din0(mul_ln69_fu_1215_p0),.din1(mul_ln69_fu_1215_p1),.dout(mul_ln69_fu_1215_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1227_p0),.din1(grp_fu_1227_p1),.ce(1'b1),.dout(grp_fu_1227_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1239_p0),.din1(grp_fu_1239_p1),.ce(1'b1),.dout(grp_fu_1239_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1261_p0),.din1(grp_fu_1261_p1),.ce(1'b1),.dout(grp_fu_1261_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1272_p0),.din1(grp_fu_1272_p1),.ce(1'b1),.dout(grp_fu_1272_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U20(.din0(v25_fu_1319_p2),.din1(v25_fu_1319_p4),.din2(v25_fu_1319_p6),.din3(v25_fu_1319_p8),.din4(v25_fu_1319_p10),.din5(v25_fu_1319_p12),.din6(v25_fu_1319_p14),.din7(v25_fu_1319_p16),.def(v25_fu_1319_p17),.sel(v25_fu_1319_p18),.dout(v25_fu_1319_p19));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1364_p0),.din1(grp_fu_1364_p1),.ce(1'b1),.dout(grp_fu_1364_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1375_p0),.din1(grp_fu_1375_p1),.ce(1'b1),.dout(grp_fu_1375_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1386_p0),.din1(grp_fu_1386_p1),.ce(1'b1),.dout(grp_fu_1386_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1397_p0),.din1(grp_fu_1397_p1),.ce(1'b1),.dout(grp_fu_1397_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1408_p0),.din1(grp_fu_1408_p1),.ce(1'b1),.dout(grp_fu_1408_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1419_p0),.din1(grp_fu_1419_p1),.ce(1'b1),.dout(grp_fu_1419_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1430_p0),.din1(grp_fu_1430_p1),.ce(1'b1),.dout(grp_fu_1430_p2));
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1441_p0),.din1(grp_fu_1441_p1),.ce(1'b1),.dout(grp_fu_1441_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U29(.din0(mul_ln69_1_fu_1479_p0),.din1(mul_ln69_1_fu_1479_p1),.dout(mul_ln69_1_fu_1479_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U30(.din0(mul_ln69_2_fu_1498_p0),.din1(mul_ln69_2_fu_1498_p1),.dout(mul_ln69_2_fu_1498_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U31(.din0(mul_ln69_3_fu_1517_p0),.din1(mul_ln69_3_fu_1517_p1),.dout(mul_ln69_3_fu_1517_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U32(.din0(mul_ln69_4_fu_1536_p0),.din1(mul_ln69_4_fu_1536_p1),.dout(mul_ln69_4_fu_1536_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U33(.din0(mul_ln69_5_fu_1555_p0),.din1(mul_ln69_5_fu_1555_p1),.dout(mul_ln69_5_fu_1555_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U34(.din0(mul_ln69_6_fu_1574_p0),.din1(mul_ln69_6_fu_1574_p1),.dout(mul_ln69_6_fu_1574_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U35(.din0(mul_ln69_7_fu_1593_p0),.din1(mul_ln69_7_fu_1593_p1),.dout(mul_ln69_7_fu_1593_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U36(.din0(mul_ln69_8_fu_1612_p0),.din1(mul_ln69_8_fu_1612_p1),.dout(mul_ln69_8_fu_1612_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U37(.din0(mul_ln69_9_fu_1631_p0),.din1(mul_ln69_9_fu_1631_p1),.dout(mul_ln69_9_fu_1631_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U38(.din0(mul_ln69_10_fu_1650_p0),.din1(mul_ln69_10_fu_1650_p1),.dout(mul_ln69_10_fu_1650_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U39(.din0(mul_ln69_11_fu_1693_p0),.din1(mul_ln69_11_fu_1693_p1),.dout(mul_ln69_11_fu_1693_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U40(.din0(mul_ln69_12_fu_1712_p0),.din1(mul_ln69_12_fu_1712_p1),.dout(mul_ln69_12_fu_1712_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U41(.din0(v25_1_fu_1760_p2),.din1(v25_1_fu_1760_p4),.din2(v25_1_fu_1760_p6),.din3(v25_1_fu_1760_p8),.din4(v25_1_fu_1760_p10),.din5(v25_1_fu_1760_p12),.din6(v25_1_fu_1760_p14),.din7(v25_1_fu_1760_p16),.def(v25_1_fu_1760_p17),.sel(trunc_ln69_1_reg_2937),.dout(v25_1_fu_1760_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U42(.din0(v25_2_fu_1831_p2),.din1(v25_2_fu_1831_p4),.din2(v25_2_fu_1831_p6),.din3(v25_2_fu_1831_p8),.din4(v25_2_fu_1831_p10),.din5(v25_2_fu_1831_p12),.din6(v25_2_fu_1831_p14),.din7(v25_2_fu_1831_p16),.def(v25_2_fu_1831_p17),.sel(trunc_ln69_2_reg_2942),.dout(v25_2_fu_1831_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U43(.din0(v25_3_fu_1926_p2),.din1(v25_3_fu_1926_p4),.din2(v25_3_fu_1926_p6),.din3(v25_3_fu_1926_p8),.din4(v25_3_fu_1926_p10),.din5(v25_3_fu_1926_p12),.din6(v25_3_fu_1926_p14),.din7(v25_3_fu_1926_p16),.def(v25_3_fu_1926_p17),.sel(trunc_ln69_3_reg_2952),.dout(v25_3_fu_1926_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U44(.din0(v25_4_fu_1997_p2),.din1(v25_4_fu_1997_p4),.din2(v25_4_fu_1997_p6),.din3(v25_4_fu_1997_p8),.din4(v25_4_fu_1997_p10),.din5(v25_4_fu_1997_p12),.din6(v25_4_fu_1997_p14),.din7(v25_4_fu_1997_p16),.def(v25_4_fu_1997_p17),.sel(trunc_ln69_4_reg_2957),.dout(v25_4_fu_1997_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U45(.din0(v25_5_fu_2080_p2),.din1(v25_5_fu_2080_p4),.din2(v25_5_fu_2080_p6),.din3(v25_5_fu_2080_p8),.din4(v25_5_fu_2080_p10),.din5(v25_5_fu_2080_p12),.din6(v25_5_fu_2080_p14),.din7(v25_5_fu_2080_p16),.def(v25_5_fu_2080_p17),.sel(trunc_ln69_5_reg_2962),.dout(v25_5_fu_2080_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U46(.din0(v25_6_fu_2174_p2),.din1(v25_6_fu_2174_p4),.din2(v25_6_fu_2174_p6),.din3(v25_6_fu_2174_p8),.din4(v25_6_fu_2174_p10),.din5(v25_6_fu_2174_p12),.din6(v25_6_fu_2174_p14),.din7(v25_6_fu_2174_p16),.def(v25_6_fu_2174_p17),.sel(trunc_ln69_6_reg_2967),.dout(v25_6_fu_2174_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U47(.din0(v25_7_fu_2245_p2),.din1(v25_7_fu_2245_p4),.din2(v25_7_fu_2245_p6),.din3(v25_7_fu_2245_p8),.din4(v25_7_fu_2245_p10),.din5(v25_7_fu_2245_p12),.din6(v25_7_fu_2245_p14),.din7(v25_7_fu_2245_p16),.def(v25_7_fu_2245_p17),.sel(trunc_ln69_7_reg_2972),.dout(v25_7_fu_2245_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U48(.din0(v25_8_fu_2339_p2),.din1(v25_8_fu_2339_p4),.din2(v25_8_fu_2339_p6),.din3(v25_8_fu_2339_p8),.din4(v25_8_fu_2339_p10),.din5(v25_8_fu_2339_p12),.din6(v25_8_fu_2339_p14),.din7(v25_8_fu_2339_p16),.def(v25_8_fu_2339_p17),.sel(trunc_ln69_8_reg_2977),.dout(v25_8_fu_2339_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U49(.din0(v25_9_fu_2410_p2),.din1(v25_9_fu_2410_p4),.din2(v25_9_fu_2410_p6),.din3(v25_9_fu_2410_p8),.din4(v25_9_fu_2410_p10),.din5(v25_9_fu_2410_p12),.din6(v25_9_fu_2410_p14),.din7(v25_9_fu_2410_p16),.def(v25_9_fu_2410_p17),.sel(trunc_ln69_9_reg_2982),.dout(v25_9_fu_2410_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U50(.din0(v25_10_fu_2504_p2),.din1(v25_10_fu_2504_p4),.din2(v25_10_fu_2504_p6),.din3(v25_10_fu_2504_p8),.din4(v25_10_fu_2504_p10),.din5(v25_10_fu_2504_p12),.din6(v25_10_fu_2504_p14),.din7(v25_10_fu_2504_p16),.def(v25_10_fu_2504_p17),.sel(trunc_ln69_s_reg_2987),.dout(v25_10_fu_2504_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U51(.din0(v25_11_fu_2575_p2),.din1(v25_11_fu_2575_p4),.din2(v25_11_fu_2575_p6),.din3(v25_11_fu_2575_p8),.din4(v25_11_fu_2575_p10),.din5(v25_11_fu_2575_p12),.din6(v25_11_fu_2575_p14),.din7(v25_11_fu_2575_p16),.def(v25_11_fu_2575_p17),.sel(trunc_ln69_10_reg_3072),.dout(v25_11_fu_2575_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U52(.din0(v25_12_fu_2657_p2),.din1(v25_12_fu_2657_p4),.din2(v25_12_fu_2657_p6),.din3(v25_12_fu_2657_p8),.din4(v25_12_fu_2657_p10),.din5(v25_12_fu_2657_p12),.din6(v25_12_fu_2657_p14),.din7(v25_12_fu_2657_p16),.def(v25_12_fu_2657_p17),.sel(trunc_ln69_11_reg_3077),.dout(v25_12_fu_2657_p19));
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
        phi_mul_fu_148 <= 10'd0;
    end else if (((icmp_ln66_reg_2787 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        phi_mul_fu_148 <= add_ln69_12_fu_1461_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        v23_fu_152 <= 7'd0;
    end else if (((icmp_ln66_reg_2787 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v23_fu_152 <= add_ln66_fu_1447_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln69_10_reg_2920 <= add_ln69_10_fu_1425_p2;
        add_ln69_10_reg_2920_pp0_iter1_reg <= add_ln69_10_reg_2920;
        add_ln69_11_reg_2926 <= add_ln69_11_fu_1436_p2;
        add_ln69_11_reg_2926_pp0_iter1_reg <= add_ln69_11_reg_2926;
        trunc_ln69_9_reg_2982 <= {{mul_ln69_9_fu_1631_p2[19:17]}};
        trunc_ln69_s_reg_2987 <= {{mul_ln69_10_fu_1650_p2[19:17]}};
        v25_10_reg_3512 <= v25_10_fu_2504_p19;
        v25_11_reg_3517 <= v25_11_fu_2575_p19;
        v27_10_reg_3612_pp0_iter10_reg <= v27_10_reg_3612_pp0_iter9_reg;
        v27_10_reg_3612_pp0_iter11_reg <= v27_10_reg_3612_pp0_iter10_reg;
        v27_10_reg_3612_pp0_iter12_reg <= v27_10_reg_3612_pp0_iter11_reg;
        v27_10_reg_3612_pp0_iter4_reg <= v27_10_reg_3612;
        v27_10_reg_3612_pp0_iter5_reg <= v27_10_reg_3612_pp0_iter4_reg;
        v27_10_reg_3612_pp0_iter6_reg <= v27_10_reg_3612_pp0_iter5_reg;
        v27_10_reg_3612_pp0_iter7_reg <= v27_10_reg_3612_pp0_iter6_reg;
        v27_10_reg_3612_pp0_iter8_reg <= v27_10_reg_3612_pp0_iter7_reg;
        v27_10_reg_3612_pp0_iter9_reg <= v27_10_reg_3612_pp0_iter8_reg;
        v27_11_reg_3617_pp0_iter10_reg <= v27_11_reg_3617_pp0_iter9_reg;
        v27_11_reg_3617_pp0_iter11_reg <= v27_11_reg_3617_pp0_iter10_reg;
        v27_11_reg_3617_pp0_iter12_reg <= v27_11_reg_3617_pp0_iter11_reg;
        v27_11_reg_3617_pp0_iter13_reg <= v27_11_reg_3617_pp0_iter12_reg;
        v27_11_reg_3617_pp0_iter4_reg <= v27_11_reg_3617;
        v27_11_reg_3617_pp0_iter5_reg <= v27_11_reg_3617_pp0_iter4_reg;
        v27_11_reg_3617_pp0_iter6_reg <= v27_11_reg_3617_pp0_iter5_reg;
        v27_11_reg_3617_pp0_iter7_reg <= v27_11_reg_3617_pp0_iter6_reg;
        v27_11_reg_3617_pp0_iter8_reg <= v27_11_reg_3617_pp0_iter7_reg;
        v27_11_reg_3617_pp0_iter9_reg <= v27_11_reg_3617_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln69_1_reg_2821 <= add_ln69_1_fu_1233_p2;
        add_ln69_1_reg_2821_pp0_iter1_reg <= add_ln69_1_reg_2821;
        add_ln69_reg_2815 <= add_ln69_fu_1221_p2;
        add_ln69_reg_2815_pp0_iter1_reg <= add_ln69_reg_2815;
        icmp_ln66_reg_2787 <= icmp_ln66_fu_1194_p2;
        icmp_ln66_reg_2787_pp0_iter10_reg <= icmp_ln66_reg_2787_pp0_iter9_reg;
        icmp_ln66_reg_2787_pp0_iter11_reg <= icmp_ln66_reg_2787_pp0_iter10_reg;
        icmp_ln66_reg_2787_pp0_iter12_reg <= icmp_ln66_reg_2787_pp0_iter11_reg;
        icmp_ln66_reg_2787_pp0_iter13_reg <= icmp_ln66_reg_2787_pp0_iter12_reg;
        icmp_ln66_reg_2787_pp0_iter14_reg <= icmp_ln66_reg_2787_pp0_iter13_reg;
        icmp_ln66_reg_2787_pp0_iter15_reg <= icmp_ln66_reg_2787_pp0_iter14_reg;
        icmp_ln66_reg_2787_pp0_iter1_reg <= icmp_ln66_reg_2787;
        icmp_ln66_reg_2787_pp0_iter2_reg <= icmp_ln66_reg_2787_pp0_iter1_reg;
        icmp_ln66_reg_2787_pp0_iter3_reg <= icmp_ln66_reg_2787_pp0_iter2_reg;
        icmp_ln66_reg_2787_pp0_iter4_reg <= icmp_ln66_reg_2787_pp0_iter3_reg;
        icmp_ln66_reg_2787_pp0_iter5_reg <= icmp_ln66_reg_2787_pp0_iter4_reg;
        icmp_ln66_reg_2787_pp0_iter6_reg <= icmp_ln66_reg_2787_pp0_iter5_reg;
        icmp_ln66_reg_2787_pp0_iter7_reg <= icmp_ln66_reg_2787_pp0_iter6_reg;
        icmp_ln66_reg_2787_pp0_iter8_reg <= icmp_ln66_reg_2787_pp0_iter7_reg;
        icmp_ln66_reg_2787_pp0_iter9_reg <= icmp_ln66_reg_2787_pp0_iter8_reg;
        mul_ln69_reg_2810 <= mul_ln69_fu_1215_p2;
        phi_mul_load_reg_2791 <= ap_sig_allocacmp_phi_mul_load;
        trunc_ln66_1_reg_2806 <= trunc_ln66_1_fu_1207_p1;
        trunc_ln66_1_reg_2806_pp0_iter10_reg <= trunc_ln66_1_reg_2806_pp0_iter9_reg;
        trunc_ln66_1_reg_2806_pp0_iter11_reg <= trunc_ln66_1_reg_2806_pp0_iter10_reg;
        trunc_ln66_1_reg_2806_pp0_iter12_reg <= trunc_ln66_1_reg_2806_pp0_iter11_reg;
        trunc_ln66_1_reg_2806_pp0_iter13_reg <= trunc_ln66_1_reg_2806_pp0_iter12_reg;
        trunc_ln66_1_reg_2806_pp0_iter14_reg <= trunc_ln66_1_reg_2806_pp0_iter13_reg;
        trunc_ln66_1_reg_2806_pp0_iter15_reg <= trunc_ln66_1_reg_2806_pp0_iter14_reg;
        trunc_ln66_1_reg_2806_pp0_iter16_reg <= trunc_ln66_1_reg_2806_pp0_iter15_reg;
        trunc_ln66_1_reg_2806_pp0_iter1_reg <= trunc_ln66_1_reg_2806;
        trunc_ln66_1_reg_2806_pp0_iter2_reg <= trunc_ln66_1_reg_2806_pp0_iter1_reg;
        trunc_ln66_1_reg_2806_pp0_iter3_reg <= trunc_ln66_1_reg_2806_pp0_iter2_reg;
        trunc_ln66_1_reg_2806_pp0_iter4_reg <= trunc_ln66_1_reg_2806_pp0_iter3_reg;
        trunc_ln66_1_reg_2806_pp0_iter5_reg <= trunc_ln66_1_reg_2806_pp0_iter4_reg;
        trunc_ln66_1_reg_2806_pp0_iter6_reg <= trunc_ln66_1_reg_2806_pp0_iter5_reg;
        trunc_ln66_1_reg_2806_pp0_iter7_reg <= trunc_ln66_1_reg_2806_pp0_iter6_reg;
        trunc_ln66_1_reg_2806_pp0_iter8_reg <= trunc_ln66_1_reg_2806_pp0_iter7_reg;
        trunc_ln66_1_reg_2806_pp0_iter9_reg <= trunc_ln66_1_reg_2806_pp0_iter8_reg;
        v23_1_reg_2780 <= ap_sig_allocacmp_v23_1;
        v25_1_reg_3082 <= v25_1_fu_1760_p19;
        v25_2_reg_3087 <= v25_2_fu_1831_p19;
        v27_2_reg_3572_pp0_iter4_reg <= v27_2_reg_3572;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln69_2_reg_2867 <= add_ln69_2_fu_1256_p2;
        add_ln69_2_reg_2867_pp0_iter1_reg <= add_ln69_2_reg_2867;
        add_ln69_3_reg_2873 <= add_ln69_3_fu_1267_p2;
        add_ln69_3_reg_2873_pp0_iter1_reg <= add_ln69_3_reg_2873;
        trunc_ln69_1_reg_2937 <= {{mul_ln69_1_fu_1479_p2[19:17]}};
        trunc_ln69_2_reg_2942 <= {{mul_ln69_2_fu_1498_p2[19:17]}};
        urem_ln69_5_reg_3222 <= grp_fu_1375_p2;
        v25_3_reg_3172 <= v25_3_fu_1926_p19;
        v25_4_reg_3177 <= v25_4_fu_1997_p19;
        v27_3_reg_3577_pp0_iter4_reg <= v27_3_reg_3577;
        v27_3_reg_3577_pp0_iter5_reg <= v27_3_reg_3577_pp0_iter4_reg;
        v27_4_reg_3582_pp0_iter4_reg <= v27_4_reg_3582;
        v27_4_reg_3582_pp0_iter5_reg <= v27_4_reg_3582_pp0_iter4_reg;
        v27_4_reg_3582_pp0_iter6_reg <= v27_4_reg_3582_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln69_4_reg_2884 <= add_ln69_4_fu_1359_p2;
        add_ln69_4_reg_2884_pp0_iter1_reg <= add_ln69_4_reg_2884;
        add_ln69_5_reg_2890 <= add_ln69_5_fu_1370_p2;
        add_ln69_5_reg_2890_pp0_iter1_reg <= add_ln69_5_reg_2890;
        trunc_ln69_3_reg_2952 <= {{mul_ln69_3_fu_1517_p2[19:17]}};
        trunc_ln69_4_reg_2957 <= {{mul_ln69_4_fu_1536_p2[19:17]}};
        urem_ln69_7_reg_3312 <= grp_fu_1397_p2;
        v25_5_reg_3227 <= v25_5_fu_2080_p19;
        v25_reg_2879 <= v25_fu_1319_p19;
        v27_5_reg_3587_pp0_iter4_reg <= v27_5_reg_3587;
        v27_5_reg_3587_pp0_iter5_reg <= v27_5_reg_3587_pp0_iter4_reg;
        v27_5_reg_3587_pp0_iter6_reg <= v27_5_reg_3587_pp0_iter5_reg;
        v27_5_reg_3587_pp0_iter7_reg <= v27_5_reg_3587_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln69_6_reg_2896 <= add_ln69_6_fu_1381_p2;
        add_ln69_6_reg_2896_pp0_iter1_reg <= add_ln69_6_reg_2896;
        add_ln69_7_reg_2902 <= add_ln69_7_fu_1392_p2;
        add_ln69_7_reg_2902_pp0_iter1_reg <= add_ln69_7_reg_2902;
        trunc_ln69_5_reg_2962 <= {{mul_ln69_5_fu_1555_p2[19:17]}};
        trunc_ln69_6_reg_2967 <= {{mul_ln69_6_fu_1574_p2[19:17]}};
        urem_ln69_9_reg_3412 <= grp_fu_1419_p2;
        v25_6_reg_3322 <= v25_6_fu_2174_p19;
        v25_7_reg_3327 <= v25_7_fu_2245_p19;
        v27_6_reg_3592_pp0_iter4_reg <= v27_6_reg_3592;
        v27_6_reg_3592_pp0_iter5_reg <= v27_6_reg_3592_pp0_iter4_reg;
        v27_6_reg_3592_pp0_iter6_reg <= v27_6_reg_3592_pp0_iter5_reg;
        v27_6_reg_3592_pp0_iter7_reg <= v27_6_reg_3592_pp0_iter6_reg;
        v27_6_reg_3592_pp0_iter8_reg <= v27_6_reg_3592_pp0_iter7_reg;
        v27_7_reg_3597_pp0_iter4_reg <= v27_7_reg_3597;
        v27_7_reg_3597_pp0_iter5_reg <= v27_7_reg_3597_pp0_iter4_reg;
        v27_7_reg_3597_pp0_iter6_reg <= v27_7_reg_3597_pp0_iter5_reg;
        v27_7_reg_3597_pp0_iter7_reg <= v27_7_reg_3597_pp0_iter6_reg;
        v27_7_reg_3597_pp0_iter8_reg <= v27_7_reg_3597_pp0_iter7_reg;
        v27_7_reg_3597_pp0_iter9_reg <= v27_7_reg_3597_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln69_8_reg_2908 <= add_ln69_8_fu_1403_p2;
        add_ln69_8_reg_2908_pp0_iter1_reg <= add_ln69_8_reg_2908;
        add_ln69_9_reg_2914 <= add_ln69_9_fu_1414_p2;
        add_ln69_9_reg_2914_pp0_iter1_reg <= add_ln69_9_reg_2914;
        trunc_ln69_7_reg_2972 <= {{mul_ln69_7_fu_1593_p2[19:17]}};
        trunc_ln69_8_reg_2977 <= {{mul_ln69_8_fu_1612_p2[19:17]}};
        urem_ln69_11_reg_3507 <= grp_fu_1441_p2;
        v25_8_reg_3417 <= v25_8_fu_2339_p19;
        v25_9_reg_3422 <= v25_9_fu_2410_p19;
        v27_8_reg_3602_pp0_iter10_reg <= v27_8_reg_3602_pp0_iter9_reg;
        v27_8_reg_3602_pp0_iter4_reg <= v27_8_reg_3602;
        v27_8_reg_3602_pp0_iter5_reg <= v27_8_reg_3602_pp0_iter4_reg;
        v27_8_reg_3602_pp0_iter6_reg <= v27_8_reg_3602_pp0_iter5_reg;
        v27_8_reg_3602_pp0_iter7_reg <= v27_8_reg_3602_pp0_iter6_reg;
        v27_8_reg_3602_pp0_iter8_reg <= v27_8_reg_3602_pp0_iter7_reg;
        v27_8_reg_3602_pp0_iter9_reg <= v27_8_reg_3602_pp0_iter8_reg;
        v27_9_reg_3607_pp0_iter10_reg <= v27_9_reg_3607_pp0_iter9_reg;
        v27_9_reg_3607_pp0_iter11_reg <= v27_9_reg_3607_pp0_iter10_reg;
        v27_9_reg_3607_pp0_iter4_reg <= v27_9_reg_3607;
        v27_9_reg_3607_pp0_iter5_reg <= v27_9_reg_3607_pp0_iter4_reg;
        v27_9_reg_3607_pp0_iter6_reg <= v27_9_reg_3607_pp0_iter5_reg;
        v27_9_reg_3607_pp0_iter7_reg <= v27_9_reg_3607_pp0_iter6_reg;
        v27_9_reg_3607_pp0_iter8_reg <= v27_9_reg_3607_pp0_iter7_reg;
        v27_9_reg_3607_pp0_iter9_reg <= v27_9_reg_3607_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln1_reg_2932 <= {{v23_1_reg_2780[5:1]}};
        lshr_ln1_reg_2932_pp0_iter10_reg <= lshr_ln1_reg_2932_pp0_iter9_reg;
        lshr_ln1_reg_2932_pp0_iter11_reg <= lshr_ln1_reg_2932_pp0_iter10_reg;
        lshr_ln1_reg_2932_pp0_iter12_reg <= lshr_ln1_reg_2932_pp0_iter11_reg;
        lshr_ln1_reg_2932_pp0_iter13_reg <= lshr_ln1_reg_2932_pp0_iter12_reg;
        lshr_ln1_reg_2932_pp0_iter14_reg <= lshr_ln1_reg_2932_pp0_iter13_reg;
        lshr_ln1_reg_2932_pp0_iter15_reg <= lshr_ln1_reg_2932_pp0_iter14_reg;
        lshr_ln1_reg_2932_pp0_iter16_reg <= lshr_ln1_reg_2932_pp0_iter15_reg;
        lshr_ln1_reg_2932_pp0_iter1_reg <= lshr_ln1_reg_2932;
        lshr_ln1_reg_2932_pp0_iter2_reg <= lshr_ln1_reg_2932_pp0_iter1_reg;
        lshr_ln1_reg_2932_pp0_iter3_reg <= lshr_ln1_reg_2932_pp0_iter2_reg;
        lshr_ln1_reg_2932_pp0_iter4_reg <= lshr_ln1_reg_2932_pp0_iter3_reg;
        lshr_ln1_reg_2932_pp0_iter5_reg <= lshr_ln1_reg_2932_pp0_iter4_reg;
        lshr_ln1_reg_2932_pp0_iter6_reg <= lshr_ln1_reg_2932_pp0_iter5_reg;
        lshr_ln1_reg_2932_pp0_iter7_reg <= lshr_ln1_reg_2932_pp0_iter6_reg;
        lshr_ln1_reg_2932_pp0_iter8_reg <= lshr_ln1_reg_2932_pp0_iter7_reg;
        lshr_ln1_reg_2932_pp0_iter9_reg <= lshr_ln1_reg_2932_pp0_iter8_reg;
        trunc_ln69_10_reg_3072 <= {{mul_ln69_11_fu_1693_p2[19:17]}};
        trunc_ln69_11_reg_3077 <= {{mul_ln69_12_fu_1712_p2[19:17]}};
        v25_12_reg_3562 <= v25_12_fu_2657_p19;
        v27_12_reg_3622_pp0_iter10_reg <= v27_12_reg_3622_pp0_iter9_reg;
        v27_12_reg_3622_pp0_iter11_reg <= v27_12_reg_3622_pp0_iter10_reg;
        v27_12_reg_3622_pp0_iter12_reg <= v27_12_reg_3622_pp0_iter11_reg;
        v27_12_reg_3622_pp0_iter13_reg <= v27_12_reg_3622_pp0_iter12_reg;
        v27_12_reg_3622_pp0_iter14_reg <= v27_12_reg_3622_pp0_iter13_reg;
        v27_12_reg_3622_pp0_iter4_reg <= v27_12_reg_3622;
        v27_12_reg_3622_pp0_iter5_reg <= v27_12_reg_3622_pp0_iter4_reg;
        v27_12_reg_3622_pp0_iter6_reg <= v27_12_reg_3622_pp0_iter5_reg;
        v27_12_reg_3622_pp0_iter7_reg <= v27_12_reg_3622_pp0_iter6_reg;
        v27_12_reg_3622_pp0_iter8_reg <= v27_12_reg_3622_pp0_iter7_reg;
        v27_12_reg_3622_pp0_iter9_reg <= v27_12_reg_3622_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v27_10_reg_3612 <= grp_fu_6347_p_dout0;
        v27_11_reg_3617 <= grp_fu_6351_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v27_12_reg_3622 <= grp_fu_6347_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_1_reg_3567 <= grp_fu_6347_p_dout0;
        v27_2_reg_3572 <= grp_fu_6351_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_3_reg_3577 <= grp_fu_6347_p_dout0;
        v27_4_reg_3582 <= grp_fu_6351_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_5_reg_3587 <= grp_fu_6351_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_6_reg_3592 <= grp_fu_6347_p_dout0;
        v27_7_reg_3597 <= grp_fu_6351_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v27_8_reg_3602 <= grp_fu_6347_p_dout0;
        v27_9_reg_3607 <= grp_fu_6351_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v27_reg_2947 <= grp_fu_6347_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_13_reg_3317 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_14_reg_3627 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_15_reg_3632 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v29_16_reg_3637 <= grp_fu_6343_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_17_reg_3642 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_18_reg_3647 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_19_reg_3652 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_20_reg_3657 <= grp_fu_6339_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_21_reg_3662 <= grp_fu_6343_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_22_reg_3667 <= grp_fu_6343_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v29_23_reg_3672 <= grp_fu_6343_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v29_24_reg_3677 <= grp_fu_6343_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v29_reg_3682 <= grp_fu_6343_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln66_reg_2787 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln66_reg_2787_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_phi_mul_load = phi_mul_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v23_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v23_1 = v23_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1164_p0 = v29_19_reg_3652;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1164_p0 = v29_18_reg_3647;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1164_p0 = v29_17_reg_3642;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1164_p0 = v29_16_reg_3637;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1164_p0 = v29_14_reg_3627;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1164_p0 = v29_13_reg_3317;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1164_p0 = v27_reg_2947;
    end else begin
        grp_fu_1164_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1164_p1 = v27_7_reg_3597_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1164_p1 = v27_6_reg_3592_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1164_p1 = v27_5_reg_3587_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1164_p1 = v27_4_reg_3582_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1164_p1 = v27_2_reg_3572_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1164_p1 = v27_1_reg_3567;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1164_p1 = 64'd0;
    end else begin
        grp_fu_1164_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1169_p0 = v29_24_reg_3677;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1169_p0 = v29_23_reg_3672;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1169_p0 = v29_22_reg_3667;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1169_p0 = v29_21_reg_3662;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1169_p0 = v29_20_reg_3657;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1169_p0 = v29_15_reg_3632;
    end else begin
        grp_fu_1169_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1169_p1 = v27_12_reg_3622_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1169_p1 = v27_11_reg_3617_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1169_p1 = v27_10_reg_3612_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1169_p1 = v27_9_reg_3607_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1169_p1 = v27_8_reg_3602_pp0_iter10_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1169_p1 = v27_3_reg_3577_pp0_iter5_reg;
    end else begin
        grp_fu_1169_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1173_p0 = v25_12_reg_3562;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1173_p0 = v25_10_reg_3512;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1173_p0 = v25_8_reg_3417;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1173_p0 = v25_6_reg_3322;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1173_p0 = v25_3_reg_3172;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1173_p0 = v25_1_reg_3082;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1173_p0 = v25_reg_2879;
    end else begin
        grp_fu_1173_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_1173_p1 = v26_12;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_1173_p1 = v26_10;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_1173_p1 = v26_8;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_1173_p1 = v26_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_1173_p1 = v26_3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_1173_p1 = v26_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_1173_p1 = v26;
    end else begin
        grp_fu_1173_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1177_p0 = v25_11_reg_3517;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1177_p0 = v25_9_reg_3422;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1177_p0 = v25_7_reg_3327;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1177_p0 = v25_5_reg_3227;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1177_p0 = v25_4_reg_3177;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1177_p0 = v25_2_reg_3087;
        end else begin
            grp_fu_1177_p0 = 'bx;
        end
    end else begin
        grp_fu_1177_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_1177_p1 = v26_11;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_1177_p1 = v26_9;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_1177_p1 = v26_7;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_1177_p1 = v26_5;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_1177_p1 = v26_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_1177_p1 = v26_2;
        end else begin
            grp_fu_1177_p1 = 'bx;
        end
    end else begin
        grp_fu_1177_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v0_0_address0_local = zext_ln69_14_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address0_local = zext_ln69_13_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln69_11_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln69_9_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln69_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln69_6_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address0_local = zext_ln69_2_fu_1666_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_0_address1_local = zext_ln69_12_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln69_10_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln69_8_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln69_5_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_0_address1_local = zext_ln69_4_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln69_1_fu_1245_p1;
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
        v0_1_address0_local = zext_ln69_14_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address0_local = zext_ln69_13_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln69_11_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln69_9_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln69_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln69_6_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address0_local = zext_ln69_2_fu_1666_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_1_address1_local = zext_ln69_12_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln69_10_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln69_8_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln69_5_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_1_address1_local = zext_ln69_4_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln69_1_fu_1245_p1;
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
        v0_2_address0_local = zext_ln69_14_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address0_local = zext_ln69_13_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = zext_ln69_11_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address0_local = zext_ln69_9_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address0_local = zext_ln69_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln69_6_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_2_address0_local = zext_ln69_2_fu_1666_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_2_address1_local = zext_ln69_12_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address1_local = zext_ln69_10_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_2_address1_local = zext_ln69_8_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address1_local = zext_ln69_5_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_2_address1_local = zext_ln69_4_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_2_address1_local = zext_ln69_1_fu_1245_p1;
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
        v0_3_address0_local = zext_ln69_14_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address0_local = zext_ln69_13_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = zext_ln69_11_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address0_local = zext_ln69_9_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address0_local = zext_ln69_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln69_6_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_3_address0_local = zext_ln69_2_fu_1666_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_3_address1_local = zext_ln69_12_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address1_local = zext_ln69_10_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_3_address1_local = zext_ln69_8_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address1_local = zext_ln69_5_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_3_address1_local = zext_ln69_4_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_3_address1_local = zext_ln69_1_fu_1245_p1;
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
        v0_4_address0_local = zext_ln69_14_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_4_address0_local = zext_ln69_13_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address0_local = zext_ln69_11_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_4_address0_local = zext_ln69_9_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address0_local = zext_ln69_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address0_local = zext_ln69_6_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_4_address0_local = zext_ln69_2_fu_1666_p1;
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_4_address1_local = zext_ln69_12_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address1_local = zext_ln69_10_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_4_address1_local = zext_ln69_8_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address1_local = zext_ln69_5_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_4_address1_local = zext_ln69_4_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_4_address1_local = zext_ln69_1_fu_1245_p1;
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
        v0_5_address0_local = zext_ln69_14_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_5_address0_local = zext_ln69_13_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address0_local = zext_ln69_11_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_5_address0_local = zext_ln69_9_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address0_local = zext_ln69_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address0_local = zext_ln69_6_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_5_address0_local = zext_ln69_2_fu_1666_p1;
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_5_address1_local = zext_ln69_12_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address1_local = zext_ln69_10_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_5_address1_local = zext_ln69_8_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address1_local = zext_ln69_5_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_5_address1_local = zext_ln69_4_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_5_address1_local = zext_ln69_1_fu_1245_p1;
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
        v0_6_address0_local = zext_ln69_14_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_6_address0_local = zext_ln69_13_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address0_local = zext_ln69_11_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_6_address0_local = zext_ln69_9_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address0_local = zext_ln69_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address0_local = zext_ln69_6_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_6_address0_local = zext_ln69_2_fu_1666_p1;
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_6_address1_local = zext_ln69_12_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address1_local = zext_ln69_10_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_6_address1_local = zext_ln69_8_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address1_local = zext_ln69_5_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_6_address1_local = zext_ln69_4_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_6_address1_local = zext_ln69_1_fu_1245_p1;
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
        v0_7_address0_local = zext_ln69_14_fu_2614_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_7_address0_local = zext_ln69_13_fu_2460_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address0_local = zext_ln69_11_fu_2295_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_7_address0_local = zext_ln69_9_fu_2130_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address0_local = zext_ln69_7_fu_2036_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address0_local = zext_ln69_6_fu_1882_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_7_address0_local = zext_ln69_2_fu_1666_p1;
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v0_7_address1_local = zext_ln69_12_fu_2449_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address1_local = zext_ln69_10_fu_2284_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_7_address1_local = zext_ln69_8_fu_2119_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address1_local = zext_ln69_5_fu_1870_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v0_7_address1_local = zext_ln69_4_fu_1678_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_7_address1_local = zext_ln69_1_fu_1245_p1;
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
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln66_1_reg_2806_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_1_we0_local = 1'b1;
    end else begin
        v20_1_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln66_1_reg_2806_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln66_fu_1447_p2 = (v23_1_reg_2780 + 7'd1);
assign add_ln69_10_fu_1425_p2 = (phi_mul_load_reg_2791 + 10'd11);
assign add_ln69_11_fu_1436_p2 = (phi_mul_load_reg_2791 + 10'd12);
assign add_ln69_12_fu_1461_p2 = (phi_mul_load_reg_2791 + 10'd13);
assign add_ln69_1_fu_1233_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign add_ln69_2_fu_1256_p2 = (phi_mul_load_reg_2791 + 10'd3);
assign add_ln69_3_fu_1267_p2 = (phi_mul_load_reg_2791 + 10'd4);
assign add_ln69_4_fu_1359_p2 = (phi_mul_load_reg_2791 + 10'd5);
assign add_ln69_5_fu_1370_p2 = (phi_mul_load_reg_2791 + 10'd6);
assign add_ln69_6_fu_1381_p2 = (phi_mul_load_reg_2791 + 10'd7);
assign add_ln69_7_fu_1392_p2 = (phi_mul_load_reg_2791 + 10'd8);
assign add_ln69_8_fu_1403_p2 = (phi_mul_load_reg_2791 + 10'd9);
assign add_ln69_9_fu_1414_p2 = (phi_mul_load_reg_2791 + 10'd10);
assign add_ln69_fu_1221_p2 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
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
assign grp_fu_1227_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd1);
assign grp_fu_1227_p1 = 10'd104;
assign grp_fu_1239_p0 = (ap_sig_allocacmp_phi_mul_load + 10'd2);
assign grp_fu_1239_p1 = 10'd104;
assign grp_fu_1261_p0 = (phi_mul_load_reg_2791 + 10'd3);
assign grp_fu_1261_p1 = 10'd104;
assign grp_fu_1272_p0 = (phi_mul_load_reg_2791 + 10'd4);
assign grp_fu_1272_p1 = 10'd104;
assign grp_fu_1364_p0 = (phi_mul_load_reg_2791 + 10'd5);
assign grp_fu_1364_p1 = 10'd104;
assign grp_fu_1375_p0 = (phi_mul_load_reg_2791 + 10'd6);
assign grp_fu_1375_p1 = 10'd104;
assign grp_fu_1386_p0 = (phi_mul_load_reg_2791 + 10'd7);
assign grp_fu_1386_p1 = 10'd104;
assign grp_fu_1397_p0 = (phi_mul_load_reg_2791 + 10'd8);
assign grp_fu_1397_p1 = 10'd104;
assign grp_fu_1408_p0 = (phi_mul_load_reg_2791 + 10'd9);
assign grp_fu_1408_p1 = 10'd104;
assign grp_fu_1419_p0 = (phi_mul_load_reg_2791 + 10'd10);
assign grp_fu_1419_p1 = 10'd104;
assign grp_fu_1430_p0 = (phi_mul_load_reg_2791 + 10'd11);
assign grp_fu_1430_p1 = 10'd104;
assign grp_fu_1441_p0 = (phi_mul_load_reg_2791 + 10'd12);
assign grp_fu_1441_p1 = 10'd104;
assign grp_fu_6339_p_ce = 1'b1;
assign grp_fu_6339_p_din0 = grp_fu_1164_p0;
assign grp_fu_6339_p_din1 = grp_fu_1164_p1;
assign grp_fu_6339_p_opcode = 2'd0;
assign grp_fu_6343_p_ce = 1'b1;
assign grp_fu_6343_p_din0 = grp_fu_1169_p0;
assign grp_fu_6343_p_din1 = grp_fu_1169_p1;
assign grp_fu_6343_p_opcode = 2'd0;
assign grp_fu_6347_p_ce = 1'b1;
assign grp_fu_6347_p_din0 = grp_fu_1173_p0;
assign grp_fu_6347_p_din1 = grp_fu_1173_p1;
assign grp_fu_6351_p_ce = 1'b1;
assign grp_fu_6351_p_din0 = grp_fu_1177_p0;
assign grp_fu_6351_p_din1 = grp_fu_1177_p1;
assign icmp_ln66_fu_1194_p2 = ((ap_sig_allocacmp_v23_1 == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln69_10_fu_1650_p0 = mul_ln69_10_fu_1650_p00;
assign mul_ln69_10_fu_1650_p00 = add_ln69_9_reg_2914_pp0_iter1_reg;
assign mul_ln69_10_fu_1650_p1 = 21'd1261;
assign mul_ln69_11_fu_1693_p0 = mul_ln69_11_fu_1693_p00;
assign mul_ln69_11_fu_1693_p00 = add_ln69_10_reg_2920_pp0_iter1_reg;
assign mul_ln69_11_fu_1693_p1 = 21'd1261;
assign mul_ln69_12_fu_1712_p0 = mul_ln69_12_fu_1712_p00;
assign mul_ln69_12_fu_1712_p00 = add_ln69_11_reg_2926_pp0_iter1_reg;
assign mul_ln69_12_fu_1712_p1 = 21'd1261;
assign mul_ln69_1_fu_1479_p0 = mul_ln69_1_fu_1479_p00;
assign mul_ln69_1_fu_1479_p00 = add_ln69_reg_2815_pp0_iter1_reg;
assign mul_ln69_1_fu_1479_p1 = 21'd1261;
assign mul_ln69_2_fu_1498_p0 = mul_ln69_2_fu_1498_p00;
assign mul_ln69_2_fu_1498_p00 = add_ln69_1_reg_2821_pp0_iter1_reg;
assign mul_ln69_2_fu_1498_p1 = 21'd1261;
assign mul_ln69_3_fu_1517_p0 = mul_ln69_3_fu_1517_p00;
assign mul_ln69_3_fu_1517_p00 = add_ln69_2_reg_2867_pp0_iter1_reg;
assign mul_ln69_3_fu_1517_p1 = 21'd1261;
assign mul_ln69_4_fu_1536_p0 = mul_ln69_4_fu_1536_p00;
assign mul_ln69_4_fu_1536_p00 = add_ln69_3_reg_2873_pp0_iter1_reg;
assign mul_ln69_4_fu_1536_p1 = 21'd1261;
assign mul_ln69_5_fu_1555_p0 = mul_ln69_5_fu_1555_p00;
assign mul_ln69_5_fu_1555_p00 = add_ln69_4_reg_2884_pp0_iter1_reg;
assign mul_ln69_5_fu_1555_p1 = 21'd1261;
assign mul_ln69_6_fu_1574_p0 = mul_ln69_6_fu_1574_p00;
assign mul_ln69_6_fu_1574_p00 = add_ln69_5_reg_2890_pp0_iter1_reg;
assign mul_ln69_6_fu_1574_p1 = 21'd1261;
assign mul_ln69_7_fu_1593_p0 = mul_ln69_7_fu_1593_p00;
assign mul_ln69_7_fu_1593_p00 = add_ln69_6_reg_2896_pp0_iter1_reg;
assign mul_ln69_7_fu_1593_p1 = 21'd1261;
assign mul_ln69_8_fu_1612_p0 = mul_ln69_8_fu_1612_p00;
assign mul_ln69_8_fu_1612_p00 = add_ln69_7_reg_2902_pp0_iter1_reg;
assign mul_ln69_8_fu_1612_p1 = 21'd1261;
assign mul_ln69_9_fu_1631_p0 = mul_ln69_9_fu_1631_p00;
assign mul_ln69_9_fu_1631_p00 = add_ln69_8_reg_2908_pp0_iter1_reg;
assign mul_ln69_9_fu_1631_p1 = 21'd1261;
assign mul_ln69_fu_1215_p0 = mul_ln69_fu_1215_p00;
assign mul_ln69_fu_1215_p00 = trunc_ln66_fu_1203_p1;
assign mul_ln69_fu_1215_p1 = 7'd13;
assign trunc_ln66_1_fu_1207_p1 = ap_sig_allocacmp_v23_1[0:0];
assign trunc_ln66_fu_1203_p1 = ap_sig_allocacmp_v23_1[2:0];
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
assign v20_1_address0 = zext_ln66_fu_2696_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_1_d0 = v29_reg_3682;
assign v20_1_we0 = v20_1_we0_local;
assign v20_address0 = zext_ln66_fu_2696_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = v29_reg_3682;
assign v20_we0 = v20_we0_local;
assign v25_10_fu_2504_p10 = v0_4_q1;
assign v25_10_fu_2504_p12 = v0_5_q1;
assign v25_10_fu_2504_p14 = v0_6_q1;
assign v25_10_fu_2504_p16 = v0_7_q1;
assign v25_10_fu_2504_p17 = 'bx;
assign v25_10_fu_2504_p2 = v0_0_q1;
assign v25_10_fu_2504_p4 = v0_1_q1;
assign v25_10_fu_2504_p6 = v0_2_q1;
assign v25_10_fu_2504_p8 = v0_3_q1;
assign v25_11_fu_2575_p10 = v0_4_q0;
assign v25_11_fu_2575_p12 = v0_5_q0;
assign v25_11_fu_2575_p14 = v0_6_q0;
assign v25_11_fu_2575_p16 = v0_7_q0;
assign v25_11_fu_2575_p17 = 'bx;
assign v25_11_fu_2575_p2 = v0_0_q0;
assign v25_11_fu_2575_p4 = v0_1_q0;
assign v25_11_fu_2575_p6 = v0_2_q0;
assign v25_11_fu_2575_p8 = v0_3_q0;
assign v25_12_fu_2657_p10 = v0_4_q0;
assign v25_12_fu_2657_p12 = v0_5_q0;
assign v25_12_fu_2657_p14 = v0_6_q0;
assign v25_12_fu_2657_p16 = v0_7_q0;
assign v25_12_fu_2657_p17 = 'bx;
assign v25_12_fu_2657_p2 = v0_0_q0;
assign v25_12_fu_2657_p4 = v0_1_q0;
assign v25_12_fu_2657_p6 = v0_2_q0;
assign v25_12_fu_2657_p8 = v0_3_q0;
assign v25_1_fu_1760_p10 = v0_4_q0;
assign v25_1_fu_1760_p12 = v0_5_q0;
assign v25_1_fu_1760_p14 = v0_6_q0;
assign v25_1_fu_1760_p16 = v0_7_q0;
assign v25_1_fu_1760_p17 = 'bx;
assign v25_1_fu_1760_p2 = v0_0_q0;
assign v25_1_fu_1760_p4 = v0_1_q0;
assign v25_1_fu_1760_p6 = v0_2_q0;
assign v25_1_fu_1760_p8 = v0_3_q0;
assign v25_2_fu_1831_p10 = v0_4_q1;
assign v25_2_fu_1831_p12 = v0_5_q1;
assign v25_2_fu_1831_p14 = v0_6_q1;
assign v25_2_fu_1831_p16 = v0_7_q1;
assign v25_2_fu_1831_p17 = 'bx;
assign v25_2_fu_1831_p2 = v0_0_q1;
assign v25_2_fu_1831_p4 = v0_1_q1;
assign v25_2_fu_1831_p6 = v0_2_q1;
assign v25_2_fu_1831_p8 = v0_3_q1;
assign v25_3_fu_1926_p10 = v0_4_q1;
assign v25_3_fu_1926_p12 = v0_5_q1;
assign v25_3_fu_1926_p14 = v0_6_q1;
assign v25_3_fu_1926_p16 = v0_7_q1;
assign v25_3_fu_1926_p17 = 'bx;
assign v25_3_fu_1926_p2 = v0_0_q1;
assign v25_3_fu_1926_p4 = v0_1_q1;
assign v25_3_fu_1926_p6 = v0_2_q1;
assign v25_3_fu_1926_p8 = v0_3_q1;
assign v25_4_fu_1997_p10 = v0_4_q0;
assign v25_4_fu_1997_p12 = v0_5_q0;
assign v25_4_fu_1997_p14 = v0_6_q0;
assign v25_4_fu_1997_p16 = v0_7_q0;
assign v25_4_fu_1997_p17 = 'bx;
assign v25_4_fu_1997_p2 = v0_0_q0;
assign v25_4_fu_1997_p4 = v0_1_q0;
assign v25_4_fu_1997_p6 = v0_2_q0;
assign v25_4_fu_1997_p8 = v0_3_q0;
assign v25_5_fu_2080_p10 = v0_4_q0;
assign v25_5_fu_2080_p12 = v0_5_q0;
assign v25_5_fu_2080_p14 = v0_6_q0;
assign v25_5_fu_2080_p16 = v0_7_q0;
assign v25_5_fu_2080_p17 = 'bx;
assign v25_5_fu_2080_p2 = v0_0_q0;
assign v25_5_fu_2080_p4 = v0_1_q0;
assign v25_5_fu_2080_p6 = v0_2_q0;
assign v25_5_fu_2080_p8 = v0_3_q0;
assign v25_6_fu_2174_p10 = v0_4_q1;
assign v25_6_fu_2174_p12 = v0_5_q1;
assign v25_6_fu_2174_p14 = v0_6_q1;
assign v25_6_fu_2174_p16 = v0_7_q1;
assign v25_6_fu_2174_p17 = 'bx;
assign v25_6_fu_2174_p2 = v0_0_q1;
assign v25_6_fu_2174_p4 = v0_1_q1;
assign v25_6_fu_2174_p6 = v0_2_q1;
assign v25_6_fu_2174_p8 = v0_3_q1;
assign v25_7_fu_2245_p10 = v0_4_q0;
assign v25_7_fu_2245_p12 = v0_5_q0;
assign v25_7_fu_2245_p14 = v0_6_q0;
assign v25_7_fu_2245_p16 = v0_7_q0;
assign v25_7_fu_2245_p17 = 'bx;
assign v25_7_fu_2245_p2 = v0_0_q0;
assign v25_7_fu_2245_p4 = v0_1_q0;
assign v25_7_fu_2245_p6 = v0_2_q0;
assign v25_7_fu_2245_p8 = v0_3_q0;
assign v25_8_fu_2339_p10 = v0_4_q1;
assign v25_8_fu_2339_p12 = v0_5_q1;
assign v25_8_fu_2339_p14 = v0_6_q1;
assign v25_8_fu_2339_p16 = v0_7_q1;
assign v25_8_fu_2339_p17 = 'bx;
assign v25_8_fu_2339_p2 = v0_0_q1;
assign v25_8_fu_2339_p4 = v0_1_q1;
assign v25_8_fu_2339_p6 = v0_2_q1;
assign v25_8_fu_2339_p8 = v0_3_q1;
assign v25_9_fu_2410_p10 = v0_4_q0;
assign v25_9_fu_2410_p12 = v0_5_q0;
assign v25_9_fu_2410_p14 = v0_6_q0;
assign v25_9_fu_2410_p16 = v0_7_q0;
assign v25_9_fu_2410_p17 = 'bx;
assign v25_9_fu_2410_p2 = v0_0_q0;
assign v25_9_fu_2410_p4 = v0_1_q0;
assign v25_9_fu_2410_p6 = v0_2_q0;
assign v25_9_fu_2410_p8 = v0_3_q0;
assign v25_fu_1319_p10 = v0_4_q1;
assign v25_fu_1319_p12 = v0_5_q1;
assign v25_fu_1319_p14 = v0_6_q1;
assign v25_fu_1319_p16 = v0_7_q1;
assign v25_fu_1319_p17 = 'bx;
assign v25_fu_1319_p18 = {{v23_1_reg_2780[5:3]}};
assign v25_fu_1319_p2 = v0_0_q1;
assign v25_fu_1319_p4 = v0_1_q1;
assign v25_fu_1319_p6 = v0_2_q1;
assign v25_fu_1319_p8 = v0_3_q1;
assign zext_ln66_fu_2696_p1 = lshr_ln1_reg_2932_pp0_iter16_reg;
assign zext_ln69_10_fu_2284_p1 = urem_ln69_7_reg_3312;
assign zext_ln69_11_fu_2295_p1 = grp_fu_1408_p2;
assign zext_ln69_12_fu_2449_p1 = urem_ln69_9_reg_3412;
assign zext_ln69_13_fu_2460_p1 = grp_fu_1430_p2;
assign zext_ln69_14_fu_2614_p1 = urem_ln69_11_reg_3507;
assign zext_ln69_1_fu_1245_p1 = mul_ln69_reg_2810;
assign zext_ln69_2_fu_1666_p1 = grp_fu_1227_p2;
assign zext_ln69_4_fu_1678_p1 = grp_fu_1239_p2;
assign zext_ln69_5_fu_1870_p1 = grp_fu_1261_p2;
assign zext_ln69_6_fu_1882_p1 = grp_fu_1272_p2;
assign zext_ln69_7_fu_2036_p1 = grp_fu_1364_p2;
assign zext_ln69_8_fu_2119_p1 = urem_ln69_5_reg_3222;
assign zext_ln69_9_fu_2130_p1 = grp_fu_1386_p2;
endmodule 
