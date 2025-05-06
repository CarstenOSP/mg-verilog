
module bicg_bicg_node1_Pipeline_label_26 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty_13,empty,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v137_2_address0,v137_2_ce0,v137_2_q0,v137_2_address1,v137_2_ce1,v137_2_q1,v137_3_address0,v137_3_ce0,v137_3_q0,v137_3_address1,v137_3_ce1,v137_3_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,trunc_ln41_2,v17_5,grp_fu_729_p_din0,grp_fu_729_p_din1,grp_fu_729_p_opcode,grp_fu_729_p_dout0,grp_fu_729_p_ce,grp_fu_733_p_din0,grp_fu_733_p_din1,grp_fu_733_p_opcode,grp_fu_733_p_dout0,grp_fu_733_p_ce,grp_fu_737_p_din0,grp_fu_737_p_din1,grp_fu_737_p_dout0,grp_fu_737_p_ce,grp_fu_741_p_din0,grp_fu_741_p_din1,grp_fu_741_p_dout0,grp_fu_741_p_ce);  
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
input  [0:0] empty_13;
input  [0:0] empty;
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
input  [31:0] v17_5;
output  [31:0] grp_fu_729_p_din0;
output  [31:0] grp_fu_729_p_din1;
output  [1:0] grp_fu_729_p_opcode;
input  [31:0] grp_fu_729_p_dout0;
output   grp_fu_729_p_ce;
output  [31:0] grp_fu_733_p_din0;
output  [31:0] grp_fu_733_p_din1;
output  [1:0] grp_fu_733_p_opcode;
input  [31:0] grp_fu_733_p_dout0;
output   grp_fu_733_p_ce;
output  [31:0] grp_fu_737_p_din0;
output  [31:0] grp_fu_737_p_din1;
input  [31:0] grp_fu_737_p_dout0;
output   grp_fu_737_p_ce;
output  [31:0] grp_fu_741_p_din0;
output  [31:0] grp_fu_741_p_din1;
input  [31:0] grp_fu_741_p_dout0;
output   grp_fu_741_p_ce;
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
reg   [0:0] tmp_12_reg_1186;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_524;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_529;
reg   [6:0] v12_3_reg_1179;
wire   [0:0] tmp_12_fu_542_p3;
wire   [4:0] lshr_ln42_5_fu_576_p4;
reg   [4:0] lshr_ln42_5_reg_1210;
wire   [31:0] v16_fu_637_p11;
reg   [31:0] v16_reg_1235;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v23_fu_676_p11;
reg   [31:0] v23_reg_1240;
wire   [3:0] tmp_22_fu_699_p4;
reg   [3:0] tmp_22_reg_1245;
reg   [2:0] tmp_25_reg_1290;
reg   [0:0] tmp_13_reg_1300;
wire   [31:0] v29_fu_784_p11;
reg   [31:0] v29_reg_1306;
wire   [31:0] v35_fu_823_p11;
reg   [31:0] v35_reg_1311;
wire   [31:0] v41_fu_907_p11;
reg   [31:0] v41_reg_1356;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v47_fu_946_p11;
reg   [31:0] v47_reg_1361;
reg   [4:0] v10_0_addr_reg_1406;
reg   [4:0] v10_0_addr_reg_1406_pp0_iter2_reg;
reg   [4:0] v10_0_addr_reg_1406_pp0_iter3_reg;
reg   [4:0] v10_1_addr_reg_1411;
reg   [4:0] v10_1_addr_reg_1411_pp0_iter2_reg;
reg   [4:0] v10_1_addr_reg_1411_pp0_iter3_reg;
reg   [4:0] v10_0_addr_7_reg_1416;
reg   [4:0] v10_0_addr_7_reg_1416_pp0_iter2_reg;
reg   [4:0] v10_0_addr_7_reg_1416_pp0_iter3_reg;
reg   [4:0] v10_1_addr_7_reg_1421;
reg   [4:0] v10_1_addr_7_reg_1421_pp0_iter2_reg;
reg   [4:0] v10_1_addr_7_reg_1421_pp0_iter3_reg;
wire   [31:0] v53_fu_1045_p11;
reg   [31:0] v53_reg_1426;
wire   [31:0] v59_fu_1084_p11;
reg   [31:0] v59_reg_1431;
reg   [31:0] v14_1_reg_1436;
reg   [31:0] v18_reg_1441;
reg   [31:0] v24_reg_1446;
reg   [4:0] v10_0_addr_8_reg_1451;
reg   [4:0] v10_0_addr_8_reg_1451_pp0_iter2_reg;
reg   [4:0] v10_0_addr_8_reg_1451_pp0_iter3_reg;
reg   [4:0] v10_1_addr_8_reg_1456;
reg   [4:0] v10_1_addr_8_reg_1456_pp0_iter2_reg;
reg   [4:0] v10_1_addr_8_reg_1456_pp0_iter3_reg;
reg   [4:0] v10_0_addr_9_reg_1461;
reg   [4:0] v10_0_addr_9_reg_1461_pp0_iter2_reg;
reg   [4:0] v10_0_addr_9_reg_1461_pp0_iter3_reg;
reg   [4:0] v10_0_addr_9_reg_1461_pp0_iter4_reg;
reg   [4:0] v10_1_addr_9_reg_1466;
reg   [4:0] v10_1_addr_9_reg_1466_pp0_iter2_reg;
reg   [4:0] v10_1_addr_9_reg_1466_pp0_iter3_reg;
reg   [4:0] v10_1_addr_9_reg_1466_pp0_iter4_reg;
reg   [31:0] v21_1_reg_1471;
reg   [31:0] v27_reg_1476;
reg   [31:0] v33_reg_1481;
reg   [31:0] v30_reg_1486;
reg   [31:0] v36_reg_1491;
reg   [31:0] v39_reg_1496;
reg   [31:0] v45_reg_1501;
reg   [31:0] v51_reg_1506;
reg   [31:0] v57_reg_1511;
reg   [31:0] v42_reg_1516;
reg   [31:0] v48_reg_1521;
reg   [31:0] v54_reg_1526;
reg   [31:0] v60_reg_1531;
reg   [31:0] v31_reg_1536;
reg   [31:0] v37_reg_1541;
reg   [31:0] v55_reg_1546;
reg   [31:0] v61_reg_1551;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_568_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_602_p1;
wire   [63:0] zext_ln61_fu_722_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_744_p1;
wire   [63:0] zext_ln75_fu_859_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_883_p1;
wire   [63:0] zext_ln89_fu_982_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_1003_p1;
wire   [63:0] zext_ln42_fu_1011_p1;
wire   [63:0] zext_ln59_fu_1023_p1;
wire   [63:0] zext_ln73_fu_1115_p1;
wire   [63:0] zext_ln87_fu_1128_p1;
reg   [6:0] v12_fu_106;
wire   [6:0] add_ln42_fu_610_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_3;
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
reg   [31:0] grp_fu_508_p0;
reg   [31:0] grp_fu_508_p1;
reg   [31:0] grp_fu_512_p0;
reg   [31:0] grp_fu_512_p1;
reg   [31:0] grp_fu_516_p0;
reg   [31:0] grp_fu_520_p0;
wire   [5:0] trunc_ln42_fu_550_p1;
wire   [9:0] tmp_s_fu_554_p6;
wire   [9:0] tmp_21_fu_586_p7;
wire   [31:0] v16_fu_637_p2;
wire   [31:0] v16_fu_637_p4;
wire   [31:0] v16_fu_637_p6;
wire   [31:0] v16_fu_637_p8;
wire   [31:0] v16_fu_637_p9;
wire   [31:0] v23_fu_676_p2;
wire   [31:0] v23_fu_676_p4;
wire   [31:0] v23_fu_676_p6;
wire   [31:0] v23_fu_676_p8;
wire   [31:0] v23_fu_676_p9;
wire   [9:0] tmp_23_fu_708_p7;
wire   [9:0] tmp_24_fu_730_p7;
wire   [31:0] v29_fu_784_p2;
wire   [31:0] v29_fu_784_p4;
wire   [31:0] v29_fu_784_p6;
wire   [31:0] v29_fu_784_p8;
wire   [31:0] v29_fu_784_p9;
wire   [31:0] v35_fu_823_p2;
wire   [31:0] v35_fu_823_p4;
wire   [31:0] v35_fu_823_p6;
wire   [31:0] v35_fu_823_p8;
wire   [31:0] v35_fu_823_p9;
wire   [9:0] tmp_26_fu_846_p7;
wire   [9:0] tmp_27_fu_867_p9;
wire   [31:0] v41_fu_907_p2;
wire   [31:0] v41_fu_907_p4;
wire   [31:0] v41_fu_907_p6;
wire   [31:0] v41_fu_907_p8;
wire   [31:0] v41_fu_907_p9;
wire   [31:0] v47_fu_946_p2;
wire   [31:0] v47_fu_946_p4;
wire   [31:0] v47_fu_946_p6;
wire   [31:0] v47_fu_946_p8;
wire   [31:0] v47_fu_946_p9;
wire   [9:0] tmp_28_fu_969_p7;
wire   [9:0] tmp_29_fu_990_p7;
wire   [4:0] or_ln59_9_fu_1016_p3;
wire   [31:0] v53_fu_1045_p2;
wire   [31:0] v53_fu_1045_p4;
wire   [31:0] v53_fu_1045_p6;
wire   [31:0] v53_fu_1045_p8;
wire   [31:0] v53_fu_1045_p9;
wire   [31:0] v59_fu_1084_p2;
wire   [31:0] v59_fu_1084_p4;
wire   [31:0] v59_fu_1084_p6;
wire   [31:0] v59_fu_1084_p8;
wire   [31:0] v59_fu_1084_p9;
wire   [4:0] or_ln73_9_fu_1107_p4;
wire   [4:0] or_ln87_9_fu_1121_p3;
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
wire   [1:0] v16_fu_637_p1;
wire   [1:0] v16_fu_637_p3;
wire  signed [1:0] v16_fu_637_p5;
wire  signed [1:0] v16_fu_637_p7;
wire   [1:0] v23_fu_676_p1;
wire   [1:0] v23_fu_676_p3;
wire  signed [1:0] v23_fu_676_p5;
wire  signed [1:0] v23_fu_676_p7;
wire   [1:0] v29_fu_784_p1;
wire   [1:0] v29_fu_784_p3;
wire  signed [1:0] v29_fu_784_p5;
wire  signed [1:0] v29_fu_784_p7;
wire   [1:0] v35_fu_823_p1;
wire   [1:0] v35_fu_823_p3;
wire  signed [1:0] v35_fu_823_p5;
wire  signed [1:0] v35_fu_823_p7;
wire   [1:0] v41_fu_907_p1;
wire   [1:0] v41_fu_907_p3;
wire  signed [1:0] v41_fu_907_p5;
wire  signed [1:0] v41_fu_907_p7;
wire   [1:0] v47_fu_946_p1;
wire   [1:0] v47_fu_946_p3;
wire  signed [1:0] v47_fu_946_p5;
wire  signed [1:0] v47_fu_946_p7;
wire   [1:0] v53_fu_1045_p1;
wire   [1:0] v53_fu_1045_p3;
wire  signed [1:0] v53_fu_1045_p5;
wire  signed [1:0] v53_fu_1045_p7;
wire   [1:0] v59_fu_1084_p1;
wire   [1:0] v59_fu_1084_p3;
wire  signed [1:0] v59_fu_1084_p5;
wire  signed [1:0] v59_fu_1084_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U393(.din0(v16_fu_637_p2),.din1(v16_fu_637_p4),.din2(v16_fu_637_p6),.din3(v16_fu_637_p8),.def(v16_fu_637_p9),.sel(trunc_ln41_2),.dout(v16_fu_637_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U394(.din0(v23_fu_676_p2),.din1(v23_fu_676_p4),.din2(v23_fu_676_p6),.din3(v23_fu_676_p8),.def(v23_fu_676_p9),.sel(trunc_ln41_2),.dout(v23_fu_676_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U395(.din0(v29_fu_784_p2),.din1(v29_fu_784_p4),.din2(v29_fu_784_p6),.din3(v29_fu_784_p8),.def(v29_fu_784_p9),.sel(trunc_ln41_2),.dout(v29_fu_784_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U396(.din0(v35_fu_823_p2),.din1(v35_fu_823_p4),.din2(v35_fu_823_p6),.din3(v35_fu_823_p8),.def(v35_fu_823_p9),.sel(trunc_ln41_2),.dout(v35_fu_823_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U397(.din0(v41_fu_907_p2),.din1(v41_fu_907_p4),.din2(v41_fu_907_p6),.din3(v41_fu_907_p8),.def(v41_fu_907_p9),.sel(trunc_ln41_2),.dout(v41_fu_907_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U398(.din0(v47_fu_946_p2),.din1(v47_fu_946_p4),.din2(v47_fu_946_p6),.din3(v47_fu_946_p8),.def(v47_fu_946_p9),.sel(trunc_ln41_2),.dout(v47_fu_946_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U399(.din0(v53_fu_1045_p2),.din1(v53_fu_1045_p4),.din2(v53_fu_1045_p6),.din3(v53_fu_1045_p8),.def(v53_fu_1045_p9),.sel(trunc_ln41_2),.dout(v53_fu_1045_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U400(.din0(v59_fu_1084_p2),.din1(v59_fu_1084_p4),.din2(v59_fu_1084_p6),.din3(v59_fu_1084_p8),.def(v59_fu_1084_p9),.sel(trunc_ln41_2),.dout(v59_fu_1084_p11));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_12_fu_542_p3 == 1'd0))) begin
            v12_fu_106 <= add_ln42_fu_610_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_106 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        v41_reg_1356 <= v41_fu_907_p11;
        v47_reg_1361 <= v47_fu_946_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln42_5_reg_1210 <= {{ap_sig_allocacmp_v12_3[5:1]}};
        tmp_12_reg_1186 <= ap_sig_allocacmp_v12_3[32'd6];
        v10_0_addr_7_reg_1416[4 : 1] <= zext_ln59_fu_1023_p1[4 : 1];
        v10_0_addr_7_reg_1416_pp0_iter2_reg[4 : 1] <= v10_0_addr_7_reg_1416[4 : 1];
        v10_0_addr_7_reg_1416_pp0_iter3_reg[4 : 1] <= v10_0_addr_7_reg_1416_pp0_iter2_reg[4 : 1];
        v10_0_addr_reg_1406 <= zext_ln42_fu_1011_p1;
        v10_0_addr_reg_1406_pp0_iter2_reg <= v10_0_addr_reg_1406;
        v10_0_addr_reg_1406_pp0_iter3_reg <= v10_0_addr_reg_1406_pp0_iter2_reg;
        v10_1_addr_7_reg_1421[4 : 1] <= zext_ln59_fu_1023_p1[4 : 1];
        v10_1_addr_7_reg_1421_pp0_iter2_reg[4 : 1] <= v10_1_addr_7_reg_1421[4 : 1];
        v10_1_addr_7_reg_1421_pp0_iter3_reg[4 : 1] <= v10_1_addr_7_reg_1421_pp0_iter2_reg[4 : 1];
        v10_1_addr_reg_1411 <= zext_ln42_fu_1011_p1;
        v10_1_addr_reg_1411_pp0_iter2_reg <= v10_1_addr_reg_1411;
        v10_1_addr_reg_1411_pp0_iter3_reg <= v10_1_addr_reg_1411_pp0_iter2_reg;
        v12_3_reg_1179 <= ap_sig_allocacmp_v12_3;
        v53_reg_1426 <= v53_fu_1045_p11;
        v59_reg_1431 <= v59_fu_1084_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_524 <= grp_fu_729_p_dout0;
        reg_529 <= grp_fu_733_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_13_reg_1300 <= v12_3_reg_1179[32'd1];
        tmp_22_reg_1245 <= {{v12_3_reg_1179[5:2]}};
        tmp_25_reg_1290 <= {{v12_3_reg_1179[5:3]}};
        v10_0_addr_8_reg_1451[0] <= zext_ln73_fu_1115_p1[0];
v10_0_addr_8_reg_1451[4 : 2] <= zext_ln73_fu_1115_p1[4 : 2];
        v10_0_addr_8_reg_1451_pp0_iter2_reg[0] <= v10_0_addr_8_reg_1451[0];
v10_0_addr_8_reg_1451_pp0_iter2_reg[4 : 2] <= v10_0_addr_8_reg_1451[4 : 2];
        v10_0_addr_8_reg_1451_pp0_iter3_reg[0] <= v10_0_addr_8_reg_1451_pp0_iter2_reg[0];
v10_0_addr_8_reg_1451_pp0_iter3_reg[4 : 2] <= v10_0_addr_8_reg_1451_pp0_iter2_reg[4 : 2];
        v10_0_addr_9_reg_1461[4 : 2] <= zext_ln87_fu_1128_p1[4 : 2];
        v10_0_addr_9_reg_1461_pp0_iter2_reg[4 : 2] <= v10_0_addr_9_reg_1461[4 : 2];
        v10_0_addr_9_reg_1461_pp0_iter3_reg[4 : 2] <= v10_0_addr_9_reg_1461_pp0_iter2_reg[4 : 2];
        v10_0_addr_9_reg_1461_pp0_iter4_reg[4 : 2] <= v10_0_addr_9_reg_1461_pp0_iter3_reg[4 : 2];
        v10_1_addr_8_reg_1456[0] <= zext_ln73_fu_1115_p1[0];
v10_1_addr_8_reg_1456[4 : 2] <= zext_ln73_fu_1115_p1[4 : 2];
        v10_1_addr_8_reg_1456_pp0_iter2_reg[0] <= v10_1_addr_8_reg_1456[0];
v10_1_addr_8_reg_1456_pp0_iter2_reg[4 : 2] <= v10_1_addr_8_reg_1456[4 : 2];
        v10_1_addr_8_reg_1456_pp0_iter3_reg[0] <= v10_1_addr_8_reg_1456_pp0_iter2_reg[0];
v10_1_addr_8_reg_1456_pp0_iter3_reg[4 : 2] <= v10_1_addr_8_reg_1456_pp0_iter2_reg[4 : 2];
        v10_1_addr_9_reg_1466[4 : 2] <= zext_ln87_fu_1128_p1[4 : 2];
        v10_1_addr_9_reg_1466_pp0_iter2_reg[4 : 2] <= v10_1_addr_9_reg_1466[4 : 2];
        v10_1_addr_9_reg_1466_pp0_iter3_reg[4 : 2] <= v10_1_addr_9_reg_1466_pp0_iter2_reg[4 : 2];
        v10_1_addr_9_reg_1466_pp0_iter4_reg[4 : 2] <= v10_1_addr_9_reg_1466_pp0_iter3_reg[4 : 2];
        v16_reg_1235 <= v16_fu_637_p11;
        v23_reg_1240 <= v23_fu_676_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_1_reg_1436 <= v10_0_q1;
        v18_reg_1441 <= grp_fu_737_p_dout0;
        v21_1_reg_1471 <= v10_1_q1;
        v24_reg_1446 <= grp_fu_741_p_dout0;
        v27_reg_1476 <= v10_0_q0;
        v33_reg_1481 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v29_reg_1306 <= v29_fu_784_p11;
        v35_reg_1311 <= v35_fu_823_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_reg_1486 <= grp_fu_737_p_dout0;
        v36_reg_1491 <= grp_fu_741_p_dout0;
        v39_reg_1496 <= v10_0_q1;
        v45_reg_1501 <= v10_1_q1;
        v51_reg_1506 <= v10_0_q0;
        v57_reg_1511 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_reg_1536 <= grp_fu_729_p_dout0;
        v37_reg_1541 <= grp_fu_733_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_reg_1516 <= grp_fu_737_p_dout0;
        v48_reg_1521 <= grp_fu_741_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_1526 <= grp_fu_737_p_dout0;
        v60_reg_1531 <= grp_fu_741_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_reg_1546 <= grp_fu_729_p_dout0;
        v61_reg_1551 <= grp_fu_733_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_12_reg_1186 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_v12_3 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_3 = v12_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_508_p0 = v51_reg_1506;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_508_p0 = v39_reg_1496;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_508_p0 = v27_reg_1476;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_508_p0 = v14_1_reg_1436;
    end else begin
        grp_fu_508_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_508_p1 = v54_reg_1526;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_508_p1 = v42_reg_1516;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_508_p1 = v30_reg_1486;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_508_p1 = v18_reg_1441;
    end else begin
        grp_fu_508_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_512_p0 = v57_reg_1511;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_512_p0 = v45_reg_1501;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_512_p0 = v33_reg_1481;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_512_p0 = v21_1_reg_1471;
    end else begin
        grp_fu_512_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_512_p1 = v60_reg_1531;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_512_p1 = v48_reg_1521;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_512_p1 = v36_reg_1491;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_512_p1 = v24_reg_1446;
    end else begin
        grp_fu_512_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_516_p0 = v53_reg_1426;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p0 = v41_reg_1356;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_516_p0 = v29_reg_1306;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_516_p0 = v16_reg_1235;
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_520_p0 = v59_reg_1431;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_520_p0 = v47_reg_1361;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_520_p0 = v35_reg_1311;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_520_p0 = v23_reg_1240;
    end else begin
        grp_fu_520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = v10_0_addr_9_reg_1461_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = v10_0_addr_7_reg_1416_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_1128_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_1023_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = v10_0_addr_8_reg_1451_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = v10_0_addr_reg_1406_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_1115_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_1011_p1;
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
        v10_0_d0_local = v55_reg_1546;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_d0_local = v31_reg_1536;
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
        v10_1_address0_local = v10_1_addr_9_reg_1466_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = v10_1_addr_7_reg_1421_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_1128_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_1023_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = v10_1_addr_8_reg_1456_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = v10_1_addr_reg_1411_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_1115_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_1011_p1;
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
        v10_1_d0_local = v61_reg_1551;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_d0_local = v37_reg_1541;
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
            v137_0_address0_local = zext_ln96_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address0_local = zext_ln82_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address0_local = zext_ln68_fu_744_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address0_local = zext_ln54_fu_602_p1;
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
            v137_0_address1_local = zext_ln89_fu_982_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_0_address1_local = zext_ln75_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_0_address1_local = zext_ln61_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_0_address1_local = zext_ln46_fu_568_p1;
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
            v137_1_address0_local = zext_ln96_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_1_address0_local = zext_ln82_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_1_address0_local = zext_ln68_fu_744_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_1_address0_local = zext_ln54_fu_602_p1;
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
            v137_1_address1_local = zext_ln89_fu_982_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_1_address1_local = zext_ln75_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_1_address1_local = zext_ln61_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_1_address1_local = zext_ln46_fu_568_p1;
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
            v137_2_address0_local = zext_ln96_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_2_address0_local = zext_ln82_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_2_address0_local = zext_ln68_fu_744_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_2_address0_local = zext_ln54_fu_602_p1;
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
            v137_2_address1_local = zext_ln89_fu_982_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_2_address1_local = zext_ln75_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_2_address1_local = zext_ln61_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_2_address1_local = zext_ln46_fu_568_p1;
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
            v137_3_address0_local = zext_ln96_fu_1003_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_3_address0_local = zext_ln82_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_3_address0_local = zext_ln68_fu_744_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_3_address0_local = zext_ln54_fu_602_p1;
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
            v137_3_address1_local = zext_ln89_fu_982_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_3_address1_local = zext_ln75_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_3_address1_local = zext_ln61_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_3_address1_local = zext_ln46_fu_568_p1;
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
assign add_ln42_fu_610_p2 = (ap_sig_allocacmp_v12_3 + 7'd8);
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
assign grp_fu_729_p_ce = 1'b1;
assign grp_fu_729_p_din0 = grp_fu_508_p0;
assign grp_fu_729_p_din1 = grp_fu_508_p1;
assign grp_fu_729_p_opcode = 2'd0;
assign grp_fu_733_p_ce = 1'b1;
assign grp_fu_733_p_din0 = grp_fu_512_p0;
assign grp_fu_733_p_din1 = grp_fu_512_p1;
assign grp_fu_733_p_opcode = 2'd0;
assign grp_fu_737_p_ce = 1'b1;
assign grp_fu_737_p_din0 = grp_fu_516_p0;
assign grp_fu_737_p_din1 = v17_5;
assign grp_fu_741_p_ce = 1'b1;
assign grp_fu_741_p_din0 = grp_fu_520_p0;
assign grp_fu_741_p_din1 = v17_5;
assign lshr_ln42_5_fu_576_p4 = {{ap_sig_allocacmp_v12_3[5:1]}};
assign or_ln59_9_fu_1016_p3 = {{tmp_22_reg_1245}, {1'd1}};
assign or_ln73_9_fu_1107_p4 = {{{tmp_25_reg_1290}, {1'd1}}, {tmp_13_reg_1300}};
assign or_ln87_9_fu_1121_p3 = {{tmp_25_reg_1290}, {2'd3}};
assign tmp_12_fu_542_p3 = ap_sig_allocacmp_v12_3[32'd6];
assign tmp_21_fu_586_p7 = {{{{{{lshr_ln42_5_fu_576_p4}, {1'd1}}, {empty_13}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_22_fu_699_p4 = {{v12_3_reg_1179[5:2]}};
assign tmp_23_fu_708_p7 = {{{{{{tmp_22_fu_699_p4}, {2'd2}}, {empty_13}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_24_fu_730_p7 = {{{{{{tmp_22_fu_699_p4}, {2'd3}}, {empty_13}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_26_fu_846_p7 = {{{{{{tmp_25_reg_1290}, {3'd4}}, {empty_13}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_27_fu_867_p9 = {{{{{{{{tmp_25_reg_1290}, {1'd1}}, {tmp_13_reg_1300}}, {1'd1}}, {empty_13}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_28_fu_969_p7 = {{{{{{tmp_25_reg_1290}, {3'd6}}, {empty_13}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_29_fu_990_p7 = {{{{{{tmp_25_reg_1290}, {3'd7}}, {empty_13}}, {1'd1}}, {empty}}, {1'd1}};
assign tmp_s_fu_554_p6 = {{{{{trunc_ln42_fu_550_p1}, {empty_13}}, {1'd1}}, {empty}}, {1'd1}};
assign trunc_ln42_fu_550_p1 = ap_sig_allocacmp_v12_3[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_524;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_529;
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
assign v16_fu_637_p2 = v137_0_q1;
assign v16_fu_637_p4 = v137_1_q1;
assign v16_fu_637_p6 = v137_2_q1;
assign v16_fu_637_p8 = v137_3_q1;
assign v16_fu_637_p9 = 'bx;
assign v23_fu_676_p2 = v137_0_q0;
assign v23_fu_676_p4 = v137_1_q0;
assign v23_fu_676_p6 = v137_2_q0;
assign v23_fu_676_p8 = v137_3_q0;
assign v23_fu_676_p9 = 'bx;
assign v29_fu_784_p2 = v137_0_q1;
assign v29_fu_784_p4 = v137_1_q1;
assign v29_fu_784_p6 = v137_2_q1;
assign v29_fu_784_p8 = v137_3_q1;
assign v29_fu_784_p9 = 'bx;
assign v35_fu_823_p2 = v137_0_q0;
assign v35_fu_823_p4 = v137_1_q0;
assign v35_fu_823_p6 = v137_2_q0;
assign v35_fu_823_p8 = v137_3_q0;
assign v35_fu_823_p9 = 'bx;
assign v41_fu_907_p2 = v137_0_q1;
assign v41_fu_907_p4 = v137_1_q1;
assign v41_fu_907_p6 = v137_2_q1;
assign v41_fu_907_p8 = v137_3_q1;
assign v41_fu_907_p9 = 'bx;
assign v47_fu_946_p2 = v137_0_q0;
assign v47_fu_946_p4 = v137_1_q0;
assign v47_fu_946_p6 = v137_2_q0;
assign v47_fu_946_p8 = v137_3_q0;
assign v47_fu_946_p9 = 'bx;
assign v53_fu_1045_p2 = v137_0_q1;
assign v53_fu_1045_p4 = v137_1_q1;
assign v53_fu_1045_p6 = v137_2_q1;
assign v53_fu_1045_p8 = v137_3_q1;
assign v53_fu_1045_p9 = 'bx;
assign v59_fu_1084_p2 = v137_0_q0;
assign v59_fu_1084_p4 = v137_1_q0;
assign v59_fu_1084_p6 = v137_2_q0;
assign v59_fu_1084_p8 = v137_3_q0;
assign v59_fu_1084_p9 = 'bx;
assign zext_ln42_fu_1011_p1 = lshr_ln42_5_reg_1210;
assign zext_ln46_fu_568_p1 = tmp_s_fu_554_p6;
assign zext_ln54_fu_602_p1 = tmp_21_fu_586_p7;
assign zext_ln59_fu_1023_p1 = or_ln59_9_fu_1016_p3;
assign zext_ln61_fu_722_p1 = tmp_23_fu_708_p7;
assign zext_ln68_fu_744_p1 = tmp_24_fu_730_p7;
assign zext_ln73_fu_1115_p1 = or_ln73_9_fu_1107_p4;
assign zext_ln75_fu_859_p1 = tmp_26_fu_846_p7;
assign zext_ln82_fu_883_p1 = tmp_27_fu_867_p9;
assign zext_ln87_fu_1128_p1 = or_ln87_9_fu_1121_p3;
assign zext_ln89_fu_982_p1 = tmp_28_fu_969_p7;
assign zext_ln96_fu_1003_p1 = tmp_29_fu_990_p7;
always @ (posedge ap_clk) begin
    v10_0_addr_7_reg_1416[0] <= 1'b1;
    v10_0_addr_7_reg_1416_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_7_reg_1416_pp0_iter3_reg[0] <= 1'b1;
    v10_1_addr_7_reg_1421[0] <= 1'b1;
    v10_1_addr_7_reg_1421_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_7_reg_1421_pp0_iter3_reg[0] <= 1'b1;
    v10_0_addr_8_reg_1451[1] <= 1'b1;
    v10_0_addr_8_reg_1451_pp0_iter2_reg[1] <= 1'b1;
    v10_0_addr_8_reg_1451_pp0_iter3_reg[1] <= 1'b1;
    v10_1_addr_8_reg_1456[1] <= 1'b1;
    v10_1_addr_8_reg_1456_pp0_iter2_reg[1] <= 1'b1;
    v10_1_addr_8_reg_1456_pp0_iter3_reg[1] <= 1'b1;
    v10_0_addr_9_reg_1461[1:0] <= 2'b11;
    v10_0_addr_9_reg_1461_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_9_reg_1461_pp0_iter3_reg[1:0] <= 2'b11;
    v10_0_addr_9_reg_1461_pp0_iter4_reg[1:0] <= 2'b11;
    v10_1_addr_9_reg_1466[1:0] <= 2'b11;
    v10_1_addr_9_reg_1466_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_9_reg_1466_pp0_iter3_reg[1:0] <= 2'b11;
    v10_1_addr_9_reg_1466_pp0_iter4_reg[1:0] <= 2'b11;
end
endmodule 
