
module ss_sort_ss_sort_Pipeline_hist_1_hist_21 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_0_q0,b_1_address0,b_1_ce0,b_1_q0,b_3_address0,b_3_ce0,b_3_q0,b_0_address0,b_0_ce0,b_0_q0,b_2_address0,b_2_ce0,b_2_q0,zext_ln50,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0,bucket_1_q0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_2_q0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_3_q0);  
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
output  [8:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
input  [31:0] bucket_0_q0;
output  [8:0] b_1_address0;
output   b_1_ce0;
input  [31:0] b_1_q0;
output  [8:0] b_3_address0;
output   b_3_ce0;
input  [31:0] b_3_q0;
output  [8:0] b_0_address0;
output   b_0_ce0;
input  [31:0] b_0_q0;
output  [8:0] b_2_address0;
output   b_2_ce0;
input  [31:0] b_2_q0;
input  [4:0] zext_ln50;
output  [8:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
input  [31:0] bucket_1_q0;
output  [8:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
input  [31:0] bucket_2_q0;
output  [8:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
input  [31:0] bucket_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln54_reg_536;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
wire   [31:0] zext_ln50_cast_fu_236_p1;
reg   [31:0] zext_ln50_cast_reg_530;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln54_fu_258_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [2:0] select_ln52_fu_284_p3;
reg   [2:0] select_ln52_reg_540;
wire   [8:0] empty_fu_314_p1;
reg   [8:0] empty_reg_546;
wire   [1:0] empty_23_fu_318_p1;
reg   [1:0] empty_23_reg_551;
reg   [1:0] empty_23_reg_551_pp0_iter1_reg;
wire   [31:0] select_ln57_fu_337_p3;
reg   [31:0] select_ln57_reg_576;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln57_1_fu_345_p3;
reg   [31:0] select_ln57_1_reg_581;
wire   [9:0] thr_add54_fu_356_p2;
reg   [9:0] thr_add54_reg_586;
wire    ap_block_pp0_stage3_11001;
wire   [1:0] trunc_ln57_fu_366_p1;
reg   [1:0] trunc_ln57_reg_591;
reg   [8:0] bucket_0_addr_reg_596;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [8:0] bucket_1_addr_reg_601;
reg   [8:0] bucket_2_addr_reg_606;
reg   [8:0] bucket_3_addr_reg_611;
reg   [8:0] lshr_ln52_3_reg_616;
wire   [31:0] tmp_5_fu_436_p11;
reg   [31:0] tmp_5_reg_621;
wire    ap_block_pp0_stage5_11001;
reg   [8:0] bucket_2_addr_4_reg_626;
reg   [8:0] bucket_1_addr_4_reg_631;
reg   [8:0] bucket_3_addr_11_reg_636;
reg   [8:0] bucket_0_addr_4_reg_641;
reg   [31:0] bucket_2_load_4_reg_646;
reg   [31:0] bucket_1_load_4_reg_651;
reg   [31:0] bucket_3_load_11_reg_656;
reg   [31:0] bucket_0_load_4_reg_661;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln54_fu_306_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln52_fu_396_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln52_1_fu_478_p1;
reg   [2:0] i_fu_82;
wire   [2:0] add_ln55_fu_468_p2;
wire    ap_loop_init;
reg   [9:0] blockID_1_fu_86;
wire   [9:0] select_ln54_fu_298_p3;
reg   [10:0] indvar_flatten6_fu_90;
wire   [10:0] add_ln54_fu_264_p2;
reg    b_1_ce0_local;
reg    b_3_ce0_local;
reg    b_0_ce0_local;
reg    b_2_ce0_local;
reg    bucket_0_ce0_local;
reg   [8:0] bucket_0_address0_local;
reg    bucket_0_we0_local;
reg   [31:0] bucket_0_d0_local;
wire   [31:0] add_ln58_fu_459_p2;
wire    ap_block_pp0_stage0;
wire   [31:0] add_ln58_1_fu_503_p2;
wire    ap_block_pp0_stage3;
reg    bucket_1_ce0_local;
reg   [8:0] bucket_1_address0_local;
reg    bucket_1_we0_local;
reg   [31:0] bucket_1_d0_local;
wire   [31:0] add_ln58_3_fu_491_p2;
reg    bucket_2_ce0_local;
reg   [8:0] bucket_2_address0_local;
reg    bucket_2_we0_local;
reg   [31:0] bucket_2_d0_local;
wire   [31:0] add_ln58_4_fu_485_p2;
reg    bucket_3_ce0_local;
reg   [8:0] bucket_3_address0_local;
reg    bucket_3_we0_local;
reg   [31:0] bucket_3_d0_local;
wire   [31:0] add_ln58_2_fu_497_p2;
wire   [0:0] tmp_fu_276_p3;
wire   [9:0] add_ln54_1_fu_292_p2;
wire    ap_block_pp0_stage2;
wire   [0:0] icmp_ln57_fu_332_p2;
wire   [9:0] blockID_1_cast_cast3_fu_353_p1;
wire   [31:0] ashr_ln57_fu_362_p2;
wire   [10:0] shl_ln57_2_fu_373_p3;
wire   [10:0] zext_ln55_fu_370_p1;
wire   [10:0] bucket_indx_fu_380_p2;
wire   [8:0] lshr_ln52_2_fu_386_p4;
wire   [31:0] ashr_ln57_1_fu_404_p2;
wire   [1:0] trunc_ln57_1_fu_408_p1;
wire   [10:0] shl_ln57_3_fu_412_p3;
wire   [10:0] bucket_indx_1_fu_420_p2;
wire   [31:0] tmp_5_fu_436_p9;
wire    ap_block_pp0_stage5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire  signed [1:0] tmp_5_fu_436_p1;
wire   [1:0] tmp_5_fu_436_p3;
wire   [1:0] tmp_5_fu_436_p5;
wire  signed [1:0] tmp_5_fu_436_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_82 = 3'd0;
#0 blockID_1_fu_86 = 10'd0;
#0 indvar_flatten6_fu_90 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ss_sort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U16(.din0(bucket_0_q0),.din1(bucket_1_q0),.din2(bucket_2_q0),.din3(bucket_3_q0),.def(tmp_5_fu_436_p9),.sel(empty_23_reg_551),.dout(tmp_5_fu_436_p11));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        blockID_1_fu_86 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln54_fu_258_p2 == 1'd0))) begin
        blockID_1_fu_86 <= select_ln54_fu_298_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_82 <= add_ln55_fu_468_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten6_fu_90 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln54_fu_258_p2 == 1'd0))) begin
        indvar_flatten6_fu_90 <= add_ln54_fu_264_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_addr_4_reg_641 <= zext_ln52_1_fu_478_p1;
        bucket_1_addr_4_reg_631 <= zext_ln52_1_fu_478_p1;
        bucket_2_addr_4_reg_626 <= zext_ln52_1_fu_478_p1;
        bucket_3_addr_11_reg_636 <= zext_ln52_1_fu_478_p1;
        empty_23_reg_551 <= empty_23_fu_318_p1;
        empty_23_reg_551_pp0_iter1_reg <= empty_23_reg_551;
        empty_reg_546 <= empty_fu_314_p1;
        icmp_ln54_reg_536 <= icmp_ln54_fu_258_p2;
        select_ln52_reg_540 <= select_ln52_fu_284_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_addr_reg_596 <= zext_ln52_fu_396_p1;
        bucket_1_addr_reg_601 <= zext_ln52_fu_396_p1;
        bucket_2_addr_reg_606 <= zext_ln52_fu_396_p1;
        bucket_3_addr_reg_611 <= zext_ln52_fu_396_p1;
        lshr_ln52_3_reg_616 <= {{bucket_indx_1_fu_420_p2[10:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bucket_0_load_4_reg_661 <= bucket_0_q0;
        bucket_1_load_4_reg_651 <= bucket_1_q0;
        bucket_2_load_4_reg_646 <= bucket_2_q0;
        bucket_3_load_11_reg_656 <= bucket_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln57_1_reg_581 <= select_ln57_1_fu_345_p3;
        select_ln57_reg_576 <= select_ln57_fu_337_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        thr_add54_reg_586 <= thr_add54_fu_356_p2;
        trunc_ln57_reg_591 <= trunc_ln57_fu_366_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        tmp_5_reg_621 <= tmp_5_fu_436_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln50_cast_reg_530[4 : 0] <= zext_ln50_cast_fu_236_p1[4 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln54_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_0_ce0_local = 1'b1;
    end else begin
        b_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_1_ce0_local = 1'b1;
    end else begin
        b_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_2_ce0_local = 1'b1;
    end else begin
        b_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_3_ce0_local = 1'b1;
    end else begin
        b_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_0_address0_local = bucket_0_addr_4_reg_641;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_0_address0_local = zext_ln52_1_fu_478_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_0_address0_local = bucket_0_addr_reg_596;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_0_address0_local = zext_ln52_fu_396_p1;
    end else begin
        bucket_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_0_d0_local = add_ln58_1_fu_503_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_0_d0_local = add_ln58_fu_459_p2;
        end else begin
            bucket_0_d0_local = 'bx;
        end
    end else begin
        bucket_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_23_reg_551_pp0_iter1_reg == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_23_reg_551 == 2'd3)))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_1_address0_local = bucket_1_addr_4_reg_631;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_1_address0_local = zext_ln52_1_fu_478_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_1_address0_local = bucket_1_addr_reg_601;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_1_address0_local = zext_ln52_fu_396_p1;
    end else begin
        bucket_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_1_d0_local = add_ln58_3_fu_491_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_1_d0_local = add_ln58_fu_459_p2;
        end else begin
            bucket_1_d0_local = 'bx;
        end
    end else begin
        bucket_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_23_reg_551_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_23_reg_551 == 2'd0)))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_2_address0_local = bucket_2_addr_4_reg_626;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_2_address0_local = zext_ln52_1_fu_478_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_2_address0_local = bucket_2_addr_reg_606;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_2_address0_local = zext_ln52_fu_396_p1;
    end else begin
        bucket_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_2_d0_local = add_ln58_4_fu_485_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_2_d0_local = add_ln58_fu_459_p2;
        end else begin
            bucket_2_d0_local = 'bx;
        end
    end else begin
        bucket_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_23_reg_551_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_23_reg_551 == 2'd1)))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        bucket_3_address0_local = bucket_3_addr_11_reg_636;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bucket_3_address0_local = zext_ln52_1_fu_478_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_3_address0_local = bucket_3_addr_reg_611;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        bucket_3_address0_local = zext_ln52_fu_396_p1;
    end else begin
        bucket_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            bucket_3_d0_local = add_ln58_2_fu_497_p2;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            bucket_3_d0_local = add_ln58_fu_459_p2;
        end else begin
            bucket_3_d0_local = 'bx;
        end
    end else begin
        bucket_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (empty_23_reg_551_pp0_iter1_reg == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_23_reg_551 == 2'd2)))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
assign add_ln54_1_fu_292_p2 = (blockID_1_fu_86 + 10'd1);
assign add_ln54_fu_264_p2 = (indvar_flatten6_fu_90 + 11'd1);
assign add_ln55_fu_468_p2 = (select_ln52_reg_540 + 3'd2);
assign add_ln58_1_fu_503_p2 = (bucket_0_load_4_reg_661 + 32'd1);
assign add_ln58_2_fu_497_p2 = (bucket_3_load_11_reg_656 + 32'd1);
assign add_ln58_3_fu_491_p2 = (bucket_1_load_4_reg_651 + 32'd1);
assign add_ln58_4_fu_485_p2 = (bucket_2_load_4_reg_646 + 32'd1);
assign add_ln58_fu_459_p2 = (tmp_5_reg_621 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign ashr_ln57_1_fu_404_p2 = $signed(select_ln57_1_reg_581) >>> zext_ln50_cast_reg_530;
assign ashr_ln57_fu_362_p2 = $signed(select_ln57_reg_576) >>> zext_ln50_cast_reg_530;
assign b_0_address0 = zext_ln54_fu_306_p1;
assign b_0_ce0 = b_0_ce0_local;
assign b_1_address0 = zext_ln54_fu_306_p1;
assign b_1_ce0 = b_1_ce0_local;
assign b_2_address0 = zext_ln54_fu_306_p1;
assign b_2_ce0 = b_2_ce0_local;
assign b_3_address0 = zext_ln54_fu_306_p1;
assign b_3_ce0 = b_3_ce0_local;
assign blockID_1_cast_cast3_fu_353_p1 = empty_reg_546;
assign bucket_0_address0 = bucket_0_address0_local;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = bucket_0_d0_local;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = bucket_1_address0_local;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = bucket_1_d0_local;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = bucket_2_address0_local;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = bucket_2_d0_local;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = bucket_3_address0_local;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = bucket_3_d0_local;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_indx_1_fu_420_p2 = (shl_ln57_3_fu_412_p3 + zext_ln55_fu_370_p1);
assign bucket_indx_fu_380_p2 = (shl_ln57_2_fu_373_p3 + zext_ln55_fu_370_p1);
assign empty_23_fu_318_p1 = select_ln54_fu_298_p3[1:0];
assign empty_fu_314_p1 = select_ln54_fu_298_p3[8:0];
assign icmp_ln54_fu_258_p2 = ((indvar_flatten6_fu_90 == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln57_fu_332_p2 = ((select_ln52_reg_540 == 3'd2) ? 1'b1 : 1'b0);
assign lshr_ln52_2_fu_386_p4 = {{bucket_indx_fu_380_p2[10:2]}};
assign select_ln52_fu_284_p3 = ((tmp_fu_276_p3[0:0] == 1'b1) ? 3'd0 : i_fu_82);
assign select_ln54_fu_298_p3 = ((tmp_fu_276_p3[0:0] == 1'b1) ? add_ln54_1_fu_292_p2 : blockID_1_fu_86);
assign select_ln57_1_fu_345_p3 = ((icmp_ln57_fu_332_p2[0:0] == 1'b1) ? b_3_q0 : b_1_q0);
assign select_ln57_fu_337_p3 = ((icmp_ln57_fu_332_p2[0:0] == 1'b1) ? b_2_q0 : b_0_q0);
assign shl_ln57_2_fu_373_p3 = {{trunc_ln57_reg_591}, {9'd0}};
assign shl_ln57_3_fu_412_p3 = {{trunc_ln57_1_fu_408_p1}, {9'd0}};
assign thr_add54_fu_356_p2 = (blockID_1_cast_cast3_fu_353_p1 + 10'd1);
assign tmp_5_fu_436_p9 = 'bx;
assign tmp_fu_276_p3 = i_fu_82[32'd2];
assign trunc_ln57_1_fu_408_p1 = ashr_ln57_1_fu_404_p2[1:0];
assign trunc_ln57_fu_366_p1 = ashr_ln57_fu_362_p2[1:0];
assign zext_ln50_cast_fu_236_p1 = zext_ln50;
assign zext_ln52_1_fu_478_p1 = lshr_ln52_3_reg_616;
assign zext_ln52_fu_396_p1 = lshr_ln52_2_fu_386_p4;
assign zext_ln54_fu_306_p1 = select_ln54_fu_298_p3;
assign zext_ln55_fu_370_p1 = thr_add54_reg_586;
always @ (posedge ap_clk) begin
    zext_ln50_cast_reg_530[31:5] <= 27'b000000000000000000000000000;
end
endmodule 
