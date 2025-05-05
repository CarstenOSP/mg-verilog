module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,W_3_address2,W_3_ce2,W_3_q2,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_1_address2,W_1_ce2,W_1_q2,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
input  [31:0] W_3_q0;
output  [4:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [4:0] W_3_address2;
output   W_3_ce2;
input  [31:0] W_3_q2;
output  [4:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
input  [31:0] W_2_q0;
output  [4:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [4:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [4:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [4:0] W_1_address2;
output   W_1_ce2;
input  [31:0] W_1_q2;
output  [4:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [4:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln106_fu_278_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [6:0] i_3_reg_601;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln106_reg_615;
wire   [0:0] icmp_ln108_1_fu_288_p2;
reg   [0:0] icmp_ln108_1_reg_619;
wire   [0:0] icmp_ln108_fu_294_p2;
reg   [0:0] icmp_ln108_reg_631;
reg   [4:0] lshr_ln_reg_635;
wire    ap_block_pp0_stage1_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln108_fu_327_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln108_1_fu_348_p1;
wire   [63:0] zext_ln108_2_fu_369_p1;
wire   [63:0] zext_ln108_3_fu_391_p1;
wire   [63:0] zext_ln108_4_fu_412_p1;
wire   [63:0] zext_ln108_5_fu_433_p1;
wire   [63:0] zext_ln108_6_fu_454_p1;
wire   [63:0] zext_ln108_7_fu_475_p1;
wire   [63:0] zext_ln99_fu_491_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_62;
wire   [6:0] add_ln106_fu_481_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_1_ce2_local;
reg    W_1_ce1_local;
reg    W_1_ce0_local;
reg   [4:0] W_1_address0_local;
reg    W_1_we0_local;
wire   [31:0] xor_ln108_5_fu_586_p2;
reg    W_3_ce2_local;
reg    W_3_ce1_local;
reg    W_3_ce0_local;
reg   [4:0] W_3_address0_local;
reg    W_3_we0_local;
reg    W_ce1_local;
reg   [4:0] W_address1_local;
reg    W_ce0_local;
reg   [4:0] W_address0_local;
reg    W_we0_local;
wire   [31:0] xor_ln108_2_fu_538_p2;
reg    W_2_ce1_local;
reg   [4:0] W_2_address1_local;
reg    W_2_ce0_local;
reg   [4:0] W_2_address0_local;
reg    W_2_we0_local;
wire   [1:0] trunc_ln106_1_fu_284_p1;
wire   [6:0] add_ln108_fu_312_p2;
wire   [4:0] lshr_ln1_fu_317_p4;
wire   [6:0] add_ln108_1_fu_333_p2;
wire   [4:0] lshr_ln108_1_fu_338_p4;
wire   [6:0] add_ln108_2_fu_354_p2;
wire   [4:0] lshr_ln108_2_fu_359_p4;
wire   [5:0] trunc_ln106_fu_300_p1;
wire   [5:0] add_ln108_3_fu_375_p2;
wire   [3:0] lshr_ln108_3_fu_381_p4;
wire   [6:0] add_ln108_4_fu_397_p2;
wire   [4:0] lshr_ln108_4_fu_402_p4;
wire   [6:0] add_ln108_5_fu_418_p2;
wire   [4:0] lshr_ln108_5_fu_423_p4;
wire   [6:0] add_ln108_6_fu_439_p2;
wire   [4:0] lshr_ln108_6_fu_444_p4;
wire   [6:0] add_ln108_7_fu_460_p2;
wire   [4:0] lshr_ln108_7_fu_465_p4;
wire   [31:0] select_ln108_3_fu_519_p3;
wire   [31:0] select_ln108_1_fu_505_p3;
wire   [31:0] select_ln108_fu_498_p3;
wire   [31:0] select_ln108_2_fu_512_p3;
wire   [31:0] xor_ln108_fu_532_p2;
wire   [31:0] xor_ln108_1_fu_526_p2;
wire   [31:0] select_ln108_6_fu_560_p3;
wire   [31:0] select_ln108_4_fu_546_p3;
wire   [31:0] select_ln108_7_fu_567_p3;
wire   [31:0] select_ln108_5_fu_553_p3;
wire   [31:0] xor_ln108_4_fu_580_p2;
wire   [31:0] xor_ln108_3_fu_574_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_540;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_62 = 7'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_62 <= 7'd16;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln106_reg_615 == 1'd1))) begin
        i_fu_62 <= add_ln106_fu_481_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_3_reg_601 <= ap_sig_allocacmp_i_3;
        icmp_ln106_reg_615 <= icmp_ln106_fu_278_p2;
        icmp_ln108_1_reg_619 <= icmp_ln108_1_fu_288_p2;
        icmp_ln108_reg_631 <= icmp_ln108_fu_294_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln_reg_635 <= {{i_3_reg_601[6:2]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_address0_local = zext_ln99_fu_491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1))) begin
        W_1_address0_local = zext_ln108_7_fu_475_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1))) begin
        W_1_address0_local = zext_ln108_6_fu_454_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce2_local = 1'b1;
    end else begin
        W_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln108_reg_631 == 1'd1))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_address0_local = zext_ln99_fu_491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1))) begin
        W_2_address0_local = zext_ln108_4_fu_412_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1))) begin
        W_2_address0_local = zext_ln108_3_fu_391_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_540)) begin
        if ((icmp_ln108_1_reg_619 == 1'd0)) begin
            W_2_address1_local = zext_ln108_2_fu_369_p1;
        end else if ((icmp_ln108_1_reg_619 == 1'd1)) begin
            W_2_address1_local = zext_ln108_1_fu_348_p1;
        end else begin
            W_2_address1_local = 'bx;
        end
    end else begin
        W_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1)))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln108_reg_631 == 1'd0))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_address0_local = zext_ln99_fu_491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1))) begin
        W_3_address0_local = zext_ln108_7_fu_475_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1))) begin
        W_3_address0_local = zext_ln108_6_fu_454_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce2_local = 1'b1;
    end else begin
        W_3_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln108_reg_631 == 1'd0))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_address0_local = zext_ln99_fu_491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1))) begin
        W_address0_local = zext_ln108_4_fu_412_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1))) begin
        W_address0_local = zext_ln108_3_fu_391_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_540)) begin
        if ((icmp_ln108_1_reg_619 == 1'd1)) begin
            W_address1_local = zext_ln108_2_fu_369_p1;
        end else if ((icmp_ln108_1_reg_619 == 1'd0)) begin
            W_address1_local = zext_ln108_1_fu_348_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd1) & (icmp_ln106_reg_615 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln108_1_reg_619 == 1'd0) & (icmp_ln106_reg_615 == 1'd1)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln108_reg_631 == 1'd1))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_278_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_62;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = zext_ln108_5_fu_433_p1;
assign W_1_address2 = zext_ln108_fu_327_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_ce2 = W_1_ce2_local;
assign W_1_d0 = xor_ln108_5_fu_586_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_address1 = W_2_address1_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = xor_ln108_2_fu_538_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = zext_ln108_5_fu_433_p1;
assign W_3_address2 = zext_ln108_fu_327_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_ce2 = W_3_ce2_local;
assign W_3_d0 = xor_ln108_5_fu_586_p2;
assign W_3_we0 = W_3_we0_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_2_fu_538_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_481_p2 = (i_3_reg_601 + 7'd2);
assign add_ln108_1_fu_333_p2 = ($signed(i_3_reg_601) + $signed(7'd120));
assign add_ln108_2_fu_354_p2 = ($signed(i_3_reg_601) + $signed(7'd114));
assign add_ln108_3_fu_375_p2 = ($signed(trunc_ln106_fu_300_p1) + $signed(6'd48));
assign add_ln108_4_fu_397_p2 = ($signed(i_3_reg_601) + $signed(7'd126));
assign add_ln108_5_fu_418_p2 = ($signed(i_3_reg_601) + $signed(7'd121));
assign add_ln108_6_fu_439_p2 = ($signed(i_3_reg_601) + $signed(7'd115));
assign add_ln108_7_fu_460_p2 = ($signed(i_3_reg_601) + $signed(7'd113));
assign add_ln108_fu_312_p2 = ($signed(i_3_reg_601) + $signed(7'd125));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_540 = ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln106_reg_615 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_278_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign icmp_ln108_1_fu_288_p2 = ((trunc_ln106_1_fu_284_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln108_fu_294_p2 = ((trunc_ln106_1_fu_284_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_338_p4 = {{add_ln108_1_fu_333_p2[6:2]}};
assign lshr_ln108_2_fu_359_p4 = {{add_ln108_2_fu_354_p2[6:2]}};
assign lshr_ln108_3_fu_381_p4 = {{add_ln108_3_fu_375_p2[5:2]}};
assign lshr_ln108_4_fu_402_p4 = {{add_ln108_4_fu_397_p2[6:2]}};
assign lshr_ln108_5_fu_423_p4 = {{add_ln108_5_fu_418_p2[6:2]}};
assign lshr_ln108_6_fu_444_p4 = {{add_ln108_6_fu_439_p2[6:2]}};
assign lshr_ln108_7_fu_465_p4 = {{add_ln108_7_fu_460_p2[6:2]}};
assign lshr_ln1_fu_317_p4 = {{add_ln108_fu_312_p2[6:2]}};
assign select_ln108_1_fu_505_p3 = ((icmp_ln108_1_reg_619[0:0] == 1'b1) ? W_2_q1 : W_q1);
assign select_ln108_2_fu_512_p3 = ((icmp_ln108_1_reg_619[0:0] == 1'b1) ? W_q1 : W_2_q1);
assign select_ln108_3_fu_519_p3 = ((icmp_ln108_1_reg_619[0:0] == 1'b1) ? W_2_q0 : W_q0);
assign select_ln108_4_fu_546_p3 = ((icmp_ln108_1_reg_619[0:0] == 1'b1) ? W_q0 : W_2_q0);
assign select_ln108_5_fu_553_p3 = ((icmp_ln108_1_reg_619[0:0] == 1'b1) ? W_3_q1 : W_1_q1);
assign select_ln108_6_fu_560_p3 = ((icmp_ln108_1_reg_619[0:0] == 1'b1) ? W_1_q0 : W_3_q0);
assign select_ln108_7_fu_567_p3 = ((icmp_ln108_1_reg_619[0:0] == 1'b1) ? W_3_q0 : W_1_q0);
assign select_ln108_fu_498_p3 = ((icmp_ln108_1_reg_619[0:0] == 1'b1) ? W_3_q2 : W_1_q2);
assign trunc_ln106_1_fu_284_p1 = ap_sig_allocacmp_i_3[1:0];
assign trunc_ln106_fu_300_p1 = i_3_reg_601[5:0];
assign xor_ln108_1_fu_526_p2 = (select_ln108_3_fu_519_p3 ^ select_ln108_1_fu_505_p3);
assign xor_ln108_2_fu_538_p2 = (xor_ln108_fu_532_p2 ^ xor_ln108_1_fu_526_p2);
assign xor_ln108_3_fu_574_p2 = (select_ln108_6_fu_560_p3 ^ select_ln108_4_fu_546_p3);
assign xor_ln108_4_fu_580_p2 = (select_ln108_7_fu_567_p3 ^ select_ln108_5_fu_553_p3);
assign xor_ln108_5_fu_586_p2 = (xor_ln108_4_fu_580_p2 ^ xor_ln108_3_fu_574_p2);
assign xor_ln108_fu_532_p2 = (select_ln108_fu_498_p3 ^ select_ln108_2_fu_512_p3);
assign zext_ln108_1_fu_348_p1 = lshr_ln108_1_fu_338_p4;
assign zext_ln108_2_fu_369_p1 = lshr_ln108_2_fu_359_p4;
assign zext_ln108_3_fu_391_p1 = lshr_ln108_3_fu_381_p4;
assign zext_ln108_4_fu_412_p1 = lshr_ln108_4_fu_402_p4;
assign zext_ln108_5_fu_433_p1 = lshr_ln108_5_fu_423_p4;
assign zext_ln108_6_fu_454_p1 = lshr_ln108_6_fu_444_p4;
assign zext_ln108_7_fu_475_p1 = lshr_ln108_7_fu_465_p4;
assign zext_ln108_fu_327_p1 = lshr_ln1_fu_317_p4;
assign zext_ln99_fu_491_p1 = lshr_ln_reg_635;
endmodule 