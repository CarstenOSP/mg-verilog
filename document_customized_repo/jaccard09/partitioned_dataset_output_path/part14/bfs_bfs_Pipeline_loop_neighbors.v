
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next11_cast4,cnt_1_out,cnt_1_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
input  [63:0] cnt;
input  [63:0] tmp_end;
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
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next11_cast4;
output  [63:0] cnt_1_out;
output   cnt_1_out_ap_vld;
reg ap_idle;
reg cnt_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln28_reg_684;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next11_cast4_cast_fu_359_p1;
reg   [7:0] indvars_iv_next11_cast4_cast_reg_672;
reg   [63:0] e_4_reg_677;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln28_fu_384_p2;
reg   [0:0] icmp_ln28_reg_684_pp0_iter1_reg;
wire   [0:0] icmp_ln29_fu_412_p2;
reg   [0:0] icmp_ln29_reg_688;
wire   [2:0] trunc_ln28_fu_428_p1;
reg   [2:0] trunc_ln28_reg_732;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [7:0] tmp_dst_fu_463_p19;
reg   [7:0] tmp_dst_reg_737;
wire   [0:0] icmp_ln29_1_fu_530_p2;
reg   [0:0] icmp_ln29_1_reg_742;
reg   [7:0] level_addr_reg_786;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_571_p19;
reg   [7:0] tmp_dst_1_reg_791;
wire   [0:0] grp_fu_353_p2;
reg   [0:0] icmp_ln34_reg_796;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] cnt_4_fu_614_p2;
reg   [7:0] level_addr_1_reg_811;
reg   [0:0] icmp_ln34_1_reg_816;
wire   [63:0] cnt_5_fu_634_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_3_reg_328;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_3_reg_328;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_6_reg_340;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_6_reg_340;
wire   [63:0] zext_ln14_fu_400_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_fu_518_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln31_fu_535_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln31_1_fu_620_p1;
wire    ap_block_pp0_stage0;
reg   [7:0] i_fu_96;
wire   [7:0] i_3_fu_417_p2;
wire    ap_loop_init;
reg   [63:0] e_1_fu_100;
wire   [63:0] e_6_fu_624_p2;
reg   [63:0] cnt_1_fu_104;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
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
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage4;
wire   [8:0] lshr_ln1_fu_390_p4;
wire   [7:0] tmp_dst_fu_463_p2;
wire   [7:0] tmp_dst_fu_463_p4;
wire   [7:0] tmp_dst_fu_463_p6;
wire   [7:0] tmp_dst_fu_463_p8;
wire   [7:0] tmp_dst_fu_463_p10;
wire   [7:0] tmp_dst_fu_463_p12;
wire   [7:0] tmp_dst_fu_463_p14;
wire   [7:0] tmp_dst_fu_463_p16;
wire   [7:0] tmp_dst_fu_463_p17;
wire   [2:0] tmp_dst_fu_463_p18;
wire   [63:0] e_5_fu_503_p2;
wire   [8:0] lshr_ln2_fu_508_p4;
wire   [7:0] tmp_dst_1_fu_571_p2;
wire   [7:0] tmp_dst_1_fu_571_p4;
wire   [7:0] tmp_dst_1_fu_571_p6;
wire   [7:0] tmp_dst_1_fu_571_p8;
wire   [7:0] tmp_dst_1_fu_571_p10;
wire   [7:0] tmp_dst_1_fu_571_p12;
wire   [7:0] tmp_dst_1_fu_571_p14;
wire   [7:0] tmp_dst_1_fu_571_p16;
wire   [7:0] tmp_dst_1_fu_571_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_dst_fu_463_p1;
wire   [2:0] tmp_dst_fu_463_p3;
wire   [2:0] tmp_dst_fu_463_p5;
wire   [2:0] tmp_dst_fu_463_p7;
wire  signed [2:0] tmp_dst_fu_463_p9;
wire  signed [2:0] tmp_dst_fu_463_p11;
wire  signed [2:0] tmp_dst_fu_463_p13;
wire  signed [2:0] tmp_dst_fu_463_p15;
wire  signed [2:0] tmp_dst_1_fu_571_p1;
wire   [2:0] tmp_dst_1_fu_571_p3;
wire   [2:0] tmp_dst_1_fu_571_p5;
wire   [2:0] tmp_dst_1_fu_571_p7;
wire   [2:0] tmp_dst_1_fu_571_p9;
wire  signed [2:0] tmp_dst_1_fu_571_p11;
wire  signed [2:0] tmp_dst_1_fu_571_p13;
wire  signed [2:0] tmp_dst_1_fu_571_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_96 = 8'd0;
#0 e_1_fu_100 = 64'd0;
#0 cnt_1_fu_104 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 8 ),.CASE1( 3'h1 ),.din1_WIDTH( 8 ),.CASE2( 3'h2 ),.din2_WIDTH( 8 ),.CASE3( 3'h3 ),.din3_WIDTH( 8 ),.CASE4( 3'h4 ),.din4_WIDTH( 8 ),.CASE5( 3'h5 ),.din5_WIDTH( 8 ),.CASE6( 3'h6 ),.din6_WIDTH( 8 ),.CASE7( 3'h7 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U1(.din0(tmp_dst_fu_463_p2),.din1(tmp_dst_fu_463_p4),.din2(tmp_dst_fu_463_p6),.din3(tmp_dst_fu_463_p8),.din4(tmp_dst_fu_463_p10),.din5(tmp_dst_fu_463_p12),.din6(tmp_dst_fu_463_p14),.din7(tmp_dst_fu_463_p16),.def(tmp_dst_fu_463_p17),.sel(tmp_dst_fu_463_p18),.dout(tmp_dst_fu_463_p19));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_17_3_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 8 ),.CASE1( 3'h0 ),.din1_WIDTH( 8 ),.CASE2( 3'h1 ),.din2_WIDTH( 8 ),.CASE3( 3'h2 ),.din3_WIDTH( 8 ),.CASE4( 3'h3 ),.din4_WIDTH( 8 ),.CASE5( 3'h4 ),.din5_WIDTH( 8 ),.CASE6( 3'h5 ),.din6_WIDTH( 8 ),.CASE7( 3'h6 ),.din7_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 3 ),.dout_WIDTH( 8 ))
sparsemux_17_3_8_1_1_U2(.din0(tmp_dst_1_fu_571_p2),.din1(tmp_dst_1_fu_571_p4),.din2(tmp_dst_1_fu_571_p6),.din3(tmp_dst_1_fu_571_p8),.din4(tmp_dst_1_fu_571_p10),.din5(tmp_dst_1_fu_571_p12),.din6(tmp_dst_1_fu_571_p14),.din7(tmp_dst_1_fu_571_p16),.def(tmp_dst_1_fu_571_p17),.sel(trunc_ln28_reg_732),.dout(tmp_dst_1_fu_571_p19));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_684 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_reg_796 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_reg_688 == 1'd1)) | ((icmp_ln28_reg_684 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_reg_688 == 1'd0)))) begin
        ap_phi_reg_pp0_iter1_cnt_3_reg_328 <= cnt_1_fu_104;
    end else if (((icmp_ln28_reg_684 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_reg_796 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_reg_688 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_3_reg_328 <= cnt_4_fu_614_p2;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_phi_reg_pp0_iter1_cnt_3_reg_328 <= ap_phi_reg_pp0_iter0_cnt_3_reg_328;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_684 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_353_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln29_1_reg_742 == 1'd1)) | ((icmp_ln28_reg_684 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln29_1_reg_742 == 1'd0)))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_340 <= ap_phi_reg_pp0_iter1_cnt_3_reg_328;
    end else if (((icmp_ln28_reg_684 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_353_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln29_1_reg_742 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_340 <= cnt_5_fu_634_p2;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_340 <= ap_phi_reg_pp0_iter0_cnt_6_reg_340;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_104 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_fu_104 <= ap_phi_reg_pp0_iter1_cnt_6_reg_340;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_1_fu_100 <= e;
        end else if (((icmp_ln28_reg_684 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_1_fu_100 <= e_6_fu_624_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_96 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln28_fu_384_p2 == 1'd1))) begin
        i_fu_96 <= i_3_fu_417_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_4_reg_677 <= e_1_fu_100;
        icmp_ln28_reg_684 <= icmp_ln28_fu_384_p2;
        icmp_ln28_reg_684_pp0_iter1_reg <= icmp_ln28_reg_684;
        icmp_ln29_reg_688 <= icmp_ln29_fu_412_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln29_1_reg_742 <= icmp_ln29_1_fu_530_p2;
        tmp_dst_reg_737 <= tmp_dst_fu_463_p19;
        trunc_ln28_reg_732 <= trunc_ln28_fu_428_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln34_1_reg_816 <= grp_fu_353_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln34_reg_796 <= grp_fu_353_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next11_cast4_cast_reg_672[3 : 0] <= indvars_iv_next11_cast4_cast_fu_359_p1[3 : 0];
        level_addr_1_reg_811 <= zext_ln31_1_fu_620_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_reg_786 <= zext_ln31_fu_535_p1;
        tmp_dst_1_reg_791 <= tmp_dst_1_fu_571_p19;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_684 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_out_ap_vld = 1'b1;
    end else begin
        cnt_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            edges_0_address0_local = zext_ln26_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln14_fu_400_p1;
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
            edges_1_address0_local = zext_ln26_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln14_fu_400_p1;
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
            edges_2_address0_local = zext_ln26_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_2_address0_local = zext_ln14_fu_400_p1;
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
            edges_3_address0_local = zext_ln26_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_3_address0_local = zext_ln14_fu_400_p1;
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
            edges_4_address0_local = zext_ln26_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_4_address0_local = zext_ln14_fu_400_p1;
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
            edges_5_address0_local = zext_ln26_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_5_address0_local = zext_ln14_fu_400_p1;
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
            edges_6_address0_local = zext_ln26_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_6_address0_local = zext_ln14_fu_400_p1;
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
            edges_7_address0_local = zext_ln26_fu_518_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_7_address0_local = zext_ln14_fu_400_p1;
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
        level_address0_local = level_addr_1_reg_811;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = zext_ln31_1_fu_620_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_reg_786;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln31_fu_535_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_684 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_796 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln29_reg_688 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_1_reg_816 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_reg_742 == 1'd1) & (icmp_ln28_reg_684_pp0_iter1_reg == 1'd1)))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_phi_reg_pp0_iter0_cnt_3_reg_328 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_6_reg_340 = 'bx;
assign ap_ready = ap_ready_sig;
assign cnt_1_out = cnt_1_fu_104;
assign cnt_4_fu_614_p2 = (cnt_1_fu_104 + 64'd1);
assign cnt_5_fu_634_p2 = (ap_phi_reg_pp0_iter1_cnt_3_reg_328 + 64'd1);
assign e_5_fu_503_p2 = (e_4_reg_677 + 64'd1);
assign e_6_fu_624_p2 = (e_4_reg_677 + 64'd2);
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
assign grp_fu_353_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign i_3_fu_417_p2 = (i_fu_96 + 8'd2);
assign icmp_ln28_fu_384_p2 = ((i_fu_96 < 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_530_p2 = ((e_5_fu_503_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_412_p2 = ((e_1_fu_100 < tmp_end) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast4_cast_fu_359_p1 = indvars_iv_next11_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next11_cast4_cast_reg_672;
assign level_we0 = level_we0_local;
assign lshr_ln1_fu_390_p4 = {{e_1_fu_100[11:3]}};
assign lshr_ln2_fu_508_p4 = {{e_5_fu_503_p2[11:3]}};
assign tmp_dst_1_fu_571_p10 = edges_4_q0[7:0];
assign tmp_dst_1_fu_571_p12 = edges_5_q0[7:0];
assign tmp_dst_1_fu_571_p14 = edges_6_q0[7:0];
assign tmp_dst_1_fu_571_p16 = edges_7_q0[7:0];
assign tmp_dst_1_fu_571_p17 = 'bx;
assign tmp_dst_1_fu_571_p2 = edges_0_q0[7:0];
assign tmp_dst_1_fu_571_p4 = edges_1_q0[7:0];
assign tmp_dst_1_fu_571_p6 = edges_2_q0[7:0];
assign tmp_dst_1_fu_571_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_463_p10 = edges_4_q0[7:0];
assign tmp_dst_fu_463_p12 = edges_5_q0[7:0];
assign tmp_dst_fu_463_p14 = edges_6_q0[7:0];
assign tmp_dst_fu_463_p16 = edges_7_q0[7:0];
assign tmp_dst_fu_463_p17 = 'bx;
assign tmp_dst_fu_463_p18 = e_4_reg_677[2:0];
assign tmp_dst_fu_463_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_463_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_463_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_463_p8 = edges_3_q0[7:0];
assign trunc_ln28_fu_428_p1 = e_4_reg_677[2:0];
assign zext_ln14_fu_400_p1 = lshr_ln1_fu_390_p4;
assign zext_ln26_fu_518_p1 = lshr_ln2_fu_508_p4;
assign zext_ln31_1_fu_620_p1 = tmp_dst_1_reg_791;
assign zext_ln31_fu_535_p1 = tmp_dst_reg_737;
always @ (posedge ap_clk) begin
    indvars_iv_next11_cast4_cast_reg_672[7:4] <= 4'b0000;
end
endmodule 
