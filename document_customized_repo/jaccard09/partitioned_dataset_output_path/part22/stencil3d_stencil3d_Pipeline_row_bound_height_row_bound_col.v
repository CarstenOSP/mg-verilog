
module stencil3d_stencil3d_Pipeline_row_bound_height_row_bound_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_15_address0,sol_15_ce0,sol_15_we0,sol_15_d0,sol_31_address0,sol_31_ce0,sol_31_we0,sol_31_d0,sol_16_address0,sol_16_ce0,sol_16_we0,sol_16_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_16_address0,orig_16_ce0,orig_16_q0,orig_15_address0,orig_15_ce0,orig_15_q0,orig_31_address0,orig_31_ce0,orig_31_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [8:0] sol_15_address0;
output   sol_15_ce0;
output   sol_15_we0;
output  [31:0] sol_15_d0;
output  [8:0] sol_31_address0;
output   sol_31_ce0;
output   sol_31_we0;
output  [31:0] sol_31_d0;
output  [8:0] sol_16_address0;
output   sol_16_ce0;
output   sol_16_we0;
output  [31:0] sol_16_d0;
output  [8:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [8:0] orig_16_address0;
output   orig_16_ce0;
input  [31:0] orig_16_q0;
output  [8:0] orig_15_address0;
output   orig_15_ce0;
input  [31:0] orig_15_q0;
output  [8:0] orig_31_address0;
output   orig_31_ce0;
input  [31:0] orig_31_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln27_fu_246_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln28_fu_297_p1;
reg   [0:0] trunc_ln28_reg_382;
reg   [0:0] trunc_ln28_reg_382_pp0_iter2_reg;
wire   [63:0] zext_ln29_fu_319_p1;
reg   [63:0] zext_ln29_reg_388;
reg   [63:0] zext_ln29_reg_388_pp0_iter2_reg;
wire   [31:0] select_ln29_fu_343_p3;
reg   [31:0] select_ln29_reg_416;
wire   [31:0] select_ln30_fu_350_p3;
reg   [31:0] select_ln30_reg_422;
wire    ap_block_pp0_stage0;
reg   [4:0] j_fu_112;
wire   [4:0] add_ln28_fu_327_p2;
wire    ap_loop_init;
reg   [4:0] i_fu_116;
wire   [4:0] select_ln27_fu_289_p3;
reg   [9:0] indvar_flatten6_fu_120;
wire   [9:0] add_ln27_fu_252_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    orig_0_ce0_local;
reg    orig_16_ce0_local;
reg    orig_15_ce0_local;
reg    orig_31_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_15_we0_local;
reg    sol_15_ce0_local;
reg    sol_16_we0_local;
reg    sol_16_ce0_local;
reg    sol_31_we0_local;
reg    sol_31_ce0_local;
wire   [0:0] icmp_ln28_fu_269_p2;
wire   [4:0] add_ln27_1_fu_283_p2;
wire   [4:0] select_ln11_fu_275_p3;
wire   [3:0] lshr_ln1_fu_301_p4;
wire   [8:0] add_ln_fu_311_p3;
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
#0 j_fu_112 = 5'd0;
#0 i_fu_116 = 5'd0;
#0 indvar_flatten6_fu_120 = 10'd0;
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
            i_fu_116 <= 5'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_116 <= select_ln27_fu_289_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_246_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_120 <= add_ln27_fu_252_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_120 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_112 <= 5'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_112 <= add_ln28_fu_327_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln28_reg_382 <= trunc_ln28_fu_297_p1;
        zext_ln29_reg_388[8 : 0] <= zext_ln29_fu_319_p1[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        select_ln29_reg_416 <= select_ln29_fu_343_p3;
        select_ln30_reg_422 <= select_ln30_fu_350_p3;
        trunc_ln28_reg_382_pp0_iter2_reg <= trunc_ln28_reg_382;
        zext_ln29_reg_388_pp0_iter2_reg[8 : 0] <= zext_ln29_reg_388[8 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln27_fu_246_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten6_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_120;
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
        orig_15_ce0_local = 1'b1;
    end else begin
        orig_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_16_ce0_local = 1'b1;
    end else begin
        orig_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_31_ce0_local = 1'b1;
    end else begin
        orig_31_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln28_reg_382_pp0_iter2_reg == 1'd0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_15_ce0_local = 1'b1;
    end else begin
        sol_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln28_reg_382_pp0_iter2_reg == 1'd0))) begin
        sol_15_we0_local = 1'b1;
    end else begin
        sol_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_16_ce0_local = 1'b1;
    end else begin
        sol_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln28_reg_382_pp0_iter2_reg == 1'd1))) begin
        sol_16_we0_local = 1'b1;
    end else begin
        sol_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_31_ce0_local = 1'b1;
    end else begin
        sol_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln28_reg_382_pp0_iter2_reg == 1'd1))) begin
        sol_31_we0_local = 1'b1;
    end else begin
        sol_31_we0_local = 1'b0;
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
assign add_ln27_1_fu_283_p2 = (i_fu_116 + 5'd1);
assign add_ln27_fu_252_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 10'd1);
assign add_ln28_fu_327_p2 = (select_ln11_fu_275_p3 + 5'd1);
assign add_ln_fu_311_p3 = {{select_ln27_fu_289_p3}, {lshr_ln1_fu_301_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln27_fu_246_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 10'd900) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_269_p2 = ((j_fu_112 == 5'd31) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_301_p4 = {{select_ln11_fu_275_p3[4:1]}};
assign orig_0_address0 = zext_ln29_fu_319_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_15_address0 = zext_ln29_fu_319_p1;
assign orig_15_ce0 = orig_15_ce0_local;
assign orig_16_address0 = zext_ln29_fu_319_p1;
assign orig_16_ce0 = orig_16_ce0_local;
assign orig_31_address0 = zext_ln29_fu_319_p1;
assign orig_31_ce0 = orig_31_ce0_local;
assign select_ln11_fu_275_p3 = ((icmp_ln28_fu_269_p2[0:0] == 1'b1) ? 5'd1 : j_fu_112);
assign select_ln27_fu_289_p3 = ((icmp_ln28_fu_269_p2[0:0] == 1'b1) ? add_ln27_1_fu_283_p2 : i_fu_116);
assign select_ln29_fu_343_p3 = ((trunc_ln28_reg_382[0:0] == 1'b1) ? orig_16_q0 : orig_0_q0);
assign select_ln30_fu_350_p3 = ((trunc_ln28_reg_382[0:0] == 1'b1) ? orig_31_q0 : orig_15_q0);
assign sol_0_address0 = zext_ln29_reg_388_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = select_ln29_reg_416;
assign sol_0_we0 = sol_0_we0_local;
assign sol_15_address0 = zext_ln29_reg_388_pp0_iter2_reg;
assign sol_15_ce0 = sol_15_ce0_local;
assign sol_15_d0 = select_ln30_reg_422;
assign sol_15_we0 = sol_15_we0_local;
assign sol_16_address0 = zext_ln29_reg_388_pp0_iter2_reg;
assign sol_16_ce0 = sol_16_ce0_local;
assign sol_16_d0 = select_ln29_reg_416;
assign sol_16_we0 = sol_16_we0_local;
assign sol_31_address0 = zext_ln29_reg_388_pp0_iter2_reg;
assign sol_31_ce0 = sol_31_ce0_local;
assign sol_31_d0 = select_ln30_reg_422;
assign sol_31_we0 = sol_31_we0_local;
assign trunc_ln28_fu_297_p1 = select_ln11_fu_275_p3[0:0];
assign zext_ln29_fu_319_p1 = add_ln_fu_311_p3;
always @ (posedge ap_clk) begin
    zext_ln29_reg_388[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln29_reg_388_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
