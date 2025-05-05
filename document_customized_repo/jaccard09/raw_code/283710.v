module backprop_backprop_Pipeline_label_72 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v42,v1_0_address0,v1_0_ce0,v1_0_q0,v1_0_address1,v1_0_ce1,v1_0_q1,v1_1_address0,v1_1_ce0,v1_1_q0,v1_1_address1,v1_1_ce1,v1_1_q1,v1_2_address0,v1_2_ce0,v1_2_q0,v1_2_address1,v1_2_ce1,v1_2_q1,v1_3_address0,v1_3_ce0,v1_3_q0,v1_3_address1,v1_3_ce1,v1_3_q1,v20_address0,v20_ce0,v20_q0,v20_2_address0,v20_2_ce0,v20_2_q0,v20_1_address0,v20_1_ce0,v20_1_q0,v20_3_address0,v20_3_ce0,v20_3_q0,v47_4_out,v47_4_out_ap_vld,grp_fu_9609_p_din0,grp_fu_9609_p_din1,grp_fu_9609_p_opcode,grp_fu_9609_p_dout0,grp_fu_9609_p_ce,grp_fu_9627_p_din0,grp_fu_9627_p_din1,grp_fu_9627_p_dout0,grp_fu_9627_p_ce); 
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
input  [5:0] v42;
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
output  [3:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [3:0] v20_2_address0;
output   v20_2_ce0;
input  [63:0] v20_2_q0;
output  [3:0] v20_1_address0;
output   v20_1_ce0;
input  [63:0] v20_1_q0;
output  [3:0] v20_3_address0;
output   v20_3_ce0;
input  [63:0] v20_3_q0;
output  [63:0] v47_4_out;
output   v47_4_out_ap_vld;
output  [63:0] grp_fu_9609_p_din0;
output  [63:0] grp_fu_9609_p_din1;
output  [0:0] grp_fu_9609_p_opcode;
input  [63:0] grp_fu_9609_p_dout0;
output   grp_fu_9609_p_ce;
output  [63:0] grp_fu_9627_p_din0;
output  [63:0] grp_fu_9627_p_din1;
input  [63:0] grp_fu_9627_p_dout0;
output   grp_fu_9627_p_ce;
reg ap_idle;
reg v47_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_reg_519;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_284_p3;
reg   [1:0] trunc_ln97_5_reg_523;
wire   [0:0] icmp_ln98_fu_352_p2;
reg   [0:0] icmp_ln98_reg_559;
wire   [63:0] v44_4_fu_415_p11;
reg   [63:0] v44_4_reg_595;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] v45_fu_438_p3;
reg   [63:0] v45_reg_600;
wire   [63:0] v44_5_fu_461_p11;
reg   [63:0] v44_5_reg_605;
wire   [63:0] v45_6_fu_484_p3;
reg   [63:0] v45_6_reg_610;
reg   [63:0] v46_4_reg_615;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] v46_5_reg_625;
reg   [63:0] v48_reg_630;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln97_4_fu_334_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln96_3_fu_306_p1;
wire   [63:0] zext_ln97_5_fu_380_p1;
reg   [63:0] v47_4_fu_90;
wire    ap_block_pp0_stage8;
wire    ap_loop_init;
wire    ap_block_pp0_stage9;
reg   [6:0] v43_2_fu_94;
wire   [6:0] add_ln96_fu_388_p2;
reg   [6:0] ap_sig_allocacmp_v43;
wire    ap_block_pp0_stage8_01001;
reg    v1_0_ce1_local;
reg    v1_0_ce0_local;
reg    v1_1_ce1_local;
reg    v1_1_ce0_local;
reg    v1_2_ce1_local;
reg    v1_2_ce0_local;
reg    v1_3_ce1_local;
reg    v1_3_ce0_local;
reg    v20_ce0_local;
reg    v20_2_ce0_local;
reg    v20_1_ce0_local;
reg    v20_3_ce0_local;
reg   [63:0] grp_fu_263_p0;
reg   [63:0] grp_fu_263_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_267_p0;
reg   [63:0] grp_fu_267_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [3:0] lshr_ln96_2_fu_296_p4;
wire   [1:0] tmp_s_fu_314_p4;
wire   [9:0] add_ln97_4_cast_fu_324_p4;
wire   [1:0] trunc_ln96_fu_292_p1;
wire   [4:0] tmp_2_fu_358_p4;
wire   [9:0] add_ln97_5_cast_fu_368_p5;
wire   [63:0] v44_4_fu_415_p2;
wire   [63:0] v44_4_fu_415_p4;
wire   [63:0] v44_4_fu_415_p6;
wire   [63:0] v44_4_fu_415_p8;
wire   [63:0] v44_4_fu_415_p9;
wire   [63:0] v44_5_fu_461_p2;
wire   [63:0] v44_5_fu_461_p4;
wire   [63:0] v44_5_fu_461_p6;
wire   [63:0] v44_5_fu_461_p8;
wire   [63:0] v44_5_fu_461_p9;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage1_00001;
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
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v44_4_fu_415_p1;
wire   [1:0] v44_4_fu_415_p3;
wire  signed [1:0] v44_4_fu_415_p5;
wire  signed [1:0] v44_4_fu_415_p7;
wire   [1:0] v44_5_fu_461_p1;
wire   [1:0] v44_5_fu_461_p3;
wire  signed [1:0] v44_5_fu_461_p5;
wire  signed [1:0] v44_5_fu_461_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v47_4_fu_90 = 64'd0;
#0 v43_2_fu_94 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U79(.din0(v44_4_fu_415_p2),.din1(v44_4_fu_415_p4),.din2(v44_4_fu_415_p6),.din3(v44_4_fu_415_p8),.def(v44_4_fu_415_p9),.sel(trunc_ln97_5_reg_523),.dout(v44_4_fu_415_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U80(.din0(v44_5_fu_461_p2),.din1(v44_5_fu_461_p4),.din2(v44_5_fu_461_p6),.din3(v44_5_fu_461_p8),.def(v44_5_fu_461_p9),.sel(trunc_ln97_5_reg_523),.dout(v44_5_fu_461_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_284_p3 == 1'd0))) begin
            v43_2_fu_94 <= add_ln96_fu_388_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v43_2_fu_94 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_4_fu_90 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v47_4_fu_90 <= grp_fu_9609_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln98_reg_559 <= icmp_ln98_fu_352_p2;
        tmp_reg_519 <= ap_sig_allocacmp_v43[32'd6];
        trunc_ln97_5_reg_523 <= {{v42[5:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v44_4_reg_595 <= v44_4_fu_415_p11;
        v44_5_reg_605 <= v44_5_fu_461_p11;
        v45_6_reg_610 <= v45_6_fu_484_p3;
        v45_reg_600 <= v45_fu_438_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v46_4_reg_615 <= grp_fu_9627_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v46_5_reg_625 <= grp_fu_9627_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_reg_630 <= grp_fu_9609_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_519 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
        ap_sig_allocacmp_v43 = 7'd0;
    end else begin
        ap_sig_allocacmp_v43 = v43_2_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_263_p0 = v48_reg_630;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_263_p0 = v47_4_fu_90;
    end else begin
        grp_fu_263_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_263_p1 = v46_5_reg_625;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_263_p1 = v46_4_reg_615;
    end else begin
        grp_fu_263_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_267_p0 = v44_5_reg_605;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_267_p0 = v44_4_reg_595;
        end else begin
            grp_fu_267_p0 = 'bx;
        end
    end else begin
        grp_fu_267_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_267_p1 = v45_6_reg_610;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_267_p1 = v45_reg_600;
        end else begin
            grp_fu_267_p1 = 'bx;
        end
    end else begin
        grp_fu_267_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_0_ce0_local = 1'b1;
    end else begin
        v1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_0_ce1_local = 1'b1;
    end else begin
        v1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_1_ce1_local = 1'b1;
    end else begin
        v1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_2_ce0_local = 1'b1;
    end else begin
        v1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_2_ce1_local = 1'b1;
    end else begin
        v1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_3_ce0_local = 1'b1;
    end else begin
        v1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_3_ce1_local = 1'b1;
    end else begin
        v1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_2_ce0_local = 1'b1;
    end else begin
        v20_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_3_ce0_local = 1'b1;
    end else begin
        v20_3_ce0_local = 1'b0;
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
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_519 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v47_4_out_ap_vld = 1'b1;
    end else begin
        v47_4_out_ap_vld = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage8)) begin
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
assign add_ln96_fu_388_p2 = (ap_sig_allocacmp_v43 + 7'd2);
assign add_ln97_4_cast_fu_324_p4 = {{{tmp_s_fu_314_p4}, {1'd1}}, {ap_sig_allocacmp_v43}};
assign add_ln97_5_cast_fu_368_p5 = {{{{tmp_s_fu_314_p4}, {2'd2}}, {tmp_2_fu_358_p4}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign grp_fu_9609_p_ce = 1'b1;
assign grp_fu_9609_p_din0 = grp_fu_263_p0;
assign grp_fu_9609_p_din1 = grp_fu_263_p1;
assign grp_fu_9609_p_opcode = 2'd0;
assign grp_fu_9627_p_ce = 1'b1;
assign grp_fu_9627_p_din0 = grp_fu_267_p0;
assign grp_fu_9627_p_din1 = grp_fu_267_p1;
assign icmp_ln98_fu_352_p2 = ((trunc_ln96_fu_292_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln96_2_fu_296_p4 = {{ap_sig_allocacmp_v43[5:2]}};
assign tmp_2_fu_358_p4 = {{ap_sig_allocacmp_v43[5:1]}};
assign tmp_fu_284_p3 = ap_sig_allocacmp_v43[32'd6];
assign tmp_s_fu_314_p4 = {{v42[3:2]}};
assign trunc_ln96_fu_292_p1 = ap_sig_allocacmp_v43[1:0];
assign v1_0_address0 = zext_ln97_5_fu_380_p1;
assign v1_0_address1 = zext_ln97_4_fu_334_p1;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_0_ce1 = v1_0_ce1_local;
assign v1_1_address0 = zext_ln97_5_fu_380_p1;
assign v1_1_address1 = zext_ln97_4_fu_334_p1;
assign v1_1_ce0 = v1_1_ce0_local;
assign v1_1_ce1 = v1_1_ce1_local;
assign v1_2_address0 = zext_ln97_5_fu_380_p1;
assign v1_2_address1 = zext_ln97_4_fu_334_p1;
assign v1_2_ce0 = v1_2_ce0_local;
assign v1_2_ce1 = v1_2_ce1_local;
assign v1_3_address0 = zext_ln97_5_fu_380_p1;
assign v1_3_address1 = zext_ln97_4_fu_334_p1;
assign v1_3_ce0 = v1_3_ce0_local;
assign v1_3_ce1 = v1_3_ce1_local;
assign v20_1_address0 = zext_ln96_3_fu_306_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_2_address0 = zext_ln96_3_fu_306_p1;
assign v20_2_ce0 = v20_2_ce0_local;
assign v20_3_address0 = zext_ln96_3_fu_306_p1;
assign v20_3_ce0 = v20_3_ce0_local;
assign v20_address0 = zext_ln96_3_fu_306_p1;
assign v20_ce0 = v20_ce0_local;
assign v44_4_fu_415_p2 = v1_0_q1;
assign v44_4_fu_415_p4 = v1_1_q1;
assign v44_4_fu_415_p6 = v1_2_q1;
assign v44_4_fu_415_p8 = v1_3_q1;
assign v44_4_fu_415_p9 = 'bx;
assign v44_5_fu_461_p2 = v1_0_q0;
assign v44_5_fu_461_p4 = v1_1_q0;
assign v44_5_fu_461_p6 = v1_2_q0;
assign v44_5_fu_461_p8 = v1_3_q0;
assign v44_5_fu_461_p9 = 'bx;
assign v45_6_fu_484_p3 = ((icmp_ln98_reg_559[0:0] == 1'b1) ? v20_3_q0 : v20_1_q0);
assign v45_fu_438_p3 = ((icmp_ln98_reg_559[0:0] == 1'b1) ? v20_2_q0 : v20_q0);
assign v47_4_out = v47_4_fu_90;
assign zext_ln96_3_fu_306_p1 = lshr_ln96_2_fu_296_p4;
assign zext_ln97_4_fu_334_p1 = add_ln97_4_cast_fu_324_p4;
assign zext_ln97_5_fu_380_p1 = add_ln97_5_cast_fu_368_p5;
endmodule 