module forward_dataflow_in_loop_VITIS_LOOP_12404_1_Loop_VITIS_LOOP_12374_1_proc17350_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,urem_ln12408_i,select_ln12409_i,mul_ln12378_i,v7928_i_address0,v7928_i_ce0,v7928_i_we0,v7928_i_d0,v7928_1_i_address0,v7928_1_i_ce0,v7928_1_i_we0,v7928_1_i_d0,v7928_2_i_address0,v7928_2_i_ce0,v7928_2_i_we0,v7928_2_i_d0,v7928_3_i_address0,v7928_3_i_ce0,v7928_3_i_we0,v7928_3_i_d0,thr_add_udiv_cast_i_i,v9205_0_0_address0,v9205_0_0_ce0,v9205_0_0_q0,v9205_0_1_address0,v9205_0_1_ce0,v9205_0_1_q0,v9205_0_2_address0,v9205_0_2_ce0,v9205_0_2_q0,v9205_0_3_address0,v9205_0_3_ce0,v9205_0_3_q0,v9205_1_0_address0,v9205_1_0_ce0,v9205_1_0_q0,v9205_1_1_address0,v9205_1_1_ce0,v9205_1_1_q0,v9205_1_2_address0,v9205_1_2_ce0,v9205_1_2_q0,v9205_1_3_address0,v9205_1_3_ce0,v9205_1_3_q0,v9205_2_0_address0,v9205_2_0_ce0,v9205_2_0_q0,v9205_2_1_address0,v9205_2_1_ce0,v9205_2_1_q0,v9205_2_2_address0,v9205_2_2_ce0,v9205_2_2_q0,v9205_2_3_address0,v9205_2_3_ce0,v9205_2_3_q0,v9205_3_0_address0,v9205_3_0_ce0,v9205_3_0_q0,v9205_3_1_address0,v9205_3_1_ce0,v9205_3_1_q0,v9205_3_2_address0,v9205_3_2_ce0,v9205_3_2_q0,v9205_3_3_address0,v9205_3_3_ce0,v9205_3_3_q0,thr_add_cast_i_i,thr_add_i_cast_cast_i); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [1:0] urem_ln12408_i;
input  [3:0] select_ln12409_i;
input  [10:0] mul_ln12378_i;
output  [7:0] v7928_i_address0;
output   v7928_i_ce0;
output   v7928_i_we0;
output  [7:0] v7928_i_d0;
output  [7:0] v7928_1_i_address0;
output   v7928_1_i_ce0;
output   v7928_1_i_we0;
output  [7:0] v7928_1_i_d0;
output  [7:0] v7928_2_i_address0;
output   v7928_2_i_ce0;
output   v7928_2_i_we0;
output  [7:0] v7928_2_i_d0;
output  [7:0] v7928_3_i_address0;
output   v7928_3_i_ce0;
output   v7928_3_i_we0;
output  [7:0] v7928_3_i_d0;
input  [2:0] thr_add_udiv_cast_i_i;
output  [15:0] v9205_0_0_address0;
output   v9205_0_0_ce0;
input  [7:0] v9205_0_0_q0;
output  [15:0] v9205_0_1_address0;
output   v9205_0_1_ce0;
input  [7:0] v9205_0_1_q0;
output  [15:0] v9205_0_2_address0;
output   v9205_0_2_ce0;
input  [7:0] v9205_0_2_q0;
output  [15:0] v9205_0_3_address0;
output   v9205_0_3_ce0;
input  [7:0] v9205_0_3_q0;
output  [15:0] v9205_1_0_address0;
output   v9205_1_0_ce0;
input  [7:0] v9205_1_0_q0;
output  [15:0] v9205_1_1_address0;
output   v9205_1_1_ce0;
input  [7:0] v9205_1_1_q0;
output  [15:0] v9205_1_2_address0;
output   v9205_1_2_ce0;
input  [7:0] v9205_1_2_q0;
output  [15:0] v9205_1_3_address0;
output   v9205_1_3_ce0;
input  [7:0] v9205_1_3_q0;
output  [15:0] v9205_2_0_address0;
output   v9205_2_0_ce0;
input  [7:0] v9205_2_0_q0;
output  [15:0] v9205_2_1_address0;
output   v9205_2_1_ce0;
input  [7:0] v9205_2_1_q0;
output  [15:0] v9205_2_2_address0;
output   v9205_2_2_ce0;
input  [7:0] v9205_2_2_q0;
output  [15:0] v9205_2_3_address0;
output   v9205_2_3_ce0;
input  [7:0] v9205_2_3_q0;
output  [15:0] v9205_3_0_address0;
output   v9205_3_0_ce0;
input  [7:0] v9205_3_0_q0;
output  [15:0] v9205_3_1_address0;
output   v9205_3_1_ce0;
input  [7:0] v9205_3_1_q0;
output  [15:0] v9205_3_2_address0;
output   v9205_3_2_ce0;
input  [7:0] v9205_3_2_q0;
output  [15:0] v9205_3_3_address0;
output   v9205_3_3_ce0;
input  [7:0] v9205_3_3_q0;
input  [1:0] thr_add_cast_i_i;
input  [4:0] thr_add_i_cast_cast_i;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12374_fu_1216_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [1:0] thr_add_cast_i_i_read_reg_1569;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] thr_add_i_cast_cast_i_cast_cast_fu_1040_p1;
reg   [6:0] thr_add_i_cast_cast_i_cast_cast_reg_1587;
wire   [4:0] thr_add_udiv_cast_i_i_cast_cast_fu_1048_p1;
reg   [4:0] thr_add_udiv_cast_i_i_cast_cast_reg_1592;
wire   [3:0] tmp_fu_1106_p4;
reg   [3:0] tmp_reg_1597;
reg   [3:0] tmp_reg_1597_pp0_iter1_reg;
reg   [3:0] tmp_reg_1597_pp0_iter2_reg;
reg   [3:0] tmp_reg_1597_pp0_iter3_reg;
wire   [1:0] empty_384_fu_1156_p2;
reg   [1:0] empty_384_reg_1603;
reg   [1:0] empty_384_reg_1603_pp0_iter1_reg;
reg   [1:0] empty_384_reg_1603_pp0_iter2_reg;
reg   [4:0] tmp_282_i_reg_1611;
reg   [4:0] tmp_283_i_reg_1616;
reg   [3:0] lshr_ln125_i_reg_1621;
reg   [3:0] lshr_ln125_i_reg_1621_pp0_iter1_reg;
reg   [3:0] lshr_ln125_i_reg_1621_pp0_iter2_reg;
reg   [3:0] lshr_ln125_i_reg_1621_pp0_iter3_reg;
wire   [0:0] icmp_ln12375_fu_1210_p2;
reg   [0:0] icmp_ln12375_reg_1628;
reg   [0:0] icmp_ln12374_reg_1633;
wire   [15:0] mul_ln12378_fu_1249_p2;
reg   [15:0] mul_ln12378_reg_1637;
wire   [15:0] mul_ln12382_fu_1267_p2;
reg   [15:0] mul_ln12382_reg_1643;
wire   [7:0] tmp_193_i_i_i_fu_1415_p11;
reg   [7:0] tmp_193_i_i_i_reg_1969;
wire   [7:0] tmp_198_i_i_i_fu_1438_p11;
reg   [7:0] tmp_198_i_i_i_reg_1974;
wire   [7:0] tmp_203_i_i_i_fu_1461_p11;
reg   [7:0] tmp_203_i_i_i_reg_1979;
wire   [7:0] tmp_208_i_i_i_fu_1484_p11;
reg   [7:0] tmp_208_i_i_i_reg_1984;
reg   [0:0] ap_phi_mux_icmp_ln12375408_i_phi_fu_845_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12378_3_fu_1290_p1;
wire   [63:0] zext_ln12382_2_fu_1315_p1;
wire   [63:0] zext_ln12380_1_fu_1370_p1;
wire   [63:0] zext_ln12384_3_fu_1395_p1;
wire   [63:0] zext_ln12384_2_fu_1540_p1;
reg   [7:0] indvar_flatten405_i_fu_150;
wire   [7:0] add_ln12374_1_fu_1204_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten405_i_load;
reg   [4:0] v7912406_i_fu_154;
wire   [4:0] select_ln12374_1_fu_1098_p3;
reg   [4:0] ap_sig_allocacmp_v7912406_i_load;
reg   [4:0] v7913407_i_fu_158;
wire   [4:0] add_ln12375_fu_1198_p2;
reg   [4:0] ap_sig_allocacmp_v7913407_i_load;
reg    v9205_0_0_ce0_local;
reg   [15:0] v9205_0_0_address0_local;
reg    v9205_0_1_ce0_local;
reg   [15:0] v9205_0_1_address0_local;
reg    v9205_0_2_ce0_local;
reg   [15:0] v9205_0_2_address0_local;
reg    v9205_0_3_ce0_local;
reg   [15:0] v9205_0_3_address0_local;
reg    v9205_1_0_ce0_local;
reg   [15:0] v9205_1_0_address0_local;
reg    v9205_1_1_ce0_local;
reg   [15:0] v9205_1_1_address0_local;
reg    v9205_1_2_ce0_local;
reg   [15:0] v9205_1_2_address0_local;
reg    v9205_1_3_ce0_local;
reg   [15:0] v9205_1_3_address0_local;
reg    v9205_2_0_ce0_local;
reg   [15:0] v9205_2_0_address0_local;
reg    v9205_2_1_ce0_local;
reg   [15:0] v9205_2_1_address0_local;
reg    v9205_2_2_ce0_local;
reg   [15:0] v9205_2_2_address0_local;
reg    v9205_2_3_ce0_local;
reg   [15:0] v9205_2_3_address0_local;
reg    v9205_3_0_ce0_local;
reg   [15:0] v9205_3_0_address0_local;
reg    v9205_3_1_ce0_local;
reg   [15:0] v9205_3_1_address0_local;
reg    v9205_3_2_ce0_local;
reg   [15:0] v9205_3_2_address0_local;
reg    v9205_3_3_ce0_local;
reg   [15:0] v9205_3_3_address0_local;
reg    v7928_3_i_we0_local;
reg    v7928_3_i_ce0_local;
reg    v7928_2_i_we0_local;
reg    v7928_2_i_ce0_local;
reg    v7928_1_i_we0_local;
reg    v7928_1_i_ce0_local;
reg    v7928_i_we0_local;
reg    v7928_i_ce0_local;
wire   [7:0] grp_fu_852_p9;
wire   [7:0] grp_fu_875_p9;
wire   [7:0] grp_fu_898_p9;
wire   [7:0] grp_fu_921_p9;
wire   [7:0] grp_fu_944_p9;
wire   [7:0] grp_fu_967_p9;
wire   [7:0] grp_fu_990_p9;
wire   [7:0] grp_fu_1013_p9;
wire  signed [5:0] thr_add_i_cast_cast_i_cast_fu_1036_p1;
wire  signed [3:0] thr_add_udiv_cast_i_i_cast_fu_1044_p1;
wire  signed [3:0] select_ln12409_i_cast_fu_1052_p0;
wire  signed [5:0] select_ln12409_i_cast_fu_1052_p1;
wire   [4:0] add_ln12374_fu_1084_p2;
wire   [0:0] empty_fu_1116_p1;
wire   [1:0] tmp_388_fu_1120_p3;
wire   [1:0] empty_381_fu_1128_p2;
wire   [5:0] tmp_8_i_fu_1134_p3;
wire  signed [3:0] empty_382_fu_1146_p0;
wire   [6:0] select_ln12409_i_cast_cast_fu_1056_p1;
wire   [6:0] p_cast27_i_i_i_fu_1142_p1;
wire   [1:0] empty_382_fu_1146_p1;
wire   [6:0] empty_383_fu_1150_p2;
wire   [6:0] empty_385_fu_1172_p2;
wire   [4:0] select_ln12374_fu_1090_p3;
wire   [10:0] zext_ln12378_fu_1237_p1;
wire   [10:0] add_ln12378_fu_1240_p2;
wire   [10:0] mul_ln12378_fu_1249_p0;
wire   [5:0] mul_ln12378_fu_1249_p1;
wire   [10:0] zext_ln12382_fu_1255_p1;
wire   [10:0] add_ln12382_fu_1258_p2;
wire   [10:0] mul_ln12382_fu_1267_p0;
wire   [5:0] mul_ln12382_fu_1267_p1;
wire   [4:0] zext_ln12375_fu_1273_p1;
wire   [4:0] add_ln12378_1_fu_1276_p2;
wire   [15:0] zext_ln12378_2_fu_1281_p1;
wire   [15:0] add_ln12378_2_fu_1285_p2;
wire   [15:0] add_ln12382_1_fu_1310_p2;
wire   [5:0] or_ln_i_fu_1335_p3;
wire   [6:0] zext_ln12379_fu_1342_p1;
wire   [6:0] add_ln12379_fu_1346_p2;
wire   [4:0] lshr_ln126_i_fu_1351_p4;
wire   [15:0] zext_ln12380_fu_1361_p1;
wire   [15:0] add_ln12380_fu_1365_p2;
wire   [15:0] add_ln12384_1_fu_1390_p2;
wire   [7:0] grp_fu_852_p11;
wire   [7:0] grp_fu_875_p11;
wire   [7:0] grp_fu_898_p11;
wire   [7:0] grp_fu_921_p11;
wire   [7:0] tmp_193_i_i_i_fu_1415_p9;
wire   [7:0] grp_fu_944_p11;
wire   [7:0] grp_fu_967_p11;
wire   [7:0] grp_fu_990_p11;
wire   [7:0] grp_fu_1013_p11;
wire   [7:0] tmp_198_i_i_i_fu_1438_p9;
wire   [7:0] tmp_203_i_i_i_fu_1461_p9;
wire   [7:0] tmp_208_i_i_i_fu_1484_p9;
wire   [4:0] tmp_387_fu_1514_p3;
wire   [7:0] p_shl_fu_1507_p3;
wire   [7:0] zext_ln12384_fu_1521_p1;
wire   [7:0] sub_ln12384_fu_1525_p2;
wire   [7:0] zext_ln12384_1_fu_1531_p1;
wire   [7:0] add_ln12384_fu_1534_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [15:0] mul_ln12378_fu_1249_p00;
wire   [15:0] mul_ln12382_fu_1267_p00;
reg    ap_condition_983;
wire   [1:0] grp_fu_852_p1;
wire   [1:0] grp_fu_852_p3;
wire  signed [1:0] grp_fu_852_p5;
wire  signed [1:0] grp_fu_852_p7;
wire   [1:0] grp_fu_875_p1;
wire   [1:0] grp_fu_875_p3;
wire  signed [1:0] grp_fu_875_p5;
wire  signed [1:0] grp_fu_875_p7;
wire   [1:0] grp_fu_898_p1;
wire   [1:0] grp_fu_898_p3;
wire  signed [1:0] grp_fu_898_p5;
wire  signed [1:0] grp_fu_898_p7;
wire   [1:0] grp_fu_921_p1;
wire   [1:0] grp_fu_921_p3;
wire  signed [1:0] grp_fu_921_p5;
wire  signed [1:0] grp_fu_921_p7;
wire  signed [1:0] grp_fu_944_p1;
wire  signed [1:0] grp_fu_944_p3;
wire   [1:0] grp_fu_944_p5;
wire   [1:0] grp_fu_944_p7;
wire  signed [1:0] grp_fu_967_p1;
wire  signed [1:0] grp_fu_967_p3;
wire   [1:0] grp_fu_967_p5;
wire   [1:0] grp_fu_967_p7;
wire  signed [1:0] grp_fu_990_p1;
wire  signed [1:0] grp_fu_990_p3;
wire   [1:0] grp_fu_990_p5;
wire   [1:0] grp_fu_990_p7;
wire  signed [1:0] grp_fu_1013_p1;
wire  signed [1:0] grp_fu_1013_p3;
wire   [1:0] grp_fu_1013_p5;
wire   [1:0] grp_fu_1013_p7;
wire   [1:0] tmp_193_i_i_i_fu_1415_p1;
wire   [1:0] tmp_193_i_i_i_fu_1415_p3;
wire  signed [1:0] tmp_193_i_i_i_fu_1415_p5;
wire  signed [1:0] tmp_193_i_i_i_fu_1415_p7;
wire   [1:0] tmp_198_i_i_i_fu_1438_p1;
wire   [1:0] tmp_198_i_i_i_fu_1438_p3;
wire  signed [1:0] tmp_198_i_i_i_fu_1438_p5;
wire  signed [1:0] tmp_198_i_i_i_fu_1438_p7;
wire  signed [1:0] tmp_203_i_i_i_fu_1461_p1;
wire  signed [1:0] tmp_203_i_i_i_fu_1461_p3;
wire   [1:0] tmp_203_i_i_i_fu_1461_p5;
wire   [1:0] tmp_203_i_i_i_fu_1461_p7;
wire  signed [1:0] tmp_208_i_i_i_fu_1484_p1;
wire  signed [1:0] tmp_208_i_i_i_fu_1484_p3;
wire   [1:0] tmp_208_i_i_i_fu_1484_p5;
wire   [1:0] tmp_208_i_i_i_fu_1484_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten405_i_fu_150 = 8'd0;
#0 v7912406_i_fu_154 = 5'd0;
#0 v7913407_i_fu_158 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2686(.din0(v9205_0_0_q0),.din1(v9205_0_1_q0),.din2(v9205_0_2_q0),.din3(v9205_0_3_q0),.def(grp_fu_852_p9),.sel(thr_add_cast_i_i),.dout(grp_fu_852_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2687(.din0(v9205_1_0_q0),.din1(v9205_1_1_q0),.din2(v9205_1_2_q0),.din3(v9205_1_3_q0),.def(grp_fu_875_p9),.sel(thr_add_cast_i_i),.dout(grp_fu_875_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2688(.din0(v9205_2_0_q0),.din1(v9205_2_1_q0),.din2(v9205_2_2_q0),.din3(v9205_2_3_q0),.def(grp_fu_898_p9),.sel(thr_add_cast_i_i),.dout(grp_fu_898_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2689(.din0(v9205_3_0_q0),.din1(v9205_3_1_q0),.din2(v9205_3_2_q0),.din3(v9205_3_3_q0),.def(grp_fu_921_p9),.sel(thr_add_cast_i_i),.dout(grp_fu_921_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2690(.din0(v9205_0_0_q0),.din1(v9205_0_1_q0),.din2(v9205_0_2_q0),.din3(v9205_0_3_q0),.def(grp_fu_944_p9),.sel(thr_add_cast_i_i),.dout(grp_fu_944_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2691(.din0(v9205_1_0_q0),.din1(v9205_1_1_q0),.din2(v9205_1_2_q0),.din3(v9205_1_3_q0),.def(grp_fu_967_p9),.sel(thr_add_cast_i_i),.dout(grp_fu_967_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2692(.din0(v9205_2_0_q0),.din1(v9205_2_1_q0),.din2(v9205_2_2_q0),.din3(v9205_2_3_q0),.def(grp_fu_990_p9),.sel(thr_add_cast_i_i),.dout(grp_fu_990_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2693(.din0(v9205_3_0_q0),.din1(v9205_3_1_q0),.din2(v9205_3_2_q0),.din3(v9205_3_3_q0),.def(grp_fu_1013_p9),.sel(thr_add_cast_i_i),.dout(grp_fu_1013_p11));
forward_mul_11ns_6ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 6 ),.dout_WIDTH( 16 ))
mul_11ns_6ns_16_1_1_U2694(.din0(mul_ln12378_fu_1249_p0),.din1(mul_ln12378_fu_1249_p1),.dout(mul_ln12378_fu_1249_p2));
forward_mul_11ns_6ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 11 ),.din1_WIDTH( 6 ),.dout_WIDTH( 16 ))
mul_11ns_6ns_16_1_1_U2695(.din0(mul_ln12382_fu_1267_p0),.din1(mul_ln12382_fu_1267_p1),.dout(mul_ln12382_fu_1267_p2));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2696(.din0(grp_fu_852_p11),.din1(grp_fu_875_p11),.din2(grp_fu_898_p11),.din3(grp_fu_921_p11),.def(tmp_193_i_i_i_fu_1415_p9),.sel(empty_384_reg_1603_pp0_iter2_reg),.dout(tmp_193_i_i_i_fu_1415_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 8 ),.CASE1( 2'h1 ),.din1_WIDTH( 8 ),.CASE2( 2'h2 ),.din2_WIDTH( 8 ),.CASE3( 2'h3 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2697(.din0(grp_fu_944_p11),.din1(grp_fu_967_p11),.din2(grp_fu_990_p11),.din3(grp_fu_1013_p11),.def(tmp_198_i_i_i_fu_1438_p9),.sel(empty_384_reg_1603_pp0_iter2_reg),.dout(tmp_198_i_i_i_fu_1438_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2698(.din0(grp_fu_852_p11),.din1(grp_fu_875_p11),.din2(grp_fu_898_p11),.din3(grp_fu_921_p11),.def(tmp_203_i_i_i_fu_1461_p9),.sel(empty_384_reg_1603_pp0_iter2_reg),.dout(tmp_203_i_i_i_fu_1461_p11));
(* dissolve_hierarchy = "yes" *) forward_sparsemux_9_2_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 8 ),.CASE1( 2'h3 ),.din1_WIDTH( 8 ),.CASE2( 2'h0 ),.din2_WIDTH( 8 ),.CASE3( 2'h1 ),.din3_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 2 ),.dout_WIDTH( 8 ))
sparsemux_9_2_8_1_1_U2699(.din0(grp_fu_944_p11),.din1(grp_fu_967_p11),.din2(grp_fu_990_p11),.din3(grp_fu_1013_p11),.def(tmp_208_i_i_i_fu_1484_p9),.sel(empty_384_reg_1603_pp0_iter2_reg),.dout(tmp_208_i_i_i_fu_1484_p11));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten405_i_fu_150 <= add_ln12374_1_fu_1204_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten405_i_fu_150 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v7912406_i_fu_154 <= select_ln12374_1_fu_1098_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v7912406_i_fu_154 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v7913407_i_fu_158 <= add_ln12375_fu_1198_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v7913407_i_fu_158 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_384_reg_1603 <= empty_384_fu_1156_p2;
        empty_384_reg_1603_pp0_iter1_reg <= empty_384_reg_1603;
        icmp_ln12374_reg_1633 <= icmp_ln12374_fu_1216_p2;
        lshr_ln125_i_reg_1621 <= {{select_ln12374_fu_1090_p3[4:1]}};
        lshr_ln125_i_reg_1621_pp0_iter1_reg <= lshr_ln125_i_reg_1621;
        mul_ln12378_reg_1637 <= mul_ln12378_fu_1249_p2;
        mul_ln12382_reg_1643 <= mul_ln12382_fu_1267_p2;
        thr_add_i_cast_cast_i_cast_cast_reg_1587[5 : 0] <= thr_add_i_cast_cast_i_cast_cast_fu_1040_p1[5 : 0];
        thr_add_udiv_cast_i_i_cast_cast_reg_1592[3 : 0] <= thr_add_udiv_cast_i_i_cast_cast_fu_1048_p1[3 : 0];
        tmp_282_i_reg_1611 <= {{empty_383_fu_1150_p2[6:2]}};
        tmp_283_i_reg_1616 <= {{empty_385_fu_1172_p2[6:2]}};
        tmp_reg_1597 <= {{select_ln12374_1_fu_1098_p3[4:1]}};
        tmp_reg_1597_pp0_iter1_reg <= tmp_reg_1597;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        empty_384_reg_1603_pp0_iter2_reg <= empty_384_reg_1603_pp0_iter1_reg;
        lshr_ln125_i_reg_1621_pp0_iter2_reg <= lshr_ln125_i_reg_1621_pp0_iter1_reg;
        lshr_ln125_i_reg_1621_pp0_iter3_reg <= lshr_ln125_i_reg_1621_pp0_iter2_reg;
        tmp_193_i_i_i_reg_1969 <= tmp_193_i_i_i_fu_1415_p11;
        tmp_198_i_i_i_reg_1974 <= tmp_198_i_i_i_fu_1438_p11;
        tmp_203_i_i_i_reg_1979 <= tmp_203_i_i_i_fu_1461_p11;
        tmp_208_i_i_i_reg_1984 <= tmp_208_i_i_i_fu_1484_p11;
        tmp_reg_1597_pp0_iter2_reg <= tmp_reg_1597_pp0_iter1_reg;
        tmp_reg_1597_pp0_iter3_reg <= tmp_reg_1597_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12375_reg_1628 <= icmp_ln12375_fu_1210_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12374_fu_1216_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_983)) begin
            ap_phi_mux_icmp_ln12375408_i_phi_fu_845_p4 = icmp_ln12375_reg_1628;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln12375408_i_phi_fu_845_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln12375408_i_phi_fu_845_p4 = icmp_ln12375_reg_1628;
        end
    end else begin
        ap_phi_mux_icmp_ln12375408_i_phi_fu_845_p4 = icmp_ln12375_reg_1628;
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
        ap_sig_allocacmp_indvar_flatten405_i_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten405_i_load = indvar_flatten405_i_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7912406_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v7912406_i_load = v7912406_i_fu_154;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7913407_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v7913407_i_load = v7913407_i_fu_158;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7928_1_i_ce0_local = 1'b1;
    end else begin
        v7928_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7928_1_i_we0_local = 1'b1;
    end else begin
        v7928_1_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7928_2_i_ce0_local = 1'b1;
    end else begin
        v7928_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7928_2_i_we0_local = 1'b1;
    end else begin
        v7928_2_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7928_3_i_ce0_local = 1'b1;
    end else begin
        v7928_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7928_3_i_we0_local = 1'b1;
    end else begin
        v7928_3_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7928_i_ce0_local = 1'b1;
    end else begin
        v7928_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v7928_i_we0_local = 1'b1;
    end else begin
        v7928_i_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_0_0_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_0_0_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_0_0_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_0_0_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_0_0_address0_local = 'bx;
        end
    end else begin
        v9205_0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)))) begin
        v9205_0_0_ce0_local = 1'b1;
    end else begin
        v9205_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_0_1_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_0_1_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_0_1_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_0_1_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_0_1_address0_local = 'bx;
        end
    end else begin
        v9205_0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)))) begin
        v9205_0_1_ce0_local = 1'b1;
    end else begin
        v9205_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_0_2_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_0_2_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_0_2_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_0_2_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_0_2_address0_local = 'bx;
        end
    end else begin
        v9205_0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)))) begin
        v9205_0_2_ce0_local = 1'b1;
    end else begin
        v9205_0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_0_3_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_0_3_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_0_3_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_0_3_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_0_3_address0_local = 'bx;
        end
    end else begin
        v9205_0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)))) begin
        v9205_0_3_ce0_local = 1'b1;
    end else begin
        v9205_0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_1_0_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_1_0_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_1_0_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_1_0_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_1_0_address0_local = 'bx;
        end
    end else begin
        v9205_1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)))) begin
        v9205_1_0_ce0_local = 1'b1;
    end else begin
        v9205_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_1_1_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_1_1_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_1_1_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_1_1_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_1_1_address0_local = 'bx;
        end
    end else begin
        v9205_1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)))) begin
        v9205_1_1_ce0_local = 1'b1;
    end else begin
        v9205_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_1_2_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_1_2_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_1_2_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_1_2_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_1_2_address0_local = 'bx;
        end
    end else begin
        v9205_1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)))) begin
        v9205_1_2_ce0_local = 1'b1;
    end else begin
        v9205_1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_1_3_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_1_3_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_1_3_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_1_3_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_1_3_address0_local = 'bx;
        end
    end else begin
        v9205_1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)))) begin
        v9205_1_3_ce0_local = 1'b1;
    end else begin
        v9205_1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_2_0_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_2_0_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_2_0_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_2_0_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_2_0_address0_local = 'bx;
        end
    end else begin
        v9205_2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)))) begin
        v9205_2_0_ce0_local = 1'b1;
    end else begin
        v9205_2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_2_1_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_2_1_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_2_1_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_2_1_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_2_1_address0_local = 'bx;
        end
    end else begin
        v9205_2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)))) begin
        v9205_2_1_ce0_local = 1'b1;
    end else begin
        v9205_2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_2_2_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_2_2_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_2_2_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_2_2_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_2_2_address0_local = 'bx;
        end
    end else begin
        v9205_2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)))) begin
        v9205_2_2_ce0_local = 1'b1;
    end else begin
        v9205_2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_2_3_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_2_3_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_2_3_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_2_3_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_2_3_address0_local = 'bx;
        end
    end else begin
        v9205_2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd2) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd0) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)))) begin
        v9205_2_3_ce0_local = 1'b1;
    end else begin
        v9205_2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_3_0_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_3_0_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_3_0_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_3_0_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_3_0_address0_local = 'bx;
        end
    end else begin
        v9205_3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)))) begin
        v9205_3_0_ce0_local = 1'b1;
    end else begin
        v9205_3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_3_1_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_3_1_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_3_1_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_3_1_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_3_1_address0_local = 'bx;
        end
    end else begin
        v9205_3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)))) begin
        v9205_3_1_ce0_local = 1'b1;
    end else begin
        v9205_3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_3_2_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_3_2_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd0))) begin
            v9205_3_2_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd2))) begin
            v9205_3_2_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_3_2_address0_local = 'bx;
        end
    end else begin
        v9205_3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd0)))) begin
        v9205_3_2_ce0_local = 1'b1;
    end else begin
        v9205_3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_3_3_address0_local = zext_ln12384_3_fu_1395_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_3_3_address0_local = zext_ln12382_2_fu_1315_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd1))) begin
            v9205_3_3_address0_local = zext_ln12380_1_fu_1370_p1;
        end else if (((empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd3))) begin
            v9205_3_3_address0_local = zext_ln12378_3_fu_1290_p1;
        end else begin
            v9205_3_3_address0_local = 'bx;
        end
    end else begin
        v9205_3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd3) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (empty_384_reg_1603_pp0_iter1_reg == 2'd1) & (thr_add_cast_i_i_read_reg_1569 == 2'd1)))) begin
        v9205_3_3_ce0_local = 1'b1;
    end else begin
        v9205_3_3_ce0_local = 1'b0;
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
assign add_ln12374_1_fu_1204_p2 = (ap_sig_allocacmp_indvar_flatten405_i_load + 8'd1);
assign add_ln12374_fu_1084_p2 = (ap_sig_allocacmp_v7912406_i_load + 5'd2);
assign add_ln12375_fu_1198_p2 = (select_ln12374_fu_1090_p3 + 5'd2);
assign add_ln12378_1_fu_1276_p2 = (zext_ln12375_fu_1273_p1 + thr_add_udiv_cast_i_i_cast_cast_reg_1592);
assign add_ln12378_2_fu_1285_p2 = (mul_ln12378_reg_1637 + zext_ln12378_2_fu_1281_p1);
assign add_ln12378_fu_1240_p2 = (mul_ln12378_i + zext_ln12378_fu_1237_p1);
assign add_ln12379_fu_1346_p2 = (zext_ln12379_fu_1342_p1 + thr_add_i_cast_cast_i_cast_cast_reg_1587);
assign add_ln12380_fu_1365_p2 = (mul_ln12378_reg_1637 + zext_ln12380_fu_1361_p1);
assign add_ln12382_1_fu_1310_p2 = (mul_ln12382_reg_1643 + zext_ln12378_2_fu_1281_p1);
assign add_ln12382_fu_1258_p2 = (mul_ln12378_i + zext_ln12382_fu_1255_p1);
assign add_ln12384_1_fu_1390_p2 = (mul_ln12382_reg_1643 + zext_ln12380_fu_1361_p1);
assign add_ln12384_fu_1534_p2 = (sub_ln12384_fu_1525_p2 + zext_ln12384_1_fu_1531_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_983 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12374_reg_1633 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_381_fu_1128_p2 = (urem_ln12408_i | tmp_388_fu_1120_p3);
assign empty_382_fu_1146_p0 = select_ln12409_i;
assign empty_382_fu_1146_p1 = empty_382_fu_1146_p0[1:0];
assign empty_383_fu_1150_p2 = (select_ln12409_i_cast_cast_fu_1056_p1 + p_cast27_i_i_i_fu_1142_p1);
assign empty_384_fu_1156_p2 = (empty_382_fu_1146_p1 + empty_381_fu_1128_p2);
assign empty_385_fu_1172_p2 = (empty_383_fu_1150_p2 + 7'd2);
assign empty_fu_1116_p1 = select_ln12374_1_fu_1098_p3[0:0];
assign grp_fu_1013_p9 = 'bx;
assign grp_fu_852_p9 = 'bx;
assign grp_fu_875_p9 = 'bx;
assign grp_fu_898_p9 = 'bx;
assign grp_fu_921_p9 = 'bx;
assign grp_fu_944_p9 = 'bx;
assign grp_fu_967_p9 = 'bx;
assign grp_fu_990_p9 = 'bx;
assign icmp_ln12374_fu_1216_p2 = ((ap_sig_allocacmp_indvar_flatten405_i_load == 8'd195) ? 1'b1 : 1'b0);
assign icmp_ln12375_fu_1210_p2 = ((add_ln12375_fu_1198_p2 < 5'd28) ? 1'b1 : 1'b0);
assign lshr_ln126_i_fu_1351_p4 = {{add_ln12379_fu_1346_p2[6:2]}};
assign mul_ln12378_fu_1249_p0 = mul_ln12378_fu_1249_p00;
assign mul_ln12378_fu_1249_p00 = add_ln12378_fu_1240_p2;
assign mul_ln12378_fu_1249_p1 = 16'd29;
assign mul_ln12382_fu_1267_p0 = mul_ln12382_fu_1267_p00;
assign mul_ln12382_fu_1267_p00 = add_ln12382_fu_1258_p2;
assign mul_ln12382_fu_1267_p1 = 16'd29;
assign or_ln_i_fu_1335_p3 = {{lshr_ln125_i_reg_1621_pp0_iter1_reg}, {2'd2}};
assign p_cast27_i_i_i_fu_1142_p1 = tmp_8_i_fu_1134_p3;
assign p_shl_fu_1507_p3 = {{tmp_reg_1597_pp0_iter3_reg}, {4'd0}};
assign select_ln12374_1_fu_1098_p3 = ((ap_phi_mux_icmp_ln12375408_i_phi_fu_845_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v7912406_i_load : add_ln12374_fu_1084_p2);
assign select_ln12374_fu_1090_p3 = ((ap_phi_mux_icmp_ln12375408_i_phi_fu_845_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v7913407_i_load : 5'd0);
assign select_ln12409_i_cast_cast_fu_1056_p1 = $unsigned(select_ln12409_i_cast_fu_1052_p1);
assign select_ln12409_i_cast_fu_1052_p0 = select_ln12409_i;
assign select_ln12409_i_cast_fu_1052_p1 = select_ln12409_i_cast_fu_1052_p0;
assign sub_ln12384_fu_1525_p2 = (p_shl_fu_1507_p3 - zext_ln12384_fu_1521_p1);
assign thr_add_cast_i_i_read_reg_1569 = thr_add_cast_i_i;
assign thr_add_i_cast_cast_i_cast_cast_fu_1040_p1 = $unsigned(thr_add_i_cast_cast_i_cast_fu_1036_p1);
assign thr_add_i_cast_cast_i_cast_fu_1036_p1 = $signed(thr_add_i_cast_cast_i);
assign thr_add_udiv_cast_i_i_cast_cast_fu_1048_p1 = $unsigned(thr_add_udiv_cast_i_i_cast_fu_1044_p1);
assign thr_add_udiv_cast_i_i_cast_fu_1044_p1 = $signed(thr_add_udiv_cast_i_i);
assign tmp_193_i_i_i_fu_1415_p9 = 'bx;
assign tmp_198_i_i_i_fu_1438_p9 = 'bx;
assign tmp_203_i_i_i_fu_1461_p9 = 'bx;
assign tmp_208_i_i_i_fu_1484_p9 = 'bx;
assign tmp_387_fu_1514_p3 = {{tmp_reg_1597_pp0_iter3_reg}, {1'd0}};
assign tmp_388_fu_1120_p3 = {{empty_fu_1116_p1}, {1'd0}};
assign tmp_8_i_fu_1134_p3 = {{tmp_fu_1106_p4}, {empty_381_fu_1128_p2}};
assign tmp_fu_1106_p4 = {{select_ln12374_1_fu_1098_p3[4:1]}};
assign v7928_1_i_address0 = zext_ln12384_2_fu_1540_p1;
assign v7928_1_i_ce0 = v7928_1_i_ce0_local;
assign v7928_1_i_d0 = tmp_203_i_i_i_reg_1979;
assign v7928_1_i_we0 = v7928_1_i_we0_local;
assign v7928_2_i_address0 = zext_ln12384_2_fu_1540_p1;
assign v7928_2_i_ce0 = v7928_2_i_ce0_local;
assign v7928_2_i_d0 = tmp_198_i_i_i_reg_1974;
assign v7928_2_i_we0 = v7928_2_i_we0_local;
assign v7928_3_i_address0 = zext_ln12384_2_fu_1540_p1;
assign v7928_3_i_ce0 = v7928_3_i_ce0_local;
assign v7928_3_i_d0 = tmp_193_i_i_i_reg_1969;
assign v7928_3_i_we0 = v7928_3_i_we0_local;
assign v7928_i_address0 = zext_ln12384_2_fu_1540_p1;
assign v7928_i_ce0 = v7928_i_ce0_local;
assign v7928_i_d0 = tmp_208_i_i_i_reg_1984;
assign v7928_i_we0 = v7928_i_we0_local;
assign v9205_0_0_address0 = v9205_0_0_address0_local;
assign v9205_0_0_ce0 = v9205_0_0_ce0_local;
assign v9205_0_1_address0 = v9205_0_1_address0_local;
assign v9205_0_1_ce0 = v9205_0_1_ce0_local;
assign v9205_0_2_address0 = v9205_0_2_address0_local;
assign v9205_0_2_ce0 = v9205_0_2_ce0_local;
assign v9205_0_3_address0 = v9205_0_3_address0_local;
assign v9205_0_3_ce0 = v9205_0_3_ce0_local;
assign v9205_1_0_address0 = v9205_1_0_address0_local;
assign v9205_1_0_ce0 = v9205_1_0_ce0_local;
assign v9205_1_1_address0 = v9205_1_1_address0_local;
assign v9205_1_1_ce0 = v9205_1_1_ce0_local;
assign v9205_1_2_address0 = v9205_1_2_address0_local;
assign v9205_1_2_ce0 = v9205_1_2_ce0_local;
assign v9205_1_3_address0 = v9205_1_3_address0_local;
assign v9205_1_3_ce0 = v9205_1_3_ce0_local;
assign v9205_2_0_address0 = v9205_2_0_address0_local;
assign v9205_2_0_ce0 = v9205_2_0_ce0_local;
assign v9205_2_1_address0 = v9205_2_1_address0_local;
assign v9205_2_1_ce0 = v9205_2_1_ce0_local;
assign v9205_2_2_address0 = v9205_2_2_address0_local;
assign v9205_2_2_ce0 = v9205_2_2_ce0_local;
assign v9205_2_3_address0 = v9205_2_3_address0_local;
assign v9205_2_3_ce0 = v9205_2_3_ce0_local;
assign v9205_3_0_address0 = v9205_3_0_address0_local;
assign v9205_3_0_ce0 = v9205_3_0_ce0_local;
assign v9205_3_1_address0 = v9205_3_1_address0_local;
assign v9205_3_1_ce0 = v9205_3_1_ce0_local;
assign v9205_3_2_address0 = v9205_3_2_address0_local;
assign v9205_3_2_ce0 = v9205_3_2_ce0_local;
assign v9205_3_3_address0 = v9205_3_3_address0_local;
assign v9205_3_3_ce0 = v9205_3_3_ce0_local;
assign zext_ln12375_fu_1273_p1 = lshr_ln125_i_reg_1621_pp0_iter1_reg;
assign zext_ln12378_2_fu_1281_p1 = add_ln12378_1_fu_1276_p2;
assign zext_ln12378_3_fu_1290_p1 = add_ln12378_2_fu_1285_p2;
assign zext_ln12378_fu_1237_p1 = tmp_282_i_reg_1611;
assign zext_ln12379_fu_1342_p1 = or_ln_i_fu_1335_p3;
assign zext_ln12380_1_fu_1370_p1 = add_ln12380_fu_1365_p2;
assign zext_ln12380_fu_1361_p1 = lshr_ln126_i_fu_1351_p4;
assign zext_ln12382_2_fu_1315_p1 = add_ln12382_1_fu_1310_p2;
assign zext_ln12382_fu_1255_p1 = tmp_283_i_reg_1616;
assign zext_ln12384_1_fu_1531_p1 = lshr_ln125_i_reg_1621_pp0_iter3_reg;
assign zext_ln12384_2_fu_1540_p1 = add_ln12384_fu_1534_p2;
assign zext_ln12384_3_fu_1395_p1 = add_ln12384_1_fu_1390_p2;
assign zext_ln12384_fu_1521_p1 = tmp_387_fu_1514_p3;
always @ (posedge ap_clk) begin
    thr_add_i_cast_cast_i_cast_cast_reg_1587[6] <= 1'b0;
    thr_add_udiv_cast_i_i_cast_cast_reg_1592[4] <= 1'b0;
end
endmodule 