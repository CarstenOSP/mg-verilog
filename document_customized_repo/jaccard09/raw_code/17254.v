module needwun_needwun_Pipeline_pad_a (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_5,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,alignedA_0_address1,alignedA_0_ce1,alignedA_0_we1,alignedA_0_d1,alignedA_7_address0,alignedA_7_ce0,alignedA_7_we0,alignedA_7_d0,alignedA_7_address1,alignedA_7_ce1,alignedA_7_we1,alignedA_7_d1,alignedA_6_address0,alignedA_6_ce0,alignedA_6_we0,alignedA_6_d0,alignedA_6_address1,alignedA_6_ce1,alignedA_6_we1,alignedA_6_d1,alignedA_5_address0,alignedA_5_ce0,alignedA_5_we0,alignedA_5_d0,alignedA_5_address1,alignedA_5_ce1,alignedA_5_we1,alignedA_5_d1,alignedA_4_address0,alignedA_4_ce0,alignedA_4_we0,alignedA_4_d0,alignedA_4_address1,alignedA_4_ce1,alignedA_4_we1,alignedA_4_d1,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_3_address1,alignedA_3_ce1,alignedA_3_we1,alignedA_3_d1,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_2_address1,alignedA_2_ce1,alignedA_2_we1,alignedA_2_d1,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_1_address1,alignedA_1_ce1,alignedA_1_we1,alignedA_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_5;
output  [4:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [4:0] alignedA_0_address1;
output   alignedA_0_ce1;
output   alignedA_0_we1;
output  [7:0] alignedA_0_d1;
output  [4:0] alignedA_7_address0;
output   alignedA_7_ce0;
output   alignedA_7_we0;
output  [7:0] alignedA_7_d0;
output  [4:0] alignedA_7_address1;
output   alignedA_7_ce1;
output   alignedA_7_we1;
output  [7:0] alignedA_7_d1;
output  [4:0] alignedA_6_address0;
output   alignedA_6_ce0;
output   alignedA_6_we0;
output  [7:0] alignedA_6_d0;
output  [4:0] alignedA_6_address1;
output   alignedA_6_ce1;
output   alignedA_6_we1;
output  [7:0] alignedA_6_d1;
output  [4:0] alignedA_5_address0;
output   alignedA_5_ce0;
output   alignedA_5_we0;
output  [7:0] alignedA_5_d0;
output  [4:0] alignedA_5_address1;
output   alignedA_5_ce1;
output   alignedA_5_we1;
output  [7:0] alignedA_5_d1;
output  [4:0] alignedA_4_address0;
output   alignedA_4_ce0;
output   alignedA_4_we0;
output  [7:0] alignedA_4_d0;
output  [4:0] alignedA_4_address1;
output   alignedA_4_ce1;
output   alignedA_4_we1;
output  [7:0] alignedA_4_d1;
output  [4:0] alignedA_3_address0;
output   alignedA_3_ce0;
output   alignedA_3_we0;
output  [7:0] alignedA_3_d0;
output  [4:0] alignedA_3_address1;
output   alignedA_3_ce1;
output   alignedA_3_we1;
output  [7:0] alignedA_3_d1;
output  [4:0] alignedA_2_address0;
output   alignedA_2_ce0;
output   alignedA_2_we0;
output  [7:0] alignedA_2_d0;
output  [4:0] alignedA_2_address1;
output   alignedA_2_ce1;
output   alignedA_2_we1;
output  [7:0] alignedA_2_d1;
output  [4:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [4:0] alignedA_1_address1;
output   alignedA_1_ce1;
output   alignedA_1_we1;
output  [7:0] alignedA_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln83_3_fu_580_p2;
wire   [0:0] icmp_ln83_2_fu_544_p2;
wire   [0:0] icmp_ln83_1_fu_508_p2;
wire   [0:0] icmp_ln83_fu_446_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] a_str_idx_reg_603;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln83_reg_608;
wire   [2:0] trunc_ln83_fu_452_p1;
reg   [2:0] trunc_ln83_reg_612;
wire   [63:0] zext_ln83_fu_494_p1;
reg   [63:0] zext_ln83_reg_616;
reg   [0:0] icmp_ln83_1_reg_628;
wire   [63:0] zext_ln83_1_fu_530_p1;
reg   [63:0] zext_ln83_1_reg_632;
reg   [0:0] icmp_ln83_2_reg_644;
wire   [63:0] zext_ln83_2_fu_566_p1;
reg   [63:0] zext_ln83_2_reg_648;
reg   [0:0] icmp_ln83_3_reg_660;
wire   [63:0] zext_ln18_fu_466_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] a_str_idx_3_fu_74;
wire   [31:0] add_ln83_3_fu_586_p2;
reg   [31:0] ap_sig_allocacmp_a_str_idx;
wire    ap_loop_init;
reg    alignedA_6_we1_local;
reg    alignedA_6_ce1_local;
reg    alignedA_6_we0_local;
reg    alignedA_6_ce0_local;
reg   [4:0] alignedA_6_address0_local;
reg    alignedA_5_we1_local;
reg    alignedA_5_ce1_local;
reg    alignedA_5_we0_local;
reg    alignedA_5_ce0_local;
reg   [4:0] alignedA_5_address0_local;
reg    alignedA_4_we1_local;
reg    alignedA_4_ce1_local;
reg    alignedA_4_we0_local;
reg    alignedA_4_ce0_local;
reg   [4:0] alignedA_4_address0_local;
reg    alignedA_3_we1_local;
reg    alignedA_3_ce1_local;
reg    alignedA_3_we0_local;
reg    alignedA_3_ce0_local;
reg   [4:0] alignedA_3_address0_local;
reg    alignedA_2_we1_local;
reg    alignedA_2_ce1_local;
reg    alignedA_2_we0_local;
reg    alignedA_2_ce0_local;
reg   [4:0] alignedA_2_address0_local;
reg    alignedA_1_we1_local;
reg    alignedA_1_ce1_local;
reg    alignedA_1_we0_local;
reg    alignedA_1_ce0_local;
reg   [4:0] alignedA_1_address0_local;
reg    alignedA_0_we1_local;
reg    alignedA_0_ce1_local;
reg    alignedA_0_we0_local;
reg    alignedA_0_ce0_local;
reg   [4:0] alignedA_0_address0_local;
reg    alignedA_7_we1_local;
reg    alignedA_7_ce1_local;
reg    alignedA_7_we0_local;
reg    alignedA_7_ce0_local;
reg   [4:0] alignedA_7_address0_local;
wire   [23:0] tmp_fu_436_p4;
wire   [4:0] lshr_ln18_1_fu_456_p4;
wire   [31:0] add_ln83_fu_478_p2;
wire   [4:0] lshr_ln_fu_484_p4;
wire   [23:0] tmp_4_fu_498_p4;
wire   [31:0] add_ln83_1_fu_514_p2;
wire   [4:0] lshr_ln83_1_fu_520_p4;
wire   [23:0] tmp_5_fu_534_p4;
wire   [31:0] add_ln83_2_fu_550_p2;
wire   [4:0] lshr_ln83_2_fu_556_p4;
wire   [23:0] tmp_6_fu_570_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_580;
reg    ap_condition_587;
reg    ap_condition_584;
reg    ap_condition_593;
reg    ap_condition_597;
reg    ap_condition_601;
reg    ap_condition_605;
reg    ap_condition_609;
reg    ap_condition_613;
reg    ap_condition_617;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_3_fu_74 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_3_fu_74 <= b_str_idx_5;
        end else if ((1'b1 == ap_condition_580)) begin
            a_str_idx_3_fu_74 <= add_ln83_3_fu_586_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_str_idx_reg_603 <= ap_sig_allocacmp_a_str_idx;
        icmp_ln83_1_reg_628 <= icmp_ln83_1_fu_508_p2;
        icmp_ln83_2_reg_644 <= icmp_ln83_2_fu_544_p2;
        icmp_ln83_3_reg_660 <= icmp_ln83_3_fu_580_p2;
        icmp_ln83_reg_608 <= icmp_ln83_fu_446_p2;
        trunc_ln83_reg_612 <= trunc_ln83_fu_452_p1;
        zext_ln83_1_reg_632[4 : 0] <= zext_ln83_1_fu_530_p1[4 : 0];
        zext_ln83_2_reg_648[4 : 0] <= zext_ln83_2_fu_566_p1[4 : 0];
        zext_ln83_reg_616[4 : 0] <= zext_ln83_fu_494_p1[4 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_584)) begin
        if ((1'b1 == ap_condition_587)) begin
            alignedA_0_address0_local = zext_ln83_2_reg_648;
        end else if (((icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd6))) begin
            alignedA_0_address0_local = zext_ln83_1_reg_632;
        end else if ((trunc_ln83_reg_612 == 3'd7)) begin
            alignedA_0_address0_local = zext_ln83_reg_616;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd5) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd6) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd7) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_0_ce1_local = 1'b1;
    end else begin
        alignedA_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd5) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd6) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd7) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_452_p1 == 3'd0))) begin
        alignedA_0_we1_local = 1'b1;
    end else begin
        alignedA_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_584)) begin
        if ((1'b1 == ap_condition_593)) begin
            alignedA_1_address0_local = zext_ln83_2_reg_648;
        end else if (((icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd7))) begin
            alignedA_1_address0_local = zext_ln83_1_reg_632;
        end else if ((trunc_ln83_reg_612 == 3'd0)) begin
            alignedA_1_address0_local = zext_ln83_reg_616;
        end else begin
            alignedA_1_address0_local = 'bx;
        end
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd6) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd7) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd0) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_1_ce1_local = 1'b1;
    end else begin
        alignedA_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd6) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd7) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd0) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_452_p1 == 3'd1))) begin
        alignedA_1_we1_local = 1'b1;
    end else begin
        alignedA_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_584)) begin
        if ((1'b1 == ap_condition_597)) begin
            alignedA_2_address0_local = zext_ln83_2_reg_648;
        end else if (((icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd0))) begin
            alignedA_2_address0_local = zext_ln83_1_reg_632;
        end else if ((trunc_ln83_reg_612 == 3'd1)) begin
            alignedA_2_address0_local = zext_ln83_reg_616;
        end else begin
            alignedA_2_address0_local = 'bx;
        end
    end else begin
        alignedA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd7) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd0) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd1) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_2_ce1_local = 1'b1;
    end else begin
        alignedA_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd7) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd0) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd1) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_452_p1 == 3'd2))) begin
        alignedA_2_we1_local = 1'b1;
    end else begin
        alignedA_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_584)) begin
        if ((1'b1 == ap_condition_601)) begin
            alignedA_3_address0_local = zext_ln83_2_reg_648;
        end else if (((icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd1))) begin
            alignedA_3_address0_local = zext_ln83_1_reg_632;
        end else if ((trunc_ln83_reg_612 == 3'd2)) begin
            alignedA_3_address0_local = zext_ln83_reg_616;
        end else begin
            alignedA_3_address0_local = 'bx;
        end
    end else begin
        alignedA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd0) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd1) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd2) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_3_ce1_local = 1'b1;
    end else begin
        alignedA_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd0) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd1) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd2) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_452_p1 == 3'd3))) begin
        alignedA_3_we1_local = 1'b1;
    end else begin
        alignedA_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_584)) begin
        if ((1'b1 == ap_condition_605)) begin
            alignedA_4_address0_local = zext_ln83_2_reg_648;
        end else if (((icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd2))) begin
            alignedA_4_address0_local = zext_ln83_1_reg_632;
        end else if ((trunc_ln83_reg_612 == 3'd3)) begin
            alignedA_4_address0_local = zext_ln83_reg_616;
        end else begin
            alignedA_4_address0_local = 'bx;
        end
    end else begin
        alignedA_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd1) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd2) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd3) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_4_ce0_local = 1'b1;
    end else begin
        alignedA_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_4_ce1_local = 1'b1;
    end else begin
        alignedA_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd1) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd2) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd3) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_4_we0_local = 1'b1;
    end else begin
        alignedA_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_452_p1 == 3'd4))) begin
        alignedA_4_we1_local = 1'b1;
    end else begin
        alignedA_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_584)) begin
        if ((1'b1 == ap_condition_609)) begin
            alignedA_5_address0_local = zext_ln83_2_reg_648;
        end else if (((icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd3))) begin
            alignedA_5_address0_local = zext_ln83_1_reg_632;
        end else if ((trunc_ln83_reg_612 == 3'd4)) begin
            alignedA_5_address0_local = zext_ln83_reg_616;
        end else begin
            alignedA_5_address0_local = 'bx;
        end
    end else begin
        alignedA_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd2) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd3) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd4) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_5_ce0_local = 1'b1;
    end else begin
        alignedA_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_5_ce1_local = 1'b1;
    end else begin
        alignedA_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd2) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd3) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd4) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_5_we0_local = 1'b1;
    end else begin
        alignedA_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_452_p1 == 3'd5))) begin
        alignedA_5_we1_local = 1'b1;
    end else begin
        alignedA_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_584)) begin
        if ((1'b1 == ap_condition_613)) begin
            alignedA_6_address0_local = zext_ln83_2_reg_648;
        end else if (((icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd4))) begin
            alignedA_6_address0_local = zext_ln83_1_reg_632;
        end else if ((trunc_ln83_reg_612 == 3'd5)) begin
            alignedA_6_address0_local = zext_ln83_reg_616;
        end else begin
            alignedA_6_address0_local = 'bx;
        end
    end else begin
        alignedA_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd3) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd4) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd5) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_6_ce0_local = 1'b1;
    end else begin
        alignedA_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_6_ce1_local = 1'b1;
    end else begin
        alignedA_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd3) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd4) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd5) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_6_we0_local = 1'b1;
    end else begin
        alignedA_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_452_p1 == 3'd6))) begin
        alignedA_6_we1_local = 1'b1;
    end else begin
        alignedA_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_584)) begin
        if ((1'b1 == ap_condition_617)) begin
            alignedA_7_address0_local = zext_ln83_2_reg_648;
        end else if (((icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd5))) begin
            alignedA_7_address0_local = zext_ln83_1_reg_632;
        end else if ((trunc_ln83_reg_612 == 3'd6)) begin
            alignedA_7_address0_local = zext_ln83_reg_616;
        end else begin
            alignedA_7_address0_local = 'bx;
        end
    end else begin
        alignedA_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd4) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd5) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd6) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_7_ce0_local = 1'b1;
    end else begin
        alignedA_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_7_ce1_local = 1'b1;
    end else begin
        alignedA_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd4) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd5) & (icmp_ln83_reg_608 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (trunc_ln83_reg_612 == 3'd6) & (icmp_ln83_reg_608 == 1'd1)))) begin
        alignedA_7_we0_local = 1'b1;
    end else begin
        alignedA_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_446_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_452_p1 == 3'd7))) begin
        alignedA_7_we1_local = 1'b1;
    end else begin
        alignedA_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln83_fu_446_p2 == 1'd0) | ((icmp_ln83_1_fu_508_p2 == 1'd0) | ((icmp_ln83_2_fu_544_p2 == 1'd0) | (icmp_ln83_3_fu_580_p2 == 1'd0)))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_a_str_idx = b_str_idx_5;
        end else if ((1'b1 == ap_condition_580)) begin
            ap_sig_allocacmp_a_str_idx = add_ln83_3_fu_586_p2;
        end else begin
            ap_sig_allocacmp_a_str_idx = a_str_idx_3_fu_74;
        end
    end else begin
        ap_sig_allocacmp_a_str_idx = a_str_idx_3_fu_74;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln83_1_fu_514_p2 = (ap_sig_allocacmp_a_str_idx + 32'd2);
assign add_ln83_2_fu_550_p2 = (ap_sig_allocacmp_a_str_idx + 32'd3);
assign add_ln83_3_fu_586_p2 = (a_str_idx_reg_603 + 32'd4);
assign add_ln83_fu_478_p2 = (ap_sig_allocacmp_a_str_idx + 32'd1);
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_address1 = zext_ln18_fu_466_p1;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_ce1 = alignedA_0_ce1_local;
assign alignedA_0_d0 = 8'd95;
assign alignedA_0_d1 = 8'd95;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_0_we1 = alignedA_0_we1_local;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_address1 = zext_ln18_fu_466_p1;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_ce1 = alignedA_1_ce1_local;
assign alignedA_1_d0 = 8'd95;
assign alignedA_1_d1 = 8'd95;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_1_we1 = alignedA_1_we1_local;
assign alignedA_2_address0 = alignedA_2_address0_local;
assign alignedA_2_address1 = zext_ln18_fu_466_p1;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_ce1 = alignedA_2_ce1_local;
assign alignedA_2_d0 = 8'd95;
assign alignedA_2_d1 = 8'd95;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_2_we1 = alignedA_2_we1_local;
assign alignedA_3_address0 = alignedA_3_address0_local;
assign alignedA_3_address1 = zext_ln18_fu_466_p1;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_ce1 = alignedA_3_ce1_local;
assign alignedA_3_d0 = 8'd95;
assign alignedA_3_d1 = 8'd95;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedA_3_we1 = alignedA_3_we1_local;
assign alignedA_4_address0 = alignedA_4_address0_local;
assign alignedA_4_address1 = zext_ln18_fu_466_p1;
assign alignedA_4_ce0 = alignedA_4_ce0_local;
assign alignedA_4_ce1 = alignedA_4_ce1_local;
assign alignedA_4_d0 = 8'd95;
assign alignedA_4_d1 = 8'd95;
assign alignedA_4_we0 = alignedA_4_we0_local;
assign alignedA_4_we1 = alignedA_4_we1_local;
assign alignedA_5_address0 = alignedA_5_address0_local;
assign alignedA_5_address1 = zext_ln18_fu_466_p1;
assign alignedA_5_ce0 = alignedA_5_ce0_local;
assign alignedA_5_ce1 = alignedA_5_ce1_local;
assign alignedA_5_d0 = 8'd95;
assign alignedA_5_d1 = 8'd95;
assign alignedA_5_we0 = alignedA_5_we0_local;
assign alignedA_5_we1 = alignedA_5_we1_local;
assign alignedA_6_address0 = alignedA_6_address0_local;
assign alignedA_6_address1 = zext_ln18_fu_466_p1;
assign alignedA_6_ce0 = alignedA_6_ce0_local;
assign alignedA_6_ce1 = alignedA_6_ce1_local;
assign alignedA_6_d0 = 8'd95;
assign alignedA_6_d1 = 8'd95;
assign alignedA_6_we0 = alignedA_6_we0_local;
assign alignedA_6_we1 = alignedA_6_we1_local;
assign alignedA_7_address0 = alignedA_7_address0_local;
assign alignedA_7_address1 = zext_ln18_fu_466_p1;
assign alignedA_7_ce0 = alignedA_7_ce0_local;
assign alignedA_7_ce1 = alignedA_7_ce1_local;
assign alignedA_7_d0 = 8'd95;
assign alignedA_7_d1 = 8'd95;
assign alignedA_7_we0 = alignedA_7_we0_local;
assign alignedA_7_we1 = alignedA_7_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_580 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (icmp_ln83_1_reg_628 == 1'd1) & (icmp_ln83_reg_608 == 1'd1));
end
always @ (*) begin
    ap_condition_584 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_628 == 1'd1) & (icmp_ln83_reg_608 == 1'd1));
end
always @ (*) begin
    ap_condition_587 = ((icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd5));
end
always @ (*) begin
    ap_condition_593 = ((icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd6));
end
always @ (*) begin
    ap_condition_597 = ((icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd7));
end
always @ (*) begin
    ap_condition_601 = ((icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd0));
end
always @ (*) begin
    ap_condition_605 = ((icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd1));
end
always @ (*) begin
    ap_condition_609 = ((icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd2));
end
always @ (*) begin
    ap_condition_613 = ((icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd3));
end
always @ (*) begin
    ap_condition_617 = ((icmp_ln83_3_reg_660 == 1'd1) & (icmp_ln83_2_reg_644 == 1'd1) & (trunc_ln83_reg_612 == 3'd4));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln83_1_fu_508_p2 = (($signed(tmp_4_fu_498_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_2_fu_544_p2 = (($signed(tmp_5_fu_534_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_3_fu_580_p2 = (($signed(tmp_6_fu_570_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_446_p2 = (($signed(tmp_fu_436_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_1_fu_456_p4 = {{ap_sig_allocacmp_a_str_idx[7:3]}};
assign lshr_ln83_1_fu_520_p4 = {{add_ln83_1_fu_514_p2[7:3]}};
assign lshr_ln83_2_fu_556_p4 = {{add_ln83_2_fu_550_p2[7:3]}};
assign lshr_ln_fu_484_p4 = {{add_ln83_fu_478_p2[7:3]}};
assign tmp_4_fu_498_p4 = {{add_ln83_fu_478_p2[31:8]}};
assign tmp_5_fu_534_p4 = {{add_ln83_1_fu_514_p2[31:8]}};
assign tmp_6_fu_570_p4 = {{add_ln83_2_fu_550_p2[31:8]}};
assign tmp_fu_436_p4 = {{ap_sig_allocacmp_a_str_idx[31:8]}};
assign trunc_ln83_fu_452_p1 = ap_sig_allocacmp_a_str_idx[2:0];
assign zext_ln18_fu_466_p1 = lshr_ln18_1_fu_456_p4;
assign zext_ln83_1_fu_530_p1 = lshr_ln83_1_fu_520_p4;
assign zext_ln83_2_fu_566_p1 = lshr_ln83_2_fu_556_p4;
assign zext_ln83_fu_494_p1 = lshr_ln_fu_484_p4;
always @ (posedge ap_clk) begin
    zext_ln83_reg_616[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_632[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_648[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 