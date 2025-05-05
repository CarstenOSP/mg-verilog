module kernel_correlation_Loop_VITIS_LOOP_284_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v215_address0,v215_ce0,v215_we0,v215_d0,v215_address1,v215_ce1,v215_q1,v209_address0,v209_ce0,v209_q0,v219_address0,v219_ce0,v219_q0,v206); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] v215_address0;
output   v215_ce0;
output   v215_we0;
output  [31:0] v215_d0;
output  [7:0] v215_address1;
output   v215_ce1;
input  [31:0] v215_q1;
output  [15:0] v209_address0;
output   v209_ce0;
input  [31:0] v209_q0;
output  [7:0] v219_address0;
output   v219_ce0;
input  [31:0] v219_q0;
input  [31:0] v206;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
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
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_enable_reg_pp0_iter27;
reg    ap_enable_reg_pp0_iter28;
reg    ap_enable_reg_pp0_iter29;
reg    ap_enable_reg_pp0_iter30;
reg    ap_enable_reg_pp0_iter31;
reg    ap_enable_reg_pp0_iter32;
reg    ap_enable_reg_pp0_iter33;
reg    ap_enable_reg_pp0_iter34;
reg    ap_enable_reg_pp0_iter35;
reg    ap_enable_reg_pp0_iter36;
reg    ap_enable_reg_pp0_iter37;
reg    ap_enable_reg_pp0_iter38;
reg    ap_enable_reg_pp0_iter39;
reg    ap_enable_reg_pp0_iter40;
reg    ap_enable_reg_pp0_iter41;
reg    ap_enable_reg_pp0_iter42;
reg    ap_enable_reg_pp0_iter43;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln284_fu_246_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter8_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter9_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter10_reg;
reg    ap_loop_exit_ready_delayed;
reg   [31:0] v206_read_reg_418;
reg   [31:0] v206_read_reg_418_pp0_iter1_reg;
reg   [31:0] v206_read_reg_418_pp0_iter2_reg;
reg   [31:0] v206_read_reg_418_pp0_iter3_reg;
reg   [31:0] v206_read_reg_418_pp0_iter4_reg;
reg   [31:0] v206_read_reg_418_pp0_iter5_reg;
reg   [31:0] v206_read_reg_418_pp0_iter6_reg;
reg   [31:0] v206_read_reg_418_pp0_iter7_reg;
reg   [31:0] v206_read_reg_418_pp0_iter8_reg;
reg   [31:0] v206_read_reg_418_pp0_iter9_reg;
reg   [31:0] v206_read_reg_418_pp0_iter10_reg;
reg   [31:0] v206_read_reg_418_pp0_iter11_reg;
reg   [31:0] v206_read_reg_418_pp0_iter12_reg;
reg   [31:0] v206_read_reg_418_pp0_iter13_reg;
reg   [31:0] v206_read_reg_418_pp0_iter14_reg;
reg   [31:0] v206_read_reg_418_pp0_iter15_reg;
reg   [31:0] v206_read_reg_418_pp0_iter16_reg;
wire   [7:0] select_ln284_fu_208_p3;
reg   [7:0] select_ln284_reg_423;
wire   [8:0] v168_fu_216_p3;
reg   [8:0] v168_reg_429;
wire   [7:0] trunc_ln289_fu_224_p1;
reg   [7:0] trunc_ln289_reg_436;
wire   [0:0] icmp_ln285_fu_240_p2;
reg   [0:0] icmp_ln285_reg_441;
reg   [0:0] icmp_ln284_reg_446;
wire   [0:0] cmp5_i42_fu_291_p2;
reg   [0:0] cmp5_i42_reg_450;
reg   [0:0] cmp5_i42_reg_450_pp0_iter2_reg;
reg   [0:0] cmp5_i42_reg_450_pp0_iter3_reg;
reg   [0:0] cmp5_i42_reg_450_pp0_iter4_reg;
reg   [0:0] cmp5_i42_reg_450_pp0_iter5_reg;
reg   [0:0] cmp5_i42_reg_450_pp0_iter6_reg;
reg   [0:0] cmp5_i42_reg_450_pp0_iter7_reg;
reg   [0:0] cmp5_i42_reg_450_pp0_iter8_reg;
reg   [0:0] cmp5_i42_reg_450_pp0_iter9_reg;
reg   [0:0] cmp5_i42_reg_450_pp0_iter10_reg;
wire   [0:0] cmp20_i_fu_296_p2;
reg   [0:0] cmp20_i_reg_455;
reg   [0:0] cmp20_i_reg_455_pp0_iter2_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter3_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter4_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter5_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter6_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter7_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter8_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter9_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter10_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter11_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter12_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter13_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter14_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter15_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter16_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter17_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter18_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter19_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter20_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter21_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter22_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter23_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter24_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter25_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter26_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter27_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter28_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter29_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter30_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter31_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter32_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter33_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter34_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter35_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter36_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter37_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter38_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter39_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter40_reg;
reg   [0:0] cmp20_i_reg_455_pp0_iter41_reg;
reg   [7:0] v215_addr_reg_465;
reg   [7:0] v215_addr_reg_465_pp0_iter2_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter3_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter4_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter5_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter6_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter7_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter8_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter9_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter10_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter11_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter12_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter13_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter14_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter15_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter16_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter17_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter18_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter19_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter20_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter21_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter22_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter23_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter24_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter25_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter26_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter27_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter28_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter29_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter30_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter31_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter32_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter33_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter34_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter35_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter36_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter37_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter38_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter39_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter40_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter41_reg;
reg   [7:0] v215_addr_reg_465_pp0_iter42_reg;
reg   [31:0] v209_load_reg_476;
reg   [31:0] v219_load_reg_481;
wire   [31:0] grp_fu_152_p2;
reg   [31:0] v174_reg_496;
wire   [31:0] v171_fu_332_p3;
reg   [31:0] v171_reg_502;
reg   [31:0] v171_reg_502_pp0_iter12_reg;
reg   [31:0] v171_reg_502_pp0_iter13_reg;
reg   [31:0] v171_reg_502_pp0_iter14_reg;
reg   [31:0] v171_reg_502_pp0_iter15_reg;
reg   [31:0] v171_reg_502_pp0_iter16_reg;
reg   [31:0] v171_reg_502_pp0_iter17_reg;
reg   [31:0] v171_reg_502_pp0_iter18_reg;
reg   [31:0] v171_reg_502_pp0_iter19_reg;
reg   [31:0] v171_reg_502_pp0_iter20_reg;
reg   [31:0] v171_reg_502_pp0_iter21_reg;
reg   [31:0] v171_reg_502_pp0_iter22_reg;
reg   [31:0] v171_reg_502_pp0_iter23_reg;
reg   [31:0] v171_reg_502_pp0_iter24_reg;
reg   [31:0] v171_reg_502_pp0_iter25_reg;
reg   [31:0] v171_reg_502_pp0_iter26_reg;
reg   [31:0] v171_reg_502_pp0_iter27_reg;
reg   [31:0] v171_reg_502_pp0_iter28_reg;
reg   [31:0] v171_reg_502_pp0_iter29_reg;
reg   [31:0] v171_reg_502_pp0_iter30_reg;
reg   [31:0] v171_reg_502_pp0_iter31_reg;
reg   [31:0] v171_reg_502_pp0_iter32_reg;
reg   [31:0] v171_reg_502_pp0_iter33_reg;
reg   [31:0] v171_reg_502_pp0_iter34_reg;
reg   [31:0] v171_reg_502_pp0_iter35_reg;
reg   [31:0] v171_reg_502_pp0_iter36_reg;
reg   [31:0] v171_reg_502_pp0_iter37_reg;
reg   [31:0] v171_reg_502_pp0_iter38_reg;
reg   [31:0] v171_reg_502_pp0_iter39_reg;
reg   [31:0] v171_reg_502_pp0_iter40_reg;
reg   [31:0] v171_reg_502_pp0_iter41_reg;
wire   [31:0] grp_fu_160_p2;
reg   [31:0] v175_reg_508;
wire   [31:0] grp_fu_156_p2;
reg   [31:0] v176_reg_513;
wire   [31:0] grp_fu_164_p2;
reg   [31:0] v177_reg_518;
wire   [31:0] grp_fu_173_p2;
reg   [31:0] v178_reg_523;
reg   [31:0] v178_reg_523_pp0_iter41_reg;
wire   [31:0] v181_fu_387_p3;
reg   [31:0] v181_reg_530;
reg   [0:0] ap_phi_mux_icmp_ln28518_phi_fu_145_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln289_2_fu_315_p1;
wire   [63:0] zext_ln285_fu_301_p1;
reg   [15:0] indvar_flatten15_fu_82;
wire   [15:0] add_ln284_1_fu_234_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten15_load;
reg   [8:0] v16816_fu_86;
reg   [8:0] ap_sig_allocacmp_v16816_load;
reg   [7:0] v16917_fu_90;
wire   [7:0] v169_fu_228_p2;
reg   [7:0] ap_sig_allocacmp_v16917_load;
reg    v209_ce0_local;
reg    v219_ce0_local;
reg    v215_ce1_local;
reg    v215_we0_local;
wire   [31:0] bitcast_ln299_fu_393_p1;
reg    v215_ce0_local;
wire   [31:0] grp_fu_152_p0;
wire   [31:0] grp_fu_152_p1;
wire   [8:0] add_ln284_fu_202_p2;
wire   [12:0] tmp_9_fu_267_p3;
wire   [15:0] tmp_10_fu_274_p3;
wire   [15:0] zext_ln289_fu_281_p1;
wire   [15:0] sub_ln289_fu_285_p2;
wire   [15:0] zext_ln289_1_fu_306_p1;
wire   [15:0] add_ln289_fu_309_p2;
wire   [31:0] v170_fu_328_p1;
wire   [31:0] bitcast_ln296_fu_339_p1;
wire   [7:0] tmp_fu_342_p4;
wire   [22:0] trunc_ln296_fu_352_p1;
wire   [0:0] icmp_ln296_1_fu_362_p2;
wire   [0:0] icmp_ln296_fu_356_p2;
wire   [0:0] or_ln296_fu_368_p2;
wire   [0:0] grp_fu_168_p2;
wire   [0:0] v179_fu_374_p2;
wire   [31:0] v180_fu_380_p3;
reg    grp_fu_152_ce;
reg    grp_fu_156_ce;
reg    grp_fu_160_ce;
reg    grp_fu_164_ce;
reg    grp_fu_168_ce;
reg    ap_block_pp0_stage0_00001;
reg    grp_fu_173_ce;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg    ap_loop_exit_ready_pp0_iter26_reg;
reg    ap_loop_exit_ready_pp0_iter27_reg;
reg    ap_loop_exit_ready_pp0_iter28_reg;
reg    ap_loop_exit_ready_pp0_iter29_reg;
reg    ap_loop_exit_ready_pp0_iter30_reg;
reg    ap_loop_exit_ready_pp0_iter31_reg;
reg    ap_loop_exit_ready_pp0_iter32_reg;
reg    ap_loop_exit_ready_pp0_iter33_reg;
reg    ap_loop_exit_ready_pp0_iter34_reg;
reg    ap_loop_exit_ready_pp0_iter35_reg;
reg    ap_loop_exit_ready_pp0_iter36_reg;
reg    ap_loop_exit_ready_pp0_iter37_reg;
reg    ap_loop_exit_ready_pp0_iter38_reg;
reg    ap_loop_exit_ready_pp0_iter39_reg;
reg    ap_loop_exit_ready_pp0_iter40_reg;
reg    ap_loop_exit_ready_pp0_iter41_reg;
reg    ap_loop_exit_ready_pp0_iter42_reg;
reg    ap_loop_exit_ready_pp0_iter43_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_927;
reg    ap_condition_257;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
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
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_enable_reg_pp0_iter36 = 1'b0;
#0 ap_enable_reg_pp0_iter37 = 1'b0;
#0 ap_enable_reg_pp0_iter38 = 1'b0;
#0 ap_enable_reg_pp0_iter39 = 1'b0;
#0 ap_enable_reg_pp0_iter40 = 1'b0;
#0 ap_enable_reg_pp0_iter41 = 1'b0;
#0 ap_enable_reg_pp0_iter42 = 1'b0;
#0 ap_enable_reg_pp0_iter43 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten15_fu_82 = 16'd0;
#0 v16816_fu_86 = 9'd0;
#0 v16917_fu_90 = 8'd0;
end
kernel_correlation_fsub_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fsub_32ns_32ns_32_5_full_dsp_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_152_p0),.din1(grp_fu_152_p1),.ce(grp_fu_152_ce),.dout(grp_fu_152_p2));
kernel_correlation_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(v171_reg_502),.din1(v175_reg_508),.ce(grp_fu_156_ce),.dout(grp_fu_156_p2));
kernel_correlation_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(v174_reg_496),.din1(v174_reg_496),.ce(grp_fu_160_ce),.dout(grp_fu_160_p2));
kernel_correlation_fdiv_32ns_32ns_32_12_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_12_no_dsp_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(v176_reg_513),.din1(v206_read_reg_418_pp0_iter16_reg),.ce(grp_fu_164_ce),.dout(grp_fu_164_p2));
kernel_correlation_fcmp_32ns_32ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(v178_reg_523),.din1(32'd1036831949),.ce(grp_fu_168_ce),.opcode(5'd5),.dout(grp_fu_168_p2));
kernel_correlation_fsqrt_32ns_32ns_32_12_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fsqrt_32ns_32ns_32_12_no_dsp_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(32'd0),.din1(v177_reg_518),.ce(grp_fu_173_ce),.dout(grp_fu_173_p2));
kernel_correlation_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        end else if (((ap_loop_exit_ready_pp0_iter43_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
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
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter33 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter34 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter35 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter36 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter36 <= ap_enable_reg_pp0_iter35;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter37 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter37 <= ap_enable_reg_pp0_iter36;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter38 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter38 <= ap_enable_reg_pp0_iter37;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter39 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter39 <= ap_enable_reg_pp0_iter38;
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
        ap_enable_reg_pp0_iter40 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter40 <= ap_enable_reg_pp0_iter39;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter41 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter41 <= ap_enable_reg_pp0_iter40;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter42 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter42 <= ap_enable_reg_pp0_iter41;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter43 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter43 <= ap_enable_reg_pp0_iter42;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter42_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter43_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter43_reg <= ap_loop_exit_ready_pp0_iter42_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_257)) begin
        indvar_flatten15_fu_82 <= add_ln284_1_fu_234_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_257)) begin
    v16816_fu_86 <= v168_fu_216_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_257)) begin
    v16917_fu_90 <= v169_fu_228_p2;
