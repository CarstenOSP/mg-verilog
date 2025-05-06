
module stencil3d_stencil3d_Pipeline_col_bound_height_col_bound_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_1_address1,sol_1_ce1,sol_1_we1,sol_1_d1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1);  
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln21_fu_186_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln22_fu_237_p1;
reg   [0:0] trunc_ln22_reg_342;
reg   [0:0] trunc_ln22_reg_342_pp0_iter2_reg;
wire   [63:0] zext_ln23_fu_265_p1;
reg   [63:0] zext_ln23_reg_348;
reg   [63:0] zext_ln23_reg_348_pp0_iter2_reg;
wire   [63:0] zext_ln24_fu_281_p1;
reg   [63:0] zext_ln24_reg_364;
reg   [63:0] zext_ln24_reg_364_pp0_iter2_reg;
wire   [31:0] select_ln23_fu_303_p3;
reg   [31:0] select_ln23_reg_380;
wire   [31:0] select_ln24_fu_310_p3;
reg   [31:0] select_ln24_reg_386;
wire    ap_block_pp0_stage0;
reg   [4:0] k_fu_56;
wire   [4:0] add_ln22_fu_287_p2;
wire    ap_loop_init;
reg   [4:0] i_fu_60;
wire   [4:0] select_ln21_fu_229_p3;
reg   [8:0] indvar_flatten6_fu_64;
wire   [8:0] add_ln21_fu_192_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten6_load;
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
wire   [0:0] icmp_ln22_fu_209_p2;
wire   [4:0] add_ln21_1_fu_223_p2;
wire   [4:0] select_ln11_fu_215_p3;
wire   [2:0] lshr_ln1_fu_241_p4;
wire   [3:0] zext_ln23_1_fu_251_p1;
wire   [12:0] add_ln1_fu_255_p4;
wire   [12:0] add_ln2_fu_271_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 k_fu_56 = 5'd0;
#0 i_fu_60 = 5'd0;
#0 indvar_flatten6_fu_64 = 9'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_60 <= 5'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_60 <= select_ln21_fu_229_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln21_fu_186_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_64 <= add_ln21_fu_192_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_64 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_56 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            k_fu_56 <= add_ln22_fu_287_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln22_reg_342 <= trunc_ln22_fu_237_p1;
        zext_ln23_reg_348[2 : 0] <= zext_ln23_fu_265_p1[2 : 0];
zext_ln23_reg_348[12 : 8] <= zext_ln23_fu_265_p1[12 : 8];
        zext_ln24_reg_364[2 : 0] <= zext_ln24_fu_281_p1[2 : 0];
zext_ln24_reg_364[12 : 8] <= zext_ln24_fu_281_p1[12 : 8];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        select_ln23_reg_380 <= select_ln23_fu_303_p3;
        select_ln24_reg_386 <= select_ln24_fu_310_p3;
        trunc_ln22_reg_342_pp0_iter2_reg <= trunc_ln22_reg_342;
        zext_ln23_reg_348_pp0_iter2_reg[2 : 0] <= zext_ln23_reg_348[2 : 0];
zext_ln23_reg_348_pp0_iter2_reg[12 : 8] <= zext_ln23_reg_348[12 : 8];
        zext_ln24_reg_364_pp0_iter2_reg[2 : 0] <= zext_ln24_reg_364[2 : 0];
zext_ln24_reg_364_pp0_iter2_reg[12 : 8] <= zext_ln24_reg_364[12 : 8];
    end
end
always @ (*) begin
    if (((icmp_ln21_fu_186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten6_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_64;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
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
    if (((trunc_ln22_reg_342_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln22_reg_342_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_0_we1_local = 1'b1;
    end else begin
        sol_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
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
    if (((trunc_ln22_reg_342_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln22_reg_342_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
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
assign add_ln1_fu_255_p4 = {{{select_ln21_fu_229_p3}, {4'd0}}, {zext_ln23_1_fu_251_p1}};
assign add_ln21_1_fu_223_p2 = (i_fu_60 + 5'd1);
assign add_ln21_fu_192_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 9'd1);
assign add_ln22_fu_287_p2 = (select_ln11_fu_215_p3 + 5'd1);
assign add_ln2_fu_271_p4 = {{{select_ln21_fu_229_p3}, {5'd31}}, {lshr_ln1_fu_241_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln21_fu_186_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 9'd480) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_209_p2 = ((k_fu_56 == 5'd16) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_241_p4 = {{select_ln11_fu_215_p3[3:1]}};
assign orig_0_address0 = zext_ln24_fu_281_p1;
assign orig_0_address1 = zext_ln23_fu_265_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = zext_ln24_fu_281_p1;
assign orig_1_address1 = zext_ln23_fu_265_p1;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign select_ln11_fu_215_p3 = ((icmp_ln22_fu_209_p2[0:0] == 1'b1) ? 5'd0 : k_fu_56);
assign select_ln21_fu_229_p3 = ((icmp_ln22_fu_209_p2[0:0] == 1'b1) ? add_ln21_1_fu_223_p2 : i_fu_60);
assign select_ln23_fu_303_p3 = ((trunc_ln22_reg_342[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign select_ln24_fu_310_p3 = ((trunc_ln22_reg_342[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign sol_0_address0 = zext_ln24_reg_364_pp0_iter2_reg;
assign sol_0_address1 = zext_ln23_reg_348_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_ce1 = sol_0_ce1_local;
assign sol_0_d0 = select_ln24_reg_386;
assign sol_0_d1 = select_ln23_reg_380;
assign sol_0_we0 = sol_0_we0_local;
assign sol_0_we1 = sol_0_we1_local;
assign sol_1_address0 = zext_ln24_reg_364_pp0_iter2_reg;
assign sol_1_address1 = zext_ln23_reg_348_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_ce1 = sol_1_ce1_local;
assign sol_1_d0 = select_ln24_reg_386;
assign sol_1_d1 = select_ln23_reg_380;
assign sol_1_we0 = sol_1_we0_local;
assign sol_1_we1 = sol_1_we1_local;
assign trunc_ln22_fu_237_p1 = select_ln11_fu_215_p3[0:0];
assign zext_ln23_1_fu_251_p1 = lshr_ln1_fu_241_p4;
assign zext_ln23_fu_265_p1 = add_ln1_fu_255_p4;
assign zext_ln24_fu_281_p1 = add_ln2_fu_271_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_348[7:3] <= 5'b00000;
    zext_ln23_reg_348[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln23_reg_348_pp0_iter2_reg[7:3] <= 5'b00000;
    zext_ln23_reg_348_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln24_reg_364[7:3] <= 5'b11111;
    zext_ln24_reg_364[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln24_reg_364_pp0_iter2_reg[7:3] <= 5'b11111;
    zext_ln24_reg_364_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 
