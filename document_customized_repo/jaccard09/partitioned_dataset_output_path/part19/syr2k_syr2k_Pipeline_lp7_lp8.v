
module syr2k_syr2k_Pipeline_lp7_lp8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_C_address0,buff_C_ce0,buff_C_q0,buff_C_address1,buff_C_ce1,buff_C_q1,buff_D_out_address0,buff_D_out_ce0,buff_D_out_we0,buff_D_out_d0,buff_D_out_address1,buff_D_out_ce1,buff_D_out_we1,buff_D_out_d1,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_address1,tmp2_ce1,tmp2_q1,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_q0,beta,grp_fu_3135_p_din0,grp_fu_3135_p_din1,grp_fu_3135_p_opcode,grp_fu_3135_p_dout0,grp_fu_3135_p_ce,grp_fu_3139_p_din0,grp_fu_3139_p_din1,grp_fu_3139_p_opcode,grp_fu_3139_p_dout0,grp_fu_3139_p_ce,grp_fu_3143_p_din0,grp_fu_3143_p_din1,grp_fu_3143_p_opcode,grp_fu_3143_p_dout0,grp_fu_3143_p_ce,grp_fu_3147_p_din0,grp_fu_3147_p_din1,grp_fu_3147_p_opcode,grp_fu_3147_p_dout0,grp_fu_3147_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] buff_C_address0;
output   buff_C_ce0;
input  [31:0] buff_C_q0;
output  [11:0] buff_C_address1;
output   buff_C_ce1;
input  [31:0] buff_C_q1;
output  [11:0] buff_D_out_address0;
output   buff_D_out_ce0;
output   buff_D_out_we0;
output  [31:0] buff_D_out_d0;
output  [11:0] buff_D_out_address1;
output   buff_D_out_ce1;
output   buff_D_out_we1;
output  [31:0] buff_D_out_d1;
output  [11:0] tmp2_address0;
output   tmp2_ce0;
input  [31:0] tmp2_q0;
output  [11:0] tmp2_address1;
output   tmp2_ce1;
input  [31:0] tmp2_q1;
output  [8:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [8:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [8:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [8:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [8:0] tmp1_4_address0;
output   tmp1_4_ce0;
input  [31:0] tmp1_4_q0;
output  [8:0] tmp1_5_address0;
output   tmp1_5_ce0;
input  [31:0] tmp1_5_q0;
output  [8:0] tmp1_6_address0;
output   tmp1_6_ce0;
input  [31:0] tmp1_6_q0;
output  [8:0] tmp1_7_address0;
output   tmp1_7_ce0;
input  [31:0] tmp1_7_q0;
input  [31:0] beta;
output  [31:0] grp_fu_3135_p_din0;
output  [31:0] grp_fu_3135_p_din1;
output  [1:0] grp_fu_3135_p_opcode;
input  [31:0] grp_fu_3135_p_dout0;
output   grp_fu_3135_p_ce;
output  [31:0] grp_fu_3139_p_din0;
output  [31:0] grp_fu_3139_p_din1;
output  [1:0] grp_fu_3139_p_opcode;
input  [31:0] grp_fu_3139_p_dout0;
output   grp_fu_3139_p_ce;
output  [31:0] grp_fu_3143_p_din0;
output  [31:0] grp_fu_3143_p_din1;
output  [1:0] grp_fu_3143_p_opcode;
input  [31:0] grp_fu_3143_p_dout0;
output   grp_fu_3143_p_ce;
output  [31:0] grp_fu_3147_p_din0;
output  [31:0] grp_fu_3147_p_din1;
output  [1:0] grp_fu_3147_p_opcode;
input  [31:0] grp_fu_3147_p_dout0;
output   grp_fu_3147_p_ce;
output  [31:0] grp_fu_3279_p_din0;
output  [31:0] grp_fu_3279_p_din1;
input  [31:0] grp_fu_3279_p_dout0;
output   grp_fu_3279_p_ce;
output  [31:0] grp_fu_3283_p_din0;
output  [31:0] grp_fu_3283_p_din1;
input  [31:0] grp_fu_3283_p_dout0;
output   grp_fu_3283_p_ce;
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
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln45_fu_331_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln5_fu_363_p3;
reg   [6:0] select_ln5_reg_557;
wire   [5:0] trunc_ln48_fu_379_p1;
reg   [5:0] trunc_ln48_reg_562;
wire   [2:0] trunc_ln46_fu_383_p1;
reg   [2:0] trunc_ln46_reg_569;
reg   [2:0] trunc_ln46_reg_569_pp0_iter1_reg;
reg   [2:0] lshr_ln5_5_reg_575;
reg   [4:0] tmp_4_reg_580;
wire   [63:0] zext_ln48_3_fu_444_p1;
reg   [63:0] zext_ln48_3_reg_585;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter2_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter3_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter4_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter5_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter6_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter7_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter8_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter9_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter10_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter11_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter12_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter13_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter14_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter15_reg;
reg   [63:0] zext_ln48_3_reg_585_pp0_iter16_reg;
wire   [63:0] zext_ln48_2_fu_475_p1;
reg   [63:0] zext_ln48_2_reg_636;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter2_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter3_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter4_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter5_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter6_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter7_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter8_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter9_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter10_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter11_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter12_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter13_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter14_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter15_reg;
reg   [63:0] zext_ln48_2_reg_636_pp0_iter16_reg;
wire   [31:0] tmp_3_fu_480_p11;
reg   [31:0] tmp_3_reg_647;
reg   [31:0] empty_reg_652;
wire   [31:0] tmp_6_fu_503_p11;
reg   [31:0] tmp_6_reg_657;
reg   [31:0] empty_10_reg_662;
reg   [31:0] buff_C_load_reg_677;
reg   [31:0] buff_C_load_1_reg_682;
reg   [31:0] add2_reg_687;
reg   [31:0] mul4_reg_692;
reg   [31:0] add135_1_reg_697;
reg   [31:0] mul140_1_reg_702;
reg   [31:0] add3_reg_707;
reg   [31:0] add141_1_reg_712;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln48_1_fu_455_p1;
reg   [6:0] j_fu_92;
wire   [6:0] add_ln46_fu_407_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_96;
wire   [6:0] select_ln45_fu_371_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [11:0] indvar_flatten20_fu_100;
wire   [11:0] add_ln45_1_fu_337_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten20_load;
reg    tmp1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_4_ce0_local;
reg    tmp1_6_ce0_local;
reg    tmp2_ce1_local;
reg    tmp2_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_3_ce0_local;
reg    tmp1_5_ce0_local;
reg    tmp1_7_ce0_local;
reg    buff_C_ce1_local;
reg    buff_C_ce0_local;
reg    buff_D_out_we1_local;
reg    buff_D_out_ce1_local;
reg    buff_D_out_we0_local;
reg    buff_D_out_ce0_local;
wire   [0:0] tmp_fu_355_p3;
wire   [6:0] add_ln45_fu_349_p2;
wire   [11:0] tmp_s_fu_428_p3;
wire   [11:0] zext_ln48_fu_435_p1;
wire   [11:0] add_ln48_fu_438_p2;
wire   [8:0] tmp_2_fu_449_p3;
wire   [11:0] tmp_5_fu_467_p4;
wire   [31:0] tmp_3_fu_480_p9;
wire   [31:0] tmp_6_fu_503_p9;
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
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_3_fu_480_p1;
wire   [2:0] tmp_3_fu_480_p3;
wire  signed [2:0] tmp_3_fu_480_p5;
wire  signed [2:0] tmp_3_fu_480_p7;
wire   [2:0] tmp_6_fu_503_p1;
wire   [2:0] tmp_6_fu_503_p3;
wire  signed [2:0] tmp_6_fu_503_p5;
wire  signed [2:0] tmp_6_fu_503_p7;
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
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 j_fu_92 = 7'd0;
#0 i_fu_96 = 7'd0;
#0 indvar_flatten20_fu_100 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U2403(.din0(tmp1_q0),.din1(tmp1_2_q0),.din2(tmp1_4_q0),.din3(tmp1_6_q0),.def(tmp_3_fu_480_p9),.sel(trunc_ln46_reg_569_pp0_iter1_reg),.dout(tmp_3_fu_480_p11));
(* dissolve_hierarchy = "yes" *) syr2k_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U2404(.din0(tmp1_1_q0),.din1(tmp1_3_q0),.din2(tmp1_5_q0),.din3(tmp1_7_q0),.def(tmp_6_fu_503_p9),.sel(trunc_ln46_reg_569_pp0_iter1_reg),.dout(tmp_6_fu_503_p11));
syr2k_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
        if (((icmp_ln45_fu_331_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_96 <= select_ln45_fu_371_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_96 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln45_fu_331_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten20_fu_100 <= add_ln45_1_fu_337_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_100 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln45_fu_331_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_92 <= add_ln46_fu_407_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_92 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add135_1_reg_697 <= grp_fu_3139_p_dout0;
        add141_1_reg_712 <= grp_fu_3147_p_dout0;
        add2_reg_687 <= grp_fu_3135_p_dout0;
        add3_reg_707 <= grp_fu_3143_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul140_1_reg_702 <= grp_fu_3283_p_dout0;
        mul4_reg_692 <= grp_fu_3279_p_dout0;
        tmp_3_reg_647 <= tmp_3_fu_480_p11;
        tmp_6_reg_657 <= tmp_6_fu_503_p11;
        zext_ln48_2_reg_636_pp0_iter10_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter9_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter11_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter10_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter12_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter11_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter13_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter12_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter14_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter13_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter15_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter14_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter16_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter15_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter2_reg[11 : 1] <= zext_ln48_2_reg_636[11 : 1];
        zext_ln48_2_reg_636_pp0_iter3_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter2_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter4_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter3_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter5_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter4_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter6_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter5_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter7_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter6_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter8_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter7_reg[11 : 1];
        zext_ln48_2_reg_636_pp0_iter9_reg[11 : 1] <= zext_ln48_2_reg_636_pp0_iter8_reg[11 : 1];
        zext_ln48_3_reg_585_pp0_iter10_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter9_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter11_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter10_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter12_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter11_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter13_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter12_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter14_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter13_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter15_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter14_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter16_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter15_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter2_reg[11 : 0] <= zext_ln48_3_reg_585[11 : 0];
        zext_ln48_3_reg_585_pp0_iter3_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter2_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter4_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter3_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter5_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter4_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter6_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter5_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter7_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter6_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter8_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter7_reg[11 : 0];
        zext_ln48_3_reg_585_pp0_iter9_reg[11 : 0] <= zext_ln48_3_reg_585_pp0_iter8_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_5_reg_575 <= {{select_ln5_fu_363_p3[5:3]}};
        select_ln5_reg_557 <= select_ln5_fu_363_p3;
        tmp_4_reg_580 <= {{select_ln5_fu_363_p3[5:1]}};
        trunc_ln46_reg_569 <= trunc_ln46_fu_383_p1;
        trunc_ln46_reg_569_pp0_iter1_reg <= trunc_ln46_reg_569;
        trunc_ln48_reg_562 <= trunc_ln48_fu_379_p1;
        zext_ln48_2_reg_636[11 : 1] <= zext_ln48_2_fu_475_p1[11 : 1];
        zext_ln48_3_reg_585[11 : 0] <= zext_ln48_3_fu_444_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_load_1_reg_682 <= buff_C_q0;
        buff_C_load_reg_677 <= buff_C_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        empty_10_reg_662 <= tmp2_q0;
        empty_reg_652 <= tmp2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln45_fu_331_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_ce0_local = 1'b1;
    end else begin
        buff_C_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        buff_C_ce1_local = 1'b1;
    end else begin
        buff_C_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_ce0_local = 1'b1;
    end else begin
        buff_D_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_ce1_local = 1'b1;
    end else begin
        buff_D_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_we0_local = 1'b1;
    end else begin
        buff_D_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1))) begin
        buff_D_out_we1_local = 1'b1;
    end else begin
        buff_D_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce1_local = 1'b1;
    end else begin
        tmp2_ce1_local = 1'b0;
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
assign add_ln45_1_fu_337_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 12'd1);
assign add_ln45_fu_349_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln46_fu_407_p2 = (select_ln5_fu_363_p3 + 7'd2);
assign add_ln48_fu_438_p2 = (tmp_s_fu_428_p3 + zext_ln48_fu_435_p1);
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
assign buff_C_address0 = zext_ln48_2_reg_636_pp0_iter3_reg;
assign buff_C_address1 = zext_ln48_3_reg_585_pp0_iter3_reg;
assign buff_C_ce0 = buff_C_ce0_local;
assign buff_C_ce1 = buff_C_ce1_local;
assign buff_D_out_address0 = zext_ln48_2_reg_636_pp0_iter16_reg;
assign buff_D_out_address1 = zext_ln48_3_reg_585_pp0_iter16_reg;
assign buff_D_out_ce0 = buff_D_out_ce0_local;
assign buff_D_out_ce1 = buff_D_out_ce1_local;
assign buff_D_out_d0 = add141_1_reg_712;
assign buff_D_out_d1 = add3_reg_707;
assign buff_D_out_we0 = buff_D_out_we0_local;
assign buff_D_out_we1 = buff_D_out_we1_local;
assign grp_fu_3135_p_ce = 1'b1;
assign grp_fu_3135_p_din0 = tmp_3_reg_647;
assign grp_fu_3135_p_din1 = empty_reg_652;
assign grp_fu_3135_p_opcode = 2'd0;
assign grp_fu_3139_p_ce = 1'b1;
assign grp_fu_3139_p_din0 = tmp_6_reg_657;
assign grp_fu_3139_p_din1 = empty_10_reg_662;
assign grp_fu_3139_p_opcode = 2'd0;
assign grp_fu_3143_p_ce = 1'b1;
assign grp_fu_3143_p_din0 = add2_reg_687;
assign grp_fu_3143_p_din1 = mul4_reg_692;
assign grp_fu_3143_p_opcode = 2'd0;
assign grp_fu_3147_p_ce = 1'b1;
assign grp_fu_3147_p_din0 = add135_1_reg_697;
assign grp_fu_3147_p_din1 = mul140_1_reg_702;
assign grp_fu_3147_p_opcode = 2'd0;
assign grp_fu_3279_p_ce = 1'b1;
assign grp_fu_3279_p_din0 = buff_C_load_reg_677;
assign grp_fu_3279_p_din1 = beta;
assign grp_fu_3283_p_ce = 1'b1;
assign grp_fu_3283_p_din0 = buff_C_load_1_reg_682;
assign grp_fu_3283_p_din1 = beta;
assign icmp_ln45_fu_331_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 12'd2048) ? 1'b1 : 1'b0);
assign select_ln45_fu_371_p3 = ((tmp_fu_355_p3[0:0] == 1'b1) ? add_ln45_fu_349_p2 : ap_sig_allocacmp_i_load);
assign select_ln5_fu_363_p3 = ((tmp_fu_355_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp1_1_address0 = zext_ln48_1_fu_455_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln48_1_fu_455_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln48_1_fu_455_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_4_address0 = zext_ln48_1_fu_455_p1;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_5_address0 = zext_ln48_1_fu_455_p1;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_6_address0 = zext_ln48_1_fu_455_p1;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_7_address0 = zext_ln48_1_fu_455_p1;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_address0 = zext_ln48_1_fu_455_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp2_address0 = zext_ln48_2_fu_475_p1;
assign tmp2_address1 = zext_ln48_3_fu_444_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp2_ce1 = tmp2_ce1_local;
assign tmp_2_fu_449_p3 = {{trunc_ln48_reg_562}, {lshr_ln5_5_reg_575}};
assign tmp_3_fu_480_p9 = 'bx;
assign tmp_5_fu_467_p4 = {{{trunc_ln48_reg_562}, {tmp_4_reg_580}}, {1'd1}};
assign tmp_6_fu_503_p9 = 'bx;
assign tmp_fu_355_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_428_p3 = {{trunc_ln48_reg_562}, {6'd0}};
assign trunc_ln46_fu_383_p1 = select_ln5_fu_363_p3[2:0];
assign trunc_ln48_fu_379_p1 = select_ln45_fu_371_p3[5:0];
assign zext_ln48_1_fu_455_p1 = tmp_2_fu_449_p3;
assign zext_ln48_2_fu_475_p1 = tmp_5_fu_467_p4;
assign zext_ln48_3_fu_444_p1 = add_ln48_fu_438_p2;
assign zext_ln48_fu_435_p1 = select_ln5_reg_557;
always @ (posedge ap_clk) begin
    zext_ln48_3_reg_585[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter3_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter4_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter5_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter6_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter7_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter8_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter9_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter10_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter11_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter12_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter13_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter14_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter15_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_3_reg_585_pp0_iter16_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636[0] <= 1'b1;
    zext_ln48_2_reg_636[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter2_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter3_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter3_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter4_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter4_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter5_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter5_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter6_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter6_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter7_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter7_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter8_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter8_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter9_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter9_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter10_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter10_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter11_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter11_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter12_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter12_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter13_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter13_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter14_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter14_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter15_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter15_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln48_2_reg_636_pp0_iter16_reg[0] <= 1'b1;
    zext_ln48_2_reg_636_pp0_iter16_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 
