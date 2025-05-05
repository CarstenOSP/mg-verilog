module gesummv_gesummv_Pipeline_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_y_out_7_address0,buff_y_out_7_ce0,buff_y_out_7_we0,buff_y_out_7_d0,buff_y_out_6_address0,buff_y_out_6_ce0,buff_y_out_6_we0,buff_y_out_6_d0,buff_y_out_5_address0,buff_y_out_5_ce0,buff_y_out_5_we0,buff_y_out_5_d0,buff_y_out_4_address0,buff_y_out_4_ce0,buff_y_out_4_we0,buff_y_out_4_d0,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_q0,tmp2_address0,tmp2_ce0,tmp2_q0,tmp2_1_address0,tmp2_1_ce0,tmp2_1_q0,tmp2_2_address0,tmp2_2_ce0,tmp2_2_q0,tmp2_3_address0,tmp2_3_ce0,tmp2_3_q0,tmp2_4_address0,tmp2_4_ce0,tmp2_4_q0,tmp2_5_address0,tmp2_5_ce0,tmp2_5_q0,tmp2_6_address0,tmp2_6_ce0,tmp2_6_q0,tmp2_7_address0,tmp2_7_ce0,tmp2_7_q0,grp_fu_2299_p_din0,grp_fu_2299_p_din1,grp_fu_2299_p_opcode,grp_fu_2299_p_dout0,grp_fu_2299_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] buff_y_out_7_address0;
output   buff_y_out_7_ce0;
output   buff_y_out_7_we0;
output  [31:0] buff_y_out_7_d0;
output  [2:0] buff_y_out_6_address0;
output   buff_y_out_6_ce0;
output   buff_y_out_6_we0;
output  [31:0] buff_y_out_6_d0;
output  [2:0] buff_y_out_5_address0;
output   buff_y_out_5_ce0;
output   buff_y_out_5_we0;
output  [31:0] buff_y_out_5_d0;
output  [2:0] buff_y_out_4_address0;
output   buff_y_out_4_ce0;
output   buff_y_out_4_we0;
output  [31:0] buff_y_out_4_d0;
output  [2:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
output  [2:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
output  [2:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
output  [2:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
output  [2:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [2:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [2:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [2:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [2:0] tmp1_4_address0;
output   tmp1_4_ce0;
input  [31:0] tmp1_4_q0;
output  [2:0] tmp1_5_address0;
output   tmp1_5_ce0;
input  [31:0] tmp1_5_q0;
output  [2:0] tmp1_6_address0;
output   tmp1_6_ce0;
input  [31:0] tmp1_6_q0;
output  [2:0] tmp1_7_address0;
output   tmp1_7_ce0;
input  [31:0] tmp1_7_q0;
output  [2:0] tmp2_address0;
output   tmp2_ce0;
input  [31:0] tmp2_q0;
output  [2:0] tmp2_1_address0;
output   tmp2_1_ce0;
input  [31:0] tmp2_1_q0;
output  [2:0] tmp2_2_address0;
output   tmp2_2_ce0;
input  [31:0] tmp2_2_q0;
output  [2:0] tmp2_3_address0;
output   tmp2_3_ce0;
input  [31:0] tmp2_3_q0;
output  [2:0] tmp2_4_address0;
output   tmp2_4_ce0;
input  [31:0] tmp2_4_q0;
output  [2:0] tmp2_5_address0;
output   tmp2_5_ce0;
input  [31:0] tmp2_5_q0;
output  [2:0] tmp2_6_address0;
output   tmp2_6_ce0;
input  [31:0] tmp2_6_q0;
output  [2:0] tmp2_7_address0;
output   tmp2_7_ce0;
input  [31:0] tmp2_7_q0;
output  [31:0] grp_fu_2299_p_din0;
output  [31:0] grp_fu_2299_p_din1;
output  [1:0] grp_fu_2299_p_opcode;
input  [31:0] grp_fu_2299_p_dout0;
output   grp_fu_2299_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln37_fu_420_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln37_fu_432_p1;
reg   [2:0] trunc_ln37_reg_568;
reg   [2:0] trunc_ln37_reg_568_pp0_iter1_reg;
reg   [2:0] trunc_ln37_reg_568_pp0_iter2_reg;
reg   [2:0] trunc_ln37_reg_568_pp0_iter3_reg;
reg   [2:0] trunc_ln37_reg_568_pp0_iter4_reg;
reg   [2:0] trunc_ln37_reg_568_pp0_iter5_reg;
reg   [2:0] trunc_ln37_reg_568_pp0_iter6_reg;
reg   [2:0] trunc_ln37_reg_568_pp0_iter7_reg;
reg   [2:0] trunc_ln37_reg_568_pp0_iter8_reg;
reg   [2:0] buff_y_out_addr_reg_654;
reg   [2:0] buff_y_out_addr_reg_654_pp0_iter1_reg;
reg   [2:0] buff_y_out_addr_reg_654_pp0_iter2_reg;
reg   [2:0] buff_y_out_addr_reg_654_pp0_iter3_reg;
reg   [2:0] buff_y_out_addr_reg_654_pp0_iter4_reg;
reg   [2:0] buff_y_out_addr_reg_654_pp0_iter5_reg;
reg   [2:0] buff_y_out_addr_reg_654_pp0_iter6_reg;
reg   [2:0] buff_y_out_addr_reg_654_pp0_iter7_reg;
reg   [2:0] buff_y_out_addr_reg_654_pp0_iter8_reg;
reg   [2:0] buff_y_out_1_addr_reg_659;
reg   [2:0] buff_y_out_1_addr_reg_659_pp0_iter1_reg;
reg   [2:0] buff_y_out_1_addr_reg_659_pp0_iter2_reg;
reg   [2:0] buff_y_out_1_addr_reg_659_pp0_iter3_reg;
reg   [2:0] buff_y_out_1_addr_reg_659_pp0_iter4_reg;
reg   [2:0] buff_y_out_1_addr_reg_659_pp0_iter5_reg;
reg   [2:0] buff_y_out_1_addr_reg_659_pp0_iter6_reg;
reg   [2:0] buff_y_out_1_addr_reg_659_pp0_iter7_reg;
reg   [2:0] buff_y_out_1_addr_reg_659_pp0_iter8_reg;
reg   [2:0] buff_y_out_2_addr_reg_664;
reg   [2:0] buff_y_out_2_addr_reg_664_pp0_iter1_reg;
reg   [2:0] buff_y_out_2_addr_reg_664_pp0_iter2_reg;
reg   [2:0] buff_y_out_2_addr_reg_664_pp0_iter3_reg;
reg   [2:0] buff_y_out_2_addr_reg_664_pp0_iter4_reg;
reg   [2:0] buff_y_out_2_addr_reg_664_pp0_iter5_reg;
reg   [2:0] buff_y_out_2_addr_reg_664_pp0_iter6_reg;
reg   [2:0] buff_y_out_2_addr_reg_664_pp0_iter7_reg;
reg   [2:0] buff_y_out_2_addr_reg_664_pp0_iter8_reg;
reg   [2:0] buff_y_out_3_addr_reg_669;
reg   [2:0] buff_y_out_3_addr_reg_669_pp0_iter1_reg;
reg   [2:0] buff_y_out_3_addr_reg_669_pp0_iter2_reg;
reg   [2:0] buff_y_out_3_addr_reg_669_pp0_iter3_reg;
reg   [2:0] buff_y_out_3_addr_reg_669_pp0_iter4_reg;
reg   [2:0] buff_y_out_3_addr_reg_669_pp0_iter5_reg;
reg   [2:0] buff_y_out_3_addr_reg_669_pp0_iter6_reg;
reg   [2:0] buff_y_out_3_addr_reg_669_pp0_iter7_reg;
reg   [2:0] buff_y_out_3_addr_reg_669_pp0_iter8_reg;
reg   [2:0] buff_y_out_4_addr_reg_674;
reg   [2:0] buff_y_out_4_addr_reg_674_pp0_iter1_reg;
reg   [2:0] buff_y_out_4_addr_reg_674_pp0_iter2_reg;
reg   [2:0] buff_y_out_4_addr_reg_674_pp0_iter3_reg;
reg   [2:0] buff_y_out_4_addr_reg_674_pp0_iter4_reg;
reg   [2:0] buff_y_out_4_addr_reg_674_pp0_iter5_reg;
reg   [2:0] buff_y_out_4_addr_reg_674_pp0_iter6_reg;
reg   [2:0] buff_y_out_4_addr_reg_674_pp0_iter7_reg;
reg   [2:0] buff_y_out_4_addr_reg_674_pp0_iter8_reg;
reg   [2:0] buff_y_out_5_addr_reg_679;
reg   [2:0] buff_y_out_5_addr_reg_679_pp0_iter1_reg;
reg   [2:0] buff_y_out_5_addr_reg_679_pp0_iter2_reg;
reg   [2:0] buff_y_out_5_addr_reg_679_pp0_iter3_reg;
reg   [2:0] buff_y_out_5_addr_reg_679_pp0_iter4_reg;
reg   [2:0] buff_y_out_5_addr_reg_679_pp0_iter5_reg;
reg   [2:0] buff_y_out_5_addr_reg_679_pp0_iter6_reg;
reg   [2:0] buff_y_out_5_addr_reg_679_pp0_iter7_reg;
reg   [2:0] buff_y_out_5_addr_reg_679_pp0_iter8_reg;
reg   [2:0] buff_y_out_6_addr_reg_684;
reg   [2:0] buff_y_out_6_addr_reg_684_pp0_iter1_reg;
reg   [2:0] buff_y_out_6_addr_reg_684_pp0_iter2_reg;
reg   [2:0] buff_y_out_6_addr_reg_684_pp0_iter3_reg;
reg   [2:0] buff_y_out_6_addr_reg_684_pp0_iter4_reg;
reg   [2:0] buff_y_out_6_addr_reg_684_pp0_iter5_reg;
reg   [2:0] buff_y_out_6_addr_reg_684_pp0_iter6_reg;
reg   [2:0] buff_y_out_6_addr_reg_684_pp0_iter7_reg;
reg   [2:0] buff_y_out_6_addr_reg_684_pp0_iter8_reg;
reg   [2:0] buff_y_out_7_addr_reg_689;
reg   [2:0] buff_y_out_7_addr_reg_689_pp0_iter1_reg;
reg   [2:0] buff_y_out_7_addr_reg_689_pp0_iter2_reg;
reg   [2:0] buff_y_out_7_addr_reg_689_pp0_iter3_reg;
reg   [2:0] buff_y_out_7_addr_reg_689_pp0_iter4_reg;
reg   [2:0] buff_y_out_7_addr_reg_689_pp0_iter5_reg;
reg   [2:0] buff_y_out_7_addr_reg_689_pp0_iter6_reg;
reg   [2:0] buff_y_out_7_addr_reg_689_pp0_iter7_reg;
reg   [2:0] buff_y_out_7_addr_reg_689_pp0_iter8_reg;
wire   [31:0] tmp_7_fu_479_p19;
reg   [31:0] tmp_7_reg_694;
wire   [31:0] tmp_8_fu_518_p19;
reg   [31:0] tmp_8_reg_699;
reg   [31:0] add2_reg_704;
wire   [63:0] zext_ln6_fu_446_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_100;
wire   [6:0] add_ln37_fu_426_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_2;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    tmp1_4_ce0_local;
reg    tmp1_5_ce0_local;
reg    tmp1_6_ce0_local;
reg    tmp1_7_ce0_local;
reg    tmp2_ce0_local;
reg    tmp2_1_ce0_local;
reg    tmp2_2_ce0_local;
reg    tmp2_3_ce0_local;
reg    tmp2_4_ce0_local;
reg    tmp2_5_ce0_local;
reg    tmp2_6_ce0_local;
reg    tmp2_7_ce0_local;
reg    buff_y_out_6_we0_local;
reg    buff_y_out_6_ce0_local;
reg    buff_y_out_5_we0_local;
reg    buff_y_out_5_ce0_local;
reg    buff_y_out_4_we0_local;
reg    buff_y_out_4_ce0_local;
reg    buff_y_out_3_we0_local;
reg    buff_y_out_3_ce0_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_2_ce0_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    buff_y_out_7_we0_local;
reg    buff_y_out_7_ce0_local;
wire   [2:0] lshr_ln6_5_fu_436_p4;
wire   [31:0] tmp_7_fu_479_p17;
wire   [31:0] tmp_8_fu_518_p17;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_7_fu_479_p1;
wire   [2:0] tmp_7_fu_479_p3;
wire   [2:0] tmp_7_fu_479_p5;
wire   [2:0] tmp_7_fu_479_p7;
wire  signed [2:0] tmp_7_fu_479_p9;
wire  signed [2:0] tmp_7_fu_479_p11;
wire  signed [2:0] tmp_7_fu_479_p13;
wire  signed [2:0] tmp_7_fu_479_p15;
wire   [2:0] tmp_8_fu_518_p1;
wire   [2:0] tmp_8_fu_518_p3;
wire   [2:0] tmp_8_fu_518_p5;
wire   [2:0] tmp_8_fu_518_p7;
wire  signed [2:0] tmp_8_fu_518_p9;
wire  signed [2:0] tmp_8_fu_518_p11;
wire  signed [2:0] tmp_8_fu_518_p13;
wire  signed [2:0] tmp_8_fu_518_p15;
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
#0 i_fu_100 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) gesummv_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U536(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.din4(tmp1_4_q0),.din5(tmp1_5_q0),.din6(tmp1_6_q0),.din7(tmp1_7_q0),.def(tmp_7_fu_479_p17),.sel(trunc_ln37_reg_568),.dout(tmp_7_fu_479_p19));
(* dissolve_hierarchy = "yes" *) gesummv_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U537(.din0(tmp2_q0),.din1(tmp2_1_q0),.din2(tmp2_2_q0),.din3(tmp2_3_q0),.din4(tmp2_4_q0),.din5(tmp2_5_q0),.din6(tmp2_6_q0),.din7(tmp2_7_q0),.def(tmp_8_fu_518_p17),.sel(trunc_ln37_reg_568),.dout(tmp_8_fu_518_p19));
gesummv_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((icmp_ln37_fu_420_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_100 <= add_ln37_fu_426_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_100 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add2_reg_704 <= grp_fu_2299_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        buff_y_out_1_addr_reg_659_pp0_iter2_reg <= buff_y_out_1_addr_reg_659_pp0_iter1_reg;
        buff_y_out_1_addr_reg_659_pp0_iter3_reg <= buff_y_out_1_addr_reg_659_pp0_iter2_reg;
        buff_y_out_1_addr_reg_659_pp0_iter4_reg <= buff_y_out_1_addr_reg_659_pp0_iter3_reg;
        buff_y_out_1_addr_reg_659_pp0_iter5_reg <= buff_y_out_1_addr_reg_659_pp0_iter4_reg;
        buff_y_out_1_addr_reg_659_pp0_iter6_reg <= buff_y_out_1_addr_reg_659_pp0_iter5_reg;
        buff_y_out_1_addr_reg_659_pp0_iter7_reg <= buff_y_out_1_addr_reg_659_pp0_iter6_reg;
        buff_y_out_1_addr_reg_659_pp0_iter8_reg <= buff_y_out_1_addr_reg_659_pp0_iter7_reg;
        buff_y_out_2_addr_reg_664_pp0_iter2_reg <= buff_y_out_2_addr_reg_664_pp0_iter1_reg;
        buff_y_out_2_addr_reg_664_pp0_iter3_reg <= buff_y_out_2_addr_reg_664_pp0_iter2_reg;
        buff_y_out_2_addr_reg_664_pp0_iter4_reg <= buff_y_out_2_addr_reg_664_pp0_iter3_reg;
        buff_y_out_2_addr_reg_664_pp0_iter5_reg <= buff_y_out_2_addr_reg_664_pp0_iter4_reg;
        buff_y_out_2_addr_reg_664_pp0_iter6_reg <= buff_y_out_2_addr_reg_664_pp0_iter5_reg;
        buff_y_out_2_addr_reg_664_pp0_iter7_reg <= buff_y_out_2_addr_reg_664_pp0_iter6_reg;
        buff_y_out_2_addr_reg_664_pp0_iter8_reg <= buff_y_out_2_addr_reg_664_pp0_iter7_reg;
        buff_y_out_3_addr_reg_669_pp0_iter2_reg <= buff_y_out_3_addr_reg_669_pp0_iter1_reg;
        buff_y_out_3_addr_reg_669_pp0_iter3_reg <= buff_y_out_3_addr_reg_669_pp0_iter2_reg;
        buff_y_out_3_addr_reg_669_pp0_iter4_reg <= buff_y_out_3_addr_reg_669_pp0_iter3_reg;
        buff_y_out_3_addr_reg_669_pp0_iter5_reg <= buff_y_out_3_addr_reg_669_pp0_iter4_reg;
        buff_y_out_3_addr_reg_669_pp0_iter6_reg <= buff_y_out_3_addr_reg_669_pp0_iter5_reg;
        buff_y_out_3_addr_reg_669_pp0_iter7_reg <= buff_y_out_3_addr_reg_669_pp0_iter6_reg;
        buff_y_out_3_addr_reg_669_pp0_iter8_reg <= buff_y_out_3_addr_reg_669_pp0_iter7_reg;
        buff_y_out_4_addr_reg_674_pp0_iter2_reg <= buff_y_out_4_addr_reg_674_pp0_iter1_reg;
        buff_y_out_4_addr_reg_674_pp0_iter3_reg <= buff_y_out_4_addr_reg_674_pp0_iter2_reg;
        buff_y_out_4_addr_reg_674_pp0_iter4_reg <= buff_y_out_4_addr_reg_674_pp0_iter3_reg;
        buff_y_out_4_addr_reg_674_pp0_iter5_reg <= buff_y_out_4_addr_reg_674_pp0_iter4_reg;
        buff_y_out_4_addr_reg_674_pp0_iter6_reg <= buff_y_out_4_addr_reg_674_pp0_iter5_reg;
        buff_y_out_4_addr_reg_674_pp0_iter7_reg <= buff_y_out_4_addr_reg_674_pp0_iter6_reg;
        buff_y_out_4_addr_reg_674_pp0_iter8_reg <= buff_y_out_4_addr_reg_674_pp0_iter7_reg;
        buff_y_out_5_addr_reg_679_pp0_iter2_reg <= buff_y_out_5_addr_reg_679_pp0_iter1_reg;
        buff_y_out_5_addr_reg_679_pp0_iter3_reg <= buff_y_out_5_addr_reg_679_pp0_iter2_reg;
        buff_y_out_5_addr_reg_679_pp0_iter4_reg <= buff_y_out_5_addr_reg_679_pp0_iter3_reg;
        buff_y_out_5_addr_reg_679_pp0_iter5_reg <= buff_y_out_5_addr_reg_679_pp0_iter4_reg;
        buff_y_out_5_addr_reg_679_pp0_iter6_reg <= buff_y_out_5_addr_reg_679_pp0_iter5_reg;
        buff_y_out_5_addr_reg_679_pp0_iter7_reg <= buff_y_out_5_addr_reg_679_pp0_iter6_reg;
        buff_y_out_5_addr_reg_679_pp0_iter8_reg <= buff_y_out_5_addr_reg_679_pp0_iter7_reg;
        buff_y_out_6_addr_reg_684_pp0_iter2_reg <= buff_y_out_6_addr_reg_684_pp0_iter1_reg;
        buff_y_out_6_addr_reg_684_pp0_iter3_reg <= buff_y_out_6_addr_reg_684_pp0_iter2_reg;
        buff_y_out_6_addr_reg_684_pp0_iter4_reg <= buff_y_out_6_addr_reg_684_pp0_iter3_reg;
        buff_y_out_6_addr_reg_684_pp0_iter5_reg <= buff_y_out_6_addr_reg_684_pp0_iter4_reg;
        buff_y_out_6_addr_reg_684_pp0_iter6_reg <= buff_y_out_6_addr_reg_684_pp0_iter5_reg;
        buff_y_out_6_addr_reg_684_pp0_iter7_reg <= buff_y_out_6_addr_reg_684_pp0_iter6_reg;
        buff_y_out_6_addr_reg_684_pp0_iter8_reg <= buff_y_out_6_addr_reg_684_pp0_iter7_reg;
        buff_y_out_7_addr_reg_689_pp0_iter2_reg <= buff_y_out_7_addr_reg_689_pp0_iter1_reg;
        buff_y_out_7_addr_reg_689_pp0_iter3_reg <= buff_y_out_7_addr_reg_689_pp0_iter2_reg;
        buff_y_out_7_addr_reg_689_pp0_iter4_reg <= buff_y_out_7_addr_reg_689_pp0_iter3_reg;
        buff_y_out_7_addr_reg_689_pp0_iter5_reg <= buff_y_out_7_addr_reg_689_pp0_iter4_reg;
        buff_y_out_7_addr_reg_689_pp0_iter6_reg <= buff_y_out_7_addr_reg_689_pp0_iter5_reg;
        buff_y_out_7_addr_reg_689_pp0_iter7_reg <= buff_y_out_7_addr_reg_689_pp0_iter6_reg;
        buff_y_out_7_addr_reg_689_pp0_iter8_reg <= buff_y_out_7_addr_reg_689_pp0_iter7_reg;
        buff_y_out_addr_reg_654_pp0_iter2_reg <= buff_y_out_addr_reg_654_pp0_iter1_reg;
        buff_y_out_addr_reg_654_pp0_iter3_reg <= buff_y_out_addr_reg_654_pp0_iter2_reg;
        buff_y_out_addr_reg_654_pp0_iter4_reg <= buff_y_out_addr_reg_654_pp0_iter3_reg;
        buff_y_out_addr_reg_654_pp0_iter5_reg <= buff_y_out_addr_reg_654_pp0_iter4_reg;
        buff_y_out_addr_reg_654_pp0_iter6_reg <= buff_y_out_addr_reg_654_pp0_iter5_reg;
        buff_y_out_addr_reg_654_pp0_iter7_reg <= buff_y_out_addr_reg_654_pp0_iter6_reg;
        buff_y_out_addr_reg_654_pp0_iter8_reg <= buff_y_out_addr_reg_654_pp0_iter7_reg;
        trunc_ln37_reg_568_pp0_iter2_reg <= trunc_ln37_reg_568_pp0_iter1_reg;
        trunc_ln37_reg_568_pp0_iter3_reg <= trunc_ln37_reg_568_pp0_iter2_reg;
        trunc_ln37_reg_568_pp0_iter4_reg <= trunc_ln37_reg_568_pp0_iter3_reg;
        trunc_ln37_reg_568_pp0_iter5_reg <= trunc_ln37_reg_568_pp0_iter4_reg;
        trunc_ln37_reg_568_pp0_iter6_reg <= trunc_ln37_reg_568_pp0_iter5_reg;
        trunc_ln37_reg_568_pp0_iter7_reg <= trunc_ln37_reg_568_pp0_iter6_reg;
        trunc_ln37_reg_568_pp0_iter8_reg <= trunc_ln37_reg_568_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        buff_y_out_1_addr_reg_659 <= zext_ln6_fu_446_p1;
        buff_y_out_1_addr_reg_659_pp0_iter1_reg <= buff_y_out_1_addr_reg_659;
        buff_y_out_2_addr_reg_664 <= zext_ln6_fu_446_p1;
        buff_y_out_2_addr_reg_664_pp0_iter1_reg <= buff_y_out_2_addr_reg_664;
        buff_y_out_3_addr_reg_669 <= zext_ln6_fu_446_p1;
        buff_y_out_3_addr_reg_669_pp0_iter1_reg <= buff_y_out_3_addr_reg_669;
        buff_y_out_4_addr_reg_674 <= zext_ln6_fu_446_p1;
        buff_y_out_4_addr_reg_674_pp0_iter1_reg <= buff_y_out_4_addr_reg_674;
        buff_y_out_5_addr_reg_679 <= zext_ln6_fu_446_p1;
        buff_y_out_5_addr_reg_679_pp0_iter1_reg <= buff_y_out_5_addr_reg_679;
        buff_y_out_6_addr_reg_684 <= zext_ln6_fu_446_p1;
        buff_y_out_6_addr_reg_684_pp0_iter1_reg <= buff_y_out_6_addr_reg_684;
        buff_y_out_7_addr_reg_689 <= zext_ln6_fu_446_p1;
        buff_y_out_7_addr_reg_689_pp0_iter1_reg <= buff_y_out_7_addr_reg_689;
        buff_y_out_addr_reg_654 <= zext_ln6_fu_446_p1;
        buff_y_out_addr_reg_654_pp0_iter1_reg <= buff_y_out_addr_reg_654;
        tmp_7_reg_694 <= tmp_7_fu_479_p19;
        tmp_8_reg_699 <= tmp_8_fu_518_p19;
        trunc_ln37_reg_568 <= trunc_ln37_fu_432_p1;
        trunc_ln37_reg_568_pp0_iter1_reg <= trunc_ln37_reg_568;
    end
end
always @ (*) begin
    if (((icmp_ln37_fu_420_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_2 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln37_reg_568_pp0_iter8_reg == 3'd1))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln37_reg_568_pp0_iter8_reg == 3'd2))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln37_reg_568_pp0_iter8_reg == 3'd3))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln37_reg_568_pp0_iter8_reg == 3'd4))) begin
        buff_y_out_4_we0_local = 1'b1;
    end else begin
        buff_y_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln37_reg_568_pp0_iter8_reg == 3'd5))) begin
        buff_y_out_5_we0_local = 1'b1;
    end else begin
        buff_y_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln37_reg_568_pp0_iter8_reg == 3'd6))) begin
        buff_y_out_6_we0_local = 1'b1;
    end else begin
        buff_y_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln37_reg_568_pp0_iter8_reg == 3'd7))) begin
        buff_y_out_7_we0_local = 1'b1;
    end else begin
        buff_y_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln37_reg_568_pp0_iter8_reg == 3'd0))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_1_ce0_local = 1'b1;
    end else begin
        tmp2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_2_ce0_local = 1'b1;
    end else begin
        tmp2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_3_ce0_local = 1'b1;
    end else begin
        tmp2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_4_ce0_local = 1'b1;
    end else begin
        tmp2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_5_ce0_local = 1'b1;
    end else begin
        tmp2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_6_ce0_local = 1'b1;
    end else begin
        tmp2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_7_ce0_local = 1'b1;
    end else begin
        tmp2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp2_ce0_local = 1'b1;
    end else begin
        tmp2_ce0_local = 1'b0;
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
assign add_ln37_fu_426_p2 = (ap_sig_allocacmp_i_2 + 7'd1);
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
assign buff_y_out_1_address0 = buff_y_out_1_addr_reg_659_pp0_iter8_reg;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_d0 = add2_reg_704;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_addr_reg_664_pp0_iter8_reg;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_d0 = add2_reg_704;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_addr_reg_669_pp0_iter8_reg;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_d0 = add2_reg_704;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_4_address0 = buff_y_out_4_addr_reg_674_pp0_iter8_reg;
assign buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
assign buff_y_out_4_d0 = add2_reg_704;
assign buff_y_out_4_we0 = buff_y_out_4_we0_local;
assign buff_y_out_5_address0 = buff_y_out_5_addr_reg_679_pp0_iter8_reg;
assign buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
assign buff_y_out_5_d0 = add2_reg_704;
assign buff_y_out_5_we0 = buff_y_out_5_we0_local;
assign buff_y_out_6_address0 = buff_y_out_6_addr_reg_684_pp0_iter8_reg;
assign buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
assign buff_y_out_6_d0 = add2_reg_704;
assign buff_y_out_6_we0 = buff_y_out_6_we0_local;
assign buff_y_out_7_address0 = buff_y_out_7_addr_reg_689_pp0_iter8_reg;
assign buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
assign buff_y_out_7_d0 = add2_reg_704;
assign buff_y_out_7_we0 = buff_y_out_7_we0_local;
assign buff_y_out_address0 = buff_y_out_addr_reg_654_pp0_iter8_reg;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_d0 = add2_reg_704;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_2299_p_ce = 1'b1;
assign grp_fu_2299_p_din0 = tmp_7_reg_694;
assign grp_fu_2299_p_din1 = tmp_8_reg_699;
assign grp_fu_2299_p_opcode = 2'd0;
assign icmp_ln37_fu_420_p2 = ((ap_sig_allocacmp_i_2 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_5_fu_436_p4 = {{ap_sig_allocacmp_i_2[5:3]}};
assign tmp1_1_address0 = zext_ln6_fu_446_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln6_fu_446_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln6_fu_446_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_4_address0 = zext_ln6_fu_446_p1;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_5_address0 = zext_ln6_fu_446_p1;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_6_address0 = zext_ln6_fu_446_p1;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_7_address0 = zext_ln6_fu_446_p1;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_address0 = zext_ln6_fu_446_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp2_1_address0 = zext_ln6_fu_446_p1;
assign tmp2_1_ce0 = tmp2_1_ce0_local;
assign tmp2_2_address0 = zext_ln6_fu_446_p1;
assign tmp2_2_ce0 = tmp2_2_ce0_local;
assign tmp2_3_address0 = zext_ln6_fu_446_p1;
assign tmp2_3_ce0 = tmp2_3_ce0_local;
assign tmp2_4_address0 = zext_ln6_fu_446_p1;
assign tmp2_4_ce0 = tmp2_4_ce0_local;
assign tmp2_5_address0 = zext_ln6_fu_446_p1;
assign tmp2_5_ce0 = tmp2_5_ce0_local;
assign tmp2_6_address0 = zext_ln6_fu_446_p1;
assign tmp2_6_ce0 = tmp2_6_ce0_local;
assign tmp2_7_address0 = zext_ln6_fu_446_p1;
assign tmp2_7_ce0 = tmp2_7_ce0_local;
assign tmp2_address0 = zext_ln6_fu_446_p1;
assign tmp2_ce0 = tmp2_ce0_local;
assign tmp_7_fu_479_p17 = 'bx;
assign tmp_8_fu_518_p17 = 'bx;
assign trunc_ln37_fu_432_p1 = ap_sig_allocacmp_i_2[2:0];
assign zext_ln6_fu_446_p1 = lshr_ln6_5_fu_436_p4;
endmodule 