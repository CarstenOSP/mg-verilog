module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v114_2_address0,v114_2_ce0,v114_2_q0,v114_2_address1,v114_2_ce1,v114_2_q1,v114_3_address0,v114_3_ce0,v114_3_q0,v114_3_address1,v114_3_ce1,v114_3_q1,v115_0_address0,v115_0_ce0,v115_0_q0,v115_1_address0,v115_1_ce0,v115_1_q0,v115_2_address0,v115_2_ce0,v115_2_q0,v115_3_address0,v115_3_ce0,v115_3_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_4_address0,v58_4_ce0,v58_4_we0,v58_4_d0,v58_4_address1,v58_4_ce1,v58_4_q1,v58_5_address0,v58_5_ce0,v58_5_we0,v58_5_d0,v58_5_address1,v58_5_ce1,v58_5_q1,v58_6_address0,v58_6_ce0,v58_6_we0,v58_6_d0,v58_6_q0,v58_7_address0,v58_7_ce0,v58_7_we0,v58_7_d0,v58_7_q0,grp_fu_331_p_din0,grp_fu_331_p_din1,grp_fu_331_p_opcode,grp_fu_331_p_dout0,grp_fu_331_p_ce,grp_fu_335_p_din0,grp_fu_335_p_din1,grp_fu_335_p_dout0,grp_fu_335_p_ce); 
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
output  [9:0] v114_0_address0;
output   v114_0_ce0;
input  [31:0] v114_0_q0;
output  [9:0] v114_0_address1;
output   v114_0_ce1;
input  [31:0] v114_0_q1;
output  [9:0] v114_1_address0;
output   v114_1_ce0;
input  [31:0] v114_1_q0;
output  [9:0] v114_1_address1;
output   v114_1_ce1;
input  [31:0] v114_1_q1;
output  [9:0] v114_2_address0;
output   v114_2_ce0;
input  [31:0] v114_2_q0;
output  [9:0] v114_2_address1;
output   v114_2_ce1;
input  [31:0] v114_2_q1;
output  [9:0] v114_3_address0;
output   v114_3_ce0;
input  [31:0] v114_3_q0;
output  [9:0] v114_3_address1;
output   v114_3_ce1;
input  [31:0] v114_3_q1;
output  [3:0] v115_0_address0;
output   v115_0_ce0;
input  [31:0] v115_0_q0;
output  [3:0] v115_1_address0;
output   v115_1_ce0;
input  [31:0] v115_1_q0;
output  [3:0] v115_2_address0;
output   v115_2_ce0;
input  [31:0] v115_2_q0;
output  [3:0] v115_3_address0;
output   v115_3_ce0;
input  [31:0] v115_3_q0;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
output  [2:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [2:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [2:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [2:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [2:0] v58_4_address0;
output   v58_4_ce0;
output   v58_4_we0;
output  [31:0] v58_4_d0;
output  [2:0] v58_4_address1;
output   v58_4_ce1;
input  [31:0] v58_4_q1;
output  [2:0] v58_5_address0;
output   v58_5_ce0;
output   v58_5_we0;
output  [31:0] v58_5_d0;
output  [2:0] v58_5_address1;
output   v58_5_ce1;
input  [31:0] v58_5_q1;
output  [2:0] v58_6_address0;
output   v58_6_ce0;
output   v58_6_we0;
output  [31:0] v58_6_d0;
input  [31:0] v58_6_q0;
output  [2:0] v58_7_address0;
output   v58_7_ce0;
output   v58_7_we0;
output  [31:0] v58_7_d0;
input  [31:0] v58_7_q0;
output  [31:0] grp_fu_331_p_din0;
output  [31:0] grp_fu_331_p_din1;
output  [1:0] grp_fu_331_p_opcode;
input  [31:0] grp_fu_331_p_dout0;
output   grp_fu_331_p_ce;
output  [31:0] grp_fu_335_p_din0;
output  [31:0] grp_fu_335_p_din1;
input  [31:0] grp_fu_335_p_dout0;
output   grp_fu_335_p_ce;
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
reg   [0:0] icmp_ln97_reg_1526;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_687;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_675_p2;
reg   [31:0] reg_695;
wire   [0:0] icmp_ln97_fu_721_p2;
reg   [0:0] icmp_ln97_reg_1526_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_1526_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_1526_pp0_iter3_reg;
wire   [6:0] select_ln97_fu_753_p3;
reg   [6:0] select_ln97_reg_1530;
wire   [5:0] trunc_ln97_fu_761_p1;
reg   [5:0] trunc_ln97_reg_1535;
wire   [1:0] trunc_ln97_1_fu_773_p1;
reg   [1:0] trunc_ln97_1_reg_1540;
reg   [1:0] trunc_ln97_1_reg_1540_pp0_iter1_reg;
wire   [3:0] lshr_ln_fu_777_p4;
reg   [3:0] lshr_ln_reg_1553;
wire   [0:0] cmp7_fu_795_p2;
reg   [0:0] cmp7_reg_1565;
reg   [0:0] cmp7_reg_1565_pp0_iter1_reg;
reg   [0:0] cmp7_reg_1565_pp0_iter2_reg;
reg   [2:0] lshr_ln1_reg_1597;
wire   [4:0] tmp_1_fu_816_p4;
reg   [4:0] tmp_1_reg_1615;
reg   [3:0] tmp_4_reg_1625;
wire   [0:0] trunc_ln114_fu_849_p1;
reg   [0:0] trunc_ln114_reg_1633;
wire   [1:0] trunc_ln128_fu_853_p1;
reg   [1:0] trunc_ln128_reg_1641;
reg   [0:0] tmp_5_reg_1647;
wire   [31:0] v65_fu_891_p11;
reg   [31:0] v65_reg_1653;
reg   [31:0] v65_reg_1653_pp0_iter1_reg;
reg   [31:0] v61_reg_1679;
reg   [31:0] v68_reg_1704;
wire   [31:0] v64_fu_985_p11;
reg   [31:0] v64_reg_1719;
wire   [31:0] v71_fu_1024_p11;
reg   [31:0] v71_reg_1724;
reg   [31:0] v74_reg_1749;
reg   [31:0] v80_reg_1774;
wire   [31:0] v77_fu_1124_p11;
reg   [31:0] v77_reg_1789;
wire   [31:0] v83_fu_1163_p11;
reg   [31:0] v83_reg_1794;
reg   [31:0] v86_reg_1819;
reg   [31:0] v92_reg_1844;
reg   [2:0] v58_0_addr_reg_1859;
reg   [2:0] v58_0_addr_reg_1859_pp0_iter2_reg;
reg   [2:0] v58_0_addr_reg_1859_pp0_iter3_reg;
reg   [2:0] v58_1_addr_reg_1864;
reg   [2:0] v58_1_addr_reg_1864_pp0_iter2_reg;
reg   [2:0] v58_1_addr_reg_1864_pp0_iter3_reg;
reg   [2:0] v58_2_addr_reg_1869;
reg   [2:0] v58_2_addr_reg_1869_pp0_iter2_reg;
reg   [2:0] v58_2_addr_reg_1869_pp0_iter3_reg;
reg   [2:0] v58_3_addr_reg_1874;
reg   [2:0] v58_3_addr_reg_1874_pp0_iter2_reg;
reg   [2:0] v58_3_addr_reg_1874_pp0_iter3_reg;
reg   [2:0] v58_4_addr_reg_1879;
reg   [2:0] v58_4_addr_reg_1879_pp0_iter2_reg;
reg   [2:0] v58_4_addr_reg_1879_pp0_iter3_reg;
wire   [31:0] v89_fu_1284_p11;
reg   [31:0] v89_reg_1885;
reg   [2:0] v58_5_addr_reg_1890;
reg   [2:0] v58_5_addr_reg_1890_pp0_iter2_reg;
reg   [2:0] v58_5_addr_reg_1890_pp0_iter3_reg;
wire   [31:0] v95_fu_1323_p11;
reg   [31:0] v95_reg_1896;
reg   [31:0] v98_reg_1921;
reg   [31:0] v98_reg_1921_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1926;
reg   [2:0] v58_6_addr_reg_1926_pp0_iter2_reg;
reg   [2:0] v58_6_addr_reg_1926_pp0_iter3_reg;
reg   [2:0] v58_6_addr_reg_1926_pp0_iter4_reg;
reg   [31:0] v104_reg_1951;
reg   [31:0] v104_reg_1951_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1956;
reg   [2:0] v58_7_addr_reg_1956_pp0_iter2_reg;
reg   [2:0] v58_7_addr_reg_1956_pp0_iter3_reg;
reg   [2:0] v58_7_addr_reg_1956_pp0_iter4_reg;
wire   [31:0] v63_fu_1379_p3;
reg   [31:0] v63_reg_1961;
wire   [31:0] v101_fu_1401_p11;
reg   [31:0] v101_reg_1966;
wire   [31:0] v107_fu_1440_p11;
reg   [31:0] v107_reg_1971;
wire   [31:0] v70_fu_1463_p3;
reg   [31:0] v70_reg_1976;
wire   [31:0] v76_fu_1469_p3;
reg   [31:0] v76_reg_1981;
wire   [31:0] v82_fu_1475_p3;
reg   [31:0] v82_reg_1986;
wire   [31:0] v88_fu_1481_p3;
reg   [31:0] v88_reg_1991;
wire   [31:0] v94_fu_1487_p3;
reg   [31:0] v94_reg_1996;
reg   [31:0] v66_reg_2001;
wire   [31:0] grp_fu_683_p2;
reg   [31:0] v72_reg_2006;
reg   [31:0] v78_reg_2011;
reg   [31:0] v84_reg_2016;
reg   [31:0] v90_reg_2021;
reg   [31:0] v96_reg_2026;
reg   [31:0] v102_reg_2031;
reg   [31:0] v108_reg_2036;
wire   [31:0] v100_fu_1493_p3;
reg   [31:0] v100_reg_2041;
wire   [31:0] v106_fu_1499_p3;
reg   [31:0] v106_reg_2046;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln97_fu_787_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln98_fu_801_p1;
wire   [63:0] zext_ln107_fu_834_p1;
wire   [63:0] zext_ln102_fu_920_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln110_fu_936_p1;
wire   [63:0] zext_ln114_fu_952_p1;
wire   [63:0] zext_ln121_fu_964_p1;
wire   [63:0] zext_ln117_fu_1056_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_1072_p1;
wire   [63:0] zext_ln128_fu_1088_p1;
wire   [63:0] zext_ln135_fu_1103_p1;
wire   [63:0] zext_ln131_fu_1195_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_1214_p1;
wire   [63:0] zext_ln142_fu_1230_p1;
wire   [63:0] zext_ln149_fu_1242_p1;
wire   [63:0] zext_ln98_1_fu_1257_p1;
wire   [63:0] zext_ln145_fu_1355_p1;
wire   [63:0] zext_ln152_fu_1371_p1;
reg   [6:0] v60_fu_132;
wire   [6:0] add_ln98_fu_1247_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_136;
wire   [6:0] select_ln97_1_fu_765_p3;
reg   [6:0] ap_sig_allocacmp_v59_load;
reg   [9:0] indvar_flatten_fu_140;
wire   [9:0] add_ln97_1_fu_727_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v115_0_ce0_local;
reg    v115_1_ce0_local;
reg    v115_2_ce0_local;
reg    v115_3_ce0_local;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v114_0_ce1_local;
reg   [9:0] v114_0_address1_local;
reg    v114_0_ce0_local;
reg   [9:0] v114_0_address0_local;
reg    v114_1_ce1_local;
reg   [9:0] v114_1_address1_local;
reg    v114_1_ce0_local;
reg   [9:0] v114_1_address0_local;
reg    v114_2_ce1_local;
reg   [9:0] v114_2_address1_local;
reg    v114_2_ce0_local;
reg   [9:0] v114_2_address0_local;
reg    v114_3_ce1_local;
reg   [9:0] v114_3_address1_local;
reg    v114_3_ce0_local;
reg   [9:0] v114_3_address0_local;
reg    v58_0_ce0_local;
reg   [2:0] v58_0_address0_local;
reg    v58_0_we0_local;
reg    v58_1_ce0_local;
reg   [2:0] v58_1_address0_local;
reg    v58_1_we0_local;
reg    v58_2_ce0_local;
reg   [2:0] v58_2_address0_local;
reg    v58_2_we0_local;
reg    v58_3_ce0_local;
reg   [2:0] v58_3_address0_local;
reg    v58_3_we0_local;
reg    v58_4_ce1_local;
reg    v58_4_we0_local;
reg    v58_4_ce0_local;
reg    v58_5_ce1_local;
reg    v58_5_we0_local;
reg    v58_5_ce0_local;
reg    v58_6_ce0_local;
reg   [2:0] v58_6_address0_local;
reg    v58_6_we0_local;
reg    v58_7_ce0_local;
reg   [2:0] v58_7_address0_local;
reg    v58_7_we0_local;
reg   [31:0] grp_fu_671_p0;
reg   [31:0] grp_fu_671_p1;
reg   [31:0] grp_fu_675_p0;
reg   [31:0] grp_fu_675_p1;
reg   [31:0] grp_fu_679_p0;
reg   [31:0] grp_fu_679_p1;
reg   [31:0] grp_fu_683_p0;
reg   [31:0] grp_fu_683_p1;
wire   [0:0] tmp_2_fu_745_p3;
wire   [6:0] add_ln97_fu_739_p2;
wire   [5:0] or_ln_fu_826_p3;
wire   [31:0] v65_fu_891_p2;
wire   [31:0] v65_fu_891_p4;
wire   [31:0] v65_fu_891_p6;
wire   [31:0] v65_fu_891_p8;
wire   [31:0] v65_fu_891_p9;
wire   [9:0] tmp_fu_914_p3;
wire   [9:0] tmp_3_fu_928_p4;
wire   [5:0] or_ln1_fu_944_p4;
wire   [5:0] or_ln2_fu_957_p3;
wire   [31:0] v64_fu_985_p2;
wire   [31:0] v64_fu_985_p4;
wire   [31:0] v64_fu_985_p6;
wire   [31:0] v64_fu_985_p8;
wire   [31:0] v64_fu_985_p9;
wire   [31:0] v71_fu_1024_p2;
wire   [31:0] v71_fu_1024_p4;
wire   [31:0] v71_fu_1024_p6;
wire   [31:0] v71_fu_1024_p8;
wire   [31:0] v71_fu_1024_p9;
wire   [9:0] tmp_6_fu_1047_p5;
wire   [9:0] tmp_8_fu_1064_p4;
wire   [5:0] or_ln3_fu_1080_p4;
wire   [5:0] or_ln4_fu_1093_p5;
wire   [31:0] v77_fu_1124_p2;
wire   [31:0] v77_fu_1124_p4;
wire   [31:0] v77_fu_1124_p6;
wire   [31:0] v77_fu_1124_p8;
wire   [31:0] v77_fu_1124_p9;
wire   [31:0] v83_fu_1163_p2;
wire   [31:0] v83_fu_1163_p4;
wire   [31:0] v83_fu_1163_p6;
wire   [31:0] v83_fu_1163_p8;
wire   [31:0] v83_fu_1163_p9;
wire   [9:0] tmp_s_fu_1186_p5;
wire   [9:0] tmp_7_fu_1203_p6;
wire   [5:0] or_ln5_fu_1222_p4;
wire   [5:0] or_ln6_fu_1235_p3;
wire   [31:0] v89_fu_1284_p2;
wire   [31:0] v89_fu_1284_p4;
wire   [31:0] v89_fu_1284_p6;
wire   [31:0] v89_fu_1284_p8;
wire   [31:0] v89_fu_1284_p9;
wire   [31:0] v95_fu_1323_p2;
wire   [31:0] v95_fu_1323_p4;
wire   [31:0] v95_fu_1323_p6;
wire   [31:0] v95_fu_1323_p8;
wire   [31:0] v95_fu_1323_p9;
wire   [9:0] tmp_9_fu_1346_p5;
wire   [9:0] tmp_10_fu_1363_p4;
wire   [31:0] v101_fu_1401_p2;
wire   [31:0] v101_fu_1401_p4;
wire   [31:0] v101_fu_1401_p6;
wire   [31:0] v101_fu_1401_p8;
wire   [31:0] v101_fu_1401_p9;
wire   [31:0] v107_fu_1440_p2;
wire   [31:0] v107_fu_1440_p4;
wire   [31:0] v107_fu_1440_p6;
wire   [31:0] v107_fu_1440_p8;
wire   [31:0] v107_fu_1440_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire   [1:0] v65_fu_891_p1;
wire   [1:0] v65_fu_891_p3;
wire  signed [1:0] v65_fu_891_p5;
wire  signed [1:0] v65_fu_891_p7;
wire   [1:0] v64_fu_985_p1;
wire   [1:0] v64_fu_985_p3;
wire  signed [1:0] v64_fu_985_p5;
wire  signed [1:0] v64_fu_985_p7;
wire   [1:0] v71_fu_1024_p1;
wire   [1:0] v71_fu_1024_p3;
wire  signed [1:0] v71_fu_1024_p5;
wire  signed [1:0] v71_fu_1024_p7;
wire   [1:0] v77_fu_1124_p1;
wire   [1:0] v77_fu_1124_p3;
wire  signed [1:0] v77_fu_1124_p5;
wire  signed [1:0] v77_fu_1124_p7;
wire   [1:0] v83_fu_1163_p1;
wire   [1:0] v83_fu_1163_p3;
wire  signed [1:0] v83_fu_1163_p5;
wire  signed [1:0] v83_fu_1163_p7;
wire   [1:0] v89_fu_1284_p1;
wire   [1:0] v89_fu_1284_p3;
wire  signed [1:0] v89_fu_1284_p5;
wire  signed [1:0] v89_fu_1284_p7;
wire   [1:0] v95_fu_1323_p1;
wire   [1:0] v95_fu_1323_p3;
wire  signed [1:0] v95_fu_1323_p5;
wire  signed [1:0] v95_fu_1323_p7;
wire   [1:0] v101_fu_1401_p1;
wire   [1:0] v101_fu_1401_p3;
wire  signed [1:0] v101_fu_1401_p5;
wire  signed [1:0] v101_fu_1401_p7;
wire   [1:0] v107_fu_1440_p1;
wire   [1:0] v107_fu_1440_p3;
wire  signed [1:0] v107_fu_1440_p5;
wire  signed [1:0] v107_fu_1440_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_132 = 7'd0;
#0 v59_fu_136 = 7'd0;
#0 indvar_flatten_fu_140 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_675_p0),.din1(grp_fu_675_p1),.ce(1'b1),.dout(grp_fu_675_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_683_p0),.din1(grp_fu_683_p1),.ce(1'b1),.dout(grp_fu_683_p2));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U5(.din0(v65_fu_891_p2),.din1(v65_fu_891_p4),.din2(v65_fu_891_p6),.din3(v65_fu_891_p8),.def(v65_fu_891_p9),.sel(trunc_ln97_1_reg_1540),.dout(v65_fu_891_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U6(.din0(v64_fu_985_p2),.din1(v64_fu_985_p4),.din2(v64_fu_985_p6),.din3(v64_fu_985_p8),.def(v64_fu_985_p9),.sel(trunc_ln97_1_reg_1540),.dout(v64_fu_985_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U7(.din0(v71_fu_1024_p2),.din1(v71_fu_1024_p4),.din2(v71_fu_1024_p6),.din3(v71_fu_1024_p8),.def(v71_fu_1024_p9),.sel(trunc_ln97_1_reg_1540),.dout(v71_fu_1024_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U8(.din0(v77_fu_1124_p2),.din1(v77_fu_1124_p4),.din2(v77_fu_1124_p6),.din3(v77_fu_1124_p8),.def(v77_fu_1124_p9),.sel(trunc_ln97_1_reg_1540),.dout(v77_fu_1124_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U9(.din0(v83_fu_1163_p2),.din1(v83_fu_1163_p4),.din2(v83_fu_1163_p6),.din3(v83_fu_1163_p8),.def(v83_fu_1163_p9),.sel(trunc_ln97_1_reg_1540),.dout(v83_fu_1163_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U10(.din0(v89_fu_1284_p2),.din1(v89_fu_1284_p4),.din2(v89_fu_1284_p6),.din3(v89_fu_1284_p8),.def(v89_fu_1284_p9),.sel(trunc_ln97_1_reg_1540),.dout(v89_fu_1284_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U11(.din0(v95_fu_1323_p2),.din1(v95_fu_1323_p4),.din2(v95_fu_1323_p6),.din3(v95_fu_1323_p8),.def(v95_fu_1323_p9),.sel(trunc_ln97_1_reg_1540),.dout(v95_fu_1323_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(v101_fu_1401_p2),.din1(v101_fu_1401_p4),.din2(v101_fu_1401_p6),.din3(v101_fu_1401_p8),.def(v101_fu_1401_p9),.sel(trunc_ln97_1_reg_1540_pp0_iter1_reg),.dout(v101_fu_1401_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U13(.din0(v107_fu_1440_p2),.din1(v107_fu_1440_p4),.din2(v107_fu_1440_p6),.din3(v107_fu_1440_p8),.def(v107_fu_1440_p9),.sel(trunc_ln97_1_reg_1540_pp0_iter1_reg),.dout(v107_fu_1440_p11));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln97_fu_721_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_140 <= add_ln97_1_fu_727_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_140 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln97_fu_721_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v59_fu_136 <= select_ln97_1_fu_765_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v59_fu_136 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_132 <= 7'd0;
    end else if (((icmp_ln97_reg_1526 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_132 <= add_ln98_fu_1247_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cmp7_reg_1565 <= cmp7_fu_795_p2;
        cmp7_reg_1565_pp0_iter1_reg <= cmp7_reg_1565;
        cmp7_reg_1565_pp0_iter2_reg <= cmp7_reg_1565_pp0_iter1_reg;
        icmp_ln97_reg_1526 <= icmp_ln97_fu_721_p2;
        icmp_ln97_reg_1526_pp0_iter1_reg <= icmp_ln97_reg_1526;
        icmp_ln97_reg_1526_pp0_iter2_reg <= icmp_ln97_reg_1526_pp0_iter1_reg;
        icmp_ln97_reg_1526_pp0_iter3_reg <= icmp_ln97_reg_1526_pp0_iter2_reg;
        lshr_ln1_reg_1597 <= {{select_ln97_fu_753_p3[5:3]}};
        lshr_ln_reg_1553 <= {{select_ln97_1_fu_765_p3[5:2]}};
        select_ln97_reg_1530 <= select_ln97_fu_753_p3;
        tmp_1_reg_1615 <= {{select_ln97_fu_753_p3[5:1]}};
        tmp_4_reg_1625 <= {{select_ln97_fu_753_p3[5:2]}};
        tmp_5_reg_1647 <= select_ln97_fu_753_p3[32'd1];
        trunc_ln114_reg_1633 <= trunc_ln114_fu_849_p1;
        trunc_ln128_reg_1641 <= trunc_ln128_fu_853_p1;
        trunc_ln97_1_reg_1540 <= trunc_ln97_1_fu_773_p1;
        trunc_ln97_1_reg_1540_pp0_iter1_reg <= trunc_ln97_1_reg_1540;
        trunc_ln97_reg_1535 <= trunc_ln97_fu_761_p1;
        v104_reg_1951_pp0_iter2_reg <= v104_reg_1951;
        v58_0_addr_reg_1859 <= zext_ln98_1_fu_1257_p1;
        v58_0_addr_reg_1859_pp0_iter2_reg <= v58_0_addr_reg_1859;
        v58_0_addr_reg_1859_pp0_iter3_reg <= v58_0_addr_reg_1859_pp0_iter2_reg;
        v58_1_addr_reg_1864 <= zext_ln98_1_fu_1257_p1;
        v58_1_addr_reg_1864_pp0_iter2_reg <= v58_1_addr_reg_1864;
        v58_1_addr_reg_1864_pp0_iter3_reg <= v58_1_addr_reg_1864_pp0_iter2_reg;
        v58_2_addr_reg_1869 <= zext_ln98_1_fu_1257_p1;
        v58_2_addr_reg_1869_pp0_iter2_reg <= v58_2_addr_reg_1869;
        v58_2_addr_reg_1869_pp0_iter3_reg <= v58_2_addr_reg_1869_pp0_iter2_reg;
        v58_3_addr_reg_1874 <= zext_ln98_1_fu_1257_p1;
        v58_3_addr_reg_1874_pp0_iter2_reg <= v58_3_addr_reg_1874;
        v58_3_addr_reg_1874_pp0_iter3_reg <= v58_3_addr_reg_1874_pp0_iter2_reg;
        v58_4_addr_reg_1879 <= zext_ln98_1_fu_1257_p1;
        v58_4_addr_reg_1879_pp0_iter2_reg <= v58_4_addr_reg_1879;
        v58_4_addr_reg_1879_pp0_iter3_reg <= v58_4_addr_reg_1879_pp0_iter2_reg;
        v58_5_addr_reg_1890 <= zext_ln98_1_fu_1257_p1;
        v58_5_addr_reg_1890_pp0_iter2_reg <= v58_5_addr_reg_1890;
        v58_5_addr_reg_1890_pp0_iter3_reg <= v58_5_addr_reg_1890_pp0_iter2_reg;
        v58_6_addr_reg_1926 <= zext_ln98_1_fu_1257_p1;
        v58_6_addr_reg_1926_pp0_iter2_reg <= v58_6_addr_reg_1926;
        v58_6_addr_reg_1926_pp0_iter3_reg <= v58_6_addr_reg_1926_pp0_iter2_reg;
        v58_6_addr_reg_1926_pp0_iter4_reg <= v58_6_addr_reg_1926_pp0_iter3_reg;
        v58_7_addr_reg_1956 <= zext_ln98_1_fu_1257_p1;
        v58_7_addr_reg_1956_pp0_iter2_reg <= v58_7_addr_reg_1956;
        v58_7_addr_reg_1956_pp0_iter3_reg <= v58_7_addr_reg_1956_pp0_iter2_reg;
        v58_7_addr_reg_1956_pp0_iter4_reg <= v58_7_addr_reg_1956_pp0_iter3_reg;
        v89_reg_1885 <= v89_fu_1284_p11;
        v95_reg_1896 <= v95_fu_1323_p11;
        v98_reg_1921_pp0_iter2_reg <= v98_reg_1921;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_687 <= grp_fu_331_p_dout0;
        reg_695 <= grp_fu_675_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v100_reg_2041 <= v100_fu_1493_p3;
        v101_reg_1966 <= v101_fu_1401_p11;
        v106_reg_2046 <= v106_fu_1499_p3;
        v107_reg_1971 <= v107_fu_1440_p11;
        v63_reg_1961 <= v63_fu_1379_p3;
        v65_reg_1653 <= v65_fu_891_p11;
        v65_reg_1653_pp0_iter1_reg <= v65_reg_1653;
        v70_reg_1976 <= v70_fu_1463_p3;
        v76_reg_1981 <= v76_fu_1469_p3;
        v82_reg_1986 <= v82_fu_1475_p3;
        v88_reg_1991 <= v88_fu_1481_p3;
        v94_reg_1996 <= v94_fu_1487_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_2031 <= grp_fu_335_p_dout0;
        v108_reg_2036 <= grp_fu_683_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1951 <= v57_q0;
        v98_reg_1921 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1679 <= v57_q1;
        v68_reg_1704 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v64_reg_1719 <= v64_fu_985_p11;
        v71_reg_1724 <= v71_fu_1024_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_2001 <= grp_fu_335_p_dout0;
        v72_reg_2006 <= grp_fu_683_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_1749 <= v57_q1;
        v80_reg_1774 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v77_reg_1789 <= v77_fu_1124_p11;
        v83_reg_1794 <= v83_fu_1163_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_2011 <= grp_fu_335_p_dout0;
        v84_reg_2016 <= grp_fu_683_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v86_reg_1819 <= v57_q1;
        v92_reg_1844 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_2021 <= grp_fu_335_p_dout0;
        v96_reg_2026 <= grp_fu_683_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_1526 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_1526_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_140;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v59_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v59_load = v59_fu_136;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_671_p0 = v100_reg_2041;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_671_p0 = v88_reg_1991;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_671_p0 = v76_reg_1981;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_671_p0 = v63_reg_1961;
    end else begin
        grp_fu_671_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_671_p1 = v102_reg_2031;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_671_p1 = v90_reg_2021;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_671_p1 = v78_reg_2011;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_671_p1 = v66_reg_2001;
    end else begin
        grp_fu_671_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_675_p0 = v106_reg_2046;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_675_p0 = v94_reg_1996;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_675_p0 = v82_reg_1986;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_675_p0 = v70_reg_1976;
    end else begin
        grp_fu_675_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_675_p1 = v108_reg_2036;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_675_p1 = v96_reg_2026;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_675_p1 = v84_reg_2016;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_675_p1 = v72_reg_2006;
    end else begin
        grp_fu_675_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_679_p0 = v101_reg_1966;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_679_p0 = v89_reg_1885;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_679_p0 = v77_reg_1789;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_679_p0 = v64_reg_1719;
    end else begin
        grp_fu_679_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_679_p1 = v65_reg_1653_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_679_p1 = v65_reg_1653;
    end else begin
        grp_fu_679_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_683_p0 = v107_reg_1971;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_683_p0 = v95_reg_1896;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_683_p0 = v83_reg_1794;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_683_p0 = v71_reg_1724;
    end else begin
        grp_fu_683_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_683_p1 = v65_reg_1653_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_683_p1 = v65_reg_1653;
    end else begin
        grp_fu_683_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_0_address0_local = zext_ln152_fu_1371_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_address0_local = zext_ln138_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_address0_local = zext_ln124_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_0_address0_local = zext_ln110_fu_936_p1;
    end else begin
        v114_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_0_address1_local = zext_ln145_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_address1_local = zext_ln131_fu_1195_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_address1_local = zext_ln117_fu_1056_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_0_address1_local = zext_ln102_fu_920_p1;
    end else begin
        v114_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_0_ce0_local = 1'b1;
    end else begin
        v114_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_0_ce1_local = 1'b1;
    end else begin
        v114_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_1_address0_local = zext_ln152_fu_1371_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_1_address0_local = zext_ln138_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_1_address0_local = zext_ln124_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_1_address0_local = zext_ln110_fu_936_p1;
    end else begin
        v114_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_1_address1_local = zext_ln145_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_1_address1_local = zext_ln131_fu_1195_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_1_address1_local = zext_ln117_fu_1056_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_1_address1_local = zext_ln102_fu_920_p1;
    end else begin
        v114_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_1_ce0_local = 1'b1;
    end else begin
        v114_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_1_ce1_local = 1'b1;
    end else begin
        v114_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_2_address0_local = zext_ln152_fu_1371_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_2_address0_local = zext_ln138_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_2_address0_local = zext_ln124_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_2_address0_local = zext_ln110_fu_936_p1;
    end else begin
        v114_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_2_address1_local = zext_ln145_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_2_address1_local = zext_ln131_fu_1195_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_2_address1_local = zext_ln117_fu_1056_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_2_address1_local = zext_ln102_fu_920_p1;
    end else begin
        v114_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_2_ce0_local = 1'b1;
    end else begin
        v114_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_2_ce1_local = 1'b1;
    end else begin
        v114_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_3_address0_local = zext_ln152_fu_1371_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_3_address0_local = zext_ln138_fu_1214_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_3_address0_local = zext_ln124_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_3_address0_local = zext_ln110_fu_936_p1;
    end else begin
        v114_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_3_address1_local = zext_ln145_fu_1355_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_3_address1_local = zext_ln131_fu_1195_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_3_address1_local = zext_ln117_fu_1056_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_3_address1_local = zext_ln102_fu_920_p1;
    end else begin
        v114_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_3_ce0_local = 1'b1;
    end else begin
        v114_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v114_3_ce1_local = 1'b1;
    end else begin
        v114_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_0_ce0_local = 1'b1;
    end else begin
        v115_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_1_ce0_local = 1'b1;
    end else begin
        v115_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_2_ce0_local = 1'b1;
    end else begin
        v115_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v115_3_ce0_local = 1'b1;
    end else begin
        v115_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_1242_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_1103_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_964_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_834_p1;
        end else begin
            v57_address0_local = 'bx;
        end
    end else begin
        v57_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address1_local = zext_ln142_fu_1230_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_1088_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_952_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_801_p1;
        end else begin
            v57_address1_local = 'bx;
        end
    end else begin
        v57_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address0_local = v58_0_addr_reg_1859_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln98_1_fu_1257_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address0_local = v58_1_addr_reg_1864_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln98_1_fu_1257_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_address0_local = v58_2_addr_reg_1869_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = zext_ln98_1_fu_1257_p1;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_address0_local = v58_3_addr_reg_1874_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = zext_ln98_1_fu_1257_p1;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_ce0_local = 1'b1;
    end else begin
        v58_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_ce1_local = 1'b1;
    end else begin
        v58_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_4_we0_local = 1'b1;
    end else begin
        v58_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_ce0_local = 1'b1;
    end else begin
        v58_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_ce1_local = 1'b1;
    end else begin
        v58_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_5_we0_local = 1'b1;
    end else begin
        v58_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_6_address0_local = v58_6_addr_reg_1926_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_6_address0_local = v58_6_addr_reg_1926;
    end else begin
        v58_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_6_ce0_local = 1'b1;
    end else begin
        v58_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_6_we0_local = 1'b1;
    end else begin
        v58_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_7_address0_local = v58_7_addr_reg_1956_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_7_address0_local = v58_7_addr_reg_1956;
    end else begin
        v58_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_7_ce0_local = 1'b1;
    end else begin
        v58_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_7_we0_local = 1'b1;
    end else begin
        v58_7_we0_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln97_1_fu_727_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_739_p2 = (ap_sig_allocacmp_v59_load + 7'd1);
assign add_ln98_fu_1247_p2 = (select_ln97_reg_1530 + 7'd8);
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
assign cmp7_fu_795_p2 = ((select_ln97_1_fu_765_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_331_p_ce = 1'b1;
assign grp_fu_331_p_din0 = grp_fu_671_p0;
assign grp_fu_331_p_din1 = grp_fu_671_p1;
assign grp_fu_331_p_opcode = 2'd0;
assign grp_fu_335_p_ce = 1'b1;
assign grp_fu_335_p_din0 = grp_fu_679_p0;
assign grp_fu_335_p_din1 = grp_fu_679_p1;
assign icmp_ln97_fu_721_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_777_p4 = {{select_ln97_1_fu_765_p3[5:2]}};
assign or_ln1_fu_944_p4 = {{{tmp_4_reg_1625}, {1'd1}}, {trunc_ln114_reg_1633}};
assign or_ln2_fu_957_p3 = {{tmp_4_reg_1625}, {2'd3}};
assign or_ln3_fu_1080_p4 = {{{lshr_ln1_reg_1597}, {1'd1}}, {trunc_ln128_reg_1641}};
assign or_ln4_fu_1093_p5 = {{{{lshr_ln1_reg_1597}, {1'd1}}, {tmp_5_reg_1647}}, {1'd1}};
assign or_ln5_fu_1222_p4 = {{{lshr_ln1_reg_1597}, {2'd3}}, {trunc_ln114_reg_1633}};
assign or_ln6_fu_1235_p3 = {{lshr_ln1_reg_1597}, {3'd7}};
assign or_ln_fu_826_p3 = {{tmp_1_fu_816_p4}, {1'd1}};
assign select_ln97_1_fu_765_p3 = ((tmp_2_fu_745_p3[0:0] == 1'b1) ? add_ln97_fu_739_p2 : ap_sig_allocacmp_v59_load);
assign select_ln97_fu_753_p3 = ((tmp_2_fu_745_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_1363_p4 = {{{lshr_ln1_reg_1597}, {3'd7}}, {lshr_ln_reg_1553}};
assign tmp_1_fu_816_p4 = {{select_ln97_fu_753_p3[5:1]}};
assign tmp_2_fu_745_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_3_fu_928_p4 = {{{tmp_1_reg_1615}, {1'd1}}, {lshr_ln_reg_1553}};
assign tmp_6_fu_1047_p5 = {{{{tmp_4_reg_1625}, {1'd1}}, {trunc_ln114_reg_1633}}, {lshr_ln_reg_1553}};
assign tmp_7_fu_1203_p6 = {{{{{lshr_ln1_reg_1597}, {1'd1}}, {tmp_5_reg_1647}}, {1'd1}}, {lshr_ln_reg_1553}};
assign tmp_8_fu_1064_p4 = {{{tmp_4_reg_1625}, {2'd3}}, {lshr_ln_reg_1553}};
assign tmp_9_fu_1346_p5 = {{{{lshr_ln1_reg_1597}, {2'd3}}, {trunc_ln114_reg_1633}}, {lshr_ln_reg_1553}};
assign tmp_fu_914_p3 = {{trunc_ln97_reg_1535}, {lshr_ln_reg_1553}};
assign tmp_s_fu_1186_p5 = {{{{lshr_ln1_reg_1597}, {1'd1}}, {trunc_ln128_reg_1641}}, {lshr_ln_reg_1553}};
assign trunc_ln114_fu_849_p1 = select_ln97_fu_753_p3[0:0];
assign trunc_ln128_fu_853_p1 = select_ln97_fu_753_p3[1:0];
assign trunc_ln97_1_fu_773_p1 = select_ln97_1_fu_765_p3[1:0];
assign trunc_ln97_fu_761_p1 = select_ln97_fu_753_p3[5:0];
assign v100_fu_1493_p3 = ((cmp7_reg_1565_pp0_iter2_reg[0:0] == 1'b1) ? v98_reg_1921_pp0_iter2_reg : v58_6_q0);
assign v101_fu_1401_p2 = v114_0_q1;
assign v101_fu_1401_p4 = v114_1_q1;
assign v101_fu_1401_p6 = v114_2_q1;
assign v101_fu_1401_p8 = v114_3_q1;
assign v101_fu_1401_p9 = 'bx;
assign v106_fu_1499_p3 = ((cmp7_reg_1565_pp0_iter2_reg[0:0] == 1'b1) ? v104_reg_1951_pp0_iter2_reg : v58_7_q0);
assign v107_fu_1440_p2 = v114_0_q0;
assign v107_fu_1440_p4 = v114_1_q0;
assign v107_fu_1440_p6 = v114_2_q0;
assign v107_fu_1440_p8 = v114_3_q0;
assign v107_fu_1440_p9 = 'bx;
assign v114_0_address0 = v114_0_address0_local;
assign v114_0_address1 = v114_0_address1_local;
assign v114_0_ce0 = v114_0_ce0_local;
assign v114_0_ce1 = v114_0_ce1_local;
assign v114_1_address0 = v114_1_address0_local;
assign v114_1_address1 = v114_1_address1_local;
assign v114_1_ce0 = v114_1_ce0_local;
assign v114_1_ce1 = v114_1_ce1_local;
assign v114_2_address0 = v114_2_address0_local;
assign v114_2_address1 = v114_2_address1_local;
assign v114_2_ce0 = v114_2_ce0_local;
assign v114_2_ce1 = v114_2_ce1_local;
assign v114_3_address0 = v114_3_address0_local;
assign v114_3_address1 = v114_3_address1_local;
assign v114_3_ce0 = v114_3_ce0_local;
assign v114_3_ce1 = v114_3_ce1_local;
assign v115_0_address0 = zext_ln97_fu_787_p1;
assign v115_0_ce0 = v115_0_ce0_local;
assign v115_1_address0 = zext_ln97_fu_787_p1;
assign v115_1_ce0 = v115_1_ce0_local;
assign v115_2_address0 = zext_ln97_fu_787_p1;
assign v115_2_ce0 = v115_2_ce0_local;
assign v115_3_address0 = zext_ln97_fu_787_p1;
assign v115_3_ce0 = v115_3_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_d0 = reg_687;
assign v58_0_we0 = v58_0_we0_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_d0 = reg_695;
assign v58_1_we0 = v58_1_we0_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_d0 = reg_687;
assign v58_2_we0 = v58_2_we0_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_d0 = reg_695;
assign v58_3_we0 = v58_3_we0_local;
assign v58_4_address0 = v58_4_addr_reg_1879_pp0_iter3_reg;
assign v58_4_address1 = zext_ln98_1_fu_1257_p1;
assign v58_4_ce0 = v58_4_ce0_local;
assign v58_4_ce1 = v58_4_ce1_local;
assign v58_4_d0 = reg_687;
assign v58_4_we0 = v58_4_we0_local;
assign v58_5_address0 = v58_5_addr_reg_1890_pp0_iter3_reg;
assign v58_5_address1 = zext_ln98_1_fu_1257_p1;
assign v58_5_ce0 = v58_5_ce0_local;
assign v58_5_ce1 = v58_5_ce1_local;
assign v58_5_d0 = reg_695;
assign v58_5_we0 = v58_5_we0_local;
assign v58_6_address0 = v58_6_address0_local;
assign v58_6_ce0 = v58_6_ce0_local;
assign v58_6_d0 = reg_687;
assign v58_6_we0 = v58_6_we0_local;
assign v58_7_address0 = v58_7_address0_local;
assign v58_7_ce0 = v58_7_ce0_local;
assign v58_7_d0 = reg_695;
assign v58_7_we0 = v58_7_we0_local;
assign v63_fu_1379_p3 = ((cmp7_reg_1565_pp0_iter1_reg[0:0] == 1'b1) ? v61_reg_1679 : v58_0_q0);
assign v64_fu_985_p2 = v114_0_q1;
assign v64_fu_985_p4 = v114_1_q1;
assign v64_fu_985_p6 = v114_2_q1;
assign v64_fu_985_p8 = v114_3_q1;
assign v64_fu_985_p9 = 'bx;
assign v65_fu_891_p2 = v115_0_q0;
assign v65_fu_891_p4 = v115_1_q0;
assign v65_fu_891_p6 = v115_2_q0;
assign v65_fu_891_p8 = v115_3_q0;
assign v65_fu_891_p9 = 'bx;
assign v70_fu_1463_p3 = ((cmp7_reg_1565_pp0_iter1_reg[0:0] == 1'b1) ? v68_reg_1704 : v58_1_q0);
assign v71_fu_1024_p2 = v114_0_q0;
assign v71_fu_1024_p4 = v114_1_q0;
assign v71_fu_1024_p6 = v114_2_q0;
assign v71_fu_1024_p8 = v114_3_q0;
assign v71_fu_1024_p9 = 'bx;
assign v76_fu_1469_p3 = ((cmp7_reg_1565_pp0_iter1_reg[0:0] == 1'b1) ? v74_reg_1749 : v58_2_q0);
assign v77_fu_1124_p2 = v114_0_q1;
assign v77_fu_1124_p4 = v114_1_q1;
assign v77_fu_1124_p6 = v114_2_q1;
assign v77_fu_1124_p8 = v114_3_q1;
assign v77_fu_1124_p9 = 'bx;
assign v82_fu_1475_p3 = ((cmp7_reg_1565_pp0_iter1_reg[0:0] == 1'b1) ? v80_reg_1774 : v58_3_q0);
assign v83_fu_1163_p2 = v114_0_q0;
assign v83_fu_1163_p4 = v114_1_q0;
assign v83_fu_1163_p6 = v114_2_q0;
assign v83_fu_1163_p8 = v114_3_q0;
assign v83_fu_1163_p9 = 'bx;
assign v88_fu_1481_p3 = ((cmp7_reg_1565_pp0_iter1_reg[0:0] == 1'b1) ? v86_reg_1819 : v58_4_q1);
assign v89_fu_1284_p2 = v114_0_q1;
assign v89_fu_1284_p4 = v114_1_q1;
assign v89_fu_1284_p6 = v114_2_q1;
assign v89_fu_1284_p8 = v114_3_q1;
assign v89_fu_1284_p9 = 'bx;
assign v94_fu_1487_p3 = ((cmp7_reg_1565_pp0_iter1_reg[0:0] == 1'b1) ? v92_reg_1844 : v58_5_q1);
assign v95_fu_1323_p2 = v114_0_q0;
assign v95_fu_1323_p4 = v114_1_q0;
assign v95_fu_1323_p6 = v114_2_q0;
assign v95_fu_1323_p8 = v114_3_q0;
assign v95_fu_1323_p9 = 'bx;
assign zext_ln102_fu_920_p1 = tmp_fu_914_p3;
assign zext_ln107_fu_834_p1 = or_ln_fu_826_p3;
assign zext_ln110_fu_936_p1 = tmp_3_fu_928_p4;
assign zext_ln114_fu_952_p1 = or_ln1_fu_944_p4;
assign zext_ln117_fu_1056_p1 = tmp_6_fu_1047_p5;
assign zext_ln121_fu_964_p1 = or_ln2_fu_957_p3;
assign zext_ln124_fu_1072_p1 = tmp_8_fu_1064_p4;
assign zext_ln128_fu_1088_p1 = or_ln3_fu_1080_p4;
assign zext_ln131_fu_1195_p1 = tmp_s_fu_1186_p5;
assign zext_ln135_fu_1103_p1 = or_ln4_fu_1093_p5;
assign zext_ln138_fu_1214_p1 = tmp_7_fu_1203_p6;
assign zext_ln142_fu_1230_p1 = or_ln5_fu_1222_p4;
assign zext_ln145_fu_1355_p1 = tmp_9_fu_1346_p5;
assign zext_ln149_fu_1242_p1 = or_ln6_fu_1235_p3;
assign zext_ln152_fu_1371_p1 = tmp_10_fu_1363_p4;
assign zext_ln97_fu_787_p1 = lshr_ln_fu_777_p4;
assign zext_ln98_1_fu_1257_p1 = lshr_ln1_reg_1597;
assign zext_ln98_fu_801_p1 = select_ln97_fu_753_p3;
endmodule 