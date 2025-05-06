
module stencil3d_stencil3d_Pipeline_col_bound_height_col_bound_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,sol_address0,sol_ce0,sol_we0,sol_d0,sol_address1,sol_ce1,sol_we1,sol_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [13:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
output  [13:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
output  [13:0] sol_address1;
output   sol_ce1;
output   sol_we1;
output  [31:0] sol_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln21_fu_130_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln11_fu_159_p3;
reg   [4:0] select_ln11_reg_258;
wire   [4:0] select_ln21_fu_173_p3;
reg   [4:0] select_ln21_reg_263;
wire   [63:0] zext_ln23_fu_191_p1;
reg   [63:0] zext_ln23_reg_268;
wire   [63:0] zext_ln24_fu_228_p1;
reg   [63:0] zext_ln24_reg_278;
wire    ap_block_pp0_stage0;
reg   [4:0] k_fu_48;
wire   [4:0] add_ln22_fu_196_p2;
wire    ap_loop_init;
reg   [4:0] i_fu_52;
reg   [8:0] indvar_flatten6_fu_56;
wire   [8:0] add_ln21_fu_136_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    orig_ce1_local;
reg    orig_ce0_local;
reg    sol_we1_local;
reg    sol_ce1_local;
reg    sol_we0_local;
reg    sol_ce0_local;
wire   [0:0] icmp_ln22_fu_153_p2;
wire   [4:0] add_ln21_1_fu_167_p2;
wire   [13:0] add_ln_fu_181_p4;
wire   [13:0] zext_ln22_fu_219_p1;
wire   [13:0] tmp_4_fu_212_p3;
wire   [13:0] add_ln24_fu_222_p2;
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
#0 k_fu_48 = 5'd0;
#0 i_fu_52 = 5'd0;
#0 indvar_flatten6_fu_56 = 9'd0;
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
            i_fu_52 <= 5'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_52 <= select_ln21_fu_173_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln21_fu_130_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_56 <= add_ln21_fu_136_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_56 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_48 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            k_fu_48 <= add_ln22_fu_196_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln11_reg_258 <= select_ln11_fu_159_p3;
        select_ln21_reg_263 <= select_ln21_fu_173_p3;
        zext_ln23_reg_268[4 : 0] <= zext_ln23_fu_191_p1[4 : 0];
zext_ln23_reg_268[13 : 9] <= zext_ln23_fu_191_p1[13 : 9];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln24_reg_278[13 : 0] <= zext_ln24_fu_228_p1[13 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln21_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_56;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sol_ce1_local = 1'b1;
    end else begin
        sol_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sol_we1_local = 1'b1;
    end else begin
        sol_we1_local = 1'b0;
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
assign add_ln21_1_fu_167_p2 = (i_fu_52 + 5'd1);
assign add_ln21_fu_136_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 9'd1);
assign add_ln22_fu_196_p2 = (select_ln11_fu_159_p3 + 5'd1);
assign add_ln24_fu_222_p2 = (zext_ln22_fu_219_p1 + tmp_4_fu_212_p3);
assign add_ln_fu_181_p4 = {{{select_ln21_fu_173_p3}, {4'd0}}, {select_ln11_fu_159_p3}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln21_fu_130_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 9'd480) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_153_p2 = ((k_fu_48 == 5'd16) ? 1'b1 : 1'b0);
assign orig_address0 = zext_ln24_fu_228_p1;
assign orig_address1 = zext_ln23_fu_191_p1;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign select_ln11_fu_159_p3 = ((icmp_ln22_fu_153_p2[0:0] == 1'b1) ? 5'd0 : k_fu_48);
assign select_ln21_fu_173_p3 = ((icmp_ln22_fu_153_p2[0:0] == 1'b1) ? add_ln21_1_fu_167_p2 : i_fu_52);
assign sol_address0 = zext_ln24_reg_278;
assign sol_address1 = zext_ln23_reg_268;
assign sol_ce0 = sol_ce0_local;
assign sol_ce1 = sol_ce1_local;
assign sol_d0 = orig_q0;
assign sol_d1 = orig_q1;
assign sol_we0 = sol_we0_local;
assign sol_we1 = sol_we1_local;
assign tmp_4_fu_212_p3 = {{select_ln21_reg_263}, {9'd496}};
assign zext_ln22_fu_219_p1 = select_ln11_reg_258;
assign zext_ln23_fu_191_p1 = add_ln_fu_181_p4;
assign zext_ln24_fu_228_p1 = add_ln24_fu_222_p2;
always @ (posedge ap_clk) begin
    zext_ln23_reg_268[8:5] <= 4'b0000;
    zext_ln23_reg_268[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln24_reg_278[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
