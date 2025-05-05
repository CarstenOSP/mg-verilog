module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_0_address1,prod_0_ce1,prod_0_we1,prod_0_d1,prod_0_q1,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_1_address1,prod_1_ce1,prod_1_we1,prod_1_d1,prod_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 23'd1;
parameter    ap_ST_fsm_pp0_stage1 = 23'd2;
parameter    ap_ST_fsm_pp0_stage2 = 23'd4;
parameter    ap_ST_fsm_pp0_stage3 = 23'd8;
parameter    ap_ST_fsm_pp0_stage4 = 23'd16;
parameter    ap_ST_fsm_pp0_stage5 = 23'd32;
parameter    ap_ST_fsm_pp0_stage6 = 23'd64;
parameter    ap_ST_fsm_pp0_stage7 = 23'd128;
parameter    ap_ST_fsm_pp0_stage8 = 23'd256;
parameter    ap_ST_fsm_pp0_stage9 = 23'd512;
parameter    ap_ST_fsm_pp0_stage10 = 23'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 23'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 23'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 23'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 23'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 23'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 23'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 23'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 23'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 23'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 23'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 23'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 23'd4194304;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [10:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [10:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [10:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [10:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [10:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [10:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
input  [63:0] prod_0_q0;
output  [10:0] prod_0_address1;
output   prod_0_ce1;
output   prod_0_we1;
output  [63:0] prod_0_d1;
input  [63:0] prod_0_q1;
output  [10:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [10:0] prod_1_address1;
output   prod_1_ce1;
output   prod_1_we1;
output  [63:0] prod_1_d1;
input  [63:0] prod_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [22:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_subdone;
wire   [0:0] icmp_ln15_fu_996_p2;
reg    ap_condition_exit_pp0_iter0_stage22;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1648_reg_334;
reg   [63:0] reg_385;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_389;
reg   [63:0] reg_393;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg   [63:0] reg_398;
wire   [63:0] grp_fu_365_p2;
reg   [63:0] reg_403;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] grp_fu_369_p2;
reg   [63:0] reg_407;
wire   [63:0] grp_fu_373_p2;
reg   [63:0] reg_411;
wire   [0:0] and_ln11_1_fu_472_p2;
reg   [0:0] and_ln11_1_reg_1098;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] empty_fu_484_p2;
reg   [0:0] empty_reg_1103;
wire   [0:0] icmp_ln18_mid211_fu_508_p2;
reg   [0:0] icmp_ln18_mid211_reg_1109;
reg   [1:0] tmp_6_reg_1115;
reg   [2:0] tmp_7_reg_1120;
wire   [4:0] indvars_iv46_udiv_fu_605_p4;
reg   [4:0] indvars_iv46_udiv_reg_1129;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] empty_10_fu_615_p1;
reg   [5:0] empty_10_reg_1134;
wire   [3:0] tmp_1_fu_619_p4;
reg   [3:0] tmp_1_reg_1142;
reg   [2:0] tmp_5_reg_1147;
reg   [0:0] tmp_reg_1155;
wire   [0:0] trunc_ln18_fu_647_p1;
reg   [0:0] trunc_ln18_reg_1161;
wire   [2:0] trunc_ln23_fu_681_p1;
reg   [2:0] trunc_ln23_reg_1176;
wire   [0:0] icmp_ln18_fu_723_p2;
reg   [0:0] icmp_ln18_reg_1202;
wire   [63:0] select_ln21_fu_758_p3;
reg   [63:0] select_ln21_reg_1207;
reg   [63:0] m2_0_load_1_reg_1212;
reg   [63:0] m2_1_load_1_reg_1217;
wire   [0:0] icmp_ln17_fu_809_p2;
reg   [0:0] icmp_ln17_reg_1242;
wire   [63:0] temp_x_fu_820_p1;
reg   [63:0] temp_x_reg_1247;
wire   [63:0] bitcast_ln23_fu_825_p1;
wire   [63:0] bitcast_ln23_1_fu_830_p1;
reg   [63:0] m2_0_load_3_reg_1263;
reg   [63:0] m2_1_load_3_reg_1268;
wire   [63:0] bitcast_ln23_2_fu_835_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln23_3_fu_839_p1;
wire   [63:0] bitcast_ln23_4_fu_843_p1;
wire   [63:0] bitcast_ln23_5_fu_848_p1;
wire   [63:0] bitcast_ln23_6_fu_853_p1;
wire   [63:0] bitcast_ln23_7_fu_857_p1;
reg   [10:0] prod_0_addr_reg_1303;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [10:0] prod_1_addr_reg_1309;
wire   [63:0] grp_fu_377_p2;
reg   [63:0] mul_reg_1315;
wire   [63:0] grp_fu_381_p2;
reg   [63:0] mul_1_reg_1320;
wire   [63:0] bitcast_ln24_fu_873_p1;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [63:0] bitcast_ln24_2_fu_878_p1;
reg   [63:0] mul_2_reg_1335;
reg   [63:0] mul_3_reg_1340;
reg   [63:0] mul_4_reg_1345;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mul_5_reg_1350;
reg   [63:0] mul_6_reg_1355;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] mul_7_reg_1360;
reg   [10:0] prod_0_addr_1_reg_1365;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
reg   [10:0] prod_1_addr_1_reg_1371;
reg   [10:0] prod_0_addr_2_reg_1376;
reg   [10:0] prod_1_addr_2_reg_1382;
reg   [10:0] prod_0_addr_3_reg_1387;
reg   [10:0] prod_1_addr_3_reg_1393;
reg   [63:0] prod_0_load_2_reg_1399;
reg   [63:0] prod_1_load_2_reg_1404;
wire   [63:0] bitcast_ln24_4_fu_936_p1;
wire   [63:0] bitcast_ln24_6_fu_941_p1;
wire   [63:0] bitcast_ln24_8_fu_946_p1;
wire   [63:0] bitcast_ln24_10_fu_956_p1;
wire    ap_block_pp0_stage22_11001;
wire   [63:0] bitcast_ln24_12_fu_960_p1;
wire   [63:0] bitcast_ln24_14_fu_965_p1;
wire   [0:0] icmp_ln16_fu_990_p2;
reg   [0:0] icmp_ln16_reg_1439;
reg   [0:0] icmp_ln15_reg_1444;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1648_phi_fu_337_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1747_phi_fu_348_p4;
reg   [0:0] ap_phi_mux_icmp_ln1846_phi_fu_358_p4;
wire   [63:0] zext_ln21_fu_675_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_694_p1;
wire   [63:0] zext_ln23_1_fu_711_p1;
wire   [63:0] zext_ln23_2_fu_775_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln23_3_fu_790_p1;
wire   [63:0] p_cast_fu_867_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] p_cast2_fu_901_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] p_cast3_fu_916_p1;
wire   [63:0] p_cast4_fu_930_p1;
wire    ap_block_pp0_stage20;
reg   [14:0] indvar_flatten3539_fu_112;
wire   [14:0] add_ln15_1_fu_984_p2;
wire    ap_block_pp0_stage22;
reg   [6:0] jj40_fu_116;
wire   [6:0] jj_fu_559_p3;
reg   [13:0] indvar_flatten1241_fu_120;
wire   [13:0] select_ln16_1_fu_976_p3;
reg   [6:0] kk42_fu_124;
wire   [6:0] kk_fu_514_p3;
reg   [6:0] ap_sig_allocacmp_kk42_load;
reg   [10:0] indvar_flatten43_fu_128;
wire   [10:0] select_ln17_1_fu_802_p3;
reg   [6:0] i44_fu_132;
wire   [6:0] i_fu_598_p3;
reg   [3:0] k45_fu_136;
wire   [3:0] k_fu_717_p2;
reg   [6:0] add_ln1549_fu_140;
wire   [6:0] add_ln15_fu_729_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m2_0_ce1_local;
reg   [10:0] m2_0_address1_local;
reg    m2_0_ce0_local;
reg   [10:0] m2_0_address0_local;
reg    m2_1_ce1_local;
reg   [10:0] m2_1_address1_local;
reg    m2_1_ce0_local;
reg   [10:0] m2_1_address0_local;
reg    prod_0_ce1_local;
reg   [10:0] prod_0_address1_local;
reg    prod_0_we0_local;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
reg   [63:0] prod_0_d0_local;
wire   [63:0] bitcast_ln24_1_fu_883_p1;
wire    ap_block_pp0_stage18;
reg    prod_0_ce0_local;
reg   [10:0] prod_0_address0_local;
reg    prod_0_we1_local;
wire   [63:0] bitcast_ln24_5_fu_1012_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln24_9_fu_1022_p1;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln24_13_fu_1032_p1;
wire    ap_block_pp0_stage7;
reg    prod_1_ce1_local;
reg   [10:0] prod_1_address1_local;
reg    prod_1_we0_local;
reg   [63:0] prod_1_d0_local;
wire   [63:0] bitcast_ln24_3_fu_888_p1;
reg    prod_1_ce0_local;
reg   [10:0] prod_1_address0_local;
wire   [63:0] bitcast_ln24_7_fu_1017_p1;
reg    prod_1_we1_local;
wire   [63:0] bitcast_ln24_11_fu_1027_p1;
wire   [63:0] bitcast_ln24_15_fu_1037_p1;
reg   [63:0] grp_fu_365_p0;
reg   [63:0] grp_fu_365_p1;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage21;
reg   [63:0] grp_fu_369_p0;
reg   [63:0] grp_fu_369_p1;
reg   [63:0] grp_fu_373_p0;
reg   [63:0] grp_fu_373_p1;
reg   [63:0] grp_fu_377_p0;
reg   [63:0] grp_fu_377_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
reg   [63:0] grp_fu_381_p0;
reg   [63:0] grp_fu_381_p1;
wire   [0:0] xor_ln11_fu_466_p2;
wire   [6:0] select_ln11_fu_458_p3;
wire   [0:0] exitcond_flatten_not_fu_490_p2;
wire   [0:0] and_ln11_fu_502_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_496_p2;
wire   [6:0] add_ln16_fu_478_p2;
wire   [6:0] i_mid26_fu_567_p3;
wire   [0:0] empty_8_fu_580_p2;
wire   [0:0] empty_9_fu_584_p2;
wire   [6:0] add_ln17_fu_574_p2;
wire   [3:0] k_mid2_fu_590_p3;
wire   [1:0] lshr_ln_fu_651_p4;
wire   [1:0] or_ln21_fu_661_p2;
wire   [10:0] add_ln21_1_fu_666_p4;
wire   [10:0] add_ln_fu_685_p4;
wire   [10:0] or_ln_fu_700_p5;
wire   [10:0] or_ln23_6_fu_765_p6;
wire   [10:0] or_ln23_8_fu_781_p5;
wire   [10:0] add_ln17_1_fu_796_p2;
wire   [10:0] tmp_2_fu_861_p3;
wire   [10:0] tmp_4_fu_893_p4;
wire   [10:0] tmp_s_fu_907_p5;
wire   [10:0] tmp_3_fu_922_p4;
wire   [13:0] add_ln16_1_fu_970_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage7;
reg    ap_idle_pp0_0to0;
reg   [22:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage13_11001;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1111;
reg    ap_condition_1115;
reg    ap_condition_1127;
reg    ap_condition_507;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 23'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten3539_fu_112 = 15'd0;
#0 jj40_fu_116 = 7'd0;
#0 indvar_flatten1241_fu_120 = 14'd0;
#0 kk42_fu_124 = 7'd0;
#0 indvar_flatten43_fu_128 = 11'd0;
#0 i44_fu_132 = 7'd0;
#0 k45_fu_136 = 4'd0;
#0 add_ln1549_fu_140 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_365_p0),.din1(grp_fu_365_p1),.ce(1'b1),.dout(grp_fu_365_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_369_p0),.din1(grp_fu_369_p1),.ce(1'b1),.dout(grp_fu_369_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_373_p0),.din1(grp_fu_373_p1),.ce(1'b1),.dout(grp_fu_373_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_377_p0),.din1(grp_fu_377_p1),.ce(1'b1),.dout(grp_fu_377_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_381_p0),.din1(grp_fu_381_p1),.ce(1'b1),.dout(grp_fu_381_p2));
bbgemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage22),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage22_subdone) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1111)) begin
            add_ln1549_fu_140 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1549_fu_140 <= add_ln15_fu_729_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1111)) begin
            i44_fu_132 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i44_fu_132 <= i_fu_598_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1127)) begin
            icmp_ln1648_reg_334 <= icmp_ln16_reg_1439;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1648_reg_334 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1111)) begin
            indvar_flatten1241_fu_120 <= 14'd0;
        end else if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            indvar_flatten1241_fu_120 <= select_ln16_1_fu_976_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1111)) begin
            indvar_flatten3539_fu_112 <= 15'd0;
        end else if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            indvar_flatten3539_fu_112 <= add_ln15_1_fu_984_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1111)) begin
            indvar_flatten43_fu_128 <= 11'd0;
        end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            indvar_flatten43_fu_128 <= select_ln17_1_fu_802_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1111)) begin
            jj40_fu_116 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj40_fu_116 <= jj_fu_559_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1111)) begin
            k45_fu_136 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k45_fu_136 <= k_fu_717_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_507)) begin
        kk42_fu_124 <= kk_fu_514_p3;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
    reg_393 <= prod_0_q0;
