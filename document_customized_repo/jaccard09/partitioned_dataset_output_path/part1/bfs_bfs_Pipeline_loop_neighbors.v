
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,q_in,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,queue_1_address0,queue_1_ce0,queue_1_we0,queue_1_d0,queue_address0,queue_ce0,queue_we0,queue_d0,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,q_in_5_out,q_in_5_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] empty;
input  [63:0] q_in;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
output  [6:0] queue_1_address0;
output   queue_1_ce0;
output   queue_1_we0;
output  [7:0] queue_1_d0;
output  [6:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
input  [63:0] tmp_end;
output  [10:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [10:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
output  [63:0] q_in_5_out;
output   q_in_5_out_ap_vld;
reg ap_idle;
reg q_in_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_subdone;
reg   [0:0] icmp_ln39_reg_1009;
reg    ap_condition_exit_pp0_iter0_stage12;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] q_in_3_reg_351;
reg   [63:0] q_in_5_reg_363;
reg   [63:0] q_in_7_reg_377;
reg   [7:0] reg_410;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_414;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_cast_fu_432_p1;
reg   [63:0] zext_ln18_cast_reg_948;
reg   [63:0] e_1_reg_953;
reg   [7:0] level_addr_reg_961;
wire   [0:0] trunc_ln12_fu_454_p1;
reg   [0:0] trunc_ln12_reg_966;
wire   [0:0] icmp_ln40_fu_474_p2;
reg   [0:0] icmp_ln40_reg_974;
wire   [7:0] tmp_dst_fu_490_p3;
reg   [7:0] tmp_dst_reg_988;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln40_1_fu_518_p2;
reg   [0:0] icmp_ln40_1_reg_995;
wire   [0:0] icmp_ln39_fu_562_p2;
wire   [0:0] icmp_ln40_2_fu_568_p2;
reg   [0:0] icmp_ln40_2_reg_1013;
reg   [10:0] lshr_ln16_3_reg_1027;
wire   [0:0] icmp_ln40_3_fu_588_p2;
reg   [0:0] icmp_ln40_3_reg_1032;
reg   [0:0] icmp_ln40_3_reg_1032_pp0_iter1_reg;
reg   [7:0] level_addr_1_reg_1036;
wire   [7:0] tmp_dst_1_fu_616_p3;
reg   [7:0] tmp_dst_1_reg_1041;
wire   [7:0] tmp_dst_2_fu_631_p3;
reg   [7:0] tmp_dst_2_reg_1048;
reg   [63:0] q_in_10_reg_1065;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] grp_fu_404_p2;
reg   [0:0] icmp_ln44_reg_1072;
wire   [0:0] icmp_ln48_fu_646_p2;
reg   [0:0] icmp_ln48_reg_1076;
wire   [7:0] tmp_dst_3_fu_660_p3;
reg   [7:0] tmp_dst_3_reg_1081;
wire   [63:0] zext_ln16_1_fu_709_p1;
reg   [3:0] level_counts_addr_reg_1096;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] trunc_ln51_fu_718_p1;
reg   [7:0] trunc_ln51_reg_1101;
reg   [7:0] level_addr_2_reg_1107;
reg   [0:0] icmp_ln44_1_reg_1112;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [0:0] icmp_ln48_1_fu_726_p2;
reg   [0:0] icmp_ln48_1_reg_1116;
wire   [63:0] zext_ln16_3_fu_769_p1;
reg   [3:0] level_counts_addr_1_reg_1129;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [7:0] trunc_ln51_1_fu_778_p1;
reg   [7:0] trunc_ln51_1_reg_1134;
reg   [7:0] level_addr_3_reg_1140;
reg   [0:0] icmp_ln44_2_reg_1145;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] icmp_ln48_2_fu_786_p2;
reg   [0:0] icmp_ln48_2_reg_1149;
wire   [63:0] zext_ln16_4_fu_829_p1;
reg   [3:0] level_counts_addr_2_reg_1162;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [7:0] trunc_ln51_2_fu_838_p1;
reg   [7:0] trunc_ln51_2_reg_1167;
reg   [7:0] level_addr_4_reg_1173;
reg   [0:0] icmp_ln44_3_reg_1178;
wire   [0:0] trunc_ln48_3_fu_865_p1;
reg   [0:0] trunc_ln48_3_reg_1182;
reg   [6:0] lshr_ln48_3_reg_1186;
wire   [63:0] zext_ln16_6_fu_884_p1;
reg   [3:0] level_counts_addr_3_reg_1196;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_351;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_5_reg_363;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_7_reg_377;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_9_reg_391;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_9_reg_391;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_468_p1;
wire   [63:0] zext_ln16_2_fu_512_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln39_fu_538_p1;
wire   [63:0] zext_ln41_fu_604_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln16_5_fu_638_p1;
wire   [63:0] zext_ln48_fu_697_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln47_fu_713_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln41_1_fu_722_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln48_1_fu_758_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln47_1_fu_773_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln41_2_fu_782_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln48_2_fu_818_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln47_2_fu_833_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln41_3_fu_842_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln48_3_fu_898_p1;
wire   [63:0] zext_ln47_3_fu_908_p1;
wire    ap_block_pp0_stage12;
reg   [63:0] e_fu_86;
wire   [63:0] e_5_fu_888_p2;
wire    ap_loop_init;
reg   [31:0] i_fu_90;
wire   [31:0] i_4_fu_593_p2;
reg   [63:0] q_in_1_fu_94;
wire    ap_block_pp0_stage4;
reg    edges_0_ce0_local;
reg   [10:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [10:0] edges_1_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] grp_fu_418_p2;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage0;
reg    queue_we0_local;
wire   [0:0] trunc_ln48_fu_683_p1;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [6:0] queue_address0_local;
wire   [0:0] trunc_ln48_1_fu_744_p1;
wire   [0:0] trunc_ln48_2_fu_804_p1;
reg    queue_1_we0_local;
reg   [7:0] queue_1_d0_local;
reg    queue_1_ce0_local;
reg   [6:0] queue_1_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] grp_fu_425_p2;
wire   [10:0] lshr_ln16_1_fu_458_p4;
wire   [7:0] trunc_ln41_fu_482_p1;
wire   [7:0] trunc_ln41_1_fu_486_p1;
wire   [63:0] e_2_fu_497_p2;
wire   [10:0] lshr_ln16_2_fu_502_p4;
wire   [63:0] e_3_fu_523_p2;
wire   [10:0] lshr_ln3_fu_528_p4;
wire   [29:0] tmp_4_fu_544_p4;
wire   [31:0] i_1_fu_554_p3;
wire   [63:0] e_4_fu_573_p2;
wire   [7:0] trunc_ln41_2_fu_608_p1;
wire   [7:0] trunc_ln41_3_fu_612_p1;
wire   [7:0] trunc_ln41_4_fu_623_p1;
wire   [7:0] trunc_ln41_5_fu_627_p1;
wire   [7:0] trunc_ln41_6_fu_652_p1;
wire   [7:0] trunc_ln41_7_fu_656_p1;
wire   [7:0] trunc_ln12_1_fu_667_p1;
wire   [7:0] add_ln48_fu_670_p2;
wire   [7:0] select_ln48_fu_676_p3;
wire   [6:0] lshr_ln2_fu_687_p4;
wire   [7:0] q_in_11_fu_703_p2;
wire   [7:0] add_ln48_2_fu_732_p2;
wire   [7:0] select_ln48_1_fu_737_p3;
wire   [6:0] lshr_ln48_1_fu_748_p4;
wire   [7:0] q_in_12_fu_764_p2;
wire   [7:0] add_ln48_4_fu_792_p2;
wire   [7:0] select_ln48_2_fu_797_p3;
wire   [6:0] lshr_ln48_2_fu_808_p4;
wire   [7:0] q_in_13_fu_824_p2;
wire   [0:0] icmp_ln48_3_fu_846_p2;
wire   [7:0] add_ln48_6_fu_852_p2;
wire   [7:0] select_ln48_3_fu_857_p3;
wire   [7:0] q_in_14_fu_879_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1120;
reg    ap_condition_1124;
reg    ap_condition_1129;
reg    ap_condition_1135;
reg    ap_condition_1139;
reg    ap_condition_1144;
reg    ap_condition_1151;
reg    ap_condition_1157;
reg    ap_condition_1162;
reg    ap_condition_1166;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_fu_86 = 64'd0;
#0 i_fu_90 = 32'd0;
#0 q_in_1_fu_94 = 64'd0;
#0 ap_done_reg = 1'b0;
end
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage12),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage12)) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_404_p2 == 1'd0) & (icmp_ln40_reg_974 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_974 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_351 <= q_in_1_fu_94;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1072 == 1'd1) & (icmp_ln40_reg_974 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_351 <= zext_ln16_1_fu_709_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_1129)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_363 <= q_in_3_reg_351;
        end else if ((1'b1 == ap_condition_1124)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_363 <= ap_phi_reg_pp0_iter0_q_in_3_reg_351;
        end else if ((1'b1 == ap_condition_1120)) begin
            ap_phi_reg_pp0_iter0_q_in_5_reg_363 <= zext_ln16_3_fu_769_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1009 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if ((1'b1 == ap_condition_1144)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_377 <= q_in_5_reg_363;
        end else if ((1'b1 == ap_condition_1139)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_377 <= ap_phi_reg_pp0_iter0_q_in_5_reg_363;
        end else if ((1'b1 == ap_condition_1135)) begin
            ap_phi_reg_pp0_iter0_q_in_7_reg_377 <= zext_ln16_4_fu_829_p1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_404_p2 == 1'd0) & (icmp_ln40_3_reg_1032 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_q_in_9_reg_391 <= q_in_7_reg_377;
    end else if (((icmp_ln39_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_404_p2 == 1'd1) & (icmp_ln40_3_reg_1032 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_q_in_9_reg_391 <= zext_ln16_6_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter1_q_in_9_reg_391 <= ap_phi_reg_pp0_iter0_q_in_9_reg_391;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_fu_86 <= empty;
        end else if (((icmp_ln39_reg_1009 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_fu_86 <= e_5_fu_888_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_90 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln39_fu_562_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_90 <= i_4_fu_593_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        q_in_1_fu_94 <= q_in;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        q_in_1_fu_94 <= ap_phi_reg_pp0_iter1_q_in_9_reg_391;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_3_reg_1032 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_phi_reg_pp0_iter0_q_in_9_reg_391 <= ap_phi_reg_pp0_iter0_q_in_7_reg_377;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_953 <= e_fu_86;
        icmp_ln40_reg_974 <= icmp_ln40_fu_474_p2;
        level_addr_reg_961 <= zext_ln18_cast_reg_948;
        trunc_ln12_reg_966 <= trunc_ln12_fu_454_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln39_reg_1009 <= icmp_ln39_fu_562_p2;
        icmp_ln40_1_reg_995 <= icmp_ln40_1_fu_518_p2;
        icmp_ln40_2_reg_1013 <= icmp_ln40_2_fu_568_p2;
        icmp_ln40_3_reg_1032 <= icmp_ln40_3_fu_588_p2;
        icmp_ln40_3_reg_1032_pp0_iter1_reg <= icmp_ln40_3_reg_1032;
        level_counts_addr_3_reg_1196 <= zext_ln47_3_fu_908_p1;
        lshr_ln16_3_reg_1027 <= {{e_4_fu_573_p2[11:1]}};
        tmp_dst_reg_988 <= tmp_dst_fu_490_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln44_1_reg_1112 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln44_2_reg_1145 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln44_3_reg_1178 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln44_reg_1072 <= grp_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln48_1_reg_1116 <= icmp_ln48_1_fu_726_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        icmp_ln48_2_reg_1149 <= icmp_ln48_2_fu_786_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln48_reg_1076 <= icmp_ln48_fu_646_p2;
        q_in_10_reg_1065 <= q_in_1_fu_94;
        tmp_dst_3_reg_1081 <= tmp_dst_3_fu_660_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_1_reg_1036 <= zext_ln41_fu_604_p1;
        tmp_dst_1_reg_1041 <= tmp_dst_1_fu_616_p3;
        tmp_dst_2_reg_1048 <= tmp_dst_2_fu_631_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_addr_2_reg_1107 <= zext_ln41_1_fu_722_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_addr_3_reg_1140 <= zext_ln41_2_fu_782_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_addr_4_reg_1173 <= zext_ln41_3_fu_842_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_counts_addr_1_reg_1129 <= zext_ln47_1_fu_773_p1;
        trunc_ln51_1_reg_1134 <= trunc_ln51_1_fu_778_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_counts_addr_2_reg_1162 <= zext_ln47_2_fu_833_p1;
        trunc_ln51_2_reg_1167 <= trunc_ln51_2_fu_838_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_addr_reg_1096 <= zext_ln47_fu_713_p1;
        trunc_ln51_reg_1101 <= trunc_ln51_fu_718_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln48_3_reg_1186 <= {{select_ln48_3_fu_857_p3[7:1]}};
        trunc_ln48_3_reg_1182 <= trunc_ln48_3_fu_865_p1;
        zext_ln18_cast_reg_948[7 : 0] <= zext_ln18_cast_fu_432_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        q_in_3_reg_351 <= ap_phi_reg_pp0_iter0_q_in_3_reg_351;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        q_in_5_reg_363 <= ap_phi_reg_pp0_iter0_q_in_5_reg_363;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        q_in_7_reg_377 <= ap_phi_reg_pp0_iter0_q_in_7_reg_377;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_410 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_414 <= level_counts_q0;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_1009 == 1'd0) & (1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_0_address0_local = zext_ln16_5_fu_638_p1;
        end else if ((1'b1 == ap_condition_1157)) begin
            edges_0_address0_local = zext_ln39_fu_538_p1;
        end else if ((1'b1 == ap_condition_1151)) begin
            edges_0_address0_local = zext_ln16_2_fu_512_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln16_fu_468_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_fu_568_p2 == 1'd1) & (icmp_ln39_fu_562_p2 == 1'd1) & (trunc_ln12_reg_966 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_fu_518_p2 == 1'd1) & (trunc_ln12_reg_966 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_1_address0_local = zext_ln16_5_fu_638_p1;
        end else if ((1'b1 == ap_condition_1166)) begin
            edges_1_address0_local = zext_ln39_fu_538_p1;
        end else if ((1'b1 == ap_condition_1162)) begin
            edges_1_address0_local = zext_ln16_2_fu_512_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln16_fu_468_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_2_fu_568_p2 == 1'd1) & (icmp_ln39_fu_562_p2 == 1'd1) & (trunc_ln12_reg_966 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_1_fu_518_p2 == 1'd1) & (trunc_ln12_reg_966 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_4_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        level_address0_local = zext_ln41_3_fu_842_p1;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_address0_local = level_addr_3_reg_1140;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_address0_local = zext_ln41_2_fu_782_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_address0_local = level_addr_2_reg_1107;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_address0_local = zext_ln41_1_fu_722_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = level_addr_1_reg_1036;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        level_address0_local = level_addr_reg_961;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln41_fu_604_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage15_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        level_counts_address0_local = level_counts_addr_3_reg_1196;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_address0_local = zext_ln47_3_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_address0_local = level_counts_addr_2_reg_1162;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        level_counts_address0_local = zext_ln47_2_fu_833_p1;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        level_counts_address0_local = level_counts_addr_1_reg_1129;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        level_counts_address0_local = zext_ln47_1_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        level_counts_address0_local = level_counts_addr_reg_1096;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_address0_local = zext_ln47_fu_713_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln44_2_reg_1145 == 1'd1) & (icmp_ln40_2_reg_1013 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1112 == 1'd1) & (icmp_ln40_1_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1072 == 1'd1) & (icmp_ln40_reg_974 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln44_3_reg_1178 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1032_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1145 == 1'd1) & (icmp_ln40_2_reg_1013 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1112 == 1'd1) & (icmp_ln40_1_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1072 == 1'd1) & (icmp_ln40_reg_974 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln44_3_reg_1178 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1032 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_1009 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        q_in_5_out_ap_vld = 1'b1;
    end else begin
        q_in_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_address0_local = zext_ln48_3_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_1_address0_local = zext_ln48_2_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_1_address0_local = zext_ln48_1_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_address0_local = zext_ln48_fu_697_p1;
    end else begin
        queue_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_d0_local = tmp_dst_3_reg_1081;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_1_d0_local = tmp_dst_2_reg_1048;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_1_d0_local = tmp_dst_1_reg_1041;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_d0_local = tmp_dst_reg_988;
    end else begin
        queue_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_2_fu_804_p1 == 1'd1) & (icmp_ln39_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1145 == 1'd1) & (icmp_ln40_2_reg_1013 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((trunc_ln48_1_fu_744_p1 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1112 == 1'd1) & (icmp_ln40_1_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((trunc_ln48_fu_683_p1 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1072 == 1'd1) & (icmp_ln40_reg_974 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_3_reg_1182 == 1'd1) & (icmp_ln44_3_reg_1178 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1032 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_1_we0_local = 1'b1;
    end else begin
        queue_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_address0_local = zext_ln48_3_fu_898_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_address0_local = zext_ln48_2_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_address0_local = zext_ln48_1_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_address0_local = zext_ln48_fu_697_p1;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_d0_local = tmp_dst_3_reg_1081;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        queue_d0_local = tmp_dst_2_reg_1048;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        queue_d0_local = tmp_dst_1_reg_1041;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_d0_local = tmp_dst_reg_988;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_2_fu_804_p1 == 1'd0) & (icmp_ln39_reg_1009 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_2_reg_1145 == 1'd1) & (icmp_ln40_2_reg_1013 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((trunc_ln48_1_fu_744_p1 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_1_reg_1112 == 1'd1) & (icmp_ln40_1_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((trunc_ln48_fu_683_p1 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln44_reg_1072 == 1'd1) & (icmp_ln40_reg_974 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_3_reg_1182 == 1'd0) & (icmp_ln44_3_reg_1178 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_3_reg_1032 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_we0_local = 1'b1;
    end else begin
        queue_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage12)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln48_2_fu_732_p2 = ($signed(trunc_ln51_reg_1101) + $signed(8'd255));
assign add_ln48_4_fu_792_p2 = ($signed(trunc_ln51_1_reg_1134) + $signed(8'd255));
assign add_ln48_6_fu_852_p2 = ($signed(trunc_ln51_2_reg_1167) + $signed(8'd255));
assign add_ln48_fu_670_p2 = ($signed(trunc_ln12_1_fu_667_p1) + $signed(8'd255));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
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
    ap_condition_1120 = ((1'b0 == ap_block_pp0_stage9_11001) & (icmp_ln44_1_reg_1112 == 1'd1) & (icmp_ln40_1_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage9));
end
always @ (*) begin
    ap_condition_1124 = ((1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln40_1_reg_995 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage6));
end
always @ (*) begin
    ap_condition_1129 = ((1'b0 == ap_block_pp0_stage8_11001) & (grp_fu_404_p2 == 1'd0) & (icmp_ln40_1_reg_995 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8));
end
always @ (*) begin
    ap_condition_1135 = ((1'b0 == ap_block_pp0_stage13_11001) & (icmp_ln44_2_reg_1145 == 1'd1) & (icmp_ln40_2_reg_1013 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage13));
end
always @ (*) begin
    ap_condition_1139 = ((1'b0 == ap_block_pp0_stage10_11001) & (icmp_ln40_2_reg_1013 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10));
end
always @ (*) begin
    ap_condition_1144 = ((1'b0 == ap_block_pp0_stage12_11001) & (grp_fu_404_p2 == 1'd0) & (icmp_ln40_2_reg_1013 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage12));
end
always @ (*) begin
    ap_condition_1151 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_1_fu_518_p2 == 1'd1) & (trunc_ln12_reg_966 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1157 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_2_fu_568_p2 == 1'd1) & (icmp_ln39_fu_562_p2 == 1'd1) & (trunc_ln12_reg_966 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1162 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_1_fu_518_p2 == 1'd1) & (trunc_ln12_reg_966 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_1166 = ((1'b0 == ap_block_pp0_stage2) & (icmp_ln40_2_fu_568_p2 == 1'd1) & (icmp_ln39_fu_562_p2 == 1'd1) & (trunc_ln12_reg_966 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage12;
assign ap_ready = ap_ready_sig;
assign e_2_fu_497_p2 = (e_1_reg_953 + 64'd1);
assign e_3_fu_523_p2 = (e_1_reg_953 + 64'd2);
assign e_4_fu_573_p2 = (e_1_reg_953 + 64'd3);
assign e_5_fu_888_p2 = (e_1_reg_953 + 64'd4);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign grp_fu_404_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_418_p2 = (reg_410 + 8'd1);
assign grp_fu_425_p2 = (reg_414 + 64'd1);
assign i_1_fu_554_p3 = {{tmp_4_fu_544_p4}, {2'd2}};
assign i_4_fu_593_p2 = (i_fu_90 + 32'd4);
assign icmp_ln39_fu_562_p2 = (($signed(i_1_fu_554_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_518_p2 = ((e_2_fu_497_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_568_p2 = ((e_3_fu_523_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_3_fu_588_p2 = ((e_4_fu_573_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_474_p2 = ((e_fu_86 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_726_p2 = ((q_in_3_reg_351 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_786_p2 = ((q_in_5_reg_363 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_3_fu_846_p2 = ((q_in_7_reg_377 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_646_p2 = ((q_in_1_fu_94 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = grp_fu_425_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = grp_fu_418_p2;
assign level_we0 = level_we0_local;
assign lshr_ln16_1_fu_458_p4 = {{e_fu_86[11:1]}};
assign lshr_ln16_2_fu_502_p4 = {{e_2_fu_497_p2[11:1]}};
assign lshr_ln2_fu_687_p4 = {{select_ln48_fu_676_p3[7:1]}};
assign lshr_ln3_fu_528_p4 = {{e_3_fu_523_p2[11:1]}};
assign lshr_ln48_1_fu_748_p4 = {{select_ln48_1_fu_737_p3[7:1]}};
assign lshr_ln48_2_fu_808_p4 = {{select_ln48_2_fu_797_p3[7:1]}};
assign q_in_11_fu_703_p2 = (trunc_ln12_1_fu_667_p1 + 8'd1);
assign q_in_12_fu_764_p2 = (trunc_ln51_reg_1101 + 8'd1);
assign q_in_13_fu_824_p2 = (trunc_ln51_1_reg_1134 + 8'd1);
assign q_in_14_fu_879_p2 = (trunc_ln51_2_reg_1167 + 8'd1);
assign q_in_5_out = q_in_5_reg_363;
assign queue_1_address0 = queue_1_address0_local;
assign queue_1_ce0 = queue_1_ce0_local;
assign queue_1_d0 = queue_1_d0_local;
assign queue_1_we0 = queue_1_we0_local;
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_737_p3 = ((icmp_ln48_1_reg_1116[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_732_p2);
assign select_ln48_2_fu_797_p3 = ((icmp_ln48_2_reg_1149[0:0] == 1'b1) ? 8'd255 : add_ln48_4_fu_792_p2);
assign select_ln48_3_fu_857_p3 = ((icmp_ln48_3_fu_846_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_6_fu_852_p2);
assign select_ln48_fu_676_p3 = ((icmp_ln48_reg_1076[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_670_p2);
assign tmp_4_fu_544_p4 = {{i_fu_90[31:2]}};
assign tmp_dst_1_fu_616_p3 = ((trunc_ln12_reg_966[0:0] == 1'b1) ? trunc_ln41_2_fu_608_p1 : trunc_ln41_3_fu_612_p1);
assign tmp_dst_2_fu_631_p3 = ((trunc_ln12_reg_966[0:0] == 1'b1) ? trunc_ln41_4_fu_623_p1 : trunc_ln41_5_fu_627_p1);
assign tmp_dst_3_fu_660_p3 = ((trunc_ln12_reg_966[0:0] == 1'b1) ? trunc_ln41_6_fu_652_p1 : trunc_ln41_7_fu_656_p1);
assign tmp_dst_fu_490_p3 = ((trunc_ln12_reg_966[0:0] == 1'b1) ? trunc_ln41_fu_482_p1 : trunc_ln41_1_fu_486_p1);
assign trunc_ln12_1_fu_667_p1 = q_in_10_reg_1065[7:0];
assign trunc_ln12_fu_454_p1 = e_fu_86[0:0];
assign trunc_ln41_1_fu_486_p1 = edges_0_q0[7:0];
assign trunc_ln41_2_fu_608_p1 = edges_0_q0[7:0];
assign trunc_ln41_3_fu_612_p1 = edges_1_q0[7:0];
assign trunc_ln41_4_fu_623_p1 = edges_1_q0[7:0];
assign trunc_ln41_5_fu_627_p1 = edges_0_q0[7:0];
assign trunc_ln41_6_fu_652_p1 = edges_0_q0[7:0];
assign trunc_ln41_7_fu_656_p1 = edges_1_q0[7:0];
assign trunc_ln41_fu_482_p1 = edges_1_q0[7:0];
assign trunc_ln48_1_fu_744_p1 = select_ln48_1_fu_737_p3[0:0];
assign trunc_ln48_2_fu_804_p1 = select_ln48_2_fu_797_p3[0:0];
assign trunc_ln48_3_fu_865_p1 = select_ln48_3_fu_857_p3[0:0];
assign trunc_ln48_fu_683_p1 = select_ln48_fu_676_p3[0:0];
assign trunc_ln51_1_fu_778_p1 = ap_phi_reg_pp0_iter0_q_in_5_reg_363[7:0];
assign trunc_ln51_2_fu_838_p1 = ap_phi_reg_pp0_iter0_q_in_7_reg_377[7:0];
assign trunc_ln51_fu_718_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_351[7:0];
assign zext_ln16_1_fu_709_p1 = q_in_11_fu_703_p2;
assign zext_ln16_2_fu_512_p1 = lshr_ln16_2_fu_502_p4;
assign zext_ln16_3_fu_769_p1 = q_in_12_fu_764_p2;
assign zext_ln16_4_fu_829_p1 = q_in_13_fu_824_p2;
assign zext_ln16_5_fu_638_p1 = lshr_ln16_3_reg_1027;
assign zext_ln16_6_fu_884_p1 = q_in_14_fu_879_p2;
assign zext_ln16_fu_468_p1 = lshr_ln16_1_fu_458_p4;
assign zext_ln18_cast_fu_432_p1 = zext_ln18;
assign zext_ln39_fu_538_p1 = lshr_ln3_fu_528_p4;
assign zext_ln41_1_fu_722_p1 = tmp_dst_1_reg_1041;
assign zext_ln41_2_fu_782_p1 = tmp_dst_2_reg_1048;
assign zext_ln41_3_fu_842_p1 = tmp_dst_3_reg_1081;
assign zext_ln41_fu_604_p1 = tmp_dst_reg_988;
assign zext_ln47_1_fu_773_p1 = grp_fu_418_p2;
assign zext_ln47_2_fu_833_p1 = grp_fu_418_p2;
assign zext_ln47_3_fu_908_p1 = grp_fu_418_p2;
assign zext_ln47_fu_713_p1 = grp_fu_418_p2;
assign zext_ln48_1_fu_758_p1 = lshr_ln48_1_fu_748_p4;
assign zext_ln48_2_fu_818_p1 = lshr_ln48_2_fu_808_p4;
assign zext_ln48_3_fu_898_p1 = lshr_ln48_3_reg_1186;
assign zext_ln48_fu_697_p1 = lshr_ln2_fu_687_p4;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_948[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
