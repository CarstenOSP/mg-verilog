
module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_dout0,grp_fu_3076_p_ce,grp_fu_3080_p_din0,grp_fu_3080_p_din1,grp_fu_3080_p_dout0,grp_fu_3080_p_ce,grp_fu_3084_p_din0,grp_fu_3084_p_din1,grp_fu_3084_p_dout0,grp_fu_3084_p_ce,grp_fu_3088_p_din0,grp_fu_3088_p_din1,grp_fu_3088_p_dout0,grp_fu_3088_p_ce,grp_fu_3092_p_din0,grp_fu_3092_p_din1,grp_fu_3092_p_dout0,grp_fu_3092_p_ce,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
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
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln93_reg_1339;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_800;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_806;
reg   [63:0] reg_812;
reg   [63:0] reg_818;
reg   [63:0] reg_824;
reg   [63:0] reg_829;
reg   [63:0] reg_834;
reg   [63:0] reg_839;
reg   [63:0] reg_844;
reg   [63:0] reg_850;
reg   [63:0] reg_856;
reg   [63:0] reg_862;
wire   [0:0] icmp_ln93_fu_886_p2;
reg   [0:0] icmp_ln93_reg_1339_pp0_iter1_reg;
reg   [0:0] icmp_ln93_reg_1339_pp0_iter2_reg;
wire   [0:0] tmp_55_fu_901_p3;
reg   [0:0] tmp_55_reg_1343;
wire   [6:0] select_ln92_fu_909_p3;
reg   [6:0] select_ln92_reg_1348;
wire   [3:0] lshr_ln92_1_fu_917_p4;
reg   [3:0] lshr_ln92_1_reg_1353;
reg   [3:0] lshr_ln92_1_reg_1353_pp0_iter1_reg;
reg   [3:0] lshr_ln92_1_reg_1353_pp0_iter2_reg;
wire   [2:0] tmp_s_fu_935_p4;
reg   [2:0] tmp_s_reg_1378;
reg   [2:0] tmp_s_reg_1378_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_1378_pp0_iter2_reg;
reg   [1:0] tmp_72_reg_1403;
reg   [1:0] tmp_72_reg_1403_pp0_iter1_reg;
reg   [1:0] tmp_72_reg_1403_pp0_iter2_reg;
reg   [0:0] tmp_56_reg_1411;
reg   [0:0] tmp_56_reg_1411_pp0_iter1_reg;
reg   [0:0] tmp_56_reg_1411_pp0_iter2_reg;
reg   [0:0] tmp_56_reg_1411_pp0_iter3_reg;
reg   [0:0] tmp_57_reg_1419;
reg   [0:0] tmp_57_reg_1419_pp0_iter1_reg;
reg   [0:0] tmp_57_reg_1419_pp0_iter2_reg;
reg   [0:0] tmp_57_reg_1419_pp0_iter3_reg;
reg   [1:0] tmp_73_reg_1431;
reg   [1:0] tmp_73_reg_1431_pp0_iter1_reg;
reg   [1:0] tmp_73_reg_1431_pp0_iter2_reg;
reg   [0:0] tmp_58_reg_1437;
reg   [0:0] tmp_58_reg_1437_pp0_iter1_reg;
reg   [0:0] tmp_58_reg_1437_pp0_iter2_reg;
reg   [0:0] tmp_58_reg_1437_pp0_iter3_reg;
wire   [1:0] trunc_ln93_fu_1026_p1;
reg   [1:0] trunc_ln93_reg_1443;
reg   [63:0] output_difference_0_load_reg_1468;
wire   [5:0] trunc_ln95_fu_1048_p1;
reg   [5:0] trunc_ln95_reg_1473;
reg   [5:0] trunc_ln95_reg_1473_pp0_iter1_reg;
reg   [5:0] trunc_ln95_reg_1473_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_1473_pp0_iter3_reg;
reg   [63:0] output_difference_1_load_reg_1525;
reg   [63:0] output_difference_2_load_reg_1530;
reg   [63:0] output_difference_3_load_reg_1535;
reg   [63:0] output_difference_0_load_1_reg_1540;
reg   [63:0] output_difference_1_load_1_reg_1545;
reg   [63:0] output_difference_2_load_1_reg_1550;
reg   [63:0] output_difference_3_load_1_reg_1555;
wire   [63:0] tmp_fu_1088_p11;
reg   [63:0] tmp_reg_1560;
reg   [63:0] output_difference_0_load_2_reg_1612;
reg   [63:0] output_difference_1_load_2_reg_1617;
reg   [63:0] output_difference_2_load_2_reg_1622;
reg   [63:0] output_difference_3_load_2_reg_1627;
reg   [63:0] output_difference_0_load_3_reg_1632;
reg   [63:0] output_difference_1_load_3_reg_1637;
reg   [63:0] output_difference_2_load_3_reg_1642;
reg   [63:0] output_difference_3_load_3_reg_1647;
reg   [63:0] output_difference_0_load_4_reg_1692;
reg   [63:0] output_difference_1_load_4_reg_1697;
reg   [63:0] output_difference_2_load_4_reg_1702;
reg   [63:0] output_difference_3_load_4_reg_1707;
reg   [63:0] output_difference_0_load_5_reg_1712;
reg   [63:0] output_difference_1_load_5_reg_1717;
reg   [63:0] output_difference_2_load_5_reg_1722;
reg   [63:0] output_difference_3_load_5_reg_1727;
reg   [63:0] output_difference_0_load_6_reg_1732;
reg   [63:0] output_difference_1_load_6_reg_1737;
reg   [63:0] output_difference_2_load_6_reg_1742;
reg   [63:0] output_difference_3_load_6_reg_1747;
reg   [63:0] output_difference_0_load_7_reg_1752;
reg   [63:0] output_difference_1_load_7_reg_1757;
reg   [63:0] output_difference_2_load_7_reg_1762;
reg   [63:0] output_difference_3_load_7_reg_1767;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln92_1_fu_927_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln95_1_fu_953_p1;
wire   [63:0] zext_ln92_fu_1040_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_3_fu_1060_p1;
wire   [63:0] zext_ln95_5_fu_1075_p1;
wire   [63:0] zext_ln95_7_fu_1119_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln95_9_fu_1137_p1;
wire   [63:0] zext_ln95_11_fu_1153_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln95_13_fu_1168_p1;
wire   [63:0] zext_ln95_fu_1192_p1;
wire   [63:0] zext_ln95_2_fu_1208_p1;
wire   [63:0] zext_ln95_4_fu_1225_p1;
wire   [63:0] zext_ln95_6_fu_1241_p1;
wire   [63:0] zext_ln95_8_fu_1258_p1;
wire   [63:0] zext_ln95_10_fu_1277_p1;
wire   [63:0] zext_ln95_12_fu_1294_p1;
wire   [63:0] zext_ln95_14_fu_1310_p1;
reg   [6:0] j_fu_120;
wire   [6:0] add_ln94_fu_1176_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_124;
wire   [6:0] select_ln93_fu_1019_p3;
reg   [7:0] indvar_flatten_fu_128;
wire   [7:0] add_ln93_fu_892_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
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
reg   [63:0] grp_fu_768_p1;
reg   [63:0] grp_fu_772_p1;
reg   [63:0] grp_fu_776_p1;
reg   [63:0] grp_fu_780_p1;
reg   [63:0] grp_fu_784_p1;
reg   [63:0] grp_fu_788_p1;
reg   [63:0] grp_fu_792_p1;
reg   [63:0] grp_fu_796_p1;
wire   [3:0] or_ln_fu_945_p3;
wire   [6:0] add_ln93_1_fu_1013_p2;
wire   [3:0] lshr_ln_fu_1030_p4;
wire   [3:0] or_ln95_1_fu_1052_p4;
wire   [3:0] or_ln95_2_fu_1068_p3;
wire   [63:0] tmp_fu_1088_p9;
wire   [3:0] or_ln95_3_fu_1111_p4;
wire   [3:0] or_ln95_4_fu_1127_p5;
wire   [3:0] or_ln95_5_fu_1145_p4;
wire   [3:0] or_ln95_6_fu_1161_p3;
wire   [9:0] add_ln_fu_1186_p3;
wire   [9:0] add_ln95_1_fu_1200_p4;
wire   [9:0] add_ln95_2_fu_1216_p5;
wire   [9:0] add_ln95_3_fu_1233_p4;
wire   [9:0] add_ln95_4_fu_1249_p5;
wire   [9:0] add_ln95_5_fu_1266_p6;
wire   [9:0] add_ln95_6_fu_1285_p5;
wire   [9:0] add_ln95_7_fu_1302_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage2;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_fu_1088_p1;
wire   [1:0] tmp_fu_1088_p3;
wire  signed [1:0] tmp_fu_1088_p5;
wire  signed [1:0] tmp_fu_1088_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_120 = 7'd0;
#0 i_fu_124 = 7'd0;
#0 indvar_flatten_fu_128 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U337(.din0(last_activations_0_q0),.din1(last_activations_1_q0),.din2(last_activations_2_q0),.din3(last_activations_3_q0),.def(tmp_fu_1088_p9),.sel(trunc_ln93_reg_1443),.dout(tmp_fu_1088_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_124 <= 7'd0;
    end else if (((icmp_ln93_reg_1339 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_124 <= select_ln93_fu_1019_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln93_fu_886_p2 == 1'd0))) begin
            indvar_flatten_fu_128 <= add_ln93_fu_892_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_120 <= 7'd0;
    end else if (((icmp_ln93_reg_1339 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        j_fu_120 <= add_ln94_fu_1176_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln93_reg_1339 <= icmp_ln93_fu_886_p2;
        icmp_ln93_reg_1339_pp0_iter1_reg <= icmp_ln93_reg_1339;
        icmp_ln93_reg_1339_pp0_iter2_reg <= icmp_ln93_reg_1339_pp0_iter1_reg;
        lshr_ln92_1_reg_1353 <= {{select_ln92_fu_909_p3[5:2]}};
        lshr_ln92_1_reg_1353_pp0_iter1_reg <= lshr_ln92_1_reg_1353;
        lshr_ln92_1_reg_1353_pp0_iter2_reg <= lshr_ln92_1_reg_1353_pp0_iter1_reg;
        select_ln92_reg_1348 <= select_ln92_fu_909_p3;
        tmp_55_reg_1343 <= ap_sig_allocacmp_j_load[32'd6];
        tmp_56_reg_1411 <= select_ln92_fu_909_p3[32'd2];
        tmp_56_reg_1411_pp0_iter1_reg <= tmp_56_reg_1411;
        tmp_56_reg_1411_pp0_iter2_reg <= tmp_56_reg_1411_pp0_iter1_reg;
        tmp_56_reg_1411_pp0_iter3_reg <= tmp_56_reg_1411_pp0_iter2_reg;
        tmp_57_reg_1419 <= select_ln92_fu_909_p3[32'd5];
        tmp_57_reg_1419_pp0_iter1_reg <= tmp_57_reg_1419;
        tmp_57_reg_1419_pp0_iter2_reg <= tmp_57_reg_1419_pp0_iter1_reg;
        tmp_57_reg_1419_pp0_iter3_reg <= tmp_57_reg_1419_pp0_iter2_reg;
        tmp_58_reg_1437 <= select_ln92_fu_909_p3[32'd3];
        tmp_58_reg_1437_pp0_iter1_reg <= tmp_58_reg_1437;
        tmp_58_reg_1437_pp0_iter2_reg <= tmp_58_reg_1437_pp0_iter1_reg;
        tmp_58_reg_1437_pp0_iter3_reg <= tmp_58_reg_1437_pp0_iter2_reg;
        tmp_72_reg_1403 <= {{select_ln92_fu_909_p3[5:4]}};
        tmp_72_reg_1403_pp0_iter1_reg <= tmp_72_reg_1403;
        tmp_72_reg_1403_pp0_iter2_reg <= tmp_72_reg_1403_pp0_iter1_reg;
        tmp_73_reg_1431 <= {{select_ln92_fu_909_p3[3:2]}};
        tmp_73_reg_1431_pp0_iter1_reg <= tmp_73_reg_1431;
        tmp_73_reg_1431_pp0_iter2_reg <= tmp_73_reg_1431_pp0_iter1_reg;
        tmp_s_reg_1378 <= {{select_ln92_fu_909_p3[5:3]}};
        tmp_s_reg_1378_pp0_iter1_reg <= tmp_s_reg_1378;
        tmp_s_reg_1378_pp0_iter2_reg <= tmp_s_reg_1378_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        output_difference_0_load_1_reg_1540 <= output_difference_0_q0;
        output_difference_0_load_reg_1468 <= output_difference_0_q1;
        output_difference_1_load_1_reg_1545 <= output_difference_1_q0;
        output_difference_1_load_reg_1525 <= output_difference_1_q1;
        output_difference_2_load_1_reg_1550 <= output_difference_2_q0;
        output_difference_2_load_reg_1530 <= output_difference_2_q1;
        output_difference_3_load_1_reg_1555 <= output_difference_3_q0;
        output_difference_3_load_reg_1535 <= output_difference_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        output_difference_0_load_2_reg_1612 <= output_difference_0_q1;
        output_difference_0_load_3_reg_1632 <= output_difference_0_q0;
        output_difference_1_load_2_reg_1617 <= output_difference_1_q1;
        output_difference_1_load_3_reg_1637 <= output_difference_1_q0;
        output_difference_2_load_2_reg_1622 <= output_difference_2_q1;
        output_difference_2_load_3_reg_1642 <= output_difference_2_q0;
        output_difference_3_load_2_reg_1627 <= output_difference_3_q1;
        output_difference_3_load_3_reg_1647 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        output_difference_0_load_4_reg_1692 <= output_difference_0_q1;
        output_difference_0_load_5_reg_1712 <= output_difference_0_q0;
        output_difference_1_load_4_reg_1697 <= output_difference_1_q1;
        output_difference_1_load_5_reg_1717 <= output_difference_1_q0;
        output_difference_2_load_4_reg_1702 <= output_difference_2_q1;
        output_difference_2_load_5_reg_1722 <= output_difference_2_q0;
        output_difference_3_load_4_reg_1707 <= output_difference_3_q1;
        output_difference_3_load_5_reg_1727 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_load_6_reg_1732 <= output_difference_0_q1;
        output_difference_0_load_7_reg_1752 <= output_difference_0_q0;
        output_difference_1_load_6_reg_1737 <= output_difference_1_q1;
        output_difference_1_load_7_reg_1757 <= output_difference_1_q0;
        output_difference_2_load_6_reg_1742 <= output_difference_2_q1;
        output_difference_2_load_7_reg_1762 <= output_difference_2_q0;
        output_difference_3_load_6_reg_1747 <= output_difference_3_q1;
        output_difference_3_load_7_reg_1767 <= output_difference_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_800 <= grp_fu_3076_p_dout0;
        reg_806 <= grp_fu_3080_p_dout0;
        reg_812 <= grp_fu_3084_p_dout0;
        reg_818 <= grp_fu_3088_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_824 <= grp_fu_3092_p_dout0;
        reg_829 <= grp_fu_3096_p_dout0;
        reg_834 <= grp_fu_3100_p_dout0;
        reg_839 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_844 <= grp_fu_3092_p_dout0;
        reg_850 <= grp_fu_3096_p_dout0;
        reg_856 <= grp_fu_3100_p_dout0;
        reg_862 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_reg_1560 <= tmp_fu_1088_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln93_reg_1443 <= trunc_ln93_fu_1026_p1;
        trunc_ln95_reg_1473 <= trunc_ln95_fu_1048_p1;
        trunc_ln95_reg_1473_pp0_iter1_reg <= trunc_ln95_reg_1473;
        trunc_ln95_reg_1473_pp0_iter2_reg <= trunc_ln95_reg_1473_pp0_iter1_reg;
        trunc_ln95_reg_1473_pp0_iter3_reg <= trunc_ln95_reg_1473_pp0_iter2_reg;
    end
end
always @ (*) begin
    if (((icmp_ln93_reg_1339 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln93_reg_1339_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_0_address0_local = zext_ln95_14_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_0_address0_local = zext_ln95_12_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_address0_local = zext_ln95_8_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_0_address0_local = zext_ln95_4_fu_1225_p1;
    end else begin
        delta_weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_0_address1_local = zext_ln95_10_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_address1_local = zext_ln95_6_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_0_address1_local = zext_ln95_2_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_0_address1_local = zext_ln95_fu_1192_p1;
    end else begin
        delta_weights2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_ce0_local = 1'b1;
    end else begin
        delta_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_ce1_local = 1'b1;
    end else begin
        delta_weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_0_d0_local = reg_844;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_0_d0_local = reg_800;
    end else begin
        delta_weights2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_0_d1_local = reg_844;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_d1_local = reg_824;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_0_d1_local = reg_800;
    end else begin
        delta_weights2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_we0_local = 1'b1;
    end else begin
        delta_weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_0_we1_local = 1'b1;
    end else begin
        delta_weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_1_address0_local = zext_ln95_14_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_address0_local = zext_ln95_12_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_address0_local = zext_ln95_8_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_1_address0_local = zext_ln95_4_fu_1225_p1;
    end else begin
        delta_weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_1_address1_local = zext_ln95_10_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_address1_local = zext_ln95_6_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_1_address1_local = zext_ln95_2_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_1_address1_local = zext_ln95_fu_1192_p1;
    end else begin
        delta_weights2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_1_d0_local = reg_850;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_1_d0_local = reg_806;
    end else begin
        delta_weights2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_1_d1_local = reg_850;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_d1_local = reg_829;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_1_d1_local = reg_806;
    end else begin
        delta_weights2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_2_address0_local = zext_ln95_14_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_2_address0_local = zext_ln95_12_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_2_address0_local = zext_ln95_8_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_2_address0_local = zext_ln95_4_fu_1225_p1;
    end else begin
        delta_weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_2_address1_local = zext_ln95_10_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_2_address1_local = zext_ln95_6_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_2_address1_local = zext_ln95_2_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_2_address1_local = zext_ln95_fu_1192_p1;
    end else begin
        delta_weights2_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_ce1_local = 1'b1;
    end else begin
        delta_weights2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_2_d0_local = reg_856;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_2_d0_local = reg_812;
    end else begin
        delta_weights2_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_2_d1_local = reg_856;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_d1_local = reg_834;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_2_d1_local = reg_812;
    end else begin
        delta_weights2_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_2_we1_local = 1'b1;
    end else begin
        delta_weights2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_3_address0_local = zext_ln95_14_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_3_address0_local = zext_ln95_12_fu_1294_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_3_address0_local = zext_ln95_8_fu_1258_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_3_address0_local = zext_ln95_4_fu_1225_p1;
    end else begin
        delta_weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights2_3_address1_local = zext_ln95_10_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_3_address1_local = zext_ln95_6_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        delta_weights2_3_address1_local = zext_ln95_2_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_3_address1_local = zext_ln95_fu_1192_p1;
    end else begin
        delta_weights2_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_ce1_local = 1'b1;
    end else begin
        delta_weights2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_3_d0_local = reg_862;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        delta_weights2_3_d0_local = reg_818;
    end else begin
        delta_weights2_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights2_3_d1_local = reg_862;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_d1_local = reg_839;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        delta_weights2_3_d1_local = reg_818;
    end else begin
        delta_weights2_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights2_3_we1_local = 1'b1;
    end else begin
        delta_weights2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_768_p1 = output_difference_0_load_6_reg_1732;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_768_p1 = output_difference_0_load_4_reg_1692;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_768_p1 = output_difference_0_load_2_reg_1612;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_768_p1 = output_difference_0_load_reg_1468;
    end else begin
        grp_fu_768_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_772_p1 = output_difference_1_load_6_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_772_p1 = output_difference_1_load_4_reg_1697;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_772_p1 = output_difference_1_load_2_reg_1617;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_772_p1 = output_difference_1_load_reg_1525;
    end else begin
        grp_fu_772_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_776_p1 = output_difference_2_load_6_reg_1742;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_776_p1 = output_difference_2_load_4_reg_1702;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_776_p1 = output_difference_2_load_2_reg_1622;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_776_p1 = output_difference_2_load_reg_1530;
    end else begin
        grp_fu_776_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_780_p1 = output_difference_3_load_6_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_780_p1 = output_difference_3_load_4_reg_1707;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_780_p1 = output_difference_3_load_2_reg_1627;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_780_p1 = output_difference_3_load_reg_1535;
    end else begin
        grp_fu_780_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_784_p1 = output_difference_0_load_7_reg_1752;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_784_p1 = output_difference_0_load_5_reg_1712;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_784_p1 = output_difference_0_load_3_reg_1632;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_784_p1 = output_difference_0_load_1_reg_1540;
    end else begin
        grp_fu_784_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_788_p1 = output_difference_1_load_7_reg_1757;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_788_p1 = output_difference_1_load_5_reg_1717;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_788_p1 = output_difference_1_load_3_reg_1637;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_788_p1 = output_difference_1_load_1_reg_1545;
    end else begin
        grp_fu_788_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_792_p1 = output_difference_2_load_7_reg_1762;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_792_p1 = output_difference_2_load_5_reg_1722;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_792_p1 = output_difference_2_load_3_reg_1642;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_792_p1 = output_difference_2_load_1_reg_1550;
    end else begin
        grp_fu_792_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_796_p1 = output_difference_3_load_7_reg_1767;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_796_p1 = output_difference_3_load_5_reg_1727;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_796_p1 = output_difference_3_load_3_reg_1647;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_796_p1 = output_difference_3_load_1_reg_1555;
    end else begin
        grp_fu_796_p1 = 'bx;
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
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_0_address0_local = zext_ln95_13_fu_1168_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_0_address0_local = zext_ln95_9_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address0_local = zext_ln95_5_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address0_local = zext_ln95_1_fu_953_p1;
        end else begin
            output_difference_0_address0_local = 'bx;
        end
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_0_address1_local = zext_ln95_11_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_0_address1_local = zext_ln95_7_fu_1119_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address1_local = zext_ln95_3_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address1_local = zext_ln92_1_fu_927_p1;
        end else begin
            output_difference_0_address1_local = 'bx;
        end
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_1_address0_local = zext_ln95_13_fu_1168_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_1_address0_local = zext_ln95_9_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address0_local = zext_ln95_5_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address0_local = zext_ln95_1_fu_953_p1;
        end else begin
            output_difference_1_address0_local = 'bx;
        end
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_1_address1_local = zext_ln95_11_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_1_address1_local = zext_ln95_7_fu_1119_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address1_local = zext_ln95_3_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address1_local = zext_ln92_1_fu_927_p1;
        end else begin
            output_difference_1_address1_local = 'bx;
        end
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_2_address0_local = zext_ln95_13_fu_1168_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_2_address0_local = zext_ln95_9_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_2_address0_local = zext_ln95_5_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_address0_local = zext_ln95_1_fu_953_p1;
        end else begin
            output_difference_2_address0_local = 'bx;
        end
    end else begin
        output_difference_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_2_address1_local = zext_ln95_11_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_2_address1_local = zext_ln95_7_fu_1119_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_2_address1_local = zext_ln95_3_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_address1_local = zext_ln92_1_fu_927_p1;
        end else begin
            output_difference_2_address1_local = 'bx;
        end
    end else begin
        output_difference_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_3_address0_local = zext_ln95_13_fu_1168_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_3_address0_local = zext_ln95_9_fu_1137_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_3_address0_local = zext_ln95_5_fu_1075_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_3_address0_local = zext_ln95_1_fu_953_p1;
        end else begin
            output_difference_3_address0_local = 'bx;
        end
    end else begin
        output_difference_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            output_difference_3_address1_local = zext_ln95_11_fu_1153_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            output_difference_3_address1_local = zext_ln95_7_fu_1119_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_3_address1_local = zext_ln95_3_fu_1060_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_3_address1_local = zext_ln92_1_fu_927_p1;
        end else begin
            output_difference_3_address1_local = 'bx;
        end
    end else begin
        output_difference_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln93_1_fu_1013_p2 = (i_fu_124 + 7'd1);
assign add_ln93_fu_892_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln94_fu_1176_p2 = (select_ln92_reg_1348 + 7'd32);
assign add_ln95_1_fu_1200_p4 = {{{trunc_ln95_reg_1473_pp0_iter2_reg}, {tmp_s_reg_1378_pp0_iter2_reg}}, {1'd1}};
assign add_ln95_2_fu_1216_p5 = {{{{trunc_ln95_reg_1473_pp0_iter2_reg}, {tmp_72_reg_1403_pp0_iter2_reg}}, {1'd1}}, {tmp_56_reg_1411_pp0_iter2_reg}};
assign add_ln95_3_fu_1233_p4 = {{{trunc_ln95_reg_1473_pp0_iter2_reg}, {tmp_72_reg_1403_pp0_iter2_reg}}, {2'd3}};
assign add_ln95_4_fu_1249_p5 = {{{{trunc_ln95_reg_1473_pp0_iter2_reg}, {tmp_57_reg_1419_pp0_iter2_reg}}, {1'd1}}, {tmp_73_reg_1431_pp0_iter2_reg}};
assign add_ln95_5_fu_1266_p6 = {{{{{trunc_ln95_reg_1473_pp0_iter2_reg}, {tmp_57_reg_1419_pp0_iter3_reg}}, {1'd1}}, {tmp_58_reg_1437_pp0_iter3_reg}}, {1'd1}};
assign add_ln95_6_fu_1285_p5 = {{{{trunc_ln95_reg_1473_pp0_iter2_reg}, {tmp_57_reg_1419_pp0_iter3_reg}}, {2'd3}}, {tmp_56_reg_1411_pp0_iter3_reg}};
assign add_ln95_7_fu_1302_p4 = {{{trunc_ln95_reg_1473_pp0_iter3_reg}, {tmp_57_reg_1419_pp0_iter3_reg}}, {3'd7}};
assign add_ln_fu_1186_p3 = {{trunc_ln95_reg_1473_pp0_iter2_reg}, {lshr_ln92_1_reg_1353_pp0_iter2_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
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
assign grp_fu_3076_p_din0 = tmp_reg_1560;
assign grp_fu_3076_p_din1 = grp_fu_768_p1;
assign grp_fu_3080_p_ce = 1'b1;
assign grp_fu_3080_p_din0 = tmp_reg_1560;
assign grp_fu_3080_p_din1 = grp_fu_772_p1;
assign grp_fu_3084_p_ce = 1'b1;
assign grp_fu_3084_p_din0 = tmp_reg_1560;
assign grp_fu_3084_p_din1 = grp_fu_776_p1;
assign grp_fu_3088_p_ce = 1'b1;
assign grp_fu_3088_p_din0 = tmp_reg_1560;
assign grp_fu_3088_p_din1 = grp_fu_780_p1;
assign grp_fu_3092_p_ce = 1'b1;
assign grp_fu_3092_p_din0 = tmp_reg_1560;
assign grp_fu_3092_p_din1 = grp_fu_784_p1;
assign grp_fu_3096_p_ce = 1'b1;
assign grp_fu_3096_p_din0 = tmp_reg_1560;
assign grp_fu_3096_p_din1 = grp_fu_788_p1;
assign grp_fu_3100_p_ce = 1'b1;
assign grp_fu_3100_p_din0 = tmp_reg_1560;
assign grp_fu_3100_p_din1 = grp_fu_792_p1;
assign grp_fu_3104_p_ce = 1'b1;
assign grp_fu_3104_p_din0 = tmp_reg_1560;
assign grp_fu_3104_p_din1 = grp_fu_796_p1;
assign icmp_ln93_fu_886_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd128) ? 1'b1 : 1'b0);
assign last_activations_0_address0 = zext_ln92_fu_1040_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_1_address0 = zext_ln92_fu_1040_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = zext_ln92_fu_1040_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = zext_ln92_fu_1040_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign lshr_ln92_1_fu_917_p4 = {{select_ln92_fu_909_p3[5:2]}};
assign lshr_ln_fu_1030_p4 = {{select_ln93_fu_1019_p3[5:2]}};
assign or_ln95_1_fu_1052_p4 = {{{tmp_72_reg_1403}, {1'd1}}, {tmp_56_reg_1411}};
assign or_ln95_2_fu_1068_p3 = {{tmp_72_reg_1403}, {2'd3}};
assign or_ln95_3_fu_1111_p4 = {{{tmp_57_reg_1419}, {1'd1}}, {tmp_73_reg_1431}};
assign or_ln95_4_fu_1127_p5 = {{{{tmp_57_reg_1419}, {1'd1}}, {tmp_58_reg_1437}}, {1'd1}};
assign or_ln95_5_fu_1145_p4 = {{{tmp_57_reg_1419}, {2'd3}}, {tmp_56_reg_1411}};
assign or_ln95_6_fu_1161_p3 = {{tmp_57_reg_1419}, {3'd7}};
assign or_ln_fu_945_p3 = {{tmp_s_fu_935_p4}, {1'd1}};
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
assign select_ln92_fu_909_p3 = ((tmp_55_fu_901_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln93_fu_1019_p3 = ((tmp_55_reg_1343[0:0] == 1'b1) ? add_ln93_1_fu_1013_p2 : i_fu_124);
assign tmp_55_fu_901_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_1088_p9 = 'bx;
assign tmp_s_fu_935_p4 = {{select_ln92_fu_909_p3[5:3]}};
assign trunc_ln93_fu_1026_p1 = select_ln93_fu_1019_p3[1:0];
assign trunc_ln95_fu_1048_p1 = select_ln93_fu_1019_p3[5:0];
assign zext_ln92_1_fu_927_p1 = lshr_ln92_1_fu_917_p4;
assign zext_ln92_fu_1040_p1 = lshr_ln_fu_1030_p4;
assign zext_ln95_10_fu_1277_p1 = add_ln95_5_fu_1266_p6;
assign zext_ln95_11_fu_1153_p1 = or_ln95_5_fu_1145_p4;
assign zext_ln95_12_fu_1294_p1 = add_ln95_6_fu_1285_p5;
assign zext_ln95_13_fu_1168_p1 = or_ln95_6_fu_1161_p3;
assign zext_ln95_14_fu_1310_p1 = add_ln95_7_fu_1302_p4;
assign zext_ln95_1_fu_953_p1 = or_ln_fu_945_p3;
assign zext_ln95_2_fu_1208_p1 = add_ln95_1_fu_1200_p4;
assign zext_ln95_3_fu_1060_p1 = or_ln95_1_fu_1052_p4;
assign zext_ln95_4_fu_1225_p1 = add_ln95_2_fu_1216_p5;
assign zext_ln95_5_fu_1075_p1 = or_ln95_2_fu_1068_p3;
assign zext_ln95_6_fu_1241_p1 = add_ln95_3_fu_1233_p4;
assign zext_ln95_7_fu_1119_p1 = or_ln95_3_fu_1111_p4;
assign zext_ln95_8_fu_1258_p1 = add_ln95_4_fu_1249_p5;
assign zext_ln95_9_fu_1137_p1 = or_ln95_4_fu_1127_p5;
assign zext_ln95_fu_1192_p1 = add_ln_fu_1186_p3;
endmodule 
