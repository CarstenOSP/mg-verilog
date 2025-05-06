
module backprop_backprop_Pipeline_delta_matrix_weights3_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,activations2_address0,activations2_ce0,activations2_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,p_reload86,p_reload85,p_reload,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,grp_fu_4261_p_din0,grp_fu_4261_p_din1,grp_fu_4261_p_dout0,grp_fu_4261_p_ce,grp_fu_4265_p_din0,grp_fu_4265_p_din1,grp_fu_4265_p_dout0,grp_fu_4265_p_ce,grp_fu_4269_p_din0,grp_fu_4269_p_din1,grp_fu_4269_p_dout0,grp_fu_4269_p_ce,grp_fu_4273_p_din0,grp_fu_4273_p_din1,grp_fu_4273_p_dout0,grp_fu_4273_p_ce,grp_fu_4277_p_din0,grp_fu_4277_p_din1,grp_fu_4277_p_dout0,grp_fu_4277_p_ce,grp_fu_4289_p_din0,grp_fu_4289_p_din1,grp_fu_4289_p_dout0,grp_fu_4289_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [4:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [4:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [4:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [4:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [4:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [4:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [4:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
output  [2:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [2:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [2:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [2:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
input  [63:0] p_reload86;
input  [63:0] p_reload85;
input  [63:0] p_reload;
output  [2:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [2:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [2:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [2:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [63:0] grp_fu_4261_p_din0;
output  [63:0] grp_fu_4261_p_din1;
input  [63:0] grp_fu_4261_p_dout0;
output   grp_fu_4261_p_ce;
output  [63:0] grp_fu_4265_p_din0;
output  [63:0] grp_fu_4265_p_din1;
input  [63:0] grp_fu_4265_p_dout0;
output   grp_fu_4265_p_ce;
output  [63:0] grp_fu_4269_p_din0;
output  [63:0] grp_fu_4269_p_din1;
input  [63:0] grp_fu_4269_p_dout0;
output   grp_fu_4269_p_ce;
output  [63:0] grp_fu_4273_p_din0;
output  [63:0] grp_fu_4273_p_din1;
input  [63:0] grp_fu_4273_p_dout0;
output   grp_fu_4273_p_ce;
output  [63:0] grp_fu_4277_p_din0;
output  [63:0] grp_fu_4277_p_din1;
input  [63:0] grp_fu_4277_p_dout0;
output   grp_fu_4277_p_ce;
output  [63:0] grp_fu_4289_p_din0;
output  [63:0] grp_fu_4289_p_din1;
input  [63:0] grp_fu_4289_p_dout0;
output   grp_fu_4289_p_ce;
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
wire   [0:0] tmp_fu_492_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_6_reg_742;
reg   [6:0] i_6_reg_742_pp0_iter1_reg;
reg   [6:0] i_6_reg_742_pp0_iter2_reg;
reg   [6:0] i_6_reg_742_pp0_iter3_reg;
reg   [6:0] i_6_reg_742_pp0_iter4_reg;
reg   [6:0] i_6_reg_742_pp0_iter5_reg;
reg   [6:0] i_6_reg_742_pp0_iter6_reg;
reg   [6:0] i_6_reg_742_pp0_iter7_reg;
wire   [2:0] trunc_ln73_fu_533_p1;
reg   [2:0] trunc_ln73_reg_793;
reg   [2:0] trunc_ln73_reg_793_pp0_iter2_reg;
reg   [2:0] trunc_ln73_reg_793_pp0_iter3_reg;
reg   [2:0] trunc_ln73_reg_793_pp0_iter4_reg;
reg   [2:0] trunc_ln73_reg_793_pp0_iter5_reg;
reg   [2:0] trunc_ln73_reg_793_pp0_iter6_reg;
reg   [2:0] trunc_ln73_reg_793_pp0_iter7_reg;
reg   [2:0] trunc_ln73_reg_793_pp0_iter8_reg;
wire   [63:0] tmp_s_fu_536_p11;
reg   [63:0] tmp_s_reg_797;
wire   [63:0] tmp_51_fu_560_p11;
reg   [63:0] tmp_51_reg_804;
wire   [7:0] sub_ln75_fu_598_p2;
reg   [7:0] sub_ln75_reg_811;
reg   [4:0] lshr_ln9_reg_819;
reg   [63:0] mul_i3_reg_824;
reg   [63:0] mul_16_i_reg_832;
reg   [63:0] mul_2_i_reg_840;
reg   [63:0] mul_1_i_reg_848;
reg   [63:0] mul_1_1_i_reg_856;
reg   [63:0] mul_1_2_i_reg_864;
wire   [63:0] zext_ln72_fu_510_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_1_fu_614_p1;
wire   [63:0] zext_ln75_2_fu_640_p1;
wire   [63:0] zext_ln75_3_fu_663_p1;
wire   [63:0] zext_ln75_4_fu_686_p1;
wire   [63:0] zext_ln75_5_fu_709_p1;
reg   [6:0] i_fu_102;
wire   [6:0] add_ln73_fu_522_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_6;
reg    activations2_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_7_ce0_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [4:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [4:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [4:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [4:0] delta_weights3_7_address0_local;
reg    delta_weights3_we0_local;
reg   [63:0] delta_weights3_d0_local;
reg    delta_weights3_ce0_local;
reg   [4:0] delta_weights3_address0_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [4:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [4:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [4:0] delta_weights3_3_address0_local;
wire   [2:0] lshr_ln8_fu_500_p4;
wire   [63:0] tmp_s_fu_536_p9;
wire   [63:0] tmp_51_fu_560_p9;
wire   [5:0] trunc_ln75_fu_587_p1;
wire   [7:0] p_shl_fu_590_p3;
wire   [7:0] zext_ln75_fu_584_p1;
wire   [7:0] add_ln75_fu_625_p2;
wire   [4:0] lshr_ln75_1_fu_630_p4;
wire   [7:0] empty_fu_648_p2;
wire   [4:0] lshr_ln75_2_fu_653_p4;
wire   [7:0] add_ln75_1_fu_671_p2;
wire   [4:0] lshr_ln75_3_fu_676_p4;
wire   [7:0] add_ln75_2_fu_694_p2;
wire   [4:0] lshr_ln75_4_fu_699_p4;
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
reg    ap_condition_384;
wire   [2:0] tmp_s_fu_536_p1;
wire   [2:0] tmp_s_fu_536_p3;
wire  signed [2:0] tmp_s_fu_536_p5;
wire  signed [2:0] tmp_s_fu_536_p7;
wire   [2:0] tmp_51_fu_560_p1;
wire   [2:0] tmp_51_fu_560_p3;
wire  signed [2:0] tmp_51_fu_560_p5;
wire  signed [2:0] tmp_51_fu_560_p7;
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
#0 i_fu_102 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U382(.din0(activations2_q0),.din1(activations2_2_q0),.din2(activations2_4_q0),.din3(activations2_6_q0),.def(tmp_s_fu_536_p9),.sel(trunc_ln73_fu_533_p1),.dout(tmp_s_fu_536_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U383(.din0(activations2_1_q0),.din1(activations2_3_q0),.din2(activations2_5_q0),.din3(activations2_7_q0),.def(tmp_51_fu_560_p9),.sel(trunc_ln73_fu_533_p1),.dout(tmp_51_fu_560_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((tmp_fu_492_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_102 <= add_ln73_fu_522_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_102 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_6_reg_742 <= ap_sig_allocacmp_i_6;
        i_6_reg_742_pp0_iter1_reg <= i_6_reg_742;
        tmp_51_reg_804 <= tmp_51_fu_560_p11;
        tmp_s_reg_797 <= tmp_s_fu_536_p11;
        trunc_ln73_reg_793 <= trunc_ln73_fu_533_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        i_6_reg_742_pp0_iter2_reg <= i_6_reg_742_pp0_iter1_reg;
        i_6_reg_742_pp0_iter3_reg <= i_6_reg_742_pp0_iter2_reg;
        i_6_reg_742_pp0_iter4_reg <= i_6_reg_742_pp0_iter3_reg;
        i_6_reg_742_pp0_iter5_reg <= i_6_reg_742_pp0_iter4_reg;
        i_6_reg_742_pp0_iter6_reg <= i_6_reg_742_pp0_iter5_reg;
        i_6_reg_742_pp0_iter7_reg <= i_6_reg_742_pp0_iter6_reg;
        lshr_ln9_reg_819 <= {{sub_ln75_fu_598_p2[7:3]}};
        mul_16_i_reg_832 <= grp_fu_4265_p_dout0;
        mul_1_1_i_reg_856 <= grp_fu_4277_p_dout0;
        mul_1_2_i_reg_864 <= grp_fu_4289_p_dout0;
        mul_1_i_reg_848 <= grp_fu_4273_p_dout0;
        mul_2_i_reg_840 <= grp_fu_4269_p_dout0;
        mul_i3_reg_824 <= grp_fu_4261_p_dout0;
        sub_ln75_reg_811 <= sub_ln75_fu_598_p2;
        trunc_ln73_reg_793_pp0_iter2_reg <= trunc_ln73_reg_793;
        trunc_ln73_reg_793_pp0_iter3_reg <= trunc_ln73_reg_793_pp0_iter2_reg;
        trunc_ln73_reg_793_pp0_iter4_reg <= trunc_ln73_reg_793_pp0_iter3_reg;
        trunc_ln73_reg_793_pp0_iter5_reg <= trunc_ln73_reg_793_pp0_iter4_reg;
        trunc_ln73_reg_793_pp0_iter6_reg <= trunc_ln73_reg_793_pp0_iter5_reg;
        trunc_ln73_reg_793_pp0_iter7_reg <= trunc_ln73_reg_793_pp0_iter6_reg;
        trunc_ln73_reg_793_pp0_iter8_reg <= trunc_ln73_reg_793_pp0_iter7_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_492_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_6 = i_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_1_address0_local = zext_ln75_1_fu_614_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_1_address0_local = zext_ln75_3_fu_663_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_1_address0_local = zext_ln75_5_fu_709_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_1_d0_local = mul_16_i_reg_832;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_1_d0_local = mul_1_i_reg_848;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_1_d0_local = mul_1_2_i_reg_864;
        end else begin
            delta_weights3_1_d0_local = 'bx;
        end
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_2_address0_local = zext_ln75_1_fu_614_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_2_address0_local = zext_ln75_2_fu_640_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_2_address0_local = zext_ln75_4_fu_686_p1;
        end else begin
            delta_weights3_2_address0_local = 'bx;
        end
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_2_d0_local = mul_i3_reg_824;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_2_d0_local = mul_2_i_reg_840;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_2_d0_local = mul_1_1_i_reg_856;
        end else begin
            delta_weights3_2_d0_local = 'bx;
        end
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_3_address0_local = zext_ln75_1_fu_614_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_3_address0_local = zext_ln75_3_fu_663_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_3_address0_local = zext_ln75_5_fu_709_p1;
        end else begin
            delta_weights3_3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_3_d0_local = mul_16_i_reg_832;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_3_d0_local = mul_1_i_reg_848;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_3_d0_local = mul_1_2_i_reg_864;
        end else begin
            delta_weights3_3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_4_address0_local = zext_ln75_2_fu_640_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_4_address0_local = zext_ln75_4_fu_686_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_4_address0_local = zext_ln75_1_fu_614_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_4_d0_local = mul_2_i_reg_840;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_4_d0_local = mul_1_1_i_reg_856;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_4_d0_local = mul_i3_reg_824;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_5_address0_local = zext_ln75_3_fu_663_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_5_address0_local = zext_ln75_5_fu_709_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_5_address0_local = zext_ln75_1_fu_614_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_5_d0_local = mul_1_i_reg_848;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_5_d0_local = mul_1_2_i_reg_864;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_5_d0_local = mul_16_i_reg_832;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_6_address0_local = zext_ln75_4_fu_686_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_6_address0_local = zext_ln75_1_fu_614_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_6_address0_local = zext_ln75_2_fu_640_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_6_d0_local = mul_1_1_i_reg_856;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_6_d0_local = mul_i3_reg_824;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_6_d0_local = mul_2_i_reg_840;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_7_address0_local = zext_ln75_5_fu_709_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_7_address0_local = zext_ln75_1_fu_614_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_7_address0_local = zext_ln75_3_fu_663_p1;
        end else begin
            delta_weights3_7_address0_local = 'bx;
        end
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_384)) begin
            delta_weights3_7_d0_local = mul_1_2_i_reg_864;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_7_d0_local = mul_16_i_reg_832;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_7_d0_local = mul_1_i_reg_848;
        end else begin
            delta_weights3_7_d0_local = 'bx;
        end
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_address0_local = zext_ln75_1_fu_614_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_address0_local = zext_ln75_2_fu_640_p1;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_address0_local = zext_ln75_4_fu_686_p1;
        end else begin
            delta_weights3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) begin
            delta_weights3_d0_local = mul_i3_reg_824;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) begin
            delta_weights3_d0_local = mul_2_i_reg_840;
        end else if ((trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)) begin
            delta_weights3_d0_local = mul_1_1_i_reg_856;
        end else begin
            delta_weights3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_793_pp0_iter8_reg == 3'd4)))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
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
assign activations2_1_address0 = zext_ln72_fu_510_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln72_fu_510_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln72_fu_510_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln72_fu_510_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln72_fu_510_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln72_fu_510_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln72_fu_510_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_address0 = zext_ln72_fu_510_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_fu_522_p2 = (ap_sig_allocacmp_i_6 + 7'd2);
assign add_ln75_1_fu_671_p2 = (sub_ln75_reg_811 + 8'd4);
assign add_ln75_2_fu_694_p2 = (sub_ln75_reg_811 + 8'd5);
assign add_ln75_fu_625_p2 = (sub_ln75_reg_811 + 8'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_384 = (~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd2) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd0) & ~(trunc_ln73_reg_793_pp0_iter8_reg == 3'd4));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_address0 = delta_weights3_address0_local;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_d0 = delta_weights3_d0_local;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign empty_fu_648_p2 = (sub_ln75_reg_811 + 8'd3);
assign grp_fu_4261_p_ce = 1'b1;
assign grp_fu_4261_p_din0 = tmp_s_reg_797;
assign grp_fu_4261_p_din1 = p_reload86;
assign grp_fu_4265_p_ce = 1'b1;
assign grp_fu_4265_p_din0 = tmp_s_reg_797;
assign grp_fu_4265_p_din1 = p_reload85;
assign grp_fu_4269_p_ce = 1'b1;
assign grp_fu_4269_p_din0 = tmp_s_reg_797;
assign grp_fu_4269_p_din1 = p_reload;
assign grp_fu_4273_p_ce = 1'b1;
assign grp_fu_4273_p_din0 = tmp_51_reg_804;
assign grp_fu_4273_p_din1 = p_reload86;
assign grp_fu_4277_p_ce = 1'b1;
assign grp_fu_4277_p_din0 = tmp_51_reg_804;
assign grp_fu_4277_p_din1 = p_reload85;
assign grp_fu_4289_p_ce = 1'b1;
assign grp_fu_4289_p_din0 = tmp_51_reg_804;
assign grp_fu_4289_p_din1 = p_reload;
assign lshr_ln75_1_fu_630_p4 = {{add_ln75_fu_625_p2[7:3]}};
assign lshr_ln75_2_fu_653_p4 = {{empty_fu_648_p2[7:3]}};
assign lshr_ln75_3_fu_676_p4 = {{add_ln75_1_fu_671_p2[7:3]}};
assign lshr_ln75_4_fu_699_p4 = {{add_ln75_2_fu_694_p2[7:3]}};
assign lshr_ln8_fu_500_p4 = {{ap_sig_allocacmp_i_6[5:3]}};
assign p_shl_fu_590_p3 = {{trunc_ln75_fu_587_p1}, {2'd0}};
assign sub_ln75_fu_598_p2 = (p_shl_fu_590_p3 - zext_ln75_fu_584_p1);
assign tmp_51_fu_560_p9 = 'bx;
assign tmp_fu_492_p3 = ap_sig_allocacmp_i_6[32'd6];
assign tmp_s_fu_536_p9 = 'bx;
assign trunc_ln73_fu_533_p1 = i_6_reg_742[2:0];
assign trunc_ln75_fu_587_p1 = i_6_reg_742_pp0_iter7_reg[5:0];
assign zext_ln72_fu_510_p1 = lshr_ln8_fu_500_p4;
assign zext_ln75_1_fu_614_p1 = lshr_ln9_reg_819;
assign zext_ln75_2_fu_640_p1 = lshr_ln75_1_fu_630_p4;
assign zext_ln75_3_fu_663_p1 = lshr_ln75_2_fu_653_p4;
assign zext_ln75_4_fu_686_p1 = lshr_ln75_3_fu_676_p4;
assign zext_ln75_5_fu_709_p1 = lshr_ln75_4_fu_699_p4;
assign zext_ln75_fu_584_p1 = i_6_reg_742_pp0_iter7_reg;
endmodule 
