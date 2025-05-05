module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_q1,grp_fu_1768_p_din0,grp_fu_1768_p_din1,grp_fu_1768_p_opcode,grp_fu_1768_p_dout0,grp_fu_1768_p_ce,grp_fu_1772_p_din0,grp_fu_1772_p_din1,grp_fu_1772_p_dout0,grp_fu_1772_p_ce); 
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
output  [8:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
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
output  [31:0] grp_fu_1768_p_din0;
output  [31:0] grp_fu_1768_p_din1;
output  [1:0] grp_fu_1768_p_opcode;
input  [31:0] grp_fu_1768_p_dout0;
output   grp_fu_1768_p_ce;
output  [31:0] grp_fu_1772_p_din0;
output  [31:0] grp_fu_1772_p_din1;
input  [31:0] grp_fu_1772_p_dout0;
output   grp_fu_1772_p_ce;
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
wire   [0:0] icmp_ln26_fu_348_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln26_fu_399_p1;
reg   [1:0] trunc_ln26_reg_614;
wire   [0:0] trunc_ln26_1_fu_403_p1;
reg   [0:0] trunc_ln26_1_reg_619;
wire   [1:0] trunc_ln27_fu_425_p1;
reg   [1:0] trunc_ln27_reg_647;
reg   [1:0] trunc_ln27_reg_647_pp0_iter2_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter3_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter4_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter5_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter6_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter7_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter8_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter9_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter10_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter11_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter12_reg;
reg   [1:0] trunc_ln27_reg_647_pp0_iter13_reg;
wire   [3:0] lshr_ln5_8_fu_429_p4;
reg   [3:0] lshr_ln5_8_reg_653;
reg   [3:0] lshr_ln5_8_reg_653_pp0_iter2_reg;
reg   [3:0] lshr_ln5_8_reg_653_pp0_iter3_reg;
reg   [3:0] lshr_ln5_8_reg_653_pp0_iter4_reg;
wire   [31:0] tmp_fu_485_p11;
reg   [31:0] tmp_reg_698;
wire   [31:0] tmp_6_fu_536_p11;
reg   [31:0] tmp_6_reg_703;
reg   [3:0] buff_y_out_addr_reg_708;
reg   [3:0] buff_y_out_addr_reg_708_pp0_iter6_reg;
reg   [3:0] buff_y_out_addr_reg_708_pp0_iter7_reg;
reg   [3:0] buff_y_out_addr_reg_708_pp0_iter8_reg;
reg   [3:0] buff_y_out_addr_reg_708_pp0_iter9_reg;
reg   [3:0] buff_y_out_addr_reg_708_pp0_iter10_reg;
reg   [3:0] buff_y_out_addr_reg_708_pp0_iter11_reg;
reg   [3:0] buff_y_out_addr_reg_708_pp0_iter12_reg;
reg   [3:0] buff_y_out_addr_reg_708_pp0_iter13_reg;
reg   [3:0] buff_y_out_1_addr_reg_714;
reg   [3:0] buff_y_out_1_addr_reg_714_pp0_iter6_reg;
reg   [3:0] buff_y_out_1_addr_reg_714_pp0_iter7_reg;
reg   [3:0] buff_y_out_1_addr_reg_714_pp0_iter8_reg;
reg   [3:0] buff_y_out_1_addr_reg_714_pp0_iter9_reg;
reg   [3:0] buff_y_out_1_addr_reg_714_pp0_iter10_reg;
reg   [3:0] buff_y_out_1_addr_reg_714_pp0_iter11_reg;
reg   [3:0] buff_y_out_1_addr_reg_714_pp0_iter12_reg;
reg   [3:0] buff_y_out_1_addr_reg_714_pp0_iter13_reg;
reg   [3:0] buff_y_out_2_addr_reg_720;
reg   [3:0] buff_y_out_2_addr_reg_720_pp0_iter6_reg;
reg   [3:0] buff_y_out_2_addr_reg_720_pp0_iter7_reg;
reg   [3:0] buff_y_out_2_addr_reg_720_pp0_iter8_reg;
reg   [3:0] buff_y_out_2_addr_reg_720_pp0_iter9_reg;
reg   [3:0] buff_y_out_2_addr_reg_720_pp0_iter10_reg;
reg   [3:0] buff_y_out_2_addr_reg_720_pp0_iter11_reg;
reg   [3:0] buff_y_out_2_addr_reg_720_pp0_iter12_reg;
reg   [3:0] buff_y_out_2_addr_reg_720_pp0_iter13_reg;
reg   [3:0] buff_y_out_3_addr_reg_726;
reg   [3:0] buff_y_out_3_addr_reg_726_pp0_iter6_reg;
reg   [3:0] buff_y_out_3_addr_reg_726_pp0_iter7_reg;
reg   [3:0] buff_y_out_3_addr_reg_726_pp0_iter8_reg;
reg   [3:0] buff_y_out_3_addr_reg_726_pp0_iter9_reg;
reg   [3:0] buff_y_out_3_addr_reg_726_pp0_iter10_reg;
reg   [3:0] buff_y_out_3_addr_reg_726_pp0_iter11_reg;
reg   [3:0] buff_y_out_3_addr_reg_726_pp0_iter12_reg;
reg   [3:0] buff_y_out_3_addr_reg_726_pp0_iter13_reg;
wire   [31:0] tmp_1_fu_566_p11;
reg   [31:0] tmp_1_reg_732;
reg   [31:0] mul1_reg_737;
reg   [31:0] add1_reg_742;
wire   [63:0] zext_ln5_fu_417_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_457_p1;
wire   [63:0] zext_ln5_1_fu_559_p1;
reg   [6:0] j_1_fu_86;
wire   [6:0] add_ln27_fu_469_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_90;
wire   [6:0] select_ln26_fu_391_p3;
reg   [12:0] indvar_flatten_fu_94;
wire   [12:0] add_ln26_1_fu_354_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
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
wire   [0:0] icmp_ln27_fu_377_p2;
wire   [6:0] add_ln26_fu_371_p2;
wire   [3:0] lshr_ln5_5_fu_407_p4;
wire   [6:0] select_ln5_fu_383_p3;
wire   [4:0] tmp_s_fu_439_p4;
wire   [8:0] tmp_4_fu_449_p3;
wire   [31:0] tmp_fu_485_p9;
wire   [31:0] tmp_6_fu_536_p2;
wire   [31:0] tmp_6_fu_536_p4;
wire   [31:0] tmp_6_fu_536_p6;
wire   [31:0] tmp_6_fu_536_p8;
wire   [31:0] tmp_6_fu_536_p9;
wire   [31:0] tmp_1_fu_566_p9;
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
wire   [1:0] tmp_fu_485_p1;
wire   [1:0] tmp_fu_485_p3;
wire  signed [1:0] tmp_fu_485_p5;
wire  signed [1:0] tmp_fu_485_p7;
wire   [1:0] tmp_6_fu_536_p1;
wire   [1:0] tmp_6_fu_536_p3;
wire  signed [1:0] tmp_6_fu_536_p5;
wire  signed [1:0] tmp_6_fu_536_p7;
wire   [1:0] tmp_1_fu_566_p1;
wire   [1:0] tmp_1_fu_566_p3;
wire  signed [1:0] tmp_1_fu_566_p5;
wire  signed [1:0] tmp_1_fu_566_p7;
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
#0 j_1_fu_86 = 7'd0;
#0 i_fu_90 = 7'd0;
#0 indvar_flatten_fu_94 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U351(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_485_p9),.sel(trunc_ln26_reg_614),.dout(tmp_fu_485_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U352(.din0(tmp_6_fu_536_p2),.din1(tmp_6_fu_536_p4),.din2(tmp_6_fu_536_p6),.din3(tmp_6_fu_536_p8),.def(tmp_6_fu_536_p9),.sel(trunc_ln27_reg_647),.dout(tmp_6_fu_536_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U353(.din0(buff_y_out_q1),.din1(buff_y_out_1_q1),.din2(buff_y_out_2_q1),.din3(buff_y_out_3_q1),.def(tmp_1_fu_566_p9),.sel(trunc_ln27_reg_647_pp0_iter5_reg),.dout(tmp_1_fu_566_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            i_fu_90 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_90 <= select_ln26_fu_391_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_348_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_94 <= add_ln26_1_fu_354_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_94 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_1_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_1_fu_86 <= add_ln27_fu_469_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_742 <= grp_fu_1768_p_dout0;
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
        buff_y_out_1_addr_reg_714 <= zext_ln5_1_fu_559_p1;
        buff_y_out_1_addr_reg_714_pp0_iter10_reg <= buff_y_out_1_addr_reg_714_pp0_iter9_reg;
        buff_y_out_1_addr_reg_714_pp0_iter11_reg <= buff_y_out_1_addr_reg_714_pp0_iter10_reg;
        buff_y_out_1_addr_reg_714_pp0_iter12_reg <= buff_y_out_1_addr_reg_714_pp0_iter11_reg;
        buff_y_out_1_addr_reg_714_pp0_iter13_reg <= buff_y_out_1_addr_reg_714_pp0_iter12_reg;
        buff_y_out_1_addr_reg_714_pp0_iter6_reg <= buff_y_out_1_addr_reg_714;
        buff_y_out_1_addr_reg_714_pp0_iter7_reg <= buff_y_out_1_addr_reg_714_pp0_iter6_reg;
        buff_y_out_1_addr_reg_714_pp0_iter8_reg <= buff_y_out_1_addr_reg_714_pp0_iter7_reg;
        buff_y_out_1_addr_reg_714_pp0_iter9_reg <= buff_y_out_1_addr_reg_714_pp0_iter8_reg;
        buff_y_out_2_addr_reg_720 <= zext_ln5_1_fu_559_p1;
        buff_y_out_2_addr_reg_720_pp0_iter10_reg <= buff_y_out_2_addr_reg_720_pp0_iter9_reg;
        buff_y_out_2_addr_reg_720_pp0_iter11_reg <= buff_y_out_2_addr_reg_720_pp0_iter10_reg;
        buff_y_out_2_addr_reg_720_pp0_iter12_reg <= buff_y_out_2_addr_reg_720_pp0_iter11_reg;
        buff_y_out_2_addr_reg_720_pp0_iter13_reg <= buff_y_out_2_addr_reg_720_pp0_iter12_reg;
        buff_y_out_2_addr_reg_720_pp0_iter6_reg <= buff_y_out_2_addr_reg_720;
        buff_y_out_2_addr_reg_720_pp0_iter7_reg <= buff_y_out_2_addr_reg_720_pp0_iter6_reg;
        buff_y_out_2_addr_reg_720_pp0_iter8_reg <= buff_y_out_2_addr_reg_720_pp0_iter7_reg;
        buff_y_out_2_addr_reg_720_pp0_iter9_reg <= buff_y_out_2_addr_reg_720_pp0_iter8_reg;
        buff_y_out_3_addr_reg_726 <= zext_ln5_1_fu_559_p1;
        buff_y_out_3_addr_reg_726_pp0_iter10_reg <= buff_y_out_3_addr_reg_726_pp0_iter9_reg;
        buff_y_out_3_addr_reg_726_pp0_iter11_reg <= buff_y_out_3_addr_reg_726_pp0_iter10_reg;
        buff_y_out_3_addr_reg_726_pp0_iter12_reg <= buff_y_out_3_addr_reg_726_pp0_iter11_reg;
        buff_y_out_3_addr_reg_726_pp0_iter13_reg <= buff_y_out_3_addr_reg_726_pp0_iter12_reg;
        buff_y_out_3_addr_reg_726_pp0_iter6_reg <= buff_y_out_3_addr_reg_726;
        buff_y_out_3_addr_reg_726_pp0_iter7_reg <= buff_y_out_3_addr_reg_726_pp0_iter6_reg;
        buff_y_out_3_addr_reg_726_pp0_iter8_reg <= buff_y_out_3_addr_reg_726_pp0_iter7_reg;
        buff_y_out_3_addr_reg_726_pp0_iter9_reg <= buff_y_out_3_addr_reg_726_pp0_iter8_reg;
        buff_y_out_addr_reg_708 <= zext_ln5_1_fu_559_p1;
        buff_y_out_addr_reg_708_pp0_iter10_reg <= buff_y_out_addr_reg_708_pp0_iter9_reg;
        buff_y_out_addr_reg_708_pp0_iter11_reg <= buff_y_out_addr_reg_708_pp0_iter10_reg;
        buff_y_out_addr_reg_708_pp0_iter12_reg <= buff_y_out_addr_reg_708_pp0_iter11_reg;
        buff_y_out_addr_reg_708_pp0_iter13_reg <= buff_y_out_addr_reg_708_pp0_iter12_reg;
        buff_y_out_addr_reg_708_pp0_iter6_reg <= buff_y_out_addr_reg_708;
        buff_y_out_addr_reg_708_pp0_iter7_reg <= buff_y_out_addr_reg_708_pp0_iter6_reg;
        buff_y_out_addr_reg_708_pp0_iter8_reg <= buff_y_out_addr_reg_708_pp0_iter7_reg;
        buff_y_out_addr_reg_708_pp0_iter9_reg <= buff_y_out_addr_reg_708_pp0_iter8_reg;
        lshr_ln5_8_reg_653_pp0_iter2_reg <= lshr_ln5_8_reg_653;
        lshr_ln5_8_reg_653_pp0_iter3_reg <= lshr_ln5_8_reg_653_pp0_iter2_reg;
        lshr_ln5_8_reg_653_pp0_iter4_reg <= lshr_ln5_8_reg_653_pp0_iter3_reg;
        mul1_reg_737 <= grp_fu_1772_p_dout0;
        tmp_1_reg_732 <= tmp_1_fu_566_p11;
        tmp_6_reg_703 <= tmp_6_fu_536_p11;
        tmp_reg_698 <= tmp_fu_485_p11;
        trunc_ln27_reg_647_pp0_iter10_reg <= trunc_ln27_reg_647_pp0_iter9_reg;
        trunc_ln27_reg_647_pp0_iter11_reg <= trunc_ln27_reg_647_pp0_iter10_reg;
        trunc_ln27_reg_647_pp0_iter12_reg <= trunc_ln27_reg_647_pp0_iter11_reg;
        trunc_ln27_reg_647_pp0_iter13_reg <= trunc_ln27_reg_647_pp0_iter12_reg;
        trunc_ln27_reg_647_pp0_iter2_reg <= trunc_ln27_reg_647;
        trunc_ln27_reg_647_pp0_iter3_reg <= trunc_ln27_reg_647_pp0_iter2_reg;
        trunc_ln27_reg_647_pp0_iter4_reg <= trunc_ln27_reg_647_pp0_iter3_reg;
        trunc_ln27_reg_647_pp0_iter5_reg <= trunc_ln27_reg_647_pp0_iter4_reg;
        trunc_ln27_reg_647_pp0_iter6_reg <= trunc_ln27_reg_647_pp0_iter5_reg;
        trunc_ln27_reg_647_pp0_iter7_reg <= trunc_ln27_reg_647_pp0_iter6_reg;
        trunc_ln27_reg_647_pp0_iter8_reg <= trunc_ln27_reg_647_pp0_iter7_reg;
        trunc_ln27_reg_647_pp0_iter9_reg <= trunc_ln27_reg_647_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_8_reg_653 <= {{select_ln5_fu_383_p3[5:2]}};
        trunc_ln26_1_reg_619 <= trunc_ln26_1_fu_403_p1;
        trunc_ln26_reg_614 <= trunc_ln26_fu_399_p1;
        trunc_ln27_reg_647 <= trunc_ln27_fu_425_p1;
    end
end
always @ (*) begin
    if (((icmp_ln26_fu_348_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_94;
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
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln27_reg_647_pp0_iter13_reg == 2'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln27_reg_647_pp0_iter13_reg == 2'd2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln27_reg_647_pp0_iter13_reg == 2'd3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln27_reg_647_pp0_iter13_reg == 2'd0))) begin
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
assign add_ln26_1_fu_354_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln26_fu_371_p2 = (i_fu_90 + 7'd1);
assign add_ln27_fu_469_p2 = (select_ln5_fu_383_p3 + 7'd1);
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
assign buff_A_1_address0 = zext_ln28_fu_457_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln28_fu_457_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln28_fu_457_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln28_fu_457_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln28_fu_457_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln28_fu_457_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln28_fu_457_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_address0 = zext_ln28_fu_457_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_y_out_1_address0 = buff_y_out_1_addr_reg_714_pp0_iter13_reg;
assign buff_y_out_1_address1 = zext_ln5_1_fu_559_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = add1_reg_742;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_addr_reg_720_pp0_iter13_reg;
assign buff_y_out_2_address1 = zext_ln5_1_fu_559_p1;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = add1_reg_742;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_addr_reg_726_pp0_iter13_reg;
assign buff_y_out_3_address1 = zext_ln5_1_fu_559_p1;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = add1_reg_742;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_address0 = buff_y_out_addr_reg_708_pp0_iter13_reg;
assign buff_y_out_address1 = zext_ln5_1_fu_559_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = add1_reg_742;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_1768_p_ce = 1'b1;
assign grp_fu_1768_p_din0 = tmp_1_reg_732;
assign grp_fu_1768_p_din1 = mul1_reg_737;
assign grp_fu_1768_p_opcode = 2'd0;
assign grp_fu_1772_p_ce = 1'b1;
assign grp_fu_1772_p_din0 = tmp_6_reg_703;
assign grp_fu_1772_p_din1 = tmp_reg_698;
assign icmp_ln26_fu_348_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln27_fu_377_p2 = ((j_1_fu_86 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_5_fu_407_p4 = {{select_ln26_fu_391_p3[5:2]}};
assign lshr_ln5_8_fu_429_p4 = {{select_ln5_fu_383_p3[5:2]}};
assign select_ln26_fu_391_p3 = ((icmp_ln27_fu_377_p2[0:0] == 1'b1) ? add_ln26_fu_371_p2 : i_fu_90);
assign select_ln5_fu_383_p3 = ((icmp_ln27_fu_377_p2[0:0] == 1'b1) ? 7'd0 : j_1_fu_86);
assign tmp1_1_address0 = zext_ln5_fu_417_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln5_fu_417_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln5_fu_417_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_address0 = zext_ln5_fu_417_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_1_fu_566_p9 = 'bx;
assign tmp_4_fu_449_p3 = {{tmp_s_fu_439_p4}, {lshr_ln5_8_fu_429_p4}};
assign tmp_6_fu_536_p2 = ((trunc_ln26_1_reg_619[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign tmp_6_fu_536_p4 = ((trunc_ln26_1_reg_619[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_2_q0);
assign tmp_6_fu_536_p6 = ((trunc_ln26_1_reg_619[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_4_q0);
assign tmp_6_fu_536_p8 = ((trunc_ln26_1_reg_619[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_6_q0);
assign tmp_6_fu_536_p9 = 'bx;
assign tmp_fu_485_p9 = 'bx;
assign tmp_s_fu_439_p4 = {{select_ln26_fu_391_p3[5:1]}};
assign trunc_ln26_1_fu_403_p1 = select_ln26_fu_391_p3[0:0];
assign trunc_ln26_fu_399_p1 = select_ln26_fu_391_p3[1:0];
assign trunc_ln27_fu_425_p1 = select_ln5_fu_383_p3[1:0];
assign zext_ln28_fu_457_p1 = tmp_4_fu_449_p3;
assign zext_ln5_1_fu_559_p1 = lshr_ln5_8_reg_653_pp0_iter4_reg;
assign zext_ln5_fu_417_p1 = lshr_ln5_5_fu_407_p4;
endmodule 