module backprop_backprop_Pipeline_label_71 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp_10,v1_0_address0,v1_0_ce0,v1_0_q0,v1_1_address0,v1_1_ce0,v1_1_q0,v1_2_address0,v1_2_ce0,v1_2_q0,v1_3_address0,v1_3_ce0,v1_3_q0,v1_4_address0,v1_4_ce0,v1_4_q0,v1_5_address0,v1_5_ce0,v1_5_q0,v1_6_address0,v1_6_ce0,v1_6_q0,v1_7_address0,v1_7_ce0,v1_7_q0,v20_address0,v20_ce0,v20_q0,v47_1_out,v47_1_out_ap_vld,grp_fu_8156_p_din0,grp_fu_8156_p_din1,grp_fu_8156_p_opcode,grp_fu_8156_p_dout0,grp_fu_8156_p_ce,grp_fu_4418_p_din0,grp_fu_4418_p_din1,grp_fu_4418_p_dout0,grp_fu_4418_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] tmp_10;
output  [8:0] v1_0_address0;
output   v1_0_ce0;
input  [63:0] v1_0_q0;
output  [8:0] v1_1_address0;
output   v1_1_ce0;
input  [63:0] v1_1_q0;
output  [8:0] v1_2_address0;
output   v1_2_ce0;
input  [63:0] v1_2_q0;
output  [8:0] v1_3_address0;
output   v1_3_ce0;
input  [63:0] v1_3_q0;
output  [8:0] v1_4_address0;
output   v1_4_ce0;
input  [63:0] v1_4_q0;
output  [8:0] v1_5_address0;
output   v1_5_ce0;
input  [63:0] v1_5_q0;
output  [8:0] v1_6_address0;
output   v1_6_ce0;
input  [63:0] v1_6_q0;
output  [8:0] v1_7_address0;
output   v1_7_ce0;
input  [63:0] v1_7_q0;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [63:0] v47_1_out;
output   v47_1_out_ap_vld;
output  [63:0] grp_fu_8156_p_din0;
output  [63:0] grp_fu_8156_p_din1;
output  [0:0] grp_fu_8156_p_opcode;
input  [63:0] grp_fu_8156_p_dout0;
output   grp_fu_8156_p_ce;
output  [63:0] grp_fu_4418_p_din0;
output  [63:0] grp_fu_4418_p_din1;
input  [63:0] grp_fu_4418_p_dout0;
output   grp_fu_4418_p_ce;
reg ap_idle;
reg v47_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln96_reg_400;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln96_fu_243_p2;
reg   [0:0] icmp_ln96_reg_400_pp0_iter1_reg;
reg   [2:0] trunc_ln97_2_reg_404;
wire   [63:0] v44_fu_333_p19;
reg   [63:0] v44_reg_454;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] v45_reg_459;
reg   [63:0] v46_reg_464;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln97_fu_274_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln96_fu_255_p1;
reg   [63:0] v47_fu_84;
reg   [63:0] ap_sig_allocacmp_v47_load_1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter1_stage2;
reg    ap_idle_pp0_0to0;
reg   [6:0] v43_fu_88;
wire   [6:0] add_ln96_fu_249_p2;
reg   [6:0] ap_sig_allocacmp_v43_1;
wire    ap_block_pp0_stage2_01001;
reg    v1_0_ce0_local;
reg    v1_1_ce0_local;
reg    v1_2_ce0_local;
reg    v1_3_ce0_local;
reg    v1_4_ce0_local;
reg    v1_5_ce0_local;
reg    v1_6_ce0_local;
reg    v1_7_ce0_local;
reg    v20_ce0_local;
wire   [11:0] zext_ln96_1_fu_260_p1;
wire   [11:0] add_ln97_fu_264_p2;
wire   [8:0] trunc_ln97_fu_270_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] v44_fu_333_p2;
wire   [63:0] v44_fu_333_p4;
wire   [63:0] v44_fu_333_p6;
wire   [63:0] v44_fu_333_p8;
wire   [63:0] v44_fu_333_p10;
wire   [63:0] v44_fu_333_p12;
wire   [63:0] v44_fu_333_p14;
wire   [63:0] v44_fu_333_p16;
wire   [63:0] v44_fu_333_p17;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v44_fu_333_p1;
wire   [2:0] v44_fu_333_p3;
wire   [2:0] v44_fu_333_p5;
wire   [2:0] v44_fu_333_p7;
wire  signed [2:0] v44_fu_333_p9;
wire  signed [2:0] v44_fu_333_p11;
wire  signed [2:0] v44_fu_333_p13;
wire  signed [2:0] v44_fu_333_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v47_fu_84 = 64'd0;
#0 v43_fu_88 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U58(.din0(v44_fu_333_p2),.din1(v44_fu_333_p4),.din2(v44_fu_333_p6),.din3(v44_fu_333_p8),.din4(v44_fu_333_p10),.din5(v44_fu_333_p12),.din6(v44_fu_333_p14),.din7(v44_fu_333_p16),.def(v44_fu_333_p17),.sel(trunc_ln97_2_reg_404),.dout(v44_fu_333_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln96_fu_243_p2 == 1'd0))) begin
            v43_fu_88 <= add_ln96_fu_249_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v43_fu_88 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v47_fu_84 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v47_fu_84 <= grp_fu_8156_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln96_reg_400 <= icmp_ln96_fu_243_p2;
        icmp_ln96_reg_400_pp0_iter1_reg <= icmp_ln96_reg_400;
        trunc_ln97_2_reg_404 <= {{add_ln97_fu_264_p2[11:9]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v44_reg_454 <= v44_fu_333_p19;
        v45_reg_459 <= v20_q0;
        v46_reg_464 <= grp_fu_4418_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln96_reg_400 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln96_reg_400_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v43_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v43_1 = v43_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_sig_allocacmp_v47_load_1 = grp_fu_8156_p_dout0;
    end else begin
        ap_sig_allocacmp_v47_load_1 = v47_fu_84;
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
        v1_1_ce0_local = 1'b1;
    end else begin
        v1_1_ce0_local = 1'b0;
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
        v1_3_ce0_local = 1'b1;
    end else begin
        v1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_4_ce0_local = 1'b1;
    end else begin
        v1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_5_ce0_local = 1'b1;
    end else begin
        v1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_6_ce0_local = 1'b1;
    end else begin
        v1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v1_7_ce0_local = 1'b1;
    end else begin
        v1_7_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln96_reg_400_pp0_iter1_reg == 1'd1))) begin
        v47_1_out_ap_vld = 1'b1;
    end else begin
        v47_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln96_fu_249_p2 = (ap_sig_allocacmp_v43_1 + 7'd1);
assign add_ln97_fu_264_p2 = (zext_ln96_1_fu_260_p1 + tmp_10);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign grp_fu_4418_p_ce = 1'b1;
assign grp_fu_4418_p_din0 = v44_reg_454;
assign grp_fu_4418_p_din1 = v45_reg_459;
assign grp_fu_8156_p_ce = 1'b1;
assign grp_fu_8156_p_din0 = ap_sig_allocacmp_v47_load_1;
assign grp_fu_8156_p_din1 = v46_reg_464;
assign grp_fu_8156_p_opcode = 2'd0;
assign icmp_ln96_fu_243_p2 = ((ap_sig_allocacmp_v43_1 == 7'd64) ? 1'b1 : 1'b0);
assign trunc_ln97_fu_270_p1 = add_ln97_fu_264_p2[8:0];
assign v1_0_address0 = zext_ln97_fu_274_p1;
assign v1_0_ce0 = v1_0_ce0_local;
assign v1_1_address0 = zext_ln97_fu_274_p1;
assign v1_1_ce0 = v1_1_ce0_local;
assign v1_2_address0 = zext_ln97_fu_274_p1;
assign v1_2_ce0 = v1_2_ce0_local;
assign v1_3_address0 = zext_ln97_fu_274_p1;
assign v1_3_ce0 = v1_3_ce0_local;
assign v1_4_address0 = zext_ln97_fu_274_p1;
assign v1_4_ce0 = v1_4_ce0_local;
assign v1_5_address0 = zext_ln97_fu_274_p1;
assign v1_5_ce0 = v1_5_ce0_local;
assign v1_6_address0 = zext_ln97_fu_274_p1;
assign v1_6_ce0 = v1_6_ce0_local;
assign v1_7_address0 = zext_ln97_fu_274_p1;
assign v1_7_ce0 = v1_7_ce0_local;
assign v20_address0 = zext_ln96_fu_255_p1;
assign v20_ce0 = v20_ce0_local;
assign v44_fu_333_p10 = v1_4_q0;
assign v44_fu_333_p12 = v1_5_q0;
assign v44_fu_333_p14 = v1_6_q0;
assign v44_fu_333_p16 = v1_7_q0;
assign v44_fu_333_p17 = 'bx;
assign v44_fu_333_p2 = v1_0_q0;
assign v44_fu_333_p4 = v1_1_q0;
assign v44_fu_333_p6 = v1_2_q0;
assign v44_fu_333_p8 = v1_3_q0;
assign v47_1_out = v47_fu_84;
assign zext_ln96_1_fu_260_p1 = ap_sig_allocacmp_v43_1;
assign zext_ln96_fu_255_p1 = ap_sig_allocacmp_v43_1;
assign zext_ln97_fu_274_p1 = trunc_ln97_fu_270_p1;
endmodule 