
module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 22'd1;
parameter    ap_ST_fsm_pp0_stage1 = 22'd2;
parameter    ap_ST_fsm_pp0_stage2 = 22'd4;
parameter    ap_ST_fsm_pp0_stage3 = 22'd8;
parameter    ap_ST_fsm_pp0_stage4 = 22'd16;
parameter    ap_ST_fsm_pp0_stage5 = 22'd32;
parameter    ap_ST_fsm_pp0_stage6 = 22'd64;
parameter    ap_ST_fsm_pp0_stage7 = 22'd128;
parameter    ap_ST_fsm_pp0_stage8 = 22'd256;
parameter    ap_ST_fsm_pp0_stage9 = 22'd512;
parameter    ap_ST_fsm_pp0_stage10 = 22'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 22'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 22'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 22'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 22'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 22'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 22'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 22'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 22'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 22'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 22'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 22'd2097152;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [9:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [9:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [9:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [9:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [9:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [9:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [9:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [9:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [9:0] m2_2_address1;
output   m2_2_ce1;
input  [63:0] m2_2_q1;
output  [9:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [9:0] m2_3_address1;
output   m2_3_ce1;
input  [63:0] m2_3_q1;
output  [9:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [9:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [9:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [9:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [21:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_subdone;
wire   [0:0] icmp_ln15_fu_972_p2;
reg    ap_condition_exit_pp0_iter0_stage21;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1648_reg_384;
reg   [63:0] reg_423;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg   [63:0] reg_427;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_431;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_435;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] grp_fu_415_p2;
reg   [63:0] reg_439;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] and_ln11_1_fu_500_p2;
reg   [0:0] and_ln11_1_reg_1079;
wire   [0:0] empty_fu_512_p2;
reg   [0:0] empty_reg_1084;
wire   [0:0] icmp_ln18_mid211_fu_536_p2;
reg   [0:0] icmp_ln18_mid211_reg_1090;
reg   [0:0] tmp_3_reg_1096;
reg   [2:0] tmp_8_reg_1101;
wire   [3:0] indvars_iv46_udiv_fu_631_p4;
reg   [3:0] indvars_iv46_udiv_reg_1108;
wire   [5:0] empty_8_fu_641_p1;
reg   [5:0] empty_8_reg_1113;
wire   [2:0] tmp_1_fu_645_p4;
reg   [2:0] tmp_1_reg_1119;
wire   [1:0] trunc_ln18_fu_655_p1;
reg   [1:0] trunc_ln18_reg_1124;
wire   [0:0] icmp_ln18_fu_735_p2;
reg   [0:0] icmp_ln18_reg_1189;
wire   [63:0] temp_x_fu_786_p11;
reg   [63:0] temp_x_reg_1194;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] m2_0_load_reg_1199;
reg   [63:0] m2_1_load_reg_1204;
reg   [63:0] m2_2_load_reg_1209;
reg   [63:0] m2_3_load_reg_1214;
reg   [63:0] m2_0_load_1_reg_1219;
reg   [63:0] m2_1_load_1_reg_1224;
reg   [63:0] m2_2_load_1_reg_1229;
reg   [63:0] m2_3_load_1_reg_1234;
wire   [0:0] icmp_ln17_fu_822_p2;
reg   [0:0] icmp_ln17_reg_1239;
wire   [63:0] bitcast_ln23_fu_833_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln23_1_fu_837_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln23_2_fu_841_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln23_3_fu_845_p1;
wire   [63:0] bitcast_ln23_4_fu_849_p1;
reg   [9:0] prod_0_addr_reg_1269;
reg   [9:0] prod_1_addr_reg_1274;
reg   [9:0] prod_2_addr_reg_1279;
reg   [9:0] prod_3_addr_reg_1284;
wire   [63:0] bitcast_ln23_5_fu_867_p1;
wire   [63:0] grp_fu_419_p2;
reg   [63:0] mul_reg_1294;
wire   [63:0] bitcast_ln23_6_fu_871_p1;
wire   [63:0] bitcast_ln24_fu_875_p1;
reg   [63:0] mul_1_reg_1309;
wire   [63:0] bitcast_ln23_7_fu_880_p1;
wire   [63:0] bitcast_ln24_2_fu_884_p1;
reg   [63:0] mul_2_reg_1324;
wire   [63:0] bitcast_ln24_4_fu_889_p1;
reg   [63:0] mul_3_reg_1334;
wire   [63:0] bitcast_ln24_6_fu_894_p1;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] mul_4_reg_1344;
reg   [63:0] mul_5_reg_1349;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] mul_6_reg_1354;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] mul_7_reg_1359;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [9:0] prod_0_addr_1_reg_1364;
reg   [9:0] prod_1_addr_1_reg_1369;
reg   [9:0] prod_2_addr_1_reg_1374;
reg   [9:0] prod_3_addr_1_reg_1379;
wire   [63:0] bitcast_ln24_8_fu_941_p1;
wire   [0:0] icmp_ln16_fu_966_p2;
reg   [0:0] icmp_ln16_reg_1389;
reg   [0:0] icmp_ln15_reg_1394;
wire   [63:0] bitcast_ln24_10_fu_988_p1;
wire   [63:0] bitcast_ln24_12_fu_993_p1;
wire   [63:0] bitcast_ln24_14_fu_998_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1648_phi_fu_387_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1747_phi_fu_398_p4;
reg   [0:0] ap_phi_mux_icmp_ln1846_phi_fu_408_p4;
wire   [63:0] zext_ln21_fu_681_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_702_p1;
wire   [63:0] zext_ln23_1_fu_721_p1;
wire   [63:0] p_cast_fu_859_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] p_cast2_fu_912_p1;
wire    ap_block_pp0_stage19;
reg   [14:0] indvar_flatten3539_fu_122;
wire   [14:0] add_ln15_1_fu_960_p2;
wire    ap_block_pp0_stage21;
reg   [6:0] jj40_fu_126;
wire   [6:0] jj_fu_585_p3;
reg   [13:0] indvar_flatten1241_fu_130;
wire   [13:0] select_ln16_1_fu_952_p3;
reg   [6:0] kk42_fu_134;
wire   [6:0] kk_fu_542_p3;
reg   [6:0] ap_sig_allocacmp_kk42_load;
reg   [10:0] indvar_flatten43_fu_138;
wire   [10:0] select_ln17_1_fu_815_p3;
wire    ap_block_pp0_stage2;
reg   [6:0] i44_fu_142;
wire   [6:0] i_fu_624_p3;
reg   [3:0] k45_fu_146;
wire   [3:0] k_fu_729_p2;
reg   [6:0] add_ln1549_fu_150;
wire   [6:0] add_ln15_fu_741_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m1_2_ce0_local;
reg    m1_3_ce0_local;
reg    m2_0_ce1_local;
reg    m2_0_ce0_local;
reg    m2_1_ce1_local;
reg    m2_1_ce0_local;
reg    m2_2_ce1_local;
reg    m2_2_ce0_local;
reg    m2_3_ce1_local;
reg    m2_3_ce0_local;
reg    prod_0_ce0_local;
reg   [9:0] prod_0_address0_local;
reg    prod_0_we0_local;
reg   [63:0] prod_0_d0_local;
wire   [63:0] bitcast_ln24_1_fu_899_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] bitcast_ln24_9_fu_1003_p1;
wire    ap_block_pp0_stage7;
reg    prod_1_ce0_local;
reg   [9:0] prod_1_address0_local;
wire    ap_block_pp0_stage9;
reg    prod_1_we0_local;
reg   [63:0] prod_1_d0_local;
wire   [63:0] bitcast_ln24_3_fu_920_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] bitcast_ln24_11_fu_1008_p1;
reg    prod_2_ce0_local;
reg   [9:0] prod_2_address0_local;
wire    ap_block_pp0_stage10;
reg    prod_2_we0_local;
reg   [63:0] prod_2_d0_local;
wire   [63:0] bitcast_ln24_5_fu_925_p1;
wire   [63:0] bitcast_ln24_13_fu_1013_p1;
reg    prod_3_ce0_local;
reg   [9:0] prod_3_address0_local;
wire    ap_block_pp0_stage11;
reg    prod_3_we0_local;
reg   [63:0] prod_3_d0_local;
wire   [63:0] bitcast_ln24_7_fu_936_p1;
wire   [63:0] bitcast_ln24_15_fu_1018_p1;
reg   [63:0] grp_fu_415_p0;
reg   [63:0] grp_fu_415_p1;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
reg   [63:0] grp_fu_419_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [0:0] xor_ln11_fu_494_p2;
wire   [6:0] select_ln11_fu_486_p3;
wire   [0:0] exitcond_flatten_not_fu_518_p2;
wire   [0:0] and_ln11_fu_530_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_524_p2;
wire   [6:0] add_ln16_fu_506_p2;
wire   [6:0] i_mid26_fu_593_p3;
wire   [0:0] empty_6_fu_606_p2;
wire   [0:0] empty_7_fu_610_p2;
wire   [6:0] add_ln17_fu_600_p2;
wire   [3:0] k_mid2_fu_616_p3;
wire   [0:0] tmp_fu_659_p3;
wire   [0:0] or_ln21_fu_667_p2;
wire   [9:0] add_ln21_1_fu_672_p4;
wire   [2:0] trunc_ln23_fu_689_p1;
wire   [9:0] add_ln_fu_693_p4;
wire   [9:0] or_ln_fu_710_p5;
wire   [63:0] temp_x_fu_786_p2;
wire   [63:0] temp_x_fu_786_p4;
wire   [63:0] temp_x_fu_786_p6;
wire   [63:0] temp_x_fu_786_p8;
wire   [63:0] temp_x_fu_786_p9;
wire   [10:0] add_ln17_1_fu_809_p2;
wire   [9:0] tmp_2_fu_853_p3;
wire   [9:0] tmp_4_fu_904_p4;
wire   [13:0] add_ln16_1_fu_946_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage10;
reg    ap_idle_pp0_0to0;
reg   [21:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1182;
reg    ap_condition_1186;
reg    ap_condition_1199;
reg    ap_condition_584;
wire   [1:0] temp_x_fu_786_p1;
wire   [1:0] temp_x_fu_786_p3;
wire  signed [1:0] temp_x_fu_786_p5;
wire  signed [1:0] temp_x_fu_786_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 22'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten3539_fu_122 = 15'd0;
#0 jj40_fu_126 = 7'd0;
#0 indvar_flatten1241_fu_130 = 14'd0;
#0 kk42_fu_134 = 7'd0;
#0 indvar_flatten43_fu_138 = 11'd0;
#0 i44_fu_142 = 7'd0;
#0 k45_fu_146 = 4'd0;
#0 add_ln1549_fu_150 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_415_p0),.din1(grp_fu_415_p1),.ce(1'b1),.dout(grp_fu_415_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(temp_x_reg_1194),.din1(grp_fu_419_p1),.ce(1'b1),.dout(grp_fu_419_p2));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(temp_x_fu_786_p2),.din1(temp_x_fu_786_p4),.din2(temp_x_fu_786_p6),.din3(temp_x_fu_786_p8),.def(temp_x_fu_786_p9),.sel(trunc_ln18_reg_1124),.dout(temp_x_fu_786_p11));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage21),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage21_subdone) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1182)) begin
            add_ln1549_fu_150 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1549_fu_150 <= add_ln15_fu_741_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage10) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1182)) begin
            i44_fu_142 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i44_fu_142 <= i_fu_624_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1199)) begin
            icmp_ln1648_reg_384 <= icmp_ln16_reg_1389;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1648_reg_384 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1182)) begin
            indvar_flatten1241_fu_130 <= 14'd0;
        end else if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            indvar_flatten1241_fu_130 <= select_ln16_1_fu_952_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1182)) begin
            indvar_flatten3539_fu_122 <= 15'd0;
        end else if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            indvar_flatten3539_fu_122 <= add_ln15_1_fu_960_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1182)) begin
            indvar_flatten43_fu_138 <= 11'd0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            indvar_flatten43_fu_138 <= select_ln17_1_fu_815_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1182)) begin
            jj40_fu_126 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj40_fu_126 <= jj_fu_585_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1182)) begin
            k45_fu_146 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k45_fu_146 <= k_fu_729_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_584)) begin
        kk42_fu_134 <= kk_fu_542_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln11_1_reg_1079 <= and_ln11_1_fu_500_p2;
        empty_reg_1084 <= empty_fu_512_p2;
        icmp_ln18_mid211_reg_1090 <= icmp_ln18_mid211_fu_536_p2;
        tmp_3_reg_1096 <= kk_fu_542_p3[32'd2];
        tmp_8_reg_1101 <= {{kk_fu_542_p3[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_8_reg_1113 <= empty_8_fu_641_p1;
        indvars_iv46_udiv_reg_1108 <= {{jj_fu_585_p3[5:2]}};
        tmp_1_reg_1119 <= {{jj_fu_585_p3[5:3]}};
        trunc_ln18_reg_1124 <= trunc_ln18_fu_655_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        icmp_ln15_reg_1394 <= icmp_ln15_fu_972_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        icmp_ln16_reg_1389 <= icmp_ln16_fu_966_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln17_reg_1239 <= icmp_ln17_fu_822_p2;
        m2_0_load_1_reg_1219 <= m2_0_q0;
        m2_0_load_reg_1199 <= m2_0_q1;
        m2_1_load_1_reg_1224 <= m2_1_q0;
        m2_1_load_reg_1204 <= m2_1_q1;
        m2_2_load_1_reg_1229 <= m2_2_q0;
        m2_2_load_reg_1209 <= m2_2_q1;
        m2_3_load_1_reg_1234 <= m2_3_q0;
        m2_3_load_reg_1214 <= m2_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln18_reg_1189 <= icmp_ln18_fu_735_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_1_reg_1309 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul_2_reg_1324 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul_3_reg_1334 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul_4_reg_1344 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        mul_5_reg_1349 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul_6_reg_1354 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        mul_7_reg_1359 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_reg_1294 <= grp_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_0_addr_1_reg_1364[9 : 1] <= p_cast2_fu_912_p1[9 : 1];
        prod_1_addr_1_reg_1369[9 : 1] <= p_cast2_fu_912_p1[9 : 1];
        prod_2_addr_1_reg_1374[9 : 1] <= p_cast2_fu_912_p1[9 : 1];
        prod_3_addr_1_reg_1379[9 : 1] <= p_cast2_fu_912_p1[9 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_addr_reg_1269 <= p_cast_fu_859_p1;
        prod_1_addr_reg_1274 <= p_cast_fu_859_p1;
        prod_2_addr_reg_1279 <= p_cast_fu_859_p1;
        prod_3_addr_reg_1284 <= p_cast_fu_859_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_423 <= prod_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_427 <= prod_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        reg_431 <= prod_2_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_435 <= prod_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        reg_439 <= grp_fu_415_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_x_reg_1194 <= temp_x_fu_786_p11;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_972_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage21_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_condition_exit_pp0_iter0_stage21 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage21 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (icmp_ln15_reg_1394 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter1_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1186)) begin
            ap_phi_mux_icmp_ln1648_phi_fu_387_p4 = icmp_ln16_reg_1389;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1648_phi_fu_387_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1648_phi_fu_387_p4 = icmp_ln16_reg_1389;
        end
    end else begin
        ap_phi_mux_icmp_ln1648_phi_fu_387_p4 = icmp_ln16_reg_1389;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1186)) begin
            ap_phi_mux_icmp_ln1747_phi_fu_398_p4 = icmp_ln17_reg_1239;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1747_phi_fu_398_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1747_phi_fu_398_p4 = icmp_ln17_reg_1239;
        end
    end else begin
        ap_phi_mux_icmp_ln1747_phi_fu_398_p4 = icmp_ln17_reg_1239;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1186)) begin
            ap_phi_mux_icmp_ln1846_phi_fu_408_p4 = icmp_ln18_reg_1189;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1846_phi_fu_408_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1846_phi_fu_408_p4 = icmp_ln18_reg_1189;
        end
    end else begin
        ap_phi_mux_icmp_ln1846_phi_fu_408_p4 = icmp_ln18_reg_1189;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage21_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk42_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk42_load = kk42_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p0 = bitcast_ln24_14_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_415_p0 = bitcast_ln24_12_fu_993_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p0 = bitcast_ln24_10_fu_988_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_415_p0 = bitcast_ln24_8_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_415_p0 = bitcast_ln24_6_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_415_p0 = bitcast_ln24_4_fu_889_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_415_p0 = bitcast_ln24_2_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_415_p0 = bitcast_ln24_fu_875_p1;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_415_p1 = mul_7_reg_1359;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_415_p1 = mul_6_reg_1354;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_415_p1 = mul_5_reg_1349;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        grp_fu_415_p1 = mul_4_reg_1344;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_415_p1 = mul_3_reg_1334;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_415_p1 = mul_2_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_415_p1 = mul_1_reg_1309;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_415_p1 = mul_reg_1294;
    end else begin
        grp_fu_415_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_419_p1 = bitcast_ln23_7_fu_880_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_419_p1 = bitcast_ln23_6_fu_871_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_419_p1 = bitcast_ln23_5_fu_867_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_419_p1 = bitcast_ln23_4_fu_849_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_419_p1 = bitcast_ln23_3_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_419_p1 = bitcast_ln23_2_fu_841_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_419_p1 = bitcast_ln23_1_fu_837_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_419_p1 = bitcast_ln23_fu_833_p1;
        end else begin
            grp_fu_419_p1 = 'bx;
        end
    end else begin
        grp_fu_419_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_0_ce0_local = 1'b1;
    end else begin
        m1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_1_ce0_local = 1'b1;
    end else begin
        m1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_2_ce0_local = 1'b1;
    end else begin
        m1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_3_ce0_local = 1'b1;
    end else begin
        m1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_2_ce0_local = 1'b1;
    end else begin
        m2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_2_ce1_local = 1'b1;
    end else begin
        m2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_3_ce1_local = 1'b1;
    end else begin
        m2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_address0_local = prod_0_addr_1_reg_1364;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_0_address0_local = p_cast2_fu_912_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        prod_0_address0_local = prod_0_addr_reg_1269;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_address0_local = p_cast_fu_859_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_d0_local = bitcast_ln24_9_fu_1003_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        prod_0_d0_local = bitcast_ln24_1_fu_899_p1;
    end else begin
        prod_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        prod_1_address0_local = prod_1_addr_1_reg_1369;
    end else if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        prod_1_address0_local = prod_1_addr_reg_1274;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_1_d0_local = bitcast_ln24_11_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_1_d0_local = bitcast_ln24_3_fu_920_p1;
    end else begin
        prod_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        prod_2_address0_local = prod_2_addr_1_reg_1374;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        prod_2_address0_local = prod_2_addr_reg_1279;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_2_d0_local = bitcast_ln24_13_fu_1013_p1;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        prod_2_d0_local = bitcast_ln24_5_fu_925_p1;
    end else begin
        prod_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_3_address0_local = prod_3_addr_1_reg_1379;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)))) begin
        prod_3_address0_local = prod_3_addr_reg_1284;
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_3_d0_local = bitcast_ln24_15_fu_1018_p1;
    end else if (((1'b0 == ap_block_pp0_stage21) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        prod_3_d0_local = bitcast_ln24_7_fu_936_p1;
    end else begin
        prod_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage10) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_960_p2 = (indvar_flatten3539_fu_122 + 15'd1);
assign add_ln15_fu_741_p2 = (jj_fu_585_p3 + 7'd8);
assign add_ln16_1_fu_946_p2 = (indvar_flatten1241_fu_130 + 14'd1);
assign add_ln16_fu_506_p2 = (select_ln11_fu_486_p3 + 7'd8);
assign add_ln17_1_fu_809_p2 = (indvar_flatten43_fu_138 + 11'd1);
assign add_ln17_fu_600_p2 = (i_mid26_fu_593_p3 + 7'd1);
assign add_ln21_1_fu_672_p4 = {{{empty_8_fu_641_p1}, {tmp_8_reg_1101}}, {or_ln21_fu_667_p2}};
assign add_ln_fu_693_p4 = {{{tmp_8_reg_1101}, {trunc_ln23_fu_689_p1}}, {indvars_iv46_udiv_fu_631_p4}};
assign and_ln11_1_fu_500_p2 = (xor_ln11_fu_494_p2 & ap_phi_mux_icmp_ln1747_phi_fu_398_p4);
assign and_ln11_fu_530_p2 = (xor_ln11_fu_494_p2 & ap_phi_mux_icmp_ln1846_phi_fu_408_p4);
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
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1182 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1186 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln15_reg_1394 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1199 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_1394 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_584 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage21;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_1_fu_837_p1 = m2_1_load_reg_1204;
assign bitcast_ln23_2_fu_841_p1 = m2_2_load_reg_1209;
assign bitcast_ln23_3_fu_845_p1 = m2_3_load_reg_1214;
assign bitcast_ln23_4_fu_849_p1 = m2_0_load_1_reg_1219;
assign bitcast_ln23_5_fu_867_p1 = m2_1_load_1_reg_1224;
assign bitcast_ln23_6_fu_871_p1 = m2_2_load_1_reg_1229;
assign bitcast_ln23_7_fu_880_p1 = m2_3_load_1_reg_1234;
assign bitcast_ln23_fu_833_p1 = m2_0_load_reg_1199;
assign bitcast_ln24_10_fu_988_p1 = reg_427;
assign bitcast_ln24_11_fu_1008_p1 = reg_439;
assign bitcast_ln24_12_fu_993_p1 = reg_431;
assign bitcast_ln24_13_fu_1013_p1 = reg_439;
assign bitcast_ln24_14_fu_998_p1 = reg_435;
assign bitcast_ln24_15_fu_1018_p1 = reg_439;
assign bitcast_ln24_1_fu_899_p1 = reg_439;
assign bitcast_ln24_2_fu_884_p1 = reg_427;
assign bitcast_ln24_3_fu_920_p1 = reg_439;
assign bitcast_ln24_4_fu_889_p1 = reg_431;
assign bitcast_ln24_5_fu_925_p1 = reg_439;
assign bitcast_ln24_6_fu_894_p1 = reg_435;
assign bitcast_ln24_7_fu_936_p1 = reg_439;
assign bitcast_ln24_8_fu_941_p1 = reg_423;
assign bitcast_ln24_9_fu_1003_p1 = reg_439;
assign bitcast_ln24_fu_875_p1 = reg_423;
assign empty_6_fu_606_p2 = (icmp_ln18_mid211_reg_1090 | and_ln11_1_reg_1079);
assign empty_7_fu_610_p2 = (icmp_ln1648_reg_384 | empty_6_fu_606_p2);
assign empty_8_fu_641_p1 = i_fu_624_p3[5:0];
assign empty_fu_512_p2 = (ap_phi_mux_icmp_ln1648_phi_fu_387_p4 | and_ln11_1_fu_500_p2);
assign exitcond_flatten_not_fu_518_p2 = (ap_phi_mux_icmp_ln1747_phi_fu_398_p4 ^ 1'd1);
assign i_fu_624_p3 = ((icmp_ln18_mid211_reg_1090[0:0] == 1'b1) ? add_ln17_fu_600_p2 : i_mid26_fu_593_p3);
assign i_mid26_fu_593_p3 = ((empty_reg_1084[0:0] == 1'b1) ? 7'd0 : i44_fu_142);
assign icmp_ln15_fu_972_p2 = ((indvar_flatten3539_fu_122 == 15'd32767) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_966_p2 = ((select_ln16_1_fu_952_p3 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_822_p2 = ((select_ln17_1_fu_815_p3 == 11'd512) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_735_p2 = ((k_fu_729_p2 == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln18_mid211_fu_536_p2 = (not_exitcond_flatten_mid234_fu_524_p2 & and_ln11_fu_530_p2);
assign indvars_iv46_udiv_fu_631_p4 = {{jj_fu_585_p3[5:2]}};
assign jj_fu_585_p3 = ((icmp_ln1648_reg_384[0:0] == 1'b1) ? add_ln1549_fu_150 : jj40_fu_126);
assign k_fu_729_p2 = (k_mid2_fu_616_p3 + 4'd1);
assign k_mid2_fu_616_p3 = ((empty_7_fu_610_p2[0:0] == 1'b1) ? 4'd0 : k45_fu_146);
assign kk_fu_542_p3 = ((and_ln11_1_fu_500_p2[0:0] == 1'b1) ? add_ln16_fu_506_p2 : select_ln11_fu_486_p3);
assign m1_0_address0 = zext_ln21_fu_681_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_681_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = zext_ln21_fu_681_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = zext_ln21_fu_681_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m2_0_address0 = zext_ln23_1_fu_721_p1;
assign m2_0_address1 = zext_ln23_fu_702_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = zext_ln23_1_fu_721_p1;
assign m2_1_address1 = zext_ln23_fu_702_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign m2_2_address0 = zext_ln23_1_fu_721_p1;
assign m2_2_address1 = zext_ln23_fu_702_p1;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_2_ce1 = m2_2_ce1_local;
assign m2_3_address0 = zext_ln23_1_fu_721_p1;
assign m2_3_address1 = zext_ln23_fu_702_p1;
assign m2_3_ce0 = m2_3_ce0_local;
assign m2_3_ce1 = m2_3_ce1_local;
assign not_exitcond_flatten_mid234_fu_524_p2 = (exitcond_flatten_not_fu_518_p2 | ap_phi_mux_icmp_ln1648_phi_fu_387_p4);
assign or_ln21_fu_667_p2 = (tmp_fu_659_p3 | tmp_3_reg_1096);
assign or_ln_fu_710_p5 = {{{{tmp_8_reg_1101}, {trunc_ln23_fu_689_p1}}, {tmp_1_fu_645_p4}}, {1'd1}};
assign p_cast2_fu_912_p1 = tmp_4_fu_904_p4;
assign p_cast_fu_859_p1 = tmp_2_fu_853_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = prod_0_d0_local;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = prod_1_d0_local;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = prod_2_d0_local;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = prod_3_d0_local;
assign prod_3_we0 = prod_3_we0_local;
assign select_ln11_fu_486_p3 = ((ap_phi_mux_icmp_ln1648_phi_fu_387_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk42_load);
assign select_ln16_1_fu_952_p3 = ((icmp_ln1648_reg_384[0:0] == 1'b1) ? 14'd1 : add_ln16_1_fu_946_p2);
assign select_ln17_1_fu_815_p3 = ((empty_reg_1084[0:0] == 1'b1) ? 11'd1 : add_ln17_1_fu_809_p2);
assign temp_x_fu_786_p2 = m1_0_q0;
assign temp_x_fu_786_p4 = m1_1_q0;
assign temp_x_fu_786_p6 = m1_2_q0;
assign temp_x_fu_786_p8 = m1_3_q0;
assign temp_x_fu_786_p9 = 'bx;
assign tmp_1_fu_645_p4 = {{jj_fu_585_p3[5:3]}};
assign tmp_2_fu_853_p3 = {{empty_8_reg_1113}, {indvars_iv46_udiv_reg_1108}};
assign tmp_4_fu_904_p4 = {{{empty_8_reg_1113}, {tmp_1_reg_1119}}, {1'd1}};
assign tmp_fu_659_p3 = k_mid2_fu_616_p3[32'd2];
assign trunc_ln18_fu_655_p1 = k_mid2_fu_616_p3[1:0];
assign trunc_ln23_fu_689_p1 = k_mid2_fu_616_p3[2:0];
assign xor_ln11_fu_494_p2 = (ap_phi_mux_icmp_ln1648_phi_fu_387_p4 ^ 1'd1);
assign zext_ln21_fu_681_p1 = add_ln21_1_fu_672_p4;
assign zext_ln23_1_fu_721_p1 = or_ln_fu_710_p5;
assign zext_ln23_fu_702_p1 = add_ln_fu_693_p4;
always @ (posedge ap_clk) begin
    prod_0_addr_1_reg_1364[0] <= 1'b1;
    prod_1_addr_1_reg_1369[0] <= 1'b1;
    prod_2_addr_1_reg_1374[0] <= 1'b1;
    prod_3_addr_1_reg_1379[0] <= 1'b1;
end
endmodule 
