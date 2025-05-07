module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_11_reload,B_1_reload,E_11_reload,D_11_reload,E_2_reload,W_address0,W_ce0,W_q0,W_2_address0,W_2_ce0,W_2_q0,W_1_address0,W_1_ce0,W_1_q0,W_3_address0,W_3_ce0,W_3_q0,A_13_out,A_13_out_ap_vld,B_4_out,B_4_out_ap_vld,E_12_out,E_12_out_ap_vld,D_13_out,D_13_out_ap_vld,E_5_out,E_5_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_11_reload;
input  [31:0] B_1_reload;
input  [31:0] E_11_reload;
input  [31:0] D_11_reload;
input  [31:0] E_2_reload;
output  [4:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [4:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [4:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [4:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [31:0] A_13_out;
output   A_13_out_ap_vld;
output  [31:0] B_4_out;
output   B_4_out_ap_vld;
output  [31:0] E_12_out;
output   E_12_out_ap_vld;
output  [31:0] D_13_out;
output   D_13_out_ap_vld;
output  [31:0] E_5_out;
output   E_5_out_ap_vld;
reg ap_idle;
reg A_13_out_ap_vld;
reg B_4_out_ap_vld;
reg E_12_out_ap_vld;
reg D_13_out_ap_vld;
reg E_5_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln120_reg_571;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_reg_565;
wire   [0:0] icmp_ln120_fu_254_p2;
reg   [31:0] E_7_reg_595;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] add_ln122_1_fu_299_p2;
reg   [31:0] add_ln122_1_reg_602;
wire   [31:0] select_ln122_1_fu_305_p3;
reg   [31:0] select_ln122_1_reg_607;
reg   [31:0] E_5_load_reg_612;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_6_fu_369_p2;
reg   [31:0] B_6_reg_617;
wire   [26:0] trunc_ln122_2_fu_397_p1;
reg   [26:0] trunc_ln122_2_reg_622;
reg   [4:0] lshr_ln122_2_reg_627;
wire   [31:0] xor_ln122_3_fu_417_p2;
reg   [31:0] xor_ln122_3_reg_632;
wire   [31:0] add_ln122_6_fu_479_p2;
reg   [31:0] add_ln122_6_reg_637;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_270_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_80;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_5_fu_84;
wire   [31:0] D_9_fu_389_p3;
reg   [31:0] B_4_fu_88;
reg   [31:0] B_fu_92;
wire   [31:0] A_fu_493_p2;
reg   [5:0] i_2_fu_96;
wire   [5:0] add_ln120_fu_444_p2;
reg   [5:0] ap_sig_allocacmp_i;
reg   [31:0] D_fu_100;
wire   [31:0] C_fu_436_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_2_ce0_local;
reg    W_1_ce0_local;
reg    W_3_ce0_local;
wire   [3:0] lshr_ln100_1_fu_260_p4;
wire   [1:0] trunc_ln100_fu_282_p1;
wire   [0:0] icmp_ln122_fu_285_p2;
wire   [31:0] select_ln122_fu_291_p3;
wire   [31:0] xor_ln122_fu_339_p2;
wire   [26:0] trunc_ln122_fu_325_p1;
wire   [4:0] lshr_ln4_fu_329_p4;
wire   [31:0] or_ln_fu_350_p3;
wire   [31:0] xor_ln122_1_fu_344_p2;
wire   [31:0] add_ln122_fu_363_p2;
wire   [31:0] add_ln122_2_fu_358_p2;
wire   [1:0] trunc_ln122_1_fu_375_p1;
wire   [29:0] lshr_ln122_1_fu_379_p4;
wire   [31:0] xor_ln122_2_fu_411_p2;
wire   [1:0] trunc_ln122_3_fu_422_p1;
wire   [29:0] lshr_ln122_3_fu_426_p4;
wire   [31:0] or_ln122_2_fu_468_p3;
wire   [31:0] add_ln122_5_fu_474_p2;
wire   [31:0] add_ln122_4_fu_489_p2;
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
#0 E_fu_80 = 32'd0;
#0 E_5_fu_84 = 32'd0;
#0 B_4_fu_88 = 32'd0;
#0 B_fu_92 = 32'd0;
#0 i_2_fu_96 = 6'd0;
#0 D_fu_100 = 32'd0;
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
            B_4_fu_88 <= B_1_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_4_fu_88 <= B_6_reg_617;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_92 <= A_11_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_fu_92 <= A_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_fu_100 <= E_11_reload;
    end else if (((icmp_ln120_reg_571 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        D_fu_100 <= C_fu_436_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_84 <= D_11_reload;
    end else if (((icmp_ln120_reg_571 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_5_fu_84 <= D_9_fu_389_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_80 <= E_2_reload;
    end else if (((icmp_ln120_reg_571 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_fu_80 <= E_7_reg_595;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_96 <= 6'd20;
    end else if (((icmp_ln120_reg_571 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_2_fu_96 <= add_ln120_fu_444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_6_reg_617 <= B_6_fu_369_p2;
        E_5_load_reg_612 <= E_5_fu_84;
        lshr_ln122_2_reg_627 <= {{B_6_fu_369_p2[31:27]}};
        trunc_ln122_2_reg_622 <= trunc_ln122_2_fu_397_p1;
        xor_ln122_3_reg_632 <= xor_ln122_3_fu_417_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_7_reg_595 <= D_fu_100;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln122_1_reg_602 <= add_ln122_1_fu_299_p2;
        select_ln122_1_reg_607 <= select_ln122_1_fu_305_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_6_reg_637 <= add_ln122_6_fu_479_p2;
        i_reg_565 <= ap_sig_allocacmp_i;
        icmp_ln120_reg_571 <= icmp_ln120_fu_254_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_571 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_13_out_ap_vld = 1'b1;
    end else begin
        A_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_571 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_4_out_ap_vld = 1'b1;
    end else begin
        B_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_571 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_13_out_ap_vld = 1'b1;
    end else begin
        D_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_571 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_12_out_ap_vld = 1'b1;
    end else begin
        E_12_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_571 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
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
    if (((icmp_ln120_reg_571 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_96;
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
assign A_13_out = B_fu_92;
assign A_fu_493_p2 = (add_ln122_6_reg_637 + add_ln122_4_fu_489_p2);
assign B_4_out = B_4_fu_88;
assign B_6_fu_369_p2 = (add_ln122_fu_363_p2 + add_ln122_2_fu_358_p2);
assign C_fu_436_p3 = {{trunc_ln122_3_fu_422_p1}, {lshr_ln122_3_fu_426_p4}};
assign D_13_out = E_5_fu_84;
assign D_9_fu_389_p3 = {{trunc_ln122_1_fu_375_p1}, {lshr_ln122_1_fu_379_p4}};
assign E_12_out = D_fu_100;
assign E_5_out = E_fu_80;
assign W_1_address0 = zext_ln100_fu_270_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_270_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_270_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_address0 = zext_ln100_fu_270_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_fu_444_p2 = (i_reg_565 + 6'd2);
assign add_ln122_1_fu_299_p2 = (select_ln122_fu_291_p3 + 32'd1859775393);
assign add_ln122_2_fu_358_p2 = (add_ln122_1_reg_602 + or_ln_fu_350_p3);
assign add_ln122_4_fu_489_p2 = (E_5_load_reg_612 + xor_ln122_3_reg_632);
assign add_ln122_5_fu_474_p2 = (select_ln122_1_reg_607 + 32'd1859775393);
assign add_ln122_6_fu_479_p2 = (or_ln122_2_fu_468_p3 + add_ln122_5_fu_474_p2);
assign add_ln122_fu_363_p2 = (xor_ln122_1_fu_344_p2 + E_fu_80);
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
assign icmp_ln120_fu_254_p2 = ((ap_sig_allocacmp_i < 6'd40) ? 1'b1 : 1'b0);
assign icmp_ln122_fu_285_p2 = ((trunc_ln100_fu_282_p1 != 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_260_p4 = {{ap_sig_allocacmp_i[5:2]}};
assign lshr_ln122_1_fu_379_p4 = {{B_4_fu_88[31:2]}};
assign lshr_ln122_3_fu_426_p4 = {{B_fu_92[31:2]}};
assign lshr_ln4_fu_329_p4 = {{B_fu_92[31:27]}};
assign or_ln122_2_fu_468_p3 = {{trunc_ln122_2_reg_622}, {lshr_ln122_2_reg_627}};
assign or_ln_fu_350_p3 = {{trunc_ln122_fu_325_p1}, {lshr_ln4_fu_329_p4}};
assign select_ln122_1_fu_305_p3 = ((icmp_ln122_fu_285_p2[0:0] == 1'b1) ? W_3_q0 : W_1_q0);
assign select_ln122_fu_291_p3 = ((icmp_ln122_fu_285_p2[0:0] == 1'b1) ? W_2_q0 : W_q0);
assign trunc_ln100_fu_282_p1 = i_reg_565[1:0];
assign trunc_ln122_1_fu_375_p1 = B_4_fu_88[1:0];
assign trunc_ln122_2_fu_397_p1 = B_6_fu_369_p2[26:0];
assign trunc_ln122_3_fu_422_p1 = B_fu_92[1:0];
assign trunc_ln122_fu_325_p1 = B_fu_92[26:0];
assign xor_ln122_1_fu_344_p2 = (xor_ln122_fu_339_p2 ^ B_4_fu_88);
assign xor_ln122_2_fu_411_p2 = (D_9_fu_389_p3 ^ B_fu_92);
assign xor_ln122_3_fu_417_p2 = (xor_ln122_2_fu_411_p2 ^ E_7_reg_595);
assign xor_ln122_fu_339_p2 = (E_7_reg_595 ^ E_5_fu_84);
assign zext_ln100_fu_270_p1 = lshr_ln100_1_fu_260_p4;
endmodule 