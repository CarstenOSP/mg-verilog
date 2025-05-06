
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,cnt,tmp_end,edges_address0,edges_ce0,edges_q0,edges_address1,edges_ce1,edges_q1,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next11_cast2,cnt_14_out,cnt_14_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 24'd1;
parameter    ap_ST_fsm_pp0_stage1 = 24'd2;
parameter    ap_ST_fsm_pp0_stage2 = 24'd4;
parameter    ap_ST_fsm_pp0_stage3 = 24'd8;
parameter    ap_ST_fsm_pp0_stage4 = 24'd16;
parameter    ap_ST_fsm_pp0_stage5 = 24'd32;
parameter    ap_ST_fsm_pp0_stage6 = 24'd64;
parameter    ap_ST_fsm_pp0_stage7 = 24'd128;
parameter    ap_ST_fsm_pp0_stage8 = 24'd256;
parameter    ap_ST_fsm_pp0_stage9 = 24'd512;
parameter    ap_ST_fsm_pp0_stage10 = 24'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 24'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 24'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 24'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 24'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 24'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 24'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 24'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 24'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 24'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 24'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 24'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 24'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] empty;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [11:0] edges_address0;
output   edges_ce0;
input  [63:0] edges_q0;
output  [11:0] edges_address1;
output   edges_ce1;
input  [63:0] edges_q1;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next11_cast2;
output  [63:0] cnt_14_out;
output   cnt_14_out_ap_vld;
reg ap_idle;
reg cnt_14_out_ap_vld;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_subdone;
reg   [0:0] icmp_ln28_reg_720;
reg    ap_condition_exit_pp0_iter0_stage19;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_subdone;
reg   [63:0] cnt_6_reg_274;
reg   [63:0] cnt_8_reg_288;
reg   [63:0] cnt_10_reg_302;
reg   [63:0] cnt_12_reg_316;
reg   [63:0] cnt_14_reg_330;
reg   [63:0] cnt_16_reg_345;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next11_cast2_cast_fu_378_p1;
reg   [7:0] indvars_iv_next11_cast2_cast_reg_620;
reg   [63:0] e_1_reg_625;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln29_fu_401_p2;
reg   [0:0] icmp_ln29_reg_637;
reg   [7:0] level_addr_reg_646;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln29_1_fu_412_p2;
reg   [0:0] icmp_ln29_1_reg_651;
wire   [0:0] icmp_ln29_2_fu_423_p2;
reg   [0:0] icmp_ln29_2_reg_660;
wire   [0:0] grp_fu_372_p2;
reg   [0:0] icmp_ln34_reg_669;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] level_addr_1_reg_673;
reg   [7:0] level_addr_2_reg_678;
wire   [0:0] icmp_ln29_3_fu_434_p2;
reg   [0:0] icmp_ln29_3_reg_683;
wire   [0:0] icmp_ln29_4_fu_445_p2;
reg   [0:0] icmp_ln29_4_reg_692;
reg   [7:0] level_addr_3_reg_701;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [7:0] level_addr_4_reg_706;
wire   [0:0] icmp_ln29_5_fu_459_p2;
reg   [0:0] icmp_ln29_5_reg_711;
wire   [0:0] icmp_ln28_fu_488_p2;
wire   [0:0] icmp_ln29_6_fu_494_p2;
reg   [0:0] icmp_ln29_6_reg_724;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] cnt_19_fu_513_p2;
reg   [7:0] level_addr_5_reg_744;
reg   [7:0] level_addr_6_reg_749;
wire   [0:0] icmp_ln29_7_fu_525_p2;
reg   [0:0] icmp_ln29_7_reg_754;
reg   [0:0] icmp_ln34_1_reg_763;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] cnt_20_fu_540_p2;
reg   [7:0] level_addr_7_reg_772;
reg   [0:0] icmp_ln34_2_reg_777;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] cnt_21_fu_546_p2;
reg   [0:0] icmp_ln34_3_reg_786;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [63:0] cnt_22_fu_552_p2;
reg   [0:0] icmp_ln34_4_reg_795;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [63:0] cnt_23_fu_558_p2;
reg   [0:0] icmp_ln34_5_reg_804;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire   [63:0] cnt_24_fu_564_p2;
reg   [0:0] icmp_ln34_6_reg_813;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
wire   [63:0] cnt_25_fu_570_p2;
reg   [0:0] icmp_ln34_7_reg_822;
wire   [63:0] cnt_26_fu_576_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_3_reg_262;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_6_reg_274;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_8_reg_288;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_10_reg_302;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_12_reg_316;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_14_reg_330;
wire    ap_block_pp0_stage19_11001;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_16_reg_345;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_18_reg_359;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_18_reg_359;
wire    ap_block_pp0_stage23_11001;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] e_2_fu_406_p2;
wire   [63:0] e_3_fu_417_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] e_4_fu_428_p2;
wire   [63:0] e_5_fu_439_p2;
wire    ap_block_pp0_stage4;
wire   [63:0] e_6_fu_453_p2;
wire   [63:0] e_7_fu_464_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] e_8_fu_519_p2;
wire    ap_block_pp0_stage6;
reg   [31:0] i_fu_76;
wire   [31:0] i_4_fu_499_p2;
wire    ap_loop_init;
reg   [63:0] e_fu_80;
wire   [63:0] e_9_fu_530_p2;
reg   [63:0] cnt_1_fu_84;
wire    ap_block_pp0_stage19_01001;
reg    edges_ce0_local;
reg   [11:0] edges_address0_local;
reg    edges_ce1_local;
reg   [11:0] edges_address1_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire    ap_block_pp0_stage7;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage10;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage13;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage16;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_block_pp0_stage17;
wire    ap_block_pp0_stage19;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage20;
wire    ap_block_pp0_stage22;
wire    ap_block_pp0_stage23;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage18;
wire    ap_block_pp0_stage21;
wire   [28:0] tmp_fu_470_p4;
wire   [31:0] i_1_fu_480_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [23:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1027;
reg    ap_condition_1031;
reg    ap_condition_1034;
reg    ap_condition_1038;
reg    ap_condition_1042;
reg    ap_condition_1045;
reg    ap_condition_1050;
reg    ap_condition_1054;
reg    ap_condition_1057;
reg    ap_condition_1063;
reg    ap_condition_1067;
reg    ap_condition_1070;
reg    ap_condition_1074;
reg    ap_condition_1078;
reg    ap_condition_1082;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_76 = 32'd0;
#0 e_fu_80 = 64'd0;
#0 cnt_1_fu_84 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage19),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage19_subdone) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage19)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage23_subdone) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1034)) begin
            ap_phi_reg_pp0_iter0_cnt_10_reg_302 <= cnt_8_reg_288;
        end else if ((1'b1 == ap_condition_1031)) begin
            ap_phi_reg_pp0_iter0_cnt_10_reg_302 <= ap_phi_reg_pp0_iter0_cnt_8_reg_288;
        end else if ((1'b1 == ap_condition_1027)) begin
            ap_phi_reg_pp0_iter0_cnt_10_reg_302 <= cnt_22_fu_552_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1045)) begin
            ap_phi_reg_pp0_iter0_cnt_12_reg_316 <= cnt_10_reg_302;
        end else if ((1'b1 == ap_condition_1042)) begin
            ap_phi_reg_pp0_iter0_cnt_12_reg_316 <= ap_phi_reg_pp0_iter0_cnt_10_reg_302;
        end else if ((1'b1 == ap_condition_1038)) begin
            ap_phi_reg_pp0_iter0_cnt_12_reg_316 <= cnt_23_fu_558_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1057)) begin
            ap_phi_reg_pp0_iter0_cnt_14_reg_330 <= cnt_12_reg_316;
        end else if ((1'b1 == ap_condition_1054)) begin
            ap_phi_reg_pp0_iter0_cnt_14_reg_330 <= ap_phi_reg_pp0_iter0_cnt_12_reg_316;
        end else if ((1'b1 == ap_condition_1050)) begin
            ap_phi_reg_pp0_iter0_cnt_14_reg_330 <= cnt_24_fu_564_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln28_reg_720 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1070)) begin
            ap_phi_reg_pp0_iter0_cnt_16_reg_345 <= cnt_14_reg_330;
        end else if ((1'b1 == ap_condition_1067)) begin
            ap_phi_reg_pp0_iter0_cnt_16_reg_345 <= ap_phi_reg_pp0_iter0_cnt_14_reg_330;
        end else if ((1'b1 == ap_condition_1063)) begin
            ap_phi_reg_pp0_iter0_cnt_16_reg_345 <= cnt_25_fu_570_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln34_reg_669 == 1'd0) & (icmp_ln29_reg_637 == 1'd1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln29_reg_637 == 1'd0)))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_262 <= cnt_1_fu_84;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln34_reg_669 == 1'd1) & (icmp_ln29_reg_637 == 1'd1))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_262 <= cnt_19_fu_513_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (grp_fu_372_p2 == 1'd0) & (icmp_ln29_1_reg_651 == 1'd1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln29_1_reg_651 == 1'd0)))) begin
        ap_phi_reg_pp0_iter0_cnt_6_reg_274 <= ap_phi_reg_pp0_iter0_cnt_3_reg_262;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (grp_fu_372_p2 == 1'd1) & (icmp_ln29_1_reg_651 == 1'd1))) begin
        ap_phi_reg_pp0_iter0_cnt_6_reg_274 <= cnt_20_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1082)) begin
            ap_phi_reg_pp0_iter0_cnt_8_reg_288 <= cnt_6_reg_274;
        end else if ((1'b1 == ap_condition_1078)) begin
            ap_phi_reg_pp0_iter0_cnt_8_reg_288 <= ap_phi_reg_pp0_iter0_cnt_6_reg_274;
        end else if ((1'b1 == ap_condition_1074)) begin
            ap_phi_reg_pp0_iter0_cnt_8_reg_288 <= cnt_21_fu_546_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln28_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_7_reg_754 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_372_p2 == 1'd0))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_359 <= cnt_16_reg_345;
    end else if (((icmp_ln28_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_7_reg_754 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (grp_fu_372_p2 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_359 <= cnt_26_fu_576_p2;
    end else if (((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_phi_reg_pp0_iter1_cnt_18_reg_359 <= ap_phi_reg_pp0_iter0_cnt_18_reg_359;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_84 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cnt_1_fu_84 <= ap_phi_reg_pp0_iter1_cnt_18_reg_359;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_fu_80 <= empty;
    end else if (((icmp_ln28_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        e_fu_80 <= e_9_fu_530_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_76 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_488_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_fu_76 <= i_4_fu_499_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln28_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln29_7_reg_754 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        ap_phi_reg_pp0_iter0_cnt_18_reg_359 <= ap_phi_reg_pp0_iter0_cnt_16_reg_345;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        cnt_10_reg_302 <= ap_phi_reg_pp0_iter0_cnt_10_reg_302;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        cnt_12_reg_316 <= ap_phi_reg_pp0_iter0_cnt_12_reg_316;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        cnt_14_reg_330 <= ap_phi_reg_pp0_iter0_cnt_14_reg_330;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        cnt_16_reg_345 <= ap_phi_reg_pp0_iter0_cnt_16_reg_345;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        cnt_6_reg_274 <= ap_phi_reg_pp0_iter0_cnt_6_reg_274;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        cnt_8_reg_288 <= ap_phi_reg_pp0_iter0_cnt_8_reg_288;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_625 <= e_fu_80;
        icmp_ln29_reg_637 <= icmp_ln29_fu_401_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln28_reg_720 <= icmp_ln28_fu_488_p2;
        icmp_ln29_5_reg_711 <= icmp_ln29_5_fu_459_p2;
        icmp_ln29_6_reg_724 <= icmp_ln29_6_fu_494_p2;
        level_addr_3_reg_701 <= edges_q0;
        level_addr_4_reg_706 <= edges_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln29_1_reg_651 <= icmp_ln29_1_fu_412_p2;
        icmp_ln29_2_reg_660 <= icmp_ln29_2_fu_423_p2;
        level_addr_reg_646 <= edges_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln29_3_reg_683 <= icmp_ln29_3_fu_434_p2;
        icmp_ln29_4_reg_692 <= icmp_ln29_4_fu_445_p2;
        level_addr_1_reg_673 <= edges_q1;
        level_addr_2_reg_678 <= edges_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln29_7_reg_754 <= icmp_ln29_7_fu_525_p2;
        level_addr_5_reg_744 <= edges_q0;
        level_addr_6_reg_749 <= edges_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        icmp_ln34_1_reg_763 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        icmp_ln34_2_reg_777 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln34_3_reg_786 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        icmp_ln34_4_reg_795 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        icmp_ln34_5_reg_804 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
        icmp_ln34_6_reg_813 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln34_7_reg_822 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln34_reg_669 <= grp_fu_372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next11_cast2_cast_reg_620[3 : 0] <= indvars_iv_next11_cast2_cast_fu_378_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_addr_7_reg_772 <= edges_q1;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_720 == 1'd0) & (1'b0 == ap_block_pp0_stage19_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_condition_exit_pp0_iter0_stage19 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage19 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage19_subdone) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
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
    if (((1'b0 == ap_block_pp0_stage23_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln28_reg_720 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        cnt_14_out_ap_vld = 1'b1;
    end else begin
        cnt_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            edges_address0_local = e_6_fu_453_p2;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_address0_local = e_4_fu_428_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_address0_local = e_3_fu_417_p2;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_address0_local = e_fu_80;
        end else begin
            edges_address0_local = 'bx;
        end
    end else begin
        edges_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            edges_address1_local = e_8_fu_519_p2;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            edges_address1_local = e_7_fu_464_p2;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_address1_local = e_5_fu_439_p2;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_address1_local = e_2_fu_406_p2;
        end else begin
            edges_address1_local = 'bx;
        end
    end else begin
        edges_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_ce0_local = 1'b1;
    end else begin
        edges_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        edges_ce1_local = 1'b1;
    end else begin
        edges_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage23) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        level_address0_local = level_addr_7_reg_772;
    end else if ((((1'b0 == ap_block_pp0_stage22) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage20) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)))) begin
        level_address0_local = level_addr_6_reg_749;
    end else if ((((1'b0 == ap_block_pp0_stage19) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        level_address0_local = level_addr_5_reg_744;
    end else if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        level_address0_local = level_addr_4_reg_706;
    end else if ((((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        level_address0_local = level_addr_3_reg_701;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        level_address0_local = level_addr_2_reg_678;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        level_address0_local = level_addr_1_reg_673;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        level_address0_local = level_addr_reg_646;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = edges_q0;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage13_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln28_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_6_reg_813 == 1'd1) & (icmp_ln29_6_reg_724 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((icmp_ln28_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_7_reg_822 == 1'd1) & (icmp_ln29_7_reg_754 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_5_reg_804 == 1'd1) & (icmp_ln29_5_reg_711 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_4_reg_795 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage16) & (icmp_ln29_4_reg_692 == 1'd1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_3_reg_786 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13) & (icmp_ln29_3_reg_683 == 1'd1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_2_reg_777== 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln29_2_reg_660 == 1'd1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_763 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln29_1_reg_651 == 1'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln34_reg_669 == 1'd1) & (icmp_ln29_reg_637 == 1'd1)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage19)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
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
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_01001 = ~(1'b1 == 1'b1);
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
    ap_condition_1027 = ((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln29_3_reg_683 == 1'd1) & (grp_fu_372_p2 == 1'd1));
end
always @ (*) begin
    ap_condition_1031 = ((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln29_3_reg_683 == 1'd0));
end
always @ (*) begin
    ap_condition_1034 = ((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln29_3_reg_683 == 1'd1) & (grp_fu_372_p2 == 1'd0));
end
always @ (*) begin
    ap_condition_1038 = ((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln29_4_reg_692 == 1'd1) & (grp_fu_372_p2 == 1'd1));
end
always @ (*) begin
    ap_condition_1042 = ((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13) & (icmp_ln29_4_reg_692 == 1'd0));
end
always @ (*) begin
    ap_condition_1045 = ((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15) & (icmp_ln29_4_reg_692 == 1'd1) & (grp_fu_372_p2 == 1'd0));
end
always @ (*) begin
    ap_condition_1050 = ((1'b0 == ap_block_pp0_stage18_11001) & (icmp_ln29_5_reg_711 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (grp_fu_372_p2 == 1'd1));
end
always @ (*) begin
    ap_condition_1054 = ((1'b0 == ap_block_pp0_stage16_11001) & (icmp_ln29_5_reg_711 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage16));
end
always @ (*) begin
    ap_condition_1057 = ((1'b0 == ap_block_pp0_stage18_11001) & (icmp_ln29_5_reg_711 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage18) & (grp_fu_372_p2 == 1'd0));
end
always @ (*) begin
    ap_condition_1063 = ((1'b0 == ap_block_pp0_stage21_11001) & (icmp_ln29_6_reg_724 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (grp_fu_372_p2 == 1'd1));
end
always @ (*) begin
    ap_condition_1067 = ((1'b0 == ap_block_pp0_stage19_11001) & (icmp_ln29_6_reg_724 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage19));
end
always @ (*) begin
    ap_condition_1070 = ((1'b0 == ap_block_pp0_stage21_11001) & (icmp_ln29_6_reg_724 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage21) & (grp_fu_372_p2 == 1'd0));
end
always @ (*) begin
    ap_condition_1074 = ((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9) & (grp_fu_372_p2 == 1'd1) & (icmp_ln29_2_reg_660 == 1'd1));
end
always @ (*) begin
    ap_condition_1078 = ((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7) & (icmp_ln29_2_reg_660 == 1'd0));
end
always @ (*) begin
    ap_condition_1082 = ((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9) & (grp_fu_372_p2 == 1'd0) & (icmp_ln29_2_reg_660 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage19;
assign ap_ready = ap_ready_sig;
assign cnt_14_out = cnt_14_reg_330;
assign cnt_19_fu_513_p2 = (cnt_1_fu_84 + 64'd1);
assign cnt_20_fu_540_p2 = (ap_phi_reg_pp0_iter0_cnt_3_reg_262 + 64'd1);
assign cnt_21_fu_546_p2 = (cnt_6_reg_274 + 64'd1);
assign cnt_22_fu_552_p2 = (cnt_8_reg_288 + 64'd1);
assign cnt_23_fu_558_p2 = (cnt_10_reg_302 + 64'd1);
assign cnt_24_fu_564_p2 = (cnt_12_reg_316 + 64'd1);
assign cnt_25_fu_570_p2 = (cnt_14_reg_330 + 64'd1);
assign cnt_26_fu_576_p2 = (cnt_16_reg_345 + 64'd1);
assign e_2_fu_406_p2 = (e_1_reg_625 + 64'd1);
assign e_3_fu_417_p2 = (e_1_reg_625 + 64'd2);
assign e_4_fu_428_p2 = (e_1_reg_625 + 64'd3);
assign e_5_fu_439_p2 = (e_1_reg_625 + 64'd4);
assign e_6_fu_453_p2 = (e_1_reg_625 + 64'd5);
assign e_7_fu_464_p2 = (e_1_reg_625 + 64'd6);
assign e_8_fu_519_p2 = (e_1_reg_625 + 64'd7);
assign e_9_fu_530_p2 = (e_1_reg_625 + 64'd8);
assign edges_address0 = edges_address0_local;
assign edges_address1 = edges_address1_local;
assign edges_ce0 = edges_ce0_local;
assign edges_ce1 = edges_ce1_local;
assign grp_fu_372_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign i_1_fu_480_p3 = {{tmp_fu_470_p4}, {3'd6}};
assign i_4_fu_499_p2 = (i_fu_76 + 32'd8);
assign icmp_ln28_fu_488_p2 = (($signed(i_1_fu_480_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_412_p2 = ((e_2_fu_406_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_423_p2 = ((e_3_fu_417_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_434_p2 = ((e_4_fu_428_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_445_p2 = ((e_5_fu_439_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_459_p2 = ((e_6_fu_453_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_494_p2 = ((e_7_fu_464_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_525_p2 = ((e_8_fu_519_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_401_p2 = ((e_fu_80 < tmp_end) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast2_cast_fu_378_p1 = indvars_iv_next11_cast2;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next11_cast2_cast_reg_620;
assign level_we0 = level_we0_local;
assign tmp_fu_470_p4 = {{i_fu_76[31:3]}};
always @ (posedge ap_clk) begin
    indvars_iv_next11_cast2_cast_reg_620[7:4] <= 4'b0000;
end
endmodule 
