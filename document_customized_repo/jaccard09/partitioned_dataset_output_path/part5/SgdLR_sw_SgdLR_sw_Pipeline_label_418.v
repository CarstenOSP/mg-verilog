
module SgdLR_sw_SgdLR_sw_Pipeline_label_418 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_2_address0,v3_2_ce0,v3_2_q0,v3_4_address0,v3_4_ce0,v3_4_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_3_address0,v3_3_ce0,v3_3_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_7_address0,v3_7_ce0,v3_7_q0,grp_fu_792_p_din0,grp_fu_792_p_din1,grp_fu_792_p_opcode,grp_fu_792_p_dout0,grp_fu_792_p_ce,grp_fu_1721_p_din0,grp_fu_1721_p_din1,grp_fu_1721_p_dout0,grp_fu_1721_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
input  [31:0] v2_1_q0;
output  [8:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [8:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [8:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
input  [31:0] v2_0_q1;
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [31:0] grp_fu_792_p_din0;
output  [31:0] grp_fu_792_p_din1;
output  [0:0] grp_fu_792_p_opcode;
input  [31:0] grp_fu_792_p_dout0;
output   grp_fu_792_p_ce;
output  [31:0] grp_fu_1721_p_din0;
output  [31:0] grp_fu_1721_p_din1;
input  [31:0] grp_fu_1721_p_dout0;
output   grp_fu_1721_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_432;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_4_reg_423;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v25_4_reg_423_pp0_iter1_reg;
wire   [31:0] v26_fu_288_p11;
reg   [31:0] v26_reg_476;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v26_5_fu_312_p11;
reg   [31:0] v26_5_reg_481;
reg   [0:0] tmp_5_reg_486;
reg   [0:0] tmp_5_reg_486_pp0_iter3_reg;
reg   [0:0] tmp_5_reg_486_pp0_iter4_reg;
reg   [0:0] tmp_5_reg_486_pp0_iter5_reg;
reg   [0:0] tmp_5_reg_486_pp0_iter6_reg;
reg   [0:0] tmp_5_reg_486_pp0_iter7_reg;
reg   [8:0] v2_0_addr_reg_492;
reg   [8:0] v2_0_addr_reg_492_pp0_iter3_reg;
reg   [8:0] v2_0_addr_reg_492_pp0_iter4_reg;
reg   [8:0] v2_0_addr_reg_492_pp0_iter5_reg;
reg   [8:0] v2_0_addr_reg_492_pp0_iter6_reg;
reg   [8:0] v2_1_addr_reg_497;
reg   [8:0] v2_1_addr_reg_497_pp0_iter3_reg;
reg   [8:0] v2_1_addr_reg_497_pp0_iter4_reg;
reg   [8:0] v2_1_addr_reg_497_pp0_iter5_reg;
reg   [8:0] v2_1_addr_reg_497_pp0_iter6_reg;
reg   [8:0] v2_0_addr_5_reg_502;
reg   [8:0] v2_0_addr_5_reg_502_pp0_iter3_reg;
reg   [8:0] v2_0_addr_5_reg_502_pp0_iter4_reg;
reg   [8:0] v2_0_addr_5_reg_502_pp0_iter5_reg;
reg   [8:0] v2_0_addr_5_reg_502_pp0_iter6_reg;
reg   [8:0] v2_0_addr_5_reg_502_pp0_iter7_reg;
reg   [8:0] v2_1_addr_5_reg_507;
reg   [8:0] v2_1_addr_5_reg_507_pp0_iter3_reg;
reg   [8:0] v2_1_addr_5_reg_507_pp0_iter4_reg;
reg   [8:0] v2_1_addr_5_reg_507_pp0_iter5_reg;
reg   [8:0] v2_1_addr_5_reg_507_pp0_iter6_reg;
reg   [8:0] v2_1_addr_5_reg_507_pp0_iter7_reg;
reg   [31:0] v27_reg_512;
wire   [31:0] select_ln58_fu_385_p3;
reg   [31:0] select_ln58_reg_517;
wire   [31:0] select_ln58_5_fu_392_p3;
reg   [31:0] select_ln58_5_reg_522;
wire   [31:0] v28_fu_399_p1;
reg   [31:0] v27_5_reg_532;
wire   [31:0] v28_5_fu_403_p1;
reg   [31:0] v29_reg_542;
wire   [31:0] bitcast_ln60_5_fu_412_p1;
reg   [31:0] bitcast_ln60_5_reg_547;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_5_fu_273_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_349_p1;
wire   [63:0] zext_ln56_fu_379_p1;
reg   [10:0] v25_fu_80;
wire   [10:0] add_ln55_fu_336_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_4;
reg    v3_ce0_local;
reg    v3_2_ce0_local;
reg    v3_4_ce0_local;
reg    v3_6_ce0_local;
reg    v3_1_ce0_local;
reg    v3_3_ce0_local;
reg    v3_5_ce0_local;
reg    v3_7_ce0_local;
reg    v2_0_ce1_local;
reg   [8:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [8:0] v2_0_address0_local;
reg    v2_0_we1_local;
wire   [31:0] bitcast_ln60_fu_407_p1;
wire    ap_block_pp0_stage1;
reg    v2_0_we0_local;
reg    v2_1_ce1_local;
reg   [8:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [8:0] v2_1_address0_local;
reg    v2_1_we1_local;
reg    v2_1_we0_local;
reg   [31:0] grp_fu_238_p0;
reg   [31:0] grp_fu_238_p1;
reg   [31:0] grp_fu_242_p0;
wire   [6:0] lshr_ln55_s_fu_263_p4;
wire   [31:0] v26_fu_288_p9;
wire   [2:0] trunc_ln55_fu_285_p1;
wire   [31:0] v26_5_fu_312_p9;
wire   [8:0] trunc_ln55_5_fu_346_p1;
wire   [7:0] tmp_s_fu_362_p4;
wire   [8:0] or_ln56_5_fu_371_p3;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v26_fu_288_p1;
wire   [2:0] v26_fu_288_p3;
wire  signed [2:0] v26_fu_288_p5;
wire  signed [2:0] v26_fu_288_p7;
wire   [2:0] v26_5_fu_312_p1;
wire   [2:0] v26_5_fu_312_p3;
wire  signed [2:0] v26_5_fu_312_p5;
wire  signed [2:0] v26_5_fu_312_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_80 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U242(.din0(v3_q0),.din1(v3_2_q0),.din2(v3_4_q0),.din3(v3_6_q0),.def(v26_fu_288_p9),.sel(trunc_ln55_fu_285_p1),.dout(v26_fu_288_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U243(.din0(v3_1_q0),.din1(v3_3_q0),.din2(v3_5_q0),.din3(v3_7_q0),.def(v26_5_fu_312_p9),.sel(trunc_ln55_fu_285_p1),.dout(v26_5_fu_312_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v25_fu_80 <= 11'd0;
    end else if (((tmp_reg_432 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v25_fu_80 <= add_ln55_fu_336_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        bitcast_ln60_5_reg_547 <= bitcast_ln60_5_fu_412_p1;
        select_ln58_5_reg_522 <= select_ln58_5_fu_392_p3;
        select_ln58_reg_517 <= select_ln58_fu_385_p3;
        v26_5_reg_481 <= v26_5_fu_312_p11;
        v26_reg_476 <= v26_fu_288_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_5_reg_486 <= v25_4_reg_423_pp0_iter1_reg[32'd9];
        tmp_5_reg_486_pp0_iter3_reg <= tmp_5_reg_486;
        tmp_5_reg_486_pp0_iter4_reg <= tmp_5_reg_486_pp0_iter3_reg;
        tmp_5_reg_486_pp0_iter5_reg <= tmp_5_reg_486_pp0_iter4_reg;
        tmp_5_reg_486_pp0_iter6_reg <= tmp_5_reg_486_pp0_iter5_reg;
        tmp_5_reg_486_pp0_iter7_reg <= tmp_5_reg_486_pp0_iter6_reg;
        tmp_reg_432 <= ap_sig_allocacmp_v25_4[32'd10];
        v25_4_reg_423 <= ap_sig_allocacmp_v25_4;
        v25_4_reg_423_pp0_iter1_reg <= v25_4_reg_423;
        v2_0_addr_5_reg_502[8 : 1] <= zext_ln56_fu_379_p1[8 : 1];
        v2_0_addr_5_reg_502_pp0_iter3_reg[8 : 1] <= v2_0_addr_5_reg_502[8 : 1];
        v2_0_addr_5_reg_502_pp0_iter4_reg[8 : 1] <= v2_0_addr_5_reg_502_pp0_iter3_reg[8 : 1];
        v2_0_addr_5_reg_502_pp0_iter5_reg[8 : 1] <= v2_0_addr_5_reg_502_pp0_iter4_reg[8 : 1];
        v2_0_addr_5_reg_502_pp0_iter6_reg[8 : 1] <= v2_0_addr_5_reg_502_pp0_iter5_reg[8 : 1];
        v2_0_addr_5_reg_502_pp0_iter7_reg[8 : 1] <= v2_0_addr_5_reg_502_pp0_iter6_reg[8 : 1];
        v2_0_addr_reg_492 <= zext_ln55_fu_349_p1;
        v2_0_addr_reg_492_pp0_iter3_reg <= v2_0_addr_reg_492;
        v2_0_addr_reg_492_pp0_iter4_reg <= v2_0_addr_reg_492_pp0_iter3_reg;
        v2_0_addr_reg_492_pp0_iter5_reg <= v2_0_addr_reg_492_pp0_iter4_reg;
        v2_0_addr_reg_492_pp0_iter6_reg <= v2_0_addr_reg_492_pp0_iter5_reg;
        v2_1_addr_5_reg_507[8 : 1] <= zext_ln56_fu_379_p1[8 : 1];
        v2_1_addr_5_reg_507_pp0_iter3_reg[8 : 1] <= v2_1_addr_5_reg_507[8 : 1];
        v2_1_addr_5_reg_507_pp0_iter4_reg[8 : 1] <= v2_1_addr_5_reg_507_pp0_iter3_reg[8 : 1];
        v2_1_addr_5_reg_507_pp0_iter5_reg[8 : 1] <= v2_1_addr_5_reg_507_pp0_iter4_reg[8 : 1];
        v2_1_addr_5_reg_507_pp0_iter6_reg[8 : 1] <= v2_1_addr_5_reg_507_pp0_iter5_reg[8 : 1];
        v2_1_addr_5_reg_507_pp0_iter7_reg[8 : 1] <= v2_1_addr_5_reg_507_pp0_iter6_reg[8 : 1];
        v2_1_addr_reg_497 <= zext_ln55_fu_349_p1;
        v2_1_addr_reg_497_pp0_iter3_reg <= v2_1_addr_reg_497;
        v2_1_addr_reg_497_pp0_iter4_reg <= v2_1_addr_reg_497_pp0_iter3_reg;
        v2_1_addr_reg_497_pp0_iter5_reg <= v2_1_addr_reg_497_pp0_iter4_reg;
        v2_1_addr_reg_497_pp0_iter6_reg <= v2_1_addr_reg_497_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_5_reg_532 <= grp_fu_1721_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_reg_512 <= grp_fu_1721_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_reg_542 <= grp_fu_792_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_432 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_4 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_4 = v25_fu_80;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_238_p0 = v28_5_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_238_p0 = v28_fu_399_p1;
        end else begin
            grp_fu_238_p0 = 'bx;
        end
    end else begin
        grp_fu_238_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_238_p1 = v27_5_reg_532;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_238_p1 = v27_reg_512;
        end else begin
            grp_fu_238_p1 = 'bx;
        end
    end else begin
        grp_fu_238_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_242_p0 = v26_5_reg_481;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_242_p0 = v26_reg_476;
        end else begin
            grp_fu_242_p0 = 'bx;
        end
    end else begin
        grp_fu_242_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = v2_0_addr_5_reg_502_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_fu_379_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = v2_0_addr_reg_492_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_fu_349_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_5_reg_486_pp0_iter7_reg == 1'd0))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_5_reg_486_pp0_iter6_reg == 1'd0))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = v2_1_addr_5_reg_507_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_fu_379_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = v2_1_addr_reg_497_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_fu_349_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_5_reg_486_pp0_iter7_reg == 1'd1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_5_reg_486_pp0_iter6_reg == 1'd1))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_336_p2 = (v25_4_reg_423 + 11'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_5_fu_412_p1 = grp_fu_792_p_dout0;
assign bitcast_ln60_fu_407_p1 = v29_reg_542;
assign grp_fu_1721_p_ce = 1'b1;
assign grp_fu_1721_p_din0 = grp_fu_242_p0;
assign grp_fu_1721_p_din1 = 32'd3345637376;
assign grp_fu_792_p_ce = 1'b1;
assign grp_fu_792_p_din0 = grp_fu_238_p0;
assign grp_fu_792_p_din1 = grp_fu_238_p1;
assign grp_fu_792_p_opcode = 2'd0;
assign lshr_ln55_s_fu_263_p4 = {{ap_sig_allocacmp_v25_4[9:3]}};
assign or_ln56_5_fu_371_p3 = {{tmp_s_fu_362_p4}, {1'd1}};
assign select_ln58_5_fu_392_p3 = ((tmp_5_reg_486[0:0] == 1'b1) ? v2_1_q0 : v2_0_q0);
assign select_ln58_fu_385_p3 = ((tmp_5_reg_486[0:0] == 1'b1) ? v2_1_q1 : v2_0_q1);
assign tmp_s_fu_362_p4 = {{v25_4_reg_423_pp0_iter1_reg[8:1]}};
assign trunc_ln55_5_fu_346_p1 = v25_4_reg_423_pp0_iter1_reg[8:0];
assign trunc_ln55_fu_285_p1 = v25_4_reg_423[2:0];
assign v26_5_fu_312_p9 = 'bx;
assign v26_fu_288_p9 = 'bx;
assign v28_5_fu_403_p1 = select_ln58_5_reg_522;
assign v28_fu_399_p1 = select_ln58_reg_517;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_5_reg_547;
assign v2_0_d1 = bitcast_ln60_fu_407_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_5_reg_547;
assign v2_1_d1 = bitcast_ln60_fu_407_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v3_1_address0 = zext_ln55_5_fu_273_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln55_5_fu_273_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln55_5_fu_273_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln55_5_fu_273_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln55_5_fu_273_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln55_5_fu_273_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln55_5_fu_273_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_address0 = zext_ln55_5_fu_273_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_5_fu_273_p1 = lshr_ln55_s_fu_263_p4;
assign zext_ln55_fu_349_p1 = trunc_ln55_5_fu_346_p1;
assign zext_ln56_fu_379_p1 = or_ln56_5_fu_371_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_5_reg_502[0] <= 1'b1;
    v2_0_addr_5_reg_502_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_5_reg_502_pp0_iter4_reg[0] <= 1'b1;
    v2_0_addr_5_reg_502_pp0_iter5_reg[0] <= 1'b1;
    v2_0_addr_5_reg_502_pp0_iter6_reg[0] <= 1'b1;
    v2_0_addr_5_reg_502_pp0_iter7_reg[0] <= 1'b1;
    v2_1_addr_5_reg_507[0] <= 1'b1;
    v2_1_addr_5_reg_507_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_5_reg_507_pp0_iter4_reg[0] <= 1'b1;
    v2_1_addr_5_reg_507_pp0_iter5_reg[0] <= 1'b1;
    v2_1_addr_5_reg_507_pp0_iter6_reg[0] <= 1'b1;
    v2_1_addr_5_reg_507_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 
