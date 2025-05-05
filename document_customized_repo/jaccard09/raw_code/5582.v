module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_reload,B_42_reload,E_47_reload,D_reload,E_28_reload,W_address0,W_ce0,W_q0,W_address1,W_ce1,W_q1,A_29_out,A_29_out_ap_vld,B_35_out,B_35_out_ap_vld,C_87_out,C_87_out_ap_vld,D_29_out,D_29_out_ap_vld,E_32_out,E_32_out_ap_vld); 
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
input  [31:0] A_reload;
input  [31:0] B_42_reload;
input  [31:0] E_47_reload;
input  [31:0] D_reload;
input  [31:0] E_28_reload;
output  [6:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [6:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
output  [31:0] A_29_out;
output   A_29_out_ap_vld;
output  [31:0] B_35_out;
output   B_35_out_ap_vld;
output  [31:0] C_87_out;
output   C_87_out_ap_vld;
output  [31:0] D_29_out;
output   D_29_out_ap_vld;
output  [31:0] E_32_out;
output   E_32_out_ap_vld;
reg ap_idle;
reg A_29_out_ap_vld;
reg B_35_out_ap_vld;
reg C_87_out_ap_vld;
reg D_29_out_ap_vld;
reg E_32_out_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln128_reg_520;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln128_fu_223_p2;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] C_2_reg_534;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] B_1_load_reg_540;
reg   [31:0] W_load_reg_545;
wire   [31:0] add_ln130_2_fu_306_p2;
reg   [31:0] add_ln130_2_reg_550;
reg   [31:0] W_load_1_reg_555;
reg   [31:0] E_1_load_reg_560;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln130_2_fu_393_p1;
reg   [26:0] trunc_ln130_2_reg_565;
reg   [4:0] lshr_ln130_2_reg_570;
wire   [31:0] xor_ln130_3_fu_412_p2;
reg   [31:0] xor_ln130_3_reg_575;
wire   [31:0] add_ln130_6_fu_439_p2;
reg   [31:0] add_ln130_6_reg_580;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln128_fu_229_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln100_fu_252_p1;
reg   [31:0] E_fu_76;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_80;
wire   [31:0] C_3_fu_385_p3;
wire    ap_block_pp0_stage2;
reg   [31:0] B_fu_84;
wire   [31:0] temp_fu_366_p2;
reg   [31:0] B_1_fu_88;
wire   [31:0] temp_1_fu_448_p2;
reg   [6:0] i_fu_92;
wire   [6:0] add_ln128_fu_257_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
reg   [31:0] E_2_fu_96;
wire   [31:0] C_fu_326_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce1_local;
reg    W_ce0_local;
wire   [5:0] tmp_s_fu_234_p4;
wire   [6:0] or_ln5_fu_244_p3;
wire   [26:0] trunc_ln130_fu_278_p1;
wire   [4:0] lshr_ln3_fu_282_p4;
wire   [31:0] or_ln4_fu_292_p3;
wire   [31:0] add_ln130_1_fu_300_p2;
wire   [1:0] trunc_ln130_3_fu_312_p1;
wire   [29:0] lshr_ln130_3_fu_316_p4;
wire   [31:0] xor_ln130_fu_350_p2;
wire   [31:0] xor_ln130_1_fu_356_p2;
wire   [31:0] add_ln130_fu_361_p2;
wire   [1:0] trunc_ln130_1_fu_371_p1;
wire   [29:0] lshr_ln130_1_fu_375_p4;
wire   [31:0] xor_ln130_2_fu_407_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln130_2_fu_427_p3;
wire   [31:0] add_ln130_5_fu_433_p2;
wire   [31:0] add_ln130_4_fu_444_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_76 = 32'd0;
#0 E_1_fu_80 = 32'd0;
#0 B_fu_84 = 32'd0;
#0 B_1_fu_88 = 32'd0;
#0 i_fu_92 = 7'd0;
#0 E_2_fu_96 = 32'd0;
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_88 <= A_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_88 <= temp_1_fu_448_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_fu_84 <= B_42_reload;
    end else if (((icmp_ln128_reg_520 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_fu_84 <= temp_fu_366_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_1_fu_80 <= D_reload;
    end else if (((icmp_ln128_reg_520 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_fu_80 <= C_3_fu_385_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_2_fu_96 <= E_47_reload;
    end else if (((icmp_ln128_reg_520 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_2_fu_96 <= C_fu_326_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_fu_76 <= E_28_reload;
    end else if (((icmp_ln128_reg_520 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_fu_76 <= E_2_fu_96;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln128_fu_223_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_92 <= add_ln128_fu_257_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_92 <= 7'd60;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_load_reg_540 <= B_1_fu_88;
        add_ln130_2_reg_550 <= add_ln130_2_fu_306_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_2_reg_534 <= E_2_fu_96;
        W_load_1_reg_555 <= W_q0;
        W_load_reg_545 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_load_reg_560 <= E_1_fu_80;
        lshr_ln130_2_reg_570 <= {{temp_fu_366_p2[31:27]}};
        trunc_ln130_2_reg_565 <= trunc_ln130_2_fu_393_p1;
        xor_ln130_3_reg_575 <= xor_ln130_3_fu_412_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln130_6_reg_580 <= add_ln130_6_fu_439_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln128_reg_520 <= icmp_ln128_fu_223_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_520 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_29_out_ap_vld = 1'b1;
    end else begin
        A_29_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_520 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_35_out_ap_vld = 1'b1;
    end else begin
        B_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_520 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_87_out_ap_vld = 1'b1;
    end else begin
        C_87_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_520 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_29_out_ap_vld = 1'b1;
    end else begin
        D_29_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_520 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_32_out_ap_vld = 1'b1;
    end else begin
        E_32_out_ap_vld = 1'b0;
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
    if (((icmp_ln128_reg_520 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_92;
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
assign A_29_out = B_1_fu_88;
assign B_35_out = B_fu_84;
assign C_3_fu_385_p3 = {{trunc_ln130_1_fu_371_p1}, {lshr_ln130_1_fu_375_p4}};
assign C_87_out = E_2_fu_96;
assign C_fu_326_p3 = {{trunc_ln130_3_fu_312_p1}, {lshr_ln130_3_fu_316_p4}};
assign D_29_out = E_1_fu_80;
assign E_32_out = E_fu_76;
assign W_address0 = zext_ln100_fu_252_p1;
assign W_address1 = zext_ln128_fu_229_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign add_ln128_fu_257_p2 = (ap_sig_allocacmp_i_1 + 7'd2);
assign add_ln130_1_fu_300_p2 = ($signed(or_ln4_fu_292_p3) + $signed(32'd3395469782));
assign add_ln130_2_fu_306_p2 = (add_ln130_1_fu_300_p2 + E_fu_76);
assign add_ln130_4_fu_444_p2 = (W_load_1_reg_555 + E_1_load_reg_560);
assign add_ln130_5_fu_433_p2 = ($signed(or_ln130_2_fu_427_p3) + $signed(32'd3395469782));
assign add_ln130_6_fu_439_p2 = (add_ln130_5_fu_433_p2 + xor_ln130_3_reg_575);
assign add_ln130_fu_361_p2 = (W_load_reg_545 + xor_ln130_1_fu_356_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_223_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_1_fu_375_p4 = {{B_fu_84[31:2]}};
assign lshr_ln130_3_fu_316_p4 = {{B_1_fu_88[31:2]}};
assign lshr_ln3_fu_282_p4 = {{B_1_fu_88[31:27]}};
assign or_ln130_2_fu_427_p3 = {{trunc_ln130_2_reg_565}, {lshr_ln130_2_reg_570}};
assign or_ln4_fu_292_p3 = {{trunc_ln130_fu_278_p1}, {lshr_ln3_fu_282_p4}};
assign or_ln5_fu_244_p3 = {{tmp_s_fu_234_p4}, {1'd1}};
assign temp_1_fu_448_p2 = (add_ln130_6_reg_580 + add_ln130_4_fu_444_p2);
assign temp_fu_366_p2 = (add_ln130_2_reg_550 + add_ln130_fu_361_p2);
assign tmp_s_fu_234_p4 = {{ap_sig_allocacmp_i_1[6:1]}};
assign trunc_ln130_1_fu_371_p1 = B_fu_84[1:0];
assign trunc_ln130_2_fu_393_p1 = temp_fu_366_p2[26:0];
assign trunc_ln130_3_fu_312_p1 = B_1_fu_88[1:0];
assign trunc_ln130_fu_278_p1 = B_1_fu_88[26:0];
assign xor_ln130_1_fu_356_p2 = (xor_ln130_fu_350_p2 ^ C_2_reg_534);
assign xor_ln130_2_fu_407_p2 = (C_3_fu_385_p3 ^ B_1_load_reg_540);
assign xor_ln130_3_fu_412_p2 = (xor_ln130_2_fu_407_p2 ^ C_2_reg_534);
assign xor_ln130_fu_350_p2 = (E_1_fu_80 ^ B_fu_84);
assign zext_ln100_fu_252_p1 = or_ln5_fu_244_p3;
assign zext_ln128_fu_229_p1 = ap_sig_allocacmp_i_1;
endmodule 