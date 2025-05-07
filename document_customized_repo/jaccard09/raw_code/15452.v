module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,q_in,tmp_end,level_address0,level_ce0,level_we0,level_d0,level_q0,zext_ln18,queue_7_address0,queue_7_ce0,queue_7_we0,queue_7_d0,queue_6_address0,queue_6_ce0,queue_6_we0,queue_6_d0,queue_5_address0,queue_5_ce0,queue_5_we0,queue_5_d0,queue_4_address0,queue_4_ce0,queue_4_we0,queue_4_d0,queue_3_address0,queue_3_ce0,queue_3_we0,queue_3_d0,queue_2_address0,queue_2_ce0,queue_2_we0,queue_2_d0,queue_1_address0,queue_1_ce0,queue_1_we0,queue_1_d0,queue_address0,queue_ce0,queue_we0,queue_d0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0,q_in_1_out,q_in_1_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
input  [63:0] q_in;
input  [63:0] tmp_end;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [7:0] zext_ln18;
output  [4:0] queue_7_address0;
output   queue_7_ce0;
output   queue_7_we0;
output  [7:0] queue_7_d0;
output  [4:0] queue_6_address0;
output   queue_6_ce0;
output   queue_6_we0;
output  [7:0] queue_6_d0;
output  [4:0] queue_5_address0;
output   queue_5_ce0;
output   queue_5_we0;
output  [7:0] queue_5_d0;
output  [4:0] queue_4_address0;
output   queue_4_ce0;
output   queue_4_we0;
output  [7:0] queue_4_d0;
output  [4:0] queue_3_address0;
output   queue_3_ce0;
output   queue_3_we0;
output  [7:0] queue_3_d0;
output  [4:0] queue_2_address0;
output   queue_2_ce0;
output   queue_2_we0;
output  [7:0] queue_2_d0;
output  [4:0] queue_1_address0;
output   queue_1_ce0;
output   queue_1_we0;
output  [7:0] queue_1_d0;
output  [4:0] queue_address0;
output   queue_ce0;
output   queue_we0;
output  [7:0] queue_d0;
output  [8:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [8:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [8:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [8:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [8:0] edges_4_address0;
output   edges_4_ce0;
input  [63:0] edges_4_q0;
output  [8:0] edges_5_address0;
output   edges_5_ce0;
input  [63:0] edges_5_q0;
output  [8:0] edges_6_address0;
output   edges_6_ce0;
input  [63:0] edges_6_q0;
output  [8:0] edges_7_address0;
output   edges_7_ce0;
input  [63:0] edges_7_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
input  [63:0] level_counts_q0;
output  [63:0] q_in_1_out;
output   q_in_1_out_ap_vld;
reg ap_idle;
reg q_in_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] icmp_ln39_reg_1036;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [63:0] q_in_3_reg_541;
reg   [7:0] reg_572;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] reg_576;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_cast_fu_594_p1;
reg   [63:0] zext_ln18_cast_reg_1024;
reg   [63:0] e_4_reg_1029;
wire   [0:0] icmp_ln39_fu_619_p2;
reg   [7:0] level_addr_reg_1040;
wire   [0:0] icmp_ln40_fu_647_p2;
reg   [0:0] icmp_ln40_reg_1045;
wire   [2:0] trunc_ln39_1_fu_663_p1;
reg   [2:0] trunc_ln39_1_reg_1089;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [7:0] tmp_dst_fu_698_p19;
reg   [7:0] tmp_dst_reg_1094;
wire   [0:0] icmp_ln40_1_fu_765_p2;
reg   [0:0] icmp_ln40_1_reg_1107;
reg   [0:0] icmp_ln40_1_reg_1107_pp0_iter1_reg;
reg   [7:0] level_addr_1_reg_1151;
wire   [7:0] tmp_dst_1_fu_806_p19;
reg   [7:0] tmp_dst_1_reg_1156;
reg   [63:0] q_in_6_reg_1169;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] grp_fu_566_p2;
reg   [0:0] icmp_ln44_reg_1176;
wire   [0:0] icmp_ln48_fu_848_p2;
reg   [0:0] icmp_ln48_reg_1180;
wire   [7:0] trunc_ln39_fu_854_p1;
reg   [7:0] trunc_ln39_reg_1185;
reg   [3:0] level_counts_addr_reg_1193;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] zext_ln16_1_fu_906_p1;
wire   [7:0] trunc_ln51_fu_910_p1;
reg   [7:0] trunc_ln51_reg_1203;
reg   [7:0] level_addr_2_reg_1209;
reg   [0:0] icmp_ln44_1_reg_1214;
wire   [2:0] trunc_ln48_1_fu_937_p1;
reg   [2:0] trunc_ln48_1_reg_1218;
reg   [4:0] lshr_ln48_1_reg_1222;
wire   [63:0] zext_ln16_2_fu_977_p1;
reg   [3:0] level_counts_addr_1_reg_1232;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [63:0] ap_phi_reg_pp0_iter0_q_in_3_reg_541;
wire   [63:0] ap_phi_reg_pp0_iter0_q_in_2_reg_553;
reg   [63:0] ap_phi_reg_pp0_iter1_q_in_2_reg_553;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_fu_635_p1;
wire   [63:0] zext_ln20_fu_753_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln41_fu_770_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln48_fu_884_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln47_fu_896_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln41_1_fu_914_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln48_1_fu_961_p1;
wire   [63:0] zext_ln47_1_fu_981_p1;
wire    ap_block_pp0_stage4;
reg   [63:0] e_1_fu_120;
wire   [63:0] e_6_fu_951_p2;
wire    ap_loop_init;
reg   [7:0] i_fu_124;
wire   [7:0] i_3_fu_652_p2;
reg   [63:0] q_in_1_fu_128;
reg    edges_0_ce0_local;
reg   [8:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [8:0] edges_1_address0_local;
reg    edges_2_ce0_local;
reg   [8:0] edges_2_address0_local;
reg    edges_3_ce0_local;
reg   [8:0] edges_3_address0_local;
reg    edges_4_ce0_local;
reg   [8:0] edges_4_address0_local;
reg    edges_5_ce0_local;
reg   [8:0] edges_5_address0_local;
reg    edges_6_ce0_local;
reg   [8:0] edges_6_address0_local;
reg    edges_7_ce0_local;
reg   [8:0] edges_7_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [7:0] grp_fu_580_p2;
wire    ap_block_pp0_stage0;
reg    queue_6_we0_local;
wire   [2:0] trunc_ln48_fu_870_p1;
reg   [7:0] queue_6_d0_local;
reg    queue_6_ce0_local;
reg   [4:0] queue_6_address0_local;
reg    queue_5_we0_local;
reg   [7:0] queue_5_d0_local;
reg    queue_5_ce0_local;
reg   [4:0] queue_5_address0_local;
reg    queue_4_we0_local;
reg   [7:0] queue_4_d0_local;
reg    queue_4_ce0_local;
reg   [4:0] queue_4_address0_local;
reg    queue_3_we0_local;
reg   [7:0] queue_3_d0_local;
reg    queue_3_ce0_local;
reg   [4:0] queue_3_address0_local;
reg    queue_2_we0_local;
reg   [7:0] queue_2_d0_local;
reg    queue_2_ce0_local;
reg   [4:0] queue_2_address0_local;
reg    queue_1_we0_local;
reg   [7:0] queue_1_d0_local;
reg    queue_1_ce0_local;
reg   [4:0] queue_1_address0_local;
reg    queue_we0_local;
reg   [7:0] queue_d0_local;
reg    queue_ce0_local;
reg   [4:0] queue_address0_local;
reg    queue_7_we0_local;
reg   [7:0] queue_7_d0_local;
reg    queue_7_ce0_local;
reg   [4:0] queue_7_address0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    level_counts_we0_local;
wire   [63:0] grp_fu_587_p2;
wire   [8:0] lshr_ln16_1_fu_625_p4;
wire   [7:0] tmp_dst_fu_698_p2;
wire   [7:0] tmp_dst_fu_698_p4;
wire   [7:0] tmp_dst_fu_698_p6;
wire   [7:0] tmp_dst_fu_698_p8;
wire   [7:0] tmp_dst_fu_698_p10;
wire   [7:0] tmp_dst_fu_698_p12;
wire   [7:0] tmp_dst_fu_698_p14;
wire   [7:0] tmp_dst_fu_698_p16;
wire   [7:0] tmp_dst_fu_698_p17;
wire   [2:0] tmp_dst_fu_698_p18;
wire   [63:0] e_5_fu_738_p2;
wire   [8:0] lshr_ln3_fu_743_p4;
wire   [7:0] tmp_dst_1_fu_806_p2;
wire   [7:0] tmp_dst_1_fu_806_p4;
wire   [7:0] tmp_dst_1_fu_806_p6;
wire   [7:0] tmp_dst_1_fu_806_p8;
wire   [7:0] tmp_dst_1_fu_806_p10;
wire   [7:0] tmp_dst_1_fu_806_p12;
wire   [7:0] tmp_dst_1_fu_806_p14;
wire   [7:0] tmp_dst_1_fu_806_p16;
wire   [7:0] tmp_dst_1_fu_806_p17;
wire   [7:0] add_ln48_fu_857_p2;
wire   [7:0] select_ln48_fu_863_p3;
wire   [4:0] lshr_ln2_fu_874_p4;
wire   [7:0] q_in_7_fu_901_p2;
wire   [0:0] icmp_ln48_2_fu_918_p2;
wire   [7:0] add_ln48_2_fu_924_p2;
wire   [7:0] select_ln48_1_fu_929_p3;
wire   [7:0] q_in_8_fu_972_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_dst_fu_698_p1;
wire   [2:0] tmp_dst_fu_698_p3;
wire   [2:0] tmp_dst_fu_698_p5;
wire   [2:0] tmp_dst_fu_698_p7;
wire  signed [2:0] tmp_dst_fu_698_p9;
wire  signed [2:0] tmp_dst_fu_698_p11;
wire  signed [2:0] tmp_dst_fu_698_p13;
wire  signed [2:0] tmp_dst_fu_698_p15;
wire  signed [2:0] tmp_dst_1_fu_806_p1;
wire   [2:0] tmp_dst_1_fu_806_p3;
wire   [2:0] tmp_dst_1_fu_806_p5;
wire   [2:0] tmp_dst_1_fu_806_p7;
wire   [2:0] tmp_dst_1_fu_806_p9;
wire  signed [2:0] tmp_dst_1_fu_806_p11;
wire  signed [2:0] tmp_dst_1_fu_806_p13;
wire  signed [2:0] tmp_dst_1_fu_806_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 e_1_fu_120 = 64'd0;
#0 i_fu_124 = 8'd0;
#0 q_in_1_fu_128 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U1(.din0(tmp_dst_fu_698_p2),.din1(tmp_dst_fu_698_p4),.din2(tmp_dst_fu_698_p6),.din3(tmp_dst_fu_698_p8),.din4(tmp_dst_fu_698_p10),.din5(tmp_dst_fu_698_p12),.din6(tmp_dst_fu_698_p14),.din7(tmp_dst_fu_698_p16),.def(tmp_dst_fu_698_p17),.sel(tmp_dst_fu_698_p18),.dout(tmp_dst_fu_698_p19));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 8 ),.CASE1( 3'h0 ),.din1_WIDTH( 8 ),.CASE2( 3'h1 ),.din2_WIDTH( 8 ),.CASE3( 3'h2 ),.din3_WIDTH( 8 ),.CASE4( 3'h3 ),.din4_WIDTH( 8 ),.CASE5( 3'h4 ),.din5_WIDTH( 8 ),.CASE6( 3'h5 ),.din6_WIDTH( 8 ),.CASE7( 3'h6 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U2(.din0(tmp_dst_1_fu_806_p2),.din1(tmp_dst_1_fu_806_p4),.din2(tmp_dst_1_fu_806_p6),.din3(tmp_dst_1_fu_806_p8),.din4(tmp_dst_1_fu_806_p10),.din5(tmp_dst_1_fu_806_p12),.din6(tmp_dst_1_fu_806_p14),.din7(tmp_dst_1_fu_806_p16),.def(tmp_dst_1_fu_806_p17),.sel(trunc_ln39_1_reg_1089),.dout(tmp_dst_1_fu_806_p19));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage4)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (grp_fu_566_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_541 <= q_in_1_fu_128;
    end else if (((icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_phi_reg_pp0_iter0_q_in_3_reg_541 <= zext_ln16_1_fu_906_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (grp_fu_566_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_553 <= q_in_3_reg_541;
    end else if (((icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln40_1_reg_1107 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_553 <= ap_phi_reg_pp0_iter0_q_in_3_reg_541;
    end else if (((icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_553 <= zext_ln16_2_fu_977_p1;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_phi_reg_pp0_iter1_q_in_2_reg_553 <= ap_phi_reg_pp0_iter0_q_in_2_reg_553;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_1_fu_120 <= e;
        end else if (((icmp_ln39_reg_1036 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_1_fu_120 <= e_6_fu_951_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_124 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln39_fu_619_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_124 <= i_3_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        q_in_1_fu_128 <= q_in;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        q_in_1_fu_128 <= ap_phi_reg_pp0_iter1_q_in_2_reg_553;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_4_reg_1029 <= e_1_fu_120;
        icmp_ln39_reg_1036 <= icmp_ln39_fu_619_p2;
        icmp_ln40_reg_1045 <= icmp_ln40_fu_647_p2;
        level_addr_reg_1040 <= zext_ln18_cast_reg_1024;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln40_1_reg_1107 <= icmp_ln40_1_fu_765_p2;
        icmp_ln40_1_reg_1107_pp0_iter1_reg <= icmp_ln40_1_reg_1107;
        level_counts_addr_1_reg_1232 <= zext_ln47_1_fu_981_p1;
        tmp_dst_reg_1094 <= tmp_dst_fu_698_p19;
        trunc_ln39_1_reg_1089 <= trunc_ln39_1_fu_663_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln44_1_reg_1214 <= grp_fu_566_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln44_reg_1176 <= grp_fu_566_p2;
        q_in_6_reg_1169 <= q_in_1_fu_128;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln48_reg_1180 <= icmp_ln48_fu_848_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_1_reg_1151 <= zext_ln41_fu_770_p1;
        tmp_dst_1_reg_1156 <= tmp_dst_1_fu_806_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_addr_2_reg_1209 <= zext_ln41_1_fu_914_p1;
        trunc_ln51_reg_1203 <= trunc_ln51_fu_910_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_addr_reg_1193 <= zext_ln47_fu_896_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln48_1_reg_1222 <= {{select_ln48_1_fu_929_p3[7:3]}};
        trunc_ln48_1_reg_1218 <= trunc_ln48_1_fu_937_p1;
        zext_ln18_cast_reg_1024[7 : 0] <= zext_ln18_cast_fu_594_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        q_in_3_reg_541 <= ap_phi_reg_pp0_iter0_q_in_3_reg_541;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_572 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_576 <= level_counts_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln39_reg_1185 <= trunc_ln39_fu_854_p1;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_1036 == 1'd0) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_0_address0_local = zext_ln20_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln16_fu_635_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_1_address0_local = zext_ln20_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln16_fu_635_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_2_address0_local = zext_ln20_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_2_address0_local = zext_ln16_fu_635_p1;
        end else begin
            edges_2_address0_local = 'bx;
        end
    end else begin
        edges_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_3_address0_local = zext_ln20_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_3_address0_local = zext_ln16_fu_635_p1;
        end else begin
            edges_3_address0_local = 'bx;
        end
    end else begin
        edges_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_4_address0_local = zext_ln20_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_4_address0_local = zext_ln16_fu_635_p1;
        end else begin
            edges_4_address0_local = 'bx;
        end
    end else begin
        edges_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_4_ce0_local = 1'b1;
    end else begin
        edges_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_5_address0_local = zext_ln20_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_5_address0_local = zext_ln16_fu_635_p1;
        end else begin
            edges_5_address0_local = 'bx;
        end
    end else begin
        edges_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_5_ce0_local = 1'b1;
    end else begin
        edges_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_6_address0_local = zext_ln20_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_6_address0_local = zext_ln16_fu_635_p1;
        end else begin
            edges_6_address0_local = 'bx;
        end
    end else begin
        edges_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_6_ce0_local = 1'b1;
    end else begin
        edges_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_7_address0_local = zext_ln20_fu_753_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_7_address0_local = zext_ln16_fu_635_p1;
        end else begin
            edges_7_address0_local = 'bx;
        end
    end else begin
        edges_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_7_ce0_local = 1'b1;
    end else begin
        edges_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_2_reg_1209;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        level_address0_local = zext_ln41_1_fu_914_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = level_addr_1_reg_1151;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        level_address0_local = level_addr_reg_1040;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln41_fu_770_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        level_counts_address0_local = level_counts_addr_1_reg_1232;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_counts_address0_local = zext_ln47_1_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_counts_address0_local = level_counts_addr_reg_1193;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_counts_address0_local = zext_ln47_fu_896_p1;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage6_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln39_reg_1036 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        q_in_1_out_ap_vld = 1'b1;
    end else begin
        q_in_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_address0_local = zext_ln48_1_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_address0_local = zext_ln48_fu_884_p1;
    end else begin
        queue_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_1_d0_local = tmp_dst_1_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_1_d0_local = tmp_dst_reg_1094;
    end else begin
        queue_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_fu_870_p1 == 3'd1) & (icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_1_reg_1218 == 3'd1) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_1_we0_local = 1'b1;
    end else begin
        queue_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_address0_local = zext_ln48_1_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_2_address0_local = zext_ln48_fu_884_p1;
    end else begin
        queue_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_2_ce0_local = 1'b1;
    end else begin
        queue_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_2_d0_local = tmp_dst_1_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_2_d0_local = tmp_dst_reg_1094;
    end else begin
        queue_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_fu_870_p1 == 3'd2) & (icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_1_reg_1218 == 3'd2) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_2_we0_local = 1'b1;
    end else begin
        queue_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_address0_local = zext_ln48_1_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_3_address0_local = zext_ln48_fu_884_p1;
    end else begin
        queue_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_3_ce0_local = 1'b1;
    end else begin
        queue_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_3_d0_local = tmp_dst_1_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_3_d0_local = tmp_dst_reg_1094;
    end else begin
        queue_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_fu_870_p1 == 3'd3) & (icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_1_reg_1218 == 3'd3) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_3_we0_local = 1'b1;
    end else begin
        queue_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_4_address0_local = zext_ln48_1_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_4_address0_local = zext_ln48_fu_884_p1;
    end else begin
        queue_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_4_ce0_local = 1'b1;
    end else begin
        queue_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_4_d0_local = tmp_dst_1_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_4_d0_local = tmp_dst_reg_1094;
    end else begin
        queue_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_fu_870_p1 == 3'd4) & (icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_1_reg_1218 == 3'd4) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_4_we0_local = 1'b1;
    end else begin
        queue_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_5_address0_local = zext_ln48_1_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_5_address0_local = zext_ln48_fu_884_p1;
    end else begin
        queue_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_5_ce0_local = 1'b1;
    end else begin
        queue_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_5_d0_local = tmp_dst_1_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_5_d0_local = tmp_dst_reg_1094;
    end else begin
        queue_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_fu_870_p1 == 3'd5) & (icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_1_reg_1218 == 3'd5) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_5_we0_local = 1'b1;
    end else begin
        queue_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_6_address0_local = zext_ln48_1_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_6_address0_local = zext_ln48_fu_884_p1;
    end else begin
        queue_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_6_ce0_local = 1'b1;
    end else begin
        queue_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_6_d0_local = tmp_dst_1_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_6_d0_local = tmp_dst_reg_1094;
    end else begin
        queue_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_fu_870_p1 == 3'd6) & (icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_1_reg_1218 == 3'd6) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_6_we0_local = 1'b1;
    end else begin
        queue_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_7_address0_local = zext_ln48_1_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_7_address0_local = zext_ln48_fu_884_p1;
    end else begin
        queue_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_7_ce0_local = 1'b1;
    end else begin
        queue_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_7_d0_local = tmp_dst_1_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_7_d0_local = tmp_dst_reg_1094;
    end else begin
        queue_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_fu_870_p1 == 3'd7) & (icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_1_reg_1218 == 3'd7) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        queue_7_we0_local = 1'b1;
    end else begin
        queue_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_address0_local = zext_ln48_1_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_address0_local = zext_ln48_fu_884_p1;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        queue_d0_local = tmp_dst_1_reg_1156;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        queue_d0_local = tmp_dst_reg_1094;
    end else begin
        queue_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((trunc_ln48_fu_870_p1 == 3'd0) & (icmp_ln39_reg_1036 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (icmp_ln44_reg_1176 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln40_reg_1045 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln48_1_reg_1218 == 3'd0) & (icmp_ln44_1_reg_1214 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln40_1_reg_1107 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage4)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln48_2_fu_924_p2 = ($signed(trunc_ln51_reg_1203) + $signed(8'd255));
assign add_ln48_fu_857_p2 = ($signed(trunc_ln39_fu_854_p1) + $signed(8'd255));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_phi_reg_pp0_iter0_q_in_2_reg_553 = 'bx;
assign ap_ready = ap_ready_sig;
assign e_5_fu_738_p2 = (e_4_reg_1029 + 64'd1);
assign e_6_fu_951_p2 = (e_4_reg_1029 + 64'd2);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_2_address0 = edges_2_address0_local;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_3_address0 = edges_3_address0_local;
assign edges_3_ce0 = edges_3_ce0_local;
assign edges_4_address0 = edges_4_address0_local;
assign edges_4_ce0 = edges_4_ce0_local;
assign edges_5_address0 = edges_5_address0_local;
assign edges_5_ce0 = edges_5_ce0_local;
assign edges_6_address0 = edges_6_address0_local;
assign edges_6_ce0 = edges_6_ce0_local;
assign edges_7_address0 = edges_7_address0_local;
assign edges_7_ce0 = edges_7_ce0_local;
assign grp_fu_566_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_580_p2 = (reg_572 + 8'd1);
assign grp_fu_587_p2 = (reg_576 + 64'd1);
assign i_3_fu_652_p2 = (i_fu_124 + 8'd2);
assign icmp_ln39_fu_619_p2 = ((i_fu_124 < 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln40_1_fu_765_p2 = ((e_5_fu_738_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_647_p2 = ((e_1_fu_120 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln48_2_fu_918_p2 = ((q_in_3_reg_541 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_848_p2 = ((q_in_1_fu_128 == 64'd0) ? 1'b1 : 1'b0);
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = grp_fu_587_p2;
assign level_counts_we0 = level_counts_we0_local;
assign level_d0 = grp_fu_580_p2;
assign level_we0 = level_we0_local;
assign lshr_ln16_1_fu_625_p4 = {{e_1_fu_120[11:3]}};
assign lshr_ln2_fu_874_p4 = {{select_ln48_fu_863_p3[7:3]}};
assign lshr_ln3_fu_743_p4 = {{e_5_fu_738_p2[11:3]}};
assign q_in_1_out = q_in_1_fu_128;
assign q_in_7_fu_901_p2 = (trunc_ln39_reg_1185 + 8'd1);
assign q_in_8_fu_972_p2 = (trunc_ln51_reg_1203 + 8'd1);
assign queue_1_address0 = queue_1_address0_local;
assign queue_1_ce0 = queue_1_ce0_local;
assign queue_1_d0 = queue_1_d0_local;
assign queue_1_we0 = queue_1_we0_local;
assign queue_2_address0 = queue_2_address0_local;
assign queue_2_ce0 = queue_2_ce0_local;
assign queue_2_d0 = queue_2_d0_local;
assign queue_2_we0 = queue_2_we0_local;
assign queue_3_address0 = queue_3_address0_local;
assign queue_3_ce0 = queue_3_ce0_local;
assign queue_3_d0 = queue_3_d0_local;
assign queue_3_we0 = queue_3_we0_local;
assign queue_4_address0 = queue_4_address0_local;
assign queue_4_ce0 = queue_4_ce0_local;
assign queue_4_d0 = queue_4_d0_local;
assign queue_4_we0 = queue_4_we0_local;
assign queue_5_address0 = queue_5_address0_local;
assign queue_5_ce0 = queue_5_ce0_local;
assign queue_5_d0 = queue_5_d0_local;
assign queue_5_we0 = queue_5_we0_local;
assign queue_6_address0 = queue_6_address0_local;
assign queue_6_ce0 = queue_6_ce0_local;
assign queue_6_d0 = queue_6_d0_local;
assign queue_6_we0 = queue_6_we0_local;
assign queue_7_address0 = queue_7_address0_local;
assign queue_7_ce0 = queue_7_ce0_local;
assign queue_7_d0 = queue_7_d0_local;
assign queue_7_we0 = queue_7_we0_local;
assign queue_address0 = queue_address0_local;
assign queue_ce0 = queue_ce0_local;
assign queue_d0 = queue_d0_local;
assign queue_we0 = queue_we0_local;
assign select_ln48_1_fu_929_p3 = ((icmp_ln48_2_fu_918_p2[0:0] == 1'b1) ? 8'd255 : add_ln48_2_fu_924_p2);
assign select_ln48_fu_863_p3 = ((icmp_ln48_reg_1180[0:0] == 1'b1) ? 8'd255 : add_ln48_fu_857_p2);
assign tmp_dst_1_fu_806_p10 = edges_4_q0[7:0];
assign tmp_dst_1_fu_806_p12 = edges_5_q0[7:0];
assign tmp_dst_1_fu_806_p14 = edges_6_q0[7:0];
assign tmp_dst_1_fu_806_p16 = edges_7_q0[7:0];
assign tmp_dst_1_fu_806_p17 = 'bx;
assign tmp_dst_1_fu_806_p2 = edges_0_q0[7:0];
assign tmp_dst_1_fu_806_p4 = edges_1_q0[7:0];
assign tmp_dst_1_fu_806_p6 = edges_2_q0[7:0];
assign tmp_dst_1_fu_806_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_698_p10 = edges_4_q0[7:0];
assign tmp_dst_fu_698_p12 = edges_5_q0[7:0];
assign tmp_dst_fu_698_p14 = edges_6_q0[7:0];
assign tmp_dst_fu_698_p16 = edges_7_q0[7:0];
assign tmp_dst_fu_698_p17 = 'bx;
assign tmp_dst_fu_698_p18 = e_4_reg_1029[2:0];
assign tmp_dst_fu_698_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_698_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_698_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_698_p8 = edges_3_q0[7:0];
assign trunc_ln39_1_fu_663_p1 = e_4_reg_1029[2:0];
assign trunc_ln39_fu_854_p1 = q_in_6_reg_1169[7:0];
assign trunc_ln48_1_fu_937_p1 = select_ln48_1_fu_929_p3[2:0];
assign trunc_ln48_fu_870_p1 = select_ln48_fu_863_p3[2:0];
assign trunc_ln51_fu_910_p1 = ap_phi_reg_pp0_iter0_q_in_3_reg_541[7:0];
assign zext_ln16_1_fu_906_p1 = q_in_7_fu_901_p2;
assign zext_ln16_2_fu_977_p1 = q_in_8_fu_972_p2;
assign zext_ln16_fu_635_p1 = lshr_ln16_1_fu_625_p4;
assign zext_ln18_cast_fu_594_p1 = zext_ln18;
assign zext_ln20_fu_753_p1 = lshr_ln3_fu_743_p4;
assign zext_ln41_1_fu_914_p1 = tmp_dst_1_reg_1156;
assign zext_ln41_fu_770_p1 = tmp_dst_reg_1094;
assign zext_ln47_1_fu_981_p1 = grp_fu_580_p2;
assign zext_ln47_fu_896_p1 = grp_fu_580_p2;
assign zext_ln48_1_fu_961_p1 = lshr_ln48_1_reg_1222;
assign zext_ln48_fu_884_p1 = lshr_ln2_fu_874_p4;
always @ (posedge ap_clk) begin
    zext_ln18_cast_reg_1024[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 