module needwun_needwun_Pipeline_fill_out_fill_in (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ptr_0_address0,ptr_0_ce0,ptr_0_we0,ptr_0_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_q0,M_0_address1,M_0_ce1,M_0_q1,SEQB_0_address0,SEQB_0_ce0,SEQB_0_q0,SEQB_1_address0,SEQB_1_ce0,SEQB_1_q0,SEQB_2_address0,SEQB_2_ce0,SEQB_2_q0,SEQB_3_address0,SEQB_3_ce0,SEQB_3_q0,ptr_3_address0,ptr_3_ce0,ptr_3_we0,ptr_3_d0,ptr_2_address0,ptr_2_ce0,ptr_2_we0,ptr_2_d0,ptr_1_address0,ptr_1_ce0,ptr_1_we0,ptr_1_d0,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_3_q0,M_3_address1,M_3_ce1,M_3_q1,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_2_q0,M_2_address1,M_2_ce1,M_2_q1,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_q0,M_1_address1,M_1_ce1,M_1_q1,SEQA_0_address0,SEQA_0_ce0,SEQA_0_q0,SEQA_1_address0,SEQA_1_ce0,SEQA_1_q0,SEQA_2_address0,SEQA_2_ce0,SEQA_2_q0,SEQA_3_address0,SEQA_3_ce0,SEQA_3_q0); 
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
output  [12:0] ptr_0_address0;
output   ptr_0_ce0;
output   ptr_0_we0;
output  [7:0] ptr_0_d0;
output  [12:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
input  [31:0] M_0_q0;
output  [12:0] M_0_address1;
output   M_0_ce1;
input  [31:0] M_0_q1;
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
output  [12:0] ptr_3_address0;
output   ptr_3_ce0;
output   ptr_3_we0;
output  [7:0] ptr_3_d0;
output  [12:0] ptr_2_address0;
output   ptr_2_ce0;
output   ptr_2_we0;
output  [7:0] ptr_2_d0;
output  [12:0] ptr_1_address0;
output   ptr_1_ce0;
output   ptr_1_we0;
output  [7:0] ptr_1_d0;
output  [12:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
input  [31:0] M_3_q0;
output  [12:0] M_3_address1;
output   M_3_ce1;
input  [31:0] M_3_q1;
output  [12:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
input  [31:0] M_2_q0;
output  [12:0] M_2_address1;
output   M_2_ce1;
input  [31:0] M_2_q1;
output  [12:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
input  [31:0] M_1_q0;
output  [12:0] M_1_address1;
output   M_1_ce1;
input  [31:0] M_1_q1;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_988;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln28_fu_536_p2;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] a_idx_2_load_reg_992;
wire   [0:0] icmp_ln29_fu_554_p2;
reg   [0:0] icmp_ln29_reg_997;
wire   [7:0] select_ln28_fu_566_p3;
reg   [7:0] select_ln28_reg_1002;
wire   [1:0] trunc_ln28_fu_574_p1;
reg   [1:0] trunc_ln28_reg_1008;
reg   [4:0] tmp_s_reg_1013;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] trunc_ln29_fu_647_p1;
reg   [1:0] trunc_ln29_reg_1038;
wire   [1:0] trunc_ln39_fu_685_p1;
reg   [1:0] trunc_ln39_reg_1063;
reg   [1:0] trunc_ln39_reg_1063_pp0_iter1_reg;
reg   [12:0] lshr_ln3_reg_1070;
reg   [12:0] lshr_ln4_reg_1075;
reg   [12:0] lshr_ln5_reg_1080;
reg   [12:0] lshr_ln6_reg_1085;
wire   [0:0] icmp_ln30_fu_804_p2;
reg   [0:0] icmp_ln30_reg_1090;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_3_fu_831_p11;
reg   [31:0] tmp_3_reg_1155;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_4_fu_854_p11;
reg   [31:0] tmp_4_reg_1160;
wire   [31:0] tmp_5_fu_877_p11;
reg   [31:0] tmp_5_reg_1165;
wire   [31:0] up_left_fu_907_p2;
reg   [31:0] up_left_reg_1170;
wire   [31:0] up_fu_912_p2;
reg   [31:0] up_reg_1176;
wire   [31:0] left_fu_917_p2;
reg   [31:0] left_reg_1181;
wire   [31:0] select_ln43_fu_928_p3;
reg   [31:0] select_ln43_reg_1186;
wire   [63:0] zext_ln45_fu_950_p1;
reg   [63:0] zext_ln45_reg_1192;
wire   [0:0] icmp_ln46_fu_957_p2;
reg   [0:0] icmp_ln46_reg_1208;
wire   [0:0] icmp_ln48_fu_962_p2;
reg   [0:0] icmp_ln48_reg_1212;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast15_fu_617_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln30_1_fu_671_p1;
wire   [63:0] zext_ln39_fu_810_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_fu_817_p1;
wire   [63:0] zext_ln41_fu_824_p1;
wire   [12:0] ptr_2_addr_gep_fu_446_p3;
wire   [12:0] ptr_1_addr_gep_fu_455_p3;
wire   [12:0] ptr_0_addr_gep_fu_464_p3;
wire   [12:0] ptr_3_addr_gep_fu_473_p3;
wire   [12:0] ptr_2_addr_1_gep_fu_482_p3;
wire   [12:0] ptr_1_addr_1_gep_fu_491_p3;
wire   [12:0] ptr_0_addr_1_gep_fu_500_p3;
wire   [12:0] ptr_3_addr_1_gep_fu_509_p3;
reg   [7:0] a_idx_2_fu_110;
wire   [7:0] add_ln29_fu_747_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_a_idx_2_load;
wire    ap_block_pp0_stage0;
reg   [7:0] b_idx_1_fu_114;
reg   [7:0] ap_sig_allocacmp_b_idx_1_load;
reg   [14:0] indvar_flatten_fu_118;
wire   [14:0] add_ln28_fu_542_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten_load;
reg    SEQB_0_ce0_local;
reg    SEQB_1_ce0_local;
reg    SEQB_2_ce0_local;
reg    SEQB_3_ce0_local;
reg    SEQA_0_ce0_local;
reg    SEQA_1_ce0_local;
reg    SEQA_2_ce0_local;
reg    SEQA_3_ce0_local;
reg    M_0_ce0_local;
reg   [12:0] M_0_address0_local;
reg    M_0_ce1_local;
reg    M_0_we0_local;
wire   [31:0] max_fu_940_p3;
reg    M_1_ce0_local;
reg   [12:0] M_1_address0_local;
reg    M_1_ce1_local;
reg    M_1_we0_local;
reg    M_2_ce0_local;
reg   [12:0] M_2_address0_local;
reg    M_2_ce1_local;
reg    M_2_we0_local;
reg    M_3_ce0_local;
reg   [12:0] M_3_address0_local;
reg    M_3_ce1_local;
reg    M_3_we0_local;
reg    ptr_2_we0_local;
reg   [7:0] ptr_2_d0_local;
reg    ptr_2_ce0_local;
reg   [12:0] ptr_2_address0_local;
reg    ptr_1_we0_local;
reg   [7:0] ptr_1_d0_local;
reg    ptr_1_ce0_local;
reg   [12:0] ptr_1_address0_local;
reg    ptr_0_we0_local;
reg   [7:0] ptr_0_d0_local;
reg    ptr_0_ce0_local;
reg   [12:0] ptr_0_address0_local;
reg    ptr_3_we0_local;
reg   [7:0] ptr_3_d0_local;
reg    ptr_3_ce0_local;
reg   [12:0] ptr_3_address0_local;
wire   [7:0] add_ln28_1_fu_560_p2;
wire   [6:0] trunc_ln28_1_fu_578_p1;
wire   [6:0] empty_fu_582_p2;
wire   [14:0] p_shl_fu_624_p3;
wire   [14:0] b_idx_1_cast4_fu_614_p1;
wire   [14:0] empty_18_fu_631_p2;
wire   [7:0] select_ln17_fu_608_p3;
wire   [7:0] add_ln30_fu_651_p2;
wire   [4:0] lshr_ln2_fu_661_p4;
wire   [14:0] zext_ln29_fu_643_p1;
wire   [14:0] add_ln39_fu_679_p2;
wire   [14:0] zext_ln30_fu_657_p1;
wire   [14:0] empty_19_fu_637_p2;
wire   [14:0] add_ln39_1_fu_689_p2;
wire   [14:0] add_ln40_fu_705_p2;
wire   [14:0] add_ln41_fu_721_p2;
wire   [7:0] tmp_fu_758_p9;
wire   [7:0] tmp_2_fu_781_p9;
wire   [7:0] tmp_2_fu_781_p11;
wire   [7:0] tmp_fu_758_p11;
wire   [31:0] tmp_3_fu_831_p9;
wire    ap_block_pp0_stage3;
wire   [31:0] tmp_4_fu_854_p9;
wire   [31:0] tmp_5_fu_877_p9;
wire   [31:0] select_ln39_fu_900_p3;
wire   [0:0] icmp_ln43_fu_922_p2;
wire   [0:0] icmp_ln43_1_fu_936_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_827;
reg    ap_condition_832;
reg    ap_condition_835;
reg    ap_condition_838;
wire   [1:0] tmp_fu_758_p1;
wire  signed [1:0] tmp_fu_758_p3;
wire  signed [1:0] tmp_fu_758_p5;
wire   [1:0] tmp_fu_758_p7;
wire   [1:0] tmp_2_fu_781_p1;
wire  signed [1:0] tmp_2_fu_781_p3;
wire  signed [1:0] tmp_2_fu_781_p5;
wire   [1:0] tmp_2_fu_781_p7;
wire  signed [1:0] tmp_3_fu_831_p1;
wire  signed [1:0] tmp_3_fu_831_p3;
wire   [1:0] tmp_3_fu_831_p5;
wire   [1:0] tmp_3_fu_831_p7;
wire   [1:0] tmp_4_fu_854_p1;
wire  signed [1:0] tmp_4_fu_854_p3;
wire  signed [1:0] tmp_4_fu_854_p5;
wire   [1:0] tmp_4_fu_854_p7;
wire   [1:0] tmp_5_fu_877_p1;
wire  signed [1:0] tmp_5_fu_877_p3;
wire  signed [1:0] tmp_5_fu_877_p5;
wire   [1:0] tmp_5_fu_877_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_idx_2_fu_110 = 8'd0;
#0 b_idx_1_fu_114 = 8'd0;
#0 indvar_flatten_fu_118 = 15'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U9(.din0(SEQB_0_q0),.din1(SEQB_1_q0),.din2(SEQB_2_q0),.din3(SEQB_3_q0),.def(tmp_fu_758_p9),.sel(trunc_ln28_reg_1008),.dout(tmp_fu_758_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 8 ),.CASE1( 2'h2 ),.din1_WIDTH( 8 ),.CASE2( 2'h3 ),.din2_WIDTH( 8 ),.CASE3( 2'h0 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U10(.din0(SEQA_0_q0),.din1(SEQA_1_q0),.din2(SEQA_2_q0),.din3(SEQA_3_q0),.def(tmp_2_fu_781_p9),.sel(trunc_ln29_reg_1038),.dout(tmp_2_fu_781_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U11(.din0(M_0_q0),.din1(M_1_q0),.din2(M_2_q0),.din3(M_3_q0),.def(tmp_3_fu_831_p9),.sel(trunc_ln39_reg_1063),.dout(tmp_3_fu_831_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(M_0_q1),.din1(M_1_q1),.din2(M_2_q1),.din3(M_3_q1),.def(tmp_4_fu_854_p9),.sel(trunc_ln39_reg_1063),.dout(tmp_4_fu_854_p11));
(* dissolve_hierarchy = "yes" *) needwun_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U13(.din0(M_0_q0),.din1(M_1_q0),.din2(M_2_q0),.din3(M_3_q0),.def(tmp_5_fu_877_p9),.sel(trunc_ln39_reg_1063),.dout(tmp_5_fu_877_p11));
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_fu_110 <= 8'd1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_2_fu_110 <= add_ln29_fu_747_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_536_p2 == 1'd0))) begin
            b_idx_1_fu_114 <= select_ln28_fu_566_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            b_idx_1_fu_114 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln28_fu_536_p2 == 1'd0))) begin
            indvar_flatten_fu_118 <= add_ln28_fu_542_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_118 <= 15'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_idx_2_load_reg_992 <= ap_sig_allocacmp_a_idx_2_load;
        icmp_ln28_reg_988 <= icmp_ln28_fu_536_p2;
        icmp_ln29_reg_997 <= icmp_ln29_fu_554_p2;
        left_reg_1181 <= left_fu_917_p2;
        select_ln28_reg_1002 <= select_ln28_fu_566_p3;
        select_ln43_reg_1186 <= select_ln43_fu_928_p3;
        tmp_s_reg_1013 <= {{empty_fu_582_p2[6:2]}};
        trunc_ln28_reg_1008 <= trunc_ln28_fu_574_p1;
        up_left_reg_1170 <= up_left_fu_907_p2;
        up_reg_1176 <= up_fu_912_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln30_reg_1090 <= icmp_ln30_fu_804_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln46_reg_1208 <= icmp_ln46_fu_957_p2;
        icmp_ln48_reg_1212 <= icmp_ln48_fu_962_p2;
        lshr_ln3_reg_1070 <= {{add_ln39_1_fu_689_p2[14:2]}};
        lshr_ln4_reg_1075 <= {{add_ln40_fu_705_p2[14:2]}};
        lshr_ln5_reg_1080 <= {{add_ln41_fu_721_p2[14:2]}};
        lshr_ln6_reg_1085 <= {{add_ln39_fu_679_p2[14:2]}};
        trunc_ln29_reg_1038 <= trunc_ln29_fu_647_p1;
        trunc_ln39_reg_1063 <= trunc_ln39_fu_685_p1;
        trunc_ln39_reg_1063_pp0_iter1_reg <= trunc_ln39_reg_1063;
        zext_ln45_reg_1192[12 : 0] <= zext_ln45_fu_950_p1[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_3_reg_1155 <= tmp_3_fu_831_p11;
        tmp_4_reg_1160 <= tmp_4_fu_854_p11;
        tmp_5_reg_1165 <= tmp_5_fu_877_p11;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_address0_local = zext_ln45_fu_950_p1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln41_fu_824_p1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_address0_local = zext_ln39_fu_810_p1;
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln45_fu_950_p1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln41_fu_824_p1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_address0_local = zext_ln39_fu_810_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_address0_local = zext_ln45_fu_950_p1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln41_fu_824_p1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_address0_local = zext_ln39_fu_810_p1;
    end else begin
        M_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_2_ce1_local = 1'b1;
    end else begin
        M_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063 == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_address0_local = zext_ln45_fu_950_p1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln41_fu_824_p1;
    end else if (((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_address0_local = zext_ln39_fu_810_p1;
    end else begin
        M_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln28_reg_988 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln39_reg_1063 == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        M_3_ce1_local = 1'b1;
    end else begin
        M_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063 == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_0_ce0_local = 1'b1;
    end else begin
        SEQA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_1_ce0_local = 1'b1;
    end else begin
        SEQA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_2_ce0_local = 1'b1;
    end else begin
        SEQA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQA_3_ce0_local = 1'b1;
    end else begin
        SEQA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_0_ce0_local = 1'b1;
    end else begin
        SEQB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_1_ce0_local = 1'b1;
    end else begin
        SEQB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_2_ce0_local = 1'b1;
    end else begin
        SEQB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        SEQB_3_ce0_local = 1'b1;
    end else begin
        SEQB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_988 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_a_idx_2_load = 8'd1;
    end else begin
        ap_sig_allocacmp_a_idx_2_load = a_idx_2_fu_110;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_b_idx_1_load = 8'd1;
    end else begin
        ap_sig_allocacmp_b_idx_1_load = b_idx_1_fu_114;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_118;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_827)) begin
        if ((icmp_ln46_reg_1208 == 1'd1)) begin
            ptr_0_address0_local = ptr_0_addr_1_gep_fu_500_p3;
        end else if (((icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_0_address0_local = ptr_0_addr_gep_fu_464_p3;
        end else if (((icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_0_address0_local = zext_ln45_reg_1192;
        end else begin
            ptr_0_address0_local = 'bx;
        end
    end else begin
        ptr_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_reg_1208 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_0_ce0_local = 1'b1;
    end else begin
        ptr_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_827)) begin
        if ((icmp_ln46_reg_1208 == 1'd1)) begin
            ptr_0_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_0_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_0_d0_local = 8'd92;
        end else begin
            ptr_0_d0_local = 'bx;
        end
    end else begin
        ptr_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_reg_1208 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_0_we0_local = 1'b1;
    end else begin
        ptr_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_832)) begin
        if ((icmp_ln46_reg_1208 == 1'd1)) begin
            ptr_1_address0_local = ptr_1_addr_1_gep_fu_491_p3;
        end else if (((icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_1_address0_local = ptr_1_addr_gep_fu_455_p3;
        end else if (((icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_1_address0_local = zext_ln45_reg_1192;
        end else begin
            ptr_1_address0_local = 'bx;
        end
    end else begin
        ptr_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_reg_1208 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_1_ce0_local = 1'b1;
    end else begin
        ptr_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_832)) begin
        if ((icmp_ln46_reg_1208 == 1'd1)) begin
            ptr_1_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_1_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_1_d0_local = 8'd92;
        end else begin
            ptr_1_d0_local = 'bx;
        end
    end else begin
        ptr_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_reg_1208 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_1_we0_local = 1'b1;
    end else begin
        ptr_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_835)) begin
        if ((icmp_ln46_reg_1208 == 1'd1)) begin
            ptr_2_address0_local = ptr_2_addr_1_gep_fu_482_p3;
        end else if (((icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_2_address0_local = ptr_2_addr_gep_fu_446_p3;
        end else if (((icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_2_address0_local = zext_ln45_reg_1192;
        end else begin
            ptr_2_address0_local = 'bx;
        end
    end else begin
        ptr_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_reg_1208 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_2_ce0_local = 1'b1;
    end else begin
        ptr_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_835)) begin
        if ((icmp_ln46_reg_1208 == 1'd1)) begin
            ptr_2_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_2_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_2_d0_local = 8'd92;
        end else begin
            ptr_2_d0_local = 'bx;
        end
    end else begin
        ptr_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_reg_1208 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_2_we0_local = 1'b1;
    end else begin
        ptr_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_838)) begin
        if ((icmp_ln46_reg_1208 == 1'd1)) begin
            ptr_3_address0_local = ptr_3_addr_1_gep_fu_509_p3;
        end else if (((icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_3_address0_local = ptr_3_addr_gep_fu_473_p3;
        end else if (((icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_3_address0_local = zext_ln45_reg_1192;
        end else begin
            ptr_3_address0_local = 'bx;
        end
    end else begin
        ptr_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_reg_1208 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_3_ce0_local = 1'b1;
    end else begin
        ptr_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_838)) begin
        if ((icmp_ln46_reg_1208 == 1'd1)) begin
            ptr_3_d0_local = 8'd60;
        end else if (((icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_3_d0_local = 8'd94;
        end else if (((icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0))) begin
            ptr_3_d0_local = 8'd92;
        end else begin
            ptr_3_d0_local = 'bx;
        end
    end else begin
        ptr_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln46_reg_1208 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd1) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage2_11001) & (icmp_ln48_reg_1212 == 1'd0) & (icmp_ln46_reg_1208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ptr_3_we0_local = 1'b1;
    end else begin
        ptr_3_we0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = zext_ln40_fu_817_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = max_fu_940_p3;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = zext_ln40_fu_817_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = max_fu_940_p3;
assign M_1_we0 = M_1_we0_local;
assign M_2_address0 = M_2_address0_local;
assign M_2_address1 = zext_ln40_fu_817_p1;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_ce1 = M_2_ce1_local;
assign M_2_d0 = max_fu_940_p3;
assign M_2_we0 = M_2_we0_local;
assign M_3_address0 = M_3_address0_local;
assign M_3_address1 = zext_ln40_fu_817_p1;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_ce1 = M_3_ce1_local;
assign M_3_d0 = max_fu_940_p3;
assign M_3_we0 = M_3_we0_local;
assign SEQA_0_address0 = zext_ln30_1_fu_671_p1;
assign SEQA_0_ce0 = SEQA_0_ce0_local;
assign SEQA_1_address0 = zext_ln30_1_fu_671_p1;
assign SEQA_1_ce0 = SEQA_1_ce0_local;
assign SEQA_2_address0 = zext_ln30_1_fu_671_p1;
assign SEQA_2_ce0 = SEQA_2_ce0_local;
assign SEQA_3_address0 = zext_ln30_1_fu_671_p1;
assign SEQA_3_ce0 = SEQA_3_ce0_local;
assign SEQB_0_address0 = p_cast15_fu_617_p1;
assign SEQB_0_ce0 = SEQB_0_ce0_local;
assign SEQB_1_address0 = p_cast15_fu_617_p1;
assign SEQB_1_ce0 = SEQB_1_ce0_local;
assign SEQB_2_address0 = p_cast15_fu_617_p1;
assign SEQB_2_ce0 = SEQB_2_ce0_local;
assign SEQB_3_address0 = p_cast15_fu_617_p1;
assign SEQB_3_ce0 = SEQB_3_ce0_local;
assign add_ln28_1_fu_560_p2 = (ap_sig_allocacmp_b_idx_1_load + 8'd1);
assign add_ln28_fu_542_p2 = (ap_sig_allocacmp_indvar_flatten_load + 15'd1);
assign add_ln29_fu_747_p2 = (select_ln17_fu_608_p3 + 8'd1);
assign add_ln30_fu_651_p2 = ($signed(select_ln17_fu_608_p3) + $signed(8'd255));
assign add_ln39_1_fu_689_p2 = (zext_ln30_fu_657_p1 + empty_19_fu_637_p2);
assign add_ln39_fu_679_p2 = (zext_ln29_fu_643_p1 + empty_18_fu_631_p2);
assign add_ln40_fu_705_p2 = (zext_ln29_fu_643_p1 + empty_19_fu_637_p2);
assign add_ln41_fu_721_p2 = (zext_ln30_fu_657_p1 + empty_18_fu_631_p2);
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
always @ (*) begin
    ap_condition_827 = ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd0) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_832 = ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd1) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_835 = ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd2) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
always @ (*) begin
    ap_condition_838 = ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln39_reg_1063_pp0_iter1_reg == 2'd3) & (1'b1 == ap_CS_fsm_pp0_stage2));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign b_idx_1_cast4_fu_614_p1 = select_ln28_reg_1002;
assign empty_18_fu_631_p2 = (p_shl_fu_624_p3 + b_idx_1_cast4_fu_614_p1);
assign empty_19_fu_637_p2 = ($signed(empty_18_fu_631_p2) + $signed(15'd32639));
assign empty_fu_582_p2 = ($signed(trunc_ln28_1_fu_578_p1) + $signed(7'd127));
assign icmp_ln28_fu_536_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 15'd16384) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_554_p2 = ((ap_sig_allocacmp_a_idx_2_load == 8'd129) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_804_p2 = ((tmp_2_fu_781_p11 == tmp_fu_758_p11) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_936_p2 = (($signed(up_left_reg_1170) > $signed(select_ln43_reg_1186)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_922_p2 = (($signed(up_fu_912_p2) > $signed(left_fu_917_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_957_p2 = ((max_fu_940_p3 == left_reg_1181) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_962_p2 = ((max_fu_940_p3 == up_reg_1176) ? 1'b1 : 1'b0);
assign left_fu_917_p2 = ($signed(tmp_5_reg_1165) + $signed(32'd4294967295));
assign lshr_ln2_fu_661_p4 = {{add_ln30_fu_651_p2[6:2]}};
assign max_fu_940_p3 = ((icmp_ln43_1_fu_936_p2[0:0] == 1'b1) ? up_left_reg_1170 : select_ln43_reg_1186);
assign p_cast15_fu_617_p1 = tmp_s_reg_1013;
assign p_shl_fu_624_p3 = {{select_ln28_reg_1002}, {7'd0}};
assign ptr_0_addr_1_gep_fu_500_p3 = zext_ln45_reg_1192;
assign ptr_0_addr_gep_fu_464_p3 = zext_ln45_reg_1192;
assign ptr_0_address0 = ptr_0_address0_local;
assign ptr_0_ce0 = ptr_0_ce0_local;
assign ptr_0_d0 = ptr_0_d0_local;
assign ptr_0_we0 = ptr_0_we0_local;
assign ptr_1_addr_1_gep_fu_491_p3 = zext_ln45_reg_1192;
assign ptr_1_addr_gep_fu_455_p3 = zext_ln45_reg_1192;
assign ptr_1_address0 = ptr_1_address0_local;
assign ptr_1_ce0 = ptr_1_ce0_local;
assign ptr_1_d0 = ptr_1_d0_local;
assign ptr_1_we0 = ptr_1_we0_local;
assign ptr_2_addr_1_gep_fu_482_p3 = zext_ln45_reg_1192;
assign ptr_2_addr_gep_fu_446_p3 = zext_ln45_reg_1192;
assign ptr_2_address0 = ptr_2_address0_local;
assign ptr_2_ce0 = ptr_2_ce0_local;
assign ptr_2_d0 = ptr_2_d0_local;
assign ptr_2_we0 = ptr_2_we0_local;
assign ptr_3_addr_1_gep_fu_509_p3 = zext_ln45_reg_1192;
assign ptr_3_addr_gep_fu_473_p3 = zext_ln45_reg_1192;
assign ptr_3_address0 = ptr_3_address0_local;
assign ptr_3_ce0 = ptr_3_ce0_local;
assign ptr_3_d0 = ptr_3_d0_local;
assign ptr_3_we0 = ptr_3_we0_local;
assign select_ln17_fu_608_p3 = ((icmp_ln29_reg_997[0:0] == 1'b1) ? 8'd1 : a_idx_2_load_reg_992);
assign select_ln28_fu_566_p3 = ((icmp_ln29_fu_554_p2[0:0] == 1'b1) ? add_ln28_1_fu_560_p2 : ap_sig_allocacmp_b_idx_1_load);
assign select_ln39_fu_900_p3 = ((icmp_ln30_reg_1090[0:0] == 1'b1) ? 32'd1 : 32'd4294967295);
assign select_ln43_fu_928_p3 = ((icmp_ln43_fu_922_p2[0:0] == 1'b1) ? up_fu_912_p2 : left_fu_917_p2);
assign tmp_2_fu_781_p9 = 'bx;
assign tmp_3_fu_831_p9 = 'bx;
assign tmp_4_fu_854_p9 = 'bx;
assign tmp_5_fu_877_p9 = 'bx;
assign tmp_fu_758_p9 = 'bx;
assign trunc_ln28_1_fu_578_p1 = select_ln28_fu_566_p3[6:0];
assign trunc_ln28_fu_574_p1 = select_ln28_fu_566_p3[1:0];
assign trunc_ln29_fu_647_p1 = select_ln17_fu_608_p3[1:0];
assign trunc_ln39_fu_685_p1 = add_ln39_fu_679_p2[1:0];
assign up_fu_912_p2 = ($signed(tmp_4_reg_1160) + $signed(32'd4294967295));
assign up_left_fu_907_p2 = (tmp_3_reg_1155 + select_ln39_fu_900_p3);
assign zext_ln29_fu_643_p1 = select_ln17_fu_608_p3;
assign zext_ln30_1_fu_671_p1 = lshr_ln2_fu_661_p4;
assign zext_ln30_fu_657_p1 = add_ln30_fu_651_p2;
assign zext_ln39_fu_810_p1 = lshr_ln3_reg_1070;
assign zext_ln40_fu_817_p1 = lshr_ln4_reg_1075;
assign zext_ln41_fu_824_p1 = lshr_ln5_reg_1080;
assign zext_ln45_fu_950_p1 = lshr_ln6_reg_1085;
always @ (posedge ap_clk) begin
    zext_ln45_reg_1192[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 