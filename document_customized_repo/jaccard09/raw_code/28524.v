module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next11_cast4,cnt_6_out,cnt_6_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [9:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [9:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [9:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [9:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next11_cast4;
output  [63:0] cnt_6_out;
output   cnt_6_out_ap_vld;
reg ap_idle;
reg cnt_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln28_reg_873;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] cnt_6_reg_328;
reg   [7:0] reg_376;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next11_cast4_cast_fu_386_p1;
reg   [7:0] indvars_iv_next11_cast4_cast_reg_799;
reg   [63:0] e_6_reg_804;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln11_fu_408_p1;
reg   [1:0] trunc_ln11_reg_812;
wire   [0:0] icmp_ln29_fu_430_p2;
reg   [0:0] icmp_ln29_reg_820;
wire   [7:0] tmp_dst_fu_454_p11;
reg   [7:0] tmp_dst_reg_844;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln29_1_fu_500_p2;
reg   [0:0] icmp_ln29_1_reg_849;
wire   [0:0] icmp_ln28_fu_546_p2;
wire   [0:0] icmp_ln29_2_fu_552_p2;
reg   [0:0] icmp_ln29_2_reg_877;
reg   [9:0] lshr_ln14_2_reg_901;
wire   [0:0] icmp_ln29_3_fu_572_p2;
reg   [0:0] icmp_ln29_3_reg_906;
reg   [7:0] level_addr_reg_910;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_608_p11;
reg   [7:0] tmp_dst_1_reg_915;
wire   [7:0] tmp_dst_2_fu_647_p11;
reg   [7:0] tmp_dst_2_reg_920;
wire   [0:0] grp_fu_370_p2;
reg   [0:0] icmp_ln34_reg_945;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [7:0] tmp_dst_3_fu_693_p11;
reg   [7:0] tmp_dst_3_reg_949;
reg   [7:0] level_addr_1_reg_954;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] grp_fu_380_p2;
reg   [0:0] icmp_ln34_1_reg_959;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [7:0] level_addr_2_reg_963;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] cnt_11_fu_727_p2;
wire   [63:0] cnt_12_fu_733_p2;
wire    ap_block_pp0_stage11_11001;
reg   [0:0] icmp_ln34_2_reg_984;
wire   [63:0] cnt_13_fu_739_p2;
reg   [7:0] level_addr_3_reg_993;
reg   [0:0] icmp_ln34_3_reg_998;
wire   [63:0] cnt_14_fu_759_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage2_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_3_reg_316;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_6_reg_328;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_6_reg_328;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_8_reg_343;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_8_reg_343;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_10_reg_357;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_10_reg_357;
wire   [63:0] zext_ln14_fu_422_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_1_fu_492_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_fu_520_p1;
wire   [63:0] zext_ln31_fu_588_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_2_fu_670_p1;
wire   [63:0] zext_ln31_1_fu_716_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln31_2_fu_720_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln31_3_fu_745_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] i_fu_88;
wire   [31:0] i_4_fu_577_p2;
wire    ap_loop_init;
reg   [63:0] e_1_fu_92;
wire   [63:0] e_10_fu_749_p2;
reg   [63:0] cnt_1_fu_96;
wire    ap_block_pp0_stage10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    edges_0_ce0_local;
reg   [9:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [9:0] edges_1_address0_local;
reg    edges_2_ce0_local;
reg   [9:0] edges_2_address0_local;
reg    edges_3_ce0_local;
reg   [9:0] edges_3_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage4;
wire   [9:0] lshr_ln1_fu_412_p4;
wire   [7:0] tmp_dst_fu_454_p2;
wire   [7:0] tmp_dst_fu_454_p4;
wire   [7:0] tmp_dst_fu_454_p6;
wire   [7:0] tmp_dst_fu_454_p8;
wire   [7:0] tmp_dst_fu_454_p9;
wire   [63:0] e_7_fu_477_p2;
wire   [9:0] lshr_ln14_1_fu_482_p4;
wire   [63:0] e_8_fu_505_p2;
wire   [9:0] lshr_ln2_fu_510_p4;
wire   [29:0] tmp_fu_528_p4;
wire   [31:0] i_1_fu_538_p3;
wire   [63:0] e_9_fu_557_p2;
wire   [7:0] tmp_dst_1_fu_608_p2;
wire   [7:0] tmp_dst_1_fu_608_p4;
wire   [7:0] tmp_dst_1_fu_608_p6;
wire   [7:0] tmp_dst_1_fu_608_p8;
wire   [7:0] tmp_dst_1_fu_608_p9;
wire   [7:0] tmp_dst_2_fu_647_p2;
wire   [7:0] tmp_dst_2_fu_647_p4;
wire   [7:0] tmp_dst_2_fu_647_p6;
wire   [7:0] tmp_dst_2_fu_647_p8;
wire   [7:0] tmp_dst_2_fu_647_p9;
wire   [7:0] tmp_dst_3_fu_693_p2;
wire   [7:0] tmp_dst_3_fu_693_p4;
wire   [7:0] tmp_dst_3_fu_693_p6;
wire   [7:0] tmp_dst_3_fu_693_p8;
wire   [7:0] tmp_dst_3_fu_693_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [11:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_880;
reg    ap_condition_885;
reg    ap_condition_889;
reg    ap_condition_892;
reg    ap_condition_895;
reg    ap_condition_898;
reg    ap_condition_901;
reg    ap_condition_904;
wire   [1:0] tmp_dst_fu_454_p1;
wire   [1:0] tmp_dst_fu_454_p3;
wire  signed [1:0] tmp_dst_fu_454_p5;
wire  signed [1:0] tmp_dst_fu_454_p7;
wire  signed [1:0] tmp_dst_1_fu_608_p1;
wire   [1:0] tmp_dst_1_fu_608_p3;
wire   [1:0] tmp_dst_1_fu_608_p5;
wire  signed [1:0] tmp_dst_1_fu_608_p7;
wire  signed [1:0] tmp_dst_2_fu_647_p1;
wire  signed [1:0] tmp_dst_2_fu_647_p3;
wire   [1:0] tmp_dst_2_fu_647_p5;
wire   [1:0] tmp_dst_2_fu_647_p7;
wire   [1:0] tmp_dst_3_fu_693_p1;
wire  signed [1:0] tmp_dst_3_fu_693_p3;
wire  signed [1:0] tmp_dst_3_fu_693_p5;
wire   [1:0] tmp_dst_3_fu_693_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_88 = 32'd0;
#0 e_1_fu_92 = 64'd0;
#0 cnt_1_fu_96 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U1(.din0(tmp_dst_fu_454_p2),.din1(tmp_dst_fu_454_p4),.din2(tmp_dst_fu_454_p6),.din3(tmp_dst_fu_454_p8),.def(tmp_dst_fu_454_p9),.sel(trunc_ln11_reg_812),.dout(tmp_dst_fu_454_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 8 ),.CASE1( 2'h0 ),.din1_WIDTH( 8 ),.CASE2( 2'h1 ),.din2_WIDTH( 8 ),.CASE3( 2'h2 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2(.din0(tmp_dst_1_fu_608_p2),.din1(tmp_dst_1_fu_608_p4),.din2(tmp_dst_1_fu_608_p6),.din3(tmp_dst_1_fu_608_p8),.def(tmp_dst_1_fu_608_p9),.sel(trunc_ln11_reg_812),.dout(tmp_dst_1_fu_608_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U3(.din0(tmp_dst_2_fu_647_p2),.din1(tmp_dst_2_fu_647_p4),.din2(tmp_dst_2_fu_647_p6),.din3(tmp_dst_2_fu_647_p8),.def(tmp_dst_2_fu_647_p9),.sel(trunc_ln11_reg_812),.dout(tmp_dst_2_fu_647_p11));
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U4(.din0(tmp_dst_3_fu_693_p2),.din1(tmp_dst_3_fu_693_p4),.din2(tmp_dst_3_fu_693_p6),.din3(tmp_dst_3_fu_693_p8),.def(tmp_dst_3_fu_693_p9),.sel(trunc_ln11_reg_812),.dout(tmp_dst_3_fu_693_p11));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_945 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln29_reg_820 == 1'd1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln29_reg_820 == 1'd0)))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_316 <= cnt_1_fu_96;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_945 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln29_reg_820 == 1'd1))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_316 <= cnt_11_fu_727_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_873 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_370_p2 == 1'd0) & (icmp_ln29_3_reg_906 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln28_reg_873 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln29_3_reg_906 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_357 <= ap_phi_reg_pp0_iter1_cnt_8_reg_343;
    end else if (((icmp_ln28_reg_873 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (grp_fu_370_p2 == 1'd1) & (icmp_ln29_3_reg_906 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_357 <= cnt_14_fu_759_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_357 <= ap_phi_reg_pp0_iter0_cnt_10_reg_357;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln29_1_reg_849 == 1'd0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_959 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln29_1_reg_849 == 1'd1)))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_328 <= ap_phi_reg_pp0_iter0_cnt_3_reg_316;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_959 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln29_1_reg_849 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_328 <= cnt_12_fu_733_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_328 <= ap_phi_reg_pp0_iter0_cnt_6_reg_328;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_873 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_2_reg_984 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_2_reg_877 == 1'd1)) | ((icmp_ln28_reg_873 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_2_reg_877 == 1'd0)))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_343 <= ap_phi_reg_pp0_iter1_cnt_6_reg_328;
    end else if (((icmp_ln28_reg_873 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_2_reg_984 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_2_reg_877 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_343 <= cnt_13_fu_739_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_343 <= ap_phi_reg_pp0_iter0_cnt_8_reg_343;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_96 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_fu_96 <= ap_phi_reg_pp0_iter1_cnt_10_reg_357;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_1_fu_92 <= e;
        end else if (((icmp_ln28_reg_873 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_1_fu_92 <= e_10_fu_749_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_88 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln28_fu_546_p2 == 1'd1))) begin
        i_fu_88 <= i_4_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_6_reg_328 <= ap_phi_reg_pp0_iter1_cnt_6_reg_328;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_6_reg_804 <= e_1_fu_92;
        icmp_ln29_reg_820 <= icmp_ln29_fu_430_p2;
        trunc_ln11_reg_812 <= trunc_ln11_fu_408_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln28_reg_873 <= icmp_ln28_fu_546_p2;
        icmp_ln29_1_reg_849 <= icmp_ln29_1_fu_500_p2;
        icmp_ln29_2_reg_877 <= icmp_ln29_2_fu_552_p2;
        icmp_ln29_3_reg_906 <= icmp_ln29_3_fu_572_p2;
        lshr_ln14_2_reg_901 <= {{e_9_fu_557_p2[11:2]}};
        tmp_dst_reg_844 <= tmp_dst_fu_454_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln34_1_reg_959 <= grp_fu_380_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln34_2_reg_984 <= grp_fu_380_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln34_3_reg_998 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln34_reg_945 <= grp_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next11_cast4_cast_reg_799[3 : 0] <= indvars_iv_next11_cast4_cast_fu_386_p1[3 : 0];
        level_addr_3_reg_993 <= zext_ln31_3_fu_745_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_addr_1_reg_954 <= zext_ln31_1_fu_716_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_addr_2_reg_963 <= zext_ln31_2_fu_720_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_reg_910 <= zext_ln31_fu_588_p1;
        tmp_dst_1_reg_915 <= tmp_dst_1_fu_608_p11;
        tmp_dst_2_reg_920 <= tmp_dst_2_fu_647_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_376 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_dst_3_reg_949 <= tmp_dst_3_fu_693_p11;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_873 == 1'd0) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_873 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_873 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_6_out_ap_vld = 1'b1;
    end else begin
        cnt_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_0_address0_local = zext_ln14_2_fu_670_p1;
        end else if ((1'b1 == ap_condition_885)) begin
            edges_0_address0_local = zext_ln28_fu_520_p1;
        end else if ((1'b1 == ap_condition_880)) begin
            edges_0_address0_local = zext_ln14_1_fu_492_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln14_fu_422_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_552_p2 == 1'd1) & (icmp_ln28_fu_546_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_500_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_1_address0_local = zext_ln14_2_fu_670_p1;
        end else if ((1'b1 == ap_condition_892)) begin
            edges_1_address0_local = zext_ln28_fu_520_p1;
        end else if ((1'b1 == ap_condition_889)) begin
            edges_1_address0_local = zext_ln14_1_fu_492_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln14_fu_422_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_552_p2 == 1'd1) & (icmp_ln28_fu_546_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_500_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_2_address0_local = zext_ln14_2_fu_670_p1;
        end else if ((1'b1 == ap_condition_898)) begin
            edges_2_address0_local = zext_ln28_fu_520_p1;
        end else if ((1'b1 == ap_condition_895)) begin
            edges_2_address0_local = zext_ln14_1_fu_492_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_2_address0_local = zext_ln14_fu_422_p1;
        end else begin
            edges_2_address0_local = 'bx;
        end
    end else begin
        edges_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_552_p2 == 1'd1) & (icmp_ln28_fu_546_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_500_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_3_address0_local = zext_ln14_2_fu_670_p1;
        end else if ((1'b1 == ap_condition_904)) begin
            edges_3_address0_local = zext_ln28_fu_520_p1;
        end else if ((1'b1 == ap_condition_901)) begin
            edges_3_address0_local = zext_ln14_1_fu_492_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_3_address0_local = zext_ln14_fu_422_p1;
        end else begin
            edges_3_address0_local = 'bx;
        end
    end else begin
        edges_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_552_p2 == 1'd1) & (icmp_ln28_fu_546_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_500_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_3_reg_993;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = zext_ln31_3_fu_745_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_address0_local = level_addr_2_reg_963;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_address0_local = zext_ln31_2_fu_720_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        level_address0_local = level_addr_1_reg_954;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = zext_ln31_1_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln31_fu_588_p1;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_reg_945 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln29_reg_820 == 1'd1)) | ((icmp_ln28_reg_873 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln29_2_reg_877 == 1'd1)) | ((icmp_ln28_reg_873 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_3_reg_998 == 1'd1) & (icmp_ln29_3_reg_906 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_380_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln29_1_reg_849 == 1'd1)))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
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
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_880 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_500_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd3));
end
always @ (*) begin
    ap_condition_885 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_552_p2 == 1'd1) & (icmp_ln28_fu_546_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd2));
end
always @ (*) begin
    ap_condition_889 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_500_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd0));
end
always @ (*) begin
    ap_condition_892 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_552_p2 == 1'd1) & (icmp_ln28_fu_546_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd3));
end
always @ (*) begin
    ap_condition_895 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_500_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd1));
end
always @ (*) begin
    ap_condition_898 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_552_p2 == 1'd1) & (icmp_ln28_fu_546_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd0));
end
always @ (*) begin
    ap_condition_901 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_500_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd2));
end
always @ (*) begin
    ap_condition_904 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_552_p2 == 1'd1) & (icmp_ln28_fu_546_p2 == 1'd1) & (trunc_ln11_reg_812 == 2'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_phi_reg_pp0_iter0_cnt_10_reg_357 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_6_reg_328 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_8_reg_343 = 'bx;
assign ap_ready = ap_ready_sig;
assign cnt_11_fu_727_p2 = (cnt_1_fu_96 + 64'd1);
assign cnt_12_fu_733_p2 = (ap_phi_reg_pp0_iter0_cnt_3_reg_316 + 64'd1);
assign cnt_13_fu_739_p2 = (ap_phi_reg_pp0_iter1_cnt_6_reg_328 + 64'd1);
assign cnt_14_fu_759_p2 = (ap_phi_reg_pp0_iter1_cnt_8_reg_343 + 64'd1);
assign cnt_6_out = cnt_6_reg_328;
assign e_10_fu_749_p2 = (e_6_reg_804 + 64'd4);
assign e_7_fu_477_p2 = (e_6_reg_804 + 64'd1);
assign e_8_fu_505_p2 = (e_6_reg_804 + 64'd2);
assign e_9_fu_557_p2 = (e_6_reg_804 + 64'd3);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_2_address0 = edges_2_address0_local;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_3_address0 = edges_3_address0_local;
assign edges_3_ce0 = edges_3_ce0_local;
assign grp_fu_370_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_380_p2 = ((reg_376 == 8'd127) ? 1'b1 : 1'b0);
assign i_1_fu_538_p3 = {{tmp_fu_528_p4}, {2'd2}};
assign i_4_fu_577_p2 = (i_fu_88 + 32'd4);
assign icmp_ln28_fu_546_p2 = (($signed(i_1_fu_538_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_500_p2 = ((e_7_fu_477_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_552_p2 = ((e_8_fu_505_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_572_p2 = ((e_9_fu_557_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_430_p2 = ((e_1_fu_92 < tmp_end) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast4_cast_fu_386_p1 = indvars_iv_next11_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next11_cast4_cast_reg_799;
assign level_we0 = level_we0_local;
assign lshr_ln14_1_fu_482_p4 = {{e_7_fu_477_p2[11:2]}};
assign lshr_ln1_fu_412_p4 = {{e_1_fu_92[11:2]}};
assign lshr_ln2_fu_510_p4 = {{e_8_fu_505_p2[11:2]}};
assign tmp_dst_1_fu_608_p2 = edges_0_q0[7:0];
assign tmp_dst_1_fu_608_p4 = edges_1_q0[7:0];
assign tmp_dst_1_fu_608_p6 = edges_2_q0[7:0];
assign tmp_dst_1_fu_608_p8 = edges_3_q0[7:0];
assign tmp_dst_1_fu_608_p9 = 'bx;
assign tmp_dst_2_fu_647_p2 = edges_0_q0[7:0];
assign tmp_dst_2_fu_647_p4 = edges_1_q0[7:0];
assign tmp_dst_2_fu_647_p6 = edges_2_q0[7:0];
assign tmp_dst_2_fu_647_p8 = edges_3_q0[7:0];
assign tmp_dst_2_fu_647_p9 = 'bx;
assign tmp_dst_3_fu_693_p2 = edges_0_q0[7:0];
assign tmp_dst_3_fu_693_p4 = edges_1_q0[7:0];
assign tmp_dst_3_fu_693_p6 = edges_2_q0[7:0];
assign tmp_dst_3_fu_693_p8 = edges_3_q0[7:0];
assign tmp_dst_3_fu_693_p9 = 'bx;
assign tmp_dst_fu_454_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_454_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_454_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_454_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_454_p9 = 'bx;
assign tmp_fu_528_p4 = {{i_fu_88[31:2]}};
assign trunc_ln11_fu_408_p1 = e_1_fu_92[1:0];
assign zext_ln14_1_fu_492_p1 = lshr_ln14_1_fu_482_p4;
assign zext_ln14_2_fu_670_p1 = lshr_ln14_2_reg_901;
assign zext_ln14_fu_422_p1 = lshr_ln1_fu_412_p4;
assign zext_ln28_fu_520_p1 = lshr_ln2_fu_510_p4;
assign zext_ln31_1_fu_716_p1 = tmp_dst_1_reg_915;
assign zext_ln31_2_fu_720_p1 = tmp_dst_2_reg_920;
assign zext_ln31_3_fu_745_p1 = tmp_dst_3_reg_949;
assign zext_ln31_fu_588_p1 = tmp_dst_reg_844;
always @ (posedge ap_clk) begin
    indvars_iv_next11_cast4_cast_reg_799[7:4] <= 4'b0000;
end
endmodule 