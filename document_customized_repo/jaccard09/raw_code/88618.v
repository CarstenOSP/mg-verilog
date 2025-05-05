module k2mm_k2mm_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,E_out_0_din,E_out_0_full_n,E_out_0_write,E_out_1_din,E_out_1_full_n,E_out_1_write,E_out_2_din,E_out_2_full_n,E_out_2_write,E_out_3_din,E_out_3_full_n,E_out_3_write,buff_E_out_address0,buff_E_out_ce0,buff_E_out_q0,buff_E_out_1_address0,buff_E_out_1_ce0,buff_E_out_1_q0,buff_E_out_2_address0,buff_E_out_2_ce0,buff_E_out_2_q0,buff_E_out_3_address0,buff_E_out_3_ce0,buff_E_out_3_q0,buff_E_out_4_address0,buff_E_out_4_ce0,buff_E_out_4_q0,buff_E_out_5_address0,buff_E_out_5_ce0,buff_E_out_5_q0,buff_E_out_6_address0,buff_E_out_6_ce0,buff_E_out_6_q0,buff_E_out_7_address0,buff_E_out_7_ce0,buff_E_out_7_q0,buff_E_out_8_address0,buff_E_out_8_ce0,buff_E_out_8_q0,buff_E_out_9_address0,buff_E_out_9_ce0,buff_E_out_9_q0,buff_E_out_10_address0,buff_E_out_10_ce0,buff_E_out_10_q0,buff_E_out_11_address0,buff_E_out_11_ce0,buff_E_out_11_q0,buff_E_out_12_address0,buff_E_out_12_ce0,buff_E_out_12_q0,buff_E_out_13_address0,buff_E_out_13_ce0,buff_E_out_13_q0,buff_E_out_14_address0,buff_E_out_14_ce0,buff_E_out_14_q0,buff_E_out_15_address0,buff_E_out_15_ce0,buff_E_out_15_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] E_out_0_din;
input   E_out_0_full_n;
output   E_out_0_write;
output  [31:0] E_out_1_din;
input   E_out_1_full_n;
output   E_out_1_write;
output  [31:0] E_out_2_din;
input   E_out_2_full_n;
output   E_out_2_write;
output  [31:0] E_out_3_din;
input   E_out_3_full_n;
output   E_out_3_write;
output  [7:0] buff_E_out_address0;
output   buff_E_out_ce0;
input  [31:0] buff_E_out_q0;
output  [7:0] buff_E_out_1_address0;
output   buff_E_out_1_ce0;
input  [31:0] buff_E_out_1_q0;
output  [7:0] buff_E_out_2_address0;
output   buff_E_out_2_ce0;
input  [31:0] buff_E_out_2_q0;
output  [7:0] buff_E_out_3_address0;
output   buff_E_out_3_ce0;
input  [31:0] buff_E_out_3_q0;
output  [7:0] buff_E_out_4_address0;
output   buff_E_out_4_ce0;
input  [31:0] buff_E_out_4_q0;
output  [7:0] buff_E_out_5_address0;
output   buff_E_out_5_ce0;
input  [31:0] buff_E_out_5_q0;
output  [7:0] buff_E_out_6_address0;
output   buff_E_out_6_ce0;
input  [31:0] buff_E_out_6_q0;
output  [7:0] buff_E_out_7_address0;
output   buff_E_out_7_ce0;
input  [31:0] buff_E_out_7_q0;
output  [7:0] buff_E_out_8_address0;
output   buff_E_out_8_ce0;
input  [31:0] buff_E_out_8_q0;
output  [7:0] buff_E_out_9_address0;
output   buff_E_out_9_ce0;
input  [31:0] buff_E_out_9_q0;
output  [7:0] buff_E_out_10_address0;
output   buff_E_out_10_ce0;
input  [31:0] buff_E_out_10_q0;
output  [7:0] buff_E_out_11_address0;
output   buff_E_out_11_ce0;
input  [31:0] buff_E_out_11_q0;
output  [7:0] buff_E_out_12_address0;
output   buff_E_out_12_ce0;
input  [31:0] buff_E_out_12_q0;
output  [7:0] buff_E_out_13_address0;
output   buff_E_out_13_ce0;
input  [31:0] buff_E_out_13_q0;
output  [7:0] buff_E_out_14_address0;
output   buff_E_out_14_ce0;
input  [31:0] buff_E_out_14_q0;
output  [7:0] buff_E_out_15_address0;
output   buff_E_out_15_ce0;
input  [31:0] buff_E_out_15_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_block_state4_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln50_fu_368_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    E_out_0_blk_n;
wire    ap_block_pp0_stage0;
reg    E_out_1_blk_n;
reg    E_out_2_blk_n;
reg    E_out_3_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln50_fu_421_p1;
reg   [1:0] trunc_ln50_reg_622;
wire   [31:0] tmp_2_fu_489_p11;
reg   [31:0] tmp_2_reg_710;
wire   [31:0] tmp_3_fu_512_p11;
reg   [31:0] tmp_3_reg_715;
wire   [31:0] tmp_4_fu_535_p11;
reg   [31:0] tmp_4_reg_720;
wire   [31:0] tmp_5_fu_558_p11;
reg   [31:0] tmp_5_reg_725;
wire   [63:0] zext_ln52_fu_453_p1;
reg   [6:0] j_fu_102;
wire   [6:0] add_ln51_fu_473_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_106;
wire   [6:0] select_ln50_fu_413_p3;
reg   [10:0] indvar_flatten20_fu_110;
wire   [10:0] add_ln50_1_fu_374_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten20_load;
wire   [31:0] bitcast_ln52_fu_581_p1;
reg    ap_block_pp0_stage0_01001;
reg    E_out_0_write_local;
wire   [31:0] bitcast_ln52_1_fu_585_p1;
reg    E_out_1_write_local;
wire   [31:0] bitcast_ln52_2_fu_589_p1;
reg    E_out_2_write_local;
wire   [31:0] bitcast_ln52_3_fu_593_p1;
reg    E_out_3_write_local;
reg    buff_E_out_ce0_local;
reg    buff_E_out_1_ce0_local;
reg    buff_E_out_2_ce0_local;
reg    buff_E_out_3_ce0_local;
reg    buff_E_out_4_ce0_local;
reg    buff_E_out_5_ce0_local;
reg    buff_E_out_6_ce0_local;
reg    buff_E_out_7_ce0_local;
reg    buff_E_out_8_ce0_local;
reg    buff_E_out_9_ce0_local;
reg    buff_E_out_10_ce0_local;
reg    buff_E_out_11_ce0_local;
reg    buff_E_out_12_ce0_local;
reg    buff_E_out_13_ce0_local;
reg    buff_E_out_14_ce0_local;
reg    buff_E_out_15_ce0_local;
wire   [0:0] tmp_fu_397_p3;
wire   [6:0] add_ln50_fu_391_p2;
wire   [6:0] select_ln6_fu_405_p3;
wire   [3:0] tmp_s_fu_435_p4;
wire   [3:0] lshr_ln6_7_fu_425_p4;
wire   [7:0] tmp_1_fu_445_p3;
wire   [31:0] tmp_2_fu_489_p9;
wire   [31:0] tmp_3_fu_512_p9;
wire   [31:0] tmp_4_fu_535_p9;
wire   [31:0] tmp_5_fu_558_p9;
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
wire   [1:0] tmp_2_fu_489_p1;
wire   [1:0] tmp_2_fu_489_p3;
wire  signed [1:0] tmp_2_fu_489_p5;
wire  signed [1:0] tmp_2_fu_489_p7;
wire   [1:0] tmp_3_fu_512_p1;
wire   [1:0] tmp_3_fu_512_p3;
wire  signed [1:0] tmp_3_fu_512_p5;
wire  signed [1:0] tmp_3_fu_512_p7;
wire   [1:0] tmp_4_fu_535_p1;
wire   [1:0] tmp_4_fu_535_p3;
wire  signed [1:0] tmp_4_fu_535_p5;
wire  signed [1:0] tmp_4_fu_535_p7;
wire   [1:0] tmp_5_fu_558_p1;
wire   [1:0] tmp_5_fu_558_p3;
wire  signed [1:0] tmp_5_fu_558_p5;
wire  signed [1:0] tmp_5_fu_558_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_fu_102 = 7'd0;
#0 i_fu_106 = 7'd0;
#0 indvar_flatten20_fu_110 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1759(.din0(buff_E_out_q0),.din1(buff_E_out_1_q0),.din2(buff_E_out_2_q0),.din3(buff_E_out_3_q0),.def(tmp_2_fu_489_p9),.sel(trunc_ln50_reg_622),.dout(tmp_2_fu_489_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1760(.din0(buff_E_out_4_q0),.din1(buff_E_out_5_q0),.din2(buff_E_out_6_q0),.din3(buff_E_out_7_q0),.def(tmp_3_fu_512_p9),.sel(trunc_ln50_reg_622),.dout(tmp_3_fu_512_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1761(.din0(buff_E_out_8_q0),.din1(buff_E_out_9_q0),.din2(buff_E_out_10_q0),.din3(buff_E_out_11_q0),.def(tmp_4_fu_535_p9),.sel(trunc_ln50_reg_622),.dout(tmp_4_fu_535_p11));
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1762(.din0(buff_E_out_12_q0),.din1(buff_E_out_13_q0),.din2(buff_E_out_14_q0),.din3(buff_E_out_15_q0),.def(tmp_5_fu_558_p9),.sel(trunc_ln50_reg_622),.dout(tmp_5_fu_558_p11));
k2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
            i_fu_106 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_106 <= select_ln50_fu_413_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln50_fu_368_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten20_fu_110 <= add_ln50_1_fu_374_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_110 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_102 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_102 <= add_ln51_fu_473_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln50_reg_622 <= trunc_ln50_fu_421_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_2_reg_710 <= tmp_2_fu_489_p11;
        tmp_3_reg_715 <= tmp_3_fu_512_p11;
        tmp_4_reg_720 <= tmp_4_fu_535_p11;
        tmp_5_reg_725 <= tmp_5_fu_558_p11;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_0_blk_n = E_out_0_full_n;
    end else begin
        E_out_0_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_0_write_local = 1'b1;
    end else begin
        E_out_0_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_1_blk_n = E_out_1_full_n;
    end else begin
        E_out_1_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_1_write_local = 1'b1;
    end else begin
        E_out_1_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_2_blk_n = E_out_2_full_n;
    end else begin
        E_out_2_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_2_write_local = 1'b1;
    end else begin
        E_out_2_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_3_blk_n = E_out_3_full_n;
    end else begin
        E_out_3_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_3_write_local = 1'b1;
    end else begin
        E_out_3_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln50_fu_368_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_10_ce0_local = 1'b1;
    end else begin
        buff_E_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_11_ce0_local = 1'b1;
    end else begin
        buff_E_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_12_ce0_local = 1'b1;
    end else begin
        buff_E_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_13_ce0_local = 1'b1;
    end else begin
        buff_E_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_14_ce0_local = 1'b1;
    end else begin
        buff_E_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_15_ce0_local = 1'b1;
    end else begin
        buff_E_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_1_ce0_local = 1'b1;
    end else begin
        buff_E_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_2_ce0_local = 1'b1;
    end else begin
        buff_E_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_3_ce0_local = 1'b1;
    end else begin
        buff_E_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_4_ce0_local = 1'b1;
    end else begin
        buff_E_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_5_ce0_local = 1'b1;
    end else begin
        buff_E_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_6_ce0_local = 1'b1;
    end else begin
        buff_E_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_7_ce0_local = 1'b1;
    end else begin
        buff_E_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_8_ce0_local = 1'b1;
    end else begin
        buff_E_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_9_ce0_local = 1'b1;
    end else begin
        buff_E_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_E_out_ce0_local = 1'b1;
    end else begin
        buff_E_out_ce0_local = 1'b0;
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
assign E_out_0_din = bitcast_ln52_fu_581_p1;
assign E_out_0_write = E_out_0_write_local;
assign E_out_1_din = bitcast_ln52_1_fu_585_p1;
assign E_out_1_write = E_out_1_write_local;
assign E_out_2_din = bitcast_ln52_2_fu_589_p1;
assign E_out_2_write = E_out_2_write_local;
assign E_out_3_din = bitcast_ln52_3_fu_593_p1;
assign E_out_3_write = E_out_3_write_local;
assign add_ln50_1_fu_374_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 11'd1);
assign add_ln50_fu_391_p2 = (i_fu_106 + 7'd1);
assign add_ln51_fu_473_p2 = (select_ln6_fu_405_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage0_iter3));
end
always @ (*) begin
    ap_block_state4_pp0_stage0_iter3 = ((1'b0 == E_out_3_full_n) | (1'b0 == E_out_2_full_n) | (1'b0 == E_out_1_full_n) | (1'b0 == E_out_0_full_n));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln52_1_fu_585_p1 = tmp_3_reg_715;
