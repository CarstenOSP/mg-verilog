
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_dout0,grp_fu_3076_p_ce,grp_fu_3080_p_din0,grp_fu_3080_p_din1,grp_fu_3080_p_dout0,grp_fu_3080_p_ce,grp_fu_3084_p_din0,grp_fu_3084_p_din1,grp_fu_3084_p_dout0,grp_fu_3084_p_ce,grp_fu_3088_p_din0,grp_fu_3088_p_din1,grp_fu_3088_p_dout0,grp_fu_3088_p_ce,grp_fu_3092_p_din0,grp_fu_3092_p_din1,grp_fu_3092_p_dout0,grp_fu_3092_p_ce,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [9:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [9:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [9:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [9:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [9:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [9:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [9:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [3:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [3:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [3:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [3:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [3:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [3:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [3:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [3:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [3:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [3:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [3:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [3:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [63:0] grp_fu_3076_p_din0;
output  [63:0] grp_fu_3076_p_din1;
input  [63:0] grp_fu_3076_p_dout0;
output   grp_fu_3076_p_ce;
output  [63:0] grp_fu_3080_p_din0;
output  [63:0] grp_fu_3080_p_din1;
input  [63:0] grp_fu_3080_p_dout0;
output   grp_fu_3080_p_ce;
output  [63:0] grp_fu_3084_p_din0;
output  [63:0] grp_fu_3084_p_din1;
input  [63:0] grp_fu_3084_p_dout0;
output   grp_fu_3084_p_ce;
output  [63:0] grp_fu_3088_p_din0;
output  [63:0] grp_fu_3088_p_din1;
input  [63:0] grp_fu_3088_p_dout0;
output   grp_fu_3088_p_ce;
output  [63:0] grp_fu_3092_p_din0;
output  [63:0] grp_fu_3092_p_din1;
input  [63:0] grp_fu_3092_p_dout0;
output   grp_fu_3092_p_ce;
output  [63:0] grp_fu_3096_p_din0;
output  [63:0] grp_fu_3096_p_din1;
input  [63:0] grp_fu_3096_p_dout0;
output   grp_fu_3096_p_ce;
output  [63:0] grp_fu_3100_p_din0;
output  [63:0] grp_fu_3100_p_din1;
input  [63:0] grp_fu_3100_p_dout0;
output   grp_fu_3100_p_ce;
output  [63:0] grp_fu_3104_p_din0;
output  [63:0] grp_fu_3104_p_din1;
input  [63:0] grp_fu_3104_p_dout0;
output   grp_fu_3104_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln93_reg_861;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_526;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_532;
reg   [63:0] reg_538;
reg   [63:0] reg_544;
wire   [0:0] icmp_ln93_fu_568_p2;
reg   [0:0] icmp_ln93_reg_861_pp0_iter1_reg;
reg   [0:0] icmp_ln93_reg_861_pp0_iter2_reg;
reg   [0:0] icmp_ln93_reg_861_pp0_iter3_reg;
reg   [0:0] icmp_ln93_reg_861_pp0_iter4_reg;
wire   [0:0] tmp_24_fu_583_p3;
reg   [0:0] tmp_24_reg_865;
wire   [6:0] select_ln92_fu_591_p3;
reg   [6:0] select_ln92_reg_870;
wire   [3:0] lshr_ln92_1_fu_599_p4;
reg   [3:0] lshr_ln92_1_reg_875;
reg   [3:0] lshr_ln92_1_reg_875_pp0_iter1_reg;
reg   [3:0] lshr_ln92_1_reg_875_pp0_iter2_reg;
reg   [3:0] lshr_ln92_1_reg_875_pp0_iter3_reg;
reg   [3:0] lshr_ln92_1_reg_875_pp0_iter4_reg;
wire   [2:0] tmp_s_fu_617_p4;
reg   [2:0] tmp_s_reg_900;
reg   [2:0] tmp_s_reg_900_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_900_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_900_pp0_iter3_reg;
reg   [2:0] tmp_s_reg_900_pp0_iter4_reg;
reg   [2:0] tmp_s_reg_900_pp0_iter5_reg;
reg   [1:0] tmp_35_reg_925;
reg   [1:0] tmp_35_reg_925_pp0_iter1_reg;
reg   [1:0] tmp_35_reg_925_pp0_iter2_reg;
reg   [1:0] tmp_35_reg_925_pp0_iter3_reg;
reg   [1:0] tmp_35_reg_925_pp0_iter4_reg;
reg   [1:0] tmp_35_reg_925_pp0_iter5_reg;
reg   [0:0] tmp_25_reg_933;
reg   [0:0] tmp_25_reg_933_pp0_iter1_reg;
reg   [0:0] tmp_25_reg_933_pp0_iter2_reg;
reg   [0:0] tmp_25_reg_933_pp0_iter3_reg;
reg   [0:0] tmp_25_reg_933_pp0_iter4_reg;
reg   [0:0] tmp_25_reg_933_pp0_iter5_reg;
wire   [1:0] trunc_ln93_fu_682_p1;
reg   [1:0] trunc_ln93_reg_939;
reg   [63:0] output_difference_0_load_reg_964;
wire   [5:0] trunc_ln95_fu_704_p1;
reg   [5:0] trunc_ln95_reg_969;
reg   [5:0] trunc_ln95_reg_969_pp0_iter1_reg;
reg   [5:0] trunc_ln95_reg_969_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_969_pp0_iter3_reg;
reg   [5:0] trunc_ln95_reg_969_pp0_iter4_reg;
reg   [5:0] trunc_ln95_reg_969_pp0_iter5_reg;
reg   [63:0] output_difference_1_load_reg_1017;
reg   [63:0] output_difference_2_load_reg_1022;
reg   [63:0] output_difference_3_load_reg_1027;
reg   [63:0] output_difference_0_load_1_reg_1032;
reg   [63:0] output_difference_1_load_1_reg_1037;
reg   [63:0] output_difference_2_load_1_reg_1042;
reg   [63:0] output_difference_3_load_1_reg_1047;
wire   [63:0] tmp_fu_754_p11;
reg   [63:0] tmp_reg_1052;
reg   [63:0] output_difference_0_load_2_reg_1064;
reg   [63:0] output_difference_1_load_2_reg_1069;
reg   [63:0] output_difference_2_load_2_reg_1074;
reg   [63:0] output_difference_3_load_2_reg_1079;
reg   [63:0] output_difference_0_load_3_reg_1084;
reg   [63:0] output_difference_1_load_3_reg_1089;
reg   [63:0] output_difference_2_load_3_reg_1094;
reg   [63:0] output_difference_3_load_3_reg_1099;
reg   [63:0] mul_4_reg_1104;
reg   [63:0] mul_5_reg_1109;
reg   [63:0] mul_6_reg_1114;
reg   [63:0] mul_7_reg_1119;
reg   [63:0] mul_12_reg_1124;
reg   [63:0] mul_13_reg_1129;
reg   [63:0] mul_14_reg_1134;
reg   [63:0] mul_15_reg_1139;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln92_1_fu_609_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln95_1_fu_635_p1;
wire   [63:0] zext_ln92_fu_696_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_3_fu_716_p1;
wire   [63:0] zext_ln95_5_fu_731_p1;
wire   [63:0] zext_ln95_fu_783_p1;
wire   [63:0] zext_ln95_2_fu_799_p1;
wire   [63:0] zext_ln95_4_fu_816_p1;
wire   [63:0] zext_ln95_6_fu_832_p1;
reg   [6:0] j_fu_102;
wire   [6:0] add_ln94_fu_739_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_106;
wire   [6:0] select_ln93_fu_675_p3;
reg   [8:0] indvar_flatten_fu_110;
wire   [8:0] add_ln93_fu_574_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    output_difference_0_ce1_local;
reg   [3:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [3:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [3:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [3:0] output_difference_1_address0_local;
reg    output_difference_2_ce1_local;
reg   [3:0] output_difference_2_address1_local;
reg    output_difference_2_ce0_local;
reg   [3:0] output_difference_2_address0_local;
reg    output_difference_3_ce1_local;
reg   [3:0] output_difference_3_address1_local;
reg    output_difference_3_ce0_local;
reg   [3:0] output_difference_3_address0_local;
reg    last_activations_0_ce0_local;
reg    last_activations_1_ce0_local;
reg    last_activations_2_ce0_local;
reg    last_activations_3_ce0_local;
reg    delta_weights2_0_we1_local;
reg   [63:0] delta_weights2_0_d1_local;
reg    delta_weights2_0_ce1_local;
reg   [9:0] delta_weights2_0_address1_local;
reg    delta_weights2_0_we0_local;
reg   [63:0] delta_weights2_0_d0_local;
reg    delta_weights2_0_ce0_local;
reg   [9:0] delta_weights2_0_address0_local;
reg    delta_weights2_1_we1_local;
reg   [63:0] delta_weights2_1_d1_local;
reg    delta_weights2_1_ce1_local;
reg   [9:0] delta_weights2_1_address1_local;
reg    delta_weights2_1_we0_local;
reg   [63:0] delta_weights2_1_d0_local;
reg    delta_weights2_1_ce0_local;
reg   [9:0] delta_weights2_1_address0_local;
reg    delta_weights2_2_we1_local;
reg   [63:0] delta_weights2_2_d1_local;
reg    delta_weights2_2_ce1_local;
reg   [9:0] delta_weights2_2_address1_local;
reg    delta_weights2_2_we0_local;
reg   [63:0] delta_weights2_2_d0_local;
reg    delta_weights2_2_ce0_local;
reg   [9:0] delta_weights2_2_address0_local;
reg    delta_weights2_3_we1_local;
reg   [63:0] delta_weights2_3_d1_local;
reg    delta_weights2_3_ce1_local;
reg   [9:0] delta_weights2_3_address1_local;
reg    delta_weights2_3_we0_local;
reg   [63:0] delta_weights2_3_d0_local;
reg    delta_weights2_3_ce0_local;
reg   [9:0] delta_weights2_3_address0_local;
reg   [63:0] grp_fu_494_p1;
reg   [63:0] grp_fu_498_p1;
reg   [63:0] grp_fu_502_p1;
reg   [63:0] grp_fu_506_p1;
reg   [63:0] grp_fu_510_p1;
reg   [63:0] grp_fu_514_p1;
reg   [63:0] grp_fu_518_p1;
reg   [63:0] grp_fu_522_p1;
wire   [3:0] or_ln_fu_627_p3;
wire   [6:0] add_ln93_1_fu_669_p2;
wire   [3:0] lshr_ln_fu_686_p4;
wire   [3:0] or_ln95_1_fu_708_p4;
wire   [3:0] or_ln95_2_fu_724_p3;
wire   [63:0] tmp_fu_754_p9;
wire   [9:0] add_ln_fu_777_p3;
wire   [9:0] add_ln95_1_fu_791_p4;
wire   [9:0] add_ln95_2_fu_807_p5;
wire   [9:0] add_ln95_3_fu_824_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage0;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to6;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_fu_754_p1;
wire   [1:0] tmp_fu_754_p3;
wire  signed [1:0] tmp_fu_754_p5;
wire  signed [1:0] tmp_fu_754_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_102 = 7'd0;
#0 i_fu_106 = 7'd0;
#0 indvar_flatten_fu_110 = 9'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U333(.din0(last_activations_0_q0),.din1(last_activations_1_q0),.din2(last_activations_2_q0),.din3(last_activations_3_q0),.def(tmp_fu_754_p9),.sel(trunc_ln93_reg_939),.dout(tmp_fu_754_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_106 <= 7'd0;
    end else if (((icmp_ln93_reg_861 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_106 <= select_ln93_fu_675_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln93_fu_568_p2 == 1'd0))) begin
            indvar_flatten_fu_110 <= add_ln93_fu_574_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_110 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_102 <= 7'd0;
    end else if (((icmp_ln93_reg_861 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_102 <= add_ln94_fu_739_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln93_reg_861 <= icmp_ln93_fu_568_p2;
        icmp_ln93_reg_861_pp0_iter1_reg <= icmp_ln93_reg_861;
        icmp_ln93_reg_861_pp0_iter2_reg <= icmp_ln93_reg_861_pp0_iter1_reg;
        icmp_ln93_reg_861_pp0_iter3_reg <= icmp_ln93_reg_861_pp0_iter2_reg;
        icmp_ln93_reg_861_pp0_iter4_reg <= icmp_ln93_reg_861_pp0_iter3_reg;
        lshr_ln92_1_reg_875 <= {{select_ln92_fu_591_p3[5:2]}};
        lshr_ln92_1_reg_875_pp0_iter1_reg <= lshr_ln92_1_reg_875;
        lshr_ln92_1_reg_875_pp0_iter2_reg <= lshr_ln92_1_reg_875_pp0_iter1_reg;
        lshr_ln92_1_reg_875_pp0_iter3_reg <= lshr_ln92_1_reg_875_pp0_iter2_reg;
        lshr_ln92_1_reg_875_pp0_iter4_reg <= lshr_ln92_1_reg_875_pp0_iter3_reg;
        select_ln92_reg_870 <= select_ln92_fu_591_p3;
        tmp_24_reg_865 <= ap_sig_allocacmp_j_load[32'd6];
        tmp_25_reg_933 <= select_ln92_fu_591_p3[32'd2];
        tmp_25_reg_933_pp0_iter1_reg <= tmp_25_reg_933;
        tmp_25_reg_933_pp0_iter2_reg <= tmp_25_reg_933_pp0_iter1_reg;
        tmp_25_reg_933_pp0_iter3_reg <= tmp_25_reg_933_pp0_iter2_reg;
        tmp_25_reg_933_pp0_iter4_reg <= tmp_25_reg_933_pp0_iter3_reg;
        tmp_25_reg_933_pp0_iter5_reg <= tmp_25_reg_933_pp0_iter4_reg;
        tmp_35_reg_925 <= {{select_ln92_fu_591_p3[5:4]}};
        tmp_35_reg_925_pp0_iter1_reg <= tmp_35_reg_925;
        tmp_35_reg_925_pp0_iter2_reg <= tmp_35_reg_925_pp0_iter1_reg;
        tmp_35_reg_925_pp0_iter3_reg <= tmp_35_reg_925_pp0_iter2_reg;
        tmp_35_reg_925_pp0_iter4_reg <= tmp_35_reg_925_pp0_iter3_reg;
        tmp_35_reg_925_pp0_iter5_reg <= tmp_35_reg_925_pp0_iter4_reg;
        tmp_reg_1052 <= tmp_fu_754_p11;
        tmp_s_reg_900 <= {{select_ln92_fu_591_p3[5:3]}};
        tmp_s_reg_900_pp0_iter1_reg <= tmp_s_reg_900;
        tmp_s_reg_900_pp0_iter2_reg <= tmp_s_reg_900_pp0_iter1_reg;
        tmp_s_reg_900_pp0_iter3_reg <= tmp_s_reg_900_pp0_iter2_reg;
        tmp_s_reg_900_pp0_iter4_reg <= tmp_s_reg_900_pp0_iter3_reg;
        tmp_s_reg_900_pp0_iter5_reg <= tmp_s_reg_900_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_12_reg_1124 <= grp_fu_3092_p_dout0;
        mul_13_reg_1129 <= grp_fu_3096_p_dout0;
        mul_14_reg_1134 <= grp_fu_3100_p_dout0;
        mul_15_reg_1139 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_4_reg_1104 <= grp_fu_3092_p_dout0;
        mul_5_reg_1109 <= grp_fu_3096_p_dout0;
        mul_6_reg_1114 <= grp_fu_3100_p_dout0;
        mul_7_reg_1119 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        output_difference_0_load_1_reg_1032 <= output_difference_0_q0;
        output_difference_0_load_reg_964 <= output_difference_0_q1;
        output_difference_1_load_1_reg_1037 <= output_difference_1_q0;
        output_difference_1_load_reg_1017 <= output_difference_1_q1;
        output_difference_2_load_1_reg_1042 <= output_difference_2_q0;
        output_difference_2_load_reg_1022 <= output_difference_2_q1;
        output_difference_3_load_1_reg_1047 <= output_difference_3_q0;
        output_difference_3_load_reg_1027 <= output_difference_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_load_2_reg_1064 <= output_difference_0_q1;
        output_difference_0_load_3_reg_1084 <= output_difference_0_q0;
        output_difference_1_load_2_reg_1069 <= output_difference_1_q1;
        output_difference_1_load_3_reg_1089 <= output_difference_1_q0;
        output_difference_2_load_2_reg_1074 <= output_difference_2_q1;
        output_difference_2_load_3_reg_1094 <= output_difference_2_q0;
        output_difference_3_load_2_reg_1079 <= output_difference_3_q1;
        output_difference_3_load_3_reg_1099 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_526 <= grp_fu_3076_p_dout0;
        reg_532 <= grp_fu_3080_p_dout0;
        reg_538 <= grp_fu_3084_p_dout0;
        reg_544 <= grp_fu_3088_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln93_reg_939 <= trunc_ln93_fu_682_p1;
        trunc_ln95_reg_969 <= trunc_ln95_fu_704_p1;
        trunc_ln95_reg_969_pp0_iter1_reg <= trunc_ln95_reg_969;
        trunc_ln95_reg_969_pp0_iter2_reg <= trunc_ln95_reg_969_pp0_iter1_reg;
        trunc_ln95_reg_969_pp0_iter3_reg <= trunc_ln95_reg_969_pp0_iter2_reg;
        trunc_ln95_reg_969_pp0_iter4_reg <= trunc_ln95_reg_969_pp0_iter3_reg;
        trunc_ln95_reg_969_pp0_iter5_reg <= trunc_ln95_reg_969_pp0_iter4_reg;
    end
end
always @ (*) begin
    if (((icmp_ln93_reg_861 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln93_reg_861_pp0_iter4_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_address0_local = zext_ln95_6_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_0_address0_local = zext_ln95_4_fu_816_p1;
    end else begin
        delta_weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_0_address1_local = zext_ln95_2_fu_799_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_0_address1_local = zext_ln95_fu_783_p1;
        end else begin
            delta_weights2_0_address1_local = 'bx;
        end
    end else begin
        delta_weights2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_ce0_local = 1'b1;
    end else begin
        delta_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_ce1_local = 1'b1;
    end else begin
        delta_weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_d0_local = mul_12_reg_1124;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_0_d0_local = reg_526;
    end else begin
        delta_weights2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_0_d1_local = mul_4_reg_1104;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_0_d1_local = reg_526;
        end else begin
            delta_weights2_0_d1_local = 'bx;
        end
    end else begin
        delta_weights2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_we0_local = 1'b1;
    end else begin
        delta_weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_we1_local = 1'b1;
    end else begin
        delta_weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_address0_local = zext_ln95_6_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_address0_local = zext_ln95_4_fu_816_p1;
    end else begin
        delta_weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_1_address1_local = zext_ln95_2_fu_799_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_1_address1_local = zext_ln95_fu_783_p1;
        end else begin
            delta_weights2_1_address1_local = 'bx;
        end
    end else begin
        delta_weights2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_d0_local = mul_13_reg_1129;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_d0_local = reg_532;
    end else begin
        delta_weights2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_1_d1_local = mul_5_reg_1109;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_1_d1_local = reg_532;
        end else begin
            delta_weights2_1_d1_local = 'bx;
        end
    end else begin
        delta_weights2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_2_address0_local = zext_ln95_6_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_2_address0_local = zext_ln95_4_fu_816_p1;
    end else begin
        delta_weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_2_address1_local = zext_ln95_2_fu_799_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_2_address1_local = zext_ln95_fu_783_p1;
        end else begin
            delta_weights2_2_address1_local = 'bx;
        end
    end else begin
        delta_weights2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_ce1_local = 1'b1;
    end else begin
        delta_weights2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_2_d0_local = mul_14_reg_1134;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_2_d0_local = reg_538;
    end else begin
        delta_weights2_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_2_d1_local = mul_6_reg_1114;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_2_d1_local = reg_538;
        end else begin
            delta_weights2_2_d1_local = 'bx;
        end
    end else begin
        delta_weights2_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_we1_local = 1'b1;
    end else begin
        delta_weights2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_3_address0_local = zext_ln95_6_fu_832_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_3_address0_local = zext_ln95_4_fu_816_p1;
    end else begin
        delta_weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_3_address1_local = zext_ln95_2_fu_799_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_3_address1_local = zext_ln95_fu_783_p1;
        end else begin
            delta_weights2_3_address1_local = 'bx;
        end
    end else begin
        delta_weights2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_ce1_local = 1'b1;
    end else begin
        delta_weights2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_3_d0_local = mul_15_reg_1139;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_3_d0_local = reg_544;
    end else begin
        delta_weights2_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights2_3_d1_local = mul_7_reg_1119;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights2_3_d1_local = reg_544;
        end else begin
            delta_weights2_3_d1_local = 'bx;
        end
    end else begin
        delta_weights2_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_we1_local = 1'b1;
    end else begin
        delta_weights2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_494_p1 = output_difference_0_load_2_reg_1064;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_494_p1 = output_difference_0_load_reg_964;
    end else begin
        grp_fu_494_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_498_p1 = output_difference_1_load_2_reg_1069;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_498_p1 = output_difference_1_load_reg_1017;
    end else begin
        grp_fu_498_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_502_p1 = output_difference_2_load_2_reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_502_p1 = output_difference_2_load_reg_1022;
    end else begin
        grp_fu_502_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_506_p1 = output_difference_3_load_2_reg_1079;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_506_p1 = output_difference_3_load_reg_1027;
    end else begin
        grp_fu_506_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_510_p1 = output_difference_0_load_3_reg_1084;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_510_p1 = output_difference_0_load_1_reg_1032;
    end else begin
        grp_fu_510_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_514_p1 = output_difference_1_load_3_reg_1089;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_514_p1 = output_difference_1_load_1_reg_1037;
    end else begin
        grp_fu_514_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_518_p1 = output_difference_2_load_3_reg_1094;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_518_p1 = output_difference_2_load_1_reg_1042;
    end else begin
        grp_fu_518_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_522_p1 = output_difference_3_load_3_reg_1099;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_522_p1 = output_difference_3_load_1_reg_1047;
    end else begin
        grp_fu_522_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address0_local = zext_ln95_5_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address0_local = zext_ln95_1_fu_635_p1;
        end else begin
            output_difference_0_address0_local = 'bx;
        end
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address1_local = zext_ln95_3_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address1_local = zext_ln92_1_fu_609_p1;
        end else begin
            output_difference_0_address1_local = 'bx;
        end
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address0_local = zext_ln95_5_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address0_local = zext_ln95_1_fu_635_p1;
        end else begin
            output_difference_1_address0_local = 'bx;
        end
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address1_local = zext_ln95_3_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address1_local = zext_ln92_1_fu_609_p1;
        end else begin
            output_difference_1_address1_local = 'bx;
        end
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_2_address0_local = zext_ln95_5_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_address0_local = zext_ln95_1_fu_635_p1;
        end else begin
            output_difference_2_address0_local = 'bx;
        end
    end else begin
        output_difference_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_2_address1_local = zext_ln95_3_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_address1_local = zext_ln92_1_fu_609_p1;
        end else begin
            output_difference_2_address1_local = 'bx;
        end
    end else begin
        output_difference_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_3_address0_local = zext_ln95_5_fu_731_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_3_address0_local = zext_ln95_1_fu_635_p1;
        end else begin
            output_difference_3_address0_local = 'bx;
        end
    end else begin
        output_difference_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_3_address1_local = zext_ln95_3_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_3_address1_local = zext_ln92_1_fu_609_p1;
        end else begin
            output_difference_3_address1_local = 'bx;
        end
    end else begin
        output_difference_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln93_1_fu_669_p2 = (i_fu_106 + 7'd1);
assign add_ln93_fu_574_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln94_fu_739_p2 = (select_ln92_reg_870 + 7'd16);
assign add_ln95_1_fu_791_p4 = {{{trunc_ln95_reg_969_pp0_iter4_reg}, {tmp_s_reg_900_pp0_iter5_reg}}, {1'd1}};
assign add_ln95_2_fu_807_p5 = {{{{trunc_ln95_reg_969_pp0_iter4_reg}, {tmp_35_reg_925_pp0_iter5_reg}}, {1'd1}}, {tmp_25_reg_933_pp0_iter5_reg}};
assign add_ln95_3_fu_824_p4 = {{{trunc_ln95_reg_969_pp0_iter5_reg}, {tmp_35_reg_925_pp0_iter5_reg}}, {2'd3}};
assign add_ln_fu_777_p3 = {{trunc_ln95_reg_969_pp0_iter4_reg}, {lshr_ln92_1_reg_875_pp0_iter4_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign delta_weights2_0_address0 = delta_weights2_0_address0_local;
assign delta_weights2_0_address1 = delta_weights2_0_address1_local;
assign delta_weights2_0_ce0 = delta_weights2_0_ce0_local;
assign delta_weights2_0_ce1 = delta_weights2_0_ce1_local;
assign delta_weights2_0_d0 = delta_weights2_0_d0_local;
assign delta_weights2_0_d1 = delta_weights2_0_d1_local;
assign delta_weights2_0_we0 = delta_weights2_0_we0_local;
assign delta_weights2_0_we1 = delta_weights2_0_we1_local;
assign delta_weights2_1_address0 = delta_weights2_1_address0_local;
assign delta_weights2_1_address1 = delta_weights2_1_address1_local;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_ce1 = delta_weights2_1_ce1_local;
assign delta_weights2_1_d0 = delta_weights2_1_d0_local;
assign delta_weights2_1_d1 = delta_weights2_1_d1_local;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_1_we1 = delta_weights2_1_we1_local;
assign delta_weights2_2_address0 = delta_weights2_2_address0_local;
assign delta_weights2_2_address1 = delta_weights2_2_address1_local;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_ce1 = delta_weights2_2_ce1_local;
assign delta_weights2_2_d0 = delta_weights2_2_d0_local;
assign delta_weights2_2_d1 = delta_weights2_2_d1_local;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_2_we1 = delta_weights2_2_we1_local;
assign delta_weights2_3_address0 = delta_weights2_3_address0_local;
assign delta_weights2_3_address1 = delta_weights2_3_address1_local;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_ce1 = delta_weights2_3_ce1_local;
assign delta_weights2_3_d0 = delta_weights2_3_d0_local;
assign delta_weights2_3_d1 = delta_weights2_3_d1_local;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_3_we1 = delta_weights2_3_we1_local;
assign grp_fu_3076_p_ce = 1'b1;
assign grp_fu_3076_p_din0 = tmp_reg_1052;
assign grp_fu_3076_p_din1 = grp_fu_494_p1;
assign grp_fu_3080_p_ce = 1'b1;
assign grp_fu_3080_p_din0 = tmp_reg_1052;
assign grp_fu_3080_p_din1 = grp_fu_498_p1;
assign grp_fu_3084_p_ce = 1'b1;
assign grp_fu_3084_p_din0 = tmp_reg_1052;
assign grp_fu_3084_p_din1 = grp_fu_502_p1;
assign grp_fu_3088_p_ce = 1'b1;
assign grp_fu_3088_p_din0 = tmp_reg_1052;
assign grp_fu_3088_p_din1 = grp_fu_506_p1;
assign grp_fu_3092_p_ce = 1'b1;
assign grp_fu_3092_p_din0 = tmp_reg_1052;
assign grp_fu_3092_p_din1 = grp_fu_510_p1;
assign grp_fu_3096_p_ce = 1'b1;
assign grp_fu_3096_p_din0 = tmp_reg_1052;
assign grp_fu_3096_p_din1 = grp_fu_514_p1;
assign grp_fu_3100_p_ce = 1'b1;
assign grp_fu_3100_p_din0 = tmp_reg_1052;
assign grp_fu_3100_p_din1 = grp_fu_518_p1;
assign grp_fu_3104_p_ce = 1'b1;
assign grp_fu_3104_p_din0 = tmp_reg_1052;
assign grp_fu_3104_p_din1 = grp_fu_522_p1;
assign icmp_ln93_fu_568_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign last_activations_0_address0 = zext_ln92_fu_696_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_1_address0 = zext_ln92_fu_696_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = zext_ln92_fu_696_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = zext_ln92_fu_696_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign lshr_ln92_1_fu_599_p4 = {{select_ln92_fu_591_p3[5:2]}};
assign lshr_ln_fu_686_p4 = {{select_ln93_fu_675_p3[5:2]}};
assign or_ln95_1_fu_708_p4 = {{{tmp_35_reg_925}, {1'd1}}, {tmp_25_reg_933}};
assign or_ln95_2_fu_724_p3 = {{tmp_35_reg_925}, {2'd3}};
assign or_ln_fu_627_p3 = {{tmp_s_fu_617_p4}, {1'd1}};
assign output_difference_0_address0 = output_difference_0_address0_local;
assign output_difference_0_address1 = output_difference_0_address1_local;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = output_difference_1_address0_local;
assign output_difference_1_address1 = output_difference_1_address1_local;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_2_address0 = output_difference_2_address0_local;
assign output_difference_2_address1 = output_difference_2_address1_local;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_3_address0 = output_difference_3_address0_local;
assign output_difference_3_address1 = output_difference_3_address1_local;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign select_ln92_fu_591_p3 = ((tmp_24_fu_583_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln93_fu_675_p3 = ((tmp_24_reg_865[0:0] == 1'b1) ? add_ln93_1_fu_669_p2 : i_fu_106);
assign tmp_24_fu_583_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_754_p9 = 'bx;
assign tmp_s_fu_617_p4 = {{select_ln92_fu_591_p3[5:3]}};
assign trunc_ln93_fu_682_p1 = select_ln93_fu_675_p3[1:0];
assign trunc_ln95_fu_704_p1 = select_ln93_fu_675_p3[5:0];
assign zext_ln92_1_fu_609_p1 = lshr_ln92_1_fu_599_p4;
assign zext_ln92_fu_696_p1 = lshr_ln_fu_686_p4;
assign zext_ln95_1_fu_635_p1 = or_ln_fu_627_p3;
assign zext_ln95_2_fu_799_p1 = add_ln95_1_fu_791_p4;
assign zext_ln95_3_fu_716_p1 = or_ln95_1_fu_708_p4;
assign zext_ln95_4_fu_816_p1 = add_ln95_2_fu_807_p5;
assign zext_ln95_5_fu_731_p1 = or_ln95_2_fu_724_p3;
assign zext_ln95_6_fu_832_p1 = add_ln95_3_fu_824_p4;
assign zext_ln95_fu_783_p1 = add_ln_fu_777_p3;
endmodule 
