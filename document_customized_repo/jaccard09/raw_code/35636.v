module stencil3d_stencil3d_Pipeline_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,p_cast,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_4_address0,sol_4_ce0,sol_4_we0,sol_4_d0,sol_5_address0,sol_5_ce0,sol_5_we0,sol_5_d0,sol_6_address0,sol_6_ce0,sol_6_we0,sol_6_d0,sol_7_address0,sol_7_ce0,sol_7_we0,sol_7_d0,sol_8_address0,sol_8_ce0,sol_8_we0,sol_8_d0,sol_9_address0,sol_9_ce0,sol_9_we0,sol_9_d0,sol_10_address0,sol_10_ce0,sol_10_we0,sol_10_d0,sol_11_address0,sol_11_ce0,sol_11_we0,sol_11_d0,sol_12_address0,sol_12_ce0,sol_12_we0,sol_12_d0,sol_13_address0,sol_13_ce0,sol_13_we0,sol_13_d0,sol_14_address0,sol_14_ce0,sol_14_we0,sol_14_d0,orig_1_load_128,orig_2_load_128,orig_3_load_128,orig_4_load_128,orig_5_load_128,orig_6_load_128,orig_7_load_128,orig_8_load_128,orig_9_load_128,orig_10_load_128,orig_11_load_128,orig_12_load_128,orig_13_load_128,orig_1_load_124,orig_2_load_124,orig_3_load_124,orig_4_load_124,orig_5_load_124,orig_6_load_124,orig_7_load_124,orig_8_load_124,orig_9_load_124,orig_10_load_124,orig_11_load_124,orig_12_load_124,orig_13_load_124,orig_1_load_125,orig_2_load_125,orig_3_load_125,orig_4_load_125,orig_5_load_125,orig_6_load_125,orig_7_load_125,orig_8_load_125,orig_9_load_125,orig_10_load_125,orig_11_load_125,orig_12_load_125,orig_13_load_125,orig_1_load_126,orig_2_load_126,orig_3_load_126,orig_4_load_126,orig_5_load_126,orig_6_load_126,orig_7_load_126,orig_8_load_126,orig_9_load_126,orig_10_load_126,orig_11_load_126,orig_12_load_126,orig_13_load_126,orig_1_load_127,orig_2_load_127,orig_3_load_127,orig_4_load_127,orig_5_load_127,orig_6_load_127,orig_7_load_127,orig_8_load_127,orig_9_load_127,orig_10_load_127,orig_11_load_127,orig_12_load_127,orig_13_load_127,orig_14_load_124,orig_0_load_1024,C_load,C_load_1,orig_14_load_125,orig_14_load_126,orig_14_load_127,orig_14_load_128,orig_15_load_1024); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
input  [9:0] p_cast;
output  [9:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [9:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [9:0] sol_4_address0;
output   sol_4_ce0;
output   sol_4_we0;
output  [31:0] sol_4_d0;
output  [9:0] sol_5_address0;
output   sol_5_ce0;
output   sol_5_we0;
output  [31:0] sol_5_d0;
output  [9:0] sol_6_address0;
output   sol_6_ce0;
output   sol_6_we0;
output  [31:0] sol_6_d0;
output  [9:0] sol_7_address0;
output   sol_7_ce0;
output   sol_7_we0;
output  [31:0] sol_7_d0;
output  [9:0] sol_8_address0;
output   sol_8_ce0;
output   sol_8_we0;
output  [31:0] sol_8_d0;
output  [9:0] sol_9_address0;
output   sol_9_ce0;
output   sol_9_we0;
output  [31:0] sol_9_d0;
output  [9:0] sol_10_address0;
output   sol_10_ce0;
output   sol_10_we0;
output  [31:0] sol_10_d0;
output  [9:0] sol_11_address0;
output   sol_11_ce0;
output   sol_11_we0;
output  [31:0] sol_11_d0;
output  [9:0] sol_12_address0;
output   sol_12_ce0;
output   sol_12_we0;
output  [31:0] sol_12_d0;
output  [9:0] sol_13_address0;
output   sol_13_ce0;
output   sol_13_we0;
output  [31:0] sol_13_d0;
output  [9:0] sol_14_address0;
output   sol_14_ce0;
output   sol_14_we0;
output  [31:0] sol_14_d0;
input  [31:0] orig_1_load_128;
input  [31:0] orig_2_load_128;
input  [31:0] orig_3_load_128;
input  [31:0] orig_4_load_128;
input  [31:0] orig_5_load_128;
input  [31:0] orig_6_load_128;
input  [31:0] orig_7_load_128;
input  [31:0] orig_8_load_128;
input  [31:0] orig_9_load_128;
input  [31:0] orig_10_load_128;
input  [31:0] orig_11_load_128;
input  [31:0] orig_12_load_128;
input  [31:0] orig_13_load_128;
input  [31:0] orig_1_load_124;
input  [31:0] orig_2_load_124;
input  [31:0] orig_3_load_124;
input  [31:0] orig_4_load_124;
input  [31:0] orig_5_load_124;
input  [31:0] orig_6_load_124;
input  [31:0] orig_7_load_124;
input  [31:0] orig_8_load_124;
input  [31:0] orig_9_load_124;
input  [31:0] orig_10_load_124;
input  [31:0] orig_11_load_124;
input  [31:0] orig_12_load_124;
input  [31:0] orig_13_load_124;
input  [31:0] orig_1_load_125;
input  [31:0] orig_2_load_125;
input  [31:0] orig_3_load_125;
input  [31:0] orig_4_load_125;
input  [31:0] orig_5_load_125;
input  [31:0] orig_6_load_125;
input  [31:0] orig_7_load_125;
input  [31:0] orig_8_load_125;
input  [31:0] orig_9_load_125;
input  [31:0] orig_10_load_125;
input  [31:0] orig_11_load_125;
input  [31:0] orig_12_load_125;
input  [31:0] orig_13_load_125;
input  [31:0] orig_1_load_126;
input  [31:0] orig_2_load_126;
input  [31:0] orig_3_load_126;
input  [31:0] orig_4_load_126;
input  [31:0] orig_5_load_126;
input  [31:0] orig_6_load_126;
input  [31:0] orig_7_load_126;
input  [31:0] orig_8_load_126;
input  [31:0] orig_9_load_126;
input  [31:0] orig_10_load_126;
input  [31:0] orig_11_load_126;
input  [31:0] orig_12_load_126;
input  [31:0] orig_13_load_126;
input  [31:0] orig_1_load_127;
input  [31:0] orig_2_load_127;
input  [31:0] orig_3_load_127;
input  [31:0] orig_4_load_127;
input  [31:0] orig_5_load_127;
input  [31:0] orig_6_load_127;
input  [31:0] orig_7_load_127;
input  [31:0] orig_8_load_127;
input  [31:0] orig_9_load_127;
input  [31:0] orig_10_load_127;
input  [31:0] orig_11_load_127;
input  [31:0] orig_12_load_127;
input  [31:0] orig_13_load_127;
input  [31:0] orig_14_load_124;
input  [31:0] orig_0_load_1024;
input  [31:0] C_load;
input  [31:0] C_load_1;
input  [31:0] orig_14_load_125;
input  [31:0] orig_14_load_126;
input  [31:0] orig_14_load_127;
input  [31:0] orig_14_load_128;
input  [31:0] orig_15_load_1024;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln38_fu_906_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] p_cast_cast_fu_894_p1;
reg   [63:0] p_cast_cast_reg_1917;
reg   [3:0] k_1_reg_1935;
reg   [3:0] k_1_reg_1935_pp0_iter1_reg;
reg   [3:0] k_1_reg_1935_pp0_iter2_reg;
reg   [3:0] k_1_reg_1935_pp0_iter3_reg;
reg   [3:0] k_1_reg_1935_pp0_iter4_reg;
wire   [31:0] add_ln48_fu_1032_p2;
reg   [31:0] add_ln48_reg_1951;
reg   [31:0] add_ln48_reg_1951_pp0_iter1_reg;
wire   [31:0] tmp_6_fu_1038_p29;
reg   [31:0] tmp_6_reg_1956;
reg   [31:0] tmp_6_reg_1956_pp0_iter1_reg;
wire   [31:0] tmp_8_fu_1098_p29;
reg   [31:0] tmp_8_reg_1961;
wire  signed [31:0] sum0_fu_1169_p29;
reg  signed [31:0] sum0_reg_1966;
wire   [31:0] tmp_1_fu_1215_p29;
reg   [31:0] tmp_1_reg_1971;
wire  signed [31:0] sum0_1_fu_1307_p29;
reg  signed [31:0] sum0_1_reg_1976;
wire   [31:0] add_ln48_3_fu_1405_p2;
reg   [31:0] add_ln48_3_reg_1981;
wire   [31:0] add_ln48_6_fu_1549_p2;
reg   [31:0] add_ln48_6_reg_1986;
wire   [31:0] add_ln48_9_fu_1561_p2;
reg   [31:0] add_ln48_9_reg_1991;
wire  signed [31:0] add_ln48_4_fu_1570_p2;
reg  signed [31:0] add_ln48_4_reg_1996;
wire  signed [31:0] add_ln48_10_fu_1579_p2;
reg  signed [31:0] add_ln48_10_reg_2001;
wire   [31:0] grp_fu_878_p2;
reg   [31:0] mul_ln48_reg_2006;
reg   [31:0] mul_ln48_reg_2006_pp0_iter4_reg;
wire   [31:0] grp_fu_882_p2;
reg   [31:0] mul_ln48_2_reg_2011;
reg   [31:0] mul_ln48_2_reg_2011_pp0_iter4_reg;
wire   [31:0] grp_fu_886_p2;
reg   [31:0] mul_ln48_1_reg_2016;
wire   [31:0] grp_fu_890_p2;
reg   [31:0] mul_ln48_3_reg_2021;
wire    ap_block_pp0_stage0;
reg   [3:0] k_fu_242;
wire   [3:0] add_ln44_fu_1158_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_1;
reg    sol_12_we0_local;
reg   [31:0] sol_12_d0_local;
wire   [31:0] add_ln48_5_fu_1584_p2;
reg    sol_12_ce0_local;
wire   [31:0] add_ln48_11_fu_1601_p2;
reg    sol_13_we0_local;
reg   [31:0] sol_13_d0_local;
reg    sol_13_ce0_local;
reg    sol_11_we0_local;
reg   [31:0] sol_11_d0_local;
reg    sol_11_ce0_local;
reg    sol_10_we0_local;
reg   [31:0] sol_10_d0_local;
reg    sol_10_ce0_local;
reg    sol_9_we0_local;
reg   [31:0] sol_9_d0_local;
reg    sol_9_ce0_local;
reg    sol_8_we0_local;
reg   [31:0] sol_8_d0_local;
reg    sol_8_ce0_local;
reg    sol_7_we0_local;
reg   [31:0] sol_7_d0_local;
reg    sol_7_ce0_local;
reg    sol_6_we0_local;
reg   [31:0] sol_6_d0_local;
reg    sol_6_ce0_local;
reg    sol_5_we0_local;
reg   [31:0] sol_5_d0_local;
reg    sol_5_ce0_local;
reg    sol_4_we0_local;
reg   [31:0] sol_4_d0_local;
reg    sol_4_ce0_local;
reg    sol_3_we0_local;
reg   [31:0] sol_3_d0_local;
reg    sol_3_ce0_local;
reg    sol_2_we0_local;
reg   [31:0] sol_2_d0_local;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_14_we0_local;
reg    sol_14_ce0_local;
wire   [31:0] tmp_fu_912_p27;
wire   [31:0] tmp_2_fu_972_p27;
wire   [31:0] tmp_fu_912_p29;
wire   [31:0] tmp_2_fu_972_p29;
wire   [31:0] tmp_6_fu_1038_p27;
wire   [31:0] tmp_8_fu_1098_p27;
wire   [31:0] sum0_fu_1169_p27;
wire   [31:0] tmp_1_fu_1215_p27;
wire   [31:0] tmp_3_fu_1261_p27;
wire   [31:0] sum0_1_fu_1307_p27;
wire   [31:0] tmp_5_fu_1353_p27;
wire   [31:0] tmp_5_fu_1353_p29;
wire   [31:0] add_ln48_2_fu_1399_p2;
wire   [31:0] tmp_3_fu_1261_p29;
wire   [31:0] tmp_7_fu_1411_p27;
wire   [31:0] tmp_9_fu_1457_p27;
wire   [31:0] tmp_s_fu_1503_p27;
wire   [31:0] tmp_7_fu_1411_p29;
wire   [31:0] tmp_9_fu_1457_p29;
wire   [31:0] tmp_s_fu_1503_p29;
wire   [31:0] add_ln48_8_fu_1555_p2;
wire   [31:0] add_ln48_1_fu_1566_p2;
wire   [31:0] add_ln48_7_fu_1575_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_492;
wire   [3:0] tmp_fu_912_p1;
wire   [3:0] tmp_fu_912_p3;
wire   [3:0] tmp_fu_912_p5;
wire   [3:0] tmp_fu_912_p7;
wire   [3:0] tmp_fu_912_p9;
wire   [3:0] tmp_fu_912_p11;
wire   [3:0] tmp_fu_912_p13;
wire  signed [3:0] tmp_fu_912_p15;
wire  signed [3:0] tmp_fu_912_p17;
wire  signed [3:0] tmp_fu_912_p19;
wire  signed [3:0] tmp_fu_912_p21;
wire  signed [3:0] tmp_fu_912_p23;
wire  signed [3:0] tmp_fu_912_p25;
wire   [3:0] tmp_2_fu_972_p1;
wire   [3:0] tmp_2_fu_972_p3;
wire   [3:0] tmp_2_fu_972_p5;
wire   [3:0] tmp_2_fu_972_p7;
wire   [3:0] tmp_2_fu_972_p9;
wire   [3:0] tmp_2_fu_972_p11;
wire   [3:0] tmp_2_fu_972_p13;
wire  signed [3:0] tmp_2_fu_972_p15;
wire  signed [3:0] tmp_2_fu_972_p17;
wire  signed [3:0] tmp_2_fu_972_p19;
wire  signed [3:0] tmp_2_fu_972_p21;
wire  signed [3:0] tmp_2_fu_972_p23;
wire  signed [3:0] tmp_2_fu_972_p25;
wire   [3:0] tmp_6_fu_1038_p1;
wire   [3:0] tmp_6_fu_1038_p3;
wire   [3:0] tmp_6_fu_1038_p5;
wire   [3:0] tmp_6_fu_1038_p7;
wire   [3:0] tmp_6_fu_1038_p9;
wire   [3:0] tmp_6_fu_1038_p11;
wire   [3:0] tmp_6_fu_1038_p13;
wire  signed [3:0] tmp_6_fu_1038_p15;
wire  signed [3:0] tmp_6_fu_1038_p17;
wire  signed [3:0] tmp_6_fu_1038_p19;
wire  signed [3:0] tmp_6_fu_1038_p21;
wire  signed [3:0] tmp_6_fu_1038_p23;
wire  signed [3:0] tmp_6_fu_1038_p25;
wire   [3:0] tmp_8_fu_1098_p1;
wire   [3:0] tmp_8_fu_1098_p3;
wire   [3:0] tmp_8_fu_1098_p5;
wire   [3:0] tmp_8_fu_1098_p7;
wire   [3:0] tmp_8_fu_1098_p9;
wire   [3:0] tmp_8_fu_1098_p11;
wire   [3:0] tmp_8_fu_1098_p13;
wire  signed [3:0] tmp_8_fu_1098_p15;
wire  signed [3:0] tmp_8_fu_1098_p17;
wire  signed [3:0] tmp_8_fu_1098_p19;
wire  signed [3:0] tmp_8_fu_1098_p21;
wire  signed [3:0] tmp_8_fu_1098_p23;
wire  signed [3:0] tmp_8_fu_1098_p25;
wire   [3:0] sum0_fu_1169_p1;
wire   [3:0] sum0_fu_1169_p3;
wire   [3:0] sum0_fu_1169_p5;
wire   [3:0] sum0_fu_1169_p7;
wire   [3:0] sum0_fu_1169_p9;
wire   [3:0] sum0_fu_1169_p11;
wire   [3:0] sum0_fu_1169_p13;
wire  signed [3:0] sum0_fu_1169_p15;
wire  signed [3:0] sum0_fu_1169_p17;
wire  signed [3:0] sum0_fu_1169_p19;
wire  signed [3:0] sum0_fu_1169_p21;
wire  signed [3:0] sum0_fu_1169_p23;
wire  signed [3:0] sum0_fu_1169_p25;
wire   [3:0] tmp_1_fu_1215_p1;
wire   [3:0] tmp_1_fu_1215_p3;
wire   [3:0] tmp_1_fu_1215_p5;
wire   [3:0] tmp_1_fu_1215_p7;
wire   [3:0] tmp_1_fu_1215_p9;
wire   [3:0] tmp_1_fu_1215_p11;
wire   [3:0] tmp_1_fu_1215_p13;
wire  signed [3:0] tmp_1_fu_1215_p15;
wire  signed [3:0] tmp_1_fu_1215_p17;
wire  signed [3:0] tmp_1_fu_1215_p19;
wire  signed [3:0] tmp_1_fu_1215_p21;
wire  signed [3:0] tmp_1_fu_1215_p23;
wire  signed [3:0] tmp_1_fu_1215_p25;
wire   [3:0] tmp_3_fu_1261_p1;
wire   [3:0] tmp_3_fu_1261_p3;
wire   [3:0] tmp_3_fu_1261_p5;
wire   [3:0] tmp_3_fu_1261_p7;
wire   [3:0] tmp_3_fu_1261_p9;
wire   [3:0] tmp_3_fu_1261_p11;
wire   [3:0] tmp_3_fu_1261_p13;
wire  signed [3:0] tmp_3_fu_1261_p15;
wire  signed [3:0] tmp_3_fu_1261_p17;
wire  signed [3:0] tmp_3_fu_1261_p19;
wire  signed [3:0] tmp_3_fu_1261_p21;
wire  signed [3:0] tmp_3_fu_1261_p23;
wire  signed [3:0] tmp_3_fu_1261_p25;
wire   [3:0] sum0_1_fu_1307_p1;
wire   [3:0] sum0_1_fu_1307_p3;
wire   [3:0] sum0_1_fu_1307_p5;
wire   [3:0] sum0_1_fu_1307_p7;
wire   [3:0] sum0_1_fu_1307_p9;
wire   [3:0] sum0_1_fu_1307_p11;
wire   [3:0] sum0_1_fu_1307_p13;
wire  signed [3:0] sum0_1_fu_1307_p15;
wire  signed [3:0] sum0_1_fu_1307_p17;
wire  signed [3:0] sum0_1_fu_1307_p19;
wire  signed [3:0] sum0_1_fu_1307_p21;
wire  signed [3:0] sum0_1_fu_1307_p23;
wire  signed [3:0] sum0_1_fu_1307_p25;
wire   [3:0] tmp_5_fu_1353_p1;
wire   [3:0] tmp_5_fu_1353_p3;
wire   [3:0] tmp_5_fu_1353_p5;
wire   [3:0] tmp_5_fu_1353_p7;
wire   [3:0] tmp_5_fu_1353_p9;
wire   [3:0] tmp_5_fu_1353_p11;
wire   [3:0] tmp_5_fu_1353_p13;
wire  signed [3:0] tmp_5_fu_1353_p15;
wire  signed [3:0] tmp_5_fu_1353_p17;
wire  signed [3:0] tmp_5_fu_1353_p19;
wire  signed [3:0] tmp_5_fu_1353_p21;
wire  signed [3:0] tmp_5_fu_1353_p23;
wire  signed [3:0] tmp_5_fu_1353_p25;
wire   [3:0] tmp_7_fu_1411_p1;
wire   [3:0] tmp_7_fu_1411_p3;
wire   [3:0] tmp_7_fu_1411_p5;
wire   [3:0] tmp_7_fu_1411_p7;
wire   [3:0] tmp_7_fu_1411_p9;
wire   [3:0] tmp_7_fu_1411_p11;
wire   [3:0] tmp_7_fu_1411_p13;
wire  signed [3:0] tmp_7_fu_1411_p15;
wire  signed [3:0] tmp_7_fu_1411_p17;
wire  signed [3:0] tmp_7_fu_1411_p19;
wire  signed [3:0] tmp_7_fu_1411_p21;
wire  signed [3:0] tmp_7_fu_1411_p23;
wire  signed [3:0] tmp_7_fu_1411_p25;
wire   [3:0] tmp_9_fu_1457_p1;
wire   [3:0] tmp_9_fu_1457_p3;
wire   [3:0] tmp_9_fu_1457_p5;
wire   [3:0] tmp_9_fu_1457_p7;
wire   [3:0] tmp_9_fu_1457_p9;
wire   [3:0] tmp_9_fu_1457_p11;
wire   [3:0] tmp_9_fu_1457_p13;
wire  signed [3:0] tmp_9_fu_1457_p15;
wire  signed [3:0] tmp_9_fu_1457_p17;
wire  signed [3:0] tmp_9_fu_1457_p19;
wire  signed [3:0] tmp_9_fu_1457_p21;
wire  signed [3:0] tmp_9_fu_1457_p23;
wire  signed [3:0] tmp_9_fu_1457_p25;
wire   [3:0] tmp_s_fu_1503_p1;
wire   [3:0] tmp_s_fu_1503_p3;
wire   [3:0] tmp_s_fu_1503_p5;
wire   [3:0] tmp_s_fu_1503_p7;
wire   [3:0] tmp_s_fu_1503_p9;
wire   [3:0] tmp_s_fu_1503_p11;
wire   [3:0] tmp_s_fu_1503_p13;
wire  signed [3:0] tmp_s_fu_1503_p15;
wire  signed [3:0] tmp_s_fu_1503_p17;
wire  signed [3:0] tmp_s_fu_1503_p19;
wire  signed [3:0] tmp_s_fu_1503_p21;
wire  signed [3:0] tmp_s_fu_1503_p23;
wire  signed [3:0] tmp_s_fu_1503_p25;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 k_fu_242 = 4'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(C_load),.din1(sum0_reg_1966),.ce(1'b1),.dout(grp_fu_878_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(C_load),.din1(sum0_1_reg_1976),.ce(1'b1),.dout(grp_fu_882_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(C_load_1),.din1(add_ln48_4_reg_1996),.ce(1'b1),.dout(grp_fu_886_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(C_load_1),.din1(add_ln48_10_reg_2001),.ce(1'b1),.dout(grp_fu_890_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U5(.din0(orig_1_load_124),.din1(orig_2_load_124),.din2(orig_3_load_124),.din3(orig_4_load_124),.din4(orig_5_load_124),.din5(orig_6_load_124),.din6(orig_7_load_124),.din7(orig_8_load_124),.din8(orig_9_load_124),.din9(orig_10_load_124),.din10(orig_11_load_124),.din11(orig_12_load_124),.din12(orig_13_load_124),.def(tmp_fu_912_p27),.sel(ap_sig_allocacmp_k_1),.dout(tmp_fu_912_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U6(.din0(orig_1_load_126),.din1(orig_2_load_126),.din2(orig_3_load_126),.din3(orig_4_load_126),.din4(orig_5_load_126),.din5(orig_6_load_126),.din6(orig_7_load_126),.din7(orig_8_load_126),.din8(orig_9_load_126),.din9(orig_10_load_126),.din10(orig_11_load_126),.din11(orig_12_load_126),.din12(orig_13_load_126),.def(tmp_2_fu_972_p27),.sel(ap_sig_allocacmp_k_1),.dout(tmp_2_fu_972_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U7(.din0(orig_2_load_124),.din1(orig_3_load_124),.din2(orig_4_load_124),.din3(orig_5_load_124),.din4(orig_6_load_124),.din5(orig_7_load_124),.din6(orig_8_load_124),.din7(orig_9_load_124),.din8(orig_10_load_124),.din9(orig_11_load_124),.din10(orig_12_load_124),.din11(orig_13_load_124),.din12(orig_14_load_125),.def(tmp_6_fu_1038_p27),.sel(ap_sig_allocacmp_k_1),.dout(tmp_6_fu_1038_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U8(.din0(orig_2_load_126),.din1(orig_3_load_126),.din2(orig_4_load_126),.din3(orig_5_load_126),.din4(orig_6_load_126),.din5(orig_7_load_126),.din6(orig_8_load_126),.din7(orig_9_load_126),.din8(orig_10_load_126),.din9(orig_11_load_126),.din10(orig_12_load_126),.din11(orig_13_load_126),.din12(orig_14_load_127),.def(tmp_8_fu_1098_p27),.sel(ap_sig_allocacmp_k_1),.dout(tmp_8_fu_1098_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U9(.din0(orig_1_load_128),.din1(orig_2_load_128),.din2(orig_3_load_128),.din3(orig_4_load_128),.din4(orig_5_load_128),.din5(orig_6_load_128),.din6(orig_7_load_128),.din7(orig_8_load_128),.din8(orig_9_load_128),.din9(orig_10_load_128),.din10(orig_11_load_128),.din11(orig_12_load_128),.din12(orig_13_load_128),.def(sum0_fu_1169_p27),.sel(k_1_reg_1935),.dout(sum0_fu_1169_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U10(.din0(orig_1_load_125),.din1(orig_2_load_125),.din2(orig_3_load_125),.din3(orig_4_load_125),.din4(orig_5_load_125),.din5(orig_6_load_125),.din6(orig_7_load_125),.din7(orig_8_load_125),.din8(orig_9_load_125),.din9(orig_10_load_125),.din10(orig_11_load_125),.din11(orig_12_load_125),.din12(orig_13_load_125),.def(tmp_1_fu_1215_p27),.sel(k_1_reg_1935),.dout(tmp_1_fu_1215_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U11(.din0(orig_1_load_127),.din1(orig_2_load_127),.din2(orig_3_load_127),.din3(orig_4_load_127),.din4(orig_5_load_127),.din5(orig_6_load_127),.din6(orig_7_load_127),.din7(orig_8_load_127),.din8(orig_9_load_127),.din9(orig_10_load_127),.din10(orig_11_load_127),.din11(orig_12_load_127),.din12(orig_13_load_127),.def(tmp_3_fu_1261_p27),.sel(k_1_reg_1935),.dout(tmp_3_fu_1261_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U12(.din0(orig_2_load_128),.din1(orig_3_load_128),.din2(orig_4_load_128),.din3(orig_5_load_128),.din4(orig_6_load_128),.din5(orig_7_load_128),.din6(orig_8_load_128),.din7(orig_9_load_128),.din8(orig_10_load_128),.din9(orig_11_load_128),.din10(orig_12_load_128),.din11(orig_13_load_128),.din12(orig_14_load_124),.def(sum0_1_fu_1307_p27),.sel(k_1_reg_1935),.dout(sum0_1_fu_1307_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U13(.din0(orig_0_load_1024),.din1(orig_1_load_128),.din2(orig_2_load_128),.din3(orig_3_load_128),.din4(orig_4_load_128),.din5(orig_5_load_128),.din6(orig_6_load_128),.din7(orig_7_load_128),.din8(orig_8_load_128),.din9(orig_9_load_128),.din10(orig_10_load_128),.din11(orig_11_load_128),.din12(orig_12_load_128),.def(tmp_5_fu_1353_p27),.sel(k_1_reg_1935),.dout(tmp_5_fu_1353_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U14(.din0(orig_2_load_125),.din1(orig_3_load_125),.din2(orig_4_load_125),.din3(orig_5_load_125),.din4(orig_6_load_125),.din5(orig_7_load_125),.din6(orig_8_load_125),.din7(orig_9_load_125),.din8(orig_10_load_125),.din9(orig_11_load_125),.din10(orig_12_load_125),.din11(orig_13_load_125),.din12(orig_14_load_126),.def(tmp_7_fu_1411_p27),.sel(k_1_reg_1935),.dout(tmp_7_fu_1411_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U15(.din0(orig_2_load_127),.din1(orig_3_load_127),.din2(orig_4_load_127),.din3(orig_5_load_127),.din4(orig_6_load_127),.din5(orig_7_load_127),.din6(orig_8_load_127),.din7(orig_9_load_127),.din8(orig_10_load_127),.din9(orig_11_load_127),.din10(orig_12_load_127),.din11(orig_13_load_127),.din12(orig_14_load_128),.def(tmp_9_fu_1457_p27),.sel(k_1_reg_1935),.dout(tmp_9_fu_1457_p29));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_27_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h1 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h3 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h5 ),.din4_WIDTH( 32 ),.CASE5( 4'h6 ),.din5_WIDTH( 32 ),.CASE6( 4'h7 ),.din6_WIDTH( 32 ),.CASE7( 4'h8 ),.din7_WIDTH( 32 ),.CASE8( 4'h9 ),.din8_WIDTH( 32 ),.CASE9( 4'hA ),.din9_WIDTH( 32 ),.CASE10( 4'hB ),.din10_WIDTH( 32 ),.CASE11( 4'hC ),.din11_WIDTH( 32 ),.CASE12( 4'hD ),.din12_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_27_4_32_1_1_U16(.din0(orig_3_load_128),.din1(orig_4_load_128),.din2(orig_5_load_128),.din3(orig_6_load_128),.din4(orig_7_load_128),.din5(orig_8_load_128),.din6(orig_9_load_128),.din7(orig_10_load_128),.din8(orig_11_load_128),.din9(orig_12_load_128),.din10(orig_13_load_128),.din11(orig_14_load_124),.din12(orig_15_load_1024),.def(tmp_s_fu_1503_p27),.sel(k_1_reg_1935),.dout(tmp_s_fu_1503_p29));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln38_fu_906_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            k_fu_242 <= add_ln44_fu_1158_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            k_fu_242 <= 4'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln48_10_reg_2001 <= add_ln48_10_fu_1579_p2;
        add_ln48_4_reg_1996 <= add_ln48_4_fu_1570_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        k_1_reg_1935_pp0_iter2_reg <= k_1_reg_1935_pp0_iter1_reg;
        k_1_reg_1935_pp0_iter3_reg <= k_1_reg_1935_pp0_iter2_reg;
        k_1_reg_1935_pp0_iter4_reg <= k_1_reg_1935_pp0_iter3_reg;
        mul_ln48_1_reg_2016 <= grp_fu_886_p2;
        mul_ln48_2_reg_2011 <= grp_fu_882_p2;
        mul_ln48_2_reg_2011_pp0_iter4_reg <= mul_ln48_2_reg_2011;
        mul_ln48_3_reg_2021 <= grp_fu_890_p2;
        mul_ln48_reg_2006 <= grp_fu_878_p2;
        mul_ln48_reg_2006_pp0_iter4_reg <= mul_ln48_reg_2006;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_1981 <= add_ln48_3_fu_1405_p2;
        add_ln48_6_reg_1986 <= add_ln48_6_fu_1549_p2;
        add_ln48_9_reg_1991 <= add_ln48_9_fu_1561_p2;
        add_ln48_reg_1951 <= add_ln48_fu_1032_p2;
        add_ln48_reg_1951_pp0_iter1_reg <= add_ln48_reg_1951;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        k_1_reg_1935 <= ap_sig_allocacmp_k_1;
        k_1_reg_1935_pp0_iter1_reg <= k_1_reg_1935;
        p_cast_cast_reg_1917[9 : 0] <= p_cast_cast_fu_894_p1[9 : 0];
        sum0_1_reg_1976 <= sum0_1_fu_1307_p29;
        sum0_reg_1966 <= sum0_fu_1169_p29;
        tmp_1_reg_1971 <= tmp_1_fu_1215_p29;
        tmp_6_reg_1956 <= tmp_6_fu_1038_p29;
        tmp_6_reg_1956_pp0_iter1_reg <= tmp_6_reg_1956;
        tmp_8_reg_1961 <= tmp_8_fu_1098_p29;
    end
end
always @ (*) begin
    if (((icmp_ln38_fu_906_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_1 = 4'd1;
    end else begin
        ap_sig_allocacmp_k_1 = k_fu_242;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd10)))) begin
        sol_10_ce0_local = 1'b1;
    end else begin
        sol_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd9)) begin
            sol_10_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd10)) begin
            sol_10_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_10_d0_local = 'bx;
        end
    end else begin
        sol_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd10)))) begin
        sol_10_we0_local = 1'b1;
    end else begin
        sol_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd11)))) begin
        sol_11_ce0_local = 1'b1;
    end else begin
        sol_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd10)) begin
            sol_11_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd11)) begin
            sol_11_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_11_d0_local = 'bx;
        end
    end else begin
        sol_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd11)))) begin
        sol_11_we0_local = 1'b1;
    end else begin
        sol_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd12)))) begin
        sol_12_ce0_local = 1'b1;
    end else begin
        sol_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd11)) begin
            sol_12_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd12)) begin
            sol_12_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_12_d0_local = 'bx;
        end
    end else begin
        sol_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd11)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd12)))) begin
        sol_12_we0_local = 1'b1;
    end else begin
        sol_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & ((k_1_reg_1935_pp0_iter4_reg == 4'd0) | ((k_1_reg_1935_pp0_iter4_reg == 4'd13) | ((k_1_reg_1935_pp0_iter4_reg == 4'd14) | (k_1_reg_1935_pp0_iter4_reg == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd12)))) begin
        sol_13_ce0_local = 1'b1;
    end else begin
        sol_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((1'b1 == ap_condition_492)) begin
            sol_13_d0_local = add_ln48_5_fu_1584_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd12)) begin
            sol_13_d0_local = add_ln48_11_fu_1601_p2;
        end else begin
            sol_13_d0_local = 'bx;
        end
    end else begin
        sol_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & ((k_1_reg_1935_pp0_iter4_reg == 4'd0) | ((k_1_reg_1935_pp0_iter4_reg == 4'd13) | ((k_1_reg_1935_pp0_iter4_reg == 4'd14) | (k_1_reg_1935_pp0_iter4_reg == 4'd15))))) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd12)))) begin
        sol_13_we0_local = 1'b1;
    end else begin
        sol_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        sol_14_ce0_local = 1'b1;
    end else begin
        sol_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & ((k_1_reg_1935_pp0_iter4_reg == 4'd0) | ((k_1_reg_1935_pp0_iter4_reg == 4'd13) | ((k_1_reg_1935_pp0_iter4_reg == 4'd14) | (k_1_reg_1935_pp0_iter4_reg == 4'd15)))))) begin
        sol_14_we0_local = 1'b1;
    end else begin
        sol_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd2)))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd1)) begin
            sol_2_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd2)) begin
            sol_2_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_2_d0_local = 'bx;
        end
    end else begin
        sol_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd2)))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd3)))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd2)) begin
            sol_3_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd3)) begin
            sol_3_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_3_d0_local = 'bx;
        end
    end else begin
        sol_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd3)))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd4)))) begin
        sol_4_ce0_local = 1'b1;
    end else begin
        sol_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd3)) begin
            sol_4_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd4)) begin
            sol_4_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_4_d0_local = 'bx;
        end
    end else begin
        sol_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd4)))) begin
        sol_4_we0_local = 1'b1;
    end else begin
        sol_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd5)))) begin
        sol_5_ce0_local = 1'b1;
    end else begin
        sol_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd4)) begin
            sol_5_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd5)) begin
            sol_5_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_5_d0_local = 'bx;
        end
    end else begin
        sol_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd5)))) begin
        sol_5_we0_local = 1'b1;
    end else begin
        sol_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd6)))) begin
        sol_6_ce0_local = 1'b1;
    end else begin
        sol_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd5)) begin
            sol_6_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd6)) begin
            sol_6_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_6_d0_local = 'bx;
        end
    end else begin
        sol_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd6)))) begin
        sol_6_we0_local = 1'b1;
    end else begin
        sol_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd7)))) begin
        sol_7_ce0_local = 1'b1;
    end else begin
        sol_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd6)) begin
            sol_7_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd7)) begin
            sol_7_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_7_d0_local = 'bx;
        end
    end else begin
        sol_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd6)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd7)))) begin
        sol_7_we0_local = 1'b1;
    end else begin
        sol_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd8)))) begin
        sol_8_ce0_local = 1'b1;
    end else begin
        sol_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd7)) begin
            sol_8_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd8)) begin
            sol_8_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_8_d0_local = 'bx;
        end
    end else begin
        sol_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd8)))) begin
        sol_8_we0_local = 1'b1;
    end else begin
        sol_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd9)))) begin
        sol_9_ce0_local = 1'b1;
    end else begin
        sol_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((k_1_reg_1935_pp0_iter4_reg == 4'd8)) begin
            sol_9_d0_local = add_ln48_11_fu_1601_p2;
        end else if ((k_1_reg_1935_pp0_iter4_reg == 4'd9)) begin
            sol_9_d0_local = add_ln48_5_fu_1584_p2;
        end else begin
            sol_9_d0_local = 'bx;
        end
    end else begin
        sol_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd8)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (k_1_reg_1935_pp0_iter4_reg == 4'd9)))) begin
        sol_9_we0_local = 1'b1;
    end else begin
        sol_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln44_fu_1158_p2 = (ap_sig_allocacmp_k_1 + 4'd2);
assign add_ln48_10_fu_1579_p2 = (add_ln48_9_reg_1991 + add_ln48_7_fu_1575_p2);
assign add_ln48_11_fu_1601_p2 = (mul_ln48_3_reg_2021 + mul_ln48_2_reg_2011_pp0_iter4_reg);
assign add_ln48_1_fu_1566_p2 = (add_ln48_reg_1951_pp0_iter1_reg + tmp_1_reg_1971);
assign add_ln48_2_fu_1399_p2 = ($signed(sum0_1_fu_1307_p29) + $signed(tmp_5_fu_1353_p29));
assign add_ln48_3_fu_1405_p2 = (add_ln48_2_fu_1399_p2 + tmp_3_fu_1261_p29);
assign add_ln48_4_fu_1570_p2 = (add_ln48_3_reg_1981 + add_ln48_1_fu_1566_p2);
assign add_ln48_5_fu_1584_p2 = (mul_ln48_1_reg_2016 + mul_ln48_reg_2006_pp0_iter4_reg);
assign add_ln48_6_fu_1549_p2 = ($signed(sum0_fu_1169_p29) + $signed(tmp_7_fu_1411_p29));
assign add_ln48_7_fu_1575_p2 = (add_ln48_6_reg_1986 + tmp_6_reg_1956_pp0_iter1_reg);
assign add_ln48_8_fu_1555_p2 = (tmp_9_fu_1457_p29 + tmp_s_fu_1503_p29);
assign add_ln48_9_fu_1561_p2 = (add_ln48_8_fu_1555_p2 + tmp_8_reg_1961);
assign add_ln48_fu_1032_p2 = (tmp_fu_912_p29 + tmp_2_fu_972_p29);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_492 = ((k_1_reg_1935_pp0_iter4_reg == 4'd0) | ((k_1_reg_1935_pp0_iter4_reg == 4'd13) | ((k_1_reg_1935_pp0_iter4_reg == 4'd14) | (k_1_reg_1935_pp0_iter4_reg == 4'd15))));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln38_fu_906_p2 = ((ap_sig_allocacmp_k_1 == 4'd15) ? 1'b1 : 1'b0);
assign p_cast_cast_fu_894_p1 = p_cast;
assign sol_10_address0 = p_cast_cast_reg_1917;
assign sol_10_ce0 = sol_10_ce0_local;
assign sol_10_d0 = sol_10_d0_local;
assign sol_10_we0 = sol_10_we0_local;
assign sol_11_address0 = p_cast_cast_reg_1917;
assign sol_11_ce0 = sol_11_ce0_local;
assign sol_11_d0 = sol_11_d0_local;
assign sol_11_we0 = sol_11_we0_local;
assign sol_12_address0 = p_cast_cast_reg_1917;
assign sol_12_ce0 = sol_12_ce0_local;
assign sol_12_d0 = sol_12_d0_local;
assign sol_12_we0 = sol_12_we0_local;
assign sol_13_address0 = p_cast_cast_reg_1917;
assign sol_13_ce0 = sol_13_ce0_local;
assign sol_13_d0 = sol_13_d0_local;
assign sol_13_we0 = sol_13_we0_local;
assign sol_14_address0 = p_cast_cast_reg_1917;
assign sol_14_ce0 = sol_14_ce0_local;
assign sol_14_d0 = add_ln48_11_fu_1601_p2;
assign sol_14_we0 = sol_14_we0_local;
assign sol_1_address0 = p_cast_cast_reg_1917;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_1584_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = p_cast_cast_reg_1917;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = sol_2_d0_local;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = p_cast_cast_reg_1917;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = sol_3_d0_local;
assign sol_3_we0 = sol_3_we0_local;
assign sol_4_address0 = p_cast_cast_reg_1917;
assign sol_4_ce0 = sol_4_ce0_local;
assign sol_4_d0 = sol_4_d0_local;
assign sol_4_we0 = sol_4_we0_local;
assign sol_5_address0 = p_cast_cast_reg_1917;
assign sol_5_ce0 = sol_5_ce0_local;
assign sol_5_d0 = sol_5_d0_local;
assign sol_5_we0 = sol_5_we0_local;
assign sol_6_address0 = p_cast_cast_reg_1917;
assign sol_6_ce0 = sol_6_ce0_local;
assign sol_6_d0 = sol_6_d0_local;
assign sol_6_we0 = sol_6_we0_local;
assign sol_7_address0 = p_cast_cast_reg_1917;
assign sol_7_ce0 = sol_7_ce0_local;
assign sol_7_d0 = sol_7_d0_local;
assign sol_7_we0 = sol_7_we0_local;
assign sol_8_address0 = p_cast_cast_reg_1917;
assign sol_8_ce0 = sol_8_ce0_local;
assign sol_8_d0 = sol_8_d0_local;
assign sol_8_we0 = sol_8_we0_local;
assign sol_9_address0 = p_cast_cast_reg_1917;
assign sol_9_ce0 = sol_9_ce0_local;
assign sol_9_d0 = sol_9_d0_local;
assign sol_9_we0 = sol_9_we0_local;
assign sum0_1_fu_1307_p27 = 'bx;
assign sum0_fu_1169_p27 = 'bx;
assign tmp_1_fu_1215_p27 = 'bx;
assign tmp_2_fu_972_p27 = 'bx;
assign tmp_3_fu_1261_p27 = 'bx;
assign tmp_5_fu_1353_p27 = 'bx;
assign tmp_6_fu_1038_p27 = 'bx;
assign tmp_7_fu_1411_p27 = 'bx;
assign tmp_8_fu_1098_p27 = 'bx;
assign tmp_9_fu_1457_p27 = 'bx;
assign tmp_fu_912_p27 = 'bx;
assign tmp_s_fu_1503_p27 = 'bx;
always @ (posedge ap_clk) begin
    p_cast_cast_reg_1917[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 