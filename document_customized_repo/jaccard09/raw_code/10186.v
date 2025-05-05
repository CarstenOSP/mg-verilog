module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,A_46_out,A_46_out_ap_vld,B_1_out,B_1_out_ap_vld,E_47_out,E_47_out_ap_vld,D_47_out,D_47_out_ap_vld,E_2_out,E_2_out_ap_vld); 
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
output  [6:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [6:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [31:0] A_46_out;
output   A_46_out_ap_vld;
output  [31:0] B_1_out;
output   B_1_out_ap_vld;
output  [31:0] E_47_out;
output   E_47_out_ap_vld;
output  [31:0] D_47_out;
output   D_47_out_ap_vld;
output  [31:0] E_2_out;
output   E_2_out_ap_vld;
reg ap_idle;
reg A_46_out_ap_vld;
reg B_1_out_ap_vld;
reg E_47_out_ap_vld;
reg D_47_out_ap_vld;
reg E_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln116_reg_544;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln116_fu_223_p2;
reg   [31:0] E_6_reg_558;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_load_reg_565;
reg   [31:0] W_load_2_reg_570;
reg   [31:0] E_4_load_reg_575;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_5_fu_346_p2;
reg   [31:0] B_5_reg_580;
wire   [26:0] trunc_ln118_2_fu_374_p1;
reg   [26:0] trunc_ln118_2_reg_585;
reg   [4:0] lshr_ln118_2_reg_590;
wire   [31:0] or_ln118_2_fu_405_p2;
reg   [31:0] or_ln118_2_reg_595;
wire   [31:0] add_ln118_6_fu_459_p2;
reg   [31:0] add_ln118_6_reg_600;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_229_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_1_fu_252_p1;
reg   [31:0] E_2_fu_76;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_4_fu_80;
wire   [31:0] D_5_fu_366_p3;
reg   [31:0] B_1_fu_84;
reg   [31:0] B_3_fu_88;
wire   [31:0] A_4_fu_472_p2;
reg   [4:0] i_1_fu_92;
wire   [4:0] add_ln116_fu_257_p2;
reg   [4:0] ap_sig_allocacmp_i;
reg   [31:0] D_2_fu_96;
wire   [31:0] C_3_fu_425_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce1_local;
reg    W_ce0_local;
wire   [3:0] tmp_3_fu_234_p4;
wire   [4:0] or_ln1_fu_244_p3;
wire   [31:0] xor_ln118_fu_298_p2;
wire   [31:0] and_ln118_1_fu_309_p2;
wire   [31:0] and_ln118_fu_304_p2;
wire   [26:0] trunc_ln118_fu_284_p1;
wire   [4:0] lshr_ln_fu_288_p4;
wire   [31:0] or_ln118_1_fu_321_p3;
wire   [31:0] add_ln118_1_fu_329_p2;
wire   [31:0] or_ln118_fu_315_p2;
wire   [31:0] add_ln118_fu_341_p2;
wire   [31:0] add_ln118_2_fu_335_p2;
wire   [1:0] trunc_ln118_1_fu_352_p1;
wire   [29:0] lshr_ln118_1_fu_356_p4;
wire   [31:0] xor_ln118_1_fu_388_p2;
wire   [31:0] and_ln118_2_fu_394_p2;
wire   [31:0] and_ln118_3_fu_400_p2;
wire   [1:0] trunc_ln118_3_fu_411_p1;
wire   [29:0] lshr_ln118_3_fu_415_p4;
wire   [31:0] or_ln118_4_fu_447_p3;
wire   [31:0] add_ln118_5_fu_453_p2;
wire   [31:0] add_ln118_4_fu_468_p2;
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
#0 E_2_fu_76 = 32'd0;
#0 E_4_fu_80 = 32'd0;
#0 B_1_fu_84 = 32'd0;
#0 B_3_fu_88 = 32'd0;
#0 i_1_fu_92 = 5'd0;
#0 D_2_fu_96 = 32'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_84 <= B;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_84 <= B_5_reg_580;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_3_fu_88 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_3_fu_88 <= A_4_fu_472_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        D_2_fu_96 <= C;
    end else if (((icmp_ln116_reg_544 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        D_2_fu_96 <= C_3_fu_425_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_2_fu_76 <= E;
    end else if (((icmp_ln116_reg_544 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_2_fu_76 <= E_6_reg_558;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_4_fu_80 <= D;
    end else if (((icmp_ln116_reg_544 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_4_fu_80 <= D_5_fu_366_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln116_fu_223_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_92 <= add_ln116_fu_257_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_92 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_5_reg_580 <= B_5_fu_346_p2;
        E_4_load_reg_575 <= E_4_fu_80;
        lshr_ln118_2_reg_590 <= {{B_5_fu_346_p2[31:27]}};
        or_ln118_2_reg_595 <= or_ln118_2_fu_405_p2;
        trunc_ln118_2_reg_585 <= trunc_ln118_2_fu_374_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_reg_558 <= D_2_fu_96;
        W_load_2_reg_570 <= W_q0;
        W_load_reg_565 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_6_reg_600 <= add_ln118_6_fu_459_p2;
        icmp_ln116_reg_544 <= icmp_ln116_fu_223_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_544 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_46_out_ap_vld = 1'b1;
    end else begin
        A_46_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_544 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_544 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_47_out_ap_vld = 1'b1;
    end else begin
        D_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_544 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_2_out_ap_vld = 1'b1;
    end else begin
        E_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_544 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_47_out_ap_vld = 1'b1;
    end else begin
        E_47_out_ap_vld = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_544 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i = i_1_fu_92;
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
assign A_46_out = B_3_fu_88;
assign A_4_fu_472_p2 = (add_ln118_6_reg_600 + add_ln118_4_fu_468_p2);
assign B_1_out = B_1_fu_84;
assign B_5_fu_346_p2 = (add_ln118_fu_341_p2 + add_ln118_2_fu_335_p2);
assign C_3_fu_425_p3 = {{trunc_ln118_3_fu_411_p1}, {lshr_ln118_3_fu_415_p4}};
assign D_47_out = E_4_fu_80;
assign D_5_fu_366_p3 = {{trunc_ln118_1_fu_352_p1}, {lshr_ln118_1_fu_356_p4}};
assign E_2_out = E_2_fu_76;
assign E_47_out = D_2_fu_96;
assign W_address0 = zext_ln100_1_fu_252_p1;
assign W_address1 = zext_ln100_fu_229_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln116_fu_257_p2 = (ap_sig_allocacmp_i + 5'd2);
assign add_ln118_1_fu_329_p2 = (or_ln118_1_fu_321_p3 + 32'd1518500249);
assign add_ln118_2_fu_335_p2 = (add_ln118_1_fu_329_p2 + E_2_fu_76);
assign add_ln118_4_fu_468_p2 = (W_load_2_reg_570 + E_4_load_reg_575);
assign add_ln118_5_fu_453_p2 = (or_ln118_4_fu_447_p3 + 32'd1518500249);
assign add_ln118_6_fu_459_p2 = (add_ln118_5_fu_453_p2 + or_ln118_2_reg_595);
assign add_ln118_fu_341_p2 = (or_ln118_fu_315_p2 + W_load_reg_565);
assign and_ln118_1_fu_309_p2 = (xor_ln118_fu_298_p2 & E_4_fu_80);
assign and_ln118_2_fu_394_p2 = (D_5_fu_366_p3 & B_3_fu_88);
assign and_ln118_3_fu_400_p2 = (xor_ln118_1_fu_388_p2 & E_6_reg_558);
assign and_ln118_fu_304_p2 = (E_6_reg_558 & B_1_fu_84);
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
assign icmp_ln116_fu_223_p2 = ((ap_sig_allocacmp_i < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_356_p4 = {{B_1_fu_84[31:2]}};
assign lshr_ln118_3_fu_415_p4 = {{B_3_fu_88[31:2]}};
assign lshr_ln_fu_288_p4 = {{B_3_fu_88[31:27]}};
assign or_ln118_1_fu_321_p3 = {{trunc_ln118_fu_284_p1}, {lshr_ln_fu_288_p4}};
assign or_ln118_2_fu_405_p2 = (and_ln118_3_fu_400_p2 | and_ln118_2_fu_394_p2);
assign or_ln118_4_fu_447_p3 = {{trunc_ln118_2_reg_585}, {lshr_ln118_2_reg_590}};
assign or_ln118_fu_315_p2 = (and_ln118_fu_304_p2 | and_ln118_1_fu_309_p2);
assign or_ln1_fu_244_p3 = {{tmp_3_fu_234_p4}, {1'd1}};
assign tmp_3_fu_234_p4 = {{ap_sig_allocacmp_i[4:1]}};
assign trunc_ln118_1_fu_352_p1 = B_1_fu_84[1:0];
assign trunc_ln118_2_fu_374_p1 = B_5_fu_346_p2[26:0];
assign trunc_ln118_3_fu_411_p1 = B_3_fu_88[1:0];
assign trunc_ln118_fu_284_p1 = B_3_fu_88[26:0];
assign xor_ln118_1_fu_388_p2 = (32'd4294967295 ^ B_3_fu_88);
assign xor_ln118_fu_298_p2 = (32'd4294967295 ^ B_1_fu_84);
assign zext_ln100_1_fu_252_p1 = or_ln1_fu_244_p3;
assign zext_ln100_fu_229_p1 = ap_sig_allocacmp_i;
endmodule 