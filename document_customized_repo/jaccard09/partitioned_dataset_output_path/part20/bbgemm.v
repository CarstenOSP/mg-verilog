
module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m1_4_address0,m1_4_ce0,m1_4_q0,m1_5_address0,m1_5_ce0,m1_5_q0,m1_6_address0,m1_6_ce0,m1_6_q0,m1_7_address0,m1_7_ce0,m1_7_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_1_address0,m2_1_ce0,m2_1_q0,m2_2_address0,m2_2_ce0,m2_2_q0,m2_3_address0,m2_3_ce0,m2_3_q0,m2_4_address0,m2_4_ce0,m2_4_q0,m2_5_address0,m2_5_ce0,m2_5_q0,m2_6_address0,m2_6_ce0,m2_6_q0,m2_7_address0,m2_7_ce0,m2_7_q0,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0,prod_4_address0,prod_4_ce0,prod_4_we0,prod_4_d0,prod_4_q0,prod_5_address0,prod_5_ce0,prod_5_we0,prod_5_d0,prod_5_q0,prod_6_address0,prod_6_ce0,prod_6_we0,prod_6_d0,prod_6_q0,prod_7_address0,prod_7_ce0,prod_7_we0,prod_7_d0,prod_7_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 11'd1;
parameter    ap_ST_fsm_pp0_stage1 = 11'd2;
parameter    ap_ST_fsm_pp0_stage2 = 11'd4;
parameter    ap_ST_fsm_pp0_stage3 = 11'd8;
parameter    ap_ST_fsm_pp0_stage4 = 11'd16;
parameter    ap_ST_fsm_pp0_stage5 = 11'd32;
parameter    ap_ST_fsm_pp0_stage6 = 11'd64;
parameter    ap_ST_fsm_pp0_stage7 = 11'd128;
parameter    ap_ST_fsm_pp0_stage8 = 11'd256;
parameter    ap_ST_fsm_pp0_stage9 = 11'd512;
parameter    ap_ST_fsm_pp0_stage10 = 11'd1024;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [8:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [8:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [8:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [8:0] m1_4_address0;
output   m1_4_ce0;
input  [63:0] m1_4_q0;
output  [8:0] m1_5_address0;
output   m1_5_ce0;
input  [63:0] m1_5_q0;
output  [8:0] m1_6_address0;
output   m1_6_ce0;
input  [63:0] m1_6_q0;
output  [8:0] m1_7_address0;
output   m1_7_ce0;
input  [63:0] m1_7_q0;
output  [8:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [8:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [8:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [8:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [8:0] m2_4_address0;
output   m2_4_ce0;
input  [63:0] m2_4_q0;
output  [8:0] m2_5_address0;
output   m2_5_ce0;
input  [63:0] m2_5_q0;
output  [8:0] m2_6_address0;
output   m2_6_ce0;
input  [63:0] m2_6_q0;
output  [8:0] m2_7_address0;
output   m2_7_ce0;
input  [63:0] m2_7_q0;
output  [8:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [8:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [8:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [8:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
output  [8:0] prod_4_address0;
output   prod_4_ce0;
output   prod_4_we0;
output  [63:0] prod_4_d0;
input  [63:0] prod_4_q0;
output  [8:0] prod_5_address0;
output   prod_5_ce0;
output   prod_5_we0;
output  [63:0] prod_5_d0;
input  [63:0] prod_5_q0;
output  [8:0] prod_6_address0;
output   prod_6_ce0;
output   prod_6_we0;
output  [63:0] prod_6_d0;
input  [63:0] prod_6_q0;
output  [8:0] prod_7_address0;
output   prod_7_ce0;
output   prod_7_we0;
output  [63:0] prod_7_d0;
input  [63:0] prod_7_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
wire   [0:0] icmp_ln15_fu_1137_p2;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1685_reg_496;
wire   [63:0] grp_fu_537_p2;
reg   [63:0] reg_545;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] and_ln11_1_fu_611_p2;
reg   [0:0] and_ln11_1_reg_1281;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] empty_fu_617_p2;
reg   [0:0] empty_reg_1286;
wire   [0:0] exitcond_flatten_mid234_fu_647_p2;
reg   [0:0] exitcond_flatten_mid234_reg_1292;
wire   [0:0] empty_7_fu_659_p2;
reg   [0:0] empty_7_reg_1297;
wire   [0:0] icmp_ln22_mid211_fu_665_p2;
reg   [0:0] icmp_ln22_mid211_reg_1304;
wire   [0:0] first_iter_0_fu_772_p2;
reg   [0:0] first_iter_0_reg_1310;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] first_iter_0_reg_1310_pp0_iter1_reg;
wire   [2:0] indvars_iv37_udiv_fu_778_p4;
reg   [2:0] indvars_iv37_udiv_reg_1314;
wire   [5:0] empty_8_fu_798_p1;
reg   [5:0] empty_8_reg_1319;
wire   [2:0] trunc_ln18_fu_822_p1;
reg   [2:0] trunc_ln18_reg_1364;
wire   [0:0] icmp_ln23_fu_848_p2;
reg   [0:0] icmp_ln23_reg_1409;
wire   [0:0] xor_ln22_fu_868_p2;
reg   [0:0] xor_ln22_reg_1421;
wire   [63:0] temp_x_fu_942_p19;
reg   [63:0] temp_x_reg_1426;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] select_ln23_fu_981_p3;
reg   [63:0] select_ln23_reg_1431;
wire   [63:0] select_ln23_1_fu_988_p3;
reg   [63:0] select_ln23_1_reg_1436;
wire   [63:0] select_ln23_2_fu_995_p3;
reg   [63:0] select_ln23_2_reg_1441;
wire   [63:0] select_ln23_3_fu_1002_p3;
reg   [63:0] select_ln23_3_reg_1446;
wire   [63:0] bitcast_ln23_fu_1009_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln23_1_fu_1013_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln23_2_fu_1017_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln23_3_fu_1021_p1;
reg   [8:0] prod_0_addr_reg_1471;
reg   [8:0] prod_4_addr_reg_1476;
reg   [8:0] prod_1_addr_reg_1481;
reg   [8:0] prod_5_addr_reg_1486;
reg   [8:0] prod_2_addr_reg_1491;
reg   [8:0] prod_2_addr_reg_1491_pp0_iter1_reg;
reg   [8:0] prod_6_addr_reg_1496;
reg   [8:0] prod_6_addr_reg_1496_pp0_iter1_reg;
reg   [8:0] prod_3_addr_reg_1501;
reg   [8:0] prod_3_addr_reg_1501_pp0_iter1_reg;
reg   [8:0] prod_7_addr_reg_1506;
reg   [8:0] prod_7_addr_reg_1506_pp0_iter1_reg;
wire   [63:0] grp_fu_541_p2;
reg   [63:0] mul_reg_1511;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] select_ln24_fu_1043_p3;
reg   [63:0] select_ln24_reg_1516;
wire   [63:0] bitcast_ln24_fu_1062_p1;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul_1_reg_1526;
wire   [63:0] select_ln24_1_fu_1066_p3;
reg   [63:0] select_ln24_1_reg_1531;
wire   [0:0] icmp_ln18_fu_1119_p2;
reg   [0:0] icmp_ln18_reg_1536;
wire   [0:0] icmp_ln17_fu_1125_p2;
reg   [0:0] icmp_ln17_reg_1541;
wire   [0:0] icmp_ln16_fu_1131_p2;
reg   [0:0] icmp_ln16_reg_1546;
reg   [0:0] icmp_ln15_reg_1551;
wire   [63:0] bitcast_ln24_1_fu_1163_p1;
reg   [63:0] mul_2_reg_1560;
wire   [63:0] select_ln24_2_fu_1167_p3;
reg   [63:0] select_ln24_2_reg_1565;
wire   [63:0] bitcast_ln24_2_fu_1174_p1;
reg   [63:0] mul_3_reg_1575;
wire   [63:0] select_ln24_3_fu_1178_p3;
reg   [63:0] select_ln24_3_reg_1580;
wire   [63:0] bitcast_ln24_3_fu_1185_p1;
wire   [63:0] bitcast_ln24_7_fu_1207_p1;
reg   [63:0] bitcast_ln24_7_reg_1590;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln1685_phi_fu_499_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1784_phi_fu_510_p4;
reg   [0:0] ap_phi_mux_icmp_ln1883_phi_fu_520_p4;
reg   [0:0] ap_phi_mux_icmp_ln2282_phi_fu_530_p4;
wire   [63:0] p_cast_fu_810_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] p_cast3_fu_836_p1;
wire   [63:0] p_cast2_fu_1031_p1;
wire    ap_block_pp0_stage8;
reg   [15:0] indvar_flatten6873_fu_150;
wire   [15:0] add_ln15_1_fu_1073_p2;
wire    ap_block_pp0_stage10;
reg   [6:0] jj74_fu_154;
wire   [6:0] jj_fu_697_p3;
reg   [14:0] indvar_flatten3575_fu_158;
wire   [14:0] select_ln16_1_fu_1111_p3;
reg   [6:0] kk76_fu_162;
wire   [6:0] kk_fu_718_p3;
reg   [11:0] indvar_flatten1277_fu_166;
wire   [11:0] select_ln17_1_fu_1098_p3;
reg   [6:0] i78_fu_170;
wire   [6:0] i_fu_745_p3;
reg   [5:0] indvar_flatten79_fu_174;
wire   [5:0] select_ln18_1_fu_1085_p3;
reg   [3:0] k80_fu_178;
wire   [3:0] k_fu_765_p3;
reg   [3:0] j81_fu_182;
wire   [3:0] j_fu_854_p2;
reg   [6:0] add_ln1586_fu_186;
wire   [6:0] add_ln15_fu_874_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m1_2_ce0_local;
reg    m1_3_ce0_local;
reg    m1_4_ce0_local;
reg    m1_5_ce0_local;
reg    m1_6_ce0_local;
reg    m1_7_ce0_local;
reg    m2_1_ce0_local;
reg    m2_5_ce0_local;
reg    m2_2_ce0_local;
reg    m2_6_ce0_local;
reg    m2_3_ce0_local;
reg    m2_7_ce0_local;
reg    m2_0_ce0_local;
reg    m2_4_ce0_local;
reg    prod_0_ce0_local;
reg   [8:0] prod_0_address0_local;
reg    prod_0_we0_local;
wire   [63:0] bitcast_ln24_4_fu_1189_p1;
wire    ap_block_pp0_stage7;
reg    prod_4_ce0_local;
reg   [8:0] prod_4_address0_local;
reg    prod_4_we0_local;
reg    prod_1_ce0_local;
wire    ap_block_pp0_stage9;
reg    prod_1_we0_local;
wire   [63:0] bitcast_ln24_5_fu_1195_p1;
reg    prod_5_ce0_local;
reg    prod_5_we0_local;
reg    prod_2_ce0_local;
reg   [8:0] prod_2_address0_local;
reg    prod_2_we0_local;
wire   [63:0] bitcast_ln24_6_fu_1201_p1;
reg    prod_6_ce0_local;
reg   [8:0] prod_6_address0_local;
reg    prod_6_we0_local;
reg    prod_3_ce0_local;
reg   [8:0] prod_3_address0_local;
reg    prod_3_we0_local;
reg    prod_7_ce0_local;
reg   [8:0] prod_7_address0_local;
reg    prod_7_we0_local;
reg   [63:0] grp_fu_537_p0;
reg   [63:0] grp_fu_537_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_541_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [0:0] xor_ln11_fu_605_p2;
wire   [0:0] or_ln11_fu_599_p2;
wire   [0:0] exitcond_flatten14_not_fu_629_p2;
wire   [0:0] and_ln11_fu_641_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_635_p2;
wire   [0:0] empty_6_fu_653_p2;
wire   [0:0] icmp_ln22_mid230_fu_623_p2;
wire   [6:0] select_ln11_fu_689_p3;
wire   [6:0] add_ln16_fu_705_p2;
wire   [6:0] i_mid219_fu_711_p3;
wire   [6:0] add_ln17_fu_725_p2;
wire   [3:0] k_mid26_fu_731_p3;
wire   [3:0] j_mid27_fu_738_p3;
wire   [3:0] add_ln18_fu_752_p2;
wire   [3:0] j_mid2_fu_758_p3;
wire   [2:0] indvars_iv35_udiv_fu_788_p4;
wire   [8:0] tmp_1_fu_802_p3;
wire   [8:0] tmp_5_fu_826_p4;
wire   [0:0] tmp_fu_860_p3;
wire   [63:0] temp_x_fu_942_p2;
wire   [63:0] temp_x_fu_942_p4;
wire   [63:0] temp_x_fu_942_p6;
wire   [63:0] temp_x_fu_942_p8;
wire   [63:0] temp_x_fu_942_p10;
wire   [63:0] temp_x_fu_942_p12;
wire   [63:0] temp_x_fu_942_p14;
wire   [63:0] temp_x_fu_942_p16;
wire   [63:0] temp_x_fu_942_p17;
wire   [8:0] tmp_3_fu_1025_p3;
wire   [5:0] add_ln18_1_fu_1079_p2;
wire   [11:0] add_ln17_1_fu_1092_p2;
wire   [14:0] add_ln16_1_fu_1105_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [10:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1116;
reg    ap_condition_1121;
reg    ap_condition_1130;
wire   [2:0] temp_x_fu_942_p1;
wire   [2:0] temp_x_fu_942_p3;
wire   [2:0] temp_x_fu_942_p5;
wire   [2:0] temp_x_fu_942_p7;
wire  signed [2:0] temp_x_fu_942_p9;
wire  signed [2:0] temp_x_fu_942_p11;
wire  signed [2:0] temp_x_fu_942_p13;
wire  signed [2:0] temp_x_fu_942_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten6873_fu_150 = 16'd0;
#0 jj74_fu_154 = 7'd0;
#0 indvar_flatten3575_fu_158 = 15'd0;
#0 kk76_fu_162 = 7'd0;
#0 indvar_flatten1277_fu_166 = 12'd0;
#0 i78_fu_170 = 7'd0;
#0 indvar_flatten79_fu_174 = 6'd0;
#0 k80_fu_178 = 4'd0;
#0 j81_fu_182 = 4'd0;
#0 add_ln1586_fu_186 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_537_p0),.din1(grp_fu_537_p1),.ce(1'b1),.dout(grp_fu_537_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(temp_x_reg_1426),.din1(grp_fu_541_p1),.ce(1'b1),.dout(grp_fu_541_p2));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U3(.din0(temp_x_fu_942_p2),.din1(temp_x_fu_942_p4),.din2(temp_x_fu_942_p6),.din3(temp_x_fu_942_p8),.din4(temp_x_fu_942_p10),.din5(temp_x_fu_942_p12),.din6(temp_x_fu_942_p14),.din7(temp_x_fu_942_p16),.def(temp_x_fu_942_p17),.sel(trunc_ln18_reg_1364),.dout(temp_x_fu_942_p19));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            add_ln1586_fu_186 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1586_fu_186 <= add_ln15_fu_874_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage10)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage10_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage10_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            i78_fu_170 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i78_fu_170 <= i_fu_745_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1130)) begin
            icmp_ln1685_reg_496 <= icmp_ln16_reg_1546;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1685_reg_496 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            indvar_flatten1277_fu_166 <= 12'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten1277_fu_166 <= select_ln17_1_fu_1098_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            indvar_flatten3575_fu_158 <= 15'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten3575_fu_158 <= select_ln16_1_fu_1111_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            indvar_flatten6873_fu_150 <= 16'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten6873_fu_150 <= add_ln15_1_fu_1073_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            indvar_flatten79_fu_174 <= 6'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten79_fu_174 <= select_ln18_1_fu_1085_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            j81_fu_182 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            j81_fu_182 <= j_fu_854_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            jj74_fu_154 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj74_fu_154 <= jj_fu_697_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            k80_fu_178 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k80_fu_178 <= k_fu_765_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1116)) begin
            kk76_fu_162 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            kk76_fu_162 <= kk_fu_718_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln11_1_reg_1281 <= and_ln11_1_fu_611_p2;
        empty_7_reg_1297 <= empty_7_fu_659_p2;
        empty_reg_1286 <= empty_fu_617_p2;
        exitcond_flatten_mid234_reg_1292 <= exitcond_flatten_mid234_fu_647_p2;
        icmp_ln22_mid211_reg_1304 <= icmp_ln22_mid211_fu_665_p2;
        select_ln24_2_reg_1565 <= select_ln24_2_fu_1167_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bitcast_ln24_7_reg_1590 <= bitcast_ln24_7_fu_1207_p1;
        select_ln24_reg_1516 <= select_ln24_fu_1043_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_8_reg_1319 <= empty_8_fu_798_p1;
        first_iter_0_reg_1310 <= first_iter_0_fu_772_p2;
        first_iter_0_reg_1310_pp0_iter1_reg <= first_iter_0_reg_1310;
        icmp_ln23_reg_1409 <= icmp_ln23_fu_848_p2;
        indvars_iv37_udiv_reg_1314 <= {{jj_fu_697_p3[5:3]}};
        select_ln24_3_reg_1580 <= select_ln24_3_fu_1178_p3;
        trunc_ln18_reg_1364 <= trunc_ln18_fu_822_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln15_reg_1551 <= icmp_ln15_fu_1137_p2;
        select_ln24_1_reg_1531 <= select_ln24_1_fu_1066_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln16_reg_1546 <= icmp_ln16_fu_1131_p2;
        icmp_ln17_reg_1541 <= icmp_ln17_fu_1125_p2;
        icmp_ln18_reg_1536 <= icmp_ln18_fu_1119_p2;
        mul_1_reg_1526 <= grp_fu_541_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_2_reg_1560 <= grp_fu_541_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_3_reg_1575 <= grp_fu_541_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_reg_1511 <= grp_fu_541_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_addr_reg_1471 <= p_cast2_fu_1031_p1;
        prod_1_addr_reg_1481 <= p_cast2_fu_1031_p1;
        prod_2_addr_reg_1491 <= p_cast2_fu_1031_p1;
        prod_2_addr_reg_1491_pp0_iter1_reg <= prod_2_addr_reg_1491;
        prod_3_addr_reg_1501 <= p_cast2_fu_1031_p1;
        prod_3_addr_reg_1501_pp0_iter1_reg <= prod_3_addr_reg_1501;
        prod_4_addr_reg_1476 <= p_cast2_fu_1031_p1;
        prod_5_addr_reg_1486 <= p_cast2_fu_1031_p1;
        prod_6_addr_reg_1496 <= p_cast2_fu_1031_p1;
        prod_6_addr_reg_1496_pp0_iter1_reg <= prod_6_addr_reg_1496;
        prod_7_addr_reg_1506 <= p_cast2_fu_1031_p1;
        prod_7_addr_reg_1506_pp0_iter1_reg <= prod_7_addr_reg_1506;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_545 <= grp_fu_537_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln23_1_reg_1436 <= select_ln23_1_fu_988_p3;
        select_ln23_2_reg_1441 <= select_ln23_2_fu_995_p3;
        select_ln23_3_reg_1446 <= select_ln23_3_fu_1002_p3;
        select_ln23_reg_1431 <= select_ln23_fu_981_p3;
        temp_x_reg_1426 <= temp_x_fu_942_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xor_ln22_reg_1421 <= xor_ln22_fu_868_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_1137_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1121)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_499_p4 = icmp_ln16_reg_1546;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_499_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1685_phi_fu_499_p4 = icmp_ln16_reg_1546;
        end
    end else begin
        ap_phi_mux_icmp_ln1685_phi_fu_499_p4 = icmp_ln16_reg_1546;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1121)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_510_p4 = icmp_ln17_reg_1541;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_510_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1784_phi_fu_510_p4 = icmp_ln17_reg_1541;
        end
    end else begin
        ap_phi_mux_icmp_ln1784_phi_fu_510_p4 = icmp_ln17_reg_1541;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1121)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_520_p4 = icmp_ln18_reg_1536;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_520_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1883_phi_fu_520_p4 = icmp_ln18_reg_1536;
        end
    end else begin
        ap_phi_mux_icmp_ln1883_phi_fu_520_p4 = icmp_ln18_reg_1536;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1121)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_530_p4 = xor_ln22_reg_1421;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_530_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln2282_phi_fu_530_p4 = xor_ln22_reg_1421;
        end
    end else begin
        ap_phi_mux_icmp_ln2282_phi_fu_530_p4 = xor_ln22_reg_1421;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_537_p0 = bitcast_ln24_3_fu_1185_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_537_p0 = bitcast_ln24_2_fu_1174_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_537_p0 = bitcast_ln24_1_fu_1163_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_537_p0 = bitcast_ln24_fu_1062_p1;
    end else begin
        grp_fu_537_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_537_p1 = mul_3_reg_1575;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_537_p1 = mul_2_reg_1560;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_537_p1 = mul_1_reg_1526;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_537_p1 = mul_reg_1511;
    end else begin
        grp_fu_537_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_541_p1 = bitcast_ln23_3_fu_1021_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_541_p1 = bitcast_ln23_2_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_541_p1 = bitcast_ln23_1_fu_1013_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_541_p1 = bitcast_ln23_fu_1009_p1;
        end else begin
            grp_fu_541_p1 = 'bx;
        end
    end else begin
        grp_fu_541_p1 = 'bx;
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
        m1_4_ce0_local = 1'b1;
    end else begin
        m1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_5_ce0_local = 1'b1;
    end else begin
        m1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_6_ce0_local = 1'b1;
    end else begin
        m1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_7_ce0_local = 1'b1;
    end else begin
        m1_7_ce0_local = 1'b0;
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
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
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
        m2_3_ce0_local = 1'b1;
    end else begin
        m2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_4_ce0_local = 1'b1;
    end else begin
        m2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_5_ce0_local = 1'b1;
    end else begin
        m2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_6_ce0_local = 1'b1;
    end else begin
        m2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m2_7_ce0_local = 1'b1;
    end else begin
        m2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_address0_local = prod_0_addr_reg_1471;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_address0_local = p_cast2_fu_1031_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1310_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1310_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_2_address0_local = prod_2_addr_reg_1491_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_2_address0_local = prod_2_addr_reg_1491;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1310_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_3_address0_local = prod_3_addr_reg_1501_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            prod_3_address0_local = prod_3_addr_reg_1501;
        end else begin
            prod_3_address0_local = 'bx;
        end
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1310_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_4_address0_local = prod_4_addr_reg_1476;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_4_address0_local = p_cast2_fu_1031_p1;
    end else begin
        prod_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        prod_4_ce0_local = 1'b1;
    end else begin
        prod_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1310_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_4_we0_local = 1'b1;
    end else begin
        prod_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        prod_5_ce0_local = 1'b1;
    end else begin
        prod_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1310_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_5_we0_local = 1'b1;
    end else begin
        prod_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_6_address0_local = prod_6_addr_reg_1496_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_6_address0_local = prod_6_addr_reg_1496;
    end else begin
        prod_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_6_ce0_local = 1'b1;
    end else begin
        prod_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1310_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_6_we0_local = 1'b1;
    end else begin
        prod_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            prod_7_address0_local = prod_7_addr_reg_1506_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            prod_7_address0_local = prod_7_addr_reg_1506;
        end else begin
            prod_7_address0_local = 'bx;
        end
    end else begin
        prod_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_7_ce0_local = 1'b1;
    end else begin
        prod_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_1310_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_7_we0_local = 1'b1;
    end else begin
        prod_7_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_1073_p2 = (indvar_flatten6873_fu_150 + 16'd1);
assign add_ln15_fu_874_p2 = (jj_fu_697_p3 + 7'd8);
assign add_ln16_1_fu_1105_p2 = (indvar_flatten3575_fu_158 + 15'd1);
assign add_ln16_fu_705_p2 = (select_ln11_fu_689_p3 + 7'd8);
assign add_ln17_1_fu_1092_p2 = (indvar_flatten1277_fu_166 + 12'd1);
assign add_ln17_fu_725_p2 = (i_mid219_fu_711_p3 + 7'd1);
assign add_ln18_1_fu_1079_p2 = (indvar_flatten79_fu_174 + 6'd1);
assign add_ln18_fu_752_p2 = (k_mid26_fu_731_p3 + 4'd1);
assign and_ln11_1_fu_611_p2 = (xor_ln11_fu_605_p2 & ap_phi_mux_icmp_ln1784_phi_fu_510_p4);
assign and_ln11_fu_641_p2 = (xor_ln11_fu_605_p2 & ap_phi_mux_icmp_ln1883_phi_fu_520_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
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
    ap_condition_1116 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1121 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln15_reg_1551 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1130 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln15_reg_1551 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_1_fu_1013_p1 = select_ln23_1_reg_1436;
assign bitcast_ln23_2_fu_1017_p1 = select_ln23_2_reg_1441;
assign bitcast_ln23_3_fu_1021_p1 = select_ln23_3_reg_1446;
assign bitcast_ln23_fu_1009_p1 = select_ln23_reg_1431;
assign bitcast_ln24_1_fu_1163_p1 = select_ln24_1_reg_1531;
assign bitcast_ln24_2_fu_1174_p1 = select_ln24_2_reg_1565;
assign bitcast_ln24_3_fu_1185_p1 = select_ln24_3_reg_1580;
assign bitcast_ln24_4_fu_1189_p1 = reg_545;
assign bitcast_ln24_5_fu_1195_p1 = reg_545;
assign bitcast_ln24_6_fu_1201_p1 = reg_545;
assign bitcast_ln24_7_fu_1207_p1 = grp_fu_537_p2;
assign bitcast_ln24_fu_1062_p1 = select_ln24_reg_1516;
assign empty_6_fu_653_p2 = (exitcond_flatten_mid234_fu_647_p2 | and_ln11_1_fu_611_p2);
assign empty_7_fu_659_p2 = (empty_6_fu_653_p2 | ap_phi_mux_icmp_ln1685_phi_fu_499_p4);
assign empty_8_fu_798_p1 = i_fu_745_p3[5:0];
assign empty_fu_617_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_499_p4 | and_ln11_1_fu_611_p2);
assign exitcond_flatten14_not_fu_629_p2 = (ap_phi_mux_icmp_ln1784_phi_fu_510_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_647_p2 = (not_exitcond_flatten14_mid267_fu_635_p2 & and_ln11_fu_641_p2);
assign first_iter_0_fu_772_p2 = ((j_mid2_fu_758_p3 == 4'd0) ? 1'b1 : 1'b0);
assign i_fu_745_p3 = ((exitcond_flatten_mid234_reg_1292[0:0] == 1'b1) ? add_ln17_fu_725_p2 : i_mid219_fu_711_p3);
assign i_mid219_fu_711_p3 = ((empty_reg_1286[0:0] == 1'b1) ? 7'd0 : i78_fu_170);
assign icmp_ln15_fu_1137_p2 = ((indvar_flatten6873_fu_150 == 16'd65535) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_1131_p2 = ((select_ln16_1_fu_1111_p3 == 15'd8192) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_1125_p2 = ((select_ln17_1_fu_1098_p3 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1119_p2 = ((select_ln18_1_fu_1085_p3 == 6'd16) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_665_p2 = (icmp_ln22_mid230_fu_623_p2 | exitcond_flatten_mid234_fu_647_p2);
assign icmp_ln22_mid230_fu_623_p2 = (or_ln11_fu_599_p2 | and_ln11_1_fu_611_p2);
assign icmp_ln23_fu_848_p2 = ((j_mid2_fu_758_p3 == 4'd4) ? 1'b1 : 1'b0);
assign indvars_iv35_udiv_fu_788_p4 = {{kk_fu_718_p3[5:3]}};
assign indvars_iv37_udiv_fu_778_p4 = {{jj_fu_697_p3[5:3]}};
assign j_fu_854_p2 = (j_mid2_fu_758_p3 + 4'd4);
assign j_mid27_fu_738_p3 = ((empty_7_reg_1297[0:0] == 1'b1) ? 4'd0 : j81_fu_182);
assign j_mid2_fu_758_p3 = ((icmp_ln22_mid211_reg_1304[0:0] == 1'b1) ? j_mid27_fu_738_p3 : 4'd0);
assign jj_fu_697_p3 = ((icmp_ln1685_reg_496[0:0] == 1'b1) ? add_ln1586_fu_186 : jj74_fu_154);
assign k_fu_765_p3 = ((icmp_ln22_mid211_reg_1304[0:0] == 1'b1) ? k_mid26_fu_731_p3 : add_ln18_fu_752_p2);
assign k_mid26_fu_731_p3 = ((empty_7_reg_1297[0:0] == 1'b1) ? 4'd0 : k80_fu_178);
assign kk_fu_718_p3 = ((and_ln11_1_reg_1281[0:0] == 1'b1) ? add_ln16_fu_705_p2 : select_ln11_fu_689_p3);
assign m1_0_address0 = p_cast_fu_810_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = p_cast_fu_810_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = p_cast_fu_810_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = p_cast_fu_810_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m1_4_address0 = p_cast_fu_810_p1;
assign m1_4_ce0 = m1_4_ce0_local;
assign m1_5_address0 = p_cast_fu_810_p1;
assign m1_5_ce0 = m1_5_ce0_local;
assign m1_6_address0 = p_cast_fu_810_p1;
assign m1_6_ce0 = m1_6_ce0_local;
assign m1_7_address0 = p_cast_fu_810_p1;
assign m1_7_ce0 = m1_7_ce0_local;
assign m2_0_address0 = p_cast3_fu_836_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_1_address0 = p_cast3_fu_836_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_2_address0 = p_cast3_fu_836_p1;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_3_address0 = p_cast3_fu_836_p1;
assign m2_3_ce0 = m2_3_ce0_local;
assign m2_4_address0 = p_cast3_fu_836_p1;
assign m2_4_ce0 = m2_4_ce0_local;
assign m2_5_address0 = p_cast3_fu_836_p1;
assign m2_5_ce0 = m2_5_ce0_local;
assign m2_6_address0 = p_cast3_fu_836_p1;
assign m2_6_ce0 = m2_6_ce0_local;
assign m2_7_address0 = p_cast3_fu_836_p1;
assign m2_7_ce0 = m2_7_ce0_local;
assign not_exitcond_flatten14_mid267_fu_635_p2 = (exitcond_flatten14_not_fu_629_p2 | ap_phi_mux_icmp_ln1685_phi_fu_499_p4);
assign or_ln11_fu_599_p2 = (ap_phi_mux_icmp_ln2282_phi_fu_530_p4 | ap_phi_mux_icmp_ln1685_phi_fu_499_p4);
assign p_cast2_fu_1031_p1 = tmp_3_fu_1025_p3;
assign p_cast3_fu_836_p1 = tmp_5_fu_826_p4;
assign p_cast_fu_810_p1 = tmp_1_fu_802_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_4_fu_1189_p1;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_addr_reg_1481;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_5_fu_1195_p1;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = bitcast_ln24_6_fu_1201_p1;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = bitcast_ln24_7_reg_1590;
assign prod_3_we0 = prod_3_we0_local;
assign prod_4_address0 = prod_4_address0_local;
assign prod_4_ce0 = prod_4_ce0_local;
assign prod_4_d0 = bitcast_ln24_4_fu_1189_p1;
assign prod_4_we0 = prod_4_we0_local;
assign prod_5_address0 = prod_5_addr_reg_1486;
assign prod_5_ce0 = prod_5_ce0_local;
assign prod_5_d0 = bitcast_ln24_5_fu_1195_p1;
assign prod_5_we0 = prod_5_we0_local;
assign prod_6_address0 = prod_6_address0_local;
assign prod_6_ce0 = prod_6_ce0_local;
assign prod_6_d0 = bitcast_ln24_6_fu_1201_p1;
assign prod_6_we0 = prod_6_we0_local;
assign prod_7_address0 = prod_7_address0_local;
assign prod_7_ce0 = prod_7_ce0_local;
assign prod_7_d0 = bitcast_ln24_7_reg_1590;
assign prod_7_we0 = prod_7_we0_local;
assign select_ln11_fu_689_p3 = ((icmp_ln1685_reg_496[0:0] == 1'b1) ? 7'd0 : kk76_fu_162);
assign select_ln16_1_fu_1111_p3 = ((icmp_ln1685_reg_496[0:0] == 1'b1) ? 15'd1 : add_ln16_1_fu_1105_p2);
assign select_ln17_1_fu_1098_p3 = ((empty_reg_1286[0:0] == 1'b1) ? 12'd1 : add_ln17_1_fu_1092_p2);
assign select_ln18_1_fu_1085_p3 = ((empty_7_reg_1297[0:0] == 1'b1) ? 6'd1 : add_ln18_1_fu_1079_p2);
assign select_ln23_1_fu_988_p3 = ((icmp_ln23_reg_1409[0:0] == 1'b1) ? m2_5_q0 : m2_1_q0);
assign select_ln23_2_fu_995_p3 = ((icmp_ln23_reg_1409[0:0] == 1'b1) ? m2_6_q0 : m2_2_q0);
assign select_ln23_3_fu_1002_p3 = ((icmp_ln23_reg_1409[0:0] == 1'b1) ? m2_7_q0 : m2_3_q0);
assign select_ln23_fu_981_p3 = ((icmp_ln23_reg_1409[0:0] == 1'b1) ? m2_4_q0 : m2_0_q0);
assign select_ln24_1_fu_1066_p3 = ((icmp_ln23_reg_1409[0:0] == 1'b1) ? prod_5_q0 : prod_1_q0);
assign select_ln24_2_fu_1167_p3 = ((icmp_ln23_reg_1409[0:0] == 1'b1) ? prod_6_q0 : prod_2_q0);
assign select_ln24_3_fu_1178_p3 = ((icmp_ln23_reg_1409[0:0] == 1'b1) ? prod_7_q0 : prod_3_q0);
assign select_ln24_fu_1043_p3 = ((icmp_ln23_reg_1409[0:0] == 1'b1) ? prod_4_q0 : prod_0_q0);
assign temp_x_fu_942_p10 = m1_4_q0;
assign temp_x_fu_942_p12 = m1_5_q0;
assign temp_x_fu_942_p14 = m1_6_q0;
assign temp_x_fu_942_p16 = m1_7_q0;
assign temp_x_fu_942_p17 = 'bx;
assign temp_x_fu_942_p2 = m1_0_q0;
assign temp_x_fu_942_p4 = m1_1_q0;
assign temp_x_fu_942_p6 = m1_2_q0;
assign temp_x_fu_942_p8 = m1_3_q0;
assign tmp_1_fu_802_p3 = {{empty_8_fu_798_p1}, {indvars_iv35_udiv_fu_788_p4}};
assign tmp_3_fu_1025_p3 = {{empty_8_reg_1319}, {indvars_iv37_udiv_reg_1314}};
assign tmp_5_fu_826_p4 = {{{indvars_iv35_udiv_fu_788_p4}, {trunc_ln18_fu_822_p1}}, {indvars_iv37_udiv_fu_778_p4}};
assign tmp_fu_860_p3 = j_fu_854_p2[32'd3];
assign trunc_ln18_fu_822_p1 = k_fu_765_p3[2:0];
assign xor_ln11_fu_605_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_499_p4 ^ 1'd1);
assign xor_ln22_fu_868_p2 = (tmp_fu_860_p3 ^ 1'd1);
endmodule 
