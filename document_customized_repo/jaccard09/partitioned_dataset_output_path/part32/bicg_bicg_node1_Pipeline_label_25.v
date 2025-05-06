
module bicg_bicg_node1_Pipeline_label_25 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp_61,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v137_2_address0,v137_2_ce0,v137_2_q0,v137_2_address1,v137_2_ce1,v137_2_q1,v137_3_address0,v137_3_ce0,v137_3_q0,v137_3_address1,v137_3_ce1,v137_3_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,trunc_ln41_2,v17_3,grp_fu_438_p_din0,grp_fu_438_p_din1,grp_fu_438_p_opcode,grp_fu_438_p_dout0,grp_fu_438_p_ce,grp_fu_442_p_din0,grp_fu_442_p_din1,grp_fu_442_p_opcode,grp_fu_442_p_dout0,grp_fu_442_p_ce,grp_fu_446_p_din0,grp_fu_446_p_din1,grp_fu_446_p_dout0,grp_fu_446_p_ce,grp_fu_450_p_din0,grp_fu_450_p_din1,grp_fu_450_p_dout0,grp_fu_450_p_ce);  
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
input  [1:0] tmp_61;
output  [9:0] v137_0_address0;
output   v137_0_ce0;
input  [31:0] v137_0_q0;
output  [9:0] v137_0_address1;
output   v137_0_ce1;
input  [31:0] v137_0_q1;
output  [9:0] v137_1_address0;
output   v137_1_ce0;
input  [31:0] v137_1_q0;
output  [9:0] v137_1_address1;
output   v137_1_ce1;
input  [31:0] v137_1_q1;
output  [9:0] v137_2_address0;
output   v137_2_ce0;
input  [31:0] v137_2_q0;
output  [9:0] v137_2_address1;
output   v137_2_ce1;
input  [31:0] v137_2_q1;
output  [9:0] v137_3_address0;
output   v137_3_ce0;
input  [31:0] v137_3_q0;
output  [9:0] v137_3_address1;
output   v137_3_ce1;
input  [31:0] v137_3_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
input  [1:0] trunc_ln41_2;
input  [31:0] v17_3;
output  [31:0] grp_fu_438_p_din0;
output  [31:0] grp_fu_438_p_din1;
output  [1:0] grp_fu_438_p_opcode;
input  [31:0] grp_fu_438_p_dout0;
output   grp_fu_438_p_ce;
output  [31:0] grp_fu_442_p_din0;
output  [31:0] grp_fu_442_p_din1;
output  [1:0] grp_fu_442_p_opcode;
input  [31:0] grp_fu_442_p_dout0;
output   grp_fu_442_p_ce;
output  [31:0] grp_fu_446_p_din0;
output  [31:0] grp_fu_446_p_din1;
input  [31:0] grp_fu_446_p_dout0;
output   grp_fu_446_p_ce;
output  [31:0] grp_fu_450_p_din0;
output  [31:0] grp_fu_450_p_din1;
input  [31:0] grp_fu_450_p_dout0;
output   grp_fu_450_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_1140;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_514;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_519;
reg   [6:0] v12_1_reg_1133;
wire   [0:0] tmp_fu_532_p3;
wire   [4:0] lshr_ln42_3_fu_562_p4;
reg   [4:0] lshr_ln42_3_reg_1164;
wire   [31:0] v16_fu_619_p11;
reg   [31:0] v16_reg_1189;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v23_fu_658_p11;
reg   [31:0] v23_reg_1194;
wire   [3:0] tmp_8_fu_681_p4;
reg   [3:0] tmp_8_reg_1199;
reg   [2:0] tmp_11_reg_1244;
reg   [0:0] tmp_1_reg_1254;
wire   [31:0] v29_fu_760_p11;
reg   [31:0] v29_reg_1260;
wire   [31:0] v35_fu_799_p11;
reg   [31:0] v35_reg_1265;
wire   [31:0] v41_fu_877_p11;
reg   [31:0] v41_reg_1310;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v47_fu_916_p11;
reg   [31:0] v47_reg_1315;
reg   [4:0] v10_0_addr_reg_1360;
reg   [4:0] v10_0_addr_reg_1360_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_1360_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_1365;
reg   [4:0] v10_1_addr_reg_1365_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_1365_pp0_iter3_reg;
reg   [4:0] v10_0_addr_1_reg_1370;
reg   [4:0] v10_0_addr_1_reg_1370_pp0_iter2_reg;
reg   [4:0] v10_0_addr_1_reg_1370_pp0_iter3_reg;
reg   [4:0] v10_1_addr_1_reg_1375;
reg   [4:0] v10_1_addr_1_reg_1375_pp0_iter2_reg;
reg   [4:0] v10_1_addr_1_reg_1375_pp0_iter3_reg;
wire   [31:0] v53_fu_1009_p11;
reg   [31:0] v53_reg_1380;
wire   [31:0] v59_fu_1048_p11;
reg   [31:0] v59_reg_1385;
reg   [31:0] v14_reg_1390;
reg   [31:0] v18_reg_1395;
reg   [31:0] v24_reg_1400;
reg   [4:0] v10_0_addr_2_reg_1405;
reg   [4:0] v10_0_addr_2_reg_1405_pp0_iter2_reg;
reg   [4:0] v10_0_addr_2_reg_1405_pp0_iter3_reg;
reg   [4:0] v10_1_addr_2_reg_1410;
reg   [4:0] v10_1_addr_2_reg_1410_pp0_iter2_reg;
reg   [4:0] v10_1_addr_2_reg_1410_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_1415;
reg   [4:0] v10_0_addr_3_reg_1415_pp0_iter2_reg;
reg   [4:0] v10_0_addr_3_reg_1415_pp0_iter3_reg;
reg   [4:0] v10_0_addr_3_reg_1415_pp0_iter4_reg;
reg   [4:0] v10_1_addr_3_reg_1420;
reg   [4:0] v10_1_addr_3_reg_1420_pp0_iter2_reg;
reg   [4:0] v10_1_addr_3_reg_1420_pp0_iter3_reg;
reg   [4:0] v10_1_addr_3_reg_1420_pp0_iter4_reg;
reg   [31:0] v21_reg_1425;
reg   [31:0] v27_reg_1430;
reg   [31:0] v33_reg_1435;
reg   [31:0] v30_reg_1440;
reg   [31:0] v36_reg_1445;
reg   [31:0] v39_reg_1450;
reg   [31:0] v45_reg_1455;
reg   [31:0] v51_reg_1460;
reg   [31:0] v57_reg_1465;
reg   [31:0] v42_reg_1470;
reg   [31:0] v48_reg_1475;
reg   [31:0] v54_reg_1480;
reg   [31:0] v60_reg_1485;
reg   [31:0] v31_reg_1490;
reg   [31:0] v37_reg_1495;
reg   [31:0] v55_reg_1500;
reg   [31:0] v61_reg_1505;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_554_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_584_p1;
wire   [63:0] zext_ln61_fu_701_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_720_p1;
wire   [63:0] zext_ln75_fu_832_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_853_p1;
wire   [63:0] zext_ln89_fu_949_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_967_p1;
wire   [63:0] zext_ln42_fu_975_p1;
wire   [63:0] zext_ln59_fu_987_p1;
wire   [63:0] zext_ln73_fu_1079_p1;
wire   [63:0] zext_ln87_fu_1092_p1;
reg   [6:0] v12_fu_102;
wire   [6:0] add_ln42_fu_592_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_1;
reg    v137_0_ce1_local;
reg   [9:0] v137_0_address1_local;
reg    v137_0_ce0_local;
reg   [9:0] v137_0_address0_local;
reg    v137_1_ce1_local;
reg   [9:0] v137_1_address1_local;
reg    v137_1_ce0_local;
reg   [9:0] v137_1_address0_local;
reg    v137_2_ce1_local;
reg   [9:0] v137_2_address1_local;
reg    v137_2_ce0_local;
reg   [9:0] v137_2_address0_local;
reg    v137_3_ce1_local;
reg   [9:0] v137_3_address1_local;
reg    v137_3_ce0_local;
reg   [9:0] v137_3_address0_local;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_498_p0;
reg   [31:0] grp_fu_498_p1;
reg   [31:0] grp_fu_502_p0;
reg   [31:0] grp_fu_502_p1;
reg   [31:0] grp_fu_506_p0;
reg   [31:0] grp_fu_510_p0;
wire   [5:0] trunc_ln42_fu_540_p1;
wire   [9:0] tmp_s_fu_544_p4;
wire   [9:0] tmp_7_fu_572_p5;
wire   [31:0] v16_fu_619_p2;
wire   [31:0] v16_fu_619_p4;
wire   [31:0] v16_fu_619_p6;
wire   [31:0] v16_fu_619_p8;
wire   [31:0] v16_fu_619_p9;
wire   [31:0] v23_fu_658_p2;
wire   [31:0] v23_fu_658_p4;
wire   [31:0] v23_fu_658_p6;
wire   [31:0] v23_fu_658_p8;
wire   [31:0] v23_fu_658_p9;
wire   [9:0] tmp_9_fu_690_p5;
wire   [9:0] tmp_10_fu_709_p5;
wire   [31:0] v29_fu_760_p2;
wire   [31:0] v29_fu_760_p4;
wire   [31:0] v29_fu_760_p6;
wire   [31:0] v29_fu_760_p8;
wire   [31:0] v29_fu_760_p9;
wire   [31:0] v35_fu_799_p2;
wire   [31:0] v35_fu_799_p4;
wire   [31:0] v35_fu_799_p6;
wire   [31:0] v35_fu_799_p8;
wire   [31:0] v35_fu_799_p9;
wire   [9:0] tmp_12_fu_822_p5;
wire   [9:0] tmp_13_fu_840_p7;
wire   [31:0] v41_fu_877_p2;
wire   [31:0] v41_fu_877_p4;
wire   [31:0] v41_fu_877_p6;
wire   [31:0] v41_fu_877_p8;
wire   [31:0] v41_fu_877_p9;
wire   [31:0] v47_fu_916_p2;
wire   [31:0] v47_fu_916_p4;
wire   [31:0] v47_fu_916_p6;
wire   [31:0] v47_fu_916_p8;
wire   [31:0] v47_fu_916_p9;
wire   [9:0] tmp_14_fu_939_p5;
wire   [9:0] tmp_15_fu_957_p5;
wire   [4:0] or_ln59_5_fu_980_p3;
wire   [31:0] v53_fu_1009_p2;
wire   [31:0] v53_fu_1009_p4;
wire   [31:0] v53_fu_1009_p6;
wire   [31:0] v53_fu_1009_p8;
wire   [31:0] v53_fu_1009_p9;
wire   [31:0] v59_fu_1048_p2;
wire   [31:0] v59_fu_1048_p4;
wire   [31:0] v59_fu_1048_p6;
wire   [31:0] v59_fu_1048_p8;
wire   [31:0] v59_fu_1048_p9;
wire   [4:0] or_ln73_5_fu_1071_p4;
wire   [4:0] or_ln87_5_fu_1085_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [1:0] v16_fu_619_p1;
wire   [1:0] v16_fu_619_p3;
wire  signed [1:0] v16_fu_619_p5;
wire  signed [1:0] v16_fu_619_p7;
wire   [1:0] v23_fu_658_p1;
wire   [1:0] v23_fu_658_p3;
wire  signed [1:0] v23_fu_658_p5;
wire  signed [1:0] v23_fu_658_p7;
wire   [1:0] v29_fu_760_p1;
wire   [1:0] v29_fu_760_p3;
wire  signed [1:0] v29_fu_760_p5;
wire  signed [1:0] v29_fu_760_p7;
wire   [1:0] v35_fu_799_p1;
wire   [1:0] v35_fu_799_p3;
wire  signed [1:0] v35_fu_799_p5;
wire  signed [1:0] v35_fu_799_p7;
wire   [1:0] v41_fu_877_p1;
wire   [1:0] v41_fu_877_p3;
wire  signed [1:0] v41_fu_877_p5;
wire  signed [1:0] v41_fu_877_p7;
wire   [1:0] v47_fu_916_p1;
wire   [1:0] v47_fu_916_p3;
wire  signed [1:0] v47_fu_916_p5;
wire  signed [1:0] v47_fu_916_p7;
wire   [1:0] v53_fu_1009_p1;
wire   [1:0] v53_fu_1009_p3;
wire  signed [1:0] v53_fu_1009_p5;
wire  signed [1:0] v53_fu_1009_p7;
wire   [1:0] v59_fu_1048_p1;
wire   [1:0] v59_fu_1048_p3;
wire  signed [1:0] v59_fu_1048_p5;
wire  signed [1:0] v59_fu_1048_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_102 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U287(.din0(v16_fu_619_p2),.din1(v16_fu_619_p4),.din2(v16_fu_619_p6),.din3(v16_fu_619_p8),.def(v16_fu_619_p9),.sel(trunc_ln41_2),.dout(v16_fu_619_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U288(.din0(v23_fu_658_p2),.din1(v23_fu_658_p4),.din2(v23_fu_658_p6),.din3(v23_fu_658_p8),.def(v23_fu_658_p9),.sel(trunc_ln41_2),.dout(v23_fu_658_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U289(.din0(v29_fu_760_p2),.din1(v29_fu_760_p4),.din2(v29_fu_760_p6),.din3(v29_fu_760_p8),.def(v29_fu_760_p9),.sel(trunc_ln41_2),.dout(v29_fu_760_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U290(.din0(v35_fu_799_p2),.din1(v35_fu_799_p4),.din2(v35_fu_799_p6),.din3(v35_fu_799_p8),.def(v35_fu_799_p9),.sel(trunc_ln41_2),.dout(v35_fu_799_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U291(.din0(v41_fu_877_p2),.din1(v41_fu_877_p4),.din2(v41_fu_877_p6),.din3(v41_fu_877_p8),.def(v41_fu_877_p9),.sel(trunc_ln41_2),.dout(v41_fu_877_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U292(.din0(v47_fu_916_p2),.din1(v47_fu_916_p4),.din2(v47_fu_916_p6),.din3(v47_fu_916_p8),.def(v47_fu_916_p9),.sel(trunc_ln41_2),.dout(v47_fu_916_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U293(.din0(v53_fu_1009_p2),.din1(v53_fu_1009_p4),.din2(v53_fu_1009_p6),.din3(v53_fu_1009_p8),.def(v53_fu_1009_p9),.sel(trunc_ln41_2),.dout(v53_fu_1009_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U294(.din0(v59_fu_1048_p2),.din1(v59_fu_1048_p4),.din2(v59_fu_1048_p6),.din3(v59_fu_1048_p8),.def(v59_fu_1048_p9),.sel(trunc_ln41_2),.dout(v59_fu_1048_p11));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_532_p3 == 1'd0))) begin
            v12_fu_102 <= add_ln42_fu_592_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_102 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v41_reg_1310 <= v41_fu_877_p11;
        v47_reg_1315 <= v47_fu_916_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln42_3_reg_1164 <= {{ap_sig_allocacmp_v12_1[5:1]}};
        tmp_reg_1140 <= ap_sig_allocacmp_v12_1[32'd6];
        v10_0_addr_1_reg_1370[4 : 1] <= zext_ln59_fu_987_p1[4 : 1];
        v10_0_addr_1_reg_1370_pp0_iter2_reg[4 : 1] <= v10_0_addr_1_reg_1370[4 : 1];
        v10_0_addr_1_reg_1370_pp0_iter3_reg[4 : 1] <= v10_0_addr_1_reg_1370_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_1360 <= zext_ln42_fu_975_p1;
        v10_0_addr_reg_1360_pp0_iter2_reg <= v10_0_addr_reg_1360;
        v10_0_addr_reg_1360_pp0_iter3_reg <= v10_0_addr_reg_1360_pp0_iter2_reg;
        v10_1_addr_1_reg_1375[4 : 1] <= zext_ln59_fu_987_p1[4 : 1];
        v10_1_addr_1_reg_1375_pp0_iter2_reg[4 : 1] <= v10_1_addr_1_reg_1375[4 : 1];
        v10_1_addr_1_reg_1375_pp0_iter3_reg[4 : 1] <= v10_1_addr_1_reg_1375_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_1365 <= zext_ln42_fu_975_p1;
        v10_1_addr_reg_1365_pp0_iter2_reg <= v10_1_addr_reg_1365;
        v10_1_addr_reg_1365_pp0_iter3_reg <= v10_1_addr_reg_1365_pp0_iter2_reg;
        v12_1_reg_1133 <= ap_sig_allocacmp_v12_1;
        v53_reg_1380 <= v53_fu_1009_p11;
        v59_reg_1385 <= v59_fu_1048_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_514 <= grp_fu_438_p_dout0;
        reg_519 <= grp_fu_442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_11_reg_1244 <= {{v12_1_reg_1133[5:3]}};
        tmp_1_reg_1254 <= v12_1_reg_1133[32'd1];
        tmp_8_reg_1199 <= {{v12_1_reg_1133[5:2]}};
        v10_0_addr_2_reg_1405[0] <= zext_ln73_fu_1079_p1[0];
v10_0_addr_2_reg_1405[4 : 2] <= zext_ln73_fu_1079_p1[4 : 2];
        v10_0_addr_2_reg_1405_pp0_iter2_reg[0] <= v10_0_addr_2_reg_1405[0];
v10_0_addr_2_reg_1405_pp0_iter2_reg[4 : 2] <= v10_0_addr_2_reg_1405[4 : 2];
        v10_0_addr_2_reg_1405_pp0_iter3_reg[0] <= v10_0_addr_2_reg_1405_pp0_iter2_reg[0];
v10_0_addr_2_reg_1405_pp0_iter3_reg[4 : 2] <= v10_0_addr_2_reg_1405_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_1415[4 : 2] <= zext_ln87_fu_1092_p1[4 : 2];
        v10_0_addr_3_reg_1415_pp0_iter2_reg[4 : 2] <= v10_0_addr_3_reg_1415[4 : 2];
        v10_0_addr_3_reg_1415_pp0_iter3_reg[4 : 2] <= v10_0_addr_3_reg_1415_pp0_iter2_reg[4 : 2];
        v10_0_addr_3_reg_1415_pp0_iter4_reg[4 : 2] <= v10_0_addr_3_reg_1415_pp0_iter3_reg[4 : 2];
        v10_1_addr_2_reg_1410[0] <= zext_ln73_fu_1079_p1[0];
v10_1_addr_2_reg_1410[4 : 2] <= zext_ln73_fu_1079_p1[4 : 2];
        v10_1_addr_2_reg_1410_pp0_iter2_reg[0] <= v10_1_addr_2_reg_1410[0];
v10_1_addr_2_reg_1410_pp0_iter2_reg[4 : 2] <= v10_1_addr_2_reg_1410[4 : 2];
        v10_1_addr_2_reg_1410_pp0_iter3_reg[0] <= v10_1_addr_2_reg_1410_pp0_iter2_reg[0];
v10_1_addr_2_reg_1410_pp0_iter3_reg[4 : 2] <= v10_1_addr_2_reg_1410_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_1420[4 : 2] <= zext_ln87_fu_1092_p1[4 : 2];
        v10_1_addr_3_reg_1420_pp0_iter2_reg[4 : 2] <= v10_1_addr_3_reg_1420[4 : 2];
        v10_1_addr_3_reg_1420_pp0_iter3_reg[4 : 2] <= v10_1_addr_3_reg_1420_pp0_iter2_reg[4 : 2];
        v10_1_addr_3_reg_1420_pp0_iter4_reg[4 : 2] <= v10_1_addr_3_reg_1420_pp0_iter3_reg[4 : 2];
        v16_reg_1189 <= v16_fu_619_p11;
        v23_reg_1194 <= v23_fu_658_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_1390 <= v10_0_q1;
        v18_reg_1395 <= grp_fu_446_p_dout0;
        v21_reg_1425 <= v10_1_q1;
        v24_reg_1400 <= grp_fu_450_p_dout0;
        v27_reg_1430 <= v10_0_q0;
        v33_reg_1435 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_reg_1260 <= v29_fu_760_p11;
        v35_reg_1265 <= v35_fu_799_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_1440 <= grp_fu_446_p_dout0;
        v36_reg_1445 <= grp_fu_450_p_dout0;
        v39_reg_1450 <= v10_0_q1;
        v45_reg_1455 <= v10_1_q1;
        v51_reg_1460 <= v10_0_q0;
        v57_reg_1465 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_1490 <= grp_fu_438_p_dout0;
        v37_reg_1495 <= grp_fu_442_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_1470 <= grp_fu_446_p_dout0;
        v48_reg_1475 <= grp_fu_450_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_1480 <= grp_fu_446_p_dout0;
        v60_reg_1485 <= grp_fu_450_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_1500 <= grp_fu_438_p_dout0;
        v61_reg_1505 <= grp_fu_442_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1140 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v12_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_1 = v12_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_498_p0 = v51_reg_1460;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_498_p0 = v39_reg_1450;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_498_p0 = v27_reg_1430;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_498_p0 = v14_reg_1390;
    end else begin
        grp_fu_498_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_498_p1 = v54_reg_1480;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_498_p1 = v42_reg_1470;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_498_p1 = v30_reg_1440;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_498_p1 = v18_reg_1395;
    end else begin
        grp_fu_498_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_502_p0 = v57_reg_1465;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_502_p0 = v45_reg_1455;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_502_p0 = v33_reg_1435;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_502_p0 = v21_reg_1425;
    end else begin
        grp_fu_502_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_502_p1 = v60_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_502_p1 = v48_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_502_p1 = v36_reg_1445;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_502_p1 = v24_reg_1400;
    end else begin
        grp_fu_502_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_506_p0 = v53_reg_1380;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_506_p0 = v41_reg_1310;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_506_p0 = v29_reg_1260;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_506_p0 = v16_reg_1189;
    end else begin
        grp_fu_506_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_510_p0 = v59_reg_1385;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_510_p0 = v47_reg_1315;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_510_p0 = v35_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_510_p0 = v23_reg_1194;
    end else begin
        grp_fu_510_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_3_reg_1415_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_1_reg_1370_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_987_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_2_reg_1405_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_1360_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_1079_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_975_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_d0_local = v55_reg_1500;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_1490;
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = v10_1_addr_3_reg_1420_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_1_reg_1375_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_987_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_2_reg_1410_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_1365_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_1079_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_975_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_d0_local = v61_reg_1505;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_1495;
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_0_address0_local = zext_ln96_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address0_local = zext_ln82_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address0_local = zext_ln68_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address0_local = zext_ln54_fu_584_p1;
        end else begin
            v137_0_address0_local = 'bx;
        end
    end else begin
        v137_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_0_address1_local = zext_ln89_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address1_local = zext_ln75_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address1_local = zext_ln61_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address1_local = zext_ln46_fu_554_p1;
        end else begin
            v137_0_address1_local = 'bx;
        end
    end else begin
        v137_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v137_0_ce0_local = 1'b1;
    end else begin
        v137_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v137_0_ce1_local = 1'b1;
    end else begin
        v137_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_1_address0_local = zext_ln96_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_1_address0_local = zext_ln82_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_1_address0_local = zext_ln68_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_1_address0_local = zext_ln54_fu_584_p1;
        end else begin
            v137_1_address0_local = 'bx;
        end
    end else begin
        v137_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_1_address1_local = zext_ln89_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_1_address1_local = zext_ln75_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_1_address1_local = zext_ln61_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_1_address1_local = zext_ln46_fu_554_p1;
        end else begin
            v137_1_address1_local = 'bx;
        end
    end else begin
        v137_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v137_1_ce0_local = 1'b1;
    end else begin
        v137_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v137_1_ce1_local = 1'b1;
    end else begin
        v137_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_2_address0_local = zext_ln96_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_2_address0_local = zext_ln82_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_2_address0_local = zext_ln68_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_2_address0_local = zext_ln54_fu_584_p1;
        end else begin
            v137_2_address0_local = 'bx;
        end
    end else begin
        v137_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_2_address1_local = zext_ln89_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_2_address1_local = zext_ln75_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_2_address1_local = zext_ln61_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_2_address1_local = zext_ln46_fu_554_p1;
        end else begin
            v137_2_address1_local = 'bx;
        end
    end else begin
        v137_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v137_2_ce0_local = 1'b1;
    end else begin
        v137_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v137_2_ce1_local = 1'b1;
    end else begin
        v137_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_3_address0_local = zext_ln96_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_3_address0_local = zext_ln82_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_3_address0_local = zext_ln68_fu_720_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_3_address0_local = zext_ln54_fu_584_p1;
        end else begin
            v137_3_address0_local = 'bx;
        end
    end else begin
        v137_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_3_address1_local = zext_ln89_fu_949_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_3_address1_local = zext_ln75_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_3_address1_local = zext_ln61_fu_701_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_3_address1_local = zext_ln46_fu_554_p1;
        end else begin
            v137_3_address1_local = 'bx;
        end
    end else begin
        v137_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v137_3_ce0_local = 1'b1;
    end else begin
        v137_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v137_3_ce1_local = 1'b1;
    end else begin
        v137_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign add_ln42_fu_592_p2 = (ap_sig_allocacmp_v12_1 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_438_p_ce = 1'b1;
assign grp_fu_438_p_din0 = grp_fu_498_p0;
assign grp_fu_438_p_din1 = grp_fu_498_p1;
assign grp_fu_438_p_opcode = 2'd0;
assign grp_fu_442_p_ce = 1'b1;
assign grp_fu_442_p_din0 = grp_fu_502_p0;
assign grp_fu_442_p_din1 = grp_fu_502_p1;
assign grp_fu_442_p_opcode = 2'd0;
assign grp_fu_446_p_ce = 1'b1;
assign grp_fu_446_p_din0 = grp_fu_506_p0;
assign grp_fu_446_p_din1 = v17_3;
assign grp_fu_450_p_ce = 1'b1;
assign grp_fu_450_p_din0 = grp_fu_510_p0;
assign grp_fu_450_p_din1 = v17_3;
assign lshr_ln42_3_fu_562_p4 = {{ap_sig_allocacmp_v12_1[5:1]}};
assign or_ln59_5_fu_980_p3 = {{tmp_8_reg_1199}, {1'd1}};
assign or_ln73_5_fu_1071_p4 = {{{tmp_11_reg_1244}, {1'd1}}, {tmp_1_reg_1254}};
assign or_ln87_5_fu_1085_p3 = {{tmp_11_reg_1244}, {2'd3}};
assign tmp_10_fu_709_p5 = {{{{tmp_8_fu_681_p4}, {2'd3}}, {tmp_61}}, {2'd3}};
assign tmp_12_fu_822_p5 = {{{{tmp_11_reg_1244}, {3'd4}}, {tmp_61}}, {2'd3}};
assign tmp_13_fu_840_p7 = {{{{{{tmp_11_reg_1244}, {1'd1}}, {tmp_1_reg_1254}}, {1'd1}}, {tmp_61}}, {2'd3}};
assign tmp_14_fu_939_p5 = {{{{tmp_11_reg_1244}, {3'd6}}, {tmp_61}}, {2'd3}};
assign tmp_15_fu_957_p5 = {{{{tmp_11_reg_1244}, {3'd7}}, {tmp_61}}, {2'd3}};
assign tmp_7_fu_572_p5 = {{{{lshr_ln42_3_fu_562_p4}, {1'd1}}, {tmp_61}}, {2'd3}};
assign tmp_8_fu_681_p4 = {{v12_1_reg_1133[5:2]}};
assign tmp_9_fu_690_p5 = {{{{tmp_8_fu_681_p4}, {2'd2}}, {tmp_61}}, {2'd3}};
assign tmp_fu_532_p3 = ap_sig_allocacmp_v12_1[32'd6];
assign tmp_s_fu_544_p4 = {{{trunc_ln42_fu_540_p1}, {tmp_61}}, {2'd3}};
assign trunc_ln42_fu_540_p1 = ap_sig_allocacmp_v12_1[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_514;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_519;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_0_address0 = v137_0_address0_local;
assign v137_0_address1 = v137_0_address1_local;
assign v137_0_ce0 = v137_0_ce0_local;
assign v137_0_ce1 = v137_0_ce1_local;
assign v137_1_address0 = v137_1_address0_local;
assign v137_1_address1 = v137_1_address1_local;
assign v137_1_ce0 = v137_1_ce0_local;
assign v137_1_ce1 = v137_1_ce1_local;
assign v137_2_address0 = v137_2_address0_local;
assign v137_2_address1 = v137_2_address1_local;
assign v137_2_ce0 = v137_2_ce0_local;
assign v137_2_ce1 = v137_2_ce1_local;
assign v137_3_address0 = v137_3_address0_local;
assign v137_3_address1 = v137_3_address1_local;
assign v137_3_ce0 = v137_3_ce0_local;
assign v137_3_ce1 = v137_3_ce1_local;
assign v16_fu_619_p2 = v137_0_q1;
assign v16_fu_619_p4 = v137_1_q1;
assign v16_fu_619_p6 = v137_2_q1;
assign v16_fu_619_p8 = v137_3_q1;
assign v16_fu_619_p9 = 'bx;
assign v23_fu_658_p2 = v137_0_q0;
assign v23_fu_658_p4 = v137_1_q0;
assign v23_fu_658_p6 = v137_2_q0;
assign v23_fu_658_p8 = v137_3_q0;
assign v23_fu_658_p9 = 'bx;
assign v29_fu_760_p2 = v137_0_q1;
assign v29_fu_760_p4 = v137_1_q1;
assign v29_fu_760_p6 = v137_2_q1;
assign v29_fu_760_p8 = v137_3_q1;
assign v29_fu_760_p9 = 'bx;
assign v35_fu_799_p2 = v137_0_q0;
assign v35_fu_799_p4 = v137_1_q0;
assign v35_fu_799_p6 = v137_2_q0;
assign v35_fu_799_p8 = v137_3_q0;
assign v35_fu_799_p9 = 'bx;
assign v41_fu_877_p2 = v137_0_q1;
assign v41_fu_877_p4 = v137_1_q1;
assign v41_fu_877_p6 = v137_2_q1;
assign v41_fu_877_p8 = v137_3_q1;
assign v41_fu_877_p9 = 'bx;
assign v47_fu_916_p2 = v137_0_q0;
assign v47_fu_916_p4 = v137_1_q0;
assign v47_fu_916_p6 = v137_2_q0;
assign v47_fu_916_p8 = v137_3_q0;
assign v47_fu_916_p9 = 'bx;
assign v53_fu_1009_p2 = v137_0_q1;
assign v53_fu_1009_p4 = v137_1_q1;
assign v53_fu_1009_p6 = v137_2_q1;
assign v53_fu_1009_p8 = v137_3_q1;
assign v53_fu_1009_p9 = 'bx;
assign v59_fu_1048_p2 = v137_0_q0;
assign v59_fu_1048_p4 = v137_1_q0;
assign v59_fu_1048_p6 = v137_2_q0;
assign v59_fu_1048_p8 = v137_3_q0;
assign v59_fu_1048_p9 = 'bx;
assign zext_ln42_fu_975_p1 = lshr_ln42_3_reg_1164;
assign zext_ln46_fu_554_p1 = tmp_s_fu_544_p4;
assign zext_ln54_fu_584_p1 = tmp_7_fu_572_p5;
assign zext_ln59_fu_987_p1 = or_ln59_5_fu_980_p3;
assign zext_ln61_fu_701_p1 = tmp_9_fu_690_p5;
assign zext_ln68_fu_720_p1 = tmp_10_fu_709_p5;
assign zext_ln73_fu_1079_p1 = or_ln73_5_fu_1071_p4;
assign zext_ln75_fu_832_p1 = tmp_12_fu_822_p5;
assign zext_ln82_fu_853_p1 = tmp_13_fu_840_p7;
assign zext_ln87_fu_1092_p1 = or_ln87_5_fu_1085_p3;
assign zext_ln89_fu_949_p1 = tmp_14_fu_939_p5;
assign zext_ln96_fu_967_p1 = tmp_15_fu_957_p5;
always @ (posedge ap_clk) begin
    v10_0_addr_1_reg_1370[0] <= 1'b1;
    v10_0_addr_1_reg_1370_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_1_reg_1370_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_1_reg_1375[0] <= 1'b1;
    v10_1_addr_1_reg_1375_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_1_reg_1375_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_2_reg_1405[1] <= 1'b1;
    v10_0_addr_2_reg_1405_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_2_reg_1405_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_2_reg_1410[1] <= 1'b1;
    v10_1_addr_2_reg_1410_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_2_reg_1410_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_3_reg_1415[1:0] <= 2'b11;
    v10_0_addr_3_reg_1415_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_1415_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_3_reg_1415_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1420[1:0] <= 2'b11;
    v10_1_addr_3_reg_1420_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1420_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_3_reg_1420_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