end else if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
    reg_393 <= prod_0_q1;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
    reg_398 <= prod_1_q0;
end else if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
    reg_398 <= prod_1_q1;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln11_1_reg_1098 <= and_ln11_1_fu_472_p2;
        empty_reg_1103 <= empty_fu_484_p2;
        icmp_ln18_mid211_reg_1109 <= icmp_ln18_mid211_fu_508_p2;
        tmp_6_reg_1115 <= {{kk_fu_514_p3[2:1]}};
        tmp_7_reg_1120 <= {{kk_fu_514_p3[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_10_reg_1134 <= empty_10_fu_615_p1;
        indvars_iv46_udiv_reg_1129 <= {{jj_fu_559_p3[5:1]}};
        tmp_1_reg_1142 <= {{jj_fu_559_p3[5:2]}};
        tmp_5_reg_1147 <= {{jj_fu_559_p3[5:3]}};
        tmp_reg_1155 <= jj_fu_559_p3[32'd1];
        trunc_ln18_reg_1161 <= trunc_ln18_fu_647_p1;
        trunc_ln23_reg_1176 <= trunc_ln23_fu_681_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        icmp_ln15_reg_1444 <= icmp_ln15_fu_996_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        icmp_ln16_reg_1439 <= icmp_ln16_fu_990_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln17_reg_1242 <= icmp_ln17_fu_809_p2;
        m2_0_load_1_reg_1212 <= m2_0_q0;
        m2_1_load_1_reg_1217 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln18_reg_1202 <= icmp_ln18_fu_723_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m2_0_load_3_reg_1263 <= m2_0_q0;
        m2_1_load_3_reg_1268 <= m2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_1_reg_1320 <= grp_fu_381_p2;
        mul_reg_1315 <= grp_fu_377_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_2_reg_1335 <= grp_fu_377_p2;
        mul_3_reg_1340 <= grp_fu_381_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul_4_reg_1345 <= grp_fu_377_p2;
        mul_5_reg_1350 <= grp_fu_381_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mul_6_reg_1355 <= grp_fu_377_p2;
        mul_7_reg_1360 <= grp_fu_381_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_0_addr_1_reg_1365[10 : 1] <= p_cast2_fu_901_p1[10 : 1];
        prod_0_addr_2_reg_1376[0] <= p_cast3_fu_916_p1[0];
prod_0_addr_2_reg_1376[10 : 2] <= p_cast3_fu_916_p1[10 : 2];
        prod_1_addr_1_reg_1371[10 : 1] <= p_cast2_fu_901_p1[10 : 1];
        prod_1_addr_2_reg_1382[0] <= p_cast3_fu_916_p1[0];
prod_1_addr_2_reg_1382[10 : 2] <= p_cast3_fu_916_p1[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        prod_0_addr_3_reg_1387[10 : 2] <= p_cast4_fu_930_p1[10 : 2];
        prod_1_addr_3_reg_1393[10 : 2] <= p_cast4_fu_930_p1[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_addr_reg_1303 <= p_cast_fu_867_p1;
        prod_1_addr_reg_1309 <= p_cast_fu_867_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        prod_0_load_2_reg_1399 <= prod_0_q1;
        prod_1_load_2_reg_1404 <= prod_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_385 <= m2_0_q1;
        reg_389 <= m2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_403 <= grp_fu_365_p2;
        reg_407 <= grp_fu_369_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_411 <= grp_fu_373_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln21_reg_1207 <= select_ln21_fu_758_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_x_reg_1247 <= temp_x_fu_820_p1;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_996_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage22 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1444 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_1115)) begin
            ap_phi_mux_icmp_ln1648_phi_fu_337_p4 = icmp_ln16_reg_1439;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1648_phi_fu_337_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1648_phi_fu_337_p4 = icmp_ln16_reg_1439;
        end
    end else begin
        ap_phi_mux_icmp_ln1648_phi_fu_337_p4 = icmp_ln16_reg_1439;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1115)) begin
            ap_phi_mux_icmp_ln1747_phi_fu_348_p4 = icmp_ln17_reg_1242;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1747_phi_fu_348_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1747_phi_fu_348_p4 = icmp_ln17_reg_1242;
        end
    end else begin
        ap_phi_mux_icmp_ln1747_phi_fu_348_p4 = icmp_ln17_reg_1242;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1115)) begin
            ap_phi_mux_icmp_ln1846_phi_fu_358_p4 = icmp_ln18_reg_1202;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1846_phi_fu_358_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1846_phi_fu_358_p4 = icmp_ln18_reg_1202;
        end
    end else begin
        ap_phi_mux_icmp_ln1846_phi_fu_358_p4 = icmp_ln18_reg_1202;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage22_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk42_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk42_load = kk42_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_365_p0 = bitcast_ln24_10_fu_956_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_365_p0 = bitcast_ln24_4_fu_936_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_365_p0 = bitcast_ln24_fu_873_p1;
        end else begin
            grp_fu_365_p0 = 'bx;
        end
    end else begin
        grp_fu_365_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_365_p1 = mul_5_reg_1350;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_365_p1 = mul_2_reg_1335;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_365_p1 = mul_reg_1315;
        end else begin
            grp_fu_365_p1 = 'bx;
        end
    end else begin
        grp_fu_365_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_369_p0 = bitcast_ln24_12_fu_960_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_369_p0 = bitcast_ln24_6_fu_941_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_369_p0 = bitcast_ln24_2_fu_878_p1;
        end else begin
            grp_fu_369_p0 = 'bx;
        end
    end else begin
        grp_fu_369_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_369_p1 = mul_6_reg_1355;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_369_p1 = mul_3_reg_1340;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            grp_fu_369_p1 = mul_1_reg_1320;
        end else begin
            grp_fu_369_p1 = 'bx;
        end
    end else begin
        grp_fu_369_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_373_p0 = bitcast_ln24_14_fu_965_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_373_p0 = bitcast_ln24_8_fu_946_p1;
        end else begin
            grp_fu_373_p0 = 'bx;
        end
    end else begin
        grp_fu_373_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            grp_fu_373_p1 = mul_7_reg_1360;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            grp_fu_373_p1 = mul_4_reg_1345;
        end else begin
            grp_fu_373_p1 = 'bx;
        end
    end else begin
        grp_fu_373_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_377_p0 = temp_x_reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_377_p0 = temp_x_fu_820_p1;
    end else begin
        grp_fu_377_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_377_p1 = bitcast_ln23_6_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_377_p1 = bitcast_ln23_4_fu_843_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_377_p1 = bitcast_ln23_2_fu_835_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_377_p1 = bitcast_ln23_fu_825_p1;
        end else begin
            grp_fu_377_p1 = 'bx;
        end
    end else begin
        grp_fu_377_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_381_p0 = temp_x_reg_1247;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_381_p0 = temp_x_fu_820_p1;
    end else begin
        grp_fu_381_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_381_p1 = bitcast_ln23_7_fu_857_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_381_p1 = bitcast_ln23_5_fu_848_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_381_p1 = bitcast_ln23_3_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_381_p1 = bitcast_ln23_1_fu_830_p1;
        end else begin
            grp_fu_381_p1 = 'bx;
        end
    end else begin
        grp_fu_381_p1 = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_0_address0_local = zext_ln23_3_fu_790_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address0_local = zext_ln23_1_fu_711_p1;
        end else begin
            m2_0_address0_local = 'bx;
        end
    end else begin
        m2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_0_address1_local = zext_ln23_2_fu_775_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_0_address1_local = zext_ln23_fu_694_p1;
        end else begin
            m2_0_address1_local = 'bx;
        end
    end else begin
        m2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_0_ce0_local = 1'b1;
    end else begin
        m2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_0_ce1_local = 1'b1;
    end else begin
        m2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_1_address0_local = zext_ln23_3_fu_790_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address0_local = zext_ln23_1_fu_711_p1;
        end else begin
            m2_1_address0_local = 'bx;
        end
    end else begin
        m2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_1_address1_local = zext_ln23_2_fu_775_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_1_address1_local = zext_ln23_fu_694_p1;
        end else begin
            m2_1_address1_local = 'bx;
        end
    end else begin
        m2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_1_ce0_local = 1'b1;
    end else begin
        m2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_1_ce1_local = 1'b1;
    end else begin
        m2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_address0_local = prod_0_addr_3_reg_1387;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_0_address0_local = prod_0_addr_2_reg_1376;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_0_address0_local = p_cast2_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        prod_0_address0_local = prod_0_addr_reg_1303;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_0_address1_local = prod_0_addr_1_reg_1365;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        prod_0_address1_local = p_cast4_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_0_address1_local = p_cast3_fu_916_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_0_address1_local = p_cast_fu_867_p1;
    end else begin
        prod_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        prod_0_ce1_local = 1'b1;
    end else begin
        prod_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_d0_local = bitcast_ln24_13_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_0_d0_local = bitcast_ln24_9_fu_1022_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        prod_0_d0_local = bitcast_ln24_1_fu_883_p1;
    end else begin
        prod_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_0_we1_local = 1'b1;
    end else begin
        prod_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_1_address0_local = prod_1_addr_3_reg_1393;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_1_address0_local = prod_1_addr_1_reg_1371;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_1_address0_local = p_cast2_fu_901_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        prod_1_address0_local = prod_1_addr_reg_1309;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_1_address1_local = prod_1_addr_2_reg_1382;
    end else if (((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
        prod_1_address1_local = p_cast4_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        prod_1_address1_local = p_cast3_fu_916_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_1_address1_local = p_cast_fu_867_p1;
    end else begin
        prod_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        prod_1_ce1_local = 1'b1;
    end else begin
        prod_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_1_d0_local = bitcast_ln24_15_fu_1037_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        prod_1_d0_local = bitcast_ln24_7_fu_1017_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        prod_1_d0_local = bitcast_ln24_3_fu_888_p1;
    end else begin
        prod_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_1_we1_local = 1'b1;
    end else begin
        prod_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_1_fu_984_p2 = (indvar_flatten3539_fu_112 + 15'd1);
assign add_ln15_fu_729_p2 = (jj_fu_559_p3 + 7'd8);
assign add_ln16_1_fu_970_p2 = (indvar_flatten1241_fu_120 + 14'd1);
assign add_ln16_fu_478_p2 = (select_ln11_fu_458_p3 + 7'd8);
assign add_ln17_1_fu_796_p2 = (indvar_flatten43_fu_128 + 11'd1);
assign add_ln17_fu_574_p2 = (i_mid26_fu_567_p3 + 7'd1);
assign add_ln21_1_fu_666_p4 = {{{empty_10_fu_615_p1}, {tmp_7_reg_1120}}, {or_ln21_fu_661_p2}};
assign add_ln_fu_685_p4 = {{{tmp_7_reg_1120}, {trunc_ln23_fu_681_p1}}, {indvars_iv46_udiv_fu_605_p4}};
assign and_ln11_1_fu_472_p2 = (xor_ln11_fu_466_p2 & ap_phi_mux_icmp_ln1747_phi_fu_348_p4);
assign and_ln11_fu_502_p2 = (xor_ln11_fu_466_p2 & ap_phi_mux_icmp_ln1846_phi_fu_358_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
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
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1111 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_1115 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1444 == 1'd0));
end
always @ (*) begin
    ap_condition_1127 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1444 == 1'd0));
end
always @ (*) begin
    ap_condition_507 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage22;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_1_fu_830_p1 = reg_389;
assign bitcast_ln23_2_fu_835_p1 = m2_0_load_1_reg_1212;
assign bitcast_ln23_3_fu_839_p1 = m2_1_load_1_reg_1217;
assign bitcast_ln23_4_fu_843_p1 = reg_385;
assign bitcast_ln23_5_fu_848_p1 = reg_389;
assign bitcast_ln23_6_fu_853_p1 = m2_0_load_3_reg_1263;
assign bitcast_ln23_7_fu_857_p1 = m2_1_load_3_reg_1268;
assign bitcast_ln23_fu_825_p1 = reg_385;
assign bitcast_ln24_10_fu_956_p1 = prod_1_load_2_reg_1404;
assign bitcast_ln24_11_fu_1027_p1 = reg_403;
assign bitcast_ln24_12_fu_960_p1 = reg_393;
assign bitcast_ln24_13_fu_1032_p1 = reg_407;
assign bitcast_ln24_14_fu_965_p1 = reg_398;
assign bitcast_ln24_15_fu_1037_p1 = reg_411;
assign bitcast_ln24_1_fu_883_p1 = reg_403;
assign bitcast_ln24_2_fu_878_p1 = reg_398;
assign bitcast_ln24_3_fu_888_p1 = reg_407;
assign bitcast_ln24_4_fu_936_p1 = reg_393;
assign bitcast_ln24_5_fu_1012_p1 = reg_403;
assign bitcast_ln24_6_fu_941_p1 = reg_398;
assign bitcast_ln24_7_fu_1017_p1 = reg_407;
assign bitcast_ln24_8_fu_946_p1 = prod_0_load_2_reg_1399;
assign bitcast_ln24_9_fu_1022_p1 = reg_411;
assign bitcast_ln24_fu_873_p1 = reg_393;
assign empty_10_fu_615_p1 = i_fu_598_p3[5:0];
assign empty_8_fu_580_p2 = (icmp_ln18_mid211_reg_1109 | and_ln11_1_reg_1098);
assign empty_9_fu_584_p2 = (icmp_ln1648_reg_334 | empty_8_fu_580_p2);
assign empty_fu_484_p2 = (ap_phi_mux_icmp_ln1648_phi_fu_337_p4 | and_ln11_1_fu_472_p2);
assign exitcond_flatten_not_fu_490_p2 = (ap_phi_mux_icmp_ln1747_phi_fu_348_p4 ^ 1'd1);
assign i_fu_598_p3 = ((icmp_ln18_mid211_reg_1109[0:0] == 1'b1) ? add_ln17_fu_574_p2 : i_mid26_fu_567_p3);
assign i_mid26_fu_567_p3 = ((empty_reg_1103[0:0] == 1'b1) ? 7'd0 : i44_fu_132);
assign icmp_ln15_fu_996_p2 = ((indvar_flatten3539_fu_112 == 15'd32767) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_990_p2 = ((select_ln16_1_fu_976_p3 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_809_p2 = ((select_ln17_1_fu_802_p3 == 11'd512) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_723_p2 = ((k_fu_717_p2 == 4'd8) ? 1'b1 : 1'b0);
assign icmp_ln18_mid211_fu_508_p2 = (not_exitcond_flatten_mid234_fu_496_p2 & and_ln11_fu_502_p2);
assign indvars_iv46_udiv_fu_605_p4 = {{jj_fu_559_p3[5:1]}};
assign jj_fu_559_p3 = ((icmp_ln1648_reg_334[0:0] == 1'b1) ? add_ln1549_fu_140 : jj40_fu_116);
assign k_fu_717_p2 = (k_mid2_fu_590_p3 + 4'd1);
assign k_mid2_fu_590_p3 = ((empty_9_fu_584_p2[0:0] == 1'b1) ? 4'd0 : k45_fu_136);
assign kk_fu_514_p3 = ((and_ln11_1_fu_472_p2[0:0] == 1'b1) ? add_ln16_fu_478_p2 : select_ln11_fu_458_p3);
assign lshr_ln_fu_651_p4 = {{k_mid2_fu_590_p3[2:1]}};
assign m1_0_address0 = zext_ln21_fu_675_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_675_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m2_0_address0 = m2_0_address0_local;
assign m2_0_address1 = m2_0_address1_local;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = m2_1_address0_local;
assign m2_1_address1 = m2_1_address1_local;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign not_exitcond_flatten_mid234_fu_496_p2 = (exitcond_flatten_not_fu_490_p2 | ap_phi_mux_icmp_ln1648_phi_fu_337_p4);
assign or_ln21_fu_661_p2 = (tmp_6_reg_1115 | lshr_ln_fu_651_p4);
assign or_ln23_6_fu_765_p6 = {{{{{tmp_7_reg_1120}, {trunc_ln23_reg_1176}}, {tmp_5_reg_1147}}, {1'd1}}, {tmp_reg_1155}};
assign or_ln23_8_fu_781_p5 = {{{{tmp_7_reg_1120}, {trunc_ln23_reg_1176}}, {tmp_5_reg_1147}}, {2'd3}};
assign or_ln_fu_700_p5 = {{{{tmp_7_reg_1120}, {trunc_ln23_fu_681_p1}}, {tmp_1_fu_619_p4}}, {1'd1}};
assign p_cast2_fu_901_p1 = tmp_4_fu_893_p4;
assign p_cast3_fu_916_p1 = tmp_s_fu_907_p5;
assign p_cast4_fu_930_p1 = tmp_3_fu_922_p4;
assign p_cast_fu_867_p1 = tmp_2_fu_861_p3;
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_address1 = prod_0_address1_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_ce1 = prod_0_ce1_local;
assign prod_0_d0 = prod_0_d0_local;
assign prod_0_d1 = bitcast_ln24_5_fu_1012_p1;
assign prod_0_we0 = prod_0_we0_local;
assign prod_0_we1 = prod_0_we1_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_address1 = prod_1_address1_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_ce1 = prod_1_ce1_local;
assign prod_1_d0 = prod_1_d0_local;
assign prod_1_d1 = bitcast_ln24_11_fu_1027_p1;
assign prod_1_we0 = prod_1_we0_local;
assign prod_1_we1 = prod_1_we1_local;
assign select_ln11_fu_458_p3 = ((ap_phi_mux_icmp_ln1648_phi_fu_337_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk42_load);
assign select_ln16_1_fu_976_p3 = ((icmp_ln1648_reg_334[0:0] == 1'b1) ? 14'd1 : add_ln16_1_fu_970_p2);
assign select_ln17_1_fu_802_p3 = ((empty_reg_1103[0:0] == 1'b1) ? 11'd1 : add_ln17_1_fu_796_p2);
assign select_ln21_fu_758_p3 = ((trunc_ln18_reg_1161[0:0] == 1'b1) ? m1_1_q0 : m1_0_q0);
assign temp_x_fu_820_p1 = select_ln21_reg_1207;
assign tmp_1_fu_619_p4 = {{jj_fu_559_p3[5:2]}};
assign tmp_2_fu_861_p3 = {{empty_10_reg_1134}, {indvars_iv46_udiv_reg_1129}};
assign tmp_3_fu_922_p4 = {{{empty_10_reg_1134}, {tmp_5_reg_1147}}, {2'd3}};
assign tmp_4_fu_893_p4 = {{{empty_10_reg_1134}, {tmp_1_reg_1142}}, {1'd1}};
assign tmp_s_fu_907_p5 = {{{{empty_10_reg_1134}, {tmp_5_reg_1147}}, {1'd1}}, {tmp_reg_1155}};
assign trunc_ln18_fu_647_p1 = k_mid2_fu_590_p3[0:0];
assign trunc_ln23_fu_681_p1 = k_mid2_fu_590_p3[2:0];
assign xor_ln11_fu_466_p2 = (ap_phi_mux_icmp_ln1648_phi_fu_337_p4 ^ 1'd1);
assign zext_ln21_fu_675_p1 = add_ln21_1_fu_666_p4;
assign zext_ln23_1_fu_711_p1 = or_ln_fu_700_p5;
assign zext_ln23_2_fu_775_p1 = or_ln23_6_fu_765_p6;
assign zext_ln23_3_fu_790_p1 = or_ln23_8_fu_781_p5;
assign zext_ln23_fu_694_p1 = add_ln_fu_685_p4;
always @ (posedge ap_clk) begin
    prod_0_addr_1_reg_1365[0] <= 1'b1;
    prod_1_addr_1_reg_1371[0] <= 1'b1;
    prod_0_addr_2_reg_1376[1] <= 1'b1;
    prod_1_addr_2_reg_1382[1] <= 1'b1;
    prod_0_addr_3_reg_1387[1:0] <= 2'b11;
    prod_1_addr_3_reg_1393[1:0] <= 2'b11;
end
endmodule 