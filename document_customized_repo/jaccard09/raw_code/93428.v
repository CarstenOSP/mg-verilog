module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_q1,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_address1,buff_C_out_2_ce1,buff_C_out_2_q1,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_address1,buff_C_out_3_ce1,buff_C_out_3_q1,beta,grp_fu_248_p_din0,grp_fu_248_p_din1,grp_fu_248_p_opcode,grp_fu_248_p_dout0,grp_fu_248_p_ce,grp_fu_252_p_din0,grp_fu_252_p_din1,grp_fu_252_p_dout0,grp_fu_252_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [9:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [9:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [9:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [9:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
output  [9:0] buff_C_out_address1;
output   buff_C_out_ce1;
input  [31:0] buff_C_out_q1;
output  [9:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
output  [9:0] buff_C_out_1_address1;
output   buff_C_out_1_ce1;
input  [31:0] buff_C_out_1_q1;
output  [9:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
output  [9:0] buff_C_out_2_address1;
output   buff_C_out_2_ce1;
input  [31:0] buff_C_out_2_q1;
output  [9:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
output  [9:0] buff_C_out_3_address1;
output   buff_C_out_3_ce1;
input  [31:0] buff_C_out_3_q1;
input  [31:0] beta;
output  [31:0] grp_fu_248_p_din0;
output  [31:0] grp_fu_248_p_din1;
output  [1:0] grp_fu_248_p_opcode;
input  [31:0] grp_fu_248_p_dout0;
output   grp_fu_248_p_ce;
output  [31:0] grp_fu_252_p_din0;
output  [31:0] grp_fu_252_p_din1;
input  [31:0] grp_fu_252_p_dout0;
output   grp_fu_252_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln29_fu_248_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [9:0] buff_C_out_addr_reg_404;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter2_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter3_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter4_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter5_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter6_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter7_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter8_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter9_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter10_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter11_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter12_reg;
reg   [9:0] buff_C_out_addr_reg_404_pp0_iter13_reg;
reg   [9:0] buff_C_out_1_addr_reg_410;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter2_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter3_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter4_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter5_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter6_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter7_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter8_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter9_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter10_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter11_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter12_reg;
reg   [9:0] buff_C_out_1_addr_reg_410_pp0_iter13_reg;
reg   [9:0] buff_C_out_2_addr_reg_416;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter2_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter3_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter4_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter5_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter6_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter7_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter8_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter9_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter10_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter11_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter12_reg;
reg   [9:0] buff_C_out_2_addr_reg_416_pp0_iter13_reg;
reg   [9:0] buff_C_out_3_addr_reg_422;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter2_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter3_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter4_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter5_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter6_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter7_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter8_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter9_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter10_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter11_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter12_reg;
reg   [9:0] buff_C_out_3_addr_reg_422_pp0_iter13_reg;
reg   [31:0] buff_B_load_reg_428;
reg   [31:0] buff_B_1_load_reg_433;
reg   [31:0] buff_B_2_load_reg_438;
reg   [31:0] buff_B_3_load_reg_443;
reg   [31:0] mul1_reg_448;
reg   [31:0] buff_C_out_load_reg_453;
wire   [31:0] grp_fu_218_p2;
reg   [31:0] mul74_1_reg_458;
wire   [31:0] grp_fu_222_p2;
reg   [31:0] mul74_2_reg_463;
wire   [31:0] grp_fu_226_p2;
reg   [31:0] mul74_3_reg_468;
reg   [31:0] buff_C_out_1_load_reg_473;
reg   [31:0] buff_C_out_2_load_reg_478;
reg   [31:0] buff_C_out_3_load_reg_483;
reg   [31:0] add1_reg_488;
wire   [31:0] grp_fu_202_p2;
reg   [31:0] add79_1_reg_493;
wire   [31:0] grp_fu_206_p2;
reg   [31:0] add79_2_reg_498;
wire   [31:0] grp_fu_210_p2;
reg   [31:0] add79_3_reg_503;
wire   [63:0] zext_ln32_fu_323_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_64;
wire   [6:0] add_ln30_fu_335_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_68;
wire   [6:0] select_ln29_fu_293_p3;
reg   [10:0] indvar_flatten28_fu_72;
wire   [10:0] add_ln29_1_fu_254_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten28_load;
reg    buff_B_ce0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_2_ce0_local;
reg    buff_B_3_ce0_local;
reg    buff_C_out_ce1_local;
reg    buff_C_out_we0_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_ce1_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_ce1_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_ce1_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_3_ce0_local;
wire   [0:0] tmp_fu_277_p3;
wire   [6:0] add_ln29_fu_271_p2;
wire   [6:0] select_ln5_fu_285_p3;
wire   [5:0] trunc_ln19_fu_301_p1;
wire   [3:0] lshr_ln5_2_fu_305_p4;
wire   [9:0] tmp_6_fu_315_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 j_fu_64 = 7'd0;
#0 i_fu_68 = 7'd0;
#0 indvar_flatten28_fu_72 = 11'd0;
#0 ap_done_reg = 1'b0;
end
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U43(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_1_load_reg_473),.din1(mul74_1_reg_458),.ce(1'b1),.dout(grp_fu_202_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U44(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_2_load_reg_478),.din1(mul74_2_reg_463),.ce(1'b1),.dout(grp_fu_206_p2));
syrk_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U45(.clk(ap_clk),.reset(ap_rst),.din0(buff_C_out_3_load_reg_483),.din1(mul74_3_reg_468),.ce(1'b1),.dout(grp_fu_210_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U47(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_1_load_reg_433),.din1(beta),.ce(1'b1),.dout(grp_fu_218_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U48(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_2_load_reg_438),.din1(beta),.ce(1'b1),.dout(grp_fu_222_p2));
syrk_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(buff_B_3_load_reg_443),.din1(beta),.ce(1'b1),.dout(grp_fu_226_p2));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_68 <= select_ln29_fu_293_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_248_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten28_fu_72 <= add_ln29_1_fu_254_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten28_fu_72 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_64 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_64 <= add_ln30_fu_335_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_488 <= grp_fu_248_p_dout0;
        add79_1_reg_493 <= grp_fu_202_p2;
        add79_2_reg_498 <= grp_fu_206_p2;
        add79_3_reg_503 <= grp_fu_210_p2;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_B_1_load_reg_433 <= buff_B_1_q0;
        buff_B_2_load_reg_438 <= buff_B_2_q0;
        buff_B_3_load_reg_443 <= buff_B_3_q0;
        buff_B_load_reg_428 <= buff_B_q0;
        buff_C_out_1_addr_reg_410_pp0_iter10_reg <= buff_C_out_1_addr_reg_410_pp0_iter9_reg;
        buff_C_out_1_addr_reg_410_pp0_iter11_reg <= buff_C_out_1_addr_reg_410_pp0_iter10_reg;
        buff_C_out_1_addr_reg_410_pp0_iter12_reg <= buff_C_out_1_addr_reg_410_pp0_iter11_reg;
        buff_C_out_1_addr_reg_410_pp0_iter13_reg <= buff_C_out_1_addr_reg_410_pp0_iter12_reg;
        buff_C_out_1_addr_reg_410_pp0_iter2_reg <= buff_C_out_1_addr_reg_410;
        buff_C_out_1_addr_reg_410_pp0_iter3_reg <= buff_C_out_1_addr_reg_410_pp0_iter2_reg;
        buff_C_out_1_addr_reg_410_pp0_iter4_reg <= buff_C_out_1_addr_reg_410_pp0_iter3_reg;
        buff_C_out_1_addr_reg_410_pp0_iter5_reg <= buff_C_out_1_addr_reg_410_pp0_iter4_reg;
        buff_C_out_1_addr_reg_410_pp0_iter6_reg <= buff_C_out_1_addr_reg_410_pp0_iter5_reg;
        buff_C_out_1_addr_reg_410_pp0_iter7_reg <= buff_C_out_1_addr_reg_410_pp0_iter6_reg;
        buff_C_out_1_addr_reg_410_pp0_iter8_reg <= buff_C_out_1_addr_reg_410_pp0_iter7_reg;
        buff_C_out_1_addr_reg_410_pp0_iter9_reg <= buff_C_out_1_addr_reg_410_pp0_iter8_reg;
        buff_C_out_2_addr_reg_416_pp0_iter10_reg <= buff_C_out_2_addr_reg_416_pp0_iter9_reg;
        buff_C_out_2_addr_reg_416_pp0_iter11_reg <= buff_C_out_2_addr_reg_416_pp0_iter10_reg;
        buff_C_out_2_addr_reg_416_pp0_iter12_reg <= buff_C_out_2_addr_reg_416_pp0_iter11_reg;
        buff_C_out_2_addr_reg_416_pp0_iter13_reg <= buff_C_out_2_addr_reg_416_pp0_iter12_reg;
        buff_C_out_2_addr_reg_416_pp0_iter2_reg <= buff_C_out_2_addr_reg_416;
        buff_C_out_2_addr_reg_416_pp0_iter3_reg <= buff_C_out_2_addr_reg_416_pp0_iter2_reg;
        buff_C_out_2_addr_reg_416_pp0_iter4_reg <= buff_C_out_2_addr_reg_416_pp0_iter3_reg;
        buff_C_out_2_addr_reg_416_pp0_iter5_reg <= buff_C_out_2_addr_reg_416_pp0_iter4_reg;
        buff_C_out_2_addr_reg_416_pp0_iter6_reg <= buff_C_out_2_addr_reg_416_pp0_iter5_reg;
        buff_C_out_2_addr_reg_416_pp0_iter7_reg <= buff_C_out_2_addr_reg_416_pp0_iter6_reg;
        buff_C_out_2_addr_reg_416_pp0_iter8_reg <= buff_C_out_2_addr_reg_416_pp0_iter7_reg;
        buff_C_out_2_addr_reg_416_pp0_iter9_reg <= buff_C_out_2_addr_reg_416_pp0_iter8_reg;
        buff_C_out_3_addr_reg_422_pp0_iter10_reg <= buff_C_out_3_addr_reg_422_pp0_iter9_reg;
        buff_C_out_3_addr_reg_422_pp0_iter11_reg <= buff_C_out_3_addr_reg_422_pp0_iter10_reg;
        buff_C_out_3_addr_reg_422_pp0_iter12_reg <= buff_C_out_3_addr_reg_422_pp0_iter11_reg;
        buff_C_out_3_addr_reg_422_pp0_iter13_reg <= buff_C_out_3_addr_reg_422_pp0_iter12_reg;
        buff_C_out_3_addr_reg_422_pp0_iter2_reg <= buff_C_out_3_addr_reg_422;
        buff_C_out_3_addr_reg_422_pp0_iter3_reg <= buff_C_out_3_addr_reg_422_pp0_iter2_reg;
        buff_C_out_3_addr_reg_422_pp0_iter4_reg <= buff_C_out_3_addr_reg_422_pp0_iter3_reg;
        buff_C_out_3_addr_reg_422_pp0_iter5_reg <= buff_C_out_3_addr_reg_422_pp0_iter4_reg;
        buff_C_out_3_addr_reg_422_pp0_iter6_reg <= buff_C_out_3_addr_reg_422_pp0_iter5_reg;
        buff_C_out_3_addr_reg_422_pp0_iter7_reg <= buff_C_out_3_addr_reg_422_pp0_iter6_reg;
        buff_C_out_3_addr_reg_422_pp0_iter8_reg <= buff_C_out_3_addr_reg_422_pp0_iter7_reg;
        buff_C_out_3_addr_reg_422_pp0_iter9_reg <= buff_C_out_3_addr_reg_422_pp0_iter8_reg;
        buff_C_out_addr_reg_404_pp0_iter10_reg <= buff_C_out_addr_reg_404_pp0_iter9_reg;
        buff_C_out_addr_reg_404_pp0_iter11_reg <= buff_C_out_addr_reg_404_pp0_iter10_reg;
        buff_C_out_addr_reg_404_pp0_iter12_reg <= buff_C_out_addr_reg_404_pp0_iter11_reg;
        buff_C_out_addr_reg_404_pp0_iter13_reg <= buff_C_out_addr_reg_404_pp0_iter12_reg;
        buff_C_out_addr_reg_404_pp0_iter2_reg <= buff_C_out_addr_reg_404;
        buff_C_out_addr_reg_404_pp0_iter3_reg <= buff_C_out_addr_reg_404_pp0_iter2_reg;
        buff_C_out_addr_reg_404_pp0_iter4_reg <= buff_C_out_addr_reg_404_pp0_iter3_reg;
        buff_C_out_addr_reg_404_pp0_iter5_reg <= buff_C_out_addr_reg_404_pp0_iter4_reg;
        buff_C_out_addr_reg_404_pp0_iter6_reg <= buff_C_out_addr_reg_404_pp0_iter5_reg;
        buff_C_out_addr_reg_404_pp0_iter7_reg <= buff_C_out_addr_reg_404_pp0_iter6_reg;
        buff_C_out_addr_reg_404_pp0_iter8_reg <= buff_C_out_addr_reg_404_pp0_iter7_reg;
        buff_C_out_addr_reg_404_pp0_iter9_reg <= buff_C_out_addr_reg_404_pp0_iter8_reg;
        mul1_reg_448 <= grp_fu_252_p_dout0;
        mul74_1_reg_458 <= grp_fu_218_p2;
        mul74_2_reg_463 <= grp_fu_222_p2;
        mul74_3_reg_468 <= grp_fu_226_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        buff_C_out_1_addr_reg_410 <= zext_ln32_fu_323_p1;
        buff_C_out_2_addr_reg_416 <= zext_ln32_fu_323_p1;
        buff_C_out_3_addr_reg_422 <= zext_ln32_fu_323_p1;
        buff_C_out_addr_reg_404 <= zext_ln32_fu_323_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_C_out_1_load_reg_473 <= buff_C_out_1_q1;
        buff_C_out_2_load_reg_478 <= buff_C_out_2_q1;
        buff_C_out_3_load_reg_483 <= buff_C_out_3_q1;
        buff_C_out_load_reg_453 <= buff_C_out_q1;
    end
end
always @ (*) begin
    if (((icmp_ln29_fu_248_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten28_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten28_load = indvar_flatten28_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_1_ce1_local = 1'b1;
    end else begin
        buff_C_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_2_ce1_local = 1'b1;
    end else begin
        buff_C_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_3_ce1_local = 1'b1;
    end else begin
        buff_C_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_ce1_local = 1'b1;
    end else begin
        buff_C_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
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
assign add_ln29_1_fu_254_p2 = (ap_sig_allocacmp_indvar_flatten28_load + 11'd1);
assign add_ln29_fu_271_p2 = (i_fu_68 + 7'd1);
assign add_ln30_fu_335_p2 = (select_ln5_fu_285_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buff_B_1_address0 = zext_ln32_fu_323_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_2_address0 = zext_ln32_fu_323_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_3_address0 = zext_ln32_fu_323_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_address0 = zext_ln32_fu_323_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_C_out_1_address0 = buff_C_out_1_addr_reg_410_pp0_iter13_reg;
assign buff_C_out_1_address1 = buff_C_out_1_addr_reg_410_pp0_iter4_reg;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = add79_1_reg_493;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_addr_reg_416_pp0_iter13_reg;
assign buff_C_out_2_address1 = buff_C_out_2_addr_reg_416_pp0_iter4_reg;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_ce1 = buff_C_out_2_ce1_local;
assign buff_C_out_2_d0 = add79_2_reg_498;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_addr_reg_422_pp0_iter13_reg;
assign buff_C_out_3_address1 = buff_C_out_3_addr_reg_422_pp0_iter4_reg;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_ce1 = buff_C_out_3_ce1_local;
assign buff_C_out_3_d0 = add79_3_reg_503;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_address0 = buff_C_out_addr_reg_404_pp0_iter13_reg;
assign buff_C_out_address1 = buff_C_out_addr_reg_404_pp0_iter4_reg;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = add1_reg_488;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign grp_fu_248_p_ce = 1'b1;
assign grp_fu_248_p_din0 = buff_C_out_load_reg_453;
assign grp_fu_248_p_din1 = mul1_reg_448;
assign grp_fu_248_p_opcode = 2'd0;
assign grp_fu_252_p_ce = 1'b1;
assign grp_fu_252_p_din0 = buff_B_load_reg_428;
assign grp_fu_252_p_din1 = beta;
assign icmp_ln29_fu_248_p2 = ((ap_sig_allocacmp_indvar_flatten28_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_305_p4 = {{select_ln5_fu_285_p3[5:2]}};
assign select_ln29_fu_293_p3 = ((tmp_fu_277_p3[0:0] == 1'b1) ? add_ln29_fu_271_p2 : i_fu_68);
assign select_ln5_fu_285_p3 = ((tmp_fu_277_p3[0:0] == 1'b1) ? 7'd0 : j_fu_64);
assign tmp_6_fu_315_p3 = {{trunc_ln19_fu_301_p1}, {lshr_ln5_2_fu_305_p4}};
assign tmp_fu_277_p3 = j_fu_64[32'd6];
assign trunc_ln19_fu_301_p1 = select_ln29_fu_293_p3[5:0];
assign zext_ln32_fu_323_p1 = tmp_6_fu_315_p3;
endmodule 