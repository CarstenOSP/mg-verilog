module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_0_address1,prod_0_ce1,prod_0_we1,prod_0_d1,prod_0_q1,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_1_address1,prod_1_ce1,prod_1_we1,prod_1_d1,prod_1_q1); 
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
(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
wire   [0:0] icmp_ln15_fu_881_p2;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1685_reg_268;
wire   [63:0] grp_fu_309_p2;
reg   [63:0] reg_321;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] grp_fu_313_p2;
reg   [63:0] reg_325;
wire   [0:0] empty_fu_417_p2;
reg   [0:0] empty_reg_1013;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] exitcond_flatten_mid234_fu_447_p2;
reg   [0:0] exitcond_flatten_mid234_reg_1019;
wire   [0:0] empty_9_fu_467_p2;
reg   [0:0] empty_9_reg_1024;
wire   [3:0] k_mid26_fu_473_p3;
reg   [3:0] k_mid26_reg_1030;
wire   [0:0] icmp_ln22_mid211_fu_481_p2;
reg   [0:0] icmp_ln22_mid211_reg_1036;
reg   [1:0] tmp_reg_1042;
reg   [2:0] tmp_1_reg_1047;
wire   [0:0] trunc_ln18_fu_577_p1;
reg   [0:0] trunc_ln18_reg_1054;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] trunc_ln21_fu_596_p1;
reg   [5:0] trunc_ln21_reg_1059;
wire   [1:0] or_ln23_fu_635_p2;
reg   [1:0] or_ln23_reg_1075;
wire   [2:0] tmp_6_fu_645_p4;
reg   [2:0] tmp_6_reg_1080;
wire   [0:0] tmp_2_fu_672_p3;
reg   [0:0] tmp_2_reg_1096;
wire   [0:0] xor_ln22_fu_713_p2;
reg   [0:0] xor_ln22_reg_1111;
wire   [63:0] select_ln21_fu_750_p3;
reg   [63:0] select_ln21_reg_1116;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] m2_0_load_reg_1121;
reg   [63:0] m2_1_load_reg_1126;
reg   [63:0] m2_0_load_1_reg_1131;
reg   [63:0] m2_1_load_1_reg_1136;
wire   [63:0] temp_x_fu_757_p1;
reg   [63:0] temp_x_reg_1141;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln23_fu_761_p1;
wire   [63:0] bitcast_ln23_1_fu_765_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln23_2_fu_769_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln23_3_fu_773_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] grp_fu_317_p2;
reg   [63:0] mul_reg_1166;
reg   [10:0] prod_0_addr_reg_1171;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul_1_reg_1176;
reg   [10:0] prod_1_addr_reg_1181;
reg   [10:0] prod_0_addr_1_reg_1186;
reg   [10:0] prod_1_addr_1_reg_1191;
wire   [0:0] icmp_ln18_fu_863_p2;
reg   [0:0] icmp_ln18_reg_1196;
wire   [0:0] icmp_ln17_fu_869_p2;
reg   [0:0] icmp_ln17_reg_1201;
wire   [0:0] icmp_ln16_fu_875_p2;
reg   [0:0] icmp_ln16_reg_1206;
reg   [0:0] icmp_ln15_reg_1211;
reg   [63:0] prod_0_load_reg_1215;
reg   [63:0] mul_2_reg_1220;
reg   [63:0] prod_0_load_1_reg_1225;
wire   [63:0] bitcast_ln24_fu_907_p1;
reg   [63:0] prod_1_load_reg_1235;
wire   [63:0] bitcast_ln24_4_fu_911_p1;
reg   [63:0] mul_3_reg_1245;
reg   [63:0] prod_1_load_1_reg_1250;
wire   [63:0] bitcast_ln24_2_fu_915_p1;
wire   [63:0] bitcast_ln24_6_fu_919_p1;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln1685_phi_fu_271_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1784_phi_fu_282_p4;
reg   [0:0] ap_phi_mux_icmp_ln1883_phi_fu_292_p4;
reg   [0:0] ap_phi_mux_icmp_ln2282_phi_fu_302_p4;
wire   [63:0] zext_ln21_fu_609_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln23_fu_666_p1;
wire   [63:0] zext_ln23_1_fu_693_p1;
wire   [63:0] zext_ln24_fu_796_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln24_1_fu_811_p1;
reg   [15:0] indvar_flatten6873_fu_104;
wire   [15:0] add_ln15_1_fu_857_p2;
reg   [6:0] jj74_fu_108;
wire   [6:0] jj_fu_524_p3;
reg   [14:0] indvar_flatten3575_fu_112;
wire   [14:0] select_ln16_1_fu_849_p3;
reg   [6:0] kk76_fu_116;
wire   [6:0] kk_fu_453_p3;
reg   [6:0] ap_sig_allocacmp_kk76_load;
reg   [11:0] indvar_flatten1277_fu_120;
wire   [11:0] select_ln17_1_fu_836_p3;
reg   [6:0] i78_fu_124;
wire   [6:0] i_fu_552_p3;
reg   [5:0] indvar_flatten79_fu_128;
wire   [5:0] select_ln18_1_fu_823_p3;
reg   [3:0] k80_fu_132;
wire   [3:0] k_fu_571_p3;
reg   [3:0] ap_sig_allocacmp_k80_load;
reg   [3:0] j81_fu_136;
wire   [3:0] j_fu_699_p2;
reg   [6:0] add_ln1586_fu_140;
wire   [6:0] add_ln15_fu_719_p2;
reg    m1_0_ce0_local;
reg    m1_1_ce0_local;
reg    m2_0_ce1_local;
reg    m2_0_ce0_local;
reg    m2_1_ce1_local;
reg    m2_1_ce0_local;
reg    prod_0_ce1_local;
reg   [10:0] prod_0_address1_local;
reg    prod_0_ce0_local;
reg   [10:0] prod_0_address0_local;
reg    prod_0_we1_local;
wire   [63:0] bitcast_ln24_1_fu_923_p1;
wire    ap_block_pp0_stage9;
reg    prod_0_we0_local;
wire   [63:0] bitcast_ln24_5_fu_928_p1;
reg    prod_1_ce1_local;
reg    prod_1_ce0_local;
reg    prod_1_we1_local;
wire   [63:0] bitcast_ln24_3_fu_933_p1;
reg    prod_1_we0_local;
wire   [63:0] bitcast_ln24_7_fu_938_p1;
reg   [63:0] grp_fu_309_p0;
reg   [63:0] grp_fu_309_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_313_p0;
reg   [63:0] grp_fu_313_p1;
reg   [63:0] grp_fu_317_p0;
reg   [63:0] grp_fu_317_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [0:0] xor_ln11_fu_399_p2;
wire   [6:0] select_ln11_fu_385_p3;
wire   [0:0] and_ln11_1_fu_405_p2;
wire   [0:0] or_ln11_fu_393_p2;
wire   [0:0] exitcond_flatten14_not_fu_429_p2;
wire   [0:0] and_ln11_fu_441_p2;
wire   [0:0] not_exitcond_flatten14_mid267_fu_435_p2;
wire   [6:0] add_ln16_fu_411_p2;
wire   [0:0] empty_8_fu_461_p2;
wire   [0:0] icmp_ln22_mid230_fu_423_p2;
wire   [6:0] i_mid219_fu_532_p3;
wire   [6:0] add_ln17_fu_539_p2;
wire   [3:0] j_mid27_fu_545_p3;
wire   [3:0] add_ln18_fu_559_p2;
wire   [1:0] lshr_ln_fu_581_p4;
wire   [1:0] or_ln21_fu_591_p2;
wire   [10:0] add_ln21_1_fu_600_p4;
wire   [3:0] j_mid2_fu_564_p3;
wire   [1:0] tmp_4_fu_625_p4;
wire   [1:0] lshr_ln1_fu_615_p4;
wire   [2:0] trunc_ln23_fu_641_p1;
wire   [10:0] add_ln23_1_fu_655_p5;
wire   [10:0] add_ln23_2_fu_680_p6;
wire   [0:0] tmp_3_fu_705_p3;
wire   [10:0] add_ln24_1_fu_789_p4;
wire   [10:0] add_ln24_2_fu_802_p5;
wire   [5:0] add_ln18_1_fu_817_p2;
wire   [11:0] add_ln17_1_fu_830_p2;
wire   [14:0] add_ln16_1_fu_843_p2;
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
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_867;
reg    ap_condition_872;
reg    ap_condition_883;
reg    ap_condition_354;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten6873_fu_104 = 16'd0;
#0 jj74_fu_108 = 7'd0;
#0 indvar_flatten3575_fu_112 = 15'd0;
#0 kk76_fu_116 = 7'd0;
#0 indvar_flatten1277_fu_120 = 12'd0;
#0 i78_fu_124 = 7'd0;
#0 indvar_flatten79_fu_128 = 6'd0;
#0 k80_fu_132 = 4'd0;
#0 j81_fu_136 = 4'd0;
#0 add_ln1586_fu_140 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_309_p0),.din1(grp_fu_309_p1),.ce(1'b1),.dout(grp_fu_309_p2));
bbgemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_313_p0),.din1(grp_fu_313_p1),.ce(1'b1),.dout(grp_fu_313_p2));
bbgemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_317_p0),.din1(grp_fu_317_p1),.ce(1'b1),.dout(grp_fu_317_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
        if ((1'b1 == ap_condition_867)) begin
            add_ln1586_fu_140 <= 7'd8;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            add_ln1586_fu_140 <= add_ln15_fu_719_p2;
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
        if ((1'b1 == ap_condition_867)) begin
            i78_fu_124 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            i78_fu_124 <= i_fu_552_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_883)) begin
            icmp_ln1685_reg_268 <= icmp_ln16_reg_1206;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1685_reg_268 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_867)) begin
            indvar_flatten1277_fu_120 <= 12'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten1277_fu_120 <= select_ln17_1_fu_836_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_867)) begin
            indvar_flatten3575_fu_112 <= 15'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten3575_fu_112 <= select_ln16_1_fu_849_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_867)) begin
            indvar_flatten6873_fu_104 <= 16'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten6873_fu_104 <= add_ln15_1_fu_857_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_867)) begin
            indvar_flatten79_fu_128 <= 6'd0;
        end else if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            indvar_flatten79_fu_128 <= select_ln18_1_fu_823_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_867)) begin
            j81_fu_136 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            j81_fu_136 <= j_fu_699_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_867)) begin
            jj74_fu_108 <= 7'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            jj74_fu_108 <= jj_fu_524_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_867)) begin
            k80_fu_132 <= 4'd0;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            k80_fu_132 <= k_fu_571_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_354)) begin
        kk76_fu_116 <= kk_fu_453_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_9_reg_1024 <= empty_9_fu_467_p2;
        empty_reg_1013 <= empty_fu_417_p2;
        exitcond_flatten_mid234_reg_1019 <= exitcond_flatten_mid234_fu_447_p2;
        icmp_ln22_mid211_reg_1036 <= icmp_ln22_mid211_fu_481_p2;
        k_mid26_reg_1030 <= k_mid26_fu_473_p3;
        tmp_1_reg_1047 <= {{kk_fu_453_p3[5:3]}};
        tmp_reg_1042 <= {{kk_fu_453_p3[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln15_reg_1211 <= icmp_ln15_fu_881_p2;
        prod_0_addr_1_reg_1186[10 : 1] <= zext_ln24_1_fu_811_p1[10 : 1];
        prod_0_addr_reg_1171 <= zext_ln24_fu_796_p1;
        prod_1_addr_1_reg_1191[10 : 1] <= zext_ln24_1_fu_811_p1[10 : 1];
        prod_1_addr_reg_1181 <= zext_ln24_fu_796_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        icmp_ln16_reg_1206 <= icmp_ln16_fu_875_p2;
        icmp_ln17_reg_1201 <= icmp_ln17_fu_869_p2;
        icmp_ln18_reg_1196 <= icmp_ln18_fu_863_p2;
        mul_1_reg_1176 <= grp_fu_317_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m2_0_load_1_reg_1131 <= m2_0_q0;
        m2_0_load_reg_1121 <= m2_0_q1;
        m2_1_load_1_reg_1136 <= m2_1_q0;
        m2_1_load_reg_1126 <= m2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_2_reg_1220 <= grp_fu_317_p2;
        prod_0_load_1_reg_1225 <= prod_0_q0;
        prod_0_load_reg_1215 <= prod_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_3_reg_1245 <= grp_fu_317_p2;
        prod_1_load_1_reg_1250 <= prod_1_q0;
        prod_1_load_reg_1235 <= prod_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul_reg_1166 <= grp_fu_317_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        or_ln23_reg_1075 <= or_ln23_fu_635_p2;
        tmp_2_reg_1096 <= j_mid2_fu_564_p3[32'd2];
        tmp_6_reg_1080 <= {{jj_fu_524_p3[5:3]}};
        trunc_ln18_reg_1054 <= trunc_ln18_fu_577_p1;
        trunc_ln21_reg_1059 <= trunc_ln21_fu_596_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        reg_321 <= grp_fu_309_p2;
        reg_325 <= grp_fu_313_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln21_reg_1116 <= select_ln21_fu_750_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_x_reg_1141 <= temp_x_fu_757_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        xor_ln22_reg_1111 <= xor_ln22_fu_713_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_881_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_872)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_271_p4 = icmp_ln16_reg_1206;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1685_phi_fu_271_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1685_phi_fu_271_p4 = icmp_ln16_reg_1206;
        end
    end else begin
        ap_phi_mux_icmp_ln1685_phi_fu_271_p4 = icmp_ln16_reg_1206;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_872)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_282_p4 = icmp_ln17_reg_1201;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1784_phi_fu_282_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1784_phi_fu_282_p4 = icmp_ln17_reg_1201;
        end
    end else begin
        ap_phi_mux_icmp_ln1784_phi_fu_282_p4 = icmp_ln17_reg_1201;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_872)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_292_p4 = icmp_ln18_reg_1196;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1883_phi_fu_292_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1883_phi_fu_292_p4 = icmp_ln18_reg_1196;
        end
    end else begin
        ap_phi_mux_icmp_ln1883_phi_fu_292_p4 = icmp_ln18_reg_1196;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_872)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_302_p4 = xor_ln22_reg_1111;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln2282_phi_fu_302_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln2282_phi_fu_302_p4 = xor_ln22_reg_1111;
        end
    end else begin
        ap_phi_mux_icmp_ln2282_phi_fu_302_p4 = xor_ln22_reg_1111;
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
        ap_sig_allocacmp_k80_load = k80_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_kk76_load = 7'd0;
    end else begin
        ap_sig_allocacmp_kk76_load = kk76_fu_116;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_309_p0 = bitcast_ln24_2_fu_915_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_309_p0 = bitcast_ln24_fu_907_p1;
        end else begin
            grp_fu_309_p0 = 'bx;
        end
    end else begin
        grp_fu_309_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_309_p1 = mul_1_reg_1176;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_309_p1 = mul_reg_1166;
        end else begin
            grp_fu_309_p1 = 'bx;
        end
    end else begin
        grp_fu_309_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_313_p0 = bitcast_ln24_6_fu_919_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_313_p0 = bitcast_ln24_4_fu_911_p1;
        end else begin
            grp_fu_313_p0 = 'bx;
        end
    end else begin
        grp_fu_313_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_313_p1 = mul_3_reg_1245;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_313_p1 = mul_2_reg_1220;
        end else begin
            grp_fu_313_p1 = 'bx;
        end
    end else begin
        grp_fu_313_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_317_p0 = temp_x_reg_1141;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_317_p0 = temp_x_fu_757_p1;
    end else begin
        grp_fu_317_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_317_p1 = bitcast_ln23_3_fu_773_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_317_p1 = bitcast_ln23_2_fu_769_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_317_p1 = bitcast_ln23_1_fu_765_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_317_p1 = bitcast_ln23_fu_761_p1;
        end else begin
            grp_fu_317_p1 = 'bx;
        end
    end else begin
        grp_fu_317_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_0_address0_local = prod_0_addr_1_reg_1186;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_0_address0_local = zext_ln24_1_fu_811_p1;
    end else begin
        prod_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_0_address1_local = prod_0_addr_reg_1171;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_0_address1_local = zext_ln24_fu_796_p1;
    end else begin
        prod_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        prod_0_ce1_local = 1'b1;
    end else begin
        prod_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        prod_0_we1_local = 1'b1;
    end else begin
        prod_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        prod_1_ce1_local = 1'b1;
    end else begin
        prod_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_1_we1_local = 1'b1;
    end else begin
        prod_1_we1_local = 1'b0;
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
assign add_ln15_1_fu_857_p2 = (indvar_flatten6873_fu_104 + 16'd1);
assign add_ln15_fu_719_p2 = (jj_fu_524_p3 + 7'd8);
assign add_ln16_1_fu_843_p2 = (indvar_flatten3575_fu_112 + 15'd1);
assign add_ln16_fu_411_p2 = (select_ln11_fu_385_p3 + 7'd8);
assign add_ln17_1_fu_830_p2 = (indvar_flatten1277_fu_120 + 12'd1);
assign add_ln17_fu_539_p2 = (i_mid219_fu_532_p3 + 7'd1);
assign add_ln18_1_fu_817_p2 = (indvar_flatten79_fu_128 + 6'd1);
assign add_ln18_fu_559_p2 = (k_mid26_reg_1030 + 4'd1);
assign add_ln21_1_fu_600_p4 = {{{trunc_ln21_fu_596_p1}, {tmp_1_reg_1047}}, {or_ln21_fu_591_p2}};
assign add_ln23_1_fu_655_p5 = {{{{tmp_1_reg_1047}, {trunc_ln23_fu_641_p1}}, {tmp_6_fu_645_p4}}, {or_ln23_fu_635_p2}};
assign add_ln23_2_fu_680_p6 = {{{{{tmp_1_reg_1047}, {trunc_ln23_fu_641_p1}}, {tmp_6_fu_645_p4}}, {tmp_2_fu_672_p3}}, {1'd1}};
assign add_ln24_1_fu_789_p4 = {{{trunc_ln21_reg_1059}, {tmp_6_reg_1080}}, {or_ln23_reg_1075}};
assign add_ln24_2_fu_802_p5 = {{{{trunc_ln21_reg_1059}, {tmp_6_reg_1080}}, {tmp_2_reg_1096}}, {1'd1}};
assign and_ln11_1_fu_405_p2 = (xor_ln11_fu_399_p2 & ap_phi_mux_icmp_ln1784_phi_fu_282_p4);
assign and_ln11_fu_441_p2 = (xor_ln11_fu_399_p2 & ap_phi_mux_icmp_ln1883_phi_fu_292_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_354 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_867 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_872 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1211 == 1'd0));
end
always @ (*) begin
    ap_condition_883 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15_reg_1211 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign bitcast_ln23_1_fu_765_p1 = m2_1_load_reg_1126;
assign bitcast_ln23_2_fu_769_p1 = m2_0_load_1_reg_1131;
assign bitcast_ln23_3_fu_773_p1 = m2_1_load_1_reg_1136;
assign bitcast_ln23_fu_761_p1 = m2_0_load_reg_1121;
assign bitcast_ln24_1_fu_923_p1 = reg_321;
assign bitcast_ln24_2_fu_915_p1 = prod_1_load_reg_1235;
assign bitcast_ln24_3_fu_933_p1 = reg_321;
assign bitcast_ln24_4_fu_911_p1 = prod_0_load_1_reg_1225;
assign bitcast_ln24_5_fu_928_p1 = reg_325;
assign bitcast_ln24_6_fu_919_p1 = prod_1_load_1_reg_1250;
assign bitcast_ln24_7_fu_938_p1 = reg_325;
assign bitcast_ln24_fu_907_p1 = prod_0_load_reg_1215;
assign empty_8_fu_461_p2 = (exitcond_flatten_mid234_fu_447_p2 | and_ln11_1_fu_405_p2);
assign empty_9_fu_467_p2 = (empty_8_fu_461_p2 | ap_phi_mux_icmp_ln1685_phi_fu_271_p4);
assign empty_fu_417_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_271_p4 | and_ln11_1_fu_405_p2);
assign exitcond_flatten14_not_fu_429_p2 = (ap_phi_mux_icmp_ln1784_phi_fu_282_p4 ^ 1'd1);
assign exitcond_flatten_mid234_fu_447_p2 = (not_exitcond_flatten14_mid267_fu_435_p2 & and_ln11_fu_441_p2);
assign i_fu_552_p3 = ((exitcond_flatten_mid234_reg_1019[0:0] == 1'b1) ? add_ln17_fu_539_p2 : i_mid219_fu_532_p3);
assign i_mid219_fu_532_p3 = ((empty_reg_1013[0:0] == 1'b1) ? 7'd0 : i78_fu_124);
assign icmp_ln15_fu_881_p2 = ((indvar_flatten6873_fu_104 == 16'd65535) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_875_p2 = ((select_ln16_1_fu_849_p3 == 15'd8192) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_869_p2 = ((select_ln17_1_fu_836_p3 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_863_p2 = ((select_ln18_1_fu_823_p3 == 6'd16) ? 1'b1 : 1'b0);
assign icmp_ln22_mid211_fu_481_p2 = (icmp_ln22_mid230_fu_423_p2 | exitcond_flatten_mid234_fu_447_p2);
assign icmp_ln22_mid230_fu_423_p2 = (or_ln11_fu_393_p2 | and_ln11_1_fu_405_p2);
assign j_fu_699_p2 = (j_mid2_fu_564_p3 + 4'd4);
assign j_mid27_fu_545_p3 = ((empty_9_reg_1024[0:0] == 1'b1) ? 4'd0 : j81_fu_136);
assign j_mid2_fu_564_p3 = ((icmp_ln22_mid211_reg_1036[0:0] == 1'b1) ? j_mid27_fu_545_p3 : 4'd0);
assign jj_fu_524_p3 = ((icmp_ln1685_reg_268[0:0] == 1'b1) ? add_ln1586_fu_140 : jj74_fu_108);
assign k_fu_571_p3 = ((icmp_ln22_mid211_reg_1036[0:0] == 1'b1) ? k_mid26_reg_1030 : add_ln18_fu_559_p2);
assign k_mid26_fu_473_p3 = ((empty_9_fu_467_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_k80_load);
assign kk_fu_453_p3 = ((and_ln11_1_fu_405_p2[0:0] == 1'b1) ? add_ln16_fu_411_p2 : select_ln11_fu_385_p3);
assign lshr_ln1_fu_615_p4 = {{j_mid2_fu_564_p3[2:1]}};
assign lshr_ln_fu_581_p4 = {{k_fu_571_p3[2:1]}};
assign m1_0_address0 = zext_ln21_fu_609_p1;
assign m1_0_ce0 = m1_0_ce0_local;
assign m1_1_address0 = zext_ln21_fu_609_p1;
assign m1_1_ce0 = m1_1_ce0_local;
assign m2_0_address0 = zext_ln23_1_fu_693_p1;
assign m2_0_address1 = zext_ln23_fu_666_p1;
assign m2_0_ce0 = m2_0_ce0_local;
assign m2_0_ce1 = m2_0_ce1_local;
assign m2_1_address0 = zext_ln23_1_fu_693_p1;
assign m2_1_address1 = zext_ln23_fu_666_p1;
assign m2_1_ce0 = m2_1_ce0_local;
assign m2_1_ce1 = m2_1_ce1_local;
assign not_exitcond_flatten14_mid267_fu_435_p2 = (exitcond_flatten14_not_fu_429_p2 | ap_phi_mux_icmp_ln1685_phi_fu_271_p4);
assign or_ln11_fu_393_p2 = (ap_phi_mux_icmp_ln2282_phi_fu_302_p4 | ap_phi_mux_icmp_ln1685_phi_fu_271_p4);
assign or_ln21_fu_591_p2 = (tmp_reg_1042 | lshr_ln_fu_581_p4);
assign or_ln23_fu_635_p2 = (tmp_4_fu_625_p4 | lshr_ln1_fu_615_p4);
assign prod_0_address0 = prod_0_address0_local;
assign prod_0_address1 = prod_0_address1_local;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_ce1 = prod_0_ce1_local;
assign prod_0_d0 = bitcast_ln24_5_fu_928_p1;
assign prod_0_d1 = bitcast_ln24_1_fu_923_p1;
assign prod_0_we0 = prod_0_we0_local;
assign prod_0_we1 = prod_0_we1_local;
assign prod_1_address0 = prod_1_addr_1_reg_1191;
assign prod_1_address1 = prod_1_addr_reg_1181;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_ce1 = prod_1_ce1_local;
assign prod_1_d0 = bitcast_ln24_7_fu_938_p1;
assign prod_1_d1 = bitcast_ln24_3_fu_933_p1;
assign prod_1_we0 = prod_1_we0_local;
assign prod_1_we1 = prod_1_we1_local;
assign select_ln11_fu_385_p3 = ((ap_phi_mux_icmp_ln1685_phi_fu_271_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_kk76_load);
assign select_ln16_1_fu_849_p3 = ((icmp_ln1685_reg_268[0:0] == 1'b1) ? 15'd1 : add_ln16_1_fu_843_p2);
assign select_ln17_1_fu_836_p3 = ((empty_reg_1013[0:0] == 1'b1) ? 12'd1 : add_ln17_1_fu_830_p2);
assign select_ln18_1_fu_823_p3 = ((empty_9_reg_1024[0:0] == 1'b1) ? 6'd1 : add_ln18_1_fu_817_p2);
assign select_ln21_fu_750_p3 = ((trunc_ln18_reg_1054[0:0] == 1'b1) ? m1_1_q0 : m1_0_q0);
assign temp_x_fu_757_p1 = select_ln21_reg_1116;
assign tmp_2_fu_672_p3 = j_mid2_fu_564_p3[32'd2];
assign tmp_3_fu_705_p3 = j_fu_699_p2[32'd3];
assign tmp_4_fu_625_p4 = {{jj_fu_524_p3[2:1]}};
assign tmp_6_fu_645_p4 = {{jj_fu_524_p3[5:3]}};
assign trunc_ln18_fu_577_p1 = k_fu_571_p3[0:0];
assign trunc_ln21_fu_596_p1 = i_fu_552_p3[5:0];
assign trunc_ln23_fu_641_p1 = k_fu_571_p3[2:0];
assign xor_ln11_fu_399_p2 = (ap_phi_mux_icmp_ln1685_phi_fu_271_p4 ^ 1'd1);
assign xor_ln22_fu_713_p2 = (tmp_3_fu_705_p3 ^ 1'd1);
assign zext_ln21_fu_609_p1 = add_ln21_1_fu_600_p4;
assign zext_ln23_1_fu_693_p1 = add_ln23_2_fu_680_p6;
assign zext_ln23_fu_666_p1 = add_ln23_1_fu_655_p5;
assign zext_ln24_1_fu_811_p1 = add_ln24_2_fu_802_p5;
assign zext_ln24_fu_796_p1 = add_ln24_1_fu_789_p4;
always @ (posedge ap_clk) begin
    prod_0_addr_1_reg_1186[0] <= 1'b1;
    prod_1_addr_1_reg_1191[0] <= 1'b1;
end
endmodule 