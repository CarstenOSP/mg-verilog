module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_672_p_din0,grp_fu_672_p_din1,grp_fu_672_p_opcode,grp_fu_672_p_dout0,grp_fu_672_p_ce,grp_fu_676_p_din0,grp_fu_676_p_din1,grp_fu_676_p_opcode,grp_fu_676_p_dout0,grp_fu_676_p_ce,grp_fu_680_p_din0,grp_fu_680_p_din1,grp_fu_680_p_opcode,grp_fu_680_p_dout0,grp_fu_680_p_ce,grp_fu_684_p_din0,grp_fu_684_p_din1,grp_fu_684_p_opcode,grp_fu_684_p_dout0,grp_fu_684_p_ce,grp_fu_688_p_din0,grp_fu_688_p_din1,grp_fu_688_p_opcode,grp_fu_688_p_dout0,grp_fu_688_p_ce,grp_fu_692_p_din0,grp_fu_692_p_din1,grp_fu_692_p_opcode,grp_fu_692_p_dout0,grp_fu_692_p_ce,grp_fu_696_p_din0,grp_fu_696_p_din1,grp_fu_696_p_opcode,grp_fu_696_p_dout0,grp_fu_696_p_ce,grp_fu_700_p_din0,grp_fu_700_p_din1,grp_fu_700_p_opcode,grp_fu_700_p_dout0,grp_fu_700_p_ce,grp_fu_704_p_din0,grp_fu_704_p_din1,grp_fu_704_p_opcode,grp_fu_704_p_dout0,grp_fu_704_p_ce,grp_fu_708_p_din0,grp_fu_708_p_din1,grp_fu_708_p_opcode,grp_fu_708_p_dout0,grp_fu_708_p_ce,grp_fu_712_p_din0,grp_fu_712_p_din1,grp_fu_712_p_opcode,grp_fu_712_p_dout0,grp_fu_712_p_ce,grp_fu_716_p_din0,grp_fu_716_p_din1,grp_fu_716_p_opcode,grp_fu_716_p_dout0,grp_fu_716_p_ce,grp_fu_720_p_din0,grp_fu_720_p_din1,grp_fu_720_p_opcode,grp_fu_720_p_dout0,grp_fu_720_p_ce,grp_fu_724_p_din0,grp_fu_724_p_din1,grp_fu_724_p_opcode,grp_fu_724_p_dout0,grp_fu_724_p_ce,grp_fu_728_p_din0,grp_fu_728_p_din1,grp_fu_728_p_opcode,grp_fu_728_p_dout0,grp_fu_728_p_ce,grp_fu_732_p_din0,grp_fu_732_p_din1,grp_fu_732_p_dout0,grp_fu_732_p_ce,grp_fu_736_p_din0,grp_fu_736_p_din1,grp_fu_736_p_dout0,grp_fu_736_p_ce,grp_fu_740_p_din0,grp_fu_740_p_din1,grp_fu_740_p_dout0,grp_fu_740_p_ce,grp_fu_769_p_din0,grp_fu_769_p_din1,grp_fu_769_p_dout0,grp_fu_769_p_ce); 
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
output  [4:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
input  [63:0] DATA_y_8_q0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
input  [63:0] DATA_y_9_q0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
input  [63:0] DATA_y_10_q0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
input  [63:0] DATA_y_11_q0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
input  [63:0] DATA_y_12_q0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
input  [63:0] DATA_y_13_q0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
input  [63:0] DATA_y_14_q0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
input  [63:0] DATA_y_15_q0;
output  [4:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [4:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [4:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [4:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [4:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [4:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [4:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [4:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [4:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [4:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [4:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [4:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [4:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [4:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [4:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [4:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
output  [8:0] work_x_address0;
output   work_x_ce0;
output   work_x_we0;
output  [63:0] work_x_d0;
output  [8:0] work_x_address1;
output   work_x_ce1;
output   work_x_we1;
output  [63:0] work_x_d1;
output  [8:0] work_y_address0;
output   work_y_ce0;
output   work_y_we0;
output  [63:0] work_y_d0;
output  [8:0] work_y_address1;
output   work_y_ce1;
output   work_y_we1;
output  [63:0] work_y_d1;
output  [63:0] grp_fu_672_p_din0;
output  [63:0] grp_fu_672_p_din1;
output  [1:0] grp_fu_672_p_opcode;
input  [63:0] grp_fu_672_p_dout0;
output   grp_fu_672_p_ce;
output  [63:0] grp_fu_676_p_din0;
output  [63:0] grp_fu_676_p_din1;
output  [1:0] grp_fu_676_p_opcode;
input  [63:0] grp_fu_676_p_dout0;
output   grp_fu_676_p_ce;
output  [63:0] grp_fu_680_p_din0;
output  [63:0] grp_fu_680_p_din1;
output  [1:0] grp_fu_680_p_opcode;
input  [63:0] grp_fu_680_p_dout0;
output   grp_fu_680_p_ce;
output  [63:0] grp_fu_684_p_din0;
output  [63:0] grp_fu_684_p_din1;
output  [1:0] grp_fu_684_p_opcode;
input  [63:0] grp_fu_684_p_dout0;
output   grp_fu_684_p_ce;
output  [63:0] grp_fu_688_p_din0;
output  [63:0] grp_fu_688_p_din1;
output  [1:0] grp_fu_688_p_opcode;
input  [63:0] grp_fu_688_p_dout0;
output   grp_fu_688_p_ce;
output  [63:0] grp_fu_692_p_din0;
output  [63:0] grp_fu_692_p_din1;
output  [1:0] grp_fu_692_p_opcode;
input  [63:0] grp_fu_692_p_dout0;
output   grp_fu_692_p_ce;
output  [63:0] grp_fu_696_p_din0;
output  [63:0] grp_fu_696_p_din1;
output  [1:0] grp_fu_696_p_opcode;
input  [63:0] grp_fu_696_p_dout0;
output   grp_fu_696_p_ce;
output  [63:0] grp_fu_700_p_din0;
output  [63:0] grp_fu_700_p_din1;
output  [1:0] grp_fu_700_p_opcode;
input  [63:0] grp_fu_700_p_dout0;
output   grp_fu_700_p_ce;
output  [63:0] grp_fu_704_p_din0;
output  [63:0] grp_fu_704_p_din1;
output  [1:0] grp_fu_704_p_opcode;
input  [63:0] grp_fu_704_p_dout0;
output   grp_fu_704_p_ce;
output  [63:0] grp_fu_708_p_din0;
output  [63:0] grp_fu_708_p_din1;
output  [1:0] grp_fu_708_p_opcode;
input  [63:0] grp_fu_708_p_dout0;
output   grp_fu_708_p_ce;
output  [63:0] grp_fu_712_p_din0;
output  [63:0] grp_fu_712_p_din1;
output  [1:0] grp_fu_712_p_opcode;
input  [63:0] grp_fu_712_p_dout0;
output   grp_fu_712_p_ce;
output  [63:0] grp_fu_716_p_din0;
output  [63:0] grp_fu_716_p_din1;
output  [1:0] grp_fu_716_p_opcode;
input  [63:0] grp_fu_716_p_dout0;
output   grp_fu_716_p_ce;
output  [63:0] grp_fu_720_p_din0;
output  [63:0] grp_fu_720_p_din1;
output  [1:0] grp_fu_720_p_opcode;
input  [63:0] grp_fu_720_p_dout0;
output   grp_fu_720_p_ce;
output  [63:0] grp_fu_724_p_din0;
output  [63:0] grp_fu_724_p_din1;
output  [1:0] grp_fu_724_p_opcode;
input  [63:0] grp_fu_724_p_dout0;
output   grp_fu_724_p_ce;
output  [63:0] grp_fu_728_p_din0;
output  [63:0] grp_fu_728_p_din1;
output  [1:0] grp_fu_728_p_opcode;
input  [63:0] grp_fu_728_p_dout0;
output   grp_fu_728_p_ce;
output  [63:0] grp_fu_732_p_din0;
output  [63:0] grp_fu_732_p_din1;
input  [63:0] grp_fu_732_p_dout0;
output   grp_fu_732_p_ce;
output  [63:0] grp_fu_736_p_din0;
output  [63:0] grp_fu_736_p_din1;
input  [63:0] grp_fu_736_p_dout0;
output   grp_fu_736_p_ce;
output  [63:0] grp_fu_740_p_din0;
output  [63:0] grp_fu_740_p_din1;
input  [63:0] grp_fu_740_p_dout0;
output   grp_fu_740_p_ce;
output  [63:0] grp_fu_769_p_din0;
output  [63:0] grp_fu_769_p_din1;
input  [63:0] grp_fu_769_p_dout0;
output   grp_fu_769_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln365_reg_1491;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_1480;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1480_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter6_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter7_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter8_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter9_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter10_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter11_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter12_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter13_reg;
reg   [6:0] tid_5_reg_1480_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_780_p2;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1491_pp0_iter13_reg;
wire   [63:0] c0_y_fu_835_p3;
reg   [63:0] c0_y_reg_1655;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] c0_y_61_fu_843_p3;
reg   [63:0] c0_y_61_reg_1661;
wire   [63:0] c0_y_62_fu_851_p3;
reg   [63:0] c0_y_62_reg_1667;
wire   [63:0] c0_y_63_fu_859_p3;
reg   [63:0] c0_y_63_reg_1672;
wire   [63:0] select_ln371_fu_867_p3;
reg   [63:0] select_ln371_reg_1678;
wire   [63:0] select_ln372_fu_875_p3;
reg   [63:0] select_ln372_reg_1684;
wire   [63:0] select_ln373_fu_883_p3;
reg   [63:0] select_ln373_reg_1690;
wire   [63:0] select_ln374_fu_891_p3;
reg   [63:0] select_ln374_reg_1695;
wire   [63:0] c0_x_fu_899_p3;
reg   [63:0] c0_x_reg_1701;
wire   [63:0] c0_x_61_fu_907_p3;
reg   [63:0] c0_x_61_reg_1707;
wire   [63:0] c0_x_62_fu_915_p3;
reg   [63:0] c0_x_62_reg_1713;
wire   [63:0] c0_x_63_fu_923_p3;
reg   [63:0] c0_x_63_reg_1718;
wire   [63:0] select_ln380_fu_931_p3;
reg   [63:0] select_ln380_reg_1724;
wire   [63:0] select_ln381_fu_939_p3;
reg   [63:0] select_ln381_reg_1730;
wire   [63:0] select_ln382_fu_947_p3;
reg   [63:0] select_ln382_reg_1736;
wire   [63:0] select_ln383_fu_955_p3;
reg   [63:0] select_ln383_reg_1741;
reg   [63:0] c0_x_36_reg_1747;
reg   [63:0] c0_y_36_reg_1753;
reg   [63:0] tmp_1_reg_1759;
reg   [63:0] sub_reg_1765;
reg   [63:0] tmp_1_11_reg_1771;
reg   [63:0] tmp_1_11_reg_1771_pp0_iter3_reg;
reg   [63:0] tmp_1_11_reg_1771_pp0_iter4_reg;
reg   [63:0] sub12_reg_1777;
reg   [63:0] sub12_reg_1777_pp0_iter3_reg;
reg   [63:0] sub12_reg_1777_pp0_iter4_reg;
reg   [63:0] add12_reg_1783;
reg   [63:0] add13_reg_1789;
reg   [63:0] tmp_1_12_reg_1795;
reg   [63:0] sub13_reg_1800;
reg   [63:0] c0_x_64_reg_1805;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_64_reg_1811;
reg   [63:0] c0_x_35_reg_1817;
reg   [63:0] c0_x_35_reg_1817_pp0_iter3_reg;
reg   [63:0] c0_x_35_reg_1817_pp0_iter4_reg;
reg   [63:0] c0_x_35_reg_1817_pp0_iter5_reg;
reg   [63:0] c0_x_35_reg_1817_pp0_iter6_reg;
reg   [63:0] c0_y_35_reg_1823;
reg   [63:0] c0_y_35_reg_1823_pp0_iter3_reg;
reg   [63:0] c0_y_35_reg_1823_pp0_iter4_reg;
reg   [63:0] c0_y_35_reg_1823_pp0_iter5_reg;
reg   [63:0] c0_y_35_reg_1823_pp0_iter6_reg;
reg   [63:0] add_reg_1829;
reg   [63:0] add11_reg_1835;
wire   [63:0] bitcast_ln386_1_fu_1002_p1;
wire   [63:0] bitcast_ln386_3_fu_1036_p1;
wire   [63:0] bitcast_ln386_9_fu_1070_p1;
wire   [63:0] bitcast_ln386_11_fu_1105_p1;
reg   [63:0] sub14_reg_1863;
reg   [63:0] add14_reg_1868;
reg   [63:0] mul_reg_1873;
reg   [63:0] mul6_reg_1878;
reg   [63:0] sub16_reg_1883;
reg   [63:0] add16_reg_1888;
reg   [63:0] tmp_16_reg_1893;
reg   [63:0] tmp_16_reg_1893_pp0_iter5_reg;
reg   [63:0] tmp_16_reg_1893_pp0_iter6_reg;
reg   [63:0] c0_x_65_reg_1899;
reg   [63:0] c0_y_65_reg_1905;
reg   [63:0] sub17_reg_1911;
reg   [63:0] sub17_reg_1911_pp0_iter5_reg;
reg   [63:0] sub17_reg_1911_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_1140_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_1174_p1;
reg   [63:0] c0_x_38_reg_1927;
reg   [63:0] c0_x_38_reg_1927_pp0_iter5_reg;
reg   [63:0] c0_x_38_reg_1927_pp0_iter6_reg;
reg   [63:0] c0_x_38_reg_1927_pp0_iter7_reg;
reg   [63:0] c0_x_38_reg_1927_pp0_iter8_reg;
reg   [63:0] c0_y_38_reg_1933;
reg   [63:0] c0_y_38_reg_1933_pp0_iter5_reg;
reg   [63:0] c0_y_38_reg_1933_pp0_iter6_reg;
reg   [63:0] c0_y_38_reg_1933_pp0_iter7_reg;
reg   [63:0] c0_y_38_reg_1933_pp0_iter8_reg;
reg   [63:0] add17_reg_1939;
reg   [63:0] add18_reg_1945;
reg   [63:0] c0_x_37_reg_1951;
reg   [63:0] c0_y_37_reg_1957;
reg   [63:0] mul7_reg_1963;
reg   [63:0] mul8_reg_1969;
reg   [63:0] mul9_reg_1975;
reg   [63:0] mul10_reg_1980;
reg   [63:0] sub15_reg_1985;
reg   [63:0] add15_reg_1991;
reg   [63:0] sub20_reg_1997;
reg   [63:0] sub20_reg_1997_pp0_iter7_reg;
reg   [63:0] sub20_reg_1997_pp0_iter8_reg;
reg   [63:0] sub20_reg_1997_pp0_iter9_reg;
reg   [63:0] sub20_reg_1997_pp0_iter10_reg;
reg   [63:0] sub20_reg_1997_pp0_iter11_reg;
reg   [63:0] sub20_reg_1997_pp0_iter12_reg;
reg   [63:0] sub20_reg_1997_pp0_iter13_reg;
reg   [63:0] sub21_reg_2002;
reg   [63:0] sub21_reg_2002_pp0_iter7_reg;
reg   [63:0] sub21_reg_2002_pp0_iter8_reg;
reg   [63:0] sub21_reg_2002_pp0_iter9_reg;
reg   [63:0] sub21_reg_2002_pp0_iter10_reg;
reg   [63:0] sub21_reg_2002_pp0_iter11_reg;
reg   [63:0] sub21_reg_2002_pp0_iter12_reg;
reg   [63:0] sub21_reg_2002_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_1208_p1;
wire   [63:0] bitcast_ln386_15_fu_1242_p1;
reg   [63:0] add19_reg_2017;
reg   [63:0] add19_reg_2017_pp0_iter8_reg;
reg   [63:0] add19_reg_2017_pp0_iter9_reg;
reg   [63:0] add19_reg_2017_pp0_iter10_reg;
reg   [63:0] add19_reg_2017_pp0_iter11_reg;
reg   [63:0] add19_reg_2017_pp0_iter12_reg;
reg   [63:0] add19_reg_2017_pp0_iter13_reg;
reg   [63:0] add20_reg_2022;
reg   [63:0] add20_reg_2022_pp0_iter8_reg;
reg   [63:0] add20_reg_2022_pp0_iter9_reg;
reg   [63:0] add20_reg_2022_pp0_iter10_reg;
reg   [63:0] add20_reg_2022_pp0_iter11_reg;
reg   [63:0] add20_reg_2022_pp0_iter12_reg;
reg   [63:0] add20_reg_2022_pp0_iter13_reg;
reg   [63:0] add23_reg_2027;
reg   [63:0] add23_reg_2027_pp0_iter9_reg;
reg   [63:0] add24_reg_2032;
reg   [63:0] add24_reg_2032_pp0_iter9_reg;
reg   [63:0] tmp_17_reg_2037;
reg   [63:0] tmp_17_reg_2037_pp0_iter9_reg;
reg   [63:0] sub24_reg_2043;
reg   [63:0] sub24_reg_2043_pp0_iter9_reg;
reg   [63:0] c0_x_66_reg_2049;
reg   [63:0] c0_y_66_reg_2054;
reg   [63:0] c0_x_39_reg_2059;
reg   [63:0] c0_x_39_reg_2059_pp0_iter9_reg;
reg   [63:0] c0_x_39_reg_2059_pp0_iter10_reg;
reg   [63:0] c0_x_39_reg_2059_pp0_iter11_reg;
reg   [63:0] c0_y_39_reg_2065;
reg   [63:0] c0_y_39_reg_2065_pp0_iter9_reg;
reg   [63:0] c0_y_39_reg_2065_pp0_iter10_reg;
reg   [63:0] c0_y_39_reg_2065_pp0_iter11_reg;
reg   [63:0] sub18_reg_2071;
reg   [63:0] sub19_reg_2077;
reg   [63:0] mul11_reg_2083;
reg   [63:0] mul12_reg_2088;
wire   [63:0] bitcast_ln386_17_fu_1276_p1;
wire   [63:0] bitcast_ln386_19_fu_1310_p1;
reg   [63:0] add21_reg_2103;
reg   [63:0] add21_reg_2103_pp0_iter11_reg;
reg   [63:0] add21_reg_2103_pp0_iter12_reg;
reg   [63:0] add25_reg_2108;
reg   [63:0] add25_reg_2108_pp0_iter11_reg;
reg   [63:0] add25_reg_2108_pp0_iter12_reg;
reg   [63:0] add26_reg_2113;
reg   [63:0] add26_reg_2113_pp0_iter11_reg;
reg   [63:0] add26_reg_2113_pp0_iter12_reg;
reg   [63:0] add22_reg_2118;
reg   [63:0] add22_reg_2118_pp0_iter12_reg;
reg   [63:0] add22_reg_2118_pp0_iter13_reg;
reg   [63:0] sub22_reg_2123;
reg   [63:0] sub22_reg_2123_pp0_iter12_reg;
reg   [63:0] sub22_reg_2123_pp0_iter13_reg;
reg   [63:0] sub22_reg_2123_pp0_iter14_reg;
reg   [63:0] sub23_reg_2128;
reg   [63:0] sub23_reg_2128_pp0_iter12_reg;
reg   [63:0] sub23_reg_2128_pp0_iter13_reg;
reg   [63:0] sub23_reg_2128_pp0_iter14_reg;
reg   [63:0] sub27_reg_2133;
reg   [63:0] sub27_reg_2133_pp0_iter12_reg;
reg   [63:0] sub27_reg_2133_pp0_iter13_reg;
reg   [63:0] sub27_reg_2133_pp0_iter14_reg;
reg   [63:0] sub28_reg_2138;
reg   [63:0] sub28_reg_2138_pp0_iter12_reg;
reg   [63:0] sub28_reg_2138_pp0_iter13_reg;
reg   [63:0] sub28_reg_2138_pp0_iter14_reg;
reg   [63:0] sub25_reg_2143;
reg   [63:0] sub26_reg_2149;
reg   [63:0] add27_reg_2155;
reg   [63:0] add28_reg_2160;
wire  signed [6:0] zext_ln390_cast_fu_1318_p3;
reg  signed [6:0] zext_ln390_cast_reg_2165;
wire  signed [7:0] zext_ln391_cast_fu_1336_p3;
reg  signed [7:0] zext_ln391_cast_reg_2171;
reg   [63:0] sub29_reg_2176;
reg   [63:0] sub30_reg_2181;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln367_fu_796_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln390_fu_1326_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_1343_p1;
wire   [63:0] zext_ln365_fu_1361_p1;
wire   [63:0] zext_ln392_fu_1373_p1;
wire   [63:0] zext_ln393_1_fu_1402_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1415_p1;
wire   [63:0] zext_ln394_fu_1442_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_1455_p1;
reg   [6:0] tid_fu_122;
wire   [6:0] add_ln365_fu_963_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_15_ce0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_15_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_1332_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1349_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_1366_p1;
wire   [63:0] bitcast_ln392_fu_1379_p1;
wire   [63:0] bitcast_ln393_fu_1408_p1;
wire   [63:0] bitcast_ln395_fu_1421_p1;
wire   [63:0] bitcast_ln394_fu_1448_p1;
wire   [63:0] bitcast_ln396_fu_1461_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1353_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1357_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_1383_p1;
wire   [63:0] bitcast_ln401_fu_1387_p1;
wire   [63:0] bitcast_ln402_fu_1425_p1;
wire   [63:0] bitcast_ln404_fu_1429_p1;
wire   [63:0] bitcast_ln403_fu_1465_p1;
wire   [63:0] bitcast_ln405_fu_1469_p1;
reg   [63:0] grp_fu_688_p0;
reg   [63:0] grp_fu_688_p1;
reg   [63:0] grp_fu_692_p0;
reg   [63:0] grp_fu_692_p1;
reg   [63:0] grp_fu_696_p0;
reg   [63:0] grp_fu_696_p1;
reg   [63:0] grp_fu_700_p0;
reg   [63:0] grp_fu_700_p1;
reg   [63:0] grp_fu_704_p0;
reg   [63:0] grp_fu_704_p1;
reg   [63:0] grp_fu_708_p0;
reg   [63:0] grp_fu_708_p1;
reg   [63:0] grp_fu_712_p0;
reg   [63:0] grp_fu_712_p1;
reg   [63:0] grp_fu_716_p0;
reg   [63:0] grp_fu_716_p1;
reg   [63:0] grp_fu_720_p0;
reg   [63:0] grp_fu_720_p1;
reg   [63:0] grp_fu_724_p0;
reg   [63:0] grp_fu_724_p1;
reg   [63:0] grp_fu_728_p0;
reg   [63:0] grp_fu_728_p1;
reg   [63:0] grp_fu_732_p0;
reg   [63:0] grp_fu_732_p1;
reg   [63:0] grp_fu_736_p0;
reg   [63:0] grp_fu_736_p1;
reg   [63:0] grp_fu_740_p0;
reg   [63:0] grp_fu_740_p1;
reg   [63:0] grp_fu_744_p0;
reg   [63:0] grp_fu_744_p1;
reg   [63:0] grp_fu_748_p0;
reg   [63:0] grp_fu_748_p1;
reg   [63:0] grp_fu_753_p0;
reg   [63:0] grp_fu_753_p1;
reg   [63:0] grp_fu_760_p0;
reg   [63:0] grp_fu_760_p1;
reg   [63:0] grp_fu_765_p0;
reg   [63:0] grp_fu_765_p1;
wire   [4:0] lshr_ln_fu_786_p4;
wire   [0:0] trunc_ln365_fu_832_p1;
wire   [63:0] bitcast_ln386_fu_973_p1;
wire   [0:0] bit_sel_fu_976_p3;
wire   [0:0] xor_ln386_10_fu_984_p2;
wire   [62:0] trunc_ln386_fu_990_p1;
wire   [63:0] xor_ln3_fu_994_p3;
wire   [63:0] bitcast_ln386_2_fu_1007_p1;
wire   [0:0] bit_sel40_fu_1010_p3;
wire   [0:0] xor_ln386_fu_1018_p2;
wire   [62:0] trunc_ln386_1_fu_1024_p1;
wire   [63:0] xor_ln386_1_fu_1028_p3;
wire   [63:0] bitcast_ln386_8_fu_1041_p1;
wire   [0:0] bit_sel43_fu_1044_p3;
wire   [0:0] xor_ln386_13_fu_1052_p2;
wire   [62:0] trunc_ln386_4_fu_1058_p1;
wire   [63:0] xor_ln386_4_fu_1062_p3;
wire   [63:0] bitcast_ln386_10_fu_1076_p1;
wire   [0:0] bit_sel44_fu_1079_p3;
wire   [0:0] xor_ln386_14_fu_1087_p2;
wire   [62:0] trunc_ln386_5_fu_1093_p1;
wire   [63:0] xor_ln386_5_fu_1097_p3;
wire   [63:0] bitcast_ln386_4_fu_1111_p1;
wire   [0:0] bit_sel41_fu_1114_p3;
wire   [0:0] xor_ln386_11_fu_1122_p2;
wire   [62:0] trunc_ln386_2_fu_1128_p1;
wire   [63:0] xor_ln386_2_fu_1132_p3;
wire   [63:0] bitcast_ln386_6_fu_1145_p1;
wire   [0:0] bit_sel42_fu_1148_p3;
wire   [0:0] xor_ln386_12_fu_1156_p2;
wire   [62:0] trunc_ln386_3_fu_1162_p1;
wire   [63:0] xor_ln386_3_fu_1166_p3;
wire   [63:0] bitcast_ln386_12_fu_1179_p1;
wire   [0:0] bit_sel45_fu_1182_p3;
wire   [0:0] xor_ln386_15_fu_1190_p2;
wire   [62:0] trunc_ln386_6_fu_1196_p1;
wire   [63:0] xor_ln386_6_fu_1200_p3;
wire   [63:0] bitcast_ln386_14_fu_1213_p1;
wire   [0:0] bit_sel46_fu_1216_p3;
wire   [0:0] xor_ln386_16_fu_1224_p2;
wire   [62:0] trunc_ln386_7_fu_1230_p1;
wire   [63:0] xor_ln386_7_fu_1234_p3;
wire   [63:0] bitcast_ln386_16_fu_1247_p1;
wire   [0:0] bit_sel47_fu_1250_p3;
wire   [0:0] xor_ln386_17_fu_1258_p2;
wire   [62:0] trunc_ln386_8_fu_1264_p1;
wire   [63:0] xor_ln386_8_fu_1268_p3;
wire   [63:0] bitcast_ln386_18_fu_1281_p1;
wire   [0:0] bit_sel48_fu_1284_p3;
wire   [0:0] xor_ln386_18_fu_1292_p2;
wire   [62:0] trunc_ln386_9_fu_1298_p1;
wire   [63:0] xor_ln386_9_fu_1302_p3;
wire   [5:0] trunc_ln390_fu_1315_p1;
wire  signed [7:0] sext_ln392_fu_1370_p1;
wire   [7:0] zext_ln393_fu_1391_p1;
wire   [8:0] zext_ln393_cast_fu_1394_p3;
wire  signed [8:0] sext_ln395_fu_1412_p1;
wire   [8:0] zext_ln365_1_fu_1433_p1;
wire   [8:0] add_ln394_fu_1436_p2;
wire  signed [8:0] sext_ln396_fu_1452_p1;
reg   [1:0] grp_fu_688_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_692_opcode;
reg   [1:0] grp_fu_696_opcode;
reg   [1:0] grp_fu_700_opcode;
reg   [1:0] grp_fu_704_opcode;
reg   [1:0] grp_fu_708_opcode;
reg   [1:0] grp_fu_712_opcode;
reg   [1:0] grp_fu_716_opcode;
reg   [1:0] grp_fu_720_opcode;
reg   [1:0] grp_fu_724_opcode;
reg   [1:0] grp_fu_728_opcode;
reg   [1:0] grp_fu_732_opcode;
reg   [1:0] grp_fu_736_opcode;
reg   [1:0] grp_fu_740_opcode;
reg   [1:0] grp_fu_744_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter13_stage2;
reg    ap_idle_pp0_0to12;
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
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to14;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_122 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter14 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_122 <= 7'd0;
    end else if (((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_122 <= add_ln365_fu_963_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_1835 <= grp_fu_692_p_dout0;
        add_reg_1829 <= grp_fu_688_p_dout0;
        c0_x_35_reg_1817 <= grp_fu_680_p_dout0;
        c0_x_64_reg_1805 <= grp_fu_672_p_dout0;
        c0_y_35_reg_1823 <= grp_fu_684_p_dout0;
        c0_y_64_reg_1811 <= grp_fu_676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_1783 <= grp_fu_696_p_dout0;
        add13_reg_1789 <= grp_fu_700_p_dout0;
        c0_x_36_reg_1747 <= grp_fu_672_p_dout0;
        c0_y_36_reg_1753 <= grp_fu_676_p_dout0;
        sub12_reg_1777 <= grp_fu_692_p_dout0;
        sub13_reg_1800 <= grp_fu_708_p_dout0;
        sub_reg_1765 <= grp_fu_684_p_dout0;
        tmp_1_11_reg_1771 <= grp_fu_688_p_dout0;
        tmp_1_12_reg_1795 <= grp_fu_704_p_dout0;
        tmp_1_reg_1759 <= grp_fu_680_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_1868 <= grp_fu_716_p_dout0;
        add16_reg_1888 <= grp_fu_724_p_dout0;
        mul6_reg_1878 <= grp_fu_736_p_dout0;
        mul_reg_1873 <= grp_fu_732_p_dout0;
        sub14_reg_1863 <= grp_fu_712_p_dout0;
        sub16_reg_1883 <= grp_fu_720_p_dout0;
        tmp_16_reg_1893 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_1991 <= grp_fu_712_p_dout0;
        sub15_reg_1985 <= grp_fu_708_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_1939 <= grp_fu_680_p_dout0;
        add18_reg_1945 <= grp_fu_684_p_dout0;
        c0_x_38_reg_1927 <= grp_fu_672_p_dout0;
        c0_y_38_reg_1933 <= grp_fu_676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_2017 <= grp_fu_672_p_dout0;
        add20_reg_2022 <= grp_fu_676_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_2017_pp0_iter10_reg <= add19_reg_2017_pp0_iter9_reg;
        add19_reg_2017_pp0_iter11_reg <= add19_reg_2017_pp0_iter10_reg;
        add19_reg_2017_pp0_iter12_reg <= add19_reg_2017_pp0_iter11_reg;
        add19_reg_2017_pp0_iter13_reg <= add19_reg_2017_pp0_iter12_reg;
        add19_reg_2017_pp0_iter8_reg <= add19_reg_2017;
        add19_reg_2017_pp0_iter9_reg <= add19_reg_2017_pp0_iter8_reg;
        add20_reg_2022_pp0_iter10_reg <= add20_reg_2022_pp0_iter9_reg;
        add20_reg_2022_pp0_iter11_reg <= add20_reg_2022_pp0_iter10_reg;
        add20_reg_2022_pp0_iter12_reg <= add20_reg_2022_pp0_iter11_reg;
        add20_reg_2022_pp0_iter13_reg <= add20_reg_2022_pp0_iter12_reg;
        add20_reg_2022_pp0_iter8_reg <= add20_reg_2022;
        add20_reg_2022_pp0_iter9_reg <= add20_reg_2022_pp0_iter8_reg;
        add22_reg_2118_pp0_iter12_reg <= add22_reg_2118;
        add22_reg_2118_pp0_iter13_reg <= add22_reg_2118_pp0_iter12_reg;
        add23_reg_2027_pp0_iter9_reg <= add23_reg_2027;
        add24_reg_2032_pp0_iter9_reg <= add24_reg_2032;
        icmp_ln365_reg_1491 <= icmp_ln365_fu_780_p2;
        icmp_ln365_reg_1491_pp0_iter10_reg <= icmp_ln365_reg_1491_pp0_iter9_reg;
        icmp_ln365_reg_1491_pp0_iter11_reg <= icmp_ln365_reg_1491_pp0_iter10_reg;
        icmp_ln365_reg_1491_pp0_iter12_reg <= icmp_ln365_reg_1491_pp0_iter11_reg;
        icmp_ln365_reg_1491_pp0_iter13_reg <= icmp_ln365_reg_1491_pp0_iter12_reg;
        icmp_ln365_reg_1491_pp0_iter1_reg <= icmp_ln365_reg_1491;
        icmp_ln365_reg_1491_pp0_iter2_reg <= icmp_ln365_reg_1491_pp0_iter1_reg;
        icmp_ln365_reg_1491_pp0_iter3_reg <= icmp_ln365_reg_1491_pp0_iter2_reg;
        icmp_ln365_reg_1491_pp0_iter4_reg <= icmp_ln365_reg_1491_pp0_iter3_reg;
        icmp_ln365_reg_1491_pp0_iter5_reg <= icmp_ln365_reg_1491_pp0_iter4_reg;
        icmp_ln365_reg_1491_pp0_iter6_reg <= icmp_ln365_reg_1491_pp0_iter5_reg;
        icmp_ln365_reg_1491_pp0_iter7_reg <= icmp_ln365_reg_1491_pp0_iter6_reg;
        icmp_ln365_reg_1491_pp0_iter8_reg <= icmp_ln365_reg_1491_pp0_iter7_reg;
        icmp_ln365_reg_1491_pp0_iter9_reg <= icmp_ln365_reg_1491_pp0_iter8_reg;
        sub22_reg_2123_pp0_iter12_reg <= sub22_reg_2123;
        sub22_reg_2123_pp0_iter13_reg <= sub22_reg_2123_pp0_iter12_reg;
        sub22_reg_2123_pp0_iter14_reg <= sub22_reg_2123_pp0_iter13_reg;
        sub23_reg_2128_pp0_iter12_reg <= sub23_reg_2128;
        sub23_reg_2128_pp0_iter13_reg <= sub23_reg_2128_pp0_iter12_reg;
        sub23_reg_2128_pp0_iter14_reg <= sub23_reg_2128_pp0_iter13_reg;
        sub24_reg_2043_pp0_iter9_reg <= sub24_reg_2043;
        sub27_reg_2133_pp0_iter12_reg <= sub27_reg_2133;
        sub27_reg_2133_pp0_iter13_reg <= sub27_reg_2133_pp0_iter12_reg;
        sub27_reg_2133_pp0_iter14_reg <= sub27_reg_2133_pp0_iter13_reg;
        sub28_reg_2138_pp0_iter12_reg <= sub28_reg_2138;
        sub28_reg_2138_pp0_iter13_reg <= sub28_reg_2138_pp0_iter12_reg;
        sub28_reg_2138_pp0_iter14_reg <= sub28_reg_2138_pp0_iter13_reg;
        tid_5_reg_1480 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1480_pp0_iter10_reg <= tid_5_reg_1480_pp0_iter9_reg;
        tid_5_reg_1480_pp0_iter11_reg <= tid_5_reg_1480_pp0_iter10_reg;
        tid_5_reg_1480_pp0_iter12_reg <= tid_5_reg_1480_pp0_iter11_reg;
        tid_5_reg_1480_pp0_iter13_reg <= tid_5_reg_1480_pp0_iter12_reg;
        tid_5_reg_1480_pp0_iter14_reg <= tid_5_reg_1480_pp0_iter13_reg;
        tid_5_reg_1480_pp0_iter1_reg <= tid_5_reg_1480;
        tid_5_reg_1480_pp0_iter2_reg <= tid_5_reg_1480_pp0_iter1_reg;
        tid_5_reg_1480_pp0_iter3_reg <= tid_5_reg_1480_pp0_iter2_reg;
        tid_5_reg_1480_pp0_iter4_reg <= tid_5_reg_1480_pp0_iter3_reg;
        tid_5_reg_1480_pp0_iter5_reg <= tid_5_reg_1480_pp0_iter4_reg;
        tid_5_reg_1480_pp0_iter6_reg <= tid_5_reg_1480_pp0_iter5_reg;
        tid_5_reg_1480_pp0_iter7_reg <= tid_5_reg_1480_pp0_iter6_reg;
        tid_5_reg_1480_pp0_iter8_reg <= tid_5_reg_1480_pp0_iter7_reg;
        tid_5_reg_1480_pp0_iter9_reg <= tid_5_reg_1480_pp0_iter8_reg;
        tmp_17_reg_2037_pp0_iter9_reg <= tmp_17_reg_2037;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_2103 <= grp_fu_704_p_dout0;
        add25_reg_2108 <= grp_fu_708_p_dout0;
        add26_reg_2113 <= grp_fu_712_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_2103_pp0_iter11_reg <= add21_reg_2103;
        add21_reg_2103_pp0_iter12_reg <= add21_reg_2103_pp0_iter11_reg;
        add25_reg_2108_pp0_iter11_reg <= add25_reg_2108;
        add25_reg_2108_pp0_iter12_reg <= add25_reg_2108_pp0_iter11_reg;
        add26_reg_2113_pp0_iter11_reg <= add26_reg_2113;
        add26_reg_2113_pp0_iter12_reg <= add26_reg_2113_pp0_iter11_reg;
        c0_x_38_reg_1927_pp0_iter5_reg <= c0_x_38_reg_1927;
        c0_x_38_reg_1927_pp0_iter6_reg <= c0_x_38_reg_1927_pp0_iter5_reg;
        c0_x_38_reg_1927_pp0_iter7_reg <= c0_x_38_reg_1927_pp0_iter6_reg;
        c0_x_38_reg_1927_pp0_iter8_reg <= c0_x_38_reg_1927_pp0_iter7_reg;
        c0_y_38_reg_1933_pp0_iter5_reg <= c0_y_38_reg_1933;
        c0_y_38_reg_1933_pp0_iter6_reg <= c0_y_38_reg_1933_pp0_iter5_reg;
        c0_y_38_reg_1933_pp0_iter7_reg <= c0_y_38_reg_1933_pp0_iter6_reg;
        c0_y_38_reg_1933_pp0_iter8_reg <= c0_y_38_reg_1933_pp0_iter7_reg;
        sub20_reg_1997_pp0_iter10_reg <= sub20_reg_1997_pp0_iter9_reg;
        sub20_reg_1997_pp0_iter11_reg <= sub20_reg_1997_pp0_iter10_reg;
        sub20_reg_1997_pp0_iter12_reg <= sub20_reg_1997_pp0_iter11_reg;
        sub20_reg_1997_pp0_iter13_reg <= sub20_reg_1997_pp0_iter12_reg;
        sub20_reg_1997_pp0_iter7_reg <= sub20_reg_1997;
        sub20_reg_1997_pp0_iter8_reg <= sub20_reg_1997_pp0_iter7_reg;
        sub20_reg_1997_pp0_iter9_reg <= sub20_reg_1997_pp0_iter8_reg;
        sub21_reg_2002_pp0_iter10_reg <= sub21_reg_2002_pp0_iter9_reg;
        sub21_reg_2002_pp0_iter11_reg <= sub21_reg_2002_pp0_iter10_reg;
        sub21_reg_2002_pp0_iter12_reg <= sub21_reg_2002_pp0_iter11_reg;
        sub21_reg_2002_pp0_iter13_reg <= sub21_reg_2002_pp0_iter12_reg;
        sub21_reg_2002_pp0_iter7_reg <= sub21_reg_2002;
        sub21_reg_2002_pp0_iter8_reg <= sub21_reg_2002_pp0_iter7_reg;
        sub21_reg_2002_pp0_iter9_reg <= sub21_reg_2002_pp0_iter8_reg;
        zext_ln390_cast_reg_2165[5 : 0] <= zext_ln390_cast_fu_1318_p3[5 : 0];
        zext_ln391_cast_reg_2171[6 : 0] <= zext_ln391_cast_fu_1336_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add22_reg_2118 <= grp_fu_696_p_dout0;
        sub22_reg_2123 <= grp_fu_700_p_dout0;
        sub23_reg_2128 <= grp_fu_704_p_dout0;
        sub27_reg_2133 <= grp_fu_708_p_dout0;
        sub28_reg_2138 <= grp_fu_712_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_2027 <= grp_fu_680_p_dout0;
        add24_reg_2032 <= grp_fu_684_p_dout0;
        sub24_reg_2043 <= grp_fu_692_p_dout0;
        tmp_17_reg_2037 <= grp_fu_688_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add27_reg_2155 <= grp_fu_724_p_dout0;
        add28_reg_2160 <= grp_fu_728_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_35_reg_1817_pp0_iter3_reg <= c0_x_35_reg_1817;
        c0_x_35_reg_1817_pp0_iter4_reg <= c0_x_35_reg_1817_pp0_iter3_reg;
        c0_x_35_reg_1817_pp0_iter5_reg <= c0_x_35_reg_1817_pp0_iter4_reg;
        c0_x_35_reg_1817_pp0_iter6_reg <= c0_x_35_reg_1817_pp0_iter5_reg;
        c0_x_39_reg_2059_pp0_iter10_reg <= c0_x_39_reg_2059_pp0_iter9_reg;
        c0_x_39_reg_2059_pp0_iter11_reg <= c0_x_39_reg_2059_pp0_iter10_reg;
        c0_x_39_reg_2059_pp0_iter9_reg <= c0_x_39_reg_2059;
        c0_y_35_reg_1823_pp0_iter3_reg <= c0_y_35_reg_1823;
        c0_y_35_reg_1823_pp0_iter4_reg <= c0_y_35_reg_1823_pp0_iter3_reg;
        c0_y_35_reg_1823_pp0_iter5_reg <= c0_y_35_reg_1823_pp0_iter4_reg;
        c0_y_35_reg_1823_pp0_iter6_reg <= c0_y_35_reg_1823_pp0_iter5_reg;
        c0_y_39_reg_2065_pp0_iter10_reg <= c0_y_39_reg_2065_pp0_iter9_reg;
        c0_y_39_reg_2065_pp0_iter11_reg <= c0_y_39_reg_2065_pp0_iter10_reg;
        c0_y_39_reg_2065_pp0_iter9_reg <= c0_y_39_reg_2065;
        sub17_reg_1911_pp0_iter5_reg <= sub17_reg_1911;
        sub17_reg_1911_pp0_iter6_reg <= sub17_reg_1911_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_37_reg_1951 <= grp_fu_732_p_dout0;
        c0_y_37_reg_1957 <= grp_fu_736_p_dout0;
        mul7_reg_1963 <= grp_fu_740_p_dout0;
        mul8_reg_1969 <= grp_fu_769_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_39_reg_2059 <= grp_fu_724_p_dout0;
        c0_x_66_reg_2049 <= grp_fu_716_p_dout0;
        c0_y_39_reg_2065 <= grp_fu_728_p_dout0;
        c0_y_66_reg_2054 <= grp_fu_720_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c0_x_61_reg_1707 <= c0_x_61_fu_907_p3;
        c0_x_62_reg_1713 <= c0_x_62_fu_915_p3;
        c0_x_63_reg_1718 <= c0_x_63_fu_923_p3;
        c0_x_reg_1701 <= c0_x_fu_899_p3;
        c0_y_61_reg_1661 <= c0_y_61_fu_843_p3;
        c0_y_62_reg_1667 <= c0_y_62_fu_851_p3;
        c0_y_63_reg_1672 <= c0_y_63_fu_859_p3;
        c0_y_reg_1655 <= c0_y_fu_835_p3;
        select_ln371_reg_1678 <= select_ln371_fu_867_p3;
        select_ln372_reg_1684 <= select_ln372_fu_875_p3;
        select_ln373_reg_1690 <= select_ln373_fu_883_p3;
        select_ln374_reg_1695 <= select_ln374_fu_891_p3;
        select_ln380_reg_1724 <= select_ln380_fu_931_p3;
        select_ln381_reg_1730 <= select_ln381_fu_939_p3;
        select_ln382_reg_1736 <= select_ln382_fu_947_p3;
        select_ln383_reg_1741 <= select_ln383_fu_955_p3;
        sub12_reg_1777_pp0_iter3_reg <= sub12_reg_1777;
        sub12_reg_1777_pp0_iter4_reg <= sub12_reg_1777_pp0_iter3_reg;
        tmp_16_reg_1893_pp0_iter5_reg <= tmp_16_reg_1893;
        tmp_16_reg_1893_pp0_iter6_reg <= tmp_16_reg_1893_pp0_iter5_reg;
        tmp_1_11_reg_1771_pp0_iter3_reg <= tmp_1_11_reg_1771;
        tmp_1_11_reg_1771_pp0_iter4_reg <= tmp_1_11_reg_1771_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_65_reg_1899 <= grp_fu_696_p_dout0;
        c0_y_65_reg_1905 <= grp_fu_700_p_dout0;
        sub17_reg_1911 <= grp_fu_704_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul10_reg_1980 <= grp_fu_769_p_dout0;
        mul9_reg_1975 <= grp_fu_740_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul11_reg_2083 <= grp_fu_732_p_dout0;
        mul12_reg_2088 <= grp_fu_736_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub18_reg_2071 <= grp_fu_696_p_dout0;
        sub19_reg_2077 <= grp_fu_700_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub20_reg_1997 <= grp_fu_688_p_dout0;
        sub21_reg_2002 <= grp_fu_692_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_2143 <= grp_fu_716_p_dout0;
        sub26_reg_2149 <= grp_fu_720_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub29_reg_2176 <= grp_fu_716_p_dout0;
        sub30_reg_2181 <= grp_fu_720_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln365_reg_1491 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_1491_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to12 = 1'b1;
    end else begin
        ap_idle_pp0_0to12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to14 = 1'b1;
    end else begin
        ap_idle_pp0_1to14 = 1'b0;
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
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_688_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_688_opcode = 2'd0;
    end else begin
        grp_fu_688_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_688_p0 = c0_x_65_reg_1899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_688_p0 = c0_x_64_reg_1805;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_688_p0 = c0_x_reg_1701;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_688_p0 = c0_x_61_reg_1707;
    end else begin
        grp_fu_688_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_688_p1 = add17_reg_1939;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_688_p1 = add_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_688_p1 = select_ln380_reg_1724;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_688_p1 = select_ln381_reg_1730;
    end else begin
        grp_fu_688_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_692_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_692_opcode = 2'd0;
    end else begin
        grp_fu_692_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_692_p0 = c0_y_65_reg_1905;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_692_p0 = c0_y_64_reg_1811;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_692_p0 = c0_y_reg_1655;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_692_p0 = c0_y_61_reg_1661;
    end else begin
        grp_fu_692_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_692_p1 = add18_reg_1945;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_692_p1 = add11_reg_1835;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_692_p1 = select_ln371_reg_1678;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_692_p1 = select_ln372_reg_1684;
    end else begin
        grp_fu_692_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_696_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_696_opcode = 2'd0;
    end else begin
        grp_fu_696_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_696_p0 = c0_x_37_reg_1951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_696_p0 = c0_x_36_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_696_p0 = c0_x_reg_1701;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_696_p0 = c0_x_61_reg_1707;
    end else begin
        grp_fu_696_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_696_p1 = mul7_reg_1963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_696_p1 = add12_reg_1783;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_696_p1 = select_ln380_reg_1724;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_696_p1 = select_ln381_reg_1730;
    end else begin
        grp_fu_696_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_700_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_700_opcode = 2'd0;
    end else begin
        grp_fu_700_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_700_p0 = c0_y_37_reg_1957;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_700_p0 = c0_y_36_reg_1753;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_700_p0 = c0_y_reg_1655;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_700_p0 = c0_y_61_reg_1661;
    end else begin
        grp_fu_700_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_700_p1 = mul8_reg_1969;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_700_p1 = add13_reg_1789;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_700_p1 = select_ln371_reg_1678;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_700_p1 = select_ln372_reg_1684;
    end else begin
        grp_fu_700_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_704_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_704_opcode = 2'd0;
    end else begin
        grp_fu_704_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_704_p0 = c0_x_37_reg_1951;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_704_p0 = c0_x_65_reg_1899;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_704_p0 = c0_x_62_reg_1713;
    end else begin
        grp_fu_704_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_704_p1 = mul7_reg_1963;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_704_p1 = add17_reg_1939;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_704_p1 = select_ln382_reg_1736;
    end else begin
        grp_fu_704_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_708_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_708_opcode = 2'd0;
    end else begin
        grp_fu_708_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_708_p0 = c0_y_37_reg_1957;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_708_p0 = c0_y_65_reg_1905;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_708_p0 = c0_y_62_reg_1667;
    end else begin
        grp_fu_708_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_708_p1 = mul8_reg_1969;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_708_p1 = add18_reg_1945;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_708_p1 = select_ln373_reg_1690;
    end else begin
        grp_fu_708_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_712_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_712_opcode = 2'd0;
    end else begin
        grp_fu_712_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_712_p0 = c0_y_38_reg_1933_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_712_p0 = mul9_reg_1975;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_712_p0 = c0_x_64_reg_1805;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_712_p0 = c0_x_63_reg_1718;
    end else begin
        grp_fu_712_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_712_p1 = sub19_reg_2077;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_712_p1 = bitcast_ln386_13_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_712_p1 = add_reg_1829;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_712_p1 = select_ln383_reg_1741;
    end else begin
        grp_fu_712_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_716_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_716_opcode = 2'd0;
    end else begin
        grp_fu_716_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_716_p0 = c0_x_38_reg_1927_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_716_p0 = bitcast_ln386_15_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_716_p0 = c0_y_64_reg_1811;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_716_p0 = c0_y_63_reg_1672;
    end else begin
        grp_fu_716_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_716_p1 = sub18_reg_2071;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_716_p1 = mul10_reg_1980;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_716_p1 = add11_reg_1835;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_716_p1 = select_ln374_reg_1695;
    end else begin
        grp_fu_716_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_720_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_720_opcode = 2'd0;
    end else begin
        grp_fu_720_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_720_p0 = c0_y_38_reg_1933_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_720_p0 = c0_x_38_reg_1927_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_720_p0 = c0_y_36_reg_1753;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_720_p0 = c0_x_63_reg_1718;
    end else begin
        grp_fu_720_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_720_p1 = sub19_reg_2077;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_720_p1 = sub18_reg_2071;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_720_p1 = add13_reg_1789;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_720_p1 = select_ln383_reg_1741;
    end else begin
        grp_fu_720_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1491 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_724_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_724_opcode = 2'd0;
    end else begin
        grp_fu_724_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_724_p0 = c0_x_66_reg_2049;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_724_p0 = mul_reg_1873;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_724_p0 = c0_y_63_reg_1672;
    end else begin
        grp_fu_724_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_724_p1 = add23_reg_2027_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_724_p1 = add23_reg_2027;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_724_p1 = bitcast_ln386_5_fu_1140_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_724_p1 = select_ln374_reg_1695;
    end else begin
        grp_fu_724_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_728_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_728_opcode = 2'd0;
    end else begin
        grp_fu_728_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_728_p0 = c0_y_66_reg_2054;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_728_p0 = bitcast_ln386_7_fu_1174_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_728_p0 = tmp_1_reg_1759;
    end else begin
        grp_fu_728_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_728_p1 = add24_reg_2032_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_728_p1 = add24_reg_2032;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_728_p1 = mul6_reg_1878;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_728_p1 = bitcast_ln386_1_fu_1002_p1;
    end else begin
        grp_fu_728_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_732_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_732_opcode = 2'd0;
    end else begin
        grp_fu_732_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_732_p0 = c0_x_39_reg_2059_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_732_p0 = mul11_reg_2083;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_732_p0 = c0_x_35_reg_1817_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_732_p0 = bitcast_ln386_3_fu_1036_p1;
    end else begin
        grp_fu_732_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_732_p1 = sub25_reg_2143;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_732_p1 = bitcast_ln386_17_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_732_p1 = sub15_reg_1985;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_732_p1 = sub_reg_1765;
    end else begin
        grp_fu_732_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_736_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_736_opcode = 2'd0;
    end else begin
        grp_fu_736_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_736_p0 = c0_y_39_reg_2065_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_736_p0 = bitcast_ln386_19_fu_1310_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_736_p0 = c0_y_35_reg_1823_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_736_p0 = bitcast_ln386_9_fu_1070_p1;
    end else begin
        grp_fu_736_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_736_p1 = sub26_reg_2149;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_736_p1 = mul12_reg_2088;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_736_p1 = add15_reg_1991;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_736_p1 = bitcast_ln386_11_fu_1105_p1;
    end else begin
        grp_fu_736_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_740_opcode = 2'd0;
    end else begin
        grp_fu_740_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p0 = c0_x_39_reg_2059_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_p0 = c0_x_35_reg_1817_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_740_p0 = bitcast_ln386_9_fu_1070_p1;
    end else begin
        grp_fu_740_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_740_p1 = sub25_reg_2143;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_740_p1 = sub15_reg_1985;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_740_p1 = bitcast_ln386_11_fu_1105_p1;
    end else begin
        grp_fu_740_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_744_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_744_opcode = 2'd0;
    end else begin
        grp_fu_744_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_744_p0 = c0_y_39_reg_2065_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_744_p0 = c0_y_35_reg_1823_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_744_p0 = c0_x_36_reg_1747;
    end else begin
        grp_fu_744_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_744_p1 = sub26_reg_2149;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_744_p1 = add15_reg_1991;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_744_p1 = add12_reg_1783;
    end else begin
        grp_fu_744_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_748_p0 = tmp_17_reg_2037;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_748_p0 = sub14_reg_1863;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_748_p0 = tmp_1_11_reg_1771;
    end else begin
        grp_fu_748_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_748_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_748_p1 = 64'd0;
    end else begin
        grp_fu_748_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_753_p0 = sub24_reg_2043;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_753_p0 = add14_reg_1868;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_753_p0 = sub12_reg_1777;
    end else begin
        grp_fu_753_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_753_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_753_p1 = 64'd0;
    end else begin
        grp_fu_753_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_760_p0 = tmp_16_reg_1893;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_760_p0 = sub16_reg_1883;
        end else begin
            grp_fu_760_p0 = 'bx;
        end
    end else begin
        grp_fu_760_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_760_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_760_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_760_p1 = 'bx;
        end
    end else begin
        grp_fu_760_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_765_p0 = sub17_reg_1911;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_765_p0 = add16_reg_1888;
        end else begin
            grp_fu_765_p0 = 'bx;
        end
    end else begin
        grp_fu_765_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_765_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_765_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_765_p1 = 'bx;
        end
    end else begin
        grp_fu_765_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_1455_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_1373_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_1343_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_1402_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_1361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_1326_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d0_local = bitcast_ln396_fu_1461_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_1421_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_1379_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_1349_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_1448_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_1408_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1366_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_1332_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address0_local = zext_ln396_fu_1455_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_1373_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_1343_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_1402_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_1361_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_1326_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d0_local = bitcast_ln405_fu_1469_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_1429_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_1387_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_1357_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_1465_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_1425_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1383_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_1353_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to14 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
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
assign DATA_x_10_address0 = zext_ln367_fu_796_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_796_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_796_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_796_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_796_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_796_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_796_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_796_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_796_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_796_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_796_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_796_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_796_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_796_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_796_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_796_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_10_address0 = zext_ln367_fu_796_p1;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_11_address0 = zext_ln367_fu_796_p1;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_12_address0 = zext_ln367_fu_796_p1;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_13_address0 = zext_ln367_fu_796_p1;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_14_address0 = zext_ln367_fu_796_p1;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_15_address0 = zext_ln367_fu_796_p1;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_1_address0 = zext_ln367_fu_796_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln367_fu_796_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln367_fu_796_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln367_fu_796_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln367_fu_796_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln367_fu_796_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln367_fu_796_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_8_address0 = zext_ln367_fu_796_p1;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_9_address0 = zext_ln367_fu_796_p1;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_address0 = zext_ln367_fu_796_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_963_p2 = (tid_5_reg_1480 + 7'd1);
assign add_ln394_fu_1436_p2 = ($signed(zext_ln365_1_fu_1433_p1) + $signed(9'd320));
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
assign bit_sel40_fu_1010_p3 = bitcast_ln386_2_fu_1007_p1[64'd63];
assign bit_sel41_fu_1114_p3 = bitcast_ln386_4_fu_1111_p1[64'd63];
assign bit_sel42_fu_1148_p3 = bitcast_ln386_6_fu_1145_p1[64'd63];
assign bit_sel43_fu_1044_p3 = bitcast_ln386_8_fu_1041_p1[64'd63];
assign bit_sel44_fu_1079_p3 = bitcast_ln386_10_fu_1076_p1[64'd63];
assign bit_sel45_fu_1182_p3 = bitcast_ln386_12_fu_1179_p1[64'd63];
assign bit_sel46_fu_1216_p3 = bitcast_ln386_14_fu_1213_p1[64'd63];
assign bit_sel47_fu_1250_p3 = bitcast_ln386_16_fu_1247_p1[64'd63];
assign bit_sel48_fu_1284_p3 = bitcast_ln386_18_fu_1281_p1[64'd63];
assign bit_sel_fu_976_p3 = bitcast_ln386_fu_973_p1[64'd63];
assign bitcast_ln386_10_fu_1076_p1 = sub13_reg_1800;
assign bitcast_ln386_11_fu_1105_p1 = xor_ln386_5_fu_1097_p3;
assign bitcast_ln386_12_fu_1179_p1 = sub17_reg_1911_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1208_p1 = xor_ln386_6_fu_1200_p3;
assign bitcast_ln386_14_fu_1213_p1 = tmp_16_reg_1893_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1242_p1 = xor_ln386_7_fu_1234_p3;
assign bitcast_ln386_16_fu_1247_p1 = sub24_reg_2043_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1276_p1 = xor_ln386_8_fu_1268_p3;
assign bitcast_ln386_18_fu_1281_p1 = tmp_17_reg_2037_pp0_iter9_reg;
assign bitcast_ln386_19_fu_1310_p1 = xor_ln386_9_fu_1302_p3;
assign bitcast_ln386_1_fu_1002_p1 = xor_ln3_fu_994_p3;
assign bitcast_ln386_2_fu_1007_p1 = tmp_1_reg_1759;
assign bitcast_ln386_3_fu_1036_p1 = xor_ln386_1_fu_1028_p3;
assign bitcast_ln386_4_fu_1111_p1 = sub12_reg_1777_pp0_iter4_reg;
assign bitcast_ln386_5_fu_1140_p1 = xor_ln386_2_fu_1132_p3;
assign bitcast_ln386_6_fu_1145_p1 = tmp_1_11_reg_1771_pp0_iter4_reg;
assign bitcast_ln386_7_fu_1174_p1 = xor_ln386_3_fu_1166_p3;
assign bitcast_ln386_8_fu_1041_p1 = tmp_1_12_reg_1795;
assign bitcast_ln386_9_fu_1070_p1 = xor_ln386_4_fu_1062_p3;
assign bitcast_ln386_fu_973_p1 = sub_reg_1765;
assign bitcast_ln389_fu_1366_p1 = add19_reg_2017_pp0_iter13_reg;
assign bitcast_ln390_fu_1332_p1 = add25_reg_2108_pp0_iter12_reg;
assign bitcast_ln391_fu_1349_p1 = add21_reg_2103_pp0_iter12_reg;
assign bitcast_ln392_fu_1379_p1 = add27_reg_2155;
assign bitcast_ln393_fu_1408_p1 = sub20_reg_1997_pp0_iter13_reg;
assign bitcast_ln394_fu_1448_p1 = sub27_reg_2133_pp0_iter14_reg;
assign bitcast_ln395_fu_1421_p1 = sub22_reg_2123_pp0_iter14_reg;
assign bitcast_ln396_fu_1461_p1 = sub29_reg_2176;
assign bitcast_ln398_fu_1383_p1 = add20_reg_2022_pp0_iter13_reg;
assign bitcast_ln399_fu_1353_p1 = add26_reg_2113_pp0_iter12_reg;
assign bitcast_ln400_fu_1357_p1 = add22_reg_2118_pp0_iter13_reg;
assign bitcast_ln401_fu_1387_p1 = add28_reg_2160;
assign bitcast_ln402_fu_1425_p1 = sub21_reg_2002_pp0_iter13_reg;
assign bitcast_ln403_fu_1465_p1 = sub28_reg_2138_pp0_iter14_reg;
assign bitcast_ln404_fu_1429_p1 = sub23_reg_2128_pp0_iter14_reg;
assign bitcast_ln405_fu_1469_p1 = sub30_reg_2181;
assign c0_x_61_fu_907_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_x_9_q0 : DATA_x_1_q0);
assign c0_x_62_fu_915_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_x_10_q0 : DATA_x_2_q0);
assign c0_x_63_fu_923_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_x_11_q0 : DATA_x_3_q0);
assign c0_x_fu_899_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_x_8_q0 : DATA_x_q0);
assign c0_y_61_fu_843_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_y_9_q0 : DATA_y_1_q0);
assign c0_y_62_fu_851_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_y_10_q0 : DATA_y_2_q0);
assign c0_y_63_fu_859_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_y_11_q0 : DATA_y_3_q0);
assign c0_y_fu_835_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_y_8_q0 : DATA_y_q0);
assign grp_fu_672_p_ce = 1'b1;
assign grp_fu_672_p_din0 = grp_fu_688_p0;
assign grp_fu_672_p_din1 = grp_fu_688_p1;
assign grp_fu_672_p_opcode = grp_fu_688_opcode;
assign grp_fu_676_p_ce = 1'b1;
assign grp_fu_676_p_din0 = grp_fu_692_p0;
assign grp_fu_676_p_din1 = grp_fu_692_p1;
assign grp_fu_676_p_opcode = grp_fu_692_opcode;
assign grp_fu_680_p_ce = 1'b1;
assign grp_fu_680_p_din0 = grp_fu_696_p0;
assign grp_fu_680_p_din1 = grp_fu_696_p1;
assign grp_fu_680_p_opcode = grp_fu_696_opcode;
assign grp_fu_684_p_ce = 1'b1;
assign grp_fu_684_p_din0 = grp_fu_700_p0;
assign grp_fu_684_p_din1 = grp_fu_700_p1;
assign grp_fu_684_p_opcode = grp_fu_700_opcode;
assign grp_fu_688_p_ce = 1'b1;
assign grp_fu_688_p_din0 = grp_fu_704_p0;
assign grp_fu_688_p_din1 = grp_fu_704_p1;
assign grp_fu_688_p_opcode = grp_fu_704_opcode;
assign grp_fu_692_p_ce = 1'b1;
assign grp_fu_692_p_din0 = grp_fu_708_p0;
assign grp_fu_692_p_din1 = grp_fu_708_p1;
assign grp_fu_692_p_opcode = grp_fu_708_opcode;
assign grp_fu_696_p_ce = 1'b1;
assign grp_fu_696_p_din0 = grp_fu_712_p0;
assign grp_fu_696_p_din1 = grp_fu_712_p1;
assign grp_fu_696_p_opcode = grp_fu_712_opcode;
assign grp_fu_700_p_ce = 1'b1;
assign grp_fu_700_p_din0 = grp_fu_716_p0;
assign grp_fu_700_p_din1 = grp_fu_716_p1;
assign grp_fu_700_p_opcode = grp_fu_716_opcode;
assign grp_fu_704_p_ce = 1'b1;
assign grp_fu_704_p_din0 = grp_fu_720_p0;
assign grp_fu_704_p_din1 = grp_fu_720_p1;
assign grp_fu_704_p_opcode = grp_fu_720_opcode;
assign grp_fu_708_p_ce = 1'b1;
assign grp_fu_708_p_din0 = grp_fu_724_p0;
assign grp_fu_708_p_din1 = grp_fu_724_p1;
assign grp_fu_708_p_opcode = grp_fu_724_opcode;
assign grp_fu_712_p_ce = 1'b1;
assign grp_fu_712_p_din0 = grp_fu_728_p0;
assign grp_fu_712_p_din1 = grp_fu_728_p1;
assign grp_fu_712_p_opcode = grp_fu_728_opcode;
assign grp_fu_716_p_ce = 1'b1;
assign grp_fu_716_p_din0 = grp_fu_732_p0;
assign grp_fu_716_p_din1 = grp_fu_732_p1;
assign grp_fu_716_p_opcode = grp_fu_732_opcode;
assign grp_fu_720_p_ce = 1'b1;
assign grp_fu_720_p_din0 = grp_fu_736_p0;
assign grp_fu_720_p_din1 = grp_fu_736_p1;
assign grp_fu_720_p_opcode = grp_fu_736_opcode;
assign grp_fu_724_p_ce = 1'b1;
assign grp_fu_724_p_din0 = grp_fu_740_p0;
assign grp_fu_724_p_din1 = grp_fu_740_p1;
assign grp_fu_724_p_opcode = grp_fu_740_opcode;
assign grp_fu_728_p_ce = 1'b1;
assign grp_fu_728_p_din0 = grp_fu_744_p0;
assign grp_fu_728_p_din1 = grp_fu_744_p1;
assign grp_fu_728_p_opcode = grp_fu_744_opcode;
assign grp_fu_732_p_ce = 1'b1;
assign grp_fu_732_p_din0 = grp_fu_748_p0;
assign grp_fu_732_p_din1 = grp_fu_748_p1;
assign grp_fu_736_p_ce = 1'b1;
assign grp_fu_736_p_din0 = grp_fu_753_p0;
assign grp_fu_736_p_din1 = grp_fu_753_p1;
assign grp_fu_740_p_ce = 1'b1;
assign grp_fu_740_p_din0 = grp_fu_760_p0;
assign grp_fu_740_p_din1 = grp_fu_760_p1;
assign grp_fu_769_p_ce = 1'b1;
assign grp_fu_769_p_din0 = grp_fu_765_p0;
assign grp_fu_769_p_din1 = grp_fu_765_p1;
assign icmp_ln365_fu_780_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln_fu_786_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign select_ln371_fu_867_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_y_12_q0 : DATA_y_4_q0);
assign select_ln372_fu_875_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_y_13_q0 : DATA_y_5_q0);
assign select_ln373_fu_883_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_y_14_q0 : DATA_y_6_q0);
assign select_ln374_fu_891_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_y_15_q0 : DATA_y_7_q0);
assign select_ln380_fu_931_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_x_12_q0 : DATA_x_4_q0);
assign select_ln381_fu_939_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_x_13_q0 : DATA_x_5_q0);
assign select_ln382_fu_947_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_x_14_q0 : DATA_x_6_q0);
assign select_ln383_fu_955_p3 = ((trunc_ln365_fu_832_p1[0:0] == 1'b1) ? DATA_x_15_q0 : DATA_x_7_q0);
assign sext_ln392_fu_1370_p1 = zext_ln390_cast_reg_2165;
assign sext_ln395_fu_1412_p1 = zext_ln391_cast_reg_2171;
assign sext_ln396_fu_1452_p1 = zext_ln390_cast_reg_2165;
assign trunc_ln365_fu_832_p1 = tid_5_reg_1480[0:0];
assign trunc_ln386_1_fu_1024_p1 = bitcast_ln386_2_fu_1007_p1[62:0];
assign trunc_ln386_2_fu_1128_p1 = bitcast_ln386_4_fu_1111_p1[62:0];
assign trunc_ln386_3_fu_1162_p1 = bitcast_ln386_6_fu_1145_p1[62:0];
assign trunc_ln386_4_fu_1058_p1 = bitcast_ln386_8_fu_1041_p1[62:0];
assign trunc_ln386_5_fu_1093_p1 = bitcast_ln386_10_fu_1076_p1[62:0];
assign trunc_ln386_6_fu_1196_p1 = bitcast_ln386_12_fu_1179_p1[62:0];
assign trunc_ln386_7_fu_1230_p1 = bitcast_ln386_14_fu_1213_p1[62:0];
assign trunc_ln386_8_fu_1264_p1 = bitcast_ln386_16_fu_1247_p1[62:0];
assign trunc_ln386_9_fu_1298_p1 = bitcast_ln386_18_fu_1281_p1[62:0];
assign trunc_ln386_fu_990_p1 = bitcast_ln386_fu_973_p1[62:0];
assign trunc_ln390_fu_1315_p1 = tid_5_reg_1480_pp0_iter13_reg[5:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_x_d0 = work_x_d0_local;
assign work_x_d1 = work_x_d1_local;
assign work_x_we0 = work_x_we0_local;
assign work_x_we1 = work_x_we1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign work_y_d0 = work_y_d0_local;
assign work_y_d1 = work_y_d1_local;
assign work_y_we0 = work_y_we0_local;
assign work_y_we1 = work_y_we1_local;
assign xor_ln386_10_fu_984_p2 = (bit_sel_fu_976_p3 ^ 1'd1);
assign xor_ln386_11_fu_1122_p2 = (bit_sel41_fu_1114_p3 ^ 1'd1);
assign xor_ln386_12_fu_1156_p2 = (bit_sel42_fu_1148_p3 ^ 1'd1);
assign xor_ln386_13_fu_1052_p2 = (bit_sel43_fu_1044_p3 ^ 1'd1);
assign xor_ln386_14_fu_1087_p2 = (bit_sel44_fu_1079_p3 ^ 1'd1);
assign xor_ln386_15_fu_1190_p2 = (bit_sel45_fu_1182_p3 ^ 1'd1);
assign xor_ln386_16_fu_1224_p2 = (bit_sel46_fu_1216_p3 ^ 1'd1);
assign xor_ln386_17_fu_1258_p2 = (bit_sel47_fu_1250_p3 ^ 1'd1);
assign xor_ln386_18_fu_1292_p2 = (bit_sel48_fu_1284_p3 ^ 1'd1);
assign xor_ln386_1_fu_1028_p3 = {{xor_ln386_fu_1018_p2}, {trunc_ln386_1_fu_1024_p1}};
assign xor_ln386_2_fu_1132_p3 = {{xor_ln386_11_fu_1122_p2}, {trunc_ln386_2_fu_1128_p1}};
assign xor_ln386_3_fu_1166_p3 = {{xor_ln386_12_fu_1156_p2}, {trunc_ln386_3_fu_1162_p1}};
assign xor_ln386_4_fu_1062_p3 = {{xor_ln386_13_fu_1052_p2}, {trunc_ln386_4_fu_1058_p1}};
assign xor_ln386_5_fu_1097_p3 = {{xor_ln386_14_fu_1087_p2}, {trunc_ln386_5_fu_1093_p1}};
assign xor_ln386_6_fu_1200_p3 = {{xor_ln386_15_fu_1190_p2}, {trunc_ln386_6_fu_1196_p1}};
assign xor_ln386_7_fu_1234_p3 = {{xor_ln386_16_fu_1224_p2}, {trunc_ln386_7_fu_1230_p1}};
assign xor_ln386_8_fu_1268_p3 = {{xor_ln386_17_fu_1258_p2}, {trunc_ln386_8_fu_1264_p1}};
assign xor_ln386_9_fu_1302_p3 = {{xor_ln386_18_fu_1292_p2}, {trunc_ln386_9_fu_1298_p1}};
assign xor_ln386_fu_1018_p2 = (bit_sel40_fu_1010_p3 ^ 1'd1);
assign xor_ln3_fu_994_p3 = {{xor_ln386_10_fu_984_p2}, {trunc_ln386_fu_990_p1}};
assign zext_ln365_1_fu_1433_p1 = tid_5_reg_1480_pp0_iter14_reg;
assign zext_ln365_fu_1361_p1 = tid_5_reg_1480_pp0_iter13_reg;
assign zext_ln367_fu_796_p1 = lshr_ln_fu_786_p4;
assign zext_ln390_cast_fu_1318_p3 = {{1'd1}, {trunc_ln390_fu_1315_p1}};
assign zext_ln390_fu_1326_p1 = $unsigned(zext_ln390_cast_fu_1318_p3);
assign zext_ln391_cast_fu_1336_p3 = {{1'd1}, {tid_5_reg_1480_pp0_iter13_reg}};
assign zext_ln391_fu_1343_p1 = $unsigned(zext_ln391_cast_fu_1336_p3);
assign zext_ln392_fu_1373_p1 = $unsigned(sext_ln392_fu_1370_p1);
assign zext_ln393_1_fu_1402_p1 = zext_ln393_cast_fu_1394_p3;
assign zext_ln393_cast_fu_1394_p3 = {{1'd1}, {zext_ln393_fu_1391_p1}};
assign zext_ln393_fu_1391_p1 = tid_5_reg_1480_pp0_iter14_reg;
assign zext_ln394_fu_1442_p1 = add_ln394_fu_1436_p2;
assign zext_ln395_fu_1415_p1 = $unsigned(sext_ln395_fu_1412_p1);
assign zext_ln396_fu_1455_p1 = $unsigned(sext_ln396_fu_1452_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_2165[6] <= 1'b1;
    zext_ln391_cast_reg_2171[7] <= 1'b1;
end
endmodule 