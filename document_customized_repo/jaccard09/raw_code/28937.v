module ellpack (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nzval_0_address0,nzval_0_ce0,nzval_0_q0,nzval_0_address1,nzval_0_ce1,nzval_0_q1,nzval_1_address0,nzval_1_ce0,nzval_1_q0,nzval_1_address1,nzval_1_ce1,nzval_1_q1,cols_0_address0,cols_0_ce0,cols_0_q0,cols_0_address1,cols_0_ce1,cols_0_q1,cols_1_address0,cols_1_ce0,cols_1_q0,cols_1_address1,cols_1_ce1,cols_1_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_0_address1,out_0_ce1,out_0_q1,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_1_address1,out_1_ce1,out_1_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] nzval_0_address0;
output   nzval_0_ce0;
input  [63:0] nzval_0_q0;
output  [11:0] nzval_0_address1;
output   nzval_0_ce1;
input  [63:0] nzval_0_q1;
output  [11:0] nzval_1_address0;
output   nzval_1_ce0;
input  [63:0] nzval_1_q0;
output  [11:0] nzval_1_address1;
output   nzval_1_ce1;
input  [63:0] nzval_1_q1;
output  [11:0] cols_0_address0;
output   cols_0_ce0;
input  [31:0] cols_0_q0;
output  [11:0] cols_0_address1;
output   cols_0_ce1;
input  [31:0] cols_0_q1;
output  [11:0] cols_1_address0;
output   cols_1_ce0;
input  [31:0] cols_1_q0;
output  [11:0] cols_1_address1;
output   cols_1_ce1;
input  [31:0] cols_1_q1;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [7:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [7:0] out_0_address1;
output   out_0_ce1;
input  [63:0] out_0_q1;
output  [7:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
output  [7:0] out_1_address1;
output   out_1_ce1;
input  [63:0] out_1_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] icmp_ln13_reg_992;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_538;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_542;
wire   [7:0] grp_fu_498_p4;
reg   [7:0] reg_546;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [7:0] grp_fu_508_p4;
reg   [7:0] reg_550;
wire   [0:0] trunc_ln13_fu_566_p1;
reg   [0:0] trunc_ln13_reg_954;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] trunc_ln13_reg_954_pp0_iter1_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter2_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter3_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter4_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter5_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter6_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter7_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter8_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter9_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter10_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter11_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter12_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter13_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter14_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter15_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter16_reg;
reg   [0:0] trunc_ln13_reg_954_pp0_iter17_reg;
reg   [7:0] lshr_ln_reg_959;
wire   [11:0] add_ln14_fu_592_p2;
reg   [11:0] add_ln14_reg_964;
wire   [0:0] icmp_ln13_fu_612_p2;
reg   [0:0] icmp_ln13_reg_992_pp0_iter1_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter2_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter3_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter4_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter5_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter6_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter7_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter8_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter9_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter10_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter11_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter12_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter13_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter14_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter15_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter16_reg;
reg   [0:0] icmp_ln13_reg_992_pp0_iter17_reg;
wire   [0:0] trunc_ln16_fu_623_p1;
reg   [0:0] trunc_ln16_reg_996;
wire   [0:0] trunc_ln16_1_fu_633_p1;
reg   [0:0] trunc_ln16_1_reg_1011;
wire   [63:0] select_ln16_fu_669_p3;
reg   [63:0] select_ln16_reg_1066;
wire   [63:0] select_ln16_1_fu_676_p3;
reg   [63:0] select_ln16_1_reg_1071;
reg   [63:0] nzval_0_load_1_reg_1076;
wire   [0:0] trunc_ln16_2_fu_683_p1;
reg   [0:0] trunc_ln16_2_reg_1081;
reg   [63:0] nzval_1_load_1_reg_1096;
wire   [0:0] trunc_ln16_3_fu_693_p1;
reg   [0:0] trunc_ln16_3_reg_1101;
reg   [63:0] nzval_0_load_2_reg_1116;
wire   [0:0] trunc_ln16_4_fu_703_p1;
reg   [0:0] trunc_ln16_4_reg_1121;
reg   [63:0] nzval_1_load_2_reg_1126;
wire   [0:0] trunc_ln16_5_fu_707_p1;
reg   [0:0] trunc_ln16_5_reg_1131;
wire   [63:0] bitcast_ln16_fu_737_p1;
wire   [63:0] bitcast_ln16_1_fu_742_p1;
wire   [63:0] bitcast_ln16_2_fu_746_p1;
wire   [63:0] bitcast_ln16_3_fu_751_p1;
wire   [63:0] select_ln16_2_fu_755_p3;
reg   [63:0] select_ln16_2_reg_1196;
wire   [63:0] select_ln16_3_fu_762_p3;
reg   [63:0] select_ln16_3_reg_1201;
wire   [0:0] trunc_ln16_6_fu_781_p1;
reg   [0:0] trunc_ln16_6_reg_1226;
wire   [0:0] trunc_ln16_7_fu_785_p1;
reg   [0:0] trunc_ln16_7_reg_1231;
reg   [63:0] nzval_0_load_4_reg_1236;
wire   [0:0] trunc_ln16_8_fu_789_p1;
reg   [0:0] trunc_ln16_8_reg_1241;
wire   [7:0] grp_fu_518_p4;
reg   [7:0] lshr_ln16_8_reg_1246;
reg   [63:0] nzval_1_load_4_reg_1251;
wire   [0:0] trunc_ln16_9_fu_793_p1;
reg   [0:0] trunc_ln16_9_reg_1256;
wire   [7:0] grp_fu_528_p4;
reg   [7:0] lshr_ln16_9_reg_1261;
wire   [63:0] bitcast_ln16_4_fu_797_p1;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln16_5_fu_801_p1;
wire   [63:0] bitcast_ln16_6_fu_805_p1;
wire   [63:0] bitcast_ln16_7_fu_809_p1;
wire   [63:0] select_ln16_4_fu_813_p3;
reg   [63:0] select_ln16_4_reg_1286;
wire   [63:0] select_ln16_5_fu_820_p3;
reg   [63:0] select_ln16_5_reg_1291;
reg   [7:0] out_0_addr_reg_1316;
reg   [7:0] out_0_addr_reg_1316_pp0_iter2_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter3_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter4_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter5_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter6_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter7_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter8_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter9_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter10_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter11_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter12_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter13_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter14_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter15_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter16_reg;
reg   [7:0] out_0_addr_reg_1316_pp0_iter17_reg;
reg   [7:0] out_1_addr_reg_1322;
reg   [7:0] out_1_addr_reg_1322_pp0_iter2_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter3_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter4_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter5_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter6_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter7_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter8_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter9_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter10_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter11_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter12_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter13_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter14_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter15_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter16_reg;
reg   [7:0] out_1_addr_reg_1322_pp0_iter17_reg;
wire   [63:0] bitcast_ln16_8_fu_844_p1;
wire   [63:0] bitcast_ln16_9_fu_848_p1;
wire   [63:0] bitcast_ln16_10_fu_852_p1;
wire   [63:0] bitcast_ln16_11_fu_856_p1;
wire   [63:0] select_ln16_6_fu_860_p3;
reg   [63:0] select_ln16_6_reg_1348;
wire   [63:0] select_ln16_7_fu_867_p3;
reg   [63:0] select_ln16_7_reg_1353;
wire   [63:0] select_ln14_fu_884_p3;
reg   [63:0] select_ln14_reg_1378;
wire   [63:0] bitcast_ln16_12_fu_891_p1;
wire   [63:0] bitcast_ln16_13_fu_896_p1;
wire   [63:0] bitcast_ln16_14_fu_900_p1;
wire   [63:0] bitcast_ln16_15_fu_905_p1;
wire   [63:0] select_ln16_8_fu_909_p3;
reg   [63:0] select_ln16_8_reg_1403;
wire   [63:0] select_ln16_9_fu_916_p3;
reg   [63:0] select_ln16_9_reg_1408;
wire   [63:0] bitcast_ln16_16_fu_923_p1;
wire   [63:0] bitcast_ln16_17_fu_927_p1;
wire   [63:0] bitcast_ln16_18_fu_931_p1;
wire   [63:0] bitcast_ln16_19_fu_935_p1;
wire   [63:0] grp_fu_490_p2;
reg   [63:0] Si_reg_1433;
wire   [63:0] grp_fu_494_p2;
reg   [63:0] Si_1_reg_1438;
reg   [63:0] Si_1_reg_1438_pp0_iter2_reg;
wire   [63:0] sum_fu_939_p1;
reg   [63:0] Si_2_reg_1448;
reg   [63:0] Si_2_reg_1448_pp0_iter3_reg;
reg   [63:0] Si_2_reg_1448_pp0_iter4_reg;
reg   [63:0] Si_2_reg_1448_pp0_iter5_reg;
reg   [63:0] Si_3_reg_1453;
reg   [63:0] Si_3_reg_1453_pp0_iter3_reg;
reg   [63:0] Si_3_reg_1453_pp0_iter4_reg;
reg   [63:0] Si_3_reg_1453_pp0_iter5_reg;
reg   [63:0] Si_3_reg_1453_pp0_iter6_reg;
reg   [63:0] Si_4_reg_1458;
reg   [63:0] Si_4_reg_1458_pp0_iter3_reg;
reg   [63:0] Si_4_reg_1458_pp0_iter4_reg;
reg   [63:0] Si_4_reg_1458_pp0_iter5_reg;
reg   [63:0] Si_4_reg_1458_pp0_iter6_reg;
reg   [63:0] Si_4_reg_1458_pp0_iter7_reg;
reg   [63:0] Si_4_reg_1458_pp0_iter8_reg;
reg   [63:0] Si_5_reg_1463;
reg   [63:0] Si_5_reg_1463_pp0_iter3_reg;
reg   [63:0] Si_5_reg_1463_pp0_iter4_reg;
reg   [63:0] Si_5_reg_1463_pp0_iter5_reg;
reg   [63:0] Si_5_reg_1463_pp0_iter6_reg;
reg   [63:0] Si_5_reg_1463_pp0_iter7_reg;
reg   [63:0] Si_5_reg_1463_pp0_iter8_reg;
reg   [63:0] Si_5_reg_1463_pp0_iter9_reg;
reg   [63:0] Si_6_reg_1468;
reg   [63:0] Si_6_reg_1468_pp0_iter3_reg;
reg   [63:0] Si_6_reg_1468_pp0_iter4_reg;
reg   [63:0] Si_6_reg_1468_pp0_iter5_reg;
reg   [63:0] Si_6_reg_1468_pp0_iter6_reg;
reg   [63:0] Si_6_reg_1468_pp0_iter7_reg;
reg   [63:0] Si_6_reg_1468_pp0_iter8_reg;
reg   [63:0] Si_6_reg_1468_pp0_iter9_reg;
reg   [63:0] Si_6_reg_1468_pp0_iter10_reg;
reg   [63:0] Si_6_reg_1468_pp0_iter11_reg;
reg   [63:0] Si_7_reg_1473;
reg   [63:0] Si_7_reg_1473_pp0_iter3_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter4_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter5_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter6_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter7_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter8_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter9_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter10_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter11_reg;
reg   [63:0] Si_7_reg_1473_pp0_iter12_reg;
reg   [63:0] Si_8_reg_1478;
reg   [63:0] Si_8_reg_1478_pp0_iter3_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter4_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter5_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter6_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter7_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter8_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter9_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter10_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter11_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter12_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter13_reg;
reg   [63:0] Si_8_reg_1478_pp0_iter14_reg;
reg   [63:0] Si_9_reg_1483;
reg   [63:0] Si_9_reg_1483_pp0_iter3_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter4_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter5_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter6_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter7_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter8_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter9_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter10_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter11_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter12_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter13_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter14_reg;
reg   [63:0] Si_9_reg_1483_pp0_iter15_reg;
wire   [63:0] grp_fu_482_p2;
reg   [63:0] sum_1_reg_1488;
reg   [63:0] sum_2_reg_1493;
reg   [63:0] sum_3_reg_1498;
reg   [63:0] sum_4_reg_1503;
reg   [63:0] sum_5_reg_1508;
wire   [63:0] grp_fu_486_p2;
reg   [63:0] sum_6_reg_1513;
reg   [63:0] sum_7_reg_1518;
reg   [63:0] sum_8_reg_1523;
reg   [63:0] sum_9_reg_1528;
wire   [63:0] bitcast_ln19_fu_943_p1;
reg   [63:0] bitcast_ln19_reg_1533;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln16_10_fu_598_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln16_fu_627_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln16_1_fu_637_p1;
wire   [63:0] zext_ln16_11_fu_648_p1;
wire   [63:0] zext_ln16_12_fu_661_p1;
wire   [63:0] zext_ln16_2_fu_687_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln16_3_fu_697_p1;
wire   [63:0] zext_ln16_13_fu_716_p1;
wire   [63:0] zext_ln16_14_fu_729_p1;
wire   [63:0] zext_ln16_4_fu_769_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln16_5_fu_775_p1;
wire   [63:0] zext_ln16_6_fu_827_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln16_7_fu_833_p1;
wire   [63:0] zext_ln10_fu_839_p1;
wire   [63:0] zext_ln16_8_fu_874_p1;
wire   [63:0] zext_ln16_9_fu_879_p1;
reg   [8:0] i1_fu_70;
wire   [8:0] i_fu_606_p2;
wire    ap_loop_init;
reg   [8:0] ap_sig_allocacmp_i1_load;
reg    nzval_0_ce0_local;
reg   [11:0] nzval_0_address0_local;
reg    nzval_0_ce1_local;
reg   [11:0] nzval_0_address1_local;
reg    cols_0_ce0_local;
reg   [11:0] cols_0_address0_local;
reg    cols_0_ce1_local;
reg   [11:0] cols_0_address1_local;
reg    nzval_1_ce0_local;
reg   [11:0] nzval_1_address0_local;
reg    nzval_1_ce1_local;
reg   [11:0] nzval_1_address1_local;
reg    cols_1_ce0_local;
reg   [11:0] cols_1_address0_local;
reg    cols_1_ce1_local;
reg   [11:0] cols_1_address1_local;
reg    vec_0_ce1_local;
reg   [7:0] vec_0_address1_local;
reg    vec_0_ce0_local;
reg   [7:0] vec_0_address0_local;
reg    vec_1_ce1_local;
reg   [7:0] vec_1_address1_local;
reg    vec_1_ce0_local;
reg   [7:0] vec_1_address0_local;
reg    out_0_ce1_local;
reg    out_0_we0_local;
reg    out_0_ce0_local;
reg    out_1_ce1_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
reg   [63:0] grp_fu_482_p0;
reg   [63:0] grp_fu_482_p1;
reg   [63:0] grp_fu_486_p0;
reg   [63:0] grp_fu_486_p1;
reg   [63:0] grp_fu_490_p0;
reg   [63:0] grp_fu_490_p1;
reg   [63:0] grp_fu_494_p0;
reg   [63:0] grp_fu_494_p1;
wire   [10:0] tmp_fu_580_p3;
wire   [11:0] zext_ln14_fu_588_p1;
wire   [11:0] zext_ln13_fu_562_p1;
wire   [11:0] add_ln16_fu_643_p2;
wire   [11:0] add_ln16_1_fu_656_p2;
wire   [11:0] add_ln16_2_fu_711_p2;
wire   [11:0] add_ln16_3_fu_724_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter18_stage0;
reg    ap_idle_pp0_0to17;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0_1to18;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_778;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
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
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i1_fu_70 = 9'd0;
#0 ap_done_reg = 1'b0;
end
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_482_p0),.din1(grp_fu_482_p1),.ce(1'b1),.dout(grp_fu_482_p2));
ellpack_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_486_p0),.din1(grp_fu_486_p1),.ce(1'b1),.dout(grp_fu_486_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_490_p0),.din1(grp_fu_490_p1),.ce(1'b1),.dout(grp_fu_490_p2));
ellpack_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_494_p0),.din1(grp_fu_494_p1),.ce(1'b1),.dout(grp_fu_494_p2));
ellpack_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter18_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter18 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter17_reg == 1'b0)) | ((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_778)) begin
        i1_fu_70 <= i_fu_606_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        Si_1_reg_1438 <= grp_fu_494_p2;
        Si_reg_1433 <= grp_fu_490_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        Si_1_reg_1438_pp0_iter2_reg <= Si_1_reg_1438;
        bitcast_ln19_reg_1533 <= bitcast_ln19_fu_943_p1;
        select_ln16_4_reg_1286 <= select_ln16_4_fu_813_p3;
        select_ln16_5_reg_1291 <= select_ln16_5_fu_820_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Si_2_reg_1448 <= grp_fu_490_p2;
        Si_3_reg_1453 <= grp_fu_494_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Si_2_reg_1448_pp0_iter3_reg <= Si_2_reg_1448;
        Si_2_reg_1448_pp0_iter4_reg <= Si_2_reg_1448_pp0_iter3_reg;
        Si_2_reg_1448_pp0_iter5_reg <= Si_2_reg_1448_pp0_iter4_reg;
        Si_3_reg_1453_pp0_iter3_reg <= Si_3_reg_1453;
        Si_3_reg_1453_pp0_iter4_reg <= Si_3_reg_1453_pp0_iter3_reg;
        Si_3_reg_1453_pp0_iter5_reg <= Si_3_reg_1453_pp0_iter4_reg;
        Si_3_reg_1453_pp0_iter6_reg <= Si_3_reg_1453_pp0_iter5_reg;
        add_ln14_reg_964 <= add_ln14_fu_592_p2;
        icmp_ln13_reg_992 <= icmp_ln13_fu_612_p2;
        icmp_ln13_reg_992_pp0_iter10_reg <= icmp_ln13_reg_992_pp0_iter9_reg;
        icmp_ln13_reg_992_pp0_iter11_reg <= icmp_ln13_reg_992_pp0_iter10_reg;
        icmp_ln13_reg_992_pp0_iter12_reg <= icmp_ln13_reg_992_pp0_iter11_reg;
        icmp_ln13_reg_992_pp0_iter13_reg <= icmp_ln13_reg_992_pp0_iter12_reg;
        icmp_ln13_reg_992_pp0_iter14_reg <= icmp_ln13_reg_992_pp0_iter13_reg;
        icmp_ln13_reg_992_pp0_iter15_reg <= icmp_ln13_reg_992_pp0_iter14_reg;
        icmp_ln13_reg_992_pp0_iter16_reg <= icmp_ln13_reg_992_pp0_iter15_reg;
        icmp_ln13_reg_992_pp0_iter17_reg <= icmp_ln13_reg_992_pp0_iter16_reg;
        icmp_ln13_reg_992_pp0_iter1_reg <= icmp_ln13_reg_992;
        icmp_ln13_reg_992_pp0_iter2_reg <= icmp_ln13_reg_992_pp0_iter1_reg;
        icmp_ln13_reg_992_pp0_iter3_reg <= icmp_ln13_reg_992_pp0_iter2_reg;
        icmp_ln13_reg_992_pp0_iter4_reg <= icmp_ln13_reg_992_pp0_iter3_reg;
        icmp_ln13_reg_992_pp0_iter5_reg <= icmp_ln13_reg_992_pp0_iter4_reg;
        icmp_ln13_reg_992_pp0_iter6_reg <= icmp_ln13_reg_992_pp0_iter5_reg;
        icmp_ln13_reg_992_pp0_iter7_reg <= icmp_ln13_reg_992_pp0_iter6_reg;
        icmp_ln13_reg_992_pp0_iter8_reg <= icmp_ln13_reg_992_pp0_iter7_reg;
        icmp_ln13_reg_992_pp0_iter9_reg <= icmp_ln13_reg_992_pp0_iter8_reg;
        lshr_ln_reg_959 <= {{ap_sig_allocacmp_i1_load[8:1]}};
        out_0_addr_reg_1316 <= zext_ln10_fu_839_p1;
        out_0_addr_reg_1316_pp0_iter10_reg <= out_0_addr_reg_1316_pp0_iter9_reg;
        out_0_addr_reg_1316_pp0_iter11_reg <= out_0_addr_reg_1316_pp0_iter10_reg;
        out_0_addr_reg_1316_pp0_iter12_reg <= out_0_addr_reg_1316_pp0_iter11_reg;
        out_0_addr_reg_1316_pp0_iter13_reg <= out_0_addr_reg_1316_pp0_iter12_reg;
        out_0_addr_reg_1316_pp0_iter14_reg <= out_0_addr_reg_1316_pp0_iter13_reg;
        out_0_addr_reg_1316_pp0_iter15_reg <= out_0_addr_reg_1316_pp0_iter14_reg;
        out_0_addr_reg_1316_pp0_iter16_reg <= out_0_addr_reg_1316_pp0_iter15_reg;
        out_0_addr_reg_1316_pp0_iter17_reg <= out_0_addr_reg_1316_pp0_iter16_reg;
        out_0_addr_reg_1316_pp0_iter2_reg <= out_0_addr_reg_1316;
        out_0_addr_reg_1316_pp0_iter3_reg <= out_0_addr_reg_1316_pp0_iter2_reg;
        out_0_addr_reg_1316_pp0_iter4_reg <= out_0_addr_reg_1316_pp0_iter3_reg;
        out_0_addr_reg_1316_pp0_iter5_reg <= out_0_addr_reg_1316_pp0_iter4_reg;
        out_0_addr_reg_1316_pp0_iter6_reg <= out_0_addr_reg_1316_pp0_iter5_reg;
        out_0_addr_reg_1316_pp0_iter7_reg <= out_0_addr_reg_1316_pp0_iter6_reg;
        out_0_addr_reg_1316_pp0_iter8_reg <= out_0_addr_reg_1316_pp0_iter7_reg;
        out_0_addr_reg_1316_pp0_iter9_reg <= out_0_addr_reg_1316_pp0_iter8_reg;
        out_1_addr_reg_1322 <= zext_ln10_fu_839_p1;
        out_1_addr_reg_1322_pp0_iter10_reg <= out_1_addr_reg_1322_pp0_iter9_reg;
        out_1_addr_reg_1322_pp0_iter11_reg <= out_1_addr_reg_1322_pp0_iter10_reg;
        out_1_addr_reg_1322_pp0_iter12_reg <= out_1_addr_reg_1322_pp0_iter11_reg;
        out_1_addr_reg_1322_pp0_iter13_reg <= out_1_addr_reg_1322_pp0_iter12_reg;
        out_1_addr_reg_1322_pp0_iter14_reg <= out_1_addr_reg_1322_pp0_iter13_reg;
        out_1_addr_reg_1322_pp0_iter15_reg <= out_1_addr_reg_1322_pp0_iter14_reg;
        out_1_addr_reg_1322_pp0_iter16_reg <= out_1_addr_reg_1322_pp0_iter15_reg;
        out_1_addr_reg_1322_pp0_iter17_reg <= out_1_addr_reg_1322_pp0_iter16_reg;
        out_1_addr_reg_1322_pp0_iter2_reg <= out_1_addr_reg_1322;
        out_1_addr_reg_1322_pp0_iter3_reg <= out_1_addr_reg_1322_pp0_iter2_reg;
        out_1_addr_reg_1322_pp0_iter4_reg <= out_1_addr_reg_1322_pp0_iter3_reg;
        out_1_addr_reg_1322_pp0_iter5_reg <= out_1_addr_reg_1322_pp0_iter4_reg;
        out_1_addr_reg_1322_pp0_iter6_reg <= out_1_addr_reg_1322_pp0_iter5_reg;
        out_1_addr_reg_1322_pp0_iter7_reg <= out_1_addr_reg_1322_pp0_iter6_reg;
        out_1_addr_reg_1322_pp0_iter8_reg <= out_1_addr_reg_1322_pp0_iter7_reg;
        out_1_addr_reg_1322_pp0_iter9_reg <= out_1_addr_reg_1322_pp0_iter8_reg;
        select_ln16_6_reg_1348 <= select_ln16_6_fu_860_p3;
        select_ln16_7_reg_1353 <= select_ln16_7_fu_867_p3;
        trunc_ln13_reg_954 <= trunc_ln13_fu_566_p1;
        trunc_ln13_reg_954_pp0_iter10_reg <= trunc_ln13_reg_954_pp0_iter9_reg;
        trunc_ln13_reg_954_pp0_iter11_reg <= trunc_ln13_reg_954_pp0_iter10_reg;
        trunc_ln13_reg_954_pp0_iter12_reg <= trunc_ln13_reg_954_pp0_iter11_reg;
        trunc_ln13_reg_954_pp0_iter13_reg <= trunc_ln13_reg_954_pp0_iter12_reg;
        trunc_ln13_reg_954_pp0_iter14_reg <= trunc_ln13_reg_954_pp0_iter13_reg;
        trunc_ln13_reg_954_pp0_iter15_reg <= trunc_ln13_reg_954_pp0_iter14_reg;
        trunc_ln13_reg_954_pp0_iter16_reg <= trunc_ln13_reg_954_pp0_iter15_reg;
        trunc_ln13_reg_954_pp0_iter17_reg <= trunc_ln13_reg_954_pp0_iter16_reg;
        trunc_ln13_reg_954_pp0_iter1_reg <= trunc_ln13_reg_954;
        trunc_ln13_reg_954_pp0_iter2_reg <= trunc_ln13_reg_954_pp0_iter1_reg;
        trunc_ln13_reg_954_pp0_iter3_reg <= trunc_ln13_reg_954_pp0_iter2_reg;
        trunc_ln13_reg_954_pp0_iter4_reg <= trunc_ln13_reg_954_pp0_iter3_reg;
        trunc_ln13_reg_954_pp0_iter5_reg <= trunc_ln13_reg_954_pp0_iter4_reg;
        trunc_ln13_reg_954_pp0_iter6_reg <= trunc_ln13_reg_954_pp0_iter5_reg;
        trunc_ln13_reg_954_pp0_iter7_reg <= trunc_ln13_reg_954_pp0_iter6_reg;
        trunc_ln13_reg_954_pp0_iter8_reg <= trunc_ln13_reg_954_pp0_iter7_reg;
        trunc_ln13_reg_954_pp0_iter9_reg <= trunc_ln13_reg_954_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Si_4_reg_1458 <= grp_fu_490_p2;
        Si_5_reg_1463 <= grp_fu_494_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        Si_4_reg_1458_pp0_iter3_reg <= Si_4_reg_1458;
        Si_4_reg_1458_pp0_iter4_reg <= Si_4_reg_1458_pp0_iter3_reg;
        Si_4_reg_1458_pp0_iter5_reg <= Si_4_reg_1458_pp0_iter4_reg;
        Si_4_reg_1458_pp0_iter6_reg <= Si_4_reg_1458_pp0_iter5_reg;
        Si_4_reg_1458_pp0_iter7_reg <= Si_4_reg_1458_pp0_iter6_reg;
        Si_4_reg_1458_pp0_iter8_reg <= Si_4_reg_1458_pp0_iter7_reg;
        Si_5_reg_1463_pp0_iter3_reg <= Si_5_reg_1463;
        Si_5_reg_1463_pp0_iter4_reg <= Si_5_reg_1463_pp0_iter3_reg;
        Si_5_reg_1463_pp0_iter5_reg <= Si_5_reg_1463_pp0_iter4_reg;
        Si_5_reg_1463_pp0_iter6_reg <= Si_5_reg_1463_pp0_iter5_reg;
        Si_5_reg_1463_pp0_iter7_reg <= Si_5_reg_1463_pp0_iter6_reg;
        Si_5_reg_1463_pp0_iter8_reg <= Si_5_reg_1463_pp0_iter7_reg;
        Si_5_reg_1463_pp0_iter9_reg <= Si_5_reg_1463_pp0_iter8_reg;
        select_ln14_reg_1378 <= select_ln14_fu_884_p3;
        select_ln16_8_reg_1403 <= select_ln16_8_fu_909_p3;
        select_ln16_9_reg_1408 <= select_ln16_9_fu_916_p3;
        trunc_ln16_1_reg_1011 <= trunc_ln16_1_fu_633_p1;
        trunc_ln16_reg_996 <= trunc_ln16_fu_623_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        Si_6_reg_1468 <= grp_fu_490_p2;
        Si_7_reg_1473 <= grp_fu_494_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        Si_6_reg_1468_pp0_iter10_reg <= Si_6_reg_1468_pp0_iter9_reg;
        Si_6_reg_1468_pp0_iter11_reg <= Si_6_reg_1468_pp0_iter10_reg;
        Si_6_reg_1468_pp0_iter3_reg <= Si_6_reg_1468;
        Si_6_reg_1468_pp0_iter4_reg <= Si_6_reg_1468_pp0_iter3_reg;
        Si_6_reg_1468_pp0_iter5_reg <= Si_6_reg_1468_pp0_iter4_reg;
        Si_6_reg_1468_pp0_iter6_reg <= Si_6_reg_1468_pp0_iter5_reg;
        Si_6_reg_1468_pp0_iter7_reg <= Si_6_reg_1468_pp0_iter6_reg;
        Si_6_reg_1468_pp0_iter8_reg <= Si_6_reg_1468_pp0_iter7_reg;
        Si_6_reg_1468_pp0_iter9_reg <= Si_6_reg_1468_pp0_iter8_reg;
        Si_7_reg_1473_pp0_iter10_reg <= Si_7_reg_1473_pp0_iter9_reg;
        Si_7_reg_1473_pp0_iter11_reg <= Si_7_reg_1473_pp0_iter10_reg;
        Si_7_reg_1473_pp0_iter12_reg <= Si_7_reg_1473_pp0_iter11_reg;
        Si_7_reg_1473_pp0_iter3_reg <= Si_7_reg_1473;
        Si_7_reg_1473_pp0_iter4_reg <= Si_7_reg_1473_pp0_iter3_reg;
        Si_7_reg_1473_pp0_iter5_reg <= Si_7_reg_1473_pp0_iter4_reg;
        Si_7_reg_1473_pp0_iter6_reg <= Si_7_reg_1473_pp0_iter5_reg;
        Si_7_reg_1473_pp0_iter7_reg <= Si_7_reg_1473_pp0_iter6_reg;
        Si_7_reg_1473_pp0_iter8_reg <= Si_7_reg_1473_pp0_iter7_reg;
        Si_7_reg_1473_pp0_iter9_reg <= Si_7_reg_1473_pp0_iter8_reg;
        select_ln16_1_reg_1071 <= select_ln16_1_fu_676_p3;
        select_ln16_reg_1066 <= select_ln16_fu_669_p3;
        trunc_ln16_2_reg_1081 <= trunc_ln16_2_fu_683_p1;
        trunc_ln16_3_reg_1101 <= trunc_ln16_3_fu_693_p1;
        trunc_ln16_4_reg_1121 <= trunc_ln16_4_fu_703_p1;
        trunc_ln16_5_reg_1131 <= trunc_ln16_5_fu_707_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        Si_8_reg_1478 <= grp_fu_490_p2;
        Si_9_reg_1483 <= grp_fu_494_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        Si_8_reg_1478_pp0_iter10_reg <= Si_8_reg_1478_pp0_iter9_reg;
        Si_8_reg_1478_pp0_iter11_reg <= Si_8_reg_1478_pp0_iter10_reg;
        Si_8_reg_1478_pp0_iter12_reg <= Si_8_reg_1478_pp0_iter11_reg;
        Si_8_reg_1478_pp0_iter13_reg <= Si_8_reg_1478_pp0_iter12_reg;
        Si_8_reg_1478_pp0_iter14_reg <= Si_8_reg_1478_pp0_iter13_reg;
        Si_8_reg_1478_pp0_iter3_reg <= Si_8_reg_1478;
        Si_8_reg_1478_pp0_iter4_reg <= Si_8_reg_1478_pp0_iter3_reg;
        Si_8_reg_1478_pp0_iter5_reg <= Si_8_reg_1478_pp0_iter4_reg;
        Si_8_reg_1478_pp0_iter6_reg <= Si_8_reg_1478_pp0_iter5_reg;
        Si_8_reg_1478_pp0_iter7_reg <= Si_8_reg_1478_pp0_iter6_reg;
        Si_8_reg_1478_pp0_iter8_reg <= Si_8_reg_1478_pp0_iter7_reg;
        Si_8_reg_1478_pp0_iter9_reg <= Si_8_reg_1478_pp0_iter8_reg;
        Si_9_reg_1483_pp0_iter10_reg <= Si_9_reg_1483_pp0_iter9_reg;
        Si_9_reg_1483_pp0_iter11_reg <= Si_9_reg_1483_pp0_iter10_reg;
        Si_9_reg_1483_pp0_iter12_reg <= Si_9_reg_1483_pp0_iter11_reg;
        Si_9_reg_1483_pp0_iter13_reg <= Si_9_reg_1483_pp0_iter12_reg;
        Si_9_reg_1483_pp0_iter14_reg <= Si_9_reg_1483_pp0_iter13_reg;
        Si_9_reg_1483_pp0_iter15_reg <= Si_9_reg_1483_pp0_iter14_reg;
        Si_9_reg_1483_pp0_iter3_reg <= Si_9_reg_1483;
        Si_9_reg_1483_pp0_iter4_reg <= Si_9_reg_1483_pp0_iter3_reg;
        Si_9_reg_1483_pp0_iter5_reg <= Si_9_reg_1483_pp0_iter4_reg;
        Si_9_reg_1483_pp0_iter6_reg <= Si_9_reg_1483_pp0_iter5_reg;
        Si_9_reg_1483_pp0_iter7_reg <= Si_9_reg_1483_pp0_iter6_reg;
        Si_9_reg_1483_pp0_iter8_reg <= Si_9_reg_1483_pp0_iter7_reg;
        Si_9_reg_1483_pp0_iter9_reg <= Si_9_reg_1483_pp0_iter8_reg;
        select_ln16_2_reg_1196 <= select_ln16_2_fu_755_p3;
        select_ln16_3_reg_1201 <= select_ln16_3_fu_762_p3;
        trunc_ln16_6_reg_1226 <= trunc_ln16_6_fu_781_p1;
        trunc_ln16_7_reg_1231 <= trunc_ln16_7_fu_785_p1;
        trunc_ln16_8_reg_1241 <= trunc_ln16_8_fu_789_p1;
        trunc_ln16_9_reg_1256 <= trunc_ln16_9_fu_793_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln16_8_reg_1246 <= {{cols_0_q1[8:1]}};
        lshr_ln16_9_reg_1261 <= {{cols_1_q1[8:1]}};
        nzval_0_load_4_reg_1236 <= nzval_0_q1;
        nzval_1_load_4_reg_1251 <= nzval_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        nzval_0_load_1_reg_1076 <= nzval_0_q1;
        nzval_0_load_2_reg_1116 <= nzval_0_q0;
        nzval_1_load_1_reg_1096 <= nzval_1_q1;
        nzval_1_load_2_reg_1126 <= nzval_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_538 <= nzval_0_q0;
        reg_542 <= nzval_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_546 <= {{cols_0_q0[8:1]}};
        reg_550 <= {{cols_1_q0[8:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_1_reg_1488 <= grp_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_2_reg_1493 <= grp_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_3_reg_1498 <= grp_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_4_reg_1503 <= grp_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sum_5_reg_1508 <= grp_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum_6_reg_1513 <= grp_fu_486_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sum_7_reg_1518 <= grp_fu_486_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_8_reg_1523 <= grp_fu_486_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sum_9_reg_1528 <= grp_fu_486_p2;
    end
end
always @ (*) begin
    if (((icmp_ln13_reg_992 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter18 == 1'b1) & (icmp_ln13_reg_992_pp0_iter17_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter18_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter18_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter18_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to17 = 1'b1;
    end else begin
        ap_idle_pp0_0to17 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to18 = 1'b1;
    end else begin
        ap_idle_pp0_1to18 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i1_load = 9'd0;
    end else begin
        ap_sig_allocacmp_i1_load = i1_fu_70;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_0_address0_local = zext_ln16_13_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_0_address0_local = zext_ln16_12_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_0_address0_local = zext_ln16_10_fu_598_p1;
        end else begin
            cols_0_address0_local = 'bx;
        end
    end else begin
        cols_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_0_address1_local = zext_ln16_14_fu_729_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_0_address1_local = zext_ln16_11_fu_648_p1;
        end else begin
            cols_0_address1_local = 'bx;
        end
    end else begin
        cols_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_0_ce0_local = 1'b1;
    end else begin
        cols_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_0_ce1_local = 1'b1;
    end else begin
        cols_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_1_address0_local = zext_ln16_13_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_1_address0_local = zext_ln16_12_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            cols_1_address0_local = zext_ln16_10_fu_598_p1;
        end else begin
            cols_1_address0_local = 'bx;
        end
    end else begin
        cols_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            cols_1_address1_local = zext_ln16_14_fu_729_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            cols_1_address1_local = zext_ln16_11_fu_648_p1;
        end else begin
            cols_1_address1_local = 'bx;
        end
    end else begin
        cols_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_1_ce0_local = 1'b1;
    end else begin
        cols_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        cols_1_ce1_local = 1'b1;
    end else begin
        cols_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_482_p0 = sum_4_reg_1503;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_482_p0 = sum_3_reg_1498;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_482_p0 = sum_2_reg_1493;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_482_p0 = sum_1_reg_1488;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_482_p0 = sum_fu_939_p1;
    end else begin
        grp_fu_482_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_482_p1 = Si_4_reg_1458_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_482_p1 = Si_3_reg_1453_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_482_p1 = Si_2_reg_1448_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_482_p1 = Si_1_reg_1438_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_482_p1 = Si_reg_1433;
    end else begin
        grp_fu_482_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_486_p0 = sum_9_reg_1528;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_486_p0 = sum_8_reg_1523;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_486_p0 = sum_7_reg_1518;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_486_p0 = sum_6_reg_1513;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_486_p0 = sum_5_reg_1508;
    end else begin
        grp_fu_486_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_486_p1 = Si_9_reg_1483_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_486_p1 = Si_8_reg_1478_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_486_p1 = Si_7_reg_1473_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_486_p1 = Si_6_reg_1468_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_486_p1 = Si_5_reg_1463_pp0_iter9_reg;
    end else begin
        grp_fu_486_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_490_p0 = bitcast_ln16_16_fu_923_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_490_p0 = bitcast_ln16_12_fu_891_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_490_p0 = bitcast_ln16_8_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_490_p0 = bitcast_ln16_4_fu_797_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_490_p0 = bitcast_ln16_fu_737_p1;
    end else begin
        grp_fu_490_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_490_p1 = bitcast_ln16_17_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_490_p1 = bitcast_ln16_13_fu_896_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_490_p1 = bitcast_ln16_9_fu_848_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_490_p1 = bitcast_ln16_5_fu_801_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_490_p1 = bitcast_ln16_1_fu_742_p1;
    end else begin
        grp_fu_490_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_494_p0 = bitcast_ln16_18_fu_931_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_494_p0 = bitcast_ln16_14_fu_900_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_494_p0 = bitcast_ln16_10_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_494_p0 = bitcast_ln16_6_fu_805_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_494_p0 = bitcast_ln16_2_fu_746_p1;
    end else begin
        grp_fu_494_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_494_p1 = bitcast_ln16_19_fu_935_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_494_p1 = bitcast_ln16_15_fu_905_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_494_p1 = bitcast_ln16_11_fu_856_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_494_p1 = bitcast_ln16_7_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_494_p1 = bitcast_ln16_3_fu_751_p1;
    end else begin
        grp_fu_494_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_0_address0_local = zext_ln16_13_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_0_address0_local = zext_ln16_12_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_0_address0_local = zext_ln16_10_fu_598_p1;
        end else begin
            nzval_0_address0_local = 'bx;
        end
    end else begin
        nzval_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_0_address1_local = zext_ln16_14_fu_729_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_0_address1_local = zext_ln16_11_fu_648_p1;
        end else begin
            nzval_0_address1_local = 'bx;
        end
    end else begin
        nzval_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_0_ce0_local = 1'b1;
    end else begin
        nzval_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_0_ce1_local = 1'b1;
    end else begin
        nzval_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_1_address0_local = zext_ln16_13_fu_716_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_1_address0_local = zext_ln16_12_fu_661_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            nzval_1_address0_local = zext_ln16_10_fu_598_p1;
        end else begin
            nzval_1_address0_local = 'bx;
        end
    end else begin
        nzval_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            nzval_1_address1_local = zext_ln16_14_fu_729_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            nzval_1_address1_local = zext_ln16_11_fu_648_p1;
        end else begin
            nzval_1_address1_local = 'bx;
        end
    end else begin
        nzval_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_1_ce0_local = 1'b1;
    end else begin
        nzval_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        nzval_1_ce1_local = 1'b1;
    end else begin
        nzval_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_0_ce1_local = 1'b1;
    end else begin
        out_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter18 == 1'b1) & (trunc_ln13_reg_954_pp0_iter17_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_1_ce1_local = 1'b1;
    end else begin
        out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter18 == 1'b1) & (trunc_ln13_reg_954_pp0_iter17_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_0_address0_local = zext_ln16_9_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_0_address0_local = zext_ln16_7_fu_833_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_0_address0_local = zext_ln16_5_fu_775_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_0_address0_local = zext_ln16_3_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_0_address0_local = zext_ln16_1_fu_637_p1;
    end else begin
        vec_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_0_address1_local = zext_ln16_8_fu_874_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_0_address1_local = zext_ln16_6_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_0_address1_local = zext_ln16_4_fu_769_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_0_address1_local = zext_ln16_2_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_0_address1_local = zext_ln16_fu_627_p1;
    end else begin
        vec_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_0_ce0_local = 1'b1;
    end else begin
        vec_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_0_ce1_local = 1'b1;
    end else begin
        vec_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_1_address0_local = zext_ln16_9_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_1_address0_local = zext_ln16_7_fu_833_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_1_address0_local = zext_ln16_5_fu_775_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_1_address0_local = zext_ln16_3_fu_697_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_1_address0_local = zext_ln16_1_fu_637_p1;
    end else begin
        vec_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        vec_1_address1_local = zext_ln16_8_fu_874_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        vec_1_address1_local = zext_ln16_6_fu_827_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        vec_1_address1_local = zext_ln16_4_fu_769_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        vec_1_address1_local = zext_ln16_2_fu_687_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        vec_1_address1_local = zext_ln16_fu_627_p1;
    end else begin
        vec_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_1_ce0_local = 1'b1;
    end else begin
        vec_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        vec_1_ce1_local = 1'b1;
    end else begin
        vec_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter18_stage0) & (ap_idle_pp0_0to17 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to18 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_fu_592_p2 = (zext_ln14_fu_588_p1 + zext_ln13_fu_562_p1);
assign add_ln16_1_fu_656_p2 = (add_ln14_reg_964 + 12'd2);
assign add_ln16_2_fu_711_p2 = (add_ln14_reg_964 + 12'd3);
assign add_ln16_3_fu_724_p2 = (add_ln14_reg_964 + 12'd4);
assign add_ln16_fu_643_p2 = (add_ln14_reg_964 + 12'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_778 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln16_10_fu_852_p1 = nzval_1_load_2_reg_1126;
assign bitcast_ln16_11_fu_856_p1 = select_ln16_5_reg_1291;
assign bitcast_ln16_12_fu_891_p1 = reg_538;
assign bitcast_ln16_13_fu_896_p1 = select_ln16_6_reg_1348;
assign bitcast_ln16_14_fu_900_p1 = reg_542;
assign bitcast_ln16_15_fu_905_p1 = select_ln16_7_reg_1353;
assign bitcast_ln16_16_fu_923_p1 = nzval_0_load_4_reg_1236;
assign bitcast_ln16_17_fu_927_p1 = select_ln16_8_reg_1403;
assign bitcast_ln16_18_fu_931_p1 = nzval_1_load_4_reg_1251;
assign bitcast_ln16_19_fu_935_p1 = select_ln16_9_reg_1408;
assign bitcast_ln16_1_fu_742_p1 = select_ln16_reg_1066;
assign bitcast_ln16_2_fu_746_p1 = reg_542;
assign bitcast_ln16_3_fu_751_p1 = select_ln16_1_reg_1071;
assign bitcast_ln16_4_fu_797_p1 = nzval_0_load_1_reg_1076;
assign bitcast_ln16_5_fu_801_p1 = select_ln16_2_reg_1196;
assign bitcast_ln16_6_fu_805_p1 = nzval_1_load_1_reg_1096;
assign bitcast_ln16_7_fu_809_p1 = select_ln16_3_reg_1201;
assign bitcast_ln16_8_fu_844_p1 = nzval_0_load_2_reg_1116;
assign bitcast_ln16_9_fu_848_p1 = select_ln16_4_reg_1286;
assign bitcast_ln16_fu_737_p1 = reg_538;
assign bitcast_ln19_fu_943_p1 = grp_fu_486_p2;
assign cols_0_address0 = cols_0_address0_local;
assign cols_0_address1 = cols_0_address1_local;
assign cols_0_ce0 = cols_0_ce0_local;
assign cols_0_ce1 = cols_0_ce1_local;
assign cols_1_address0 = cols_1_address0_local;
assign cols_1_address1 = cols_1_address1_local;
assign cols_1_ce0 = cols_1_ce0_local;
assign cols_1_ce1 = cols_1_ce1_local;
assign grp_fu_498_p4 = {{cols_0_q0[8:1]}};
assign grp_fu_508_p4 = {{cols_1_q0[8:1]}};
assign grp_fu_518_p4 = {{cols_0_q1[8:1]}};
assign grp_fu_528_p4 = {{cols_1_q1[8:1]}};
assign i_fu_606_p2 = (ap_sig_allocacmp_i1_load + 9'd1);
assign icmp_ln13_fu_612_p2 = ((ap_sig_allocacmp_i1_load == 9'd493) ? 1'b1 : 1'b0);
assign nzval_0_address0 = nzval_0_address0_local;
assign nzval_0_address1 = nzval_0_address1_local;
assign nzval_0_ce0 = nzval_0_ce0_local;
assign nzval_0_ce1 = nzval_0_ce1_local;
assign nzval_1_address0 = nzval_1_address0_local;
assign nzval_1_address1 = nzval_1_address1_local;
assign nzval_1_ce0 = nzval_1_ce0_local;
assign nzval_1_ce1 = nzval_1_ce1_local;
assign out_0_address0 = out_0_addr_reg_1316_pp0_iter17_reg;
assign out_0_address1 = zext_ln10_fu_839_p1;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_ce1 = out_0_ce1_local;
assign out_0_d0 = bitcast_ln19_reg_1533;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = out_1_addr_reg_1322_pp0_iter17_reg;
assign out_1_address1 = zext_ln10_fu_839_p1;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_ce1 = out_1_ce1_local;
assign out_1_d0 = bitcast_ln19_reg_1533;
assign out_1_we0 = out_1_we0_local;
assign select_ln14_fu_884_p3 = ((trunc_ln13_reg_954_pp0_iter1_reg[0:0] == 1'b1) ? out_1_q1 : out_0_q1);
assign select_ln16_1_fu_676_p3 = ((trunc_ln16_1_reg_1011[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_2_fu_755_p3 = ((trunc_ln16_2_reg_1081[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_3_fu_762_p3 = ((trunc_ln16_3_reg_1101[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_4_fu_813_p3 = ((trunc_ln16_4_reg_1121[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_5_fu_820_p3 = ((trunc_ln16_5_reg_1131[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_6_fu_860_p3 = ((trunc_ln16_6_reg_1226[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_7_fu_867_p3 = ((trunc_ln16_7_reg_1231[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_8_fu_909_p3 = ((trunc_ln16_8_reg_1241[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign select_ln16_9_fu_916_p3 = ((trunc_ln16_9_reg_1256[0:0] == 1'b1) ? vec_1_q0 : vec_0_q0);
assign select_ln16_fu_669_p3 = ((trunc_ln16_reg_996[0:0] == 1'b1) ? vec_1_q1 : vec_0_q1);
assign sum_fu_939_p1 = select_ln14_reg_1378;
assign tmp_fu_580_p3 = {{ap_sig_allocacmp_i1_load}, {2'd0}};
assign trunc_ln13_fu_566_p1 = ap_sig_allocacmp_i1_load[0:0];
assign trunc_ln16_1_fu_633_p1 = cols_1_q0[0:0];
assign trunc_ln16_2_fu_683_p1 = cols_0_q1[0:0];
assign trunc_ln16_3_fu_693_p1 = cols_1_q1[0:0];
assign trunc_ln16_4_fu_703_p1 = cols_0_q0[0:0];
assign trunc_ln16_5_fu_707_p1 = cols_1_q0[0:0];
assign trunc_ln16_6_fu_781_p1 = cols_0_q0[0:0];
assign trunc_ln16_7_fu_785_p1 = cols_1_q0[0:0];
assign trunc_ln16_8_fu_789_p1 = cols_0_q1[0:0];
assign trunc_ln16_9_fu_793_p1 = cols_1_q1[0:0];
assign trunc_ln16_fu_623_p1 = cols_0_q0[0:0];
assign vec_0_address0 = vec_0_address0_local;
assign vec_0_address1 = vec_0_address1_local;
assign vec_0_ce0 = vec_0_ce0_local;
assign vec_0_ce1 = vec_0_ce1_local;
assign vec_1_address0 = vec_1_address0_local;
assign vec_1_address1 = vec_1_address1_local;
assign vec_1_ce0 = vec_1_ce0_local;
assign vec_1_ce1 = vec_1_ce1_local;
assign zext_ln10_fu_839_p1 = lshr_ln_reg_959;
assign zext_ln13_fu_562_p1 = ap_sig_allocacmp_i1_load;
assign zext_ln14_fu_588_p1 = tmp_fu_580_p3;
assign zext_ln16_10_fu_598_p1 = add_ln14_fu_592_p2;
assign zext_ln16_11_fu_648_p1 = add_ln16_fu_643_p2;
assign zext_ln16_12_fu_661_p1 = add_ln16_1_fu_656_p2;
assign zext_ln16_13_fu_716_p1 = add_ln16_2_fu_711_p2;
assign zext_ln16_14_fu_729_p1 = add_ln16_3_fu_724_p2;
assign zext_ln16_1_fu_637_p1 = grp_fu_508_p4;
assign zext_ln16_2_fu_687_p1 = grp_fu_518_p4;
assign zext_ln16_3_fu_697_p1 = grp_fu_528_p4;
assign zext_ln16_4_fu_769_p1 = reg_546;
assign zext_ln16_5_fu_775_p1 = reg_550;
assign zext_ln16_6_fu_827_p1 = reg_546;
assign zext_ln16_7_fu_833_p1 = reg_550;
assign zext_ln16_8_fu_874_p1 = lshr_ln16_8_reg_1246;
assign zext_ln16_9_fu_879_p1 = lshr_ln16_9_reg_1261;
assign zext_ln16_fu_627_p1 = grp_fu_498_p4;
endmodule 