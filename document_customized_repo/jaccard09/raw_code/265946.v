module backprop_backprop_Pipeline_label_6_label_7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v1_0_address0,v1_0_ce0,v1_0_q0,v1_0_address1,v1_0_ce1,v1_0_q1,v1_1_address0,v1_1_ce0,v1_1_q0,v1_1_address1,v1_1_ce1,v1_1_q1,v1_2_address0,v1_2_ce0,v1_2_q0,v1_2_address1,v1_2_ce1,v1_2_q1,v1_3_address0,v1_3_ce0,v1_3_q0,v1_3_address1,v1_3_ce1,v1_3_q1,v20_address0,v20_ce0,v20_q0,v20_address1,v20_ce1,v20_q1,v19_address0,v19_ce0,v19_we0,v19_d0,v19_1_address0,v19_1_ce0,v19_1_we0,v19_1_d0,v19_2_address0,v19_2_ce0,v19_2_we0,v19_2_d0,v19_3_address0,v19_3_ce0,v19_3_we0,v19_3_d0,v19_4_address0,v19_4_ce0,v19_4_we0,v19_4_d0,v19_5_address0,v19_5_ce0,v19_5_we0,v19_5_d0,v19_6_address0,v19_6_ce0,v19_6_we0,v19_6_d0,v19_7_address0,v19_7_ce0,v19_7_we0,v19_7_d0,grp_fu_7088_p_din0,grp_fu_7088_p_din1,grp_fu_7088_p_opcode,grp_fu_7088_p_dout0,grp_fu_7088_p_ce,grp_fu_7100_p_din0,grp_fu_7100_p_din1,grp_fu_7100_p_dout0,grp_fu_7100_p_ce); 
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
output  [9:0] v1_0_address0;
output   v1_0_ce0;
input  [63:0] v1_0_q0;
output  [9:0] v1_0_address1;
output   v1_0_ce1;
input  [63:0] v1_0_q1;
output  [9:0] v1_1_address0;
output   v1_1_ce0;
input  [63:0] v1_1_q0;
output  [9:0] v1_1_address1;
output   v1_1_ce1;
input  [63:0] v1_1_q1;
output  [9:0] v1_2_address0;
output   v1_2_ce0;
input  [63:0] v1_2_q0;
output  [9:0] v1_2_address1;
output   v1_2_ce1;
input  [63:0] v1_2_q1;
output  [9:0] v1_3_address0;
output   v1_3_ce0;
input  [63:0] v1_3_q0;
output  [9:0] v1_3_address1;
output   v1_3_ce1;
input  [63:0] v1_3_q1;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [5:0] v20_address1;
output   v20_ce1;
input  [63:0] v20_q1;
output  [2:0] v19_address0;
output   v19_ce0;
output   v19_we0;
output  [63:0] v19_d0;
output  [2:0] v19_1_address0;
output   v19_1_ce0;
output   v19_1_we0;
output  [63:0] v19_1_d0;
output  [2:0] v19_2_address0;
output   v19_2_ce0;
output   v19_2_we0;
output  [63:0] v19_2_d0;
output  [2:0] v19_3_address0;
output   v19_3_ce0;
output   v19_3_we0;
output  [63:0] v19_3_d0;
output  [2:0] v19_4_address0;
output   v19_4_ce0;
output   v19_4_we0;
output  [63:0] v19_4_d0;
output  [2:0] v19_5_address0;
output   v19_5_ce0;
output   v19_5_we0;
output  [63:0] v19_5_d0;
output  [2:0] v19_6_address0;
output   v19_6_ce0;
output   v19_6_we0;
output  [63:0] v19_6_d0;
output  [2:0] v19_7_address0;
output   v19_7_ce0;
output   v19_7_we0;
output  [63:0] v19_7_d0;
output  [63:0] grp_fu_7088_p_din0;
output  [63:0] grp_fu_7088_p_din1;
output  [0:0] grp_fu_7088_p_opcode;
input  [63:0] grp_fu_7088_p_dout0;
output   grp_fu_7088_p_ce;
output  [63:0] grp_fu_7100_p_din0;
output  [63:0] grp_fu_7100_p_din1;
input  [63:0] grp_fu_7100_p_dout0;
output   grp_fu_7100_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln94_reg_733;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [63:0] reg_375;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln94_fu_411_p2;
reg   [6:0] v42_load_reg_737;
wire   [0:0] tmp_fu_429_p3;
reg   [0:0] tmp_reg_742;
wire   [6:0] select_ln94_fu_437_p3;
reg   [6:0] select_ln94_reg_748;
wire   [6:0] add_ln94_1_fu_445_p2;
reg   [6:0] add_ln94_1_reg_754;
wire   [4:0] tmp_4_fu_456_p4;
reg   [4:0] tmp_4_reg_764;
wire   [2:0] trunc_ln94_fu_489_p1;
reg   [2:0] trunc_ln94_reg_774;
reg   [2:0] trunc_ln94_reg_774_pp0_iter1_reg;
reg   [1:0] trunc_ln97_1_reg_778;
reg   [63:0] v45_reg_803;
reg   [1:0] trunc_ln97_2_reg_808;
reg   [63:0] v45_1_reg_833;
reg   [2:0] lshr_ln2_reg_838;
reg   [2:0] lshr_ln2_reg_838_pp0_iter1_reg;
wire   [63:0] v44_fu_598_p11;
reg   [63:0] v44_reg_843;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v44_1_fu_637_p11;
reg   [63:0] v44_1_reg_848;
reg   [63:0] v46_reg_853;
wire   [63:0] select_ln94_1_fu_663_p3;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] v46_1_reg_863;
reg   [0:0] tmp_1_reg_868;
wire    ap_block_pp0_stage15_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln96_fu_451_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln97_1_fu_474_p1;
wire   [63:0] zext_ln97_fu_518_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln97_2_fu_549_p1;
wire   [63:0] zext_ln94_fu_694_p1;
wire    ap_block_pp0_stage10;
reg   [63:0] v47_fu_122;
wire    ap_loop_init;
reg   [6:0] v43_fu_126;
wire   [6:0] add_ln96_fu_671_p2;
reg   [6:0] ap_sig_allocacmp_v43_load;
reg   [6:0] v42_fu_130;
wire   [6:0] select_ln94_2_fu_484_p3;
reg   [6:0] ap_sig_allocacmp_v42_load;
reg   [11:0] indvar_flatten12_fu_134;
wire   [11:0] add_ln94_fu_417_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    v20_ce1_local;
reg    v20_ce0_local;
reg    v1_0_ce1_local;
reg    v1_0_ce0_local;
reg    v1_1_ce1_local;
reg    v1_1_ce0_local;
reg    v1_2_ce1_local;
reg    v1_2_ce0_local;
reg    v1_3_ce1_local;
reg    v1_3_ce0_local;
reg    v19_6_we0_local;
reg    v19_6_ce0_local;
reg    v19_5_we0_local;
reg    v19_5_ce0_local;
reg    v19_4_we0_local;
reg    v19_4_ce0_local;
reg    v19_3_we0_local;
reg    v19_3_ce0_local;
reg    v19_2_we0_local;
reg    v19_2_ce0_local;
reg    v19_1_we0_local;
reg    v19_1_ce0_local;
reg    v19_we0_local;
reg    v19_ce0_local;
reg    v19_7_we0_local;
reg    v19_7_ce0_local;
reg   [63:0] grp_fu_367_p0;
reg   [63:0] grp_fu_367_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_371_p0;
reg   [63:0] grp_fu_371_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire   [5:0] or_ln_fu_466_p3;
wire   [5:0] empty_fu_493_p1;
wire   [11:0] zext_ln96_1_fu_505_p1;
wire   [11:0] tmp_3_fu_497_p3;
wire   [11:0] add_ln97_fu_508_p2;
wire   [9:0] trunc_ln97_fu_514_p1;
wire   [3:0] trunc_ln97_3_fu_536_p1;
wire   [9:0] add_ln97_1_cast_fu_540_p4;
wire   [63:0] v44_fu_598_p2;
wire   [63:0] v44_fu_598_p4;
wire   [63:0] v44_fu_598_p6;
wire   [63:0] v44_fu_598_p8;
wire   [63:0] v44_fu_598_p9;
wire   [63:0] v44_1_fu_637_p2;
wire   [63:0] v44_1_fu_637_p4;
wire   [63:0] v44_1_fu_637_p6;
wire   [63:0] v44_1_fu_637_p8;
wire   [63:0] v44_1_fu_637_p9;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
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
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v44_fu_598_p1;
wire   [1:0] v44_fu_598_p3;
wire  signed [1:0] v44_fu_598_p5;
wire  signed [1:0] v44_fu_598_p7;
wire   [1:0] v44_1_fu_637_p1;
wire   [1:0] v44_1_fu_637_p3;
wire  signed [1:0] v44_1_fu_637_p5;
wire  signed [1:0] v44_1_fu_637_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v47_fu_122 = 64'd0;
#0 v43_fu_126 = 7'd0;
#0 v42_fu_130 = 7'd0;
#0 indvar_flatten12_fu_134 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U49(.din0(v44_fu_598_p2),.din1(v44_fu_598_p4),.din2(v44_fu_598_p6),.din3(v44_fu_598_p8),.def(v44_fu_598_p9),.sel(trunc_ln97_1_reg_778),.dout(v44_fu_598_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U50(.din0(v44_1_fu_637_p2),.din1(v44_1_fu_637_p4),.din2(v44_1_fu_637_p6),.din3(v44_1_fu_637_p8),.def(v44_1_fu_637_p9),.sel(trunc_ln97_2_reg_808),.dout(v44_1_fu_637_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln94_fu_411_p2 == 1'd0))) begin
            indvar_flatten12_fu_134 <= add_ln94_fu_417_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_134 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v42_fu_130 <= 7'd0;
    end else if (((icmp_ln94_reg_733 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v42_fu_130 <= select_ln94_2_fu_484_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v43_fu_126 <= 7'd0;
    end else if (((icmp_ln94_reg_733 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v43_fu_126 <= add_ln96_fu_671_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_fu_122 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v47_fu_122 <= grp_fu_7088_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln94_1_reg_754 <= add_ln94_1_fu_445_p2;
        icmp_ln94_reg_733 <= icmp_ln94_fu_411_p2;
        select_ln94_reg_748 <= select_ln94_fu_437_p3;
        tmp_4_reg_764 <= {{select_ln94_fu_437_p3[5:1]}};
        tmp_reg_742 <= ap_sig_allocacmp_v43_load[32'd6];
        v42_load_reg_737 <= ap_sig_allocacmp_v42_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln2_reg_838 <= {{select_ln94_2_fu_484_p3[5:3]}};
        lshr_ln2_reg_838_pp0_iter1_reg <= lshr_ln2_reg_838;
        trunc_ln94_reg_774 <= trunc_ln94_fu_489_p1;
        trunc_ln94_reg_774_pp0_iter1_reg <= trunc_ln94_reg_774;
        trunc_ln97_1_reg_778 <= {{add_ln97_fu_508_p2[11:10]}};
        trunc_ln97_2_reg_808 <= {{select_ln94_2_fu_484_p3[5:4]}};
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_375 <= grp_fu_7088_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        tmp_1_reg_868 <= add_ln96_fu_671_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v44_1_reg_848 <= v44_1_fu_637_p11;
        v44_reg_843 <= v44_fu_598_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v45_1_reg_833 <= v20_q0;
        v45_reg_803 <= v20_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v46_1_reg_863 <= grp_fu_7100_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v46_reg_853 <= grp_fu_7100_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln94_reg_733 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v42_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v42_load = v42_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v43_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v43_load = v43_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p0 = reg_375;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_367_p0 = select_ln94_1_fu_663_p3;
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_367_p1 = v46_1_reg_863;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_367_p1 = v46_reg_853;
    end else begin
        grp_fu_367_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_371_p0 = v44_1_reg_848;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_371_p0 = v44_reg_843;
        end else begin
            grp_fu_371_p0 = 'bx;
        end
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_371_p1 = v45_1_reg_833;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_371_p1 = v45_reg_803;
        end else begin
            grp_fu_371_p1 = 'bx;
        end
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_868 == 1'd1) & (trunc_ln94_reg_774_pp0_iter1_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_1_we0_local = 1'b1;
    end else begin
        v19_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_868 == 1'd1) & (trunc_ln94_reg_774_pp0_iter1_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_2_we0_local = 1'b1;
    end else begin
        v19_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_3_ce0_local = 1'b1;
    end else begin
        v19_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_868 == 1'd1) & (trunc_ln94_reg_774_pp0_iter1_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_3_we0_local = 1'b1;
    end else begin
        v19_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_4_ce0_local = 1'b1;
    end else begin
        v19_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_868 == 1'd1) & (trunc_ln94_reg_774_pp0_iter1_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_4_we0_local = 1'b1;
    end else begin
        v19_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_5_ce0_local = 1'b1;
    end else begin
        v19_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_868 == 1'd1) & (trunc_ln94_reg_774_pp0_iter1_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_5_we0_local = 1'b1;
    end else begin
        v19_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_6_ce0_local = 1'b1;
    end else begin
        v19_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_868 == 1'd1) & (trunc_ln94_reg_774_pp0_iter1_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_6_we0_local = 1'b1;
    end else begin
        v19_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_7_ce0_local = 1'b1;
    end else begin
        v19_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_868 == 1'd1) & (trunc_ln94_reg_774_pp0_iter1_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_7_we0_local = 1'b1;
    end else begin
        v19_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_868 == 1'd1) & (trunc_ln94_reg_774_pp0_iter1_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v19_we0_local = 1'b1;
    end else begin
        v19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_0_ce0_local = 1'b1;
    end else begin
        v1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_0_ce1_local = 1'b1;
    end else begin
        v1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_1_ce1_local = 1'b1;
    end else begin
        v1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_2_ce0_local = 1'b1;
    end else begin
        v1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_2_ce1_local = 1'b1;
    end else begin
        v1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_3_ce0_local = 1'b1;
    end else begin
        v1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_3_ce1_local = 1'b1;
    end else begin
        v1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce1_local = 1'b1;
    end else begin
        v20_ce1_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
assign add_ln94_1_fu_445_p2 = (ap_sig_allocacmp_v42_load + 7'd1);
assign add_ln94_fu_417_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 12'd1);
assign add_ln96_fu_671_p2 = (select_ln94_reg_748 + 7'd2);
assign add_ln97_1_cast_fu_540_p4 = {{{trunc_ln97_3_fu_536_p1}, {tmp_4_reg_764}}, {1'd1}};
assign add_ln97_fu_508_p2 = (zext_ln96_1_fu_505_p1 + tmp_3_fu_497_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign empty_fu_493_p1 = select_ln94_2_fu_484_p3[5:0];
assign grp_fu_7088_p_ce = 1'b1;
assign grp_fu_7088_p_din0 = grp_fu_367_p0;
assign grp_fu_7088_p_din1 = grp_fu_367_p1;
assign grp_fu_7088_p_opcode = 2'd0;
assign grp_fu_7100_p_ce = 1'b1;
assign grp_fu_7100_p_din0 = grp_fu_371_p0;
assign grp_fu_7100_p_din1 = grp_fu_371_p1;
assign icmp_ln94_fu_411_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 12'd2048) ? 1'b1 : 1'b0);
assign or_ln_fu_466_p3 = {{tmp_4_fu_456_p4}, {1'd1}};
assign select_ln94_1_fu_663_p3 = ((tmp_reg_742[0:0] == 1'b1) ? 64'd0 : v47_fu_122);
assign select_ln94_2_fu_484_p3 = ((tmp_reg_742[0:0] == 1'b1) ? add_ln94_1_reg_754 : v42_load_reg_737);
assign select_ln94_fu_437_p3 = ((tmp_fu_429_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v43_load);
assign tmp_3_fu_497_p3 = {{empty_fu_493_p1}, {6'd0}};
assign tmp_4_fu_456_p4 = {{select_ln94_fu_437_p3[5:1]}};
assign tmp_fu_429_p3 = ap_sig_allocacmp_v43_load[32'd6];
assign trunc_ln94_fu_489_p1 = select_ln94_2_fu_484_p3[2:0];
assign trunc_ln97_3_fu_536_p1 = select_ln94_2_fu_484_p3[3:0];
assign trunc_ln97_fu_514_p1 = add_ln97_fu_508_p2[9:0];
assign v19_1_address0 = zext_ln94_fu_694_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_1_d0 = reg_375;
assign v19_1_we0 = v19_1_we0_local;
assign v19_2_address0 = zext_ln94_fu_694_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_2_d0 = reg_375;
assign v19_2_we0 = v19_2_we0_local;
assign v19_3_address0 = zext_ln94_fu_694_p1;
assign v19_3_ce0 = v19_3_ce0_local;
assign v19_3_d0 = reg_375;
assign v19_3_we0 = v19_3_we0_local;
assign v19_4_address0 = zext_ln94_fu_694_p1;
assign v19_4_ce0 = v19_4_ce0_local;
assign v19_4_d0 = reg_375;
assign v19_4_we0 = v19_4_we0_local;
assign v19_5_address0 = zext_ln94_fu_694_p1;
assign v19_5_ce0 = v19_5_ce0_local;
assign v19_5_d0 = reg_375;
assign v19_5_we0 = v19_5_we0_local;
assign v19_6_address0 = zext_ln94_fu_694_p1;
assign v19_6_ce0 = v19_6_ce0_local;
assign v19_6_d0 = reg_375;
assign v19_6_we0 = v19_6_we0_local;
assign v19_7_address0 = zext_ln94_fu_694_p1;
assign v19_7_ce0 = v19_7_ce0_local;
assign v19_7_d0 = reg_375;
assign v19_7_we0 = v19_7_we0_local;
assign v19_address0 = zext_ln94_fu_694_p1;
assign v19_ce0 = v19_ce0_local;
assign v19_d0 = reg_375;
assign v19_we0 = v19_we0_local;
assign v1_0_address0 = zext_ln97_2_fu_549_p1;
assign v1_0_address1 = zext_ln97_fu_518_p1;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_0_ce1 = v1_0_ce1_local;
assign v1_1_address0 = zext_ln97_2_fu_549_p1;
assign v1_1_address1 = zext_ln97_fu_518_p1;
assign v1_1_ce0 = v1_1_ce0_local;
assign v1_1_ce1 = v1_1_ce1_local;
assign v1_2_address0 = zext_ln97_2_fu_549_p1;
assign v1_2_address1 = zext_ln97_fu_518_p1;
assign v1_2_ce0 = v1_2_ce0_local;
assign v1_2_ce1 = v1_2_ce1_local;
assign v1_3_address0 = zext_ln97_2_fu_549_p1;
assign v1_3_address1 = zext_ln97_fu_518_p1;
assign v1_3_ce0 = v1_3_ce0_local;
assign v1_3_ce1 = v1_3_ce1_local;
assign v20_address0 = zext_ln97_1_fu_474_p1;
assign v20_address1 = zext_ln96_fu_451_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_ce1 = v20_ce1_local;
assign v44_1_fu_637_p2 = v1_0_q0;
assign v44_1_fu_637_p4 = v1_1_q0;
assign v44_1_fu_637_p6 = v1_2_q0;
assign v44_1_fu_637_p8 = v1_3_q0;
assign v44_1_fu_637_p9 = 'bx;
assign v44_fu_598_p2 = v1_0_q1;
assign v44_fu_598_p4 = v1_1_q1;
assign v44_fu_598_p6 = v1_2_q1;
assign v44_fu_598_p8 = v1_3_q1;
assign v44_fu_598_p9 = 'bx;
assign zext_ln94_fu_694_p1 = lshr_ln2_reg_838_pp0_iter1_reg;
assign zext_ln96_1_fu_505_p1 = select_ln94_reg_748;
assign zext_ln96_fu_451_p1 = select_ln94_fu_437_p3;
assign zext_ln97_1_fu_474_p1 = or_ln_fu_466_p3;
assign zext_ln97_2_fu_549_p1 = add_ln97_1_cast_fu_540_p4;
assign zext_ln97_fu_518_p1 = trunc_ln97_fu_514_p1;
endmodule 