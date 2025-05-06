
module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_7_address0,M_7_ce0,M_7_we0,M_7_d0,M_6_address0,M_6_ce0,M_6_we0,M_6_d0,M_5_address0,M_5_ce0,M_5_we0,M_5_d0,M_4_address0,M_4_ce0,M_4_we0,M_4_d0,M_3_address0,M_3_ce0,M_3_we0,M_3_d0,M_2_address0,M_2_ce0,M_2_we0,M_2_d0,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_0_address0,M_0_ce0,M_0_we0,M_0_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] M_7_address0;
output   M_7_ce0;
output   M_7_we0;
output  [31:0] M_7_d0;
output  [11:0] M_6_address0;
output   M_6_ce0;
output   M_6_we0;
output  [31:0] M_6_d0;
output  [11:0] M_5_address0;
output   M_5_ce0;
output   M_5_we0;
output  [31:0] M_5_d0;
output  [11:0] M_4_address0;
output   M_4_ce0;
output   M_4_we0;
output  [31:0] M_4_d0;
output  [11:0] M_3_address0;
output   M_3_ce0;
output   M_3_we0;
output  [31:0] M_3_d0;
output  [11:0] M_2_address0;
output   M_2_ce0;
output   M_2_we0;
output  [31:0] M_2_d0;
output  [11:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [11:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_266_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [14:0] add_ln24_3_fu_222_p2;
reg   [14:0] add_ln24_3_reg_430;
wire    ap_block_pp0_stage0_11001;
reg   [11:0] lshr_ln1_reg_437;
wire   [31:0] trunc_ln24_1_fu_238_p1;
reg   [31:0] trunc_ln24_1_reg_442;
wire   [0:0] icmp_ln24_fu_242_p2;
reg   [0:0] icmp_ln24_reg_447;
reg   [0:0] icmp_ln23_reg_451;
reg   [30:0] tmp_21_reg_455;
reg   [29:0] tmp_22_reg_460;
wire   [63:0] zext_ln24_fu_303_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_1_fu_330_p1;
wire   [63:0] zext_ln24_2_fu_366_p1;
wire   [63:0] zext_ln24_3_fu_402_p1;
reg   [63:0] b_idx_fu_86;
wire   [63:0] add_ln23_fu_292_p2;
wire    ap_loop_init;
reg    M_4_we0_local;
wire   [31:0] sub_ln24_fu_308_p2;
reg    M_4_ce0_local;
reg    M_0_we0_local;
reg    M_0_ce0_local;
reg    M_5_we0_local;
wire   [31:0] sub_ln24_1_fu_343_p2;
reg    M_5_ce0_local;
reg    M_6_we0_local;
wire   [31:0] sub_ln24_2_fu_379_p2;
reg    M_6_ce0_local;
reg    M_7_we0_local;
wire   [31:0] sub_ln24_3_fu_415_p2;
reg    M_7_ce0_local;
reg    M_1_we0_local;
reg    M_1_ce0_local;
reg    M_2_we0_local;
reg    M_2_ce0_local;
reg    M_3_we0_local;
reg    M_3_ce0_local;
wire   [7:0] trunc_ln24_fu_210_p1;
wire   [14:0] p_shl_fu_214_p3;
wire   [14:0] trunc_ln16_4_fu_206_p1;
wire   [2:0] trunc_ln16_fu_202_p1;
wire   [62:0] tmp_s_fu_248_p4;
wire   [63:0] or_ln2_fu_258_p3;
wire   [14:0] add_ln24_fu_315_p2;
wire   [11:0] lshr_ln24_1_fu_320_p4;
wire   [31:0] or_ln24_2_fu_336_p3;
wire   [14:0] add_ln24_1_fu_351_p2;
wire   [11:0] lshr_ln24_2_fu_356_p4;
wire   [31:0] or_ln3_fu_372_p3;
wire   [14:0] add_ln24_2_fu_387_p2;
wire   [11:0] lshr_ln24_3_fu_392_p4;
wire   [31:0] or_ln24_1_fu_408_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 b_idx_fu_86 = 64'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b_idx_fu_86 <= 64'd0;
        end else if (((icmp_ln23_fu_266_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            b_idx_fu_86 <= add_ln23_fu_292_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_3_reg_430 <= add_ln24_3_fu_222_p2;
        icmp_ln23_reg_451 <= icmp_ln23_fu_266_p2;
        icmp_ln24_reg_447 <= icmp_ln24_fu_242_p2;
        lshr_ln1_reg_437 <= {{add_ln24_3_fu_222_p2[14:3]}};
        tmp_21_reg_455 <= {{b_idx_fu_86[31:1]}};
        tmp_22_reg_460 <= {{b_idx_fu_86[31:2]}};
        trunc_ln24_1_reg_442 <= trunc_ln24_1_fu_238_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln24_reg_447 == 1'd1))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_reg_451 == 1'd1) & (icmp_ln24_reg_447 == 1'd1))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        M_2_ce0_local = 1'b1;
    end else begin
        M_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_reg_451 == 1'd1) & (icmp_ln24_reg_447 == 1'd1))) begin
        M_2_we0_local = 1'b1;
    end else begin
        M_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        M_3_ce0_local = 1'b1;
    end else begin
        M_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_reg_451 == 1'd1) & (icmp_ln24_reg_447 == 1'd1))) begin
        M_3_we0_local = 1'b1;
    end else begin
        M_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        M_4_ce0_local = 1'b1;
    end else begin
        M_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln24_reg_447 == 1'd0))) begin
        M_4_we0_local = 1'b1;
    end else begin
        M_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        M_5_ce0_local = 1'b1;
    end else begin
        M_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_reg_451 == 1'd1) & (icmp_ln24_reg_447 == 1'd0))) begin
        M_5_we0_local = 1'b1;
    end else begin
        M_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        M_6_ce0_local = 1'b1;
    end else begin
        M_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_reg_451 == 1'd1) & (icmp_ln24_reg_447 == 1'd0))) begin
        M_6_we0_local = 1'b1;
    end else begin
        M_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        M_7_ce0_local = 1'b1;
    end else begin
        M_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln23_reg_451 == 1'd1) & (icmp_ln24_reg_447 == 1'd0))) begin
        M_7_we0_local = 1'b1;
    end else begin
        M_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_266_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign M_0_address0 = zext_ln24_fu_303_p1;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_d0 = sub_ln24_fu_308_p2;