end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter10_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter9_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter8_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter9_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
        ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
        ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
        ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
        ap_loop_exit_ready_pp0_iter35_reg <= ap_loop_exit_ready_pp0_iter34_reg;
        ap_loop_exit_ready_pp0_iter36_reg <= ap_loop_exit_ready_pp0_iter35_reg;
        ap_loop_exit_ready_pp0_iter37_reg <= ap_loop_exit_ready_pp0_iter36_reg;
        ap_loop_exit_ready_pp0_iter38_reg <= ap_loop_exit_ready_pp0_iter37_reg;
        ap_loop_exit_ready_pp0_iter39_reg <= ap_loop_exit_ready_pp0_iter38_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter40_reg <= ap_loop_exit_ready_pp0_iter39_reg;
        ap_loop_exit_ready_pp0_iter41_reg <= ap_loop_exit_ready_pp0_iter40_reg;
        ap_loop_exit_ready_pp0_iter42_reg <= ap_loop_exit_ready_pp0_iter41_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        cmp20_i_reg_455_pp0_iter10_reg <= cmp20_i_reg_455_pp0_iter9_reg;
        cmp20_i_reg_455_pp0_iter11_reg <= cmp20_i_reg_455_pp0_iter10_reg;
        cmp20_i_reg_455_pp0_iter12_reg <= cmp20_i_reg_455_pp0_iter11_reg;
        cmp20_i_reg_455_pp0_iter13_reg <= cmp20_i_reg_455_pp0_iter12_reg;
        cmp20_i_reg_455_pp0_iter14_reg <= cmp20_i_reg_455_pp0_iter13_reg;
        cmp20_i_reg_455_pp0_iter15_reg <= cmp20_i_reg_455_pp0_iter14_reg;
        cmp20_i_reg_455_pp0_iter16_reg <= cmp20_i_reg_455_pp0_iter15_reg;
        cmp20_i_reg_455_pp0_iter17_reg <= cmp20_i_reg_455_pp0_iter16_reg;
        cmp20_i_reg_455_pp0_iter18_reg <= cmp20_i_reg_455_pp0_iter17_reg;
        cmp20_i_reg_455_pp0_iter19_reg <= cmp20_i_reg_455_pp0_iter18_reg;
        cmp20_i_reg_455_pp0_iter20_reg <= cmp20_i_reg_455_pp0_iter19_reg;
        cmp20_i_reg_455_pp0_iter21_reg <= cmp20_i_reg_455_pp0_iter20_reg;
        cmp20_i_reg_455_pp0_iter22_reg <= cmp20_i_reg_455_pp0_iter21_reg;
        cmp20_i_reg_455_pp0_iter23_reg <= cmp20_i_reg_455_pp0_iter22_reg;
        cmp20_i_reg_455_pp0_iter24_reg <= cmp20_i_reg_455_pp0_iter23_reg;
        cmp20_i_reg_455_pp0_iter25_reg <= cmp20_i_reg_455_pp0_iter24_reg;
        cmp20_i_reg_455_pp0_iter26_reg <= cmp20_i_reg_455_pp0_iter25_reg;
        cmp20_i_reg_455_pp0_iter27_reg <= cmp20_i_reg_455_pp0_iter26_reg;
        cmp20_i_reg_455_pp0_iter28_reg <= cmp20_i_reg_455_pp0_iter27_reg;
        cmp20_i_reg_455_pp0_iter29_reg <= cmp20_i_reg_455_pp0_iter28_reg;
        cmp20_i_reg_455_pp0_iter2_reg <= cmp20_i_reg_455;
        cmp20_i_reg_455_pp0_iter30_reg <= cmp20_i_reg_455_pp0_iter29_reg;
        cmp20_i_reg_455_pp0_iter31_reg <= cmp20_i_reg_455_pp0_iter30_reg;
        cmp20_i_reg_455_pp0_iter32_reg <= cmp20_i_reg_455_pp0_iter31_reg;
        cmp20_i_reg_455_pp0_iter33_reg <= cmp20_i_reg_455_pp0_iter32_reg;
        cmp20_i_reg_455_pp0_iter34_reg <= cmp20_i_reg_455_pp0_iter33_reg;
        cmp20_i_reg_455_pp0_iter35_reg <= cmp20_i_reg_455_pp0_iter34_reg;
        cmp20_i_reg_455_pp0_iter36_reg <= cmp20_i_reg_455_pp0_iter35_reg;
        cmp20_i_reg_455_pp0_iter37_reg <= cmp20_i_reg_455_pp0_iter36_reg;
        cmp20_i_reg_455_pp0_iter38_reg <= cmp20_i_reg_455_pp0_iter37_reg;
        cmp20_i_reg_455_pp0_iter39_reg <= cmp20_i_reg_455_pp0_iter38_reg;
        cmp20_i_reg_455_pp0_iter3_reg <= cmp20_i_reg_455_pp0_iter2_reg;
        cmp20_i_reg_455_pp0_iter40_reg <= cmp20_i_reg_455_pp0_iter39_reg;
        cmp20_i_reg_455_pp0_iter41_reg <= cmp20_i_reg_455_pp0_iter40_reg;
        cmp20_i_reg_455_pp0_iter4_reg <= cmp20_i_reg_455_pp0_iter3_reg;
        cmp20_i_reg_455_pp0_iter5_reg <= cmp20_i_reg_455_pp0_iter4_reg;
        cmp20_i_reg_455_pp0_iter6_reg <= cmp20_i_reg_455_pp0_iter5_reg;
        cmp20_i_reg_455_pp0_iter7_reg <= cmp20_i_reg_455_pp0_iter6_reg;
        cmp20_i_reg_455_pp0_iter8_reg <= cmp20_i_reg_455_pp0_iter7_reg;
        cmp20_i_reg_455_pp0_iter9_reg <= cmp20_i_reg_455_pp0_iter8_reg;
        cmp5_i42_reg_450_pp0_iter10_reg <= cmp5_i42_reg_450_pp0_iter9_reg;
        cmp5_i42_reg_450_pp0_iter2_reg <= cmp5_i42_reg_450;
        cmp5_i42_reg_450_pp0_iter3_reg <= cmp5_i42_reg_450_pp0_iter2_reg;
        cmp5_i42_reg_450_pp0_iter4_reg <= cmp5_i42_reg_450_pp0_iter3_reg;
        cmp5_i42_reg_450_pp0_iter5_reg <= cmp5_i42_reg_450_pp0_iter4_reg;
        cmp5_i42_reg_450_pp0_iter6_reg <= cmp5_i42_reg_450_pp0_iter5_reg;
        cmp5_i42_reg_450_pp0_iter7_reg <= cmp5_i42_reg_450_pp0_iter6_reg;
        cmp5_i42_reg_450_pp0_iter8_reg <= cmp5_i42_reg_450_pp0_iter7_reg;
        cmp5_i42_reg_450_pp0_iter9_reg <= cmp5_i42_reg_450_pp0_iter8_reg;
        v171_reg_502 <= v171_fu_332_p3;
        v171_reg_502_pp0_iter12_reg <= v171_reg_502;
        v171_reg_502_pp0_iter13_reg <= v171_reg_502_pp0_iter12_reg;
        v171_reg_502_pp0_iter14_reg <= v171_reg_502_pp0_iter13_reg;
        v171_reg_502_pp0_iter15_reg <= v171_reg_502_pp0_iter14_reg;
        v171_reg_502_pp0_iter16_reg <= v171_reg_502_pp0_iter15_reg;
        v171_reg_502_pp0_iter17_reg <= v171_reg_502_pp0_iter16_reg;
        v171_reg_502_pp0_iter18_reg <= v171_reg_502_pp0_iter17_reg;
        v171_reg_502_pp0_iter19_reg <= v171_reg_502_pp0_iter18_reg;
        v171_reg_502_pp0_iter20_reg <= v171_reg_502_pp0_iter19_reg;
        v171_reg_502_pp0_iter21_reg <= v171_reg_502_pp0_iter20_reg;
        v171_reg_502_pp0_iter22_reg <= v171_reg_502_pp0_iter21_reg;
        v171_reg_502_pp0_iter23_reg <= v171_reg_502_pp0_iter22_reg;
        v171_reg_502_pp0_iter24_reg <= v171_reg_502_pp0_iter23_reg;
        v171_reg_502_pp0_iter25_reg <= v171_reg_502_pp0_iter24_reg;
        v171_reg_502_pp0_iter26_reg <= v171_reg_502_pp0_iter25_reg;
        v171_reg_502_pp0_iter27_reg <= v171_reg_502_pp0_iter26_reg;
        v171_reg_502_pp0_iter28_reg <= v171_reg_502_pp0_iter27_reg;
        v171_reg_502_pp0_iter29_reg <= v171_reg_502_pp0_iter28_reg;
        v171_reg_502_pp0_iter30_reg <= v171_reg_502_pp0_iter29_reg;
        v171_reg_502_pp0_iter31_reg <= v171_reg_502_pp0_iter30_reg;
        v171_reg_502_pp0_iter32_reg <= v171_reg_502_pp0_iter31_reg;
        v171_reg_502_pp0_iter33_reg <= v171_reg_502_pp0_iter32_reg;
        v171_reg_502_pp0_iter34_reg <= v171_reg_502_pp0_iter33_reg;
        v171_reg_502_pp0_iter35_reg <= v171_reg_502_pp0_iter34_reg;
        v171_reg_502_pp0_iter36_reg <= v171_reg_502_pp0_iter35_reg;
        v171_reg_502_pp0_iter37_reg <= v171_reg_502_pp0_iter36_reg;
        v171_reg_502_pp0_iter38_reg <= v171_reg_502_pp0_iter37_reg;
        v171_reg_502_pp0_iter39_reg <= v171_reg_502_pp0_iter38_reg;
        v171_reg_502_pp0_iter40_reg <= v171_reg_502_pp0_iter39_reg;
        v171_reg_502_pp0_iter41_reg <= v171_reg_502_pp0_iter40_reg;
        v174_reg_496 <= grp_fu_152_p2;
        v175_reg_508 <= grp_fu_160_p2;
        v176_reg_513 <= grp_fu_156_p2;
        v177_reg_518 <= grp_fu_164_p2;
        v178_reg_523 <= grp_fu_173_p2;
        v178_reg_523_pp0_iter41_reg <= v178_reg_523;
        v181_reg_530 <= v181_fu_387_p3;
        v206_read_reg_418_pp0_iter10_reg <= v206_read_reg_418_pp0_iter9_reg;
        v206_read_reg_418_pp0_iter11_reg <= v206_read_reg_418_pp0_iter10_reg;
        v206_read_reg_418_pp0_iter12_reg <= v206_read_reg_418_pp0_iter11_reg;
        v206_read_reg_418_pp0_iter13_reg <= v206_read_reg_418_pp0_iter12_reg;
        v206_read_reg_418_pp0_iter14_reg <= v206_read_reg_418_pp0_iter13_reg;
        v206_read_reg_418_pp0_iter15_reg <= v206_read_reg_418_pp0_iter14_reg;
        v206_read_reg_418_pp0_iter16_reg <= v206_read_reg_418_pp0_iter15_reg;
        v206_read_reg_418_pp0_iter2_reg <= v206_read_reg_418_pp0_iter1_reg;
        v206_read_reg_418_pp0_iter3_reg <= v206_read_reg_418_pp0_iter2_reg;
        v206_read_reg_418_pp0_iter4_reg <= v206_read_reg_418_pp0_iter3_reg;
        v206_read_reg_418_pp0_iter5_reg <= v206_read_reg_418_pp0_iter4_reg;
        v206_read_reg_418_pp0_iter6_reg <= v206_read_reg_418_pp0_iter5_reg;
        v206_read_reg_418_pp0_iter7_reg <= v206_read_reg_418_pp0_iter6_reg;
        v206_read_reg_418_pp0_iter8_reg <= v206_read_reg_418_pp0_iter7_reg;
        v206_read_reg_418_pp0_iter9_reg <= v206_read_reg_418_pp0_iter8_reg;
        v209_load_reg_476 <= v209_q0;
        v215_addr_reg_465_pp0_iter10_reg <= v215_addr_reg_465_pp0_iter9_reg;
        v215_addr_reg_465_pp0_iter11_reg <= v215_addr_reg_465_pp0_iter10_reg;
        v215_addr_reg_465_pp0_iter12_reg <= v215_addr_reg_465_pp0_iter11_reg;
        v215_addr_reg_465_pp0_iter13_reg <= v215_addr_reg_465_pp0_iter12_reg;
        v215_addr_reg_465_pp0_iter14_reg <= v215_addr_reg_465_pp0_iter13_reg;
        v215_addr_reg_465_pp0_iter15_reg <= v215_addr_reg_465_pp0_iter14_reg;
        v215_addr_reg_465_pp0_iter16_reg <= v215_addr_reg_465_pp0_iter15_reg;
        v215_addr_reg_465_pp0_iter17_reg <= v215_addr_reg_465_pp0_iter16_reg;
        v215_addr_reg_465_pp0_iter18_reg <= v215_addr_reg_465_pp0_iter17_reg;
        v215_addr_reg_465_pp0_iter19_reg <= v215_addr_reg_465_pp0_iter18_reg;
        v215_addr_reg_465_pp0_iter20_reg <= v215_addr_reg_465_pp0_iter19_reg;
        v215_addr_reg_465_pp0_iter21_reg <= v215_addr_reg_465_pp0_iter20_reg;
        v215_addr_reg_465_pp0_iter22_reg <= v215_addr_reg_465_pp0_iter21_reg;
        v215_addr_reg_465_pp0_iter23_reg <= v215_addr_reg_465_pp0_iter22_reg;
        v215_addr_reg_465_pp0_iter24_reg <= v215_addr_reg_465_pp0_iter23_reg;
        v215_addr_reg_465_pp0_iter25_reg <= v215_addr_reg_465_pp0_iter24_reg;
        v215_addr_reg_465_pp0_iter26_reg <= v215_addr_reg_465_pp0_iter25_reg;
        v215_addr_reg_465_pp0_iter27_reg <= v215_addr_reg_465_pp0_iter26_reg;
        v215_addr_reg_465_pp0_iter28_reg <= v215_addr_reg_465_pp0_iter27_reg;
        v215_addr_reg_465_pp0_iter29_reg <= v215_addr_reg_465_pp0_iter28_reg;
        v215_addr_reg_465_pp0_iter2_reg <= v215_addr_reg_465;
        v215_addr_reg_465_pp0_iter30_reg <= v215_addr_reg_465_pp0_iter29_reg;
        v215_addr_reg_465_pp0_iter31_reg <= v215_addr_reg_465_pp0_iter30_reg;
        v215_addr_reg_465_pp0_iter32_reg <= v215_addr_reg_465_pp0_iter31_reg;
        v215_addr_reg_465_pp0_iter33_reg <= v215_addr_reg_465_pp0_iter32_reg;
        v215_addr_reg_465_pp0_iter34_reg <= v215_addr_reg_465_pp0_iter33_reg;
        v215_addr_reg_465_pp0_iter35_reg <= v215_addr_reg_465_pp0_iter34_reg;
        v215_addr_reg_465_pp0_iter36_reg <= v215_addr_reg_465_pp0_iter35_reg;
        v215_addr_reg_465_pp0_iter37_reg <= v215_addr_reg_465_pp0_iter36_reg;
        v215_addr_reg_465_pp0_iter38_reg <= v215_addr_reg_465_pp0_iter37_reg;
        v215_addr_reg_465_pp0_iter39_reg <= v215_addr_reg_465_pp0_iter38_reg;
        v215_addr_reg_465_pp0_iter3_reg <= v215_addr_reg_465_pp0_iter2_reg;
        v215_addr_reg_465_pp0_iter40_reg <= v215_addr_reg_465_pp0_iter39_reg;
        v215_addr_reg_465_pp0_iter41_reg <= v215_addr_reg_465_pp0_iter40_reg;
        v215_addr_reg_465_pp0_iter42_reg <= v215_addr_reg_465_pp0_iter41_reg;
        v215_addr_reg_465_pp0_iter4_reg <= v215_addr_reg_465_pp0_iter3_reg;
        v215_addr_reg_465_pp0_iter5_reg <= v215_addr_reg_465_pp0_iter4_reg;
        v215_addr_reg_465_pp0_iter6_reg <= v215_addr_reg_465_pp0_iter5_reg;
        v215_addr_reg_465_pp0_iter7_reg <= v215_addr_reg_465_pp0_iter6_reg;
        v215_addr_reg_465_pp0_iter8_reg <= v215_addr_reg_465_pp0_iter7_reg;
        v215_addr_reg_465_pp0_iter9_reg <= v215_addr_reg_465_pp0_iter8_reg;
        v219_load_reg_481 <= v219_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        cmp20_i_reg_455 <= cmp20_i_fu_296_p2;
        cmp5_i42_reg_450 <= cmp5_i42_fu_291_p2;
        icmp_ln284_reg_446 <= icmp_ln284_fu_246_p2;
        select_ln284_reg_423 <= select_ln284_fu_208_p3;
        trunc_ln289_reg_436 <= trunc_ln289_fu_224_p1;
        v168_reg_429 <= v168_fu_216_p3;
        v206_read_reg_418 <= v206;
        v206_read_reg_418_pp0_iter1_reg <= v206_read_reg_418;
        v215_addr_reg_465 <= zext_ln285_fu_301_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln285_reg_441 <= icmp_ln285_fu_240_p2;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln284_fu_246_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter43_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter43 == 1'b0)& (ap_enable_reg_pp0_iter42 == 1'b0) & (ap_enable_reg_pp0_iter41 == 1'b0) & (ap_enable_reg_pp0_iter40 == 1'b0) & (ap_enable_reg_pp0_iter39 == 1'b0) & (ap_enable_reg_pp0_iter38 == 1'b0) & (ap_enable_reg_pp0_iter37 == 1'b0) & (ap_enable_reg_pp0_iter36 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter10_reg) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_927)) begin
            ap_phi_mux_icmp_ln28518_phi_fu_145_p4 = icmp_ln285_reg_441;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln28518_phi_fu_145_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln28518_phi_fu_145_p4 = icmp_ln285_reg_441;
        end
    end else begin
        ap_phi_mux_icmp_ln28518_phi_fu_145_p4 = icmp_ln285_reg_441;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten15_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten15_load = indvar_flatten15_fu_82;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v16816_load = 9'd0;
    end else begin
        ap_sig_allocacmp_v16816_load = v16816_fu_86;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v16917_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v16917_load = v16917_fu_90;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_152_ce = 1'b1;
    end else begin
        grp_fu_152_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_156_ce = 1'b1;
    end else begin
        grp_fu_156_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_160_ce = 1'b1;
    end else begin
        grp_fu_160_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_164_ce = 1'b1;
    end else begin
        grp_fu_164_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_168_ce = 1'b1;
    end else begin
        grp_fu_168_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grp_fu_173_ce = 1'b1;
    end else begin
        grp_fu_173_ce = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v209_ce0_local = 1'b1;
    end else begin
        v209_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter43 == 1'b1))) begin
        v215_ce0_local = 1'b1;
    end else begin
        v215_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v215_ce1_local = 1'b1;
    end else begin
        v215_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter43 == 1'b1))) begin
        v215_we0_local = 1'b1;
    end else begin
        v215_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v219_ce0_local = 1'b1;
    end else begin
        v219_ce0_local = 1'b0;
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
assign add_ln284_1_fu_234_p2 = (ap_sig_allocacmp_indvar_flatten15_load + 16'd1);
assign add_ln284_fu_202_p2 = (ap_sig_allocacmp_v16816_load + 9'd1);
assign add_ln289_fu_309_p2 = (sub_ln289_fu_285_p2 + zext_ln289_1_fu_306_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_00001 = ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_257 = ((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end
always @ (*) begin
    ap_condition_927 = ((icmp_ln284_reg_446 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln296_fu_339_p1 = v178_reg_523_pp0_iter41_reg;
assign bitcast_ln299_fu_393_p1 = v181_reg_530;
assign cmp20_i_fu_296_p2 = ((v168_reg_429 == 9'd259) ? 1'b1 : 1'b0);
assign cmp5_i42_fu_291_p2 = ((v168_reg_429 == 9'd0) ? 1'b1 : 1'b0);
assign grp_fu_152_p0 = v209_load_reg_476;
assign grp_fu_152_p1 = v219_load_reg_481;
assign icmp_ln284_fu_246_p2 = ((ap_sig_allocacmp_indvar_flatten15_load == 16'd62399) ? 1'b1 : 1'b0);
assign icmp_ln285_fu_240_p2 = ((v169_fu_228_p2 == 8'd240) ? 1'b1 : 1'b0);
assign icmp_ln296_1_fu_362_p2 = ((trunc_ln296_fu_352_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln296_fu_356_p2 = ((tmp_fu_342_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln296_fu_368_p2 = (icmp_ln296_fu_356_p2 | icmp_ln296_1_fu_362_p2);
assign select_ln284_fu_208_p3 = ((ap_phi_mux_icmp_ln28518_phi_fu_145_p4[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v16917_load);
assign sub_ln289_fu_285_p2 = (tmp_10_fu_274_p3 - zext_ln289_fu_281_p1);
assign tmp_10_fu_274_p3 = {{trunc_ln289_reg_436}, {8'd0}};
assign tmp_9_fu_267_p3 = {{v168_reg_429}, {4'd0}};
assign tmp_fu_342_p4 = {{bitcast_ln296_fu_339_p1[30:23]}};
assign trunc_ln289_fu_224_p1 = v168_fu_216_p3[7:0];
assign trunc_ln296_fu_352_p1 = bitcast_ln296_fu_339_p1[22:0];
assign v168_fu_216_p3 = ((ap_phi_mux_icmp_ln28518_phi_fu_145_p4[0:0] == 1'b1) ? add_ln284_fu_202_p2 : ap_sig_allocacmp_v16816_load);
assign v169_fu_228_p2 = (select_ln284_fu_208_p3 + 8'd1);
assign v170_fu_328_p1 = v215_q1;
assign v171_fu_332_p3 = ((cmp5_i42_reg_450_pp0_iter10_reg[0:0] == 1'b1) ? 32'd0 : v170_fu_328_p1);
assign v179_fu_374_p2 = (or_ln296_fu_368_p2 & grp_fu_168_p2);
assign v180_fu_380_p3 = ((v179_fu_374_p2[0:0] == 1'b1) ? 32'd1065353216 : v178_reg_523_pp0_iter41_reg);
assign v181_fu_387_p3 = ((cmp20_i_reg_455_pp0_iter41_reg[0:0] == 1'b1) ? v180_fu_380_p3 : v171_reg_502_pp0_iter41_reg);
assign v209_address0 = zext_ln289_2_fu_315_p1;
assign v209_ce0 = v209_ce0_local;
assign v215_address0 = v215_addr_reg_465_pp0_iter42_reg;
assign v215_address1 = v215_addr_reg_465_pp0_iter9_reg;
assign v215_ce0 = v215_ce0_local;
assign v215_ce1 = v215_ce1_local;
assign v215_d0 = bitcast_ln299_fu_393_p1;
assign v215_we0 = v215_we0_local;
assign v219_address0 = zext_ln285_fu_301_p1;
assign v219_ce0 = v219_ce0_local;
assign zext_ln285_fu_301_p1 = select_ln284_reg_423;
assign zext_ln289_1_fu_306_p1 = select_ln284_reg_423;
assign zext_ln289_2_fu_315_p1 = add_ln289_fu_309_p2;
assign zext_ln289_fu_281_p1 = tmp_9_fu_267_p3;
endmodule 