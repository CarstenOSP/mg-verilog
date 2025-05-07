module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,alignedB_3_address0,alignedB_3_ce0,alignedB_3_we0,alignedB_3_d0,alignedB_2_address0,alignedB_2_ce0,alignedB_2_we0,alignedB_2_d0,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,ptr_0_address0,ptr_0_ce0,ptr_0_q0,ptr_1_address0,ptr_1_ce0,ptr_1_q0,ptr_2_address0,ptr_2_ce0,ptr_2_q0,ptr_3_address0,ptr_3_ce0,ptr_3_q0,b_str_idx_2_out,b_str_idx_2_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] alignedB_3_address0;
output   alignedB_3_ce0;
output   alignedB_3_we0;
output  [7:0] alignedB_3_d0;
output  [5:0] alignedB_2_address0;
output   alignedB_2_ce0;
output   alignedB_2_we0;
output  [7:0] alignedB_2_d0;
output  [5:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [5:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [5:0] alignedA_3_address0;
output   alignedA_3_ce0;
output   alignedA_3_we0;
output  [7:0] alignedA_3_d0;
output  [5:0] alignedA_2_address0;
output   alignedA_2_ce0;
output   alignedA_2_we0;
output  [7:0] alignedA_2_d0;
output  [5:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [5:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [4:0] SEQA_0_address0;
output   SEQA_0_ce0;
input  [7:0] SEQA_0_q0;
output  [4:0] SEQA_1_address0;
output   SEQA_1_ce0;
input  [7:0] SEQA_1_q0;
output  [4:0] SEQA_2_address0;
output   SEQA_2_ce0;
input  [7:0] SEQA_2_q0;
output  [4:0] SEQA_3_address0;
output   SEQA_3_ce0;
input  [7:0] SEQA_3_q0;
output  [4:0] SEQB_0_address0;
output   SEQB_0_ce0;
input  [7:0] SEQB_0_q0;
output  [4:0] SEQB_1_address0;
output   SEQB_1_ce0;
input  [7:0] SEQB_1_q0;
output  [4:0] SEQB_2_address0;
output   SEQB_2_ce0;
input  [7:0] SEQB_2_q0;
output  [4:0] SEQB_3_address0;
output   SEQB_3_ce0;
input  [7:0] SEQB_3_q0;
output  [12:0] ptr_0_address0;
output   ptr_0_ce0;
input  [7:0] ptr_0_q0;
output  [12:0] ptr_1_address0;
output   ptr_1_ce0;
input  [7:0] ptr_1_q0;
output  [12:0] ptr_2_address0;
output   ptr_2_ce0;
input  [7:0] ptr_2_q0;
output  [12:0] ptr_3_address0;
output   ptr_3_ce0;
input  [7:0] ptr_3_q0;
output  [31:0] b_str_idx_2_out;
output   b_str_idx_2_out_ap_vld;
reg ap_idle;
reg b_str_idx_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] or_ln62_fu_700_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_idx_1_reg_909;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_915;
reg   [0:0] or_ln62_reg_921;
wire   [1:0] trunc_ln64_fu_738_p1;
reg   [1:0] trunc_ln64_reg_925;
wire   [1:0] trunc_ln18_1_fu_774_p1;
reg   [1:0] trunc_ln18_1_reg_950;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln18_fu_788_p1;
reg   [63:0] zext_ln18_reg_954;
wire   [1:0] trunc_ln18_2_fu_800_p1;
reg   [1:0] trunc_ln18_2_reg_974;
wire   [1:0] trunc_ln18_3_fu_803_p1;
reg   [1:0] trunc_ln18_3_reg_979;
wire   [7:0] tmp_1_fu_806_p11;
reg   [7:0] tmp_1_reg_984;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln64_fu_752_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln71_fu_829_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln65_fu_842_p1;
wire   [63:0] zext_ln66_fu_850_p1;
wire   [63:0] zext_ln77_fu_868_p1;
wire   [5:0] alignedA_2_addr_1_gep_fu_487_p3;
wire   [5:0] alignedA_1_addr_1_gep_fu_503_p3;
wire   [5:0] alignedA_0_addr_1_gep_fu_519_p3;
wire   [5:0] alignedA_3_addr_1_gep_fu_535_p3;
wire   [5:0] alignedB_2_addr_gep_fu_551_p3;
wire   [5:0] alignedB_1_addr_gep_fu_559_p3;
wire   [5:0] alignedB_0_addr_gep_fu_567_p3;
wire   [5:0] alignedB_3_addr_gep_fu_575_p3;
reg   [63:0] a_str_idx_fu_104;
wire   [63:0] add_ln66_fu_768_p2;
wire    ap_loop_init;
reg   [31:0] b_idx_fu_108;
wire   [31:0] grp_fu_598_p2;
reg   [31:0] a_idx_fu_112;
wire   [31:0] grp_fu_583_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    ptr_0_ce0_local;
reg    ptr_1_ce0_local;
reg    ptr_2_ce0_local;
reg    ptr_3_ce0_local;
reg    SEQA_0_ce0_local;
reg   [4:0] SEQA_0_address0_local;
reg    SEQA_1_ce0_local;
reg   [4:0] SEQA_1_address0_local;
reg    SEQA_2_ce0_local;
reg   [4:0] SEQA_2_address0_local;
reg    SEQA_3_ce0_local;
reg   [4:0] SEQA_3_address0_local;
reg    alignedB_2_we0_local;
reg   [7:0] alignedB_2_d0_local;
reg    alignedB_2_ce0_local;
reg   [5:0] alignedB_2_address0_local;
wire   [7:0] grp_fu_640_p11;
reg    alignedB_1_we0_local;
reg   [7:0] alignedB_1_d0_local;
reg    alignedB_1_ce0_local;
reg   [5:0] alignedB_1_address0_local;
reg    alignedB_0_we0_local;
reg   [7:0] alignedB_0_d0_local;
reg    alignedB_0_ce0_local;
reg   [5:0] alignedB_0_address0_local;
reg    alignedB_3_we0_local;
reg   [7:0] alignedB_3_d0_local;
reg    alignedB_3_ce0_local;
reg   [5:0] alignedB_3_address0_local;
reg    SEQB_0_ce0_local;
reg   [4:0] SEQB_0_address0_local;
reg    SEQB_1_ce0_local;
reg   [4:0] SEQB_1_address0_local;
reg    SEQB_2_ce0_local;
reg   [4:0] SEQB_2_address0_local;
reg    SEQB_3_ce0_local;
reg   [4:0] SEQB_3_address0_local;
reg    alignedA_2_we0_local;
reg   [7:0] alignedA_2_d0_local;
reg    alignedA_2_ce0_local;
reg   [5:0] alignedA_2_address0_local;
wire   [7:0] grp_fu_613_p11;
reg    alignedA_1_we0_local;
reg   [7:0] alignedA_1_d0_local;
reg    alignedA_1_ce0_local;
reg   [5:0] alignedA_1_address0_local;
reg    alignedA_0_we0_local;
reg   [7:0] alignedA_0_d0_local;
reg    alignedA_0_ce0_local;
reg   [5:0] alignedA_0_address0_local;
reg    alignedA_3_we0_local;
reg   [7:0] alignedA_3_d0_local;
reg    alignedA_3_ce0_local;
reg   [5:0] alignedA_3_address0_local;
wire   [7:0] grp_fu_613_p9;
wire   [7:0] grp_fu_640_p9;
wire   [0:0] icmp_ln62_fu_688_p2;
wire   [0:0] icmp_ln62_1_fu_694_p2;
wire   [7:0] trunc_ln16_fu_714_p1;
wire   [14:0] p_shl_fu_718_p3;
wire   [14:0] trunc_ln18_5_fu_710_p1;
wire   [14:0] r_fu_726_p2;
wire   [14:0] trunc_ln18_4_fu_706_p1;
wire   [14:0] add_ln64_fu_732_p2;
wire   [12:0] lshr_ln8_fu_742_p4;
wire   [5:0] lshr_ln7_fu_778_p4;
wire   [7:0] tmp_1_fu_806_p9;
wire   [4:0] grp_fu_588_p4;
wire   [4:0] grp_fu_603_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_723;
reg    ap_condition_732;
reg    ap_condition_738;
reg    ap_condition_742;
reg    ap_condition_746;
reg    ap_condition_750;
reg    ap_condition_754;
reg    ap_condition_758;
reg    ap_condition_762;
reg    ap_condition_769;
reg    ap_condition_773;
reg    ap_condition_777;
reg    ap_condition_781;
wire   [1:0] grp_fu_613_p1;
wire  signed [1:0] grp_fu_613_p3;
wire  signed [1:0] grp_fu_613_p5;
wire   [1:0] grp_fu_613_p7;
wire   [1:0] grp_fu_640_p1;
wire  signed [1:0] grp_fu_640_p3;
wire  signed [1:0] grp_fu_640_p5;
wire   [1:0] grp_fu_640_p7;
wire   [1:0] tmp_1_fu_806_p1;
wire   [1:0] tmp_1_fu_806_p3;
wire  signed [1:0] tmp_1_fu_806_p5;
wire  signed [1:0] tmp_1_fu_806_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_str_idx_fu_104 = 64'd0;
#0 b_idx_fu_108 = 32'd0;
#0 a_idx_fu_112 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U37(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(grp_fu_613_p9),.sel(trunc_ln18_2_reg_974),.dout(grp_fu_613_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U38(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(grp_fu_640_p9),.sel(trunc_ln18_3_reg_979),.dout(grp_fu_640_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U39(.din0(ptr_0_q0),.din1(ptr_1_q0),.din2(ptr_2_q0),.din3(ptr_3_q0),.def(tmp_1_fu_806_p9),.sel(trunc_ln64_reg_925),.dout(tmp_1_fu_806_p11));
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_fu_112 <= 32'd128;
    end else if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        a_idx_fu_112 <= grp_fu_583_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_fu_104 <= 64'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (or_ln62_reg_921 == 1'd1))) begin
            a_str_idx_fu_104 <= add_ln66_fu_768_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_idx_fu_108 <= 32'd128;
    end else if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        b_idx_fu_108 <= grp_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_1_reg_915 <= a_idx_fu_112;
        b_idx_1_reg_909 <= b_idx_fu_108;
        or_ln62_reg_921 <= or_ln62_fu_700_p2;
        trunc_ln64_reg_925 <= trunc_ln64_fu_738_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_1_reg_984 <= tmp_1_fu_806_p11;
        trunc_ln18_1_reg_950 <= trunc_ln18_1_fu_774_p1;
        trunc_ln18_2_reg_974 <= trunc_ln18_2_fu_800_p1;
        trunc_ln18_3_reg_979 <= trunc_ln18_3_fu_803_p1;
        zext_ln18_reg_954[5 : 0] <= zext_ln18_fu_788_p1[5 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_723)) begin
        if ((tmp_1_fu_806_p11 == 8'd92)) begin
            SEQA_0_address0_local = zext_ln65_fu_842_p1;
        end else if ((tmp_1_fu_806_p11 == 8'd60)) begin
            SEQA_0_address0_local = zext_ln71_fu_829_p1;
        end else begin
            SEQA_0_address0_local = 'bx;
        end
    end else begin
        SEQA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_723)) begin
        if ((tmp_1_fu_806_p11 == 8'd92)) begin
            SEQA_1_address0_local = zext_ln65_fu_842_p1;
        end else if ((tmp_1_fu_806_p11 == 8'd60)) begin
            SEQA_1_address0_local = zext_ln71_fu_829_p1;
        end else begin
            SEQA_1_address0_local = 'bx;
        end
    end else begin
        SEQA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_723)) begin
        if ((tmp_1_fu_806_p11 == 8'd92)) begin
            SEQA_2_address0_local = zext_ln65_fu_842_p1;
        end else if ((tmp_1_fu_806_p11 == 8'd60)) begin
            SEQA_2_address0_local = zext_ln71_fu_829_p1;
        end else begin
            SEQA_2_address0_local = 'bx;
        end
    end else begin
        SEQA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_723)) begin
        if ((tmp_1_fu_806_p11 == 8'd92)) begin
            SEQA_3_address0_local = zext_ln65_fu_842_p1;
        end else if ((tmp_1_fu_806_p11 == 8'd60)) begin
            SEQA_3_address0_local = zext_ln71_fu_829_p1;
        end else begin
            SEQA_3_address0_local = 'bx;
        end
    end else begin
        SEQA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_723)) begin
        if ((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60))) begin
            SEQB_0_address0_local = zext_ln77_fu_868_p1;
        end else if ((tmp_1_fu_806_p11 == 8'd92)) begin
            SEQB_0_address0_local = zext_ln66_fu_850_p1;
        end else begin
            SEQB_0_address0_local = 'bx;
        end
    end else begin
        SEQB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_723)) begin
        if ((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60))) begin
            SEQB_1_address0_local = zext_ln77_fu_868_p1;
        end else if ((tmp_1_fu_806_p11 == 8'd92)) begin
            SEQB_1_address0_local = zext_ln66_fu_850_p1;
        end else begin
            SEQB_1_address0_local = 'bx;
        end
    end else begin
        SEQB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_723)) begin
        if ((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60))) begin
            SEQB_2_address0_local = zext_ln77_fu_868_p1;
        end else if ((tmp_1_fu_806_p11 == 8'd92)) begin
            SEQB_2_address0_local = zext_ln66_fu_850_p1;
        end else begin
            SEQB_2_address0_local = 'bx;
        end
    end else begin
        SEQB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        SEQB_2_ce0_local = 1'b1;
    end else begin
        SEQB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_723)) begin
        if ((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60))) begin
            SEQB_3_address0_local = zext_ln77_fu_868_p1;
        end else if ((tmp_1_fu_806_p11 == 8'd92)) begin
            SEQB_3_address0_local = zext_ln66_fu_850_p1;
        end else begin
            SEQB_3_address0_local = 'bx;
        end
    end else begin
        SEQB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1)))) begin
        SEQB_3_ce0_local = 1'b1;
    end else begin
        SEQB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_738)) begin
            alignedA_0_address0_local = alignedA_0_addr_1_gep_fu_519_p3;
        end else if ((1'b1 == ap_condition_732)) begin
            alignedA_0_address0_local = zext_ln18_reg_954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_0_address0_local = zext_ln18_fu_788_p1;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_0_d0_local = grp_fu_613_p11;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_0_d0_local = 8'd45;
    end else begin
        alignedA_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln18_1_fu_774_p1 == 2'd0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_746)) begin
            alignedA_1_address0_local = alignedA_1_addr_1_gep_fu_503_p3;
        end else if ((1'b1 == ap_condition_742)) begin
            alignedA_1_address0_local = zext_ln18_reg_954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_1_address0_local = zext_ln18_fu_788_p1;
        end else begin
            alignedA_1_address0_local = 'bx;
        end
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_1_d0_local = grp_fu_613_p11;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_1_d0_local = 8'd45;
    end else begin
        alignedA_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln18_1_fu_774_p1 == 2'd1) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_754)) begin
            alignedA_2_address0_local = alignedA_2_addr_1_gep_fu_487_p3;
        end else if ((1'b1 == ap_condition_750)) begin
            alignedA_2_address0_local = zext_ln18_reg_954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_2_address0_local = zext_ln18_fu_788_p1;
        end else begin
            alignedA_2_address0_local = 'bx;
        end
    end else begin
        alignedA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_2_d0_local = grp_fu_613_p11;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_2_d0_local = 8'd45;
    end else begin
        alignedA_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln18_1_fu_774_p1 == 2'd2) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_762)) begin
            alignedA_3_address0_local = alignedA_3_addr_1_gep_fu_535_p3;
        end else if ((1'b1 == ap_condition_758)) begin
            alignedA_3_address0_local = zext_ln18_reg_954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedA_3_address0_local = zext_ln18_fu_788_p1;
        end else begin
            alignedA_3_address0_local = 'bx;
        end
    end else begin
        alignedA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_3_d0_local = grp_fu_613_p11;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_3_d0_local = 8'd45;
    end else begin
        alignedA_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_fu_806_p11 == 8'd92) & ~(tmp_1_fu_806_p11 == 8'd60) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln18_1_fu_774_p1 == 2'd3) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_769)) begin
            alignedB_0_address0_local = alignedB_0_addr_gep_fu_567_p3;
        end else if ((1'b1 == ap_condition_738)) begin
            alignedB_0_address0_local = zext_ln18_reg_954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_0_address0_local = zext_ln18_fu_788_p1;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_0_d0_local = grp_fu_640_p11;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_0_d0_local = 8'd45;
    end else begin
        alignedB_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln18_1_fu_774_p1 == 2'd0) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_773)) begin
            alignedB_1_address0_local = alignedB_1_addr_gep_fu_559_p3;
        end else if ((1'b1 == ap_condition_746)) begin
            alignedB_1_address0_local = zext_ln18_reg_954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_1_address0_local = zext_ln18_fu_788_p1;
        end else begin
            alignedB_1_address0_local = 'bx;
        end
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_1_d0_local = grp_fu_640_p11;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_d0_local = 8'd45;
    end else begin
        alignedB_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln18_1_fu_774_p1 == 2'd1) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_777)) begin
            alignedB_2_address0_local = alignedB_2_addr_gep_fu_551_p3;
        end else if ((1'b1 == ap_condition_754)) begin
            alignedB_2_address0_local = zext_ln18_reg_954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_2_address0_local = zext_ln18_fu_788_p1;
        end else begin
            alignedB_2_address0_local = 'bx;
        end
    end else begin
        alignedB_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_2_ce0_local = 1'b1;
    end else begin
        alignedB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_2_d0_local = grp_fu_640_p11;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_2_d0_local = 8'd45;
    end else begin
        alignedB_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln18_1_fu_774_p1 == 2'd2) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_2_we0_local = 1'b1;
    end else begin
        alignedB_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if ((1'b1 == ap_condition_781)) begin
            alignedB_3_address0_local = alignedB_3_addr_gep_fu_575_p3;
        end else if ((1'b1 == ap_condition_762)) begin
            alignedB_3_address0_local = zext_ln18_reg_954;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            alignedB_3_address0_local = zext_ln18_fu_788_p1;
        end else begin
            alignedB_3_address0_local = 'bx;
        end
    end else begin
        alignedB_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_3_ce0_local = 1'b1;
    end else begin
        alignedB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_3_d0_local = grp_fu_640_p11;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_3_d0_local = 8'd45;
    end else begin
        alignedB_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_fu_806_p11 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln18_1_fu_774_p1 == 2'd3) & (or_ln62_reg_921 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1)))) begin
        alignedB_3_we0_local = 1'b1;
    end else begin
        alignedB_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_fu_700_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd0))) begin
        b_str_idx_2_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign SEQA_0_address0 = SEQA_0_address0_local;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = SEQA_1_address0_local;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQA_2_address0 = SEQA_2_address0_local;
assign SEQA_2_ce0 = SEQA_2_ce0_local;
assign SEQA_3_address0 = SEQA_3_address0_local;
assign SEQA_3_ce0 = SEQA_3_ce0_local;
assign SEQB_0_address0 = SEQB_0_address0_local;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = SEQB_1_address0_local;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = SEQB_2_address0_local;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = SEQB_3_address0_local;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign add_ln64_fu_732_p2 = (r_fu_726_p2 + trunc_ln18_4_fu_706_p1);
assign add_ln66_fu_768_p2 = (a_str_idx_fu_104 + 64'd1);
assign alignedA_0_addr_1_gep_fu_519_p3 = zext_ln18_reg_954;
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_d0 = alignedA_0_d0_local;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_1_addr_1_gep_fu_503_p3 = zext_ln18_reg_954;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_d0 = alignedA_1_d0_local;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_2_addr_1_gep_fu_487_p3 = zext_ln18_reg_954;
assign alignedA_2_address0 = alignedA_2_address0_local;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_d0 = alignedA_2_d0_local;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_3_addr_1_gep_fu_535_p3 = zext_ln18_reg_954;
assign alignedA_3_address0 = alignedA_3_address0_local;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_d0 = alignedA_3_d0_local;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedB_0_addr_gep_fu_567_p3 = zext_ln18_reg_954;
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_d0 = alignedB_0_d0_local;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_1_addr_gep_fu_559_p3 = zext_ln18_reg_954;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_d0 = alignedB_1_d0_local;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_2_addr_gep_fu_551_p3 = zext_ln18_reg_954;
assign alignedB_2_address0 = alignedB_2_address0_local;
assign alignedB_2_ce0 = alignedB_2_ce0_local;
assign alignedB_2_d0 = alignedB_2_d0_local;
assign alignedB_2_we0 = alignedB_2_we0_local;
assign alignedB_3_addr_gep_fu_575_p3 = zext_ln18_reg_954;
assign alignedB_3_address0 = alignedB_3_address0_local;
assign alignedB_3_ce0 = alignedB_3_ce0_local;
assign alignedB_3_d0 = alignedB_3_d0_local;
assign alignedB_3_we0 = alignedB_3_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_723 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_732 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_738 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_742 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_746 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_750 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_754 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_758 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_984 == 8'd60) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_762 = ((1'b0 == ap_block_pp0_stage1) & (tmp_1_reg_984 == 8'd92) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_769 = (~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd0) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_773 = (~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd1) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_777 = (~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd2) & (or_ln62_reg_921 == 1'd1));
end
always @ (*) begin
    ap_condition_781 = (~(tmp_1_reg_984 == 8'd92) & ~(tmp_1_reg_984 == 8'd60) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln18_1_reg_950 == 2'd3) & (or_ln62_reg_921 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign b_str_idx_2_out = a_str_idx_fu_104[31:0];
assign grp_fu_583_p2 = ($signed(a_idx_1_reg_915) + $signed(32'd4294967295));
assign grp_fu_588_p4 = {{grp_fu_583_p2[6:2]}};
assign grp_fu_598_p2 = ($signed(b_idx_1_reg_909) + $signed(32'd4294967295));
assign grp_fu_603_p4 = {{grp_fu_598_p2[6:2]}};
assign grp_fu_613_p9 = 'bx;
assign grp_fu_640_p9 = 'bx;
assign icmp_ln62_1_fu_694_p2 = (($signed(b_idx_fu_108) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_688_p2 = (($signed(a_idx_fu_112) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln7_fu_778_p4 = {{a_str_idx_fu_104[7:2]}};
assign lshr_ln8_fu_742_p4 = {{add_ln64_fu_732_p2[14:2]}};
assign or_ln62_fu_700_p2 = (icmp_ln62_fu_688_p2 | icmp_ln62_1_fu_694_p2);
assign p_shl_fu_718_p3 = {{trunc_ln16_fu_714_p1}, {7'd0}};
assign ptr_0_address0 = zext_ln64_fu_752_p1;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_1_address0 = zext_ln64_fu_752_p1;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_2_address0 = zext_ln64_fu_752_p1;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_3_address0 = zext_ln64_fu_752_p1;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign r_fu_726_p2 = (p_shl_fu_718_p3 + trunc_ln18_5_fu_710_p1);
assign tmp_1_fu_806_p9 = 'bx;
assign trunc_ln16_fu_714_p1 = b_idx_fu_108[7:0];
assign trunc_ln18_1_fu_774_p1 = a_str_idx_fu_104[1:0];
assign trunc_ln18_2_fu_800_p1 = a_idx_1_reg_915[1:0];
assign trunc_ln18_3_fu_803_p1 = b_idx_1_reg_909[1:0];
assign trunc_ln18_4_fu_706_p1 = a_idx_fu_112[14:0];
assign trunc_ln18_5_fu_710_p1 = b_idx_fu_108[14:0];
assign trunc_ln64_fu_738_p1 = add_ln64_fu_732_p2[1:0];
assign zext_ln18_fu_788_p1 = lshr_ln7_fu_778_p4;
assign zext_ln64_fu_752_p1 = lshr_ln8_fu_742_p4;
assign zext_ln65_fu_842_p1 = grp_fu_588_p4;
assign zext_ln66_fu_850_p1 = grp_fu_603_p4;
assign zext_ln71_fu_829_p1 = grp_fu_588_p4;
assign zext_ln77_fu_868_p1 = grp_fu_603_p4;
always @ (posedge ap_clk) begin
    zext_ln18_reg_954[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 