
module ms_mergesort_merge_Pipeline_merge_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,j,stop,a_0_address0,a_0_ce0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,a_2_address0,a_2_ce0,a_2_q0,a_2_address1,a_2_ce1,a_2_q1,a_3_address0,a_3_ce0,a_3_q0,a_3_address1,a_3_ce1,a_3_q1,add9,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1,temp_1_address0,temp_1_ce0,temp_1_we0,temp_1_d0,temp_1_address1,temp_1_ce1,temp_1_we1,temp_1_d1,temp_2_address0,temp_2_ce0,temp_2_we0,temp_2_d0,temp_2_address1,temp_2_ce1,temp_2_we1,temp_2_d1,temp_3_address0,temp_3_ce0,temp_3_we0,temp_3_d0,temp_3_address1,temp_3_ce1,temp_3_we1,temp_3_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] j;
input  [31:0] stop;
output  [8:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [8:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [8:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [8:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [8:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [8:0] a_2_address1;
output   a_2_ce1;
input  [31:0] a_2_q1;
output  [8:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
output  [8:0] a_3_address1;
output   a_3_ce1;
input  [31:0] a_3_q1;
input  [10:0] add9;
output  [8:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [8:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
output  [8:0] temp_1_address0;
output   temp_1_ce0;
output   temp_1_we0;
output  [31:0] temp_1_d0;
output  [8:0] temp_1_address1;
output   temp_1_ce1;
output   temp_1_we1;
output  [31:0] temp_1_d1;
output  [8:0] temp_2_address0;
output   temp_2_ce0;
output   temp_2_we0;
output  [31:0] temp_2_d0;
output  [8:0] temp_2_address1;
output   temp_2_ce1;
output   temp_2_we1;
output  [31:0] temp_2_d1;
output  [8:0] temp_3_address0;
output   temp_3_ce0;
output   temp_3_we0;
output  [31:0] temp_3_d0;
output  [8:0] temp_3_address1;
output   temp_3_ce1;
output   temp_3_we1;
output  [31:0] temp_3_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_7_fu_940_p2;
wire   [0:0] icmp_ln11_6_fu_898_p2;
wire   [0:0] icmp_ln11_5_fu_856_p2;
wire   [0:0] icmp_ln11_4_fu_814_p2;
wire   [0:0] icmp_ln11_3_fu_772_p2;
wire   [0:0] icmp_ln11_2_fu_730_p2;
wire   [0:0] icmp_ln11_1_fu_704_p2;
wire   [0:0] icmp_ln11_fu_694_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] j_18_reg_1345;
reg   [0:0] icmp_ln11_reg_1352;
reg   [0:0] icmp_ln11_reg_1352_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_1352_pp0_iter2_reg;
wire   [1:0] trunc_ln11_fu_700_p1;
reg   [1:0] trunc_ln11_reg_1356;
reg   [1:0] trunc_ln11_reg_1356_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_1368;
reg   [0:0] icmp_ln11_1_reg_1368_pp0_iter1_reg;
reg   [0:0] icmp_ln11_1_reg_1368_pp0_iter2_reg;
reg   [8:0] lshr_ln11_1_reg_1372;
reg   [0:0] icmp_ln11_2_reg_1377;
reg   [0:0] icmp_ln11_2_reg_1377_pp0_iter1_reg;
reg   [8:0] lshr_ln12_2_reg_1381;
reg   [8:0] lshr_ln12_2_reg_1381_pp0_iter1_reg;
reg   [8:0] lshr_ln12_2_reg_1381_pp0_iter2_reg;
reg   [8:0] lshr_ln11_2_reg_1386;
reg   [0:0] icmp_ln11_3_reg_1391;
reg   [0:0] icmp_ln11_3_reg_1391_pp0_iter1_reg;
reg   [8:0] lshr_ln12_3_reg_1395;
reg   [8:0] lshr_ln12_3_reg_1395_pp0_iter1_reg;
reg   [8:0] lshr_ln12_3_reg_1395_pp0_iter2_reg;
reg   [8:0] lshr_ln11_3_reg_1400;
reg   [0:0] icmp_ln11_4_reg_1405;
reg   [0:0] icmp_ln11_4_reg_1405_pp0_iter1_reg;
reg   [8:0] lshr_ln12_4_reg_1409;
reg   [8:0] lshr_ln12_4_reg_1409_pp0_iter1_reg;
reg   [8:0] lshr_ln12_4_reg_1409_pp0_iter2_reg;
reg   [8:0] lshr_ln11_4_reg_1414;
reg   [0:0] icmp_ln11_5_reg_1419;
reg   [0:0] icmp_ln11_5_reg_1419_pp0_iter1_reg;
reg   [8:0] lshr_ln12_5_reg_1423;
reg   [8:0] lshr_ln12_5_reg_1423_pp0_iter1_reg;
reg   [8:0] lshr_ln12_5_reg_1423_pp0_iter2_reg;
reg   [8:0] lshr_ln11_5_reg_1428;
reg   [0:0] icmp_ln11_6_reg_1433;
reg   [0:0] icmp_ln11_6_reg_1433_pp0_iter1_reg;
reg   [8:0] lshr_ln12_6_reg_1437;
reg   [8:0] lshr_ln12_6_reg_1437_pp0_iter1_reg;
reg   [8:0] lshr_ln12_6_reg_1437_pp0_iter2_reg;
reg   [8:0] lshr_ln11_6_reg_1442;
reg   [0:0] icmp_ln11_7_reg_1447;
reg   [0:0] icmp_ln11_7_reg_1447_pp0_iter1_reg;
reg   [8:0] lshr_ln12_7_reg_1451;
reg   [8:0] lshr_ln12_7_reg_1451_pp0_iter1_reg;
reg   [8:0] lshr_ln12_7_reg_1451_pp0_iter2_reg;
wire   [1:0] trunc_ln12_fu_987_p1;
reg   [1:0] trunc_ln12_reg_1476;
reg   [1:0] trunc_ln12_reg_1476_pp0_iter2_reg;
reg   [8:0] lshr_ln_reg_1480;
reg   [8:0] lshr_ln_reg_1480_pp0_iter2_reg;
reg   [8:0] lshr_ln12_1_reg_1505;
reg   [8:0] lshr_ln12_1_reg_1505_pp0_iter2_reg;
wire   [31:0] tmp_8_fu_1092_p11;
reg   [31:0] tmp_8_reg_1630;
wire   [31:0] tmp_9_fu_1115_p11;
reg   [31:0] tmp_9_reg_1638;
wire   [31:0] tmp_s_fu_1138_p11;
reg   [31:0] tmp_s_reg_1646;
wire   [31:0] tmp_1_fu_1161_p11;
reg   [31:0] tmp_1_reg_1654;
wire   [31:0] tmp_2_fu_1184_p11;
reg   [31:0] tmp_2_reg_1662;
wire   [31:0] tmp_3_fu_1207_p11;
reg   [31:0] tmp_3_reg_1670;
wire   [31:0] tmp_4_fu_1230_p11;
reg   [31:0] tmp_4_reg_1678;
wire   [31:0] tmp_5_fu_1253_p11;
reg   [31:0] tmp_5_reg_1686;
wire   [63:0] zext_ln5_3_fu_974_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln11_fu_1017_p1;
wire   [63:0] zext_ln11_1_fu_1040_p1;
wire   [63:0] zext_ln11_2_fu_1047_p1;
wire   [63:0] zext_ln11_3_fu_1054_p1;
wire   [63:0] zext_ln11_4_fu_1061_p1;
wire   [63:0] zext_ln11_5_fu_1068_p1;
wire   [63:0] zext_ln11_6_fu_1075_p1;
wire   [63:0] zext_ln12_fu_1276_p1;
wire   [63:0] zext_ln12_1_fu_1283_p1;
wire   [63:0] zext_ln12_2_fu_1290_p1;
wire   [63:0] zext_ln12_3_fu_1297_p1;
wire   [63:0] zext_ln12_4_fu_1304_p1;
wire   [63:0] zext_ln12_5_fu_1311_p1;
wire   [63:0] zext_ln12_6_fu_1318_p1;
wire   [63:0] zext_ln12_7_fu_1325_p1;
reg   [31:0] j_1_fu_80;
wire   [31:0] add_ln11_7_fu_1082_p2;
reg   [31:0] ap_sig_allocacmp_j_18;
wire    ap_loop_init;
reg    a_0_ce1_local;
reg   [8:0] a_0_address1_local;
reg    a_0_ce0_local;
reg   [8:0] a_0_address0_local;
reg    a_1_ce1_local;
reg   [8:0] a_1_address1_local;
reg    a_1_ce0_local;
reg   [8:0] a_1_address0_local;
reg    a_2_ce1_local;
reg   [8:0] a_2_address1_local;
reg    a_2_ce0_local;
reg   [8:0] a_2_address0_local;
reg    a_3_ce1_local;
reg   [8:0] a_3_address1_local;
reg    a_3_ce0_local;
reg   [8:0] a_3_address0_local;
reg    temp_2_we1_local;
reg   [31:0] temp_2_d1_local;
reg    temp_2_ce1_local;
reg   [8:0] temp_2_address1_local;
reg    ap_predicate_pred629_state4;
reg    ap_predicate_pred639_state4;
reg    temp_2_we0_local;
reg    ap_predicate_pred651_state4;
reg   [31:0] temp_2_d0_local;
reg    temp_2_ce0_local;
reg   [8:0] temp_2_address0_local;
reg    ap_predicate_pred665_state4;
reg    ap_predicate_pred674_state4;
reg    ap_predicate_pred683_state4;
reg    temp_1_we1_local;
reg   [31:0] temp_1_d1_local;
reg    temp_1_ce1_local;
reg   [8:0] temp_1_address1_local;
reg    ap_predicate_pred662_state4;
reg    ap_predicate_pred671_state4;
reg    temp_1_we0_local;
reg    ap_predicate_pred680_state4;
reg   [31:0] temp_1_d0_local;
reg    temp_1_ce0_local;
reg   [8:0] temp_1_address0_local;
reg    ap_predicate_pred719_state4;
reg    ap_predicate_pred725_state4;
reg    ap_predicate_pred731_state4;
reg    temp_we1_local;
reg   [31:0] temp_d1_local;
reg    temp_ce1_local;
reg   [8:0] temp_address1_local;
reg    ap_predicate_pred649_state4;
reg    ap_predicate_pred663_state4;
reg    temp_we0_local;
reg    ap_predicate_pred672_state4;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [8:0] temp_address0_local;
reg    ap_predicate_pred681_state4;
reg    ap_predicate_pred772_state4;
reg    ap_predicate_pred778_state4;
reg    temp_3_we1_local;
reg   [31:0] temp_3_d1_local;
reg    temp_3_ce1_local;
reg   [8:0] temp_3_address1_local;
reg    ap_predicate_pred638_state4;
reg    ap_predicate_pred650_state4;
reg    temp_3_we0_local;
reg    ap_predicate_pred664_state4;
reg   [31:0] temp_3_d0_local;
reg    temp_3_ce0_local;
reg   [8:0] temp_3_address0_local;
reg    ap_predicate_pred673_state4;
reg    ap_predicate_pred682_state4;
reg    ap_predicate_pred822_state4;
wire   [31:0] add_ln11_1_fu_710_p2;
wire   [10:0] trunc_ln11_2_fu_716_p1;
wire   [10:0] sub_ln12_2_fu_736_p2;
wire   [31:0] add_ln11_2_fu_752_p2;
wire   [10:0] trunc_ln11_3_fu_758_p1;
wire   [10:0] sub_ln12_3_fu_778_p2;
wire   [31:0] add_ln11_3_fu_794_p2;
wire   [10:0] trunc_ln11_4_fu_800_p1;
wire   [10:0] sub_ln12_4_fu_820_p2;
wire   [31:0] add_ln11_4_fu_836_p2;
wire   [10:0] trunc_ln11_5_fu_842_p1;
wire   [10:0] sub_ln12_5_fu_862_p2;
wire   [31:0] add_ln11_5_fu_878_p2;
wire   [10:0] trunc_ln11_6_fu_884_p1;
wire   [10:0] sub_ln12_6_fu_904_p2;
wire   [31:0] add_ln11_6_fu_920_p2;
wire   [10:0] trunc_ln11_7_fu_926_p1;
wire   [10:0] sub_ln12_7_fu_946_p2;
wire   [8:0] lshr_ln5_1_fu_965_p4;
wire   [10:0] trunc_ln11_1_fu_962_p1;
wire   [10:0] sub_ln12_fu_982_p2;
wire   [10:0] add_ln11_fu_1001_p2;
wire   [8:0] lshr_ln1_fu_1007_p4;
wire   [10:0] sub_ln12_1_fu_1025_p2;
wire   [31:0] tmp_8_fu_1092_p9;
wire   [31:0] tmp_9_fu_1115_p9;
wire   [31:0] tmp_s_fu_1138_p9;
wire   [31:0] tmp_1_fu_1161_p9;
wire   [31:0] tmp_2_fu_1184_p9;
wire   [31:0] tmp_3_fu_1207_p9;
wire   [31:0] tmp_4_fu_1230_p9;
wire   [31:0] tmp_5_fu_1253_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1205;
reg    ap_condition_1210;
reg    ap_condition_1202;
reg    ap_condition_1217;
reg    ap_condition_1222;
reg    ap_condition_1198;
reg    ap_condition_1228;
reg    ap_condition_1231;
reg    ap_condition_1235;
reg    ap_condition_1238;
reg    ap_condition_1242;
reg    ap_condition_1245;
reg    ap_condition_1249;
reg    ap_condition_1252;
reg    ap_condition_1256;
reg    ap_condition_1259;
reg    ap_condition_1263;
reg    ap_condition_1266;
reg    ap_condition_1276;
reg    ap_condition_697;
reg    ap_condition_622;
reg    ap_condition_790;
reg    ap_condition_745;
wire   [1:0] tmp_8_fu_1092_p1;
wire   [1:0] tmp_8_fu_1092_p3;
wire  signed [1:0] tmp_8_fu_1092_p5;
wire  signed [1:0] tmp_8_fu_1092_p7;
wire  signed [1:0] tmp_9_fu_1115_p1;
wire   [1:0] tmp_9_fu_1115_p3;
wire   [1:0] tmp_9_fu_1115_p5;
wire  signed [1:0] tmp_9_fu_1115_p7;
wire  signed [1:0] tmp_s_fu_1138_p1;
wire  signed [1:0] tmp_s_fu_1138_p3;
wire   [1:0] tmp_s_fu_1138_p5;
wire   [1:0] tmp_s_fu_1138_p7;
wire   [1:0] tmp_1_fu_1161_p1;
wire  signed [1:0] tmp_1_fu_1161_p3;
wire  signed [1:0] tmp_1_fu_1161_p5;
wire   [1:0] tmp_1_fu_1161_p7;
wire   [1:0] tmp_2_fu_1184_p1;
wire   [1:0] tmp_2_fu_1184_p3;
wire  signed [1:0] tmp_2_fu_1184_p5;
wire  signed [1:0] tmp_2_fu_1184_p7;
wire  signed [1:0] tmp_3_fu_1207_p1;
wire   [1:0] tmp_3_fu_1207_p3;
wire   [1:0] tmp_3_fu_1207_p5;
wire  signed [1:0] tmp_3_fu_1207_p7;
wire  signed [1:0] tmp_4_fu_1230_p1;
wire  signed [1:0] tmp_4_fu_1230_p3;
wire   [1:0] tmp_4_fu_1230_p5;
wire   [1:0] tmp_4_fu_1230_p7;
wire   [1:0] tmp_5_fu_1253_p1;
wire  signed [1:0] tmp_5_fu_1253_p3;
wire  signed [1:0] tmp_5_fu_1253_p5;
wire   [1:0] tmp_5_fu_1253_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 j_1_fu_80 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U23(.din0(a_0_q1),.din1(a_1_q1),.din2(a_2_q1),.din3(a_3_q1),.def(tmp_8_fu_1092_p9),.sel(trunc_ln11_reg_1356_pp0_iter1_reg),.dout(tmp_8_fu_1092_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U24(.din0(a_0_q1),.din1(a_1_q1),.din2(a_2_q1),.din3(a_3_q1),.def(tmp_9_fu_1115_p9),.sel(trunc_ln11_reg_1356_pp0_iter1_reg),.dout(tmp_9_fu_1115_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U25(.din0(a_0_q1),.din1(a_1_q1),.din2(a_2_q1),.din3(a_3_q1),.def(tmp_s_fu_1138_p9),.sel(trunc_ln11_reg_1356_pp0_iter1_reg),.dout(tmp_s_fu_1138_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U26(.din0(a_0_q1),.din1(a_1_q1),.din2(a_2_q1),.din3(a_3_q1),.def(tmp_1_fu_1161_p9),.sel(trunc_ln11_reg_1356_pp0_iter1_reg),.dout(tmp_1_fu_1161_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U27(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_2_fu_1184_p9),.sel(trunc_ln11_reg_1356_pp0_iter1_reg),.dout(tmp_2_fu_1184_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U28(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_3_fu_1207_p9),.sel(trunc_ln11_reg_1356_pp0_iter1_reg),.dout(tmp_3_fu_1207_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U29(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_4_fu_1230_p9),.sel(trunc_ln11_reg_1356_pp0_iter1_reg),.dout(tmp_4_fu_1230_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U30(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_5_fu_1253_p9),.sel(trunc_ln11_reg_1356_pp0_iter1_reg),.dout(tmp_5_fu_1253_p11));
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_1_fu_80 <= j;
        end else if ((1'b1 == ap_condition_1276)) begin
            j_1_fu_80 <= add_ln11_7_fu_1082_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11_1_reg_1368 <= icmp_ln11_1_fu_704_p2;
        icmp_ln11_1_reg_1368_pp0_iter1_reg <= icmp_ln11_1_reg_1368;
        icmp_ln11_2_reg_1377 <= icmp_ln11_2_fu_730_p2;
        icmp_ln11_2_reg_1377_pp0_iter1_reg <= icmp_ln11_2_reg_1377;
        icmp_ln11_3_reg_1391 <= icmp_ln11_3_fu_772_p2;
        icmp_ln11_3_reg_1391_pp0_iter1_reg <= icmp_ln11_3_reg_1391;
        icmp_ln11_4_reg_1405 <= icmp_ln11_4_fu_814_p2;
        icmp_ln11_4_reg_1405_pp0_iter1_reg <= icmp_ln11_4_reg_1405;
        icmp_ln11_5_reg_1419 <= icmp_ln11_5_fu_856_p2;
        icmp_ln11_5_reg_1419_pp0_iter1_reg <= icmp_ln11_5_reg_1419;
        icmp_ln11_6_reg_1433 <= icmp_ln11_6_fu_898_p2;
        icmp_ln11_6_reg_1433_pp0_iter1_reg <= icmp_ln11_6_reg_1433;
        icmp_ln11_7_reg_1447 <= icmp_ln11_7_fu_940_p2;
        icmp_ln11_7_reg_1447_pp0_iter1_reg <= icmp_ln11_7_reg_1447;
        icmp_ln11_reg_1352 <= icmp_ln11_fu_694_p2;
        icmp_ln11_reg_1352_pp0_iter1_reg <= icmp_ln11_reg_1352;
        j_18_reg_1345 <= ap_sig_allocacmp_j_18;
        lshr_ln11_1_reg_1372 <= {{add_ln11_1_fu_710_p2[10:2]}};
        lshr_ln11_2_reg_1386 <= {{add_ln11_2_fu_752_p2[10:2]}};
        lshr_ln11_3_reg_1400 <= {{add_ln11_3_fu_794_p2[10:2]}};
        lshr_ln11_4_reg_1414 <= {{add_ln11_4_fu_836_p2[10:2]}};
        lshr_ln11_5_reg_1428 <= {{add_ln11_5_fu_878_p2[10:2]}};
        lshr_ln11_6_reg_1442 <= {{add_ln11_6_fu_920_p2[10:2]}};
        lshr_ln12_1_reg_1505 <= {{sub_ln12_1_fu_1025_p2[10:2]}};
        lshr_ln12_2_reg_1381 <= {{sub_ln12_2_fu_736_p2[10:2]}};
        lshr_ln12_2_reg_1381_pp0_iter1_reg <= lshr_ln12_2_reg_1381;
        lshr_ln12_3_reg_1395 <= {{sub_ln12_3_fu_778_p2[10:2]}};
        lshr_ln12_3_reg_1395_pp0_iter1_reg <= lshr_ln12_3_reg_1395;
        lshr_ln12_4_reg_1409 <= {{sub_ln12_4_fu_820_p2[10:2]}};
        lshr_ln12_4_reg_1409_pp0_iter1_reg <= lshr_ln12_4_reg_1409;
        lshr_ln12_5_reg_1423 <= {{sub_ln12_5_fu_862_p2[10:2]}};
        lshr_ln12_5_reg_1423_pp0_iter1_reg <= lshr_ln12_5_reg_1423;
        lshr_ln12_6_reg_1437 <= {{sub_ln12_6_fu_904_p2[10:2]}};
        lshr_ln12_6_reg_1437_pp0_iter1_reg <= lshr_ln12_6_reg_1437;
        lshr_ln12_7_reg_1451 <= {{sub_ln12_7_fu_946_p2[10:2]}};
        lshr_ln12_7_reg_1451_pp0_iter1_reg <= lshr_ln12_7_reg_1451;
        lshr_ln_reg_1480 <= {{sub_ln12_fu_982_p2[10:2]}};
        trunc_ln11_reg_1356 <= trunc_ln11_fu_700_p1;
        trunc_ln11_reg_1356_pp0_iter1_reg <= trunc_ln11_reg_1356;
        trunc_ln12_reg_1476 <= trunc_ln12_fu_987_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_predicate_pred629_state4 <= ((trunc_ln12_reg_1476 == 2'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred638_state4 <= ((trunc_ln12_reg_1476 == 2'd1) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred639_state4 <= ((trunc_ln12_reg_1476 == 2'd1) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred649_state4 <= ((trunc_ln12_reg_1476 == 2'd2) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred650_state4 <= ((trunc_ln12_reg_1476 == 2'd2) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred651_state4 <= ((trunc_ln12_reg_1476 == 2'd2) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred662_state4 <= ((trunc_ln12_reg_1476 == 2'd3) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred663_state4 <= ((trunc_ln12_reg_1476 == 2'd3) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred664_state4 <= ((trunc_ln12_reg_1476 == 2'd3) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred665_state4 <= ((trunc_ln12_reg_1476 == 2'd3) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred671_state4 <= ((trunc_ln12_reg_1476 == 2'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred672_state4 <= ((trunc_ln12_reg_1476 == 2'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred673_state4 <= ((trunc_ln12_reg_1476 == 2'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred674_state4 <= ((trunc_ln12_reg_1476 == 2'd0) & (icmp_ln11_6_reg_1433_pp0_iter1_reg == 1'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred680_state4 <= ((trunc_ln12_reg_1476 == 2'd1) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred681_state4 <= ((trunc_ln12_reg_1476 == 2'd1) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred682_state4 <= ((trunc_ln12_reg_1476 == 2'd1) & (icmp_ln11_6_reg_1433_pp0_iter1_reg == 1'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred683_state4 <= ((trunc_ln12_reg_1476 == 2'd1) & (icmp_ln11_7_reg_1447_pp0_iter1_reg == 1'd0) & (icmp_ln11_6_reg_1433_pp0_iter1_reg == 1'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred719_state4 <= ((trunc_ln12_reg_1476 == 2'd2) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred725_state4 <= ((trunc_ln12_reg_1476 == 2'd3) & (icmp_ln11_6_reg_1433_pp0_iter1_reg == 1'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred731_state4 <= ((trunc_ln12_reg_1476 == 2'd0) & (icmp_ln11_7_reg_1447_pp0_iter1_reg == 1'd0) & (icmp_ln11_6_reg_1433_pp0_iter1_reg == 1'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred772_state4 <= ((trunc_ln12_reg_1476 == 2'd2) & (icmp_ln11_6_reg_1433_pp0_iter1_reg == 1'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred778_state4 <= ((trunc_ln12_reg_1476 == 2'd3) & (icmp_ln11_7_reg_1447_pp0_iter1_reg == 1'd0) & (icmp_ln11_6_reg_1433_pp0_iter1_reg == 1'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        ap_predicate_pred822_state4 <= ((trunc_ln12_reg_1476 == 2'd2) & (icmp_ln11_7_reg_1447_pp0_iter1_reg == 1'd0) & (icmp_ln11_6_reg_1433_pp0_iter1_reg == 1'd0) & (icmp_ln11_5_reg_1419_pp0_iter1_reg == 1'd0) & (icmp_ln11_4_reg_1405_pp0_iter1_reg == 1'd0) & (icmp_ln11_3_reg_1391_pp0_iter1_reg == 1'd0) & (icmp_ln11_2_reg_1377_pp0_iter1_reg == 1'd0) & (icmp_ln11_1_reg_1368_pp0_iter1_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter1_reg == 1'd0));
        icmp_ln11_1_reg_1368_pp0_iter2_reg <= icmp_ln11_1_reg_1368_pp0_iter1_reg;
        icmp_ln11_reg_1352_pp0_iter2_reg <= icmp_ln11_reg_1352_pp0_iter1_reg;
        lshr_ln12_1_reg_1505_pp0_iter2_reg <= lshr_ln12_1_reg_1505;
        lshr_ln12_2_reg_1381_pp0_iter2_reg <= lshr_ln12_2_reg_1381_pp0_iter1_reg;
        lshr_ln12_3_reg_1395_pp0_iter2_reg <= lshr_ln12_3_reg_1395_pp0_iter1_reg;
        lshr_ln12_4_reg_1409_pp0_iter2_reg <= lshr_ln12_4_reg_1409_pp0_iter1_reg;
        lshr_ln12_5_reg_1423_pp0_iter2_reg <= lshr_ln12_5_reg_1423_pp0_iter1_reg;
        lshr_ln12_6_reg_1437_pp0_iter2_reg <= lshr_ln12_6_reg_1437_pp0_iter1_reg;
        lshr_ln12_7_reg_1451_pp0_iter2_reg <= lshr_ln12_7_reg_1451_pp0_iter1_reg;
        lshr_ln_reg_1480_pp0_iter2_reg <= lshr_ln_reg_1480;
        tmp_1_reg_1654 <= tmp_1_fu_1161_p11;
        tmp_2_reg_1662 <= tmp_2_fu_1184_p11;
        tmp_3_reg_1670 <= tmp_3_fu_1207_p11;
        tmp_4_reg_1678 <= tmp_4_fu_1230_p11;
        tmp_5_reg_1686 <= tmp_5_fu_1253_p11;
        tmp_8_reg_1630 <= tmp_8_fu_1092_p11;
        tmp_9_reg_1638 <= tmp_9_fu_1115_p11;
        tmp_s_reg_1646 <= tmp_s_fu_1138_p11;
        trunc_ln12_reg_1476_pp0_iter2_reg <= trunc_ln12_reg_1476;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1202)) begin
        if ((1'b1 == ap_condition_1210)) begin
            a_0_address0_local = zext_ln11_6_fu_1075_p1;
        end else if ((1'b1 == ap_condition_1205)) begin
            a_0_address0_local = zext_ln11_5_fu_1068_p1;
        end else if (((icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd3))) begin
            a_0_address0_local = zext_ln11_4_fu_1061_p1;
        end else if ((trunc_ln11_reg_1356 == 2'd0)) begin
            a_0_address0_local = zext_ln11_3_fu_1054_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1198)) begin
        if ((1'b1 == ap_condition_1222)) begin
            a_0_address1_local = zext_ln11_2_fu_1047_p1;
        end else if ((1'b1 == ap_condition_1217)) begin
            a_0_address1_local = zext_ln11_1_fu_1040_p1;
        end else if (((icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3))) begin
            a_0_address1_local = zext_ln11_fu_1017_p1;
        end else if ((trunc_ln11_reg_1356 == 2'd0)) begin
            a_0_address1_local = zext_ln5_3_fu_974_p1;
        end else begin
            a_0_address1_local = 'bx;
        end
    end else begin
        a_0_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln11_7_reg_1447 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368== 1'd1) & (trunc_ln11_reg_1356 == 2'd3) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0) & (icmp_ln11_reg_1352 == 1'd0)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_1356 == 2'd0) & (icmp_ln11_reg_1352 == 1'd0)))) begin
        a_0_ce1_local = 1'b1;
    end else begin
        a_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1202)) begin
        if ((1'b1 == ap_condition_1231)) begin
            a_1_address0_local = zext_ln11_6_fu_1075_p1;
        end else if ((1'b1 == ap_condition_1228)) begin
            a_1_address0_local = zext_ln11_5_fu_1068_p1;
        end else if (((icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd0))) begin
            a_1_address0_local = zext_ln11_4_fu_1061_p1;
        end else if ((trunc_ln11_reg_1356 == 2'd1)) begin
            a_1_address0_local = zext_ln11_3_fu_1054_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1198)) begin
        if ((1'b1 == ap_condition_1238)) begin
            a_1_address1_local = zext_ln11_2_fu_1047_p1;
        end else if ((1'b1 == ap_condition_1235)) begin
            a_1_address1_local = zext_ln11_1_fu_1040_p1;
        end else if (((icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0))) begin
            a_1_address1_local = zext_ln11_fu_1017_p1;
        end else if ((trunc_ln11_reg_1356 == 2'd1)) begin
            a_1_address1_local = zext_ln5_3_fu_974_p1;
        end else begin
            a_1_address1_local = 'bx;
        end
    end else begin
        a_1_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln11_7_reg_1447 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368== 1'd1) & (trunc_ln11_reg_1356 == 2'd0) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1) & (icmp_ln11_reg_1352 == 1'd0)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_1356 == 2'd1) & (icmp_ln11_reg_1352 == 1'd0)))) begin
        a_1_ce1_local = 1'b1;
    end else begin
        a_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1202)) begin
        if ((1'b1 == ap_condition_1245)) begin
            a_2_address0_local = zext_ln11_6_fu_1075_p1;
        end else if ((1'b1 == ap_condition_1242)) begin
            a_2_address0_local = zext_ln11_5_fu_1068_p1;
        end else if (((icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd1))) begin
            a_2_address0_local = zext_ln11_4_fu_1061_p1;
        end else if ((trunc_ln11_reg_1356 == 2'd2)) begin
            a_2_address0_local = zext_ln11_3_fu_1054_p1;
        end else begin
            a_2_address0_local = 'bx;
        end
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1198)) begin
        if ((1'b1 == ap_condition_1252)) begin
            a_2_address1_local = zext_ln11_2_fu_1047_p1;
        end else if ((1'b1 == ap_condition_1249)) begin
            a_2_address1_local = zext_ln11_1_fu_1040_p1;
        end else if (((icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1))) begin
            a_2_address1_local = zext_ln11_fu_1017_p1;
        end else if ((trunc_ln11_reg_1356 == 2'd2)) begin
            a_2_address1_local = zext_ln5_3_fu_974_p1;
        end else begin
            a_2_address1_local = 'bx;
        end
    end else begin
        a_2_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln11_7_reg_1447 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368== 1'd1) & (trunc_ln11_reg_1356 == 2'd1) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2) & (icmp_ln11_reg_1352 == 1'd0)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_1356 == 2'd2) & (icmp_ln11_reg_1352 == 1'd0)))) begin
        a_2_ce1_local = 1'b1;
    end else begin
        a_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1202)) begin
        if ((1'b1 == ap_condition_1259)) begin
            a_3_address0_local = zext_ln11_6_fu_1075_p1;
        end else if ((1'b1 == ap_condition_1256)) begin
            a_3_address0_local = zext_ln11_5_fu_1068_p1;
        end else if (((icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd2))) begin
            a_3_address0_local = zext_ln11_4_fu_1061_p1;
        end else if ((trunc_ln11_reg_1356 == 2'd3)) begin
            a_3_address0_local = zext_ln11_3_fu_1054_p1;
        end else begin
            a_3_address0_local = 'bx;
        end
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_1198)) begin
        if ((1'b1 == ap_condition_1266)) begin
            a_3_address1_local = zext_ln11_2_fu_1047_p1;
        end else if ((1'b1 == ap_condition_1263)) begin
            a_3_address1_local = zext_ln11_1_fu_1040_p1;
        end else if (((icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2))) begin
            a_3_address1_local = zext_ln11_fu_1017_p1;
        end else if ((trunc_ln11_reg_1356 == 2'd3)) begin
            a_3_address1_local = zext_ln5_3_fu_974_p1;
        end else begin
            a_3_address1_local = 'bx;
        end
    end else begin
        a_3_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln11_7_reg_1447 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_5_reg_1419 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368== 1'd1) & (trunc_ln11_reg_1356 == 2'd2) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3) & (icmp_ln11_reg_1352 == 1'd0)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2) & (icmp_ln11_reg_1352 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln11_reg_1356 == 2'd3) & (icmp_ln11_reg_1352 == 1'd0)))) begin
        a_3_ce1_local = 1'b1;
    end else begin
        a_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln11_fu_694_p2 == 1'd1) | ((icmp_ln11_1_fu_704_p2 == 1'd0) | ((icmp_ln11_2_fu_730_p2 == 1'd1) | ((icmp_ln11_3_fu_772_p2 == 1'd1) | ((icmp_ln11_4_fu_814_p2 == 1'd1) | ((icmp_ln11_5_fu_856_p2 == 1'd1) | ((icmp_ln11_6_fu_898_p2 == 1'd1) | (icmp_ln11_7_fu_940_p2 == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_j_18 = j;
        end else if ((1'b1 == ap_condition_1276)) begin
            ap_sig_allocacmp_j_18 = add_ln11_7_fu_1082_p2;
        end else begin
            ap_sig_allocacmp_j_18 = j_1_fu_80;
        end
    end else begin
        ap_sig_allocacmp_j_18 = j_1_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred731_state4 == 1'b1)) begin
            temp_1_address0_local = zext_ln12_7_fu_1325_p1;
        end else if ((ap_predicate_pred725_state4 == 1'b1)) begin
            temp_1_address0_local = zext_ln12_6_fu_1318_p1;
        end else if ((ap_predicate_pred719_state4 == 1'b1)) begin
            temp_1_address0_local = zext_ln12_5_fu_1311_p1;
        end else if ((ap_predicate_pred680_state4 == 1'b1)) begin
            temp_1_address0_local = zext_ln12_4_fu_1304_p1;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred671_state4 == 1'b1)) begin
            temp_1_address1_local = zext_ln12_3_fu_1297_p1;
        end else if ((ap_predicate_pred662_state4 == 1'b1)) begin
            temp_1_address1_local = zext_ln12_2_fu_1290_p1;
        end else if ((1'b1 == ap_condition_697)) begin
            temp_1_address1_local = zext_ln12_1_fu_1283_p1;
        end else if (((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0))) begin
            temp_1_address1_local = zext_ln12_fu_1276_p1;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred731_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred725_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred719_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred680_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred671_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred662_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd2) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred731_state4 == 1'b1)) begin
            temp_1_d0_local = tmp_5_reg_1686;
        end else if ((ap_predicate_pred725_state4 == 1'b1)) begin
            temp_1_d0_local = tmp_4_reg_1678;
        end else if ((ap_predicate_pred719_state4 == 1'b1)) begin
            temp_1_d0_local = tmp_3_reg_1670;
        end else if ((ap_predicate_pred680_state4 == 1'b1)) begin
            temp_1_d0_local = tmp_2_reg_1662;
        end else begin
            temp_1_d0_local = 'bx;
        end
    end else begin
        temp_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred671_state4 == 1'b1)) begin
            temp_1_d1_local = tmp_1_reg_1654;
        end else if ((ap_predicate_pred662_state4 == 1'b1)) begin
            temp_1_d1_local = tmp_s_reg_1646;
        end else if ((1'b1 == ap_condition_697)) begin
            temp_1_d1_local = tmp_9_reg_1638;
        end else if (((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0))) begin
            temp_1_d1_local = tmp_8_reg_1630;
        end else begin
            temp_1_d1_local = 'bx;
        end
    end else begin
        temp_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred731_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred725_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred719_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred680_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        temp_1_we0_local = 1'b1;
    end else begin
        temp_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred671_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred662_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd2) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)))) begin
        temp_1_we1_local = 1'b1;
    end else begin
        temp_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred683_state4 == 1'b1)) begin
            temp_2_address0_local = zext_ln12_7_fu_1325_p1;
        end else if ((ap_predicate_pred674_state4 == 1'b1)) begin
            temp_2_address0_local = zext_ln12_6_fu_1318_p1;
        end else if ((ap_predicate_pred665_state4 == 1'b1)) begin
            temp_2_address0_local = zext_ln12_5_fu_1311_p1;
        end else if ((ap_predicate_pred651_state4 == 1'b1)) begin
            temp_2_address0_local = zext_ln12_4_fu_1304_p1;
        end else begin
            temp_2_address0_local = 'bx;
        end
    end else begin
        temp_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred639_state4 == 1'b1)) begin
            temp_2_address1_local = zext_ln12_3_fu_1297_p1;
        end else if ((ap_predicate_pred629_state4 == 1'b1)) begin
            temp_2_address1_local = zext_ln12_2_fu_1290_p1;
        end else if ((1'b1 == ap_condition_622)) begin
            temp_2_address1_local = zext_ln12_1_fu_1283_p1;
        end else if (((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd2) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0))) begin
            temp_2_address1_local = zext_ln12_fu_1276_p1;
        end else begin
            temp_2_address1_local = 'bx;
        end
    end else begin
        temp_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred683_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred674_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred665_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred651_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        temp_2_ce0_local = 1'b1;
    end else begin
        temp_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred639_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred629_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd3) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd2) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)))) begin
        temp_2_ce1_local = 1'b1;
    end else begin
        temp_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred683_state4 == 1'b1)) begin
            temp_2_d0_local = tmp_5_reg_1686;
        end else if ((ap_predicate_pred674_state4 == 1'b1)) begin
            temp_2_d0_local = tmp_4_reg_1678;
        end else if ((ap_predicate_pred665_state4 == 1'b1)) begin
            temp_2_d0_local = tmp_3_reg_1670;
        end else if ((ap_predicate_pred651_state4 == 1'b1)) begin
            temp_2_d0_local = tmp_2_reg_1662;
        end else begin
            temp_2_d0_local = 'bx;
        end
    end else begin
        temp_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred639_state4 == 1'b1)) begin
            temp_2_d1_local = tmp_1_reg_1654;
        end else if ((ap_predicate_pred629_state4 == 1'b1)) begin
            temp_2_d1_local = tmp_s_reg_1646;
        end else if ((1'b1 == ap_condition_622)) begin
            temp_2_d1_local = tmp_9_reg_1638;
        end else if (((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd2) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0))) begin
            temp_2_d1_local = tmp_8_reg_1630;
        end else begin
            temp_2_d1_local = 'bx;
        end
    end else begin
        temp_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred683_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred674_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred665_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred651_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        temp_2_we0_local = 1'b1;
    end else begin
        temp_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred639_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred629_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd3) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd2) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)))) begin
        temp_2_we1_local = 1'b1;
    end else begin
        temp_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred822_state4 == 1'b1)) begin
            temp_3_address0_local = zext_ln12_7_fu_1325_p1;
        end else if ((ap_predicate_pred682_state4 == 1'b1)) begin
            temp_3_address0_local = zext_ln12_6_fu_1318_p1;
        end else if ((ap_predicate_pred673_state4 == 1'b1)) begin
            temp_3_address0_local = zext_ln12_5_fu_1311_p1;
        end else if ((ap_predicate_pred664_state4 == 1'b1)) begin
            temp_3_address0_local = zext_ln12_4_fu_1304_p1;
        end else begin
            temp_3_address0_local = 'bx;
        end
    end else begin
        temp_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred650_state4 == 1'b1)) begin
            temp_3_address1_local = zext_ln12_3_fu_1297_p1;
        end else if ((ap_predicate_pred638_state4 == 1'b1)) begin
            temp_3_address1_local = zext_ln12_2_fu_1290_p1;
        end else if ((1'b1 == ap_condition_790)) begin
            temp_3_address1_local = zext_ln12_1_fu_1283_p1;
        end else if (((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd3) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0))) begin
            temp_3_address1_local = zext_ln12_fu_1276_p1;
        end else begin
            temp_3_address1_local = 'bx;
        end
    end else begin
        temp_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred822_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred682_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred673_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred664_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        temp_3_ce0_local = 1'b1;
    end else begin
        temp_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred650_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred638_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd0) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd3) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)))) begin
        temp_3_ce1_local = 1'b1;
    end else begin
        temp_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred822_state4 == 1'b1)) begin
            temp_3_d0_local = tmp_5_reg_1686;
        end else if ((ap_predicate_pred682_state4 == 1'b1)) begin
            temp_3_d0_local = tmp_4_reg_1678;
        end else if ((ap_predicate_pred673_state4 == 1'b1)) begin
            temp_3_d0_local = tmp_3_reg_1670;
        end else if ((ap_predicate_pred664_state4 == 1'b1)) begin
            temp_3_d0_local = tmp_2_reg_1662;
        end else begin
            temp_3_d0_local = 'bx;
        end
    end else begin
        temp_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred650_state4 == 1'b1)) begin
            temp_3_d1_local = tmp_1_reg_1654;
        end else if ((ap_predicate_pred638_state4 == 1'b1)) begin
            temp_3_d1_local = tmp_s_reg_1646;
        end else if ((1'b1 == ap_condition_790)) begin
            temp_3_d1_local = tmp_9_reg_1638;
        end else if (((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd3) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0))) begin
            temp_3_d1_local = tmp_8_reg_1630;
        end else begin
            temp_3_d1_local = 'bx;
        end
    end else begin
        temp_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred822_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred682_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred673_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred664_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        temp_3_we0_local = 1'b1;
    end else begin
        temp_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred650_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred638_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd0) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd3) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)))) begin
        temp_3_we1_local = 1'b1;
    end else begin
        temp_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred778_state4 == 1'b1)) begin
            temp_address0_local = zext_ln12_7_fu_1325_p1;
        end else if ((ap_predicate_pred772_state4 == 1'b1)) begin
            temp_address0_local = zext_ln12_6_fu_1318_p1;
        end else if ((ap_predicate_pred681_state4 == 1'b1)) begin
            temp_address0_local = zext_ln12_5_fu_1311_p1;
        end else if ((ap_predicate_pred672_state4 == 1'b1)) begin
            temp_address0_local = zext_ln12_4_fu_1304_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred663_state4 == 1'b1)) begin
            temp_address1_local = zext_ln12_3_fu_1297_p1;
        end else if ((ap_predicate_pred649_state4 == 1'b1)) begin
            temp_address1_local = zext_ln12_2_fu_1290_p1;
        end else if ((1'b1 == ap_condition_745)) begin
            temp_address1_local = zext_ln12_1_fu_1283_p1;
        end else if (((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd0) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0))) begin
            temp_address1_local = zext_ln12_fu_1276_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred778_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred772_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred681_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred672_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred663_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred649_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd0) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd1) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred778_state4 == 1'b1)) begin
            temp_d0_local = tmp_5_reg_1686;
        end else if ((ap_predicate_pred772_state4 == 1'b1)) begin
            temp_d0_local = tmp_4_reg_1678;
        end else if ((ap_predicate_pred681_state4 == 1'b1)) begin
            temp_d0_local = tmp_3_reg_1670;
        end else if ((ap_predicate_pred672_state4 == 1'b1)) begin
            temp_d0_local = tmp_2_reg_1662;
        end else begin
            temp_d0_local = 'bx;
        end
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred663_state4 == 1'b1)) begin
            temp_d1_local = tmp_1_reg_1654;
        end else if ((ap_predicate_pred649_state4 == 1'b1)) begin
            temp_d1_local = tmp_s_reg_1646;
        end else if ((1'b1 == ap_condition_745)) begin
            temp_d1_local = tmp_9_reg_1638;
        end else if (((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd0) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0))) begin
            temp_d1_local = tmp_8_reg_1630;
        end else begin
            temp_d1_local = 'bx;
        end
    end else begin
        temp_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred778_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred772_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred681_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred672_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred663_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_predicate_pred649_state4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd0) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln12_reg_1476_pp0_iter2_reg == 2'd1) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
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
assign a_0_address0 = a_0_address0_local;
assign a_0_address1 = a_0_address1_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_ce1 = a_0_ce1_local;
assign a_1_address0 = a_1_address0_local;
assign a_1_address1 = a_1_address1_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_ce1 = a_1_ce1_local;
assign a_2_address0 = a_2_address0_local;
assign a_2_address1 = a_2_address1_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_ce1 = a_2_ce1_local;
assign a_3_address0 = a_3_address0_local;
assign a_3_address1 = a_3_address1_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_ce1 = a_3_ce1_local;
assign add_ln11_1_fu_710_p2 = (ap_sig_allocacmp_j_18 + 32'd2);
assign add_ln11_2_fu_752_p2 = (ap_sig_allocacmp_j_18 + 32'd3);
assign add_ln11_3_fu_794_p2 = (ap_sig_allocacmp_j_18 + 32'd4);
assign add_ln11_4_fu_836_p2 = (ap_sig_allocacmp_j_18 + 32'd5);
assign add_ln11_5_fu_878_p2 = (ap_sig_allocacmp_j_18 + 32'd6);
assign add_ln11_6_fu_920_p2 = (ap_sig_allocacmp_j_18 + 32'd7);
assign add_ln11_7_fu_1082_p2 = (j_18_reg_1345 + 32'd8);
assign add_ln11_fu_1001_p2 = (trunc_ln11_1_fu_962_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1198 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_reg_1352 == 1'd0));
end
always @ (*) begin
    ap_condition_1202 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (icmp_ln11_reg_1352 == 1'd0));
end
always @ (*) begin
    ap_condition_1205 = ((icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd2));
end
always @ (*) begin
    ap_condition_1210 = ((icmp_ln11_7_reg_1447 == 1'd0) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd1));
end
always @ (*) begin
    ap_condition_1217 = ((icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2));
end
always @ (*) begin
    ap_condition_1222 = ((icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1));
end
always @ (*) begin
    ap_condition_1228 = ((icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd3));
end
always @ (*) begin
    ap_condition_1231 = ((icmp_ln11_7_reg_1447 == 1'd0) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd2));
end
always @ (*) begin
    ap_condition_1235 = ((icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3));
end
always @ (*) begin
    ap_condition_1238 = ((icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd2));
end
always @ (*) begin
    ap_condition_1242 = ((icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd0));
end
always @ (*) begin
    ap_condition_1245 = ((icmp_ln11_7_reg_1447 == 1'd0) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd3));
end
always @ (*) begin
    ap_condition_1249 = ((icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0));
end
always @ (*) begin
    ap_condition_1252 = ((icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd3));
end
always @ (*) begin
    ap_condition_1256 = ((icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd1));
end
always @ (*) begin
    ap_condition_1259 = ((icmp_ln11_7_reg_1447 == 1'd0) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (trunc_ln11_reg_1356 == 2'd0));
end
always @ (*) begin
    ap_condition_1263 = ((icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd1));
end
always @ (*) begin
    ap_condition_1266 = ((icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (trunc_ln11_reg_1356 == 2'd0));
end
always @ (*) begin
    ap_condition_1276 = ((icmp_ln11_7_reg_1447 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11_6_reg_1433 == 1'd0) & (icmp_ln11_5_reg_1419 == 1'd0) & (icmp_ln11_4_reg_1405 == 1'd0) & (icmp_ln11_3_reg_1391 == 1'd0) & (icmp_ln11_2_reg_1377 == 1'd0) & (icmp_ln11_1_reg_1368 == 1'd1) & (icmp_ln11_reg_1352 == 1'd0));
end
always @ (*) begin
    ap_condition_622 = ((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd3) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_697 = ((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd2) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_745 = ((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd1) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0));
end
always @ (*) begin
    ap_condition_790 = ((trunc_ln12_reg_1476_pp0_iter2_reg == 2'd0) & (icmp_ln11_1_reg_1368_pp0_iter2_reg == 1'd1) & (icmp_ln11_reg_1352_pp0_iter2_reg == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln11_1_fu_704_p2 = (($signed(ap_sig_allocacmp_j_18) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_2_fu_730_p2 = (($signed(add_ln11_1_fu_710_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_3_fu_772_p2 = (($signed(add_ln11_2_fu_752_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_4_fu_814_p2 = (($signed(add_ln11_3_fu_794_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_5_fu_856_p2 = (($signed(add_ln11_4_fu_836_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_6_fu_898_p2 = (($signed(add_ln11_5_fu_878_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_7_fu_940_p2 = (($signed(add_ln11_6_fu_920_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_694_p2 = (($signed(ap_sig_allocacmp_j_18) > $signed(stop)) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1007_p4 = {{add_ln11_fu_1001_p2[10:2]}};
assign lshr_ln5_1_fu_965_p4 = {{j_18_reg_1345[10:2]}};
assign sub_ln12_1_fu_1025_p2 = (add9 - add_ln11_fu_1001_p2);
assign sub_ln12_2_fu_736_p2 = (add9 - trunc_ln11_2_fu_716_p1);
assign sub_ln12_3_fu_778_p2 = (add9 - trunc_ln11_3_fu_758_p1);
assign sub_ln12_4_fu_820_p2 = (add9 - trunc_ln11_4_fu_800_p1);
assign sub_ln12_5_fu_862_p2 = (add9 - trunc_ln11_5_fu_842_p1);
assign sub_ln12_6_fu_904_p2 = (add9 - trunc_ln11_6_fu_884_p1);
assign sub_ln12_7_fu_946_p2 = (add9 - trunc_ln11_7_fu_926_p1);
assign sub_ln12_fu_982_p2 = (add9 - trunc_ln11_1_fu_962_p1);
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_1_d0 = temp_1_d0_local;
assign temp_1_d1 = temp_1_d1_local;
assign temp_1_we0 = temp_1_we0_local;
assign temp_1_we1 = temp_1_we1_local;
assign temp_2_address0 = temp_2_address0_local;
assign temp_2_address1 = temp_2_address1_local;
assign temp_2_ce0 = temp_2_ce0_local;
assign temp_2_ce1 = temp_2_ce1_local;
assign temp_2_d0 = temp_2_d0_local;
assign temp_2_d1 = temp_2_d1_local;
assign temp_2_we0 = temp_2_we0_local;
assign temp_2_we1 = temp_2_we1_local;
assign temp_3_address0 = temp_3_address0_local;
assign temp_3_address1 = temp_3_address1_local;
assign temp_3_ce0 = temp_3_ce0_local;
assign temp_3_ce1 = temp_3_ce1_local;
assign temp_3_d0 = temp_3_d0_local;
assign temp_3_d1 = temp_3_d1_local;
assign temp_3_we0 = temp_3_we0_local;
assign temp_3_we1 = temp_3_we1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = temp_d0_local;
assign temp_d1 = temp_d1_local;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign tmp_1_fu_1161_p9 = 'bx;
assign tmp_2_fu_1184_p9 = 'bx;
assign tmp_3_fu_1207_p9 = 'bx;
assign tmp_4_fu_1230_p9 = 'bx;
assign tmp_5_fu_1253_p9 = 'bx;
assign tmp_8_fu_1092_p9 = 'bx;
assign tmp_9_fu_1115_p9 = 'bx;
assign tmp_s_fu_1138_p9 = 'bx;
assign trunc_ln11_1_fu_962_p1 = j_18_reg_1345[10:0];
assign trunc_ln11_2_fu_716_p1 = add_ln11_1_fu_710_p2[10:0];
assign trunc_ln11_3_fu_758_p1 = add_ln11_2_fu_752_p2[10:0];
assign trunc_ln11_4_fu_800_p1 = add_ln11_3_fu_794_p2[10:0];
assign trunc_ln11_5_fu_842_p1 = add_ln11_4_fu_836_p2[10:0];
assign trunc_ln11_6_fu_884_p1 = add_ln11_5_fu_878_p2[10:0];
assign trunc_ln11_7_fu_926_p1 = add_ln11_6_fu_920_p2[10:0];
assign trunc_ln11_fu_700_p1 = ap_sig_allocacmp_j_18[1:0];
assign trunc_ln12_fu_987_p1 = sub_ln12_fu_982_p2[1:0];
assign zext_ln11_1_fu_1040_p1 = lshr_ln11_1_reg_1372;
assign zext_ln11_2_fu_1047_p1 = lshr_ln11_2_reg_1386;
assign zext_ln11_3_fu_1054_p1 = lshr_ln11_3_reg_1400;
assign zext_ln11_4_fu_1061_p1 = lshr_ln11_4_reg_1414;
assign zext_ln11_5_fu_1068_p1 = lshr_ln11_5_reg_1428;
assign zext_ln11_6_fu_1075_p1 = lshr_ln11_6_reg_1442;
assign zext_ln11_fu_1017_p1 = lshr_ln1_fu_1007_p4;
assign zext_ln12_1_fu_1283_p1 = lshr_ln12_1_reg_1505_pp0_iter2_reg;
assign zext_ln12_2_fu_1290_p1 = lshr_ln12_2_reg_1381_pp0_iter2_reg;
assign zext_ln12_3_fu_1297_p1 = lshr_ln12_3_reg_1395_pp0_iter2_reg;
assign zext_ln12_4_fu_1304_p1 = lshr_ln12_4_reg_1409_pp0_iter2_reg;
assign zext_ln12_5_fu_1311_p1 = lshr_ln12_5_reg_1423_pp0_iter2_reg;
assign zext_ln12_6_fu_1318_p1 = lshr_ln12_6_reg_1437_pp0_iter2_reg;
assign zext_ln12_7_fu_1325_p1 = lshr_ln12_7_reg_1451_pp0_iter2_reg;
assign zext_ln12_fu_1276_p1 = lshr_ln_reg_1480_pp0_iter2_reg;
assign zext_ln5_3_fu_974_p1 = lshr_ln5_1_fu_965_p4;
endmodule 