assign M_0_we0 = M_0_we0_local;
assign M_1_address0 = zext_ln24_1_fu_330_p1;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_d0 = sub_ln24_1_fu_343_p2;
assign M_1_we0 = M_1_we0_local;
assign M_2_address0 = zext_ln24_2_fu_366_p1;
assign M_2_ce0 = M_2_ce0_local;
assign M_2_d0 = sub_ln24_2_fu_379_p2;
assign M_2_we0 = M_2_we0_local;
assign M_3_address0 = zext_ln24_3_fu_402_p1;
assign M_3_ce0 = M_3_ce0_local;
assign M_3_d0 = sub_ln24_3_fu_415_p2;
assign M_3_we0 = M_3_we0_local;
assign M_4_address0 = zext_ln24_fu_303_p1;
assign M_4_ce0 = M_4_ce0_local;
assign M_4_d0 = sub_ln24_fu_308_p2;
assign M_4_we0 = M_4_we0_local;
assign M_5_address0 = zext_ln24_1_fu_330_p1;
assign M_5_ce0 = M_5_ce0_local;
assign M_5_d0 = sub_ln24_1_fu_343_p2;
assign M_5_we0 = M_5_we0_local;
assign M_6_address0 = zext_ln24_2_fu_366_p1;
assign M_6_ce0 = M_6_ce0_local;
assign M_6_d0 = sub_ln24_2_fu_379_p2;
assign M_6_we0 = M_6_we0_local;
assign M_7_address0 = zext_ln24_3_fu_402_p1;
assign M_7_ce0 = M_7_ce0_local;
assign M_7_d0 = sub_ln24_3_fu_415_p2;
assign M_7_we0 = M_7_we0_local;
assign add_ln23_fu_292_p2 = (b_idx_fu_86 + 64'd4);
assign add_ln24_1_fu_351_p2 = (add_ln24_3_reg_430 + 15'd258);
assign add_ln24_2_fu_387_p2 = (add_ln24_3_reg_430 + 15'd387);
assign add_ln24_3_fu_222_p2 = (p_shl_fu_214_p3 + trunc_ln16_4_fu_206_p1);
assign add_ln24_fu_315_p2 = (add_ln24_3_reg_430 + 15'd129);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_266_p2 = (($signed(or_ln2_fu_258_p3) < $signed(64'd129)) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_242_p2 = ((trunc_ln16_fu_202_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln24_1_fu_320_p4 = {{add_ln24_fu_315_p2[14:3]}};
assign lshr_ln24_2_fu_356_p4 = {{add_ln24_1_fu_351_p2[14:3]}};
assign lshr_ln24_3_fu_392_p4 = {{add_ln24_2_fu_387_p2[14:3]}};
assign or_ln24_1_fu_408_p3 = {{tmp_22_reg_460}, {2'd3}};
assign or_ln24_2_fu_336_p3 = {{tmp_21_reg_455}, {1'd1}};
assign or_ln2_fu_258_p3 = {{tmp_s_fu_248_p4}, {1'd1}};
assign or_ln3_fu_372_p3 = {{tmp_22_reg_460}, {2'd2}};
assign p_shl_fu_214_p3 = {{trunc_ln24_fu_210_p1}, {7'd0}};
assign sub_ln24_1_fu_343_p2 = (32'd0 - or_ln24_2_fu_336_p3);
assign sub_ln24_2_fu_379_p2 = (32'd0 - or_ln3_fu_372_p3);
assign sub_ln24_3_fu_415_p2 = (32'd0 - or_ln24_1_fu_408_p3);
assign sub_ln24_fu_308_p2 = (32'd0 - trunc_ln24_1_reg_442);
assign tmp_s_fu_248_p4 = {{b_idx_fu_86[63:1]}};
assign trunc_ln16_4_fu_206_p1 = b_idx_fu_86[14:0];
assign trunc_ln16_fu_202_p1 = b_idx_fu_86[2:0];
assign trunc_ln24_1_fu_238_p1 = b_idx_fu_86[31:0];
assign trunc_ln24_fu_210_p1 = b_idx_fu_86[7:0];
assign zext_ln24_1_fu_330_p1 = lshr_ln24_1_fu_320_p4;
assign zext_ln24_2_fu_366_p1 = lshr_ln24_2_fu_356_p4;
assign zext_ln24_3_fu_402_p1 = lshr_ln24_3_fu_392_p4;
assign zext_ln24_fu_303_p1 = lshr_ln1_reg_437;
endmodule 
