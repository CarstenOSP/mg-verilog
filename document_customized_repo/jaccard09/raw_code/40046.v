module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_1_address0,m2_1_ce0,m2_1_q0,m2_2_address0,m2_2_ce0,m2_2_q0,m2_3_address0,m2_3_ce0,m2_3_q0,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0); 
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
output  [9:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [9:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [9:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
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
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
wire   [0:0] icmp_ln15_fu_943_p2;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1685_reg_312;
wire   [0:0] empty_fu_449_p2;
reg   [0:0] empty_reg_1046;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] exitcond_flatten_mid234_fu_479_p2;
reg   [0:0] exitcond_flatten_mid234_reg_1052;
wire   [0:0] empty_7_fu_499_p2;
reg   [0:0] empty_7_reg_1057;
wire   [3:0] k_mid26_fu_505_p3;
reg   [3:0] k_mid26_reg_1063;
wire   [0:0] icmp_ln22_mid211_fu_513_p2;
reg   [0:0] icmp_ln22_mid211_reg_1069;
reg   [0:0] tmp_2_reg_1075;
reg   [2:0] tmp_1_reg_1080;
wire   [1:0] trunc_ln18_1_fu_611_p1;
reg   [1:0] trunc_ln18_1_reg_1086;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln23_fu_704_p2;
reg   [0:0] icmp_ln23_reg_1121;
reg   [9:0] prod_0_addr_reg_1129;
reg   [9:0] prod_0_addr_reg_1129_pp0_iter1_reg;
reg   [9:0] prod_2_addr_reg_1134;
reg   [9:0] prod_2_addr_reg_1134_pp0_iter1_reg;
wire   [0:0] icmp_ln24_fu_728_p2;
reg   [0:0] icmp_ln24_reg_1139;
reg   [0:0] icmp_ln24_reg_1139_pp0_iter1_reg;
reg   [9:0] prod_1_addr_reg_1153;
reg   [9:0] prod_1_addr_reg_1153_pp0_iter1_reg;
reg   [9:0] prod_3_addr_reg_1158;
reg   [9:0] prod_3_addr_reg_1158_pp0_iter1_reg;
wire   [0:0] xor_ln22_fu_748_p2;
reg   [0:0] xor_ln22_reg_1163;
wire   [63:0] temp_x_fu_801_p11;
reg   [63:0] temp_x_reg_1168;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] select_ln23_fu_824_p3;
reg   [63:0] select_ln23_reg_1173;
reg   [63:0] prod_0_load_reg_1178;
wire   [63:0] select_ln23_1_fu_831_p3;
reg   [63:0] select_ln23_1_reg_1183;
reg   [63:0] prod_1_load_reg_1188;
wire   [63:0] bitcast_ln23_fu_838_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln23_1_fu_842_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_357_p2;
reg   [63:0] mul_reg_1203;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] select_ln24_fu_849_p3;
reg   [63:0] select_ln24_reg_1208;
wire   [0:0] icmp_ln18_fu_868_p2;
reg   [0:0] icmp_ln18_reg_1213;
wire   [63:0] bitcast_ln24_fu_888_p1;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul_1_reg_1223;
wire   [63:0] select_ln24_1_fu_892_p3;
reg   [63:0] select_ln24_1_reg_1228;
wire   [0:0] icmp_ln17_fu_931_p2;
reg   [0:0] icmp_ln17_reg_1233;
wire   [0:0] icmp_ln16_fu_937_p2;
reg   [0:0] icmp_ln16_reg_1238;
reg   [0:0] icmp_ln15_reg_1243;
wire   [63:0] bitcast_ln24_1_fu_964_p1;
wire   [63:0] bitcast_ln24_2_fu_968_p1;
reg   [63:0] bitcast_ln24_2_reg_1252;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln24_3_fu_972_p1;
reg   [63:0] bitcast_ln24_3_reg_1258;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] ap_phi_mux_icmp_ln1685_phi_fu_315_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1784_phi_fu_326_p4;
reg   [0:0] ap_phi_mux_icmp_ln1883_phi_fu_336_p4;
reg   [0:0] ap_phi_mux_icmp_ln2282_phi_fu_346_p4;
wire   [63:0] zext_ln21_fu_641_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_696_p1;
wire   [63:0] zext_ln24_fu_720_p1;
reg   [16:0] indvar_flatten6873_fu_118;
wire   [16:0] add_ln15_1_fu_898_p2;
wire    ap_block_pp0_stage10;
reg   [6:0] jj74_fu_122;
wire   [6:0] jj_fu_554_p3;
reg   [15:0] indvar_flatten3575_fu_126;
wire   [15:0] select_ln16_1_fu_923_p3;
reg   [6:0] kk76_fu_130;
wire   [6:0] kk_fu_485_p3;
reg   [6:0] ap_sig_allocacmp_kk76_load;
reg   [12:0] indvar_flatten1277_fu_134;
wire   [12:0] select_ln17_1_fu_910_p3;
reg   [6:0] i78_fu_138;
wire   [6:0] i_fu_582_p3;
reg   [6:0] indvar_flatten79_fu_142;
wire   [6:0] select_ln18_1_fu_861_p3;
wire    ap_block_pp0_stage9;
reg   [3:0] k80_fu_146;
wire   [3:0] k_fu_601_p3;
reg   [3:0] ap_sig_allocacmp_k80_load;
reg   [3:0] j81_fu_150;
wire   [3:0] j_fu_734_p2;
reg   [6:0] add_ln1586_fu_154;
wire   [6:0] add_ln15_fu_754_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m1_2_ce0_local;
reg    m1_3_ce0_local;
reg    m2_0_ce0_local;
reg    m2_2_ce0_local;
reg    prod_0_ce0_local;
reg   [9:0] prod_0_address0_local;
reg    prod_0_we0_local;
wire    ap_block_pp0_stage7;
reg    m2_1_ce0_local;
reg    m2_3_ce0_local;
reg    prod_1_ce0_local;
reg   [9:0] prod_1_address0_local;
reg    prod_1_we0_local;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage8;
reg    prod_2_ce0_local;
reg   [9:0] prod_2_address0_local;
reg    prod_2_we0_local;
reg    prod_3_ce0_local;
reg   [9:0] prod_3_address0_local;
reg    prod_3_we0_local;
reg   [63:0] grp_fu_353_p0;
reg   [63:0] grp_fu_353_p1;
reg   [63:0] grp_fu_357_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire   [0:0] xor_ln11_fu_431_p2;
wire   [6:0] select_ln11_fu_417_p3;
wire   [0:0] and_ln11_1_fu_437_p2;
wire   [0:0] or_ln11_fu_425_p2;
wire   [0:0] exitcond_flatten14_not_fu_461_p2;
wire   [0:0] and_ln11_fu_473_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_467_p2;
wire   [6:0] add_ln16_fu_443_p2;
wire   [0:0] empty_6_fu_493_p2;
wire   [0:0] icmp_ln22_mid230_fu_455_p2;
wire   [6:0] i_mid219_fu_562_p3;
wire   [6:0] add_ln17_fu_569_p2;
wire   [3:0] j_mid27_fu_575_p3;
wire   [3:0] add_ln18_fu_589_p2;
wire   [0:0] tmp_fu_615_p3;
wire   [5:0] trunc_ln21_fu_628_p1;
wire   [0:0] or_ln21_fu_623_p2;
wire   [9:0] add_ln21_1_fu_632_p4;
wire   [3:0] j_mid2_fu_594_p3;
wire   [0:0] tmp_4_fu_661_p3;
wire   [0:0] tmp_3_fu_653_p3;
wire   [2:0] trunc_ln18_fu_607_p1;
wire   [2:0] tmp_5_fu_675_p4;
wire   [0:0] or_ln23_fu_669_p2;
wire   [9:0] add_ln23_1_fu_685_p5;
wire   [1:0] trunc_ln22_fu_649_p1;
wire   [9:0] add_ln24_1_fu_710_p4;
wire   [0:0] tmp_6_fu_740_p3;
wire    ap_block_pp0_stage2;
wire   [63:0] temp_x_fu_801_p2;
wire   [63:0] temp_x_fu_801_p4;
wire   [63:0] temp_x_fu_801_p6;
wire   [63:0] temp_x_fu_801_p8;
wire   [63:0] temp_x_fu_801_p9;
wire   [6:0] add_ln18_1_fu_855_p2;
wire   [12:0] add_ln17_1_fu_904_p2;
wire   [15:0] add_ln16_1_fu_917_p2;
wire   [63:0] grp_fu_353_p2;
wire    ap_block_pp0_stage6;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage8;
reg    ap_idle_pp0_0to0;
reg   [10:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_910;
reg    ap_condition_914;
reg    ap_condition_921;
reg    ap_condition_362;
wire   [1:0] temp_x_fu_801_p1;
wire   [1:0] temp_x_fu_801_p3;
wire  signed [1:0] temp_x_fu_801_p5;
wire  signed [1:0] temp_x_fu_801_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten6873_fu_118 = 17'd0;
#0 jj74_fu_122 = 7'd0;
#0 indvar_flatten3575_fu_126 = 16'd0;
#0 kk76_fu_130 = 7'd0;
#0 indvar_flatten1277_fu_134 = 13'd0;
#0 i78_fu_138 = 7'd0;
#0 indvar_flatten79_fu_142 = 7'd0;
#0 k80_fu_146 = 4'd0;
#0 j81_fu_150 = 4'd0;
#0 add_ln1586_fu_154 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_353_p0),.din1(grp_fu_353_p1),.ce(1'b1),.dout(grp_fu_353_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(temp_x_reg_1168),.din1(grp_fu_357_p1),.ce(1'b1),.dout(grp_fu_357_p2));
(* dissolve_hierarchy = "yes" *) bbgemm_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(temp_x_fu_801_p2),.din1(temp_x_fu_801_p4),.din2(temp_x_fu_801_p6),.din3(temp_x_fu_801_p8),.def(temp_x_fu_801_p9),.sel(trunc_ln18_1_reg_1086),.dout(temp_x_fu_801_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            add_ln1586_fu_154 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1586_fu_154 <= add_ln15_fu_754_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            i78_fu_138 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i78_fu_138 <= i_fu_582_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_921)) begin
            icmp_ln1685_reg_312 <= icmp_ln16_reg_1238;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1685_reg_312 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            indvar_flatten1277_fu_134 <= 13'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten1277_fu_134 <= select_ln17_1_fu_910_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            indvar_flatten3575_fu_126 <= 16'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten3575_fu_126 <= select_ln16_1_fu_923_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            indvar_flatten6873_fu_118 <= 17'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten6873_fu_118 <= add_ln15_1_fu_898_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            indvar_flatten79_fu_142 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            indvar_flatten79_fu_142 <= select_ln18_1_fu_861_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            j81_fu_150 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            j81_fu_150 <= j_fu_734_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            jj74_fu_122 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj74_fu_122 <= jj_fu_554_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_910)) begin
            k80_fu_146 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k80_fu_146 <= k_fu_601_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_362)) begin
        kk76_fu_130 <= kk_fu_485_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        bitcast_ln24_2_reg_1252 <= bitcast_ln24_2_fu_968_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        bitcast_ln24_3_reg_1258 <= bitcast_ln24_3_fu_972_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_7_reg_1057 <= empty_7_fu_499_p2;
        empty_reg_1046 <= empty_fu_449_p2;
        exitcond_flatten_mid234_reg_1052 <= exitcond_flatten_mid234_fu_479_p2;
        icmp_ln22_mid211_reg_1069 <= icmp_ln22_mid211_fu_513_p2;
        k_mid26_reg_1063 <= k_mid26_fu_505_p3;
        tmp_1_reg_1080 <= {{kk_fu_485_p3[5:3]}};
        tmp_2_reg_1075 <= kk_fu_485_p3[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln15_reg_1243 <= icmp_ln15_fu_943_p2;
        select_ln24_1_reg_1228 <= select_ln24_1_fu_892_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln16_reg_1238 <= icmp_ln16_fu_937_p2;
        icmp_ln17_reg_1233 <= icmp_ln17_fu_931_p2;
        mul_1_reg_1223 <= grp_fu_357_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        icmp_ln18_reg_1213 <= icmp_ln18_fu_868_p2;
        mul_reg_1203 <= grp_fu_357_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln23_reg_1121 <= icmp_ln23_fu_704_p2;
        icmp_ln24_reg_1139 <= icmp_ln24_fu_728_p2;
        icmp_ln24_reg_1139_pp0_iter1_reg <= icmp_ln24_reg_1139;
        prod_0_addr_reg_1129 <= zext_ln24_fu_720_p1;
        prod_0_addr_reg_1129_pp0_iter1_reg <= prod_0_addr_reg_1129;
        prod_1_addr_reg_1153 <= zext_ln24_fu_720_p1;
        prod_1_addr_reg_1153_pp0_iter1_reg <= prod_1_addr_reg_1153;
        prod_2_addr_reg_1134 <= zext_ln24_fu_720_p1;
        prod_2_addr_reg_1134_pp0_iter1_reg <= prod_2_addr_reg_1134;
        prod_3_addr_reg_1158 <= zext_ln24_fu_720_p1;
        prod_3_addr_reg_1158_pp0_iter1_reg <= prod_3_addr_reg_1158;
        trunc_ln18_1_reg_1086 <= trunc_ln18_1_fu_611_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        prod_0_load_reg_1178 <= prod_0_q0;
        prod_1_load_reg_1188 <= prod_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln23_1_reg_1183 <= select_ln23_1_fu_831_p3;
        select_ln23_reg_1173 <= select_ln23_fu_824_p3;
        temp_x_reg_1168 <= temp_x_fu_801_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        select_ln24_reg_1208 <= select_ln24_fu_849_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xor_ln22_reg_1163 <= xor_ln22_fu_748_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_943_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1243 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_914)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_315_p4 = icmp_ln16_reg_1238;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_315_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1685_phi_fu_315_p4 = icmp_ln16_reg_1238;
        end
    end else begin
        ap_phi_mux_icmp_ln1685_phi_fu_315_p4 = icmp_ln16_reg_1238;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_914)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_326_p4 = icmp_ln17_reg_1233;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_326_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1784_phi_fu_326_p4 = icmp_ln17_reg_1233;
        end
    end else begin
        ap_phi_mux_icmp_ln1784_phi_fu_326_p4 = icmp_ln17_reg_1233;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_914)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_336_p4 = icmp_ln18_reg_1213;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_336_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1883_phi_fu_336_p4 = icmp_ln18_reg_1213;
        end
    end else begin
        ap_phi_mux_icmp_ln1883_phi_fu_336_p4 = icmp_ln18_reg_1213;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_914)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_346_p4 = xor_ln22_reg_1163;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_346_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln2282_phi_fu_346_p4 = xor_ln22_reg_1163;
        end
    end else begin
        ap_phi_mux_icmp_ln2282_phi_fu_346_p4 = xor_ln22_reg_1163;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k80_load = 4'd0;
    end else begin
        ap_sig_allocacmp_k80_load = k80_fu_146;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk76_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk76_load = kk76_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_353_p0 = bitcast_ln24_1_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_353_p0 = bitcast_ln24_fu_888_p1;
    end else begin
        grp_fu_353_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_353_p1 = mul_1_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_353_p1 = mul_reg_1203;
    end else begin
        grp_fu_353_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_357_p1 = bitcast_ln23_1_fu_842_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_357_p1 = bitcast_ln23_fu_838_p1;
        end else begin
            grp_fu_357_p1 = 'bx;
        end
    end else begin
        grp_fu_357_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_address0_local = prod_0_addr_reg_1129_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_0_address0_local = zext_ln24_fu_720_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln24_reg_1139_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_1_address0_local = prod_1_addr_reg_1153_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        prod_1_address0_local = zext_ln24_fu_720_p1;
    end else begin
        prod_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln24_reg_1139_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_2_address0_local = prod_2_addr_reg_1134_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_2_address0_local = prod_2_addr_reg_1134;
    end else begin
        prod_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln24_reg_1139_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prod_3_address0_local = prod_3_addr_reg_1158_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_3_address0_local = prod_3_addr_reg_1158;
    end else begin
        prod_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln24_reg_1139_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage8))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
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
assign add_ln15_1_fu_898_p2 = (indvar_flatten6873_fu_118 + 17'd1);
assign add_ln15_fu_754_p2 = (jj_fu_554_p3 + 7'd8);
assign add_ln16_1_fu_917_p2 = (indvar_flatten3575_fu_126 + 16'd1);
assign add_ln16_fu_443_p2 = (select_ln11_fu_417_p3 + 7'd8);
assign add_ln17_1_fu_904_p2 = (indvar_flatten1277_fu_134 + 13'd1);
assign add_ln17_fu_569_p2 = (i_mid219_fu_562_p3 + 7'd1);
assign add_ln18_1_fu_855_p2 = (indvar_flatten79_fu_142 + 7'd1);
assign add_ln18_fu_589_p2 = (k_mid26_reg_1063 + 4'd1);
assign add_ln21_1_fu_632_p4 = {{{trunc_ln21_fu_628_p1}, {tmp_1_reg_1080}}, {or_ln21_fu_623_p2}};
assign add_ln23_1_fu_685_p5 = {{{{tmp_1_reg_1080}, {trunc_ln18_fu_607_p1}}, {tmp_5_fu_675_p4}}, {or_ln23_fu_669_p2}};
assign add_ln24_1_fu_710_p4 = {{{trunc_ln21_fu_628_p1}, {tmp_5_fu_675_p4}}, {or_ln23_fu_669_p2}};
assign and_ln11_1_fu_437_p2 = (xor_ln11_fu_431_p2 & ap_phi_mux_icmp_ln1784_phi_fu_326_p4);
assign and_ln11_fu_473_p2 = (xor_ln11_fu_431_p2 & ap_phi_mux_icmp_ln1883_phi_fu_336_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
    ap_condition_362 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_910 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_914 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1243 == 1'd0));
end
always @ (*) begin
    ap_condition_921 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1243 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_1_fu_842_p1 = select_ln23_1_reg_1183;
assign bitcast_ln23_fu_838_p1 = select_ln23_reg_1173;
assign bitcast_ln24_1_fu_964_p1 = select_ln24_1_reg_1228;
assign bitcast_ln24_2_fu_968_p1 = grp_fu_353_p2;
assign bitcast_ln24_3_fu_972_p1 = grp_fu_353_p2;
assign bitcast_ln24_fu_888_p1 = select_ln24_reg_1208;
assign empty_6_fu_493_p2 = (exitcond_flatten_mid234_fu_479_p2 | and_ln11_1_fu_437_p2);
assign empty_7_fu_499_p2 = (empty_6_fu_493_p2 | ap_phi_mux_icmp_ln1685_phi_fu_315_p4);
assign empty_fu_449_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_315_p4 | and_ln11_1_fu_437_p2);
assign exitcond_flatten14_not_fu_461_p2 = (ap_phi_mux_icmp_ln1784_phi_fu_326_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_479_p2 = (not_exitcond_flatten14_mid267_fu_467_p2 & and_ln11_fu_473_p2);
assign i_fu_582_p3 = ((exitcond_flatten_mid234_reg_1052[0:0] == 1'b1) ? add_ln17_fu_569_p2 : i_mid219_fu_562_p3);
assign i_mid219_fu_562_p3 = ((empty_reg_1046[0:0] == 1'b1) ? 7'd0 : i78_fu_138);
assign icmp_ln15_fu_943_p2 = ((indvar_flatten6873_fu_118 == 17'd131071) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_937_p2 = ((select_ln16_1_fu_923_p3 == 16'd16384) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_931_p2 = ((select_ln17_1_fu_910_p3 == 13'd2048) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_868_p2 = ((select_ln18_1_fu_861_p3 == 7'd32) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_513_p2 = (icmp_ln22_mid230_fu_455_p2 | exitcond_flatten_mid234_fu_479_p2);
assign icmp_ln22_mid230_fu_455_p2 = (or_ln11_fu_425_p2 | and_ln11_1_fu_437_p2);
assign icmp_ln23_fu_704_p2 = ((trunc_ln22_fu_649_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_728_p2 = ((trunc_ln22_fu_649_p1 == 2'd0) ? 1'b1 : 1'b0);
assign j_fu_734_p2 = (j_mid2_fu_594_p3 + 4'd2);
assign j_mid27_fu_575_p3 = ((empty_7_reg_1057[0:0] == 1'b1) ? 4'd0 : j81_fu_150);
assign j_mid2_fu_594_p3 = ((icmp_ln22_mid211_reg_1069[0:0] == 1'b1) ? j_mid27_fu_575_p3 : 4'd0);
assign jj_fu_554_p3 = ((icmp_ln1685_reg_312[0:0] == 1'b1) ? add_ln1586_fu_154 : jj74_fu_122);
assign k_fu_601_p3 = ((icmp_ln22_mid211_reg_1069[0:0] == 1'b1) ? k_mid26_reg_1063 : add_ln18_fu_589_p2);
assign k_mid26_fu_505_p3 = ((empty_7_fu_499_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k80_load);
assign kk_fu_485_p3 = ((and_ln11_1_fu_437_p2[0:0] == 1'b1) ? add_ln16_fu_443_p2 : select_ln11_fu_417_p3);
assign m1_0_address0 = zext_ln21_fu_641_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_641_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m1_2_address0 = zext_ln21_fu_641_p1;
assign m1_2_ce0 = m1_2_ce0_local;
assign m1_3_address0 = zext_ln21_fu_641_p1;
assign m1_3_ce0 = m1_3_ce0_local;
assign m2_0_address0 = zext_ln23_fu_696_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_1_address0 = zext_ln23_fu_696_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_2_address0 = zext_ln23_fu_696_p1;
assign m2_2_ce0 = m2_2_ce0_local;
assign m2_3_address0 = zext_ln23_fu_696_p1;
assign m2_3_ce0 = m2_3_ce0_local;
assign not_exitcond_flatten14_mid267_fu_467_p2 = (exitcond_flatten14_not_fu_461_p2 | ap_phi_mux_icmp_ln1685_phi_fu_315_p4);
assign or_ln11_fu_425_p2 = (ap_phi_mux_icmp_ln2282_phi_fu_346_p4 | ap_phi_mux_icmp_ln1685_phi_fu_315_p4);
assign or_ln21_fu_623_p2 = (tmp_fu_615_p3 | tmp_2_reg_1075);
assign or_ln23_fu_669_p2 = (tmp_4_fu_661_p3 | tmp_3_fu_653_p3);
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln24_2_reg_1252;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = prod_1_address0_local;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln24_3_reg_1258;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = prod_2_address0_local;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = bitcast_ln24_2_reg_1252;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = prod_3_address0_local;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = bitcast_ln24_3_reg_1258;
assign prod_3_we0 = prod_3_we0_local;
assign select_ln11_fu_417_p3 = ((ap_phi_mux_icmp_ln1685_phi_fu_315_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk76_load);
assign select_ln16_1_fu_923_p3 = ((icmp_ln1685_reg_312[0:0] == 1'b1) ? 16'd1 : add_ln16_1_fu_917_p2);
assign select_ln17_1_fu_910_p3 = ((empty_reg_1046[0:0] == 1'b1) ? 13'd1 : add_ln17_1_fu_904_p2);
assign select_ln18_1_fu_861_p3 = ((empty_7_reg_1057[0:0] == 1'b1) ? 7'd1 : add_ln18_1_fu_855_p2);
assign select_ln23_1_fu_831_p3 = ((icmp_ln23_reg_1121[0:0] == 1'b1) ? m2_3_q0 : m2_1_q0);
assign select_ln23_fu_824_p3 = ((icmp_ln23_reg_1121[0:0] == 1'b1) ? m2_2_q0 : m2_0_q0);
assign select_ln24_1_fu_892_p3 = ((icmp_ln23_reg_1121[0:0] == 1'b1) ? prod_3_q0 : prod_1_load_reg_1188);
assign select_ln24_fu_849_p3 = ((icmp_ln23_reg_1121[0:0] == 1'b1) ? prod_2_q0 : prod_0_load_reg_1178);
assign temp_x_fu_801_p2 = m1_0_q0;
assign temp_x_fu_801_p4 = m1_1_q0;
assign temp_x_fu_801_p6 = m1_2_q0;
assign temp_x_fu_801_p8 = m1_3_q0;
assign temp_x_fu_801_p9 = 'bx;
assign tmp_3_fu_653_p3 = j_mid2_fu_594_p3[32'd2];
assign tmp_4_fu_661_p3 = jj_fu_554_p3[32'd2];
assign tmp_5_fu_675_p4 = {{jj_fu_554_p3[5:3]}};
assign tmp_6_fu_740_p3 = j_fu_734_p2[32'd3];
assign tmp_fu_615_p3 = k_fu_601_p3[32'd2];
assign trunc_ln18_1_fu_611_p1 = k_fu_601_p3[1:0];
assign trunc_ln18_fu_607_p1 = k_fu_601_p3[2:0];
assign trunc_ln21_fu_628_p1 = i_fu_582_p3[5:0];
assign trunc_ln22_fu_649_p1 = j_mid2_fu_594_p3[1:0];
assign xor_ln11_fu_431_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_315_p4 ^ 1'd1);
assign xor_ln22_fu_748_p2 = (tmp_6_fu_740_p3 ^ 1'd1);
assign zext_ln21_fu_641_p1 = add_ln21_1_fu_632_p4;
assign zext_ln23_fu_696_p1 = add_ln23_1_fu_685_p5;
assign zext_ln24_fu_720_p1 = add_ln24_1_fu_710_p4;
endmodule 