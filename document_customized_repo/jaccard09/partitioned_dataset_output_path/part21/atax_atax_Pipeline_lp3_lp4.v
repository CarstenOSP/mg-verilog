
module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_q1,grp_fu_1730_p_din0,grp_fu_1730_p_din1,grp_fu_1730_p_opcode,grp_fu_1730_p_dout0,grp_fu_1730_p_ce,grp_fu_1734_p_din0,grp_fu_1734_p_din1,grp_fu_1734_p_opcode,grp_fu_1734_p_dout0,grp_fu_1734_p_ce,grp_fu_1738_p_din0,grp_fu_1738_p_din1,grp_fu_1738_p_opcode,grp_fu_1738_p_dout0,grp_fu_1738_p_ce,grp_fu_1742_p_din0,grp_fu_1742_p_din1,grp_fu_1742_p_opcode,grp_fu_1742_p_dout0,grp_fu_1742_p_ce,grp_fu_1746_p_din0,grp_fu_1746_p_din1,grp_fu_1746_p_dout0,grp_fu_1746_p_ce,grp_fu_1750_p_din0,grp_fu_1750_p_din1,grp_fu_1750_p_dout0,grp_fu_1750_p_ce,grp_fu_1754_p_din0,grp_fu_1754_p_din1,grp_fu_1754_p_dout0,grp_fu_1754_p_ce,grp_fu_1758_p_din0,grp_fu_1758_p_din1,grp_fu_1758_p_dout0,grp_fu_1758_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [3:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [3:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [3:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [3:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
output  [3:0] buff_y_out_address1;
output   buff_y_out_ce1;
input  [31:0] buff_y_out_q1;
output  [3:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
output  [3:0] buff_y_out_1_address1;
output   buff_y_out_1_ce1;
input  [31:0] buff_y_out_1_q1;
output  [3:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
output  [3:0] buff_y_out_2_address1;
output   buff_y_out_2_ce1;
input  [31:0] buff_y_out_2_q1;
output  [3:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
output  [3:0] buff_y_out_3_address1;
output   buff_y_out_3_ce1;
input  [31:0] buff_y_out_3_q1;
output  [31:0] grp_fu_1730_p_din0;
output  [31:0] grp_fu_1730_p_din1;
output  [1:0] grp_fu_1730_p_opcode;
input  [31:0] grp_fu_1730_p_dout0;
output   grp_fu_1730_p_ce;
output  [31:0] grp_fu_1734_p_din0;
output  [31:0] grp_fu_1734_p_din1;
output  [1:0] grp_fu_1734_p_opcode;
input  [31:0] grp_fu_1734_p_dout0;
output   grp_fu_1734_p_ce;
output  [31:0] grp_fu_1738_p_din0;
output  [31:0] grp_fu_1738_p_din1;
output  [1:0] grp_fu_1738_p_opcode;
input  [31:0] grp_fu_1738_p_dout0;
output   grp_fu_1738_p_ce;
output  [31:0] grp_fu_1742_p_din0;
output  [31:0] grp_fu_1742_p_din1;
output  [1:0] grp_fu_1742_p_opcode;
input  [31:0] grp_fu_1742_p_dout0;
output   grp_fu_1742_p_ce;
output  [31:0] grp_fu_1746_p_din0;
output  [31:0] grp_fu_1746_p_din1;
input  [31:0] grp_fu_1746_p_dout0;
output   grp_fu_1746_p_ce;
output  [31:0] grp_fu_1750_p_din0;
output  [31:0] grp_fu_1750_p_din1;
input  [31:0] grp_fu_1750_p_dout0;
output   grp_fu_1750_p_ce;
output  [31:0] grp_fu_1754_p_din0;
output  [31:0] grp_fu_1754_p_din1;
input  [31:0] grp_fu_1754_p_dout0;
output   grp_fu_1754_p_ce;
output  [31:0] grp_fu_1758_p_din0;
output  [31:0] grp_fu_1758_p_din1;
input  [31:0] grp_fu_1758_p_dout0;
output   grp_fu_1758_p_ce;
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
wire   [0:0] icmp_ln26_fu_314_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln26_1_fu_371_p1;
reg   [1:0] trunc_ln26_1_reg_490;
wire   [3:0] lshr_ln5_5_fu_393_p4;
reg   [3:0] lshr_ln5_5_reg_515;
reg   [3:0] lshr_ln5_5_reg_515_pp0_iter2_reg;
reg   [3:0] lshr_ln5_5_reg_515_pp0_iter3_reg;
reg   [3:0] lshr_ln5_5_reg_515_pp0_iter4_reg;
wire   [31:0] tmp_2_fu_435_p11;
reg   [31:0] tmp_2_reg_540;
reg   [31:0] buff_A_load_reg_548;
reg   [31:0] buff_A_1_load_reg_553;
reg   [31:0] buff_A_2_load_reg_558;
reg   [31:0] buff_A_3_load_reg_563;
reg   [3:0] buff_y_out_addr_reg_568;
reg   [3:0] buff_y_out_addr_reg_568_pp0_iter6_reg;
reg   [3:0] buff_y_out_addr_reg_568_pp0_iter7_reg;
reg   [3:0] buff_y_out_addr_reg_568_pp0_iter8_reg;
reg   [3:0] buff_y_out_addr_reg_568_pp0_iter9_reg;
reg   [3:0] buff_y_out_addr_reg_568_pp0_iter10_reg;
reg   [3:0] buff_y_out_addr_reg_568_pp0_iter11_reg;
reg   [3:0] buff_y_out_addr_reg_568_pp0_iter12_reg;
reg   [3:0] buff_y_out_addr_reg_568_pp0_iter13_reg;
reg   [3:0] buff_y_out_1_addr_reg_574;
reg   [3:0] buff_y_out_1_addr_reg_574_pp0_iter6_reg;
reg   [3:0] buff_y_out_1_addr_reg_574_pp0_iter7_reg;
reg   [3:0] buff_y_out_1_addr_reg_574_pp0_iter8_reg;
reg   [3:0] buff_y_out_1_addr_reg_574_pp0_iter9_reg;
reg   [3:0] buff_y_out_1_addr_reg_574_pp0_iter10_reg;
reg   [3:0] buff_y_out_1_addr_reg_574_pp0_iter11_reg;
reg   [3:0] buff_y_out_1_addr_reg_574_pp0_iter12_reg;
reg   [3:0] buff_y_out_1_addr_reg_574_pp0_iter13_reg;
reg   [3:0] buff_y_out_2_addr_reg_580;
reg   [3:0] buff_y_out_2_addr_reg_580_pp0_iter6_reg;
reg   [3:0] buff_y_out_2_addr_reg_580_pp0_iter7_reg;
reg   [3:0] buff_y_out_2_addr_reg_580_pp0_iter8_reg;
reg   [3:0] buff_y_out_2_addr_reg_580_pp0_iter9_reg;
reg   [3:0] buff_y_out_2_addr_reg_580_pp0_iter10_reg;
reg   [3:0] buff_y_out_2_addr_reg_580_pp0_iter11_reg;
reg   [3:0] buff_y_out_2_addr_reg_580_pp0_iter12_reg;
reg   [3:0] buff_y_out_2_addr_reg_580_pp0_iter13_reg;
reg   [3:0] buff_y_out_3_addr_reg_586;
reg   [3:0] buff_y_out_3_addr_reg_586_pp0_iter6_reg;
reg   [3:0] buff_y_out_3_addr_reg_586_pp0_iter7_reg;
reg   [3:0] buff_y_out_3_addr_reg_586_pp0_iter8_reg;
reg   [3:0] buff_y_out_3_addr_reg_586_pp0_iter9_reg;
reg   [3:0] buff_y_out_3_addr_reg_586_pp0_iter10_reg;
reg   [3:0] buff_y_out_3_addr_reg_586_pp0_iter11_reg;
reg   [3:0] buff_y_out_3_addr_reg_586_pp0_iter12_reg;
reg   [3:0] buff_y_out_3_addr_reg_586_pp0_iter13_reg;
reg   [31:0] buff_y_out_load_reg_592;
reg   [31:0] mul1_reg_597;
reg   [31:0] mul57_1_reg_602;
reg   [31:0] mul57_2_reg_607;
reg   [31:0] mul57_3_reg_612;
reg   [31:0] buff_y_out_1_load_reg_617;
reg   [31:0] buff_y_out_2_load_reg_622;
reg   [31:0] buff_y_out_3_load_reg_627;
reg   [31:0] add1_reg_632;
reg   [31:0] add58_1_reg_637;
reg   [31:0] add58_2_reg_642;
reg   [31:0] add58_3_reg_647;
wire   [63:0] zext_ln5_fu_385_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_411_p1;
wire   [63:0] zext_ln5_1_fu_458_p1;
reg   [6:0] j_1_fu_80;
wire   [6:0] add_ln27_fu_419_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_84;
wire   [6:0] select_ln26_fu_359_p3;
reg   [10:0] indvar_flatten_fu_88;
wire   [10:0] add_ln26_1_fu_320_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_y_out_ce1_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    buff_y_out_1_ce1_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    buff_y_out_2_ce1_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_2_ce0_local;
reg    buff_y_out_3_ce1_local;
reg    buff_y_out_3_we0_local;
reg    buff_y_out_3_ce0_local;
wire   [0:0] tmp_fu_343_p3;
wire   [6:0] add_ln26_fu_337_p2;
wire   [3:0] lshr_ln5_2_fu_375_p4;
wire   [6:0] select_ln5_fu_351_p3;
wire   [5:0] trunc_ln26_fu_367_p1;
wire   [9:0] tmp_s_fu_403_p3;
wire   [31:0] tmp_2_fu_435_p9;
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
wire   [1:0] tmp_2_fu_435_p1;
wire   [1:0] tmp_2_fu_435_p3;
wire  signed [1:0] tmp_2_fu_435_p5;
wire  signed [1:0] tmp_2_fu_435_p7;
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
#0 j_1_fu_80 = 7'd0;
#0 i_fu_84 = 7'd0;
#0 indvar_flatten_fu_88 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U220(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_2_fu_435_p9),.sel(trunc_ln26_1_reg_490),.dout(tmp_2_fu_435_p11));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
            i_fu_84 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_84 <= select_ln26_fu_359_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_314_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_88 <= add_ln26_1_fu_320_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_88 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_1_fu_80 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_1_fu_80 <= add_ln27_fu_419_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_632 <= grp_fu_1730_p_dout0;
        add58_1_reg_637 <= grp_fu_1734_p_dout0;
        add58_2_reg_642 <= grp_fu_1738_p_dout0;
        add58_3_reg_647 <= grp_fu_1742_p_dout0;
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
        buff_A_1_load_reg_553 <= buff_A_1_q0;
        buff_A_2_load_reg_558 <= buff_A_2_q0;
        buff_A_3_load_reg_563 <= buff_A_3_q0;
        buff_A_load_reg_548 <= buff_A_q0;
        buff_y_out_1_addr_reg_574 <= zext_ln5_1_fu_458_p1;
        buff_y_out_1_addr_reg_574_pp0_iter10_reg <= buff_y_out_1_addr_reg_574_pp0_iter9_reg;
        buff_y_out_1_addr_reg_574_pp0_iter11_reg <= buff_y_out_1_addr_reg_574_pp0_iter10_reg;
        buff_y_out_1_addr_reg_574_pp0_iter12_reg <= buff_y_out_1_addr_reg_574_pp0_iter11_reg;
        buff_y_out_1_addr_reg_574_pp0_iter13_reg <= buff_y_out_1_addr_reg_574_pp0_iter12_reg;
        buff_y_out_1_addr_reg_574_pp0_iter6_reg <= buff_y_out_1_addr_reg_574;
        buff_y_out_1_addr_reg_574_pp0_iter7_reg <= buff_y_out_1_addr_reg_574_pp0_iter6_reg;
        buff_y_out_1_addr_reg_574_pp0_iter8_reg <= buff_y_out_1_addr_reg_574_pp0_iter7_reg;
        buff_y_out_1_addr_reg_574_pp0_iter9_reg <= buff_y_out_1_addr_reg_574_pp0_iter8_reg;
        buff_y_out_2_addr_reg_580 <= zext_ln5_1_fu_458_p1;
        buff_y_out_2_addr_reg_580_pp0_iter10_reg <= buff_y_out_2_addr_reg_580_pp0_iter9_reg;
        buff_y_out_2_addr_reg_580_pp0_iter11_reg <= buff_y_out_2_addr_reg_580_pp0_iter10_reg;
        buff_y_out_2_addr_reg_580_pp0_iter12_reg <= buff_y_out_2_addr_reg_580_pp0_iter11_reg;
        buff_y_out_2_addr_reg_580_pp0_iter13_reg <= buff_y_out_2_addr_reg_580_pp0_iter12_reg;
        buff_y_out_2_addr_reg_580_pp0_iter6_reg <= buff_y_out_2_addr_reg_580;
        buff_y_out_2_addr_reg_580_pp0_iter7_reg <= buff_y_out_2_addr_reg_580_pp0_iter6_reg;
        buff_y_out_2_addr_reg_580_pp0_iter8_reg <= buff_y_out_2_addr_reg_580_pp0_iter7_reg;
        buff_y_out_2_addr_reg_580_pp0_iter9_reg <= buff_y_out_2_addr_reg_580_pp0_iter8_reg;
        buff_y_out_3_addr_reg_586 <= zext_ln5_1_fu_458_p1;
        buff_y_out_3_addr_reg_586_pp0_iter10_reg <= buff_y_out_3_addr_reg_586_pp0_iter9_reg;
        buff_y_out_3_addr_reg_586_pp0_iter11_reg <= buff_y_out_3_addr_reg_586_pp0_iter10_reg;
        buff_y_out_3_addr_reg_586_pp0_iter12_reg <= buff_y_out_3_addr_reg_586_pp0_iter11_reg;
        buff_y_out_3_addr_reg_586_pp0_iter13_reg <= buff_y_out_3_addr_reg_586_pp0_iter12_reg;
        buff_y_out_3_addr_reg_586_pp0_iter6_reg <= buff_y_out_3_addr_reg_586;
        buff_y_out_3_addr_reg_586_pp0_iter7_reg <= buff_y_out_3_addr_reg_586_pp0_iter6_reg;
        buff_y_out_3_addr_reg_586_pp0_iter8_reg <= buff_y_out_3_addr_reg_586_pp0_iter7_reg;
        buff_y_out_3_addr_reg_586_pp0_iter9_reg <= buff_y_out_3_addr_reg_586_pp0_iter8_reg;
        buff_y_out_addr_reg_568 <= zext_ln5_1_fu_458_p1;
        buff_y_out_addr_reg_568_pp0_iter10_reg <= buff_y_out_addr_reg_568_pp0_iter9_reg;
        buff_y_out_addr_reg_568_pp0_iter11_reg <= buff_y_out_addr_reg_568_pp0_iter10_reg;
        buff_y_out_addr_reg_568_pp0_iter12_reg <= buff_y_out_addr_reg_568_pp0_iter11_reg;
        buff_y_out_addr_reg_568_pp0_iter13_reg <= buff_y_out_addr_reg_568_pp0_iter12_reg;
        buff_y_out_addr_reg_568_pp0_iter6_reg <= buff_y_out_addr_reg_568;
        buff_y_out_addr_reg_568_pp0_iter7_reg <= buff_y_out_addr_reg_568_pp0_iter6_reg;
        buff_y_out_addr_reg_568_pp0_iter8_reg <= buff_y_out_addr_reg_568_pp0_iter7_reg;
        buff_y_out_addr_reg_568_pp0_iter9_reg <= buff_y_out_addr_reg_568_pp0_iter8_reg;
        lshr_ln5_5_reg_515_pp0_iter2_reg <= lshr_ln5_5_reg_515;
        lshr_ln5_5_reg_515_pp0_iter3_reg <= lshr_ln5_5_reg_515_pp0_iter2_reg;
        lshr_ln5_5_reg_515_pp0_iter4_reg <= lshr_ln5_5_reg_515_pp0_iter3_reg;
        mul1_reg_597 <= grp_fu_1746_p_dout0;
        mul57_1_reg_602 <= grp_fu_1750_p_dout0;
        mul57_2_reg_607 <= grp_fu_1754_p_dout0;
        mul57_3_reg_612 <= grp_fu_1758_p_dout0;
        tmp_2_reg_540 <= tmp_2_fu_435_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_5_reg_515 <= {{select_ln5_fu_351_p3[5:2]}};
        trunc_ln26_1_reg_490 <= trunc_ln26_1_fu_371_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_y_out_1_load_reg_617 <= buff_y_out_1_q1;
        buff_y_out_2_load_reg_622 <= buff_y_out_2_q1;
        buff_y_out_3_load_reg_627 <= buff_y_out_3_q1;
        buff_y_out_load_reg_592 <= buff_y_out_q1;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_314_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
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
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
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
assign add_ln26_1_fu_320_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln26_fu_337_p2 = (i_fu_84 + 7'd1);
assign add_ln27_fu_419_p2 = (select_ln5_fu_351_p3 + 7'd4);
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
assign buff_A_1_address0 = zext_ln28_fu_411_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln28_fu_411_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln28_fu_411_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_address0 = zext_ln28_fu_411_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_y_out_1_address0 = buff_y_out_1_addr_reg_574_pp0_iter13_reg;
assign buff_y_out_1_address1 = zext_ln5_1_fu_458_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = add58_1_reg_637;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_addr_reg_580_pp0_iter13_reg;
assign buff_y_out_2_address1 = zext_ln5_1_fu_458_p1;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = add58_2_reg_642;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_addr_reg_586_pp0_iter13_reg;
assign buff_y_out_3_address1 = zext_ln5_1_fu_458_p1;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = add58_3_reg_647;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_address0 = buff_y_out_addr_reg_568_pp0_iter13_reg;
assign buff_y_out_address1 = zext_ln5_1_fu_458_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = add1_reg_632;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_1730_p_ce = 1'b1;
assign grp_fu_1730_p_din0 = buff_y_out_load_reg_592;
assign grp_fu_1730_p_din1 = mul1_reg_597;
assign grp_fu_1730_p_opcode = 2'd0;
assign grp_fu_1734_p_ce = 1'b1;
assign grp_fu_1734_p_din0 = buff_y_out_1_load_reg_617;
assign grp_fu_1734_p_din1 = mul57_1_reg_602;
assign grp_fu_1734_p_opcode = 2'd0;
assign grp_fu_1738_p_ce = 1'b1;
assign grp_fu_1738_p_din0 = buff_y_out_2_load_reg_622;
assign grp_fu_1738_p_din1 = mul57_2_reg_607;
assign grp_fu_1738_p_opcode = 2'd0;
assign grp_fu_1742_p_ce = 1'b1;
assign grp_fu_1742_p_din0 = buff_y_out_3_load_reg_627;
assign grp_fu_1742_p_din1 = mul57_3_reg_612;
assign grp_fu_1742_p_opcode = 2'd0;
assign grp_fu_1746_p_ce = 1'b1;
assign grp_fu_1746_p_din0 = buff_A_load_reg_548;
assign grp_fu_1746_p_din1 = tmp_2_reg_540;
assign grp_fu_1750_p_ce = 1'b1;
assign grp_fu_1750_p_din0 = buff_A_1_load_reg_553;
assign grp_fu_1750_p_din1 = tmp_2_reg_540;
assign grp_fu_1754_p_ce = 1'b1;
assign grp_fu_1754_p_din0 = buff_A_2_load_reg_558;
assign grp_fu_1754_p_din1 = tmp_2_reg_540;
assign grp_fu_1758_p_ce = 1'b1;
assign grp_fu_1758_p_din0 = buff_A_3_load_reg_563;
assign grp_fu_1758_p_din1 = tmp_2_reg_540;
assign icmp_ln26_fu_314_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln5_2_fu_375_p4 = {{select_ln26_fu_359_p3[5:2]}};
assign lshr_ln5_5_fu_393_p4 = {{select_ln5_fu_351_p3[5:2]}};
assign select_ln26_fu_359_p3 = ((tmp_fu_343_p3[0:0] == 1'b1) ? add_ln26_fu_337_p2 : i_fu_84);
assign select_ln5_fu_351_p3 = ((tmp_fu_343_p3[0:0] == 1'b1) ? 7'd0 : j_1_fu_80);
assign tmp1_1_address0 = zext_ln5_fu_385_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln5_fu_385_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln5_fu_385_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_address0 = zext_ln5_fu_385_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_2_fu_435_p9 = 'bx;
assign tmp_fu_343_p3 = j_1_fu_80[32'd6];
assign tmp_s_fu_403_p3 = {{trunc_ln26_fu_367_p1}, {lshr_ln5_5_fu_393_p4}};
assign trunc_ln26_1_fu_371_p1 = select_ln26_fu_359_p3[1:0];
assign trunc_ln26_fu_367_p1 = select_ln26_fu_359_p3[5:0];
assign zext_ln28_fu_411_p1 = tmp_s_fu_403_p3;
assign zext_ln5_1_fu_458_p1 = lshr_ln5_5_reg_515_pp0_iter4_reg;
assign zext_ln5_fu_385_p1 = lshr_ln5_2_fu_375_p4;
endmodule 
