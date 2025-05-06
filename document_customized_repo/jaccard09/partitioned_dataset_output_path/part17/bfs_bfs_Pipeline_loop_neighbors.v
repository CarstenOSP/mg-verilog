
module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next11_cast4,cnt_6_out,cnt_6_out_ap_vld);  
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
input  [63:0] empty;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [10:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [10:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
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
reg   [0:0] icmp_ln28_reg_661;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] cnt_6_reg_240;
reg   [7:0] reg_288;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next11_cast4_cast_fu_298_p1;
reg   [7:0] indvars_iv_next11_cast4_cast_reg_607;
reg   [63:0] e_1_reg_612;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] trunc_ln11_fu_320_p1;
reg   [0:0] trunc_ln11_reg_620;
wire   [0:0] icmp_ln29_fu_340_p2;
reg   [0:0] icmp_ln29_reg_628;
wire   [7:0] tmp_dst_fu_356_p3;
reg   [7:0] tmp_dst_reg_642;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln29_1_fu_384_p2;
reg   [0:0] icmp_ln29_1_reg_647;
wire   [0:0] icmp_ln28_fu_428_p2;
wire   [0:0] icmp_ln29_2_fu_434_p2;
reg   [0:0] icmp_ln29_2_reg_665;
reg   [10:0] lshr_ln14_2_reg_679;
wire   [0:0] icmp_ln29_3_fu_454_p2;
reg   [0:0] icmp_ln29_3_reg_684;
reg   [7:0] level_addr_reg_688;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] tmp_dst_1_fu_482_p3;
reg   [7:0] tmp_dst_1_reg_693;
wire   [7:0] tmp_dst_2_fu_497_p3;
reg   [7:0] tmp_dst_2_reg_698;
wire   [0:0] grp_fu_282_p2;
reg   [0:0] icmp_ln34_reg_713;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [7:0] tmp_dst_3_fu_517_p3;
reg   [7:0] tmp_dst_3_reg_717;
reg   [7:0] level_addr_1_reg_722;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] grp_fu_292_p2;
reg   [0:0] icmp_ln34_1_reg_727;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [7:0] level_addr_2_reg_731;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] cnt_11_fu_535_p2;
wire   [63:0] cnt_12_fu_541_p2;
wire    ap_block_pp0_stage11_11001;
reg   [0:0] icmp_ln34_2_reg_752;
wire   [63:0] cnt_13_fu_547_p2;
reg   [7:0] level_addr_3_reg_761;
reg   [0:0] icmp_ln34_3_reg_766;
wire   [63:0] cnt_14_fu_567_p2;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage2_subdone;
reg   [63:0] ap_phi_reg_pp0_iter0_cnt_3_reg_228;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_6_reg_240;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_6_reg_240;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_8_reg_255;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_8_reg_255;
wire   [63:0] ap_phi_reg_pp0_iter0_cnt_10_reg_269;
reg   [63:0] ap_phi_reg_pp0_iter1_cnt_10_reg_269;
wire   [63:0] zext_ln14_fu_334_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_1_fu_378_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_fu_404_p1;
wire   [63:0] zext_ln31_fu_470_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_2_fu_504_p1;
wire   [63:0] zext_ln31_1_fu_524_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln31_2_fu_528_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln31_3_fu_553_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] i_fu_74;
wire   [31:0] i_4_fu_459_p2;
wire    ap_loop_init;
reg   [63:0] e_fu_78;
wire   [63:0] e_5_fu_557_p2;
reg   [63:0] cnt_1_fu_82;
wire    ap_block_pp0_stage10;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    edges_0_ce0_local;
reg   [10:0] edges_0_address0_local;
reg    edges_1_ce0_local;
reg   [10:0] edges_1_address0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage4;
wire   [10:0] lshr_ln1_fu_324_p4;
wire   [7:0] trunc_ln31_fu_348_p1;
wire   [7:0] trunc_ln31_1_fu_352_p1;
wire   [63:0] e_2_fu_363_p2;
wire   [10:0] lshr_ln14_1_fu_368_p4;
wire   [63:0] e_3_fu_389_p2;
wire   [10:0] lshr_ln2_fu_394_p4;
wire   [29:0] tmp_4_fu_410_p4;
wire   [31:0] i_1_fu_420_p3;
wire   [63:0] e_4_fu_439_p2;
wire   [7:0] trunc_ln31_2_fu_474_p1;
wire   [7:0] trunc_ln31_3_fu_478_p1;
wire   [7:0] trunc_ln31_4_fu_489_p1;
wire   [7:0] trunc_ln31_5_fu_493_p1;
wire   [7:0] trunc_ln31_6_fu_509_p1;
wire   [7:0] trunc_ln31_7_fu_513_p1;
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
reg    ap_condition_766;
reg    ap_condition_771;
reg    ap_condition_775;
reg    ap_condition_778;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_74 = 32'd0;
#0 e_fu_78 = 64'd0;
#0 cnt_1_fu_82 = 64'd0;
#0 ap_done_reg = 1'b0;
end
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
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln34_reg_713 == 1'd0) & (icmp_ln29_reg_628 == 1'd1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln29_reg_628 == 1'd0)))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_228 <= cnt_1_fu_82;
    end else if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10) & (icmp_ln34_reg_713 == 1'd1) & (icmp_ln29_reg_628 == 1'd1))) begin
        ap_phi_reg_pp0_iter0_cnt_3_reg_228 <= cnt_11_fu_535_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (grp_fu_282_p2 == 1'd0) & (icmp_ln29_3_reg_684 == 1'd1)) | ((icmp_ln28_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln29_3_reg_684 == 1'd0)))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_269 <= ap_phi_reg_pp0_iter1_cnt_8_reg_255;
    end else if (((icmp_ln28_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (grp_fu_282_p2 == 1'd1) & (icmp_ln29_3_reg_684 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_269 <= cnt_14_fu_567_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_10_reg_269 <= ap_phi_reg_pp0_iter0_cnt_10_reg_269;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln29_1_reg_647 == 1'd0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_727 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln29_1_reg_647 == 1'd1)))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_240 <= ap_phi_reg_pp0_iter0_cnt_3_reg_228;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln34_1_reg_727 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln29_1_reg_647 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_240 <= cnt_12_fu_541_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_6_reg_240 <= ap_phi_reg_pp0_iter0_cnt_6_reg_240;
    end
end
always @ (posedge ap_clk) begin
    if ((((icmp_ln28_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_2_reg_752 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_2_reg_665 == 1'd1)) | ((icmp_ln28_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_2_reg_665 == 1'd0)))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_255 <= ap_phi_reg_pp0_iter1_cnt_6_reg_240;
    end else if (((icmp_ln28_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_2_reg_752 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln29_2_reg_665 == 1'd1))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_255 <= cnt_13_fu_547_p2;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter1_cnt_8_reg_255 <= ap_phi_reg_pp0_iter0_cnt_8_reg_255;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_82 <= cnt;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_fu_82 <= ap_phi_reg_pp0_iter1_cnt_10_reg_269;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            e_fu_78 <= empty;
        end else if (((icmp_ln28_reg_661 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            e_fu_78 <= e_5_fu_557_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_74 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln28_fu_428_p2 == 1'd1))) begin
        i_fu_74 <= i_4_fu_459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_6_reg_240 <= ap_phi_reg_pp0_iter1_cnt_6_reg_240;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_1_reg_612 <= e_fu_78;
        icmp_ln29_reg_628 <= icmp_ln29_fu_340_p2;
        trunc_ln11_reg_620 <= trunc_ln11_fu_320_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln28_reg_661 <= icmp_ln28_fu_428_p2;
        icmp_ln29_1_reg_647 <= icmp_ln29_1_fu_384_p2;
        icmp_ln29_2_reg_665 <= icmp_ln29_2_fu_434_p2;
        icmp_ln29_3_reg_684 <= icmp_ln29_3_fu_454_p2;
        lshr_ln14_2_reg_679 <= {{e_4_fu_439_p2[11:1]}};
        tmp_dst_reg_642 <= tmp_dst_fu_356_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        icmp_ln34_1_reg_727 <= grp_fu_292_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln34_2_reg_752 <= grp_fu_292_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln34_3_reg_766 <= grp_fu_282_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        icmp_ln34_reg_713 <= grp_fu_282_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next11_cast4_cast_reg_607[3 : 0] <= indvars_iv_next11_cast4_cast_fu_298_p1[3 : 0];
        level_addr_3_reg_761 <= zext_ln31_3_fu_553_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_addr_1_reg_722 <= zext_ln31_1_fu_524_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_addr_2_reg_731 <= zext_ln31_2_fu_528_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_addr_reg_688 <= zext_ln31_fu_470_p1;
        tmp_dst_1_reg_693 <= tmp_dst_1_fu_482_p3;
        tmp_dst_2_reg_698 <= tmp_dst_2_fu_497_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        reg_288 <= level_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_dst_3_reg_717 <= tmp_dst_3_fu_517_p3;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_661 == 1'd0) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_661 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln28_reg_661 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_6_out_ap_vld = 1'b1;
    end else begin
        cnt_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_0_address0_local = zext_ln14_2_fu_504_p1;
        end else if ((1'b1 == ap_condition_771)) begin
            edges_0_address0_local = zext_ln28_fu_404_p1;
        end else if ((1'b1 == ap_condition_766)) begin
            edges_0_address0_local = zext_ln14_1_fu_378_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_0_address0_local = zext_ln14_fu_334_p1;
        end else begin
            edges_0_address0_local = 'bx;
        end
    end else begin
        edges_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_434_p2 == 1'd1) & (icmp_ln28_fu_428_p2 == 1'd1) & (trunc_ln11_reg_620 == 1'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_384_p2 == 1'd1) & (trunc_ln11_reg_620 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            edges_1_address0_local = zext_ln14_2_fu_504_p1;
        end else if ((1'b1 == ap_condition_778)) begin
            edges_1_address0_local = zext_ln28_fu_404_p1;
        end else if ((1'b1 == ap_condition_775)) begin
            edges_1_address0_local = zext_ln14_1_fu_378_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            edges_1_address0_local = zext_ln14_fu_334_p1;
        end else begin
            edges_1_address0_local = 'bx;
        end
    end else begin
        edges_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_434_p2 == 1'd1) & (icmp_ln28_fu_428_p2 == 1'd1) & (trunc_ln11_reg_620 == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_384_p2 == 1'd1) & (trunc_ln11_reg_620 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_address0_local = level_addr_3_reg_761;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        level_address0_local = zext_ln31_3_fu_553_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        level_address0_local = level_addr_2_reg_731;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        level_address0_local = zext_ln31_2_fu_528_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        level_address0_local = level_addr_1_reg_722;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        level_address0_local = zext_ln31_1_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        level_address0_local = level_addr_reg_688;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        level_address0_local = zext_ln31_fu_470_p1;
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
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln34_reg_713 == 1'd1) & (icmp_ln29_reg_628 == 1'd1)) | ((icmp_ln28_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_292_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln29_2_reg_665 == 1'd1)) | ((icmp_ln28_reg_661 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln34_3_reg_766 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_3_reg_684 == 1'd1)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (grp_fu_292_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage8) & (icmp_ln29_1_reg_647 == 1'd1)))) begin
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
    ap_condition_766 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_384_p2 == 1'd1) & (trunc_ln11_reg_620 == 1'd1));
end
always @ (*) begin
    ap_condition_771 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_434_p2 == 1'd1) & (icmp_ln28_fu_428_p2 == 1'd1) & (trunc_ln11_reg_620 == 1'd0));
end
always @ (*) begin
    ap_condition_775 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_1_fu_384_p2 == 1'd1) & (trunc_ln11_reg_620 == 1'd0));
end
always @ (*) begin
    ap_condition_778 = ((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln29_2_fu_434_p2 == 1'd1) & (icmp_ln28_fu_428_p2 == 1'd1) & (trunc_ln11_reg_620 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_phi_reg_pp0_iter0_cnt_10_reg_269 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_6_reg_240 = 'bx;
assign ap_phi_reg_pp0_iter0_cnt_8_reg_255 = 'bx;
assign ap_ready = ap_ready_sig;
assign cnt_11_fu_535_p2 = (cnt_1_fu_82 + 64'd1);
assign cnt_12_fu_541_p2 = (ap_phi_reg_pp0_iter0_cnt_3_reg_228 + 64'd1);
assign cnt_13_fu_547_p2 = (ap_phi_reg_pp0_iter1_cnt_6_reg_240 + 64'd1);
assign cnt_14_fu_567_p2 = (ap_phi_reg_pp0_iter1_cnt_8_reg_255 + 64'd1);
assign cnt_6_out = cnt_6_reg_240;
assign e_2_fu_363_p2 = (e_1_reg_612 + 64'd1);
assign e_3_fu_389_p2 = (e_1_reg_612 + 64'd2);
assign e_4_fu_439_p2 = (e_1_reg_612 + 64'd3);
assign e_5_fu_557_p2 = (e_1_reg_612 + 64'd4);
assign edges_0_address0 = edges_0_address0_local;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_1_address0 = edges_1_address0_local;
assign edges_1_ce0 = edges_1_ce0_local;
assign grp_fu_282_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign grp_fu_292_p2 = ((reg_288 == 8'd127) ? 1'b1 : 1'b0);
assign i_1_fu_420_p3 = {{tmp_4_fu_410_p4}, {2'd2}};
assign i_4_fu_459_p2 = (i_fu_74 + 32'd4);
assign icmp_ln28_fu_428_p2 = (($signed(i_1_fu_420_p3) < $signed(32'd158)) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_384_p2 = ((e_2_fu_363_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_434_p2 = ((e_3_fu_389_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_454_p2 = ((e_4_fu_439_p2 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_340_p2 = ((e_fu_78 < tmp_end) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast4_cast_fu_298_p1 = indvars_iv_next11_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next11_cast4_cast_reg_607;
assign level_we0 = level_we0_local;
assign lshr_ln14_1_fu_368_p4 = {{e_2_fu_363_p2[11:1]}};
assign lshr_ln1_fu_324_p4 = {{e_fu_78[11:1]}};
assign lshr_ln2_fu_394_p4 = {{e_3_fu_389_p2[11:1]}};
assign tmp_4_fu_410_p4 = {{i_fu_74[31:2]}};
assign tmp_dst_1_fu_482_p3 = ((trunc_ln11_reg_620[0:0] == 1'b1) ? trunc_ln31_2_fu_474_p1 : trunc_ln31_3_fu_478_p1);
assign tmp_dst_2_fu_497_p3 = ((trunc_ln11_reg_620[0:0] == 1'b1) ? trunc_ln31_4_fu_489_p1 : trunc_ln31_5_fu_493_p1);
assign tmp_dst_3_fu_517_p3 = ((trunc_ln11_reg_620[0:0] == 1'b1) ? trunc_ln31_6_fu_509_p1 : trunc_ln31_7_fu_513_p1);
assign tmp_dst_fu_356_p3 = ((trunc_ln11_reg_620[0:0] == 1'b1) ? trunc_ln31_fu_348_p1 : trunc_ln31_1_fu_352_p1);
assign trunc_ln11_fu_320_p1 = e_fu_78[0:0];
assign trunc_ln31_1_fu_352_p1 = edges_0_q0[7:0];
assign trunc_ln31_2_fu_474_p1 = edges_0_q0[7:0];
assign trunc_ln31_3_fu_478_p1 = edges_1_q0[7:0];
assign trunc_ln31_4_fu_489_p1 = edges_1_q0[7:0];
assign trunc_ln31_5_fu_493_p1 = edges_0_q0[7:0];
assign trunc_ln31_6_fu_509_p1 = edges_0_q0[7:0];
assign trunc_ln31_7_fu_513_p1 = edges_1_q0[7:0];
assign trunc_ln31_fu_348_p1 = edges_1_q0[7:0];
assign zext_ln14_1_fu_378_p1 = lshr_ln14_1_fu_368_p4;
assign zext_ln14_2_fu_504_p1 = lshr_ln14_2_reg_679;
assign zext_ln14_fu_334_p1 = lshr_ln1_fu_324_p4;
assign zext_ln28_fu_404_p1 = lshr_ln2_fu_394_p4;
assign zext_ln31_1_fu_524_p1 = tmp_dst_1_reg_693;
assign zext_ln31_2_fu_528_p1 = tmp_dst_2_reg_698;
assign zext_ln31_3_fu_553_p1 = tmp_dst_3_reg_717;
assign zext_ln31_fu_470_p1 = tmp_dst_reg_642;
always @ (posedge ap_clk) begin
    indvars_iv_next11_cast4_cast_reg_607[7:4] <= 4'b0000;
end
endmodule 
