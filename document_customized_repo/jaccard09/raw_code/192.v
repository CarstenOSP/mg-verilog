module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_13_reload,B_1_reload,E_13_reload,D_13_reload,E_2_reload,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,A_15_out,A_15_out_ap_vld,B_4_out,B_4_out_ap_vld,E_14_out,E_14_out_ap_vld,D_15_out,D_15_out_ap_vld,E_5_out,E_5_out_ap_vld); 
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
input  [31:0] A_13_reload;
input  [31:0] B_1_reload;
input  [31:0] E_13_reload;
input  [31:0] D_13_reload;
input  [31:0] E_2_reload;
output  [5:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [5:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [31:0] A_15_out;
output   A_15_out_ap_vld;
output  [31:0] B_4_out;
output   B_4_out_ap_vld;
output  [31:0] E_14_out;
output   E_14_out_ap_vld;
output  [31:0] D_15_out;
output   D_15_out_ap_vld;
output  [31:0] E_5_out;
output   E_5_out_ap_vld;
reg ap_idle;
reg A_15_out_ap_vld;
reg B_4_out_ap_vld;
reg E_14_out_ap_vld;
reg D_15_out_ap_vld;
reg E_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln120_reg_507;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln120_fu_222_p2;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] E_8_reg_521;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] B_load_reg_527;
reg   [31:0] W_load_reg_532;
wire   [31:0] add_ln122_2_fu_293_p2;
reg   [31:0] add_ln122_2_reg_537;
reg   [31:0] W_1_load_reg_542;
reg   [31:0] E_load_reg_547;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln122_2_fu_380_p1;
reg   [26:0] trunc_ln122_2_reg_552;
reg   [4:0] lshr_ln122_2_reg_557;
wire   [31:0] xor_ln122_3_fu_399_p2;
reg   [31:0] xor_ln122_3_reg_562;
wire   [31:0] add_ln122_6_fu_426_p2;
reg   [31:0] add_ln122_6_reg_567;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln100_fu_238_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_5_fu_74;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_fu_78;
wire   [31:0] D_7_fu_372_p3;
wire    ap_block_pp0_stage2;
reg   [31:0] B_4_fu_82;
wire   [31:0] B_7_fu_353_p2;
reg   [31:0] B_fu_86;
wire   [31:0] A_fu_435_p2;
reg   [5:0] i_2_fu_90;
wire   [5:0] add_ln120_fu_244_p2;
reg   [5:0] ap_sig_allocacmp_i;
reg   [31:0] D_fu_94;
wire   [31:0] C_fu_313_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
wire   [4:0] lshr_ln100_1_fu_228_p4;
wire   [26:0] trunc_ln122_fu_265_p1;
wire   [4:0] lshr_ln4_fu_269_p4;
wire   [31:0] or_ln_fu_279_p3;
wire   [31:0] add_ln122_1_fu_287_p2;
wire   [1:0] trunc_ln122_3_fu_299_p1;
wire   [29:0] lshr_ln122_3_fu_303_p4;
wire   [31:0] xor_ln122_fu_337_p2;
wire   [31:0] xor_ln122_1_fu_343_p2;
wire   [31:0] add_ln122_fu_348_p2;
wire   [1:0] trunc_ln122_1_fu_358_p1;
wire   [29:0] lshr_ln122_1_fu_362_p4;
wire   [31:0] xor_ln122_2_fu_394_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln122_2_fu_414_p3;
wire   [31:0] add_ln122_5_fu_420_p2;
wire   [31:0] add_ln122_4_fu_431_p2;
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
#0 E_5_fu_74 = 32'd0;
#0 E_fu_78 = 32'd0;
#0 B_4_fu_82 = 32'd0;
#0 B_fu_86 = 32'd0;
#0 i_2_fu_90 = 6'd0;
#0 D_fu_94 = 32'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_4_fu_82 <= B_1_reload;
    end else if (((icmp_ln120_reg_507 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_4_fu_82 <= B_7_fu_353_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_86 <= A_13_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_86 <= A_fu_435_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        D_fu_94 <= E_13_reload;
    end else if (((icmp_ln120_reg_507 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_fu_94 <= C_fu_313_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_5_fu_74 <= E_2_reload;
    end else if (((icmp_ln120_reg_507 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_5_fu_74 <= D_fu_94;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_fu_78 <= D_13_reload;
    end else if (((icmp_ln120_reg_507 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_fu_78 <= D_7_fu_372_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln120_fu_222_p2 == 1'd1))) begin
            i_2_fu_90 <= add_ln120_fu_244_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_90 <= 6'd20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_load_reg_527 <= B_fu_86;
        W_1_load_reg_542 <= W_1_q0;
        W_load_reg_532 <= W_q0;
        add_ln122_2_reg_537 <= add_ln122_2_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_8_reg_521 <= D_fu_94;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_load_reg_547 <= E_fu_78;
        lshr_ln122_2_reg_557 <= {{B_7_fu_353_p2[31:27]}};
        trunc_ln122_2_reg_552 <= trunc_ln122_2_fu_380_p1;
        xor_ln122_3_reg_562 <= xor_ln122_3_fu_399_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln122_6_reg_567 <= add_ln122_6_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln120_reg_507 <= icmp_ln120_fu_222_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_15_out_ap_vld = 1'b1;
    end else begin
        A_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_4_out_ap_vld = 1'b1;
    end else begin
        B_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_15_out_ap_vld = 1'b1;
    end else begin
        D_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_14_out_ap_vld = 1'b1;
    end else begin
        E_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_5_out_ap_vld = 1'b1;
    end else begin
        E_5_out_ap_vld = 1'b0;
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
    if (((icmp_ln120_reg_507 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_90;
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
assign A_15_out = B_fu_86;
assign A_fu_435_p2 = (add_ln122_6_reg_567 + add_ln122_4_fu_431_p2);
assign B_4_out = B_4_fu_82;
assign B_7_fu_353_p2 = (add_ln122_2_reg_537 + add_ln122_fu_348_p2);
assign C_fu_313_p3 = {{trunc_ln122_3_fu_299_p1}, {lshr_ln122_3_fu_303_p4}};
assign D_15_out = E_fu_78;
assign D_7_fu_372_p3 = {{trunc_ln122_1_fu_358_p1}, {lshr_ln122_1_fu_362_p4}};
assign E_14_out = D_fu_94;
assign E_5_out = E_5_fu_74;
assign W_1_address0 = zext_ln100_fu_238_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_address0 = zext_ln100_fu_238_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_fu_244_p2 = (ap_sig_allocacmp_i + 6'd2);
assign add_ln122_1_fu_287_p2 = (or_ln_fu_279_p3 + 32'd1859775393);
assign add_ln122_2_fu_293_p2 = (add_ln122_1_fu_287_p2 + E_5_fu_74);
assign add_ln122_4_fu_431_p2 = (W_1_load_reg_542 + E_load_reg_547);
assign add_ln122_5_fu_420_p2 = (or_ln122_2_fu_414_p3 + 32'd1859775393);
assign add_ln122_6_fu_426_p2 = (add_ln122_5_fu_420_p2 + xor_ln122_3_reg_562);
assign add_ln122_fu_348_p2 = (W_load_reg_532 + xor_ln122_1_fu_343_p2);
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
assign icmp_ln120_fu_222_p2 = ((ap_sig_allocacmp_i < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_228_p4 = {{ap_sig_allocacmp_i[5:1]}};
assign lshr_ln122_1_fu_362_p4 = {{B_4_fu_82[31:2]}};
assign lshr_ln122_3_fu_303_p4 = {{B_fu_86[31:2]}};
assign lshr_ln4_fu_269_p4 = {{B_fu_86[31:27]}};
assign or_ln122_2_fu_414_p3 = {{trunc_ln122_2_reg_552}, {lshr_ln122_2_reg_557}};
assign or_ln_fu_279_p3 = {{trunc_ln122_fu_265_p1}, {lshr_ln4_fu_269_p4}};
assign trunc_ln122_1_fu_358_p1 = B_4_fu_82[1:0];
assign trunc_ln122_2_fu_380_p1 = B_7_fu_353_p2[26:0];
assign trunc_ln122_3_fu_299_p1 = B_fu_86[1:0];
assign trunc_ln122_fu_265_p1 = B_fu_86[26:0];
assign xor_ln122_1_fu_343_p2 = (xor_ln122_fu_337_p2 ^ E_8_reg_521);
assign xor_ln122_2_fu_394_p2 = (D_7_fu_372_p3 ^ B_load_reg_527);
assign xor_ln122_3_fu_399_p2 = (xor_ln122_2_fu_394_p2 ^ E_8_reg_521);
assign xor_ln122_fu_337_p2 = (E_fu_78 ^ B_4_fu_82);
assign zext_ln100_fu_238_p1 = lshr_ln100_1_fu_228_p4;
endmodule 