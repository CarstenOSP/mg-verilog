
module ss_sort_ss_sort_Pipeline_hist_11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_address1,bucket_2_ce1,bucket_2_q1,b_0_address0,b_0_ce0,b_0_q0,b_1_address0,b_1_ce0,b_1_q0,b_2_address0,b_2_ce0,b_2_q0,b_3_address0,b_3_ce0,b_3_q0,zext_ln50,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_address1,bucket_0_ce1,bucket_0_q1,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_address1,bucket_1_ce1,bucket_1_q1,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_address1,bucket_3_ce1,bucket_3_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
output  [8:0] bucket_2_address1;
output   bucket_2_ce1;
input  [31:0] bucket_2_q1;
output  [8:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [8:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [8:0] b_2_address0;
output   b_2_ce0;
input  [31:0] b_2_q0;
output  [8:0] b_3_address0;
output   b_3_ce0;
input  [31:0] b_3_q0;
input  [4:0] zext_ln50;
output  [8:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
output  [8:0] bucket_0_address1;
output   bucket_0_ce1;
input  [31:0] bucket_0_q1;
output  [8:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
output  [8:0] bucket_1_address1;
output   bucket_1_ce1;
input  [31:0] bucket_1_q1;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
output  [8:0] bucket_3_address1;
output   bucket_3_ce1;
input  [31:0] bucket_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln54_reg_602;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_298;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_302;
reg   [31:0] reg_306;
reg   [31:0] reg_310;
wire   [31:0] zext_ln50_cast_fu_342_p1;
reg   [31:0] zext_ln50_cast_reg_587;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] blockID_reg_595;
wire   [0:0] icmp_ln54_fu_354_p2;
reg   [0:0] icmp_ln54_reg_602_pp0_iter1_reg;
reg   [0:0] icmp_ln54_reg_602_pp0_iter2_reg;
reg   [31:0] b_0_load_reg_626;
reg   [31:0] b_1_load_reg_631;
reg   [31:0] b_2_load_reg_636;
reg   [31:0] b_3_load_reg_641;
wire   [9:0] thr_add_fu_375_p2;
reg   [9:0] thr_add_reg_646;
wire   [1:0] trunc_ln57_fu_385_p1;
reg   [1:0] trunc_ln57_reg_651;
wire   [1:0] empty_24_fu_394_p1;
reg   [1:0] empty_24_reg_656;
reg   [1:0] empty_24_reg_656_pp0_iter1_reg;
reg   [1:0] empty_24_reg_656_pp0_iter2_reg;
wire   [10:0] zext_ln57_fu_397_p1;
reg   [10:0] zext_ln57_reg_661;
reg   [8:0] bucket_0_addr_reg_668;
reg   [8:0] bucket_1_addr_reg_674;
reg   [8:0] bucket_2_addr_reg_680;
reg   [8:0] bucket_3_addr_5_reg_686;
wire   [1:0] trunc_ln57_1_fu_435_p1;
reg   [1:0] trunc_ln57_1_reg_692;
wire   [31:0] tmp_1_fu_444_p11;
reg   [31:0] tmp_1_reg_697;
wire   [1:0] trunc_ln57_2_fu_471_p1;
reg   [1:0] trunc_ln57_2_reg_702;
reg   [8:0] lshr_ln52_5_reg_707;
reg   [8:0] lshr_ln52_6_reg_712;
reg   [8:0] lshr_ln52_7_reg_717;
reg   [8:0] lshr_ln52_7_reg_717_pp0_iter2_reg;
reg   [8:0] bucket_2_addr_4_reg_722;
reg   [8:0] bucket_1_addr_4_reg_728;
reg   [8:0] bucket_3_addr_reg_734;
reg   [8:0] bucket_0_addr_4_reg_740;
reg   [8:0] bucket_2_addr_5_reg_746;
reg   [8:0] bucket_1_addr_5_reg_752;
reg   [8:0] bucket_3_addr_7_reg_758;
reg   [8:0] bucket_0_addr_5_reg_764;
reg   [8:0] bucket_2_addr_6_reg_770;
reg   [8:0] bucket_1_addr_6_reg_776;
reg   [8:0] bucket_3_addr_8_reg_782;
reg   [8:0] bucket_0_addr_6_reg_788;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln54_fu_360_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln52_fu_423_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln52_1_fu_559_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln52_2_fu_566_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln52_3_fu_573_p1;
reg   [9:0] blockID_1_fu_72;
wire   [9:0] add_ln54_fu_389_p2;
wire    ap_loop_init;
reg   [9:0] ap_sig_allocacmp_blockID;
reg    b_0_ce0_local;
reg    b_1_ce0_local;
reg    b_2_ce0_local;
reg    b_3_ce0_local;
reg    bucket_0_ce1_local;
reg   [8:0] bucket_0_address1_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln58_fu_475_p2;
reg    bucket_0_ce0_local;
reg   [8:0] bucket_0_address0_local;
wire   [31:0] grp_fu_335_p2;
reg    bucket_1_ce1_local;
reg   [8:0] bucket_1_address1_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
reg    bucket_1_ce0_local;
reg   [8:0] bucket_1_address0_local;
wire   [31:0] grp_fu_321_p2;
reg    bucket_2_ce1_local;
reg   [8:0] bucket_2_address1_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
reg    bucket_2_ce0_local;
reg   [8:0] bucket_2_address0_local;
wire   [31:0] grp_fu_314_p2;
reg    bucket_3_ce1_local;
reg   [8:0] bucket_3_address1_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
wire   [31:0] grp_fu_328_p2;
wire   [8:0] empty_fu_368_p1;
wire   [9:0] blockID_1_cast_cast3_fu_371_p1;
wire   [31:0] ashr_ln57_fu_381_p2;
wire   [10:0] shl_ln57_4_fu_400_p3;
wire   [10:0] bucket_indx_fu_407_p2;
wire   [8:0] lshr_ln52_4_fu_413_p4;
wire   [31:0] ashr_ln57_1_fu_431_p2;
wire   [31:0] tmp_1_fu_444_p9;
wire   [31:0] ashr_ln57_2_fu_467_p2;
wire   [10:0] shl_ln57_5_fu_484_p3;
wire   [10:0] bucket_indx_1_fu_491_p2;
wire   [10:0] shl_ln57_6_fu_506_p3;
wire   [10:0] bucket_indx_2_fu_513_p2;
wire   [31:0] ashr_ln57_3_fu_528_p2;
wire   [1:0] trunc_ln57_3_fu_532_p1;
wire   [10:0] shl_ln57_7_fu_536_p3;
wire   [10:0] bucket_indx_3_fu_544_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire  signed [1:0] tmp_1_fu_444_p1;
wire   [1:0] tmp_1_fu_444_p3;
wire   [1:0] tmp_1_fu_444_p5;
wire  signed [1:0] tmp_1_fu_444_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 blockID_1_fu_72 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U16(.din0(bucket_0_q1),.din1(bucket_1_q1),.din2(bucket_2_q1),.din3(bucket_3_q1),.def(tmp_1_fu_444_p9),.sel(empty_24_reg_656),.dout(tmp_1_fu_444_p11));
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_1_fu_72 <= 10'd0;
    end else if (((icmp_ln54_reg_602 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        blockID_1_fu_72 <= add_ln54_fu_389_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_load_reg_626 <= b_0_q0;
        b_1_load_reg_631 <= b_1_q0;
        b_2_load_reg_636 <= b_2_q0;
        b_3_load_reg_641 <= b_3_q0;
        bucket_0_addr_5_reg_764 <= zext_ln52_2_fu_566_p1;
        bucket_1_addr_5_reg_752 <= zext_ln52_2_fu_566_p1;
        bucket_2_addr_5_reg_746 <= zext_ln52_2_fu_566_p1;
        bucket_3_addr_7_reg_758 <= zext_ln52_2_fu_566_p1;
        lshr_ln52_5_reg_707 <= {{bucket_indx_1_fu_491_p2[10:2]}};
        lshr_ln52_6_reg_712 <= {{bucket_indx_2_fu_513_p2[10:2]}};
        lshr_ln52_7_reg_717 <= {{bucket_indx_3_fu_544_p2[10:2]}};
        lshr_ln52_7_reg_717_pp0_iter2_reg <= lshr_ln52_7_reg_717;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_reg_595 <= ap_sig_allocacmp_blockID;
        bucket_0_addr_6_reg_788 <= zext_ln52_3_fu_573_p1;
        bucket_1_addr_6_reg_776 <= zext_ln52_3_fu_573_p1;
        bucket_2_addr_6_reg_770 <= zext_ln52_3_fu_573_p1;
        bucket_3_addr_8_reg_782 <= zext_ln52_3_fu_573_p1;
        icmp_ln54_reg_602 <= icmp_ln54_fu_354_p2;
        icmp_ln54_reg_602_pp0_iter1_reg <= icmp_ln54_reg_602;
        icmp_ln54_reg_602_pp0_iter2_reg <= icmp_ln54_reg_602_pp0_iter1_reg;
        tmp_1_reg_697 <= tmp_1_fu_444_p11;
        trunc_ln57_2_reg_702 <= trunc_ln57_2_fu_471_p1;
        zext_ln50_cast_reg_587[4 : 0] <= zext_ln50_cast_fu_342_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_addr_4_reg_740 <= zext_ln52_1_fu_559_p1;
        bucket_1_addr_4_reg_728 <= zext_ln52_1_fu_559_p1;
        bucket_2_addr_4_reg_722 <= zext_ln52_1_fu_559_p1;
        bucket_3_addr_reg_734 <= zext_ln52_1_fu_559_p1;
        thr_add_reg_646 <= thr_add_fu_375_p2;
        trunc_ln57_reg_651 <= trunc_ln57_fu_385_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_addr_reg_668 <= zext_ln52_fu_423_p1;
        bucket_1_addr_reg_674 <= zext_ln52_fu_423_p1;
        bucket_2_addr_reg_680 <= zext_ln52_fu_423_p1;
        bucket_3_addr_5_reg_686 <= zext_ln52_fu_423_p1;
        empty_24_reg_656 <= empty_24_fu_394_p1;
        empty_24_reg_656_pp0_iter1_reg <= empty_24_reg_656;
        empty_24_reg_656_pp0_iter2_reg <= empty_24_reg_656_pp0_iter1_reg;
        trunc_ln57_1_reg_692 <= trunc_ln57_1_fu_435_p1;
        zext_ln57_reg_661[9 : 0] <= zext_ln57_fu_397_p1[9 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_298 <= bucket_2_q1;
        reg_302 <= bucket_1_q1;
        reg_306 <= bucket_3_q1;
        reg_310 <= bucket_0_q1;
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_602 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln54_reg_602_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_blockID = 10'd0;
    end else begin
        ap_sig_allocacmp_blockID = blockID_1_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address0_local = bucket_0_addr_6_reg_788;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = bucket_0_addr_5_reg_764;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_4_reg_740;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = bucket_0_addr_reg_668;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address1_local = zext_ln52_3_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address1_local = zext_ln52_2_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_address1_local = zext_ln52_1_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address1_local = zext_ln52_fu_423_p1;
    end else begin
        bucket_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_0_ce1_local = 1'b1;
    end else begin
        bucket_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_d0_local = grp_fu_335_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_d0_local = add_ln58_fu_475_p2;
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_24_reg_656_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (empty_24_reg_656 == 2'd3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (empty_24_reg_656_pp0_iter2_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_24_reg_656_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address0_local = bucket_1_addr_6_reg_776;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = bucket_1_addr_5_reg_752;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_4_reg_728;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = bucket_1_addr_reg_674;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address1_local = zext_ln52_3_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address1_local = zext_ln52_2_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_1_address1_local = zext_ln52_1_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address1_local = zext_ln52_fu_423_p1;
    end else begin
        bucket_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_1_ce1_local = 1'b1;
    end else begin
        bucket_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_d0_local = grp_fu_321_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_d0_local = add_ln58_fu_475_p2;
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_24_reg_656_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (empty_24_reg_656 == 2'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (empty_24_reg_656_pp0_iter2_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_24_reg_656_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address0_local = bucket_2_addr_6_reg_770;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = bucket_2_addr_5_reg_746;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = bucket_2_addr_4_reg_722;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address0_local = bucket_2_addr_reg_680;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address1_local = zext_ln52_3_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address1_local = zext_ln52_2_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_2_address1_local = zext_ln52_1_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address1_local = zext_ln52_fu_423_p1;
    end else begin
        bucket_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_2_ce1_local = 1'b1;
    end else begin
        bucket_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_d0_local = grp_fu_314_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_d0_local = add_ln58_fu_475_p2;
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_24_reg_656_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (empty_24_reg_656 == 2'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (empty_24_reg_656_pp0_iter2_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_24_reg_656_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address0_local = bucket_3_addr_8_reg_782;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = bucket_3_addr_7_reg_758;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_reg_734;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = bucket_3_addr_5_reg_686;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address1_local = zext_ln52_3_fu_573_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address1_local = zext_ln52_2_fu_566_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_3_address1_local = zext_ln52_1_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address1_local = zext_ln52_fu_423_p1;
    end else begin
        bucket_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_3_ce1_local = 1'b1;
    end else begin
        bucket_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_d0_local = grp_fu_328_p2;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_d0_local = add_ln58_fu_475_p2;
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_24_reg_656_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (empty_24_reg_656 == 2'd2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (empty_24_reg_656_pp0_iter2_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_24_reg_656_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln54_fu_389_p2 = (blockID_reg_595 + 10'd1);
assign add_ln58_fu_475_p2 = (tmp_1_reg_697 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_1_fu_431_p2 = $signed(b_1_load_reg_631) >>> zext_ln50_cast_reg_587;
assign ashr_ln57_2_fu_467_p2 = $signed(b_2_load_reg_636) >>> zext_ln50_cast_reg_587;
assign ashr_ln57_3_fu_528_p2 = $signed(b_3_load_reg_641) >>> zext_ln50_cast_reg_587;
assign ashr_ln57_fu_381_p2 = $signed(b_0_load_reg_626) >>> zext_ln50_cast_reg_587;
assign b_0_address0 = zext_ln54_fu_360_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_1_address0 = zext_ln54_fu_360_p1;
assign b_1_ce0 = b_1_ce0_local;
assign b_2_address0 = zext_ln54_fu_360_p1;
assign b_2_ce0 = b_2_ce0_local;
assign b_3_address0 = zext_ln54_fu_360_p1;
assign b_3_ce0 = b_3_ce0_local;
assign blockID_1_cast_cast3_fu_371_p1 = empty_fu_368_p1;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_address1 = bucket_0_address1_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_ce1 = bucket_0_ce1_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_address1 = bucket_1_address1_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_ce1 = bucket_1_ce1_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_address1 = bucket_2_address1_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_ce1 = bucket_2_ce1_local;
assign bucket_2_d0 = bucket_2_d0_local;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_address1 = bucket_3_address1_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_ce1 = bucket_3_ce1_local;
assign bucket_3_d0 = bucket_3_d0_local;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_indx_1_fu_491_p2 = (shl_ln57_5_fu_484_p3 + zext_ln57_reg_661);
assign bucket_indx_2_fu_513_p2 = (shl_ln57_6_fu_506_p3 + zext_ln57_reg_661);
assign bucket_indx_3_fu_544_p2 = (shl_ln57_7_fu_536_p3 + zext_ln57_reg_661);
assign bucket_indx_fu_407_p2 = (shl_ln57_4_fu_400_p3 + zext_ln57_fu_397_p1);
assign empty_24_fu_394_p1 = blockID_reg_595[1:0];
assign empty_fu_368_p1 = blockID_reg_595[8:0];
assign grp_fu_314_p2 = (reg_298 + 32'd1);
assign grp_fu_321_p2 = (reg_302 + 32'd1);
assign grp_fu_328_p2 = (reg_306 + 32'd1);
assign grp_fu_335_p2 = (reg_310 + 32'd1);
assign icmp_ln54_fu_354_p2 = ((ap_sig_allocacmp_blockID == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln52_4_fu_413_p4 = {{bucket_indx_fu_407_p2[10:2]}};
assign shl_ln57_4_fu_400_p3 = {{trunc_ln57_reg_651}, {9'd0}};
assign shl_ln57_5_fu_484_p3 = {{trunc_ln57_1_reg_692}, {9'd0}};
assign shl_ln57_6_fu_506_p3 = {{trunc_ln57_2_reg_702}, {9'd0}};
assign shl_ln57_7_fu_536_p3 = {{trunc_ln57_3_fu_532_p1}, {9'd0}};
assign thr_add_fu_375_p2 = (blockID_1_cast_cast3_fu_371_p1 + 10'd1);
assign tmp_1_fu_444_p9 = 'bx;
assign trunc_ln57_1_fu_435_p1 = ashr_ln57_1_fu_431_p2[1:0];
assign trunc_ln57_2_fu_471_p1 = ashr_ln57_2_fu_467_p2[1:0];
assign trunc_ln57_3_fu_532_p1 = ashr_ln57_3_fu_528_p2[1:0];
assign trunc_ln57_fu_385_p1 = ashr_ln57_fu_381_p2[1:0];
assign zext_ln50_cast_fu_342_p1 = zext_ln50;
assign zext_ln52_1_fu_559_p1 = lshr_ln52_5_reg_707;
assign zext_ln52_2_fu_566_p1 = lshr_ln52_6_reg_712;
assign zext_ln52_3_fu_573_p1 = lshr_ln52_7_reg_717_pp0_iter2_reg;
assign zext_ln52_fu_423_p1 = lshr_ln52_4_fu_413_p4;
assign zext_ln54_fu_360_p1 = ap_sig_allocacmp_blockID;
assign zext_ln57_fu_397_p1 = thr_add_reg_646;
always @ (posedge ap_clk) begin
    zext_ln50_cast_reg_587[31:5] <= 27'b000000000000000000000000000;
    zext_ln57_reg_661[10] <= 1'b0;
end
endmodule 
