module SgdLR_sw_SgdLR_sw_Pipeline_label_213 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_0_address0,v2_0_ce0,v2_0_q0,v2_2_address0,v2_2_ce0,v2_2_q0,v2_4_address0,v2_4_ce0,v2_4_q0,v2_6_address0,v2_6_ce0,v2_6_q0,zext_ln33_2,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v2_3_address0,v2_3_ce0,v2_3_q0,v2_5_address0,v2_5_ce0,v2_5_q0,v2_7_address0,v2_7_ce0,v2_7_q0,tmp_54,v6_71_out,v6_71_out_ap_vld,grp_fu_1655_p_din0,grp_fu_1655_p_din1,grp_fu_1655_p_opcode,grp_fu_1655_p_dout0,grp_fu_1655_p_ce,grp_fu_3793_p_din0,grp_fu_3793_p_din1,grp_fu_3793_p_dout0,grp_fu_3793_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
input  [31:0] v2_0_q0;
output  [6:0] v2_2_address0;
output   v2_2_ce0;
input  [31:0] v2_2_q0;
output  [6:0] v2_4_address0;
output   v2_4_ce0;
input  [31:0] v2_4_q0;
output  [6:0] v2_6_address0;
output   v2_6_ce0;
input  [31:0] v2_6_q0;
input  [22:0] zext_ln33_2;
output  [21:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [21:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
input  [31:0] v2_1_q0;
output  [6:0] v2_3_address0;
output   v2_3_ce0;
input  [31:0] v2_3_q0;
output  [6:0] v2_5_address0;
output   v2_5_ce0;
input  [31:0] v2_5_q0;
output  [6:0] v2_7_address0;
output   v2_7_ce0;
input  [31:0] v2_7_q0;
input  [11:0] tmp_54;
output  [31:0] v6_71_out;
output   v6_71_out_ap_vld;
output  [31:0] grp_fu_1655_p_din0;
output  [31:0] grp_fu_1655_p_din1;
output  [0:0] grp_fu_1655_p_opcode;
input  [31:0] grp_fu_1655_p_dout0;
output   grp_fu_1655_p_ce;
output  [31:0] grp_fu_3793_p_din0;
output  [31:0] grp_fu_3793_p_din1;
input  [31:0] grp_fu_3793_p_dout0;
output   grp_fu_3793_p_ce;
reg ap_idle;
reg v6_71_out_ap_vld;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
reg   [0:0] tmp_reg_563;
reg    ap_condition_exit_pp0_iter0_stage14;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_277;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire   [23:0] zext_ln33_2_cast_fu_282_p1;
reg   [23:0] zext_ln33_2_cast_reg_550;
reg   [10:0] v8_reg_555;
wire   [0:0] tmp_fu_299_p3;
reg   [0:0] tmp_reg_563_pp0_iter1_reg;
reg   [0:0] tmp_reg_563_pp0_iter2_reg;
wire   [22:0] tmp_s_fu_317_p5;
wire   [0:0] icmp_ln35_11_fu_345_p2;
reg   [0:0] icmp_ln35_11_reg_572;
reg   [0:0] icmp_ln35_11_reg_572_pp0_iter1_reg;
wire   [23:0] add_ln35_10_fu_354_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln35_10_fu_371_p2;
reg   [0:0] icmp_ln35_10_reg_582;
reg   [0:0] icmp_ln35_10_reg_582_pp0_iter1_reg;
wire   [2:0] trunc_ln33_fu_377_p1;
reg   [2:0] trunc_ln33_reg_587;
wire    ap_block_pp0_stage14_11001;
reg   [6:0] lshr_ln29_5_reg_593;
wire   [31:0] v9_fu_426_p11;
reg   [31:0] v9_reg_638;
wire   [31:0] v9_15_fu_465_p11;
reg   [31:0] v9_15_reg_643;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [31:0] select_ln35_11_fu_494_p3;
reg   [31:0] select_ln35_11_reg_658;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [31:0] v10_17_fu_507_p1;
wire   [31:0] select_ln35_10_fu_511_p3;
reg   [31:0] select_ln35_10_reg_678;
wire   [31:0] v10_fu_518_p1;
reg   [31:0] v11_15_reg_688;
reg   [31:0] v11_reg_693;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln29_fu_399_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln35_13_fu_488_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln35_11_fu_501_p1;
wire    ap_block_pp0_stage13;
reg   [31:0] v12_fu_96;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
wire    ap_block_pp0_stage4;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage3;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [10:0] v8_5_fu_100;
wire   [10:0] add_ln33_fu_389_p2;
reg   [10:0] ap_sig_allocacmp_v8;
wire    ap_block_pp0_stage3_01001;
reg    v2_0_ce0_local;
reg    v2_2_ce0_local;
reg    v2_4_ce0_local;
reg    v2_6_ce0_local;
reg    v2_1_ce0_local;
reg    v2_3_ce0_local;
reg    v2_5_ce0_local;
reg    v2_7_ce0_local;
reg    v0_0_ce0_local;
reg   [21:0] v0_0_address0_local;
reg    v0_1_ce0_local;
reg   [21:0] v0_1_address0_local;
reg   [31:0] grp_fu_269_p0;
reg   [31:0] grp_fu_269_p1;
reg   [31:0] grp_fu_273_p0;
reg   [31:0] grp_fu_273_p1;
wire   [8:0] tmp_26_fu_307_p4;
wire   [23:0] zext_ln35_12_fu_329_p1;
wire   [23:0] add_ln35_28_fu_339_p2;
wire    ap_block_pp0_stage1;
wire   [23:0] zext_ln33_fu_351_p1;
wire   [22:0] grp_fu_359_p1;
wire   [23:0] add_ln35_fu_365_p2;
wire    ap_block_pp0_stage14;
wire   [31:0] v9_fu_426_p2;
wire   [31:0] v9_fu_426_p4;
wire   [31:0] v9_fu_426_p6;
wire   [31:0] v9_fu_426_p8;
wire   [31:0] v9_fu_426_p9;
wire   [31:0] v9_15_fu_465_p2;
wire   [31:0] v9_15_fu_465_p4;
wire   [31:0] v9_15_fu_465_p6;
wire   [31:0] v9_15_fu_465_p8;
wire   [31:0] v9_15_fu_465_p9;
wire   [22:0] grp_fu_333_p2;
wire    ap_block_pp0_stage12;
wire   [23:0] grp_fu_359_p2;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage11_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v9_fu_426_p1;
wire   [2:0] v9_fu_426_p3;
wire  signed [2:0] v9_fu_426_p5;
wire  signed [2:0] v9_fu_426_p7;
wire   [2:0] v9_15_fu_465_p1;
wire   [2:0] v9_15_fu_465_p3;
wire  signed [2:0] v9_15_fu_465_p5;
wire  signed [2:0] v9_15_fu_465_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_96 = 32'd0;
#0 v8_5_fu_100 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U258(.clk(ap_clk),.reset(ap_rst),.din0(tmp_s_fu_317_p5),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_333_p2));
SgdLR_sw_urem_24ns_23ns_24_28_1 #(.ID( 1 ),.NUM_STAGE( 28 ),.din0_WIDTH( 24 ),.din1_WIDTH( 23 ),.dout_WIDTH( 24 ))
urem_24ns_23ns_24_28_1_U259(.clk(ap_clk),.reset(ap_rst),.din0(add_ln35_10_fu_354_p2),.din1(grp_fu_359_p1),.ce(1'b1),.dout(grp_fu_359_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U260(.din0(v9_fu_426_p2),.din1(v9_fu_426_p4),.din2(v9_fu_426_p6),.din3(v9_fu_426_p8),.def(v9_fu_426_p9),.sel(trunc_ln33_reg_587),.dout(v9_fu_426_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U261(.din0(v9_15_fu_465_p2),.din1(v9_15_fu_465_p4),.din2(v9_15_fu_465_p6),.din3(v9_15_fu_465_p8),.def(v9_15_fu_465_p9),.sel(trunc_ln33_reg_587),.dout(v9_15_fu_465_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage14),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage14)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_fu_96 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v12_fu_96 <= reg_277;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_5_fu_100 <= 11'd0;
    end else if (((tmp_reg_563 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v8_5_fu_100 <= add_ln33_fu_389_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln35_10_reg_582 <= icmp_ln35_10_fu_371_p2;
        icmp_ln35_10_reg_582_pp0_iter1_reg <= icmp_ln35_10_reg_582;
        v9_15_reg_643 <= v9_15_fu_465_p11;
        v9_reg_638 <= v9_fu_426_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln35_11_reg_572 <= icmp_ln35_11_fu_345_p2;
        icmp_ln35_11_reg_572_pp0_iter1_reg <= icmp_ln35_11_reg_572;
        tmp_reg_563 <= ap_sig_allocacmp_v8[32'd10];
        tmp_reg_563_pp0_iter1_reg <= tmp_reg_563;
        tmp_reg_563_pp0_iter2_reg <= tmp_reg_563_pp0_iter1_reg;
        v8_reg_555 <= ap_sig_allocacmp_v8;
        zext_ln33_2_cast_reg_550[22 : 0] <= zext_ln33_2_cast_fu_282_p1[22 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        lshr_ln29_5_reg_593 <= {{v8_reg_555[9:3]}};
        select_ln35_10_reg_678 <= select_ln35_10_fu_511_p3;
        trunc_ln33_reg_587 <= trunc_ln33_fu_377_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        reg_277 <= grp_fu_1655_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        select_ln35_11_reg_658 <= select_ln35_11_fu_494_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v11_15_reg_688 <= grp_fu_3793_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v11_reg_693 <= grp_fu_3793_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_563 == 1'd1) & (1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage14 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_563_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v8 = 11'd0;
    end else begin
        ap_sig_allocacmp_v8 = v8_5_fu_100;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_269_p0 = reg_277;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_269_p0 = v12_fu_96;
        end else begin
            grp_fu_269_p0 = 'bx;
        end
    end else begin
        grp_fu_269_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_269_p1 = v11_15_reg_688;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_269_p1 = v11_reg_693;
        end else begin
            grp_fu_269_p1 = 'bx;
        end
    end else begin
        grp_fu_269_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p0 = v9_reg_638;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_273_p0 = v9_15_reg_643;
    end else begin
        grp_fu_273_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_273_p1 = v10_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_273_p1 = v10_17_fu_507_p1;
    end else begin
        grp_fu_273_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_0_address0_local = zext_ln35_11_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_0_address0_local = zext_ln35_13_fu_488_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v0_1_address0_local = zext_ln35_11_fu_501_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v0_1_address0_local = zext_ln35_13_fu_488_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (tmp_reg_563_pp0_iter2_reg == 1'd1))) begin
        v6_71_out_ap_vld = 1'b1;
    end else begin
        v6_71_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln33_fu_389_p2 = (v8_reg_555 + 11'd2);
assign add_ln35_10_fu_354_p2 = (zext_ln33_fu_351_p1 + zext_ln33_2_cast_reg_550);
assign add_ln35_28_fu_339_p2 = ($signed(zext_ln35_12_fu_329_p1) + $signed(24'd14473216));
assign add_ln35_fu_365_p2 = ($signed(add_ln35_10_fu_354_p2) + $signed(24'd14473216));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage14;
assign ap_ready = ap_ready_sig;
assign grp_fu_1655_p_ce = 1'b1;
assign grp_fu_1655_p_din0 = grp_fu_269_p0;
assign grp_fu_1655_p_din1 = grp_fu_269_p1;
assign grp_fu_1655_p_opcode = 2'd0;
assign grp_fu_359_p1 = 24'd2304000;
assign grp_fu_3793_p_ce = 1'b1;
assign grp_fu_3793_p_din0 = grp_fu_273_p0;
assign grp_fu_3793_p_din1 = grp_fu_273_p1;
assign icmp_ln35_10_fu_371_p2 = ((add_ln35_fu_365_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln35_11_fu_345_p2 = ((add_ln35_28_fu_339_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign select_ln35_10_fu_511_p3 = ((icmp_ln35_10_reg_582_pp0_iter1_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln35_11_fu_494_p3 = ((icmp_ln35_11_reg_572_pp0_iter1_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign tmp_26_fu_307_p4 = {{ap_sig_allocacmp_v8[9:1]}};
assign tmp_fu_299_p3 = ap_sig_allocacmp_v8[32'd10];
assign tmp_s_fu_317_p5 = {{{{tmp_54}, {1'd1}}, {tmp_26_fu_307_p4}}, {1'd1}};
assign trunc_ln33_fu_377_p1 = v8_reg_555[2:0];
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v10_17_fu_507_p1 = select_ln35_11_reg_658;
assign v10_fu_518_p1 = select_ln35_10_reg_678;
assign v2_0_address0 = zext_ln29_fu_399_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = zext_ln29_fu_399_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_2_address0 = zext_ln29_fu_399_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_3_address0 = zext_ln29_fu_399_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_4_address0 = zext_ln29_fu_399_p1;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_5_address0 = zext_ln29_fu_399_p1;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_6_address0 = zext_ln29_fu_399_p1;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_7_address0 = zext_ln29_fu_399_p1;
assign v2_7_ce0 = v2_7_ce0_local;
assign v6_71_out = v12_fu_96;
assign v9_15_fu_465_p2 = v2_1_q0;
assign v9_15_fu_465_p4 = v2_3_q0;
assign v9_15_fu_465_p6 = v2_5_q0;
assign v9_15_fu_465_p8 = v2_7_q0;
assign v9_15_fu_465_p9 = 'bx;
assign v9_fu_426_p2 = v2_0_q0;
assign v9_fu_426_p4 = v2_2_q0;
assign v9_fu_426_p6 = v2_4_q0;
assign v9_fu_426_p8 = v2_6_q0;
assign v9_fu_426_p9 = 'bx;
assign zext_ln29_fu_399_p1 = lshr_ln29_5_reg_593;
assign zext_ln33_2_cast_fu_282_p1 = zext_ln33_2;
assign zext_ln33_fu_351_p1 = v8_reg_555;
assign zext_ln35_11_fu_501_p1 = grp_fu_359_p2;
assign zext_ln35_12_fu_329_p1 = tmp_s_fu_317_p5;
assign zext_ln35_13_fu_488_p1 = grp_fu_333_p2;
always @ (posedge ap_clk) begin
    zext_ln33_2_cast_reg_550[23] <= 1'b0;
end
endmodule 