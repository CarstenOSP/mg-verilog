module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,A_17_out,A_17_out_ap_vld,B_1_out,B_1_out_ap_vld,E_17_out,E_17_out_ap_vld,D_17_out,D_17_out_ap_vld,E_2_out,E_2_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A;
input  [31:0] B;
input  [31:0] C;
input  [31:0] D;
input  [31:0] E;
output  [5:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [5:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [31:0] A_17_out;
output   A_17_out_ap_vld;
output  [31:0] B_1_out;
output   B_1_out_ap_vld;
output  [31:0] E_17_out;
output   E_17_out_ap_vld;
output  [31:0] D_17_out;
output   D_17_out_ap_vld;
output  [31:0] E_2_out;
output   E_2_out_ap_vld;
reg ap_idle;
reg A_17_out_ap_vld;
reg B_1_out_ap_vld;
reg E_17_out_ap_vld;
reg D_17_out_ap_vld;
reg E_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln116_reg_531;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln116_fu_222_p2;
reg   [31:0] E_14_reg_545;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_load_reg_552;
reg   [31:0] W_1_load_reg_557;
reg   [31:0] E_12_load_reg_562;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_14_fu_333_p2;
reg   [31:0] B_14_reg_567;
wire   [26:0] trunc_ln118_2_fu_361_p1;
reg   [26:0] trunc_ln118_2_reg_572;
reg   [4:0] lshr_ln118_2_reg_577;
wire   [31:0] or_ln118_2_fu_392_p2;
reg   [31:0] or_ln118_2_reg_582;
wire   [31:0] add_ln118_6_fu_446_p2;
reg   [31:0] add_ln118_6_reg_587;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_238_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_2_fu_74;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_12_fu_78;
wire   [31:0] D_10_fu_353_p3;
reg   [31:0] B_1_fu_82;
reg   [31:0] B_12_fu_86;
wire   [31:0] A_8_fu_459_p2;
reg   [4:0] i_1_fu_90;
wire   [4:0] add_ln116_fu_244_p2;
reg   [4:0] ap_sig_allocacmp_i;
reg   [31:0] D_7_fu_94;
wire   [31:0] C_3_fu_412_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
wire   [3:0] lshr_ln2_fu_228_p4;
wire   [31:0] xor_ln118_fu_285_p2;
wire   [31:0] and_ln118_1_fu_296_p2;
wire   [31:0] and_ln118_fu_291_p2;
wire   [26:0] trunc_ln118_fu_271_p1;
wire   [4:0] lshr_ln3_fu_275_p4;
wire   [31:0] or_ln118_1_fu_308_p3;
wire   [31:0] add_ln118_1_fu_316_p2;
wire   [31:0] or_ln118_fu_302_p2;
wire   [31:0] add_ln118_fu_328_p2;
wire   [31:0] add_ln118_2_fu_322_p2;
wire   [1:0] trunc_ln118_1_fu_339_p1;
wire   [29:0] lshr_ln118_1_fu_343_p4;
wire   [31:0] xor_ln118_1_fu_375_p2;
wire   [31:0] and_ln118_2_fu_381_p2;
wire   [31:0] and_ln118_3_fu_387_p2;
wire   [1:0] trunc_ln118_3_fu_398_p1;
wire   [29:0] lshr_ln118_3_fu_402_p4;
wire   [31:0] or_ln118_4_fu_434_p3;
wire   [31:0] add_ln118_5_fu_440_p2;
wire   [31:0] add_ln118_4_fu_455_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_2_fu_74 = 32'd0;
#0 E_12_fu_78 = 32'd0;
#0 B_1_fu_82 = 32'd0;
#0 B_12_fu_86 = 32'd0;
#0 i_1_fu_90 = 5'd0;
#0 D_7_fu_94 = 32'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_12_fu_86 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_12_fu_86 <= A_8_fu_459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_82 <= B;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_82 <= B_14_reg_567;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        D_7_fu_94 <= C;
    end else if (((icmp_ln116_reg_531 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        D_7_fu_94 <= C_3_fu_412_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_12_fu_78 <= D;
    end else if (((icmp_ln116_reg_531 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_12_fu_78 <= D_10_fu_353_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_2_fu_74 <= E;
    end else if (((icmp_ln116_reg_531 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_2_fu_74 <= E_14_reg_545;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln116_fu_222_p2 == 1'd1))) begin
            i_1_fu_90 <= add_ln116_fu_244_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_90 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_14_reg_567 <= B_14_fu_333_p2;
        E_12_load_reg_562 <= E_12_fu_78;
        lshr_ln118_2_reg_577 <= {{B_14_fu_333_p2[31:27]}};
        or_ln118_2_reg_582 <= or_ln118_2_fu_392_p2;
        trunc_ln118_2_reg_572 <= trunc_ln118_2_fu_361_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_14_reg_545 <= D_7_fu_94;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_reg_557 <= W_1_q0;
        W_load_reg_552 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_6_reg_587 <= add_ln118_6_fu_446_p2;
        icmp_ln116_reg_531 <= icmp_ln116_fu_222_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_531 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_17_out_ap_vld = 1'b1;
    end else begin
        A_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_531 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_531 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_17_out_ap_vld = 1'b1;
    end else begin
        D_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_531 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_17_out_ap_vld = 1'b1;
    end else begin
        E_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_531 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_2_out_ap_vld = 1'b1;
    end else begin
        E_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_531 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_90;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_17_out = B_12_fu_86;
assign A_8_fu_459_p2 = (add_ln118_6_reg_587 + add_ln118_4_fu_455_p2);
assign B_14_fu_333_p2 = (add_ln118_fu_328_p2 + add_ln118_2_fu_322_p2);
assign B_1_out = B_1_fu_82;
assign C_3_fu_412_p3 = {{trunc_ln118_3_fu_398_p1}, {lshr_ln118_3_fu_402_p4}};
assign D_10_fu_353_p3 = {{trunc_ln118_1_fu_339_p1}, {lshr_ln118_1_fu_343_p4}};
assign D_17_out = E_12_fu_78;
assign E_17_out = D_7_fu_94;
assign E_2_out = E_2_fu_74;
assign W_1_address0 = zext_ln100_fu_238_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_address0 = zext_ln100_fu_238_p1;
assign W_ce0 = W_ce0_local;
assign add_ln116_fu_244_p2 = (ap_sig_allocacmp_i + 5'd2);
assign add_ln118_1_fu_316_p2 = (or_ln118_1_fu_308_p3 + 32'd1518500249);
assign add_ln118_2_fu_322_p2 = (add_ln118_1_fu_316_p2 + E_2_fu_74);
assign add_ln118_4_fu_455_p2 = (W_1_load_reg_557 + E_12_load_reg_562);
assign add_ln118_5_fu_440_p2 = (or_ln118_4_fu_434_p3 + 32'd1518500249);
assign add_ln118_6_fu_446_p2 = (add_ln118_5_fu_440_p2 + or_ln118_2_reg_582);
assign add_ln118_fu_328_p2 = (or_ln118_fu_302_p2 + W_load_reg_552);
assign and_ln118_1_fu_296_p2 = (xor_ln118_fu_285_p2 & E_12_fu_78);
assign and_ln118_2_fu_381_p2 = (D_10_fu_353_p3 & B_12_fu_86);
assign and_ln118_3_fu_387_p2 = (xor_ln118_1_fu_375_p2 & E_14_reg_545);
assign and_ln118_fu_291_p2 = (E_14_reg_545 & B_1_fu_82);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_222_p2 = ((ap_sig_allocacmp_i < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_343_p4 = {{B_1_fu_82[31:2]}};
assign lshr_ln118_3_fu_402_p4 = {{B_12_fu_86[31:2]}};
assign lshr_ln2_fu_228_p4 = {{ap_sig_allocacmp_i[4:1]}};
assign lshr_ln3_fu_275_p4 = {{B_12_fu_86[31:27]}};
assign or_ln118_1_fu_308_p3 = {{trunc_ln118_fu_271_p1}, {lshr_ln3_fu_275_p4}};
assign or_ln118_2_fu_392_p2 = (and_ln118_3_fu_387_p2 | and_ln118_2_fu_381_p2);
assign or_ln118_4_fu_434_p3 = {{trunc_ln118_2_reg_572}, {lshr_ln118_2_reg_577}};
assign or_ln118_fu_302_p2 = (and_ln118_fu_291_p2 | and_ln118_1_fu_296_p2);
assign trunc_ln118_1_fu_339_p1 = B_1_fu_82[1:0];
assign trunc_ln118_2_fu_361_p1 = B_14_fu_333_p2[26:0];
assign trunc_ln118_3_fu_398_p1 = B_12_fu_86[1:0];
assign trunc_ln118_fu_271_p1 = B_12_fu_86[26:0];
assign xor_ln118_1_fu_375_p2 = (32'd4294967295 ^ B_12_fu_86);
assign xor_ln118_fu_285_p2 = (32'd4294967295 ^ B_1_fu_82);
assign zext_ln100_fu_238_p1 = lshr_ln2_fu_228_p4;
endmodule 