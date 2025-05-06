
module stencil3d_stencil3d_Pipeline_height_bound_col_height_bound_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_1_address1,sol_1_ce1,sol_1_we1,sol_1_d1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [12:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
output  [12:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [12:0] sol_1_address1;
output   sol_1_ce1;
output   sol_1_we1;
output  [31:0] sol_1_d1;
output  [12:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [12:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [12:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [12:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln15_fu_188_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln16_fu_239_p1;
reg   [0:0] trunc_ln16_reg_344;
reg   [0:0] trunc_ln16_reg_344_pp0_iter2_reg;
reg   [0:0] trunc_ln16_reg_344_pp0_iter3_reg;
wire   [2:0] lshr_ln_fu_243_p4;
reg   [2:0] lshr_ln_reg_350;
wire   [4:0] trunc_ln17_fu_253_p1;
reg   [4:0] trunc_ln17_reg_355;
wire   [63:0] zext_ln17_fu_265_p1;
reg   [63:0] zext_ln17_reg_360;
reg   [63:0] zext_ln17_reg_360_pp0_iter2_reg;
wire   [31:0] select_ln17_fu_287_p3;
reg   [31:0] select_ln17_reg_376;
wire   [63:0] zext_ln18_fu_306_p1;
reg   [63:0] zext_ln18_reg_382;
reg   [63:0] zext_ln18_reg_382_pp0_iter3_reg;
wire   [31:0] select_ln18_fu_312_p3;
reg   [31:0] select_ln18_reg_398;
wire    ap_block_pp0_stage0;
reg   [4:0] k_fu_58;
wire   [4:0] add_ln16_fu_271_p2;
wire    ap_loop_init;
reg   [5:0] j_fu_62;
wire   [5:0] select_ln15_fu_231_p3;
reg   [9:0] indvar_flatten_fu_66;
wire   [9:0] add_ln15_fu_194_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    orig_0_ce1_local;
reg    orig_0_ce0_local;
reg    orig_1_ce1_local;
reg    orig_1_ce0_local;
reg    sol_0_we1_local;
reg    sol_0_ce1_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_1_we1_local;
reg    sol_1_ce1_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
wire   [0:0] icmp_ln16_fu_211_p2;
wire   [5:0] add_ln15_1_fu_225_p2;
wire   [4:0] select_ln11_fu_217_p3;
wire   [7:0] add_ln_fu_257_p3;
wire   [8:0] or_ln18_1_fu_294_p4;
wire  signed [12:0] sext_ln18_fu_302_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 k_fu_58 = 5'd0;
#0 j_fu_62 = 6'd0;
#0 indvar_flatten_fu_66 = 10'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln15_fu_188_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_66 <= add_ln15_fu_194_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_66 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_62 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_62 <= select_ln15_fu_231_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_58 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            k_fu_58 <= add_ln16_fu_271_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_350 <= {{select_ln11_fu_217_p3[3:1]}};
        trunc_ln16_reg_344 <= trunc_ln16_fu_239_p1;
        trunc_ln17_reg_355 <= trunc_ln17_fu_253_p1;
        zext_ln17_reg_360[7 : 0] <= zext_ln17_fu_265_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        select_ln17_reg_376 <= select_ln17_fu_287_p3;
        select_ln18_reg_398 <= select_ln18_fu_312_p3;
        trunc_ln16_reg_344_pp0_iter2_reg <= trunc_ln16_reg_344;
        trunc_ln16_reg_344_pp0_iter3_reg <= trunc_ln16_reg_344_pp0_iter2_reg;
        zext_ln17_reg_360_pp0_iter2_reg[7 : 0] <= zext_ln17_reg_360[7 : 0];
        zext_ln18_reg_382[7 : 0] <= zext_ln18_fu_306_p1[7 : 0];
        zext_ln18_reg_382_pp0_iter3_reg[7 : 0] <= zext_ln18_reg_382[7 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln15_fu_188_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_0_ce1_local = 1'b1;
    end else begin
        sol_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln16_reg_344_pp0_iter3_reg == 1'd0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_344_pp0_iter2_reg == 1'd0))) begin
        sol_0_we1_local = 1'b1;
    end else begin
        sol_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_1_ce1_local = 1'b1;
    end else begin
        sol_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln16_reg_344_pp0_iter3_reg == 1'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln16_reg_344_pp0_iter2_reg == 1'd1))) begin
        sol_1_we1_local = 1'b1;
    end else begin
        sol_1_we1_local = 1'b0;
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
assign add_ln15_1_fu_225_p2 = (j_fu_62 + 6'd1);
assign add_ln15_fu_194_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln16_fu_271_p2 = (select_ln11_fu_217_p3 + 5'd1);
assign add_ln_fu_257_p3 = {{trunc_ln17_fu_253_p1}, {lshr_ln_fu_243_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln15_fu_188_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_211_p2 = ((k_fu_58 == 5'd16) ? 1'b1 : 1'b0);
assign lshr_ln_fu_243_p4 = {{select_ln11_fu_217_p3[3:1]}};
assign or_ln18_1_fu_294_p4 = {{{{1'd1}, {trunc_ln17_reg_355}}}, {lshr_ln_reg_350}};
assign orig_0_address0 = zext_ln18_fu_306_p1;
assign orig_0_address1 = zext_ln17_fu_265_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = zext_ln18_fu_306_p1;
assign orig_1_address1 = zext_ln17_fu_265_p1;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign select_ln11_fu_217_p3 = ((icmp_ln16_fu_211_p2[0:0] == 1'b1) ? 5'd0 : k_fu_58);
assign select_ln15_fu_231_p3 = ((icmp_ln16_fu_211_p2[0:0] == 1'b1) ? add_ln15_1_fu_225_p2 : j_fu_62);
assign select_ln17_fu_287_p3 = ((trunc_ln16_reg_344[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign select_ln18_fu_312_p3 = ((trunc_ln16_reg_344_pp0_iter2_reg[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign sext_ln18_fu_302_p1 = $signed(or_ln18_1_fu_294_p4);
assign sol_0_address0 = zext_ln18_reg_382_pp0_iter3_reg;
assign sol_0_address1 = zext_ln17_reg_360_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_ce1 = sol_0_ce1_local;
assign sol_0_d0 = select_ln18_reg_398;
assign sol_0_d1 = select_ln17_reg_376;
assign sol_0_we0 = sol_0_we0_local;
assign sol_0_we1 = sol_0_we1_local;
assign sol_1_address0 = zext_ln18_reg_382_pp0_iter3_reg;
assign sol_1_address1 = zext_ln17_reg_360_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_ce1 = sol_1_ce1_local;
assign sol_1_d0 = select_ln18_reg_398;
assign sol_1_d1 = select_ln17_reg_376;
assign sol_1_we0 = sol_1_we0_local;
assign sol_1_we1 = sol_1_we1_local;
assign trunc_ln16_fu_239_p1 = select_ln11_fu_217_p3[0:0];
assign trunc_ln17_fu_253_p1 = select_ln15_fu_231_p3[4:0];
assign zext_ln17_fu_265_p1 = add_ln_fu_257_p3;
assign zext_ln18_fu_306_p1 = $unsigned(sext_ln18_fu_302_p1);
always @ (posedge ap_clk) begin
    zext_ln17_reg_360[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln17_reg_360_pp0_iter2_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln18_reg_382[63:8] <= 56'b00000000000000000000000000000000000000000000000000011111;
    zext_ln18_reg_382_pp0_iter3_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000011111;
end
endmodule 