assign bitcast_ln52_2_fu_589_p1 = tmp_4_reg_720;
assign bitcast_ln52_3_fu_593_p1 = tmp_5_reg_725;
assign bitcast_ln52_fu_581_p1 = tmp_2_reg_710;
assign buff_E_out_10_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_10_ce0 = buff_E_out_10_ce0_local;
assign buff_E_out_11_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_11_ce0 = buff_E_out_11_ce0_local;
assign buff_E_out_12_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_12_ce0 = buff_E_out_12_ce0_local;
assign buff_E_out_13_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_13_ce0 = buff_E_out_13_ce0_local;
assign buff_E_out_14_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_14_ce0 = buff_E_out_14_ce0_local;
assign buff_E_out_15_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_15_ce0 = buff_E_out_15_ce0_local;
assign buff_E_out_1_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_1_ce0 = buff_E_out_1_ce0_local;
assign buff_E_out_2_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_2_ce0 = buff_E_out_2_ce0_local;
assign buff_E_out_3_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_3_ce0 = buff_E_out_3_ce0_local;
assign buff_E_out_4_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_4_ce0 = buff_E_out_4_ce0_local;
assign buff_E_out_5_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_5_ce0 = buff_E_out_5_ce0_local;
assign buff_E_out_6_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_6_ce0 = buff_E_out_6_ce0_local;
assign buff_E_out_7_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_7_ce0 = buff_E_out_7_ce0_local;
assign buff_E_out_8_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_8_ce0 = buff_E_out_8_ce0_local;
assign buff_E_out_9_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_9_ce0 = buff_E_out_9_ce0_local;
assign buff_E_out_address0 = zext_ln52_fu_453_p1;
assign buff_E_out_ce0 = buff_E_out_ce0_local;
assign icmp_ln50_fu_368_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln6_7_fu_425_p4 = {{select_ln6_fu_405_p3[5:2]}};
assign select_ln50_fu_413_p3 = ((tmp_fu_397_p3[0:0] == 1'b1) ? add_ln50_fu_391_p2 : i_fu_106);
assign select_ln6_fu_405_p3 = ((tmp_fu_397_p3[0:0] == 1'b1) ? 7'd0 : j_fu_102);
assign tmp_1_fu_445_p3 = {{tmp_s_fu_435_p4}, {lshr_ln6_7_fu_425_p4}};
assign tmp_2_fu_489_p9 = 'bx;
assign tmp_3_fu_512_p9 = 'bx;
assign tmp_4_fu_535_p9 = 'bx;
assign tmp_5_fu_558_p9 = 'bx;
assign tmp_fu_397_p3 = j_fu_102[32'd6];
assign tmp_s_fu_435_p4 = {{select_ln50_fu_413_p3[5:2]}};
assign trunc_ln50_fu_421_p1 = select_ln50_fu_413_p3[1:0];
assign zext_ln52_fu_453_p1 = tmp_1_fu_445_p3;
endmodule 