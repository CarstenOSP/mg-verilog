module atax_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v114_0_address0,v114_0_ce0,v114_0_q0,v114_0_address1,v114_0_ce1,v114_0_q1,v114_1_address0,v114_1_ce0,v114_1_q0,v114_1_address1,v114_1_ce1,v114_1_q1,v114_2_address0,v114_2_ce0,v114_2_q0,v114_2_address1,v114_2_ce1,v114_2_q1,v114_3_address0,v114_3_ce0,v114_3_q0,v114_3_address1,v114_3_ce1,v114_3_q1,v115_address0,v115_ce0,v115_q0,v57_address0,v57_ce0,v57_q0,v57_address1,v57_ce1,v57_q1,v58_0_address0,v58_0_ce0,v58_0_we0,v58_0_d0,v58_0_q0,v58_0_address1,v58_0_ce1,v58_0_we1,v58_0_d1,v58_0_q1,v58_1_address0,v58_1_ce0,v58_1_we0,v58_1_d0,v58_1_q0,v58_1_address1,v58_1_ce1,v58_1_we1,v58_1_d1,v58_1_q1,v58_2_address0,v58_2_ce0,v58_2_we0,v58_2_d0,v58_2_q0,v58_2_address1,v58_2_ce1,v58_2_we1,v58_2_d1,v58_2_q1,v58_3_address0,v58_3_ce0,v58_3_we0,v58_3_d0,v58_3_q0,v58_3_address1,v58_3_ce1,v58_3_we1,v58_3_d1,v58_3_q1,grp_fu_155_p_din0,grp_fu_155_p_din1,grp_fu_155_p_opcode,grp_fu_155_p_dout0,grp_fu_155_p_ce,grp_fu_159_p_din0,grp_fu_159_p_din1,grp_fu_159_p_dout0,grp_fu_159_p_ce); 
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
output  [5:0] v115_address0;
output   v115_ce0;
input  [31:0] v115_q0;
output  [5:0] v57_address0;
output   v57_ce0;
input  [31:0] v57_q0;
output  [5:0] v57_address1;
output   v57_ce1;
input  [31:0] v57_q1;
output  [3:0] v58_0_address0;
output   v58_0_ce0;
output   v58_0_we0;
output  [31:0] v58_0_d0;
input  [31:0] v58_0_q0;
output  [3:0] v58_0_address1;
output   v58_0_ce1;
output   v58_0_we1;
output  [31:0] v58_0_d1;
input  [31:0] v58_0_q1;
output  [3:0] v58_1_address0;
output   v58_1_ce0;
output   v58_1_we0;
output  [31:0] v58_1_d0;
input  [31:0] v58_1_q0;
output  [3:0] v58_1_address1;
output   v58_1_ce1;
output   v58_1_we1;
output  [31:0] v58_1_d1;
input  [31:0] v58_1_q1;
output  [3:0] v58_2_address0;
output   v58_2_ce0;
output   v58_2_we0;
output  [31:0] v58_2_d0;
input  [31:0] v58_2_q0;
output  [3:0] v58_2_address1;
output   v58_2_ce1;
output   v58_2_we1;
output  [31:0] v58_2_d1;
input  [31:0] v58_2_q1;
output  [3:0] v58_3_address0;
output   v58_3_ce0;
output   v58_3_we0;
output  [31:0] v58_3_d0;
input  [31:0] v58_3_q0;
output  [3:0] v58_3_address1;
output   v58_3_ce1;
output   v58_3_we1;
output  [31:0] v58_3_d1;
input  [31:0] v58_3_q1;
output  [31:0] grp_fu_155_p_din0;
output  [31:0] grp_fu_155_p_din1;
output  [1:0] grp_fu_155_p_opcode;
input  [31:0] grp_fu_155_p_dout0;
output   grp_fu_155_p_ce;
output  [31:0] grp_fu_159_p_din0;
output  [31:0] grp_fu_159_p_din1;
input  [31:0] grp_fu_159_p_dout0;
output   grp_fu_159_p_ce;
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
reg   [0:0] icmp_ln97_reg_1435;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_624;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] grp_fu_612_p2;
reg   [31:0] reg_631;
wire   [0:0] icmp_ln97_fu_656_p2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln97_reg_1435_pp0_iter1_reg;
reg   [0:0] icmp_ln97_reg_1435_pp0_iter2_reg;
reg   [0:0] icmp_ln97_reg_1435_pp0_iter3_reg;
wire   [0:0] tmp_2_fu_671_p3;
reg   [0:0] tmp_2_reg_1439;
wire   [6:0] select_ln97_fu_679_p3;
reg   [6:0] select_ln97_reg_1444;
wire   [5:0] trunc_ln97_fu_687_p1;
reg   [5:0] trunc_ln97_reg_1449;
reg   [3:0] lshr_ln1_reg_1454;
wire   [4:0] tmp_1_fu_706_p4;
reg   [4:0] tmp_1_reg_1468;
wire   [0:0] trunc_ln114_fu_729_p1;
reg   [0:0] trunc_ln114_reg_1478;
reg   [2:0] tmp_9_reg_1486;
wire   [1:0] trunc_ln128_fu_743_p1;
reg   [1:0] trunc_ln128_reg_1499;
reg   [0:0] tmp_4_reg_1505;
wire   [1:0] trunc_ln97_1_fu_781_p1;
reg   [1:0] trunc_ln97_1_reg_1511;
wire   [3:0] lshr_ln_fu_785_p4;
reg   [3:0] lshr_ln_reg_1523;
wire   [0:0] cmp7_fu_795_p2;
reg   [0:0] cmp7_reg_1533;
reg   [0:0] cmp7_reg_1533_pp0_iter1_reg;
reg   [31:0] v61_reg_1570;
reg   [31:0] v68_reg_1595;
wire   [31:0] v65_fu_863_p1;
reg   [31:0] v65_reg_1610;
wire   [31:0] v64_fu_883_p11;
reg   [31:0] v64_reg_1616;
wire   [31:0] v71_fu_922_p11;
reg   [31:0] v71_reg_1621;
reg   [31:0] v74_reg_1646;
reg   [31:0] v80_reg_1671;
wire   [31:0] v77_fu_1022_p11;
reg   [31:0] v77_reg_1686;
wire   [31:0] v83_fu_1061_p11;
reg   [31:0] v83_reg_1691;
reg   [31:0] v86_reg_1716;
reg   [31:0] v92_reg_1741;
reg   [3:0] v58_0_addr_reg_1756;
reg   [3:0] v58_0_addr_reg_1756_pp0_iter2_reg;
reg   [3:0] v58_0_addr_reg_1756_pp0_iter3_reg;
reg   [3:0] v58_1_addr_reg_1761;
reg   [3:0] v58_1_addr_reg_1761_pp0_iter2_reg;
reg   [3:0] v58_1_addr_reg_1761_pp0_iter3_reg;
reg   [3:0] v58_2_addr_reg_1766;
reg   [3:0] v58_2_addr_reg_1766_pp0_iter2_reg;
reg   [3:0] v58_2_addr_reg_1766_pp0_iter3_reg;
reg   [3:0] v58_3_addr_reg_1771;
reg   [3:0] v58_3_addr_reg_1771_pp0_iter2_reg;
reg   [3:0] v58_3_addr_reg_1771_pp0_iter3_reg;
reg   [3:0] v58_0_addr_1_reg_1776;
reg   [3:0] v58_0_addr_1_reg_1776_pp0_iter2_reg;
reg   [3:0] v58_0_addr_1_reg_1776_pp0_iter3_reg;
reg   [3:0] v58_0_addr_1_reg_1776_pp0_iter4_reg;
wire   [31:0] v89_fu_1193_p11;
reg   [31:0] v89_reg_1781;
reg   [3:0] v58_1_addr_1_reg_1786;
reg   [3:0] v58_1_addr_1_reg_1786_pp0_iter2_reg;
reg   [3:0] v58_1_addr_1_reg_1786_pp0_iter3_reg;
reg   [3:0] v58_1_addr_1_reg_1786_pp0_iter4_reg;
wire   [31:0] v95_fu_1232_p11;
reg   [31:0] v95_reg_1791;
reg   [31:0] v98_reg_1816;
reg   [31:0] v98_reg_1816_pp0_iter2_reg;
reg   [3:0] v58_2_addr_1_reg_1821;
reg   [3:0] v58_2_addr_1_reg_1821_pp0_iter2_reg;
reg   [3:0] v58_2_addr_1_reg_1821_pp0_iter3_reg;
reg   [3:0] v58_2_addr_1_reg_1821_pp0_iter4_reg;
reg   [31:0] v104_reg_1846;
reg   [31:0] v104_reg_1846_pp0_iter2_reg;
reg   [3:0] v58_3_addr_1_reg_1851;
reg   [3:0] v58_3_addr_1_reg_1851_pp0_iter2_reg;
reg   [3:0] v58_3_addr_1_reg_1851_pp0_iter3_reg;
reg   [3:0] v58_3_addr_1_reg_1851_pp0_iter4_reg;
wire   [31:0] v63_fu_1288_p3;
reg   [31:0] v63_reg_1856;
wire   [31:0] v101_fu_1310_p11;
reg   [31:0] v101_reg_1861;
wire   [31:0] v107_fu_1349_p11;
reg   [31:0] v107_reg_1866;
wire   [31:0] v70_fu_1372_p3;
reg   [31:0] v70_reg_1871;
wire   [31:0] v76_fu_1378_p3;
reg   [31:0] v76_reg_1876;
wire   [31:0] v82_fu_1384_p3;
reg   [31:0] v82_reg_1881;
wire   [31:0] v88_fu_1390_p3;
reg   [31:0] v88_reg_1886;
wire   [31:0] v94_fu_1396_p3;
reg   [31:0] v94_reg_1891;
reg   [31:0] v66_reg_1896;
wire   [31:0] grp_fu_620_p2;
reg   [31:0] v72_reg_1901;
reg   [31:0] v78_reg_1906;
reg   [31:0] v84_reg_1911;
reg   [31:0] v90_reg_1916;
reg   [31:0] v96_reg_1921;
reg   [31:0] v102_reg_1926;
reg   [31:0] v108_reg_1931;
wire   [31:0] v100_fu_1402_p3;
reg   [31:0] v100_reg_1936;
wire   [31:0] v106_fu_1408_p3;
reg   [31:0] v106_reg_1941;
reg   [31:0] v103_reg_1946;
reg   [31:0] v109_reg_1951;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln98_fu_691_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln107_fu_724_p1;
wire   [63:0] zext_ln97_fu_776_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln102_fu_808_p1;
wire   [63:0] zext_ln110_fu_825_p1;
wire   [63:0] zext_ln114_fu_841_p1;
wire   [63:0] zext_ln121_fu_853_p1;
wire   [63:0] zext_ln117_fu_954_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln124_fu_970_p1;
wire   [63:0] zext_ln128_fu_986_p1;
wire   [63:0] zext_ln135_fu_1001_p1;
wire   [63:0] zext_ln131_fu_1093_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln138_fu_1112_p1;
wire   [63:0] zext_ln142_fu_1128_p1;
wire   [63:0] zext_ln149_fu_1140_p1;
wire   [63:0] zext_ln98_1_fu_1155_p1;
wire   [63:0] zext_ln128_1_fu_1169_p1;
wire   [63:0] zext_ln145_fu_1264_p1;
wire   [63:0] zext_ln152_fu_1280_p1;
reg   [6:0] v60_fu_120;
wire   [6:0] add_ln98_fu_1145_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v60_load;
reg   [6:0] v59_fu_124;
wire   [6:0] select_ln97_1_fu_769_p3;
reg   [9:0] indvar_flatten_fu_128;
wire   [9:0] add_ln97_1_fu_662_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v57_ce1_local;
reg   [5:0] v57_address1_local;
reg    v57_ce0_local;
reg   [5:0] v57_address0_local;
reg    v115_ce0_local;
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
reg    v58_0_ce1_local;
reg   [3:0] v58_0_address1_local;
reg    v58_0_ce0_local;
reg   [3:0] v58_0_address0_local;
reg    v58_0_we1_local;
reg    v58_0_we0_local;
reg    v58_1_ce1_local;
reg   [3:0] v58_1_address1_local;
reg    v58_1_ce0_local;
reg   [3:0] v58_1_address0_local;
reg    v58_1_we1_local;
reg    v58_1_we0_local;
reg    v58_2_ce1_local;
reg   [3:0] v58_2_address1_local;
reg    v58_2_ce0_local;
reg   [3:0] v58_2_address0_local;
reg    v58_2_we1_local;
reg    v58_2_we0_local;
reg    v58_3_ce1_local;
reg   [3:0] v58_3_address1_local;
reg    v58_3_ce0_local;
reg   [3:0] v58_3_address0_local;
reg    v58_3_we1_local;
reg    v58_3_we0_local;
reg   [31:0] grp_fu_608_p0;
reg   [31:0] grp_fu_608_p1;
reg   [31:0] grp_fu_612_p0;
reg   [31:0] grp_fu_612_p1;
reg   [31:0] grp_fu_616_p0;
reg   [31:0] grp_fu_620_p0;
wire   [5:0] or_ln_fu_716_p3;
wire   [6:0] add_ln97_fu_763_p2;
wire   [9:0] tmp_fu_801_p3;
wire   [9:0] tmp_3_fu_816_p4;
wire   [5:0] or_ln1_fu_833_p4;
wire   [5:0] or_ln2_fu_846_p3;
wire   [31:0] v64_fu_883_p2;
wire   [31:0] v64_fu_883_p4;
wire   [31:0] v64_fu_883_p6;
wire   [31:0] v64_fu_883_p8;
wire   [31:0] v64_fu_883_p9;
wire   [31:0] v71_fu_922_p2;
wire   [31:0] v71_fu_922_p4;
wire   [31:0] v71_fu_922_p6;
wire   [31:0] v71_fu_922_p8;
wire   [31:0] v71_fu_922_p9;
wire   [9:0] tmp_6_fu_945_p5;
wire   [9:0] tmp_8_fu_962_p4;
wire   [5:0] or_ln3_fu_978_p4;
wire   [5:0] or_ln4_fu_991_p5;
wire   [31:0] v77_fu_1022_p2;
wire   [31:0] v77_fu_1022_p4;
wire   [31:0] v77_fu_1022_p6;
wire   [31:0] v77_fu_1022_p8;
wire   [31:0] v77_fu_1022_p9;
wire   [31:0] v83_fu_1061_p2;
wire   [31:0] v83_fu_1061_p4;
wire   [31:0] v83_fu_1061_p6;
wire   [31:0] v83_fu_1061_p8;
wire   [31:0] v83_fu_1061_p9;
wire   [9:0] tmp_s_fu_1084_p5;
wire   [9:0] tmp_5_fu_1101_p6;
wire   [5:0] or_ln5_fu_1120_p4;
wire   [5:0] or_ln6_fu_1133_p3;
wire   [3:0] or_ln128_1_fu_1162_p3;
wire   [31:0] v89_fu_1193_p2;
wire   [31:0] v89_fu_1193_p4;
wire   [31:0] v89_fu_1193_p6;
wire   [31:0] v89_fu_1193_p8;
wire   [31:0] v89_fu_1193_p9;
wire   [31:0] v95_fu_1232_p2;
wire   [31:0] v95_fu_1232_p4;
wire   [31:0] v95_fu_1232_p6;
wire   [31:0] v95_fu_1232_p8;
wire   [31:0] v95_fu_1232_p9;
wire   [9:0] tmp_7_fu_1255_p5;
wire   [9:0] tmp_10_fu_1272_p4;
wire   [31:0] v101_fu_1310_p2;
wire   [31:0] v101_fu_1310_p4;
wire   [31:0] v101_fu_1310_p6;
wire   [31:0] v101_fu_1310_p8;
wire   [31:0] v101_fu_1310_p9;
wire   [31:0] v107_fu_1349_p2;
wire   [31:0] v107_fu_1349_p4;
wire   [31:0] v107_fu_1349_p6;
wire   [31:0] v107_fu_1349_p8;
wire   [31:0] v107_fu_1349_p9;
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
wire   [1:0] v64_fu_883_p1;
wire   [1:0] v64_fu_883_p3;
wire  signed [1:0] v64_fu_883_p5;
wire  signed [1:0] v64_fu_883_p7;
wire   [1:0] v71_fu_922_p1;
wire   [1:0] v71_fu_922_p3;
wire  signed [1:0] v71_fu_922_p5;
wire  signed [1:0] v71_fu_922_p7;
wire   [1:0] v77_fu_1022_p1;
wire   [1:0] v77_fu_1022_p3;
wire  signed [1:0] v77_fu_1022_p5;
wire  signed [1:0] v77_fu_1022_p7;
wire   [1:0] v83_fu_1061_p1;
wire   [1:0] v83_fu_1061_p3;
wire  signed [1:0] v83_fu_1061_p5;
wire  signed [1:0] v83_fu_1061_p7;
wire   [1:0] v89_fu_1193_p1;
wire   [1:0] v89_fu_1193_p3;
wire  signed [1:0] v89_fu_1193_p5;
wire  signed [1:0] v89_fu_1193_p7;
wire   [1:0] v95_fu_1232_p1;
wire   [1:0] v95_fu_1232_p3;
wire  signed [1:0] v95_fu_1232_p5;
wire  signed [1:0] v95_fu_1232_p7;
wire   [1:0] v101_fu_1310_p1;
wire   [1:0] v101_fu_1310_p3;
wire  signed [1:0] v101_fu_1310_p5;
wire  signed [1:0] v101_fu_1310_p7;
wire   [1:0] v107_fu_1349_p1;
wire   [1:0] v107_fu_1349_p3;
wire  signed [1:0] v107_fu_1349_p5;
wire  signed [1:0] v107_fu_1349_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v60_fu_120 = 7'd0;
#0 v59_fu_124 = 7'd0;
#0 indvar_flatten_fu_128 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_612_p0),.din1(grp_fu_612_p1),.ce(1'b1),.dout(grp_fu_612_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_620_p0),.din1(v65_reg_1610),.ce(1'b1),.dout(grp_fu_620_p2));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U14(.din0(v64_fu_883_p2),.din1(v64_fu_883_p4),.din2(v64_fu_883_p6),.din3(v64_fu_883_p8),.def(v64_fu_883_p9),.sel(trunc_ln97_1_reg_1511),.dout(v64_fu_883_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U15(.din0(v71_fu_922_p2),.din1(v71_fu_922_p4),.din2(v71_fu_922_p6),.din3(v71_fu_922_p8),.def(v71_fu_922_p9),.sel(trunc_ln97_1_reg_1511),.dout(v71_fu_922_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U16(.din0(v77_fu_1022_p2),.din1(v77_fu_1022_p4),.din2(v77_fu_1022_p6),.din3(v77_fu_1022_p8),.def(v77_fu_1022_p9),.sel(trunc_ln97_1_reg_1511),.dout(v77_fu_1022_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U17(.din0(v83_fu_1061_p2),.din1(v83_fu_1061_p4),.din2(v83_fu_1061_p6),.din3(v83_fu_1061_p8),.def(v83_fu_1061_p9),.sel(trunc_ln97_1_reg_1511),.dout(v83_fu_1061_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U18(.din0(v89_fu_1193_p2),.din1(v89_fu_1193_p4),.din2(v89_fu_1193_p6),.din3(v89_fu_1193_p8),.def(v89_fu_1193_p9),.sel(trunc_ln97_1_reg_1511),.dout(v89_fu_1193_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U19(.din0(v95_fu_1232_p2),.din1(v95_fu_1232_p4),.din2(v95_fu_1232_p6),.din3(v95_fu_1232_p8),.def(v95_fu_1232_p9),.sel(trunc_ln97_1_reg_1511),.dout(v95_fu_1232_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U20(.din0(v101_fu_1310_p2),.din1(v101_fu_1310_p4),.din2(v101_fu_1310_p6),.din3(v101_fu_1310_p8),.def(v101_fu_1310_p9),.sel(trunc_ln97_1_reg_1511),.dout(v101_fu_1310_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U21(.din0(v107_fu_1349_p2),.din1(v107_fu_1349_p4),.din2(v107_fu_1349_p6),.din3(v107_fu_1349_p8),.def(v107_fu_1349_p9),.sel(trunc_ln97_1_reg_1511),.dout(v107_fu_1349_p11));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln97_fu_656_p2 == 1'd0))) begin
            indvar_flatten_fu_128 <= add_ln97_1_fu_662_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v59_fu_124 <= 7'd0;
    end else if (((icmp_ln97_reg_1435 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v59_fu_124 <= select_ln97_1_fu_769_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v60_fu_120 <= 7'd0;
    end else if (((icmp_ln97_reg_1435 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v60_fu_120 <= add_ln98_fu_1145_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cmp7_reg_1533 <= cmp7_fu_795_p2;
        cmp7_reg_1533_pp0_iter1_reg <= cmp7_reg_1533;
        lshr_ln_reg_1523 <= {{select_ln97_1_fu_769_p3[5:2]}};
        trunc_ln97_1_reg_1511 <= trunc_ln97_1_fu_781_p1;
        v100_reg_1936 <= v100_fu_1402_p3;
        v101_reg_1861 <= v101_fu_1310_p11;
        v106_reg_1941 <= v106_fu_1408_p3;
        v107_reg_1866 <= v107_fu_1349_p11;
        v63_reg_1856 <= v63_fu_1288_p3;
        v70_reg_1871 <= v70_fu_1372_p3;
        v76_reg_1876 <= v76_fu_1378_p3;
        v82_reg_1881 <= v82_fu_1384_p3;
        v88_reg_1886 <= v88_fu_1390_p3;
        v94_reg_1891 <= v94_fu_1396_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln97_reg_1435 <= icmp_ln97_fu_656_p2;
        icmp_ln97_reg_1435_pp0_iter1_reg <= icmp_ln97_reg_1435;
        icmp_ln97_reg_1435_pp0_iter2_reg <= icmp_ln97_reg_1435_pp0_iter1_reg;
        icmp_ln97_reg_1435_pp0_iter3_reg <= icmp_ln97_reg_1435_pp0_iter2_reg;
        lshr_ln1_reg_1454 <= {{select_ln97_fu_679_p3[5:2]}};
        select_ln97_reg_1444 <= select_ln97_fu_679_p3;
        tmp_1_reg_1468 <= {{select_ln97_fu_679_p3[5:1]}};
        tmp_2_reg_1439 <= ap_sig_allocacmp_v60_load[32'd6];
        tmp_4_reg_1505 <= select_ln97_fu_679_p3[32'd1];
        tmp_9_reg_1486 <= {{select_ln97_fu_679_p3[5:3]}};
        trunc_ln114_reg_1478 <= trunc_ln114_fu_729_p1;
        trunc_ln128_reg_1499 <= trunc_ln128_fu_743_p1;
        trunc_ln97_reg_1449 <= trunc_ln97_fu_687_p1;
        v104_reg_1846_pp0_iter2_reg <= v104_reg_1846;
        v58_0_addr_1_reg_1776[3 : 1] <= zext_ln128_1_fu_1169_p1[3 : 1];
        v58_0_addr_1_reg_1776_pp0_iter2_reg[3 : 1] <= v58_0_addr_1_reg_1776[3 : 1];
        v58_0_addr_1_reg_1776_pp0_iter3_reg[3 : 1] <= v58_0_addr_1_reg_1776_pp0_iter2_reg[3 : 1];
        v58_0_addr_1_reg_1776_pp0_iter4_reg[3 : 1] <= v58_0_addr_1_reg_1776_pp0_iter3_reg[3 : 1];
        v58_0_addr_reg_1756 <= zext_ln98_1_fu_1155_p1;
        v58_0_addr_reg_1756_pp0_iter2_reg <= v58_0_addr_reg_1756;
        v58_0_addr_reg_1756_pp0_iter3_reg <= v58_0_addr_reg_1756_pp0_iter2_reg;
        v58_1_addr_1_reg_1786[3 : 1] <= zext_ln128_1_fu_1169_p1[3 : 1];
        v58_1_addr_1_reg_1786_pp0_iter2_reg[3 : 1] <= v58_1_addr_1_reg_1786[3 : 1];
        v58_1_addr_1_reg_1786_pp0_iter3_reg[3 : 1] <= v58_1_addr_1_reg_1786_pp0_iter2_reg[3 : 1];
        v58_1_addr_1_reg_1786_pp0_iter4_reg[3 : 1] <= v58_1_addr_1_reg_1786_pp0_iter3_reg[3 : 1];
        v58_1_addr_reg_1761 <= zext_ln98_1_fu_1155_p1;
        v58_1_addr_reg_1761_pp0_iter2_reg <= v58_1_addr_reg_1761;
        v58_1_addr_reg_1761_pp0_iter3_reg <= v58_1_addr_reg_1761_pp0_iter2_reg;
        v58_2_addr_1_reg_1821[3 : 1] <= zext_ln128_1_fu_1169_p1[3 : 1];
        v58_2_addr_1_reg_1821_pp0_iter2_reg[3 : 1] <= v58_2_addr_1_reg_1821[3 : 1];
        v58_2_addr_1_reg_1821_pp0_iter3_reg[3 : 1] <= v58_2_addr_1_reg_1821_pp0_iter2_reg[3 : 1];
        v58_2_addr_1_reg_1821_pp0_iter4_reg[3 : 1] <= v58_2_addr_1_reg_1821_pp0_iter3_reg[3 : 1];
        v58_2_addr_reg_1766 <= zext_ln98_1_fu_1155_p1;
        v58_2_addr_reg_1766_pp0_iter2_reg <= v58_2_addr_reg_1766;
        v58_2_addr_reg_1766_pp0_iter3_reg <= v58_2_addr_reg_1766_pp0_iter2_reg;
        v58_3_addr_1_reg_1851[3 : 1] <= zext_ln128_1_fu_1169_p1[3 : 1];
        v58_3_addr_1_reg_1851_pp0_iter2_reg[3 : 1] <= v58_3_addr_1_reg_1851[3 : 1];
        v58_3_addr_1_reg_1851_pp0_iter3_reg[3 : 1] <= v58_3_addr_1_reg_1851_pp0_iter2_reg[3 : 1];
        v58_3_addr_1_reg_1851_pp0_iter4_reg[3 : 1] <= v58_3_addr_1_reg_1851_pp0_iter3_reg[3 : 1];
        v58_3_addr_reg_1771 <= zext_ln98_1_fu_1155_p1;
        v58_3_addr_reg_1771_pp0_iter2_reg <= v58_3_addr_reg_1771;
        v58_3_addr_reg_1771_pp0_iter3_reg <= v58_3_addr_reg_1771_pp0_iter2_reg;
        v89_reg_1781 <= v89_fu_1193_p11;
        v95_reg_1791 <= v95_fu_1232_p11;
        v98_reg_1816_pp0_iter2_reg <= v98_reg_1816;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_624 <= grp_fu_155_p_dout0;
        reg_631 <= grp_fu_612_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v102_reg_1926 <= grp_fu_159_p_dout0;
        v108_reg_1931 <= grp_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v103_reg_1946 <= grp_fu_155_p_dout0;
        v109_reg_1951 <= grp_fu_612_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v104_reg_1846 <= v57_q0;
        v98_reg_1816 <= v57_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v61_reg_1570 <= v57_q1;
        v68_reg_1595 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v64_reg_1616 <= v64_fu_883_p11;
        v65_reg_1610 <= v65_fu_863_p1;
        v71_reg_1621 <= v71_fu_922_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v66_reg_1896 <= grp_fu_159_p_dout0;
        v72_reg_1901 <= grp_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v74_reg_1646 <= v57_q1;
        v80_reg_1671 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v77_reg_1686 <= v77_fu_1022_p11;
        v83_reg_1691 <= v83_fu_1061_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v78_reg_1906 <= grp_fu_159_p_dout0;
        v84_reg_1911 <= grp_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v86_reg_1716 <= v57_q1;
        v92_reg_1741 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v90_reg_1916 <= grp_fu_159_p_dout0;
        v96_reg_1921 <= grp_fu_620_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_reg_1435 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln97_reg_1435_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v60_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v60_load = v60_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_608_p0 = v100_reg_1936;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_608_p0 = v88_reg_1886;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_608_p0 = v76_reg_1876;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_608_p0 = v63_reg_1856;
    end else begin
        grp_fu_608_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_608_p1 = v102_reg_1926;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_608_p1 = v90_reg_1916;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_608_p1 = v78_reg_1906;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_608_p1 = v66_reg_1896;
    end else begin
        grp_fu_608_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_612_p0 = v106_reg_1941;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_612_p0 = v94_reg_1891;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_612_p0 = v82_reg_1881;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_612_p0 = v70_reg_1871;
    end else begin
        grp_fu_612_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_612_p1 = v108_reg_1931;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_612_p1 = v96_reg_1921;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_612_p1 = v84_reg_1911;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_612_p1 = v72_reg_1901;
    end else begin
        grp_fu_612_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p0 = v101_reg_1861;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_616_p0 = v89_reg_1781;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p0 = v77_reg_1686;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p0 = v64_reg_1616;
    end else begin
        grp_fu_616_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_620_p0 = v107_reg_1866;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_620_p0 = v95_reg_1791;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_620_p0 = v83_reg_1691;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_p0 = v71_reg_1621;
    end else begin
        grp_fu_620_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_0_address0_local = zext_ln152_fu_1280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_address0_local = zext_ln138_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_address0_local = zext_ln124_fu_970_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_0_address0_local = zext_ln110_fu_825_p1;
    end else begin
        v114_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_0_address1_local = zext_ln145_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_0_address1_local = zext_ln131_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_0_address1_local = zext_ln117_fu_954_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_0_address1_local = zext_ln102_fu_808_p1;
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
        v114_1_address0_local = zext_ln152_fu_1280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_1_address0_local = zext_ln138_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_1_address0_local = zext_ln124_fu_970_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_1_address0_local = zext_ln110_fu_825_p1;
    end else begin
        v114_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_1_address1_local = zext_ln145_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_1_address1_local = zext_ln131_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_1_address1_local = zext_ln117_fu_954_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_1_address1_local = zext_ln102_fu_808_p1;
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
        v114_2_address0_local = zext_ln152_fu_1280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_2_address0_local = zext_ln138_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_2_address0_local = zext_ln124_fu_970_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_2_address0_local = zext_ln110_fu_825_p1;
    end else begin
        v114_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_2_address1_local = zext_ln145_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_2_address1_local = zext_ln131_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_2_address1_local = zext_ln117_fu_954_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_2_address1_local = zext_ln102_fu_808_p1;
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
        v114_3_address0_local = zext_ln152_fu_1280_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_3_address0_local = zext_ln138_fu_1112_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_3_address0_local = zext_ln124_fu_970_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_3_address0_local = zext_ln110_fu_825_p1;
    end else begin
        v114_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v114_3_address1_local = zext_ln145_fu_1264_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v114_3_address1_local = zext_ln131_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v114_3_address1_local = zext_ln117_fu_954_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v114_3_address1_local = zext_ln102_fu_808_p1;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v115_ce0_local = 1'b1;
    end else begin
        v115_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln149_fu_1140_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln135_fu_1001_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln121_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln107_fu_724_p1;
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
            v57_address1_local = zext_ln142_fu_1128_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address1_local = zext_ln128_fu_986_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address1_local = zext_ln114_fu_841_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address1_local = zext_ln98_fu_691_p1;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_address0_local = v58_0_addr_1_reg_1776_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address0_local = zext_ln128_1_fu_1169_p1;
    end else begin
        v58_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_address1_local = v58_0_addr_reg_1756_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_0_address1_local = zext_ln98_1_fu_1155_p1;
    end else begin
        v58_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_0_ce0_local = 1'b1;
    end else begin
        v58_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_0_ce1_local = 1'b1;
    end else begin
        v58_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_0_we0_local = 1'b1;
    end else begin
        v58_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_0_we1_local = 1'b1;
    end else begin
        v58_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_address0_local = v58_1_addr_1_reg_1786_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address0_local = zext_ln128_1_fu_1169_p1;
    end else begin
        v58_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_address1_local = v58_1_addr_reg_1761_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_1_address1_local = zext_ln98_1_fu_1155_p1;
    end else begin
        v58_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_1_ce0_local = 1'b1;
    end else begin
        v58_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v58_1_ce1_local = 1'b1;
    end else begin
        v58_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_1_we0_local = 1'b1;
    end else begin
        v58_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v58_1_we1_local = 1'b1;
    end else begin
        v58_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_address0_local = v58_2_addr_1_reg_1821_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address0_local = v58_2_addr_1_reg_1821;
    end else begin
        v58_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_address1_local = v58_2_addr_reg_1766_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_2_address1_local = zext_ln98_1_fu_1155_p1;
    end else begin
        v58_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_2_ce0_local = 1'b1;
    end else begin
        v58_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_2_ce1_local = 1'b1;
    end else begin
        v58_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_2_we0_local = 1'b1;
    end else begin
        v58_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_2_we1_local = 1'b1;
    end else begin
        v58_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_address0_local = v58_3_addr_1_reg_1851_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address0_local = v58_3_addr_1_reg_1851;
    end else begin
        v58_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_address1_local = v58_3_addr_reg_1771_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v58_3_address1_local = zext_ln98_1_fu_1155_p1;
    end else begin
        v58_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v58_3_ce0_local = 1'b1;
    end else begin
        v58_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v58_3_ce1_local = 1'b1;
    end else begin
        v58_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v58_3_we0_local = 1'b1;
    end else begin
        v58_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v58_3_we1_local = 1'b1;
    end else begin
        v58_3_we1_local = 1'b0;
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
assign add_ln97_1_fu_662_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln97_fu_763_p2 = (v59_fu_124 + 7'd1);
assign add_ln98_fu_1145_p2 = (select_ln97_reg_1444 + 7'd8);
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
assign cmp7_fu_795_p2 = ((select_ln97_1_fu_769_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_155_p_ce = 1'b1;
assign grp_fu_155_p_din0 = grp_fu_608_p0;
assign grp_fu_155_p_din1 = grp_fu_608_p1;
assign grp_fu_155_p_opcode = 2'd0;
assign grp_fu_159_p_ce = 1'b1;
assign grp_fu_159_p_din0 = grp_fu_616_p0;
assign grp_fu_159_p_din1 = v65_reg_1610;
assign icmp_ln97_fu_656_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln_fu_785_p4 = {{select_ln97_1_fu_769_p3[5:2]}};
assign or_ln128_1_fu_1162_p3 = {{tmp_9_reg_1486}, {1'd1}};
assign or_ln1_fu_833_p4 = {{{lshr_ln1_reg_1454}, {1'd1}}, {trunc_ln114_reg_1478}};
assign or_ln2_fu_846_p3 = {{lshr_ln1_reg_1454}, {2'd3}};
assign or_ln3_fu_978_p4 = {{{tmp_9_reg_1486}, {1'd1}}, {trunc_ln128_reg_1499}};
assign or_ln4_fu_991_p5 = {{{{tmp_9_reg_1486}, {1'd1}}, {tmp_4_reg_1505}}, {1'd1}};
assign or_ln5_fu_1120_p4 = {{{tmp_9_reg_1486}, {2'd3}}, {trunc_ln114_reg_1478}};
assign or_ln6_fu_1133_p3 = {{tmp_9_reg_1486}, {3'd7}};
assign or_ln_fu_716_p3 = {{tmp_1_fu_706_p4}, {1'd1}};
assign select_ln97_1_fu_769_p3 = ((tmp_2_reg_1439[0:0] == 1'b1) ? add_ln97_fu_763_p2 : v59_fu_124);
assign select_ln97_fu_679_p3 = ((tmp_2_fu_671_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v60_load);
assign tmp_10_fu_1272_p4 = {{{tmp_9_reg_1486}, {3'd7}}, {lshr_ln_reg_1523}};
assign tmp_1_fu_706_p4 = {{select_ln97_fu_679_p3[5:1]}};
assign tmp_2_fu_671_p3 = ap_sig_allocacmp_v60_load[32'd6];
assign tmp_3_fu_816_p4 = {{{tmp_1_reg_1468}, {1'd1}}, {lshr_ln_fu_785_p4}};
assign tmp_5_fu_1101_p6 = {{{{{tmp_9_reg_1486}, {1'd1}}, {tmp_4_reg_1505}}, {1'd1}}, {lshr_ln_reg_1523}};
assign tmp_6_fu_945_p5 = {{{{lshr_ln1_reg_1454}, {1'd1}}, {trunc_ln114_reg_1478}}, {lshr_ln_reg_1523}};
assign tmp_7_fu_1255_p5 = {{{{tmp_9_reg_1486}, {2'd3}}, {trunc_ln114_reg_1478}}, {lshr_ln_reg_1523}};
assign tmp_8_fu_962_p4 = {{{lshr_ln1_reg_1454}, {2'd3}}, {lshr_ln_reg_1523}};
assign tmp_fu_801_p3 = {{trunc_ln97_reg_1449}, {lshr_ln_fu_785_p4}};
assign tmp_s_fu_1084_p5 = {{{{tmp_9_reg_1486}, {1'd1}}, {trunc_ln128_reg_1499}}, {lshr_ln_reg_1523}};
assign trunc_ln114_fu_729_p1 = select_ln97_fu_679_p3[0:0];
assign trunc_ln128_fu_743_p1 = select_ln97_fu_679_p3[1:0];
assign trunc_ln97_1_fu_781_p1 = select_ln97_1_fu_769_p3[1:0];
assign trunc_ln97_fu_687_p1 = select_ln97_fu_679_p3[5:0];
assign v100_fu_1402_p3 = ((cmp7_reg_1533_pp0_iter1_reg[0:0] == 1'b1) ? v98_reg_1816_pp0_iter2_reg : v58_2_q0);
assign v101_fu_1310_p2 = v114_0_q1;
assign v101_fu_1310_p4 = v114_1_q1;
assign v101_fu_1310_p6 = v114_2_q1;
assign v101_fu_1310_p8 = v114_3_q1;
assign v101_fu_1310_p9 = 'bx;
assign v106_fu_1408_p3 = ((cmp7_reg_1533_pp0_iter1_reg[0:0] == 1'b1) ? v104_reg_1846_pp0_iter2_reg : v58_3_q0);
assign v107_fu_1349_p2 = v114_0_q0;
assign v107_fu_1349_p4 = v114_1_q0;
assign v107_fu_1349_p6 = v114_2_q0;
assign v107_fu_1349_p8 = v114_3_q0;
assign v107_fu_1349_p9 = 'bx;
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
assign v115_address0 = zext_ln97_fu_776_p1;
assign v115_ce0 = v115_ce0_local;
assign v57_address0 = v57_address0_local;
assign v57_address1 = v57_address1_local;
assign v57_ce0 = v57_ce0_local;
assign v57_ce1 = v57_ce1_local;
assign v58_0_address0 = v58_0_address0_local;
assign v58_0_address1 = v58_0_address1_local;
assign v58_0_ce0 = v58_0_ce0_local;
assign v58_0_ce1 = v58_0_ce1_local;
assign v58_0_d0 = reg_624;
assign v58_0_d1 = reg_624;
assign v58_0_we0 = v58_0_we0_local;
assign v58_0_we1 = v58_0_we1_local;
assign v58_1_address0 = v58_1_address0_local;
assign v58_1_address1 = v58_1_address1_local;
assign v58_1_ce0 = v58_1_ce0_local;
assign v58_1_ce1 = v58_1_ce1_local;
assign v58_1_d0 = reg_631;
assign v58_1_d1 = reg_631;
assign v58_1_we0 = v58_1_we0_local;
assign v58_1_we1 = v58_1_we1_local;
assign v58_2_address0 = v58_2_address0_local;
assign v58_2_address1 = v58_2_address1_local;
assign v58_2_ce0 = v58_2_ce0_local;
assign v58_2_ce1 = v58_2_ce1_local;
assign v58_2_d0 = v103_reg_1946;
assign v58_2_d1 = reg_624;
assign v58_2_we0 = v58_2_we0_local;
assign v58_2_we1 = v58_2_we1_local;
assign v58_3_address0 = v58_3_address0_local;
assign v58_3_address1 = v58_3_address1_local;
assign v58_3_ce0 = v58_3_ce0_local;
assign v58_3_ce1 = v58_3_ce1_local;
assign v58_3_d0 = v109_reg_1951;
assign v58_3_d1 = reg_631;
assign v58_3_we0 = v58_3_we0_local;
assign v58_3_we1 = v58_3_we1_local;
assign v63_fu_1288_p3 = ((cmp7_reg_1533[0:0] == 1'b1) ? v61_reg_1570 : v58_0_q1);
assign v64_fu_883_p2 = v114_0_q1;
assign v64_fu_883_p4 = v114_1_q1;
assign v64_fu_883_p6 = v114_2_q1;
assign v64_fu_883_p8 = v114_3_q1;
assign v64_fu_883_p9 = 'bx;
assign v65_fu_863_p1 = v115_q0;
assign v70_fu_1372_p3 = ((cmp7_reg_1533[0:0] == 1'b1) ? v68_reg_1595 : v58_1_q1);
assign v71_fu_922_p2 = v114_0_q0;
assign v71_fu_922_p4 = v114_1_q0;
assign v71_fu_922_p6 = v114_2_q0;
assign v71_fu_922_p8 = v114_3_q0;
assign v71_fu_922_p9 = 'bx;
assign v76_fu_1378_p3 = ((cmp7_reg_1533[0:0] == 1'b1) ? v74_reg_1646 : v58_2_q1);
assign v77_fu_1022_p2 = v114_0_q1;
assign v77_fu_1022_p4 = v114_1_q1;
assign v77_fu_1022_p6 = v114_2_q1;
assign v77_fu_1022_p8 = v114_3_q1;
assign v77_fu_1022_p9 = 'bx;
assign v82_fu_1384_p3 = ((cmp7_reg_1533[0:0] == 1'b1) ? v80_reg_1671 : v58_3_q1);
assign v83_fu_1061_p2 = v114_0_q0;
assign v83_fu_1061_p4 = v114_1_q0;
assign v83_fu_1061_p6 = v114_2_q0;
assign v83_fu_1061_p8 = v114_3_q0;
assign v83_fu_1061_p9 = 'bx;
assign v88_fu_1390_p3 = ((cmp7_reg_1533[0:0] == 1'b1) ? v86_reg_1716 : v58_0_q0);
assign v89_fu_1193_p2 = v114_0_q1;
assign v89_fu_1193_p4 = v114_1_q1;
assign v89_fu_1193_p6 = v114_2_q1;
assign v89_fu_1193_p8 = v114_3_q1;
assign v89_fu_1193_p9 = 'bx;
assign v94_fu_1396_p3 = ((cmp7_reg_1533[0:0] == 1'b1) ? v92_reg_1741 : v58_1_q0);
assign v95_fu_1232_p2 = v114_0_q0;
assign v95_fu_1232_p4 = v114_1_q0;
assign v95_fu_1232_p6 = v114_2_q0;
assign v95_fu_1232_p8 = v114_3_q0;
assign v95_fu_1232_p9 = 'bx;
assign zext_ln102_fu_808_p1 = tmp_fu_801_p3;
assign zext_ln107_fu_724_p1 = or_ln_fu_716_p3;
assign zext_ln110_fu_825_p1 = tmp_3_fu_816_p4;
assign zext_ln114_fu_841_p1 = or_ln1_fu_833_p4;
assign zext_ln117_fu_954_p1 = tmp_6_fu_945_p5;
assign zext_ln121_fu_853_p1 = or_ln2_fu_846_p3;
assign zext_ln124_fu_970_p1 = tmp_8_fu_962_p4;
assign zext_ln128_1_fu_1169_p1 = or_ln128_1_fu_1162_p3;
assign zext_ln128_fu_986_p1 = or_ln3_fu_978_p4;
assign zext_ln131_fu_1093_p1 = tmp_s_fu_1084_p5;
assign zext_ln135_fu_1001_p1 = or_ln4_fu_991_p5;
assign zext_ln138_fu_1112_p1 = tmp_5_fu_1101_p6;
assign zext_ln142_fu_1128_p1 = or_ln5_fu_1120_p4;
assign zext_ln145_fu_1264_p1 = tmp_7_fu_1255_p5;
assign zext_ln149_fu_1140_p1 = or_ln6_fu_1133_p3;
assign zext_ln152_fu_1280_p1 = tmp_10_fu_1272_p4;
assign zext_ln97_fu_776_p1 = select_ln97_1_fu_769_p3;
assign zext_ln98_1_fu_1155_p1 = lshr_ln1_reg_1454;
assign zext_ln98_fu_691_p1 = select_ln97_fu_679_p3;
always @ (posedge ap_clk) begin
    v58_0_addr_1_reg_1776[0] <= 1'b1;
    v58_0_addr_1_reg_1776_pp0_iter2_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1776_pp0_iter3_reg[0] <= 1'b1;
    v58_0_addr_1_reg_1776_pp0_iter4_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1786[0] <= 1'b1;
    v58_1_addr_1_reg_1786_pp0_iter2_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1786_pp0_iter3_reg[0] <= 1'b1;
    v58_1_addr_1_reg_1786_pp0_iter4_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1821[0] <= 1'b1;
    v58_2_addr_1_reg_1821_pp0_iter2_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1821_pp0_iter3_reg[0] <= 1'b1;
    v58_2_addr_1_reg_1821_pp0_iter4_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1851[0] <= 1'b1;
    v58_3_addr_1_reg_1851_pp0_iter2_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1851_pp0_iter3_reg[0] <= 1'b1;
    v58_3_addr_1_reg_1851_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 