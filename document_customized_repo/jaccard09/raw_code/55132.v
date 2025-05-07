module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_2_address0,oracle_activations1_2_ce0,oracle_activations1_2_q0,oracle_activations1_4_address0,oracle_activations1_4_ce0,oracle_activations1_4_q0,oracle_activations1_6_address0,oracle_activations1_6_ce0,oracle_activations1_6_q0,oracle_activations1_1_address0,oracle_activations1_1_ce0,oracle_activations1_1_q0,oracle_activations1_3_address0,oracle_activations1_3_ce0,oracle_activations1_3_q0,oracle_activations1_5_address0,oracle_activations1_5_ce0,oracle_activations1_5_q0,oracle_activations1_7_address0,oracle_activations1_7_ce0,oracle_activations1_7_q0,grp_fu_2684_p_din0,grp_fu_2684_p_din1,grp_fu_2684_p_dout0,grp_fu_2684_p_ce,grp_fu_4205_p_din0,grp_fu_4205_p_din1,grp_fu_4205_p_dout0,grp_fu_4205_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [8:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [8:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [8:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [8:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [8:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [8:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [8:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [8:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [6:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [6:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [6:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [6:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [6:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [6:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [6:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [6:0] delta_weights1_address0;
output   delta_weights1_ce0;
output   delta_weights1_we0;
output  [63:0] delta_weights1_d0;
output  [2:0] oracle_activations1_address0;
output   oracle_activations1_ce0;
input  [63:0] oracle_activations1_q0;
output  [2:0] oracle_activations1_2_address0;
output   oracle_activations1_2_ce0;
input  [63:0] oracle_activations1_2_q0;
output  [2:0] oracle_activations1_4_address0;
output   oracle_activations1_4_ce0;
input  [63:0] oracle_activations1_4_q0;
output  [2:0] oracle_activations1_6_address0;
output   oracle_activations1_6_ce0;
input  [63:0] oracle_activations1_6_q0;
output  [2:0] oracle_activations1_1_address0;
output   oracle_activations1_1_ce0;
input  [63:0] oracle_activations1_1_q0;
output  [2:0] oracle_activations1_3_address0;
output   oracle_activations1_3_ce0;
input  [63:0] oracle_activations1_3_q0;
output  [2:0] oracle_activations1_5_address0;
output   oracle_activations1_5_ce0;
input  [63:0] oracle_activations1_5_q0;
output  [2:0] oracle_activations1_7_address0;
output   oracle_activations1_7_ce0;
input  [63:0] oracle_activations1_7_q0;
output  [63:0] grp_fu_2684_p_din0;
output  [63:0] grp_fu_2684_p_din1;
input  [63:0] grp_fu_2684_p_dout0;
output   grp_fu_2684_p_ce;
output  [63:0] grp_fu_4205_p_din0;
output  [63:0] grp_fu_4205_p_din1;
input  [63:0] grp_fu_4205_p_dout0;
output   grp_fu_4205_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln113_fu_482_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_522_p3;
reg   [3:0] select_ln113_reg_784;
wire   [2:0] trunc_ln114_fu_530_p1;
reg   [2:0] trunc_ln114_reg_790;
reg   [2:0] trunc_ln114_reg_790_pp0_iter1_reg;
reg   [2:0] trunc_ln114_reg_790_pp0_iter2_reg;
reg   [2:0] trunc_ln114_reg_790_pp0_iter3_reg;
reg   [2:0] trunc_ln114_reg_790_pp0_iter4_reg;
reg   [2:0] trunc_ln114_reg_790_pp0_iter5_reg;
reg   [2:0] trunc_ln114_reg_790_pp0_iter6_reg;
reg   [2:0] trunc_ln114_reg_790_pp0_iter7_reg;
reg   [2:0] trunc_ln114_reg_790_pp0_iter8_reg;
reg   [2:0] trunc_ln114_reg_790_pp0_iter9_reg;
reg   [3:0] lshr_ln_reg_796;
wire   [2:0] empty_fu_573_p1;
reg   [2:0] empty_reg_802;
wire   [6:0] add_ln115_fu_620_p2;
reg   [6:0] add_ln115_reg_867;
reg   [6:0] add_ln115_reg_867_pp0_iter2_reg;
reg   [6:0] add_ln115_reg_867_pp0_iter3_reg;
reg   [6:0] add_ln115_reg_867_pp0_iter4_reg;
reg   [6:0] add_ln115_reg_867_pp0_iter5_reg;
reg   [6:0] add_ln115_reg_867_pp0_iter6_reg;
reg   [6:0] add_ln115_reg_867_pp0_iter7_reg;
reg   [6:0] add_ln115_reg_867_pp0_iter8_reg;
reg   [6:0] add_ln115_reg_867_pp0_iter9_reg;
wire   [63:0] tmp_72_fu_658_p19;
reg   [63:0] tmp_72_reg_892;
wire   [63:0] tmp_73_fu_697_p11;
reg   [63:0] tmp_73_reg_898;
wire   [63:0] tmp_74_fu_720_p11;
reg   [63:0] tmp_74_reg_903;
reg   [63:0] mul_i5_reg_908;
reg   [63:0] mul_1_i2_reg_916;
wire   [63:0] p_cast26_fu_587_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_609_p1;
wire   [63:0] zext_ln115_fu_743_p1;
reg   [6:0] j_fu_126;
wire   [6:0] add_ln114_fu_544_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_130;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [8:0] indvar_flatten19_fu_134;
wire   [8:0] add_ln113_fu_488_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    training_data_4_ce0_local;
reg    training_data_5_ce0_local;
reg    training_data_6_ce0_local;
reg    training_data_7_ce0_local;
reg    oracle_activations1_ce0_local;
reg    oracle_activations1_2_ce0_local;
reg    oracle_activations1_4_ce0_local;
reg    oracle_activations1_6_ce0_local;
reg    oracle_activations1_1_ce0_local;
reg    oracle_activations1_3_ce0_local;
reg    oracle_activations1_5_ce0_local;
reg    oracle_activations1_7_ce0_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_we0_local;
reg    delta_weights1_ce0_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
wire   [0:0] tmp_fu_500_p3;
wire   [3:0] add_ln113_1_fu_516_p2;
wire   [6:0] select_ln112_fu_508_p3;
wire   [11:0] zext_ln113_fu_565_p1;
wire   [11:0] arrayidx10_sum_fu_568_p2;
wire   [8:0] tmp_s_fu_577_p4;
wire   [6:0] zext_ln112_1_fu_606_p1;
wire   [6:0] p_udiv_fu_599_p3;
wire   [63:0] tmp_72_fu_658_p2;
wire   [63:0] tmp_72_fu_658_p4;
wire   [63:0] tmp_72_fu_658_p6;
wire   [63:0] tmp_72_fu_658_p8;
wire   [63:0] tmp_72_fu_658_p10;
wire   [63:0] tmp_72_fu_658_p12;
wire   [63:0] tmp_72_fu_658_p14;
wire   [63:0] tmp_72_fu_658_p16;
wire   [63:0] tmp_72_fu_658_p17;
wire   [63:0] tmp_73_fu_697_p9;
wire   [63:0] tmp_74_fu_720_p9;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_72_fu_658_p1;
wire   [2:0] tmp_72_fu_658_p3;
wire   [2:0] tmp_72_fu_658_p5;
wire   [2:0] tmp_72_fu_658_p7;
wire  signed [2:0] tmp_72_fu_658_p9;
wire  signed [2:0] tmp_72_fu_658_p11;
wire  signed [2:0] tmp_72_fu_658_p13;
wire  signed [2:0] tmp_72_fu_658_p15;
wire   [2:0] tmp_73_fu_697_p1;
wire   [2:0] tmp_73_fu_697_p3;
wire  signed [2:0] tmp_73_fu_697_p5;
wire  signed [2:0] tmp_73_fu_697_p7;
wire   [2:0] tmp_74_fu_720_p1;
wire   [2:0] tmp_74_fu_720_p3;
wire  signed [2:0] tmp_74_fu_720_p5;
wire  signed [2:0] tmp_74_fu_720_p7;
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
#0 j_fu_126 = 7'd0;
#0 i_fu_130 = 4'd0;
#0 indvar_flatten19_fu_134 = 9'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U501(.din0(tmp_72_fu_658_p2),.din1(tmp_72_fu_658_p4),.din2(tmp_72_fu_658_p6),.din3(tmp_72_fu_658_p8),.din4(tmp_72_fu_658_p10),.din5(tmp_72_fu_658_p12),.din6(tmp_72_fu_658_p14),.din7(tmp_72_fu_658_p16),.def(tmp_72_fu_658_p17),.sel(empty_reg_802),.dout(tmp_72_fu_658_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U502(.din0(oracle_activations1_q0),.din1(oracle_activations1_2_q0),.din2(oracle_activations1_4_q0),.din3(oracle_activations1_6_q0),.def(tmp_73_fu_697_p9),.sel(trunc_ln114_reg_790_pp0_iter1_reg),.dout(tmp_73_fu_697_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U503(.din0(oracle_activations1_1_q0),.din1(oracle_activations1_3_q0),.din2(oracle_activations1_5_q0),.din3(oracle_activations1_7_q0),.def(tmp_74_fu_720_p9),.sel(trunc_ln114_reg_790_pp0_iter1_reg),.dout(tmp_74_fu_720_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((icmp_ln113_fu_482_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_130 <= select_ln113_fu_522_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_130 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_482_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_134 <= add_ln113_fu_488_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_134 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_482_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_126 <= add_ln114_fu_544_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_126 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln115_reg_867 <= add_ln115_fu_620_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_802 <= empty_fu_573_p1;
        lshr_ln_reg_796 <= {{select_ln112_fu_508_p3[6:3]}};
        select_ln113_reg_784 <= select_ln113_fu_522_p3;
        trunc_ln114_reg_790 <= trunc_ln114_fu_530_p1;
        trunc_ln114_reg_790_pp0_iter1_reg <= trunc_ln114_reg_790;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln115_reg_867_pp0_iter2_reg <= add_ln115_reg_867;
        add_ln115_reg_867_pp0_iter3_reg <= add_ln115_reg_867_pp0_iter2_reg;
        add_ln115_reg_867_pp0_iter4_reg <= add_ln115_reg_867_pp0_iter3_reg;
        add_ln115_reg_867_pp0_iter5_reg <= add_ln115_reg_867_pp0_iter4_reg;
        add_ln115_reg_867_pp0_iter6_reg <= add_ln115_reg_867_pp0_iter5_reg;
        add_ln115_reg_867_pp0_iter7_reg <= add_ln115_reg_867_pp0_iter6_reg;
        add_ln115_reg_867_pp0_iter8_reg <= add_ln115_reg_867_pp0_iter7_reg;
        add_ln115_reg_867_pp0_iter9_reg <= add_ln115_reg_867_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul_1_i2_reg_916 <= grp_fu_4205_p_dout0;
        mul_i5_reg_908 <= grp_fu_2684_p_dout0;
        tmp_72_reg_892 <= tmp_72_fu_658_p19;
        tmp_73_reg_898 <= tmp_73_fu_697_p11;
        tmp_74_reg_903 <= tmp_74_fu_720_p11;
        trunc_ln114_reg_790_pp0_iter2_reg <= trunc_ln114_reg_790_pp0_iter1_reg;
        trunc_ln114_reg_790_pp0_iter3_reg <= trunc_ln114_reg_790_pp0_iter2_reg;
        trunc_ln114_reg_790_pp0_iter4_reg <= trunc_ln114_reg_790_pp0_iter3_reg;
        trunc_ln114_reg_790_pp0_iter5_reg <= trunc_ln114_reg_790_pp0_iter4_reg;
        trunc_ln114_reg_790_pp0_iter6_reg <= trunc_ln114_reg_790_pp0_iter5_reg;
        trunc_ln114_reg_790_pp0_iter7_reg <= trunc_ln114_reg_790_pp0_iter6_reg;
        trunc_ln114_reg_790_pp0_iter8_reg <= trunc_ln114_reg_790_pp0_iter7_reg;
        trunc_ln114_reg_790_pp0_iter9_reg <= trunc_ln114_reg_790_pp0_iter8_reg;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_482_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln114_reg_790_pp0_iter9_reg == 3'd0))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln114_reg_790_pp0_iter9_reg == 3'd2))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln114_reg_790_pp0_iter9_reg == 3'd2))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln114_reg_790_pp0_iter9_reg == 3'd4))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln114_reg_790_pp0_iter9_reg == 3'd4))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln114_reg_790_pp0_iter9_reg == 3'd0) & ~(trunc_ln114_reg_790_pp0_iter9_reg == 3'd2) & ~(trunc_ln114_reg_790_pp0_iter9_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln114_reg_790_pp0_iter9_reg == 3'd0) & ~(trunc_ln114_reg_790_pp0_iter9_reg == 3'd2) & ~(trunc_ln114_reg_790_pp0_iter9_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_ce0_local = 1'b1;
    end else begin
        delta_weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln114_reg_790_pp0_iter9_reg == 3'd0))) begin
        delta_weights1_we0_local = 1'b1;
    end else begin
        delta_weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_2_ce0_local = 1'b1;
    end else begin
        oracle_activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_3_ce0_local = 1'b1;
    end else begin
        oracle_activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_4_ce0_local = 1'b1;
    end else begin
        oracle_activations1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_5_ce0_local = 1'b1;
    end else begin
        oracle_activations1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_6_ce0_local = 1'b1;
    end else begin
        oracle_activations1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_7_ce0_local = 1'b1;
    end else begin
        oracle_activations1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
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
assign add_ln113_1_fu_516_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_488_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 9'd1);
assign add_ln114_fu_544_p2 = (select_ln112_fu_508_p3 + 7'd2);
assign add_ln115_fu_620_p2 = (zext_ln112_1_fu_606_p1 + p_udiv_fu_599_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum_fu_568_p2 = (zext_ln113_fu_565_p1 + phi_mul);
assign delta_weights1_1_address0 = zext_ln115_fu_743_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_d0 = mul_1_i2_reg_916;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_2_address0 = zext_ln115_fu_743_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_d0 = mul_i5_reg_908;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_3_address0 = zext_ln115_fu_743_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_d0 = mul_1_i2_reg_916;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_4_address0 = zext_ln115_fu_743_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_d0 = mul_i5_reg_908;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_5_address0 = zext_ln115_fu_743_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_d0 = mul_1_i2_reg_916;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_6_address0 = zext_ln115_fu_743_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_d0 = mul_i5_reg_908;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_7_address0 = zext_ln115_fu_743_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_d0 = mul_1_i2_reg_916;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_address0 = zext_ln115_fu_743_p1;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_d0 = mul_i5_reg_908;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign empty_fu_573_p1 = arrayidx10_sum_fu_568_p2[2:0];
assign grp_fu_2684_p_ce = 1'b1;
assign grp_fu_2684_p_din0 = tmp_72_reg_892;
assign grp_fu_2684_p_din1 = tmp_73_reg_898;
assign grp_fu_4205_p_ce = 1'b1;
assign grp_fu_4205_p_din0 = tmp_72_reg_892;
assign grp_fu_4205_p_din1 = tmp_74_reg_903;
assign icmp_ln113_fu_482_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 9'd416) ? 1'b1 : 1'b0);
assign oracle_activations1_1_address0 = zext_ln112_fu_609_p1;
assign oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
assign oracle_activations1_2_address0 = zext_ln112_fu_609_p1;
assign oracle_activations1_2_ce0 = oracle_activations1_2_ce0_local;
assign oracle_activations1_3_address0 = zext_ln112_fu_609_p1;
assign oracle_activations1_3_ce0 = oracle_activations1_3_ce0_local;
assign oracle_activations1_4_address0 = zext_ln112_fu_609_p1;
assign oracle_activations1_4_ce0 = oracle_activations1_4_ce0_local;
assign oracle_activations1_5_address0 = zext_ln112_fu_609_p1;
assign oracle_activations1_5_ce0 = oracle_activations1_5_ce0_local;
assign oracle_activations1_6_address0 = zext_ln112_fu_609_p1;
assign oracle_activations1_6_ce0 = oracle_activations1_6_ce0_local;
assign oracle_activations1_7_address0 = zext_ln112_fu_609_p1;
assign oracle_activations1_7_ce0 = oracle_activations1_7_ce0_local;
assign oracle_activations1_address0 = zext_ln112_fu_609_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign p_cast26_fu_587_p1 = tmp_s_fu_577_p4;
assign p_udiv_fu_599_p3 = {{select_ln113_reg_784}, {3'd0}};
assign select_ln112_fu_508_p3 = ((tmp_fu_500_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_522_p3 = ((tmp_fu_500_p3[0:0] == 1'b1) ? add_ln113_1_fu_516_p2 : ap_sig_allocacmp_i_load);
assign tmp_72_fu_658_p10 = training_data_4_q0;
assign tmp_72_fu_658_p12 = training_data_5_q0;
assign tmp_72_fu_658_p14 = training_data_6_q0;
assign tmp_72_fu_658_p16 = training_data_7_q0;
assign tmp_72_fu_658_p17 = 'bx;
assign tmp_72_fu_658_p2 = training_data_0_q0;
assign tmp_72_fu_658_p4 = training_data_1_q0;
assign tmp_72_fu_658_p6 = training_data_2_q0;
assign tmp_72_fu_658_p8 = training_data_3_q0;
assign tmp_73_fu_697_p9 = 'bx;
assign tmp_74_fu_720_p9 = 'bx;
assign tmp_fu_500_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_577_p4 = {{arrayidx10_sum_fu_568_p2[11:3]}};
assign training_data_0_address0 = p_cast26_fu_587_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast26_fu_587_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast26_fu_587_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast26_fu_587_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast26_fu_587_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast26_fu_587_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast26_fu_587_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast26_fu_587_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign trunc_ln114_fu_530_p1 = select_ln112_fu_508_p3[2:0];
assign zext_ln112_1_fu_606_p1 = lshr_ln_reg_796;
assign zext_ln112_fu_609_p1 = lshr_ln_reg_796;
assign zext_ln113_fu_565_p1 = select_ln113_reg_784;
assign zext_ln115_fu_743_p1 = add_ln115_reg_867_pp0_iter9_reg;
endmodule 