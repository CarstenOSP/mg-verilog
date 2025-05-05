module bicg (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v137_0_address0,v137_0_ce0,v137_0_q0,v137_0_address1,v137_0_ce1,v137_0_q1,v137_1_address0,v137_1_ce0,v137_1_q0,v137_1_address1,v137_1_ce1,v137_1_q1,v137_2_address0,v137_2_ce0,v137_2_q0,v137_2_address1,v137_2_ce1,v137_2_q1,v137_3_address0,v137_3_ce0,v137_3_q0,v137_3_address1,v137_3_ce1,v137_3_q1,v138_0_address0,v138_0_ce0,v138_0_q0,v138_0_address1,v138_0_ce1,v138_0_q1,v138_1_address0,v138_1_ce0,v138_1_q0,v138_1_address1,v138_1_ce1,v138_1_q1,v138_2_address0,v138_2_ce0,v138_2_q0,v138_2_address1,v138_2_ce1,v138_2_q1,v138_3_address0,v138_3_ce0,v138_3_q0,v138_3_address1,v138_3_ce1,v138_3_q1,v138_4_address0,v138_4_ce0,v138_4_q0,v138_4_address1,v138_4_ce1,v138_4_q1,v138_5_address0,v138_5_ce0,v138_5_q0,v138_5_address1,v138_5_ce1,v138_5_q1,v138_6_address0,v138_6_ce0,v138_6_q0,v138_6_address1,v138_6_ce1,v138_6_q1,v138_7_address0,v138_7_ce0,v138_7_q0,v138_7_address1,v138_7_ce1,v138_7_q1,v138_8_address0,v138_8_ce0,v138_8_q0,v138_8_address1,v138_8_ce1,v138_8_q1,v138_9_address0,v138_9_ce0,v138_9_q0,v138_9_address1,v138_9_ce1,v138_9_q1,v138_10_address0,v138_10_ce0,v138_10_q0,v138_10_address1,v138_10_ce1,v138_10_q1,v138_11_address0,v138_11_ce0,v138_11_q0,v138_11_address1,v138_11_ce1,v138_11_q1,v138_12_address0,v138_12_ce0,v138_12_q0,v138_12_address1,v138_12_ce1,v138_12_q1,v138_13_address0,v138_13_ce0,v138_13_q0,v138_13_address1,v138_13_ce1,v138_13_q1,v138_14_address0,v138_14_ce0,v138_14_q0,v138_14_address1,v138_14_ce1,v138_14_q1,v138_15_address0,v138_15_ce0,v138_15_q0,v138_15_address1,v138_15_ce1,v138_15_q1,v139_address0,v139_ce0,v139_q0,v140_address0,v140_ce0,v140_q0,v141_address0,v141_ce0,v141_we0,v141_d0,v141_address1,v141_ce1,v141_we1,v141_d1,v142_address0,v142_ce0,v142_we0,v142_d0,v142_address1,v142_ce1,v142_we1,v142_d1); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_pp0_stage0 = 7'd4;
parameter    ap_ST_fsm_pp0_stage1 = 7'd8;
parameter    ap_ST_fsm_pp0_stage2 = 7'd16;
parameter    ap_ST_fsm_pp0_stage3 = 7'd32;
parameter    ap_ST_fsm_state8 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
output  [7:0] v138_0_address0;
output   v138_0_ce0;
input  [31:0] v138_0_q0;
output  [7:0] v138_0_address1;
output   v138_0_ce1;
input  [31:0] v138_0_q1;
output  [7:0] v138_1_address0;
output   v138_1_ce0;
input  [31:0] v138_1_q0;
output  [7:0] v138_1_address1;
output   v138_1_ce1;
input  [31:0] v138_1_q1;
output  [7:0] v138_2_address0;
output   v138_2_ce0;
input  [31:0] v138_2_q0;
output  [7:0] v138_2_address1;
output   v138_2_ce1;
input  [31:0] v138_2_q1;
output  [7:0] v138_3_address0;
output   v138_3_ce0;
input  [31:0] v138_3_q0;
output  [7:0] v138_3_address1;
output   v138_3_ce1;
input  [31:0] v138_3_q1;
output  [7:0] v138_4_address0;
output   v138_4_ce0;
input  [31:0] v138_4_q0;
output  [7:0] v138_4_address1;
output   v138_4_ce1;
input  [31:0] v138_4_q1;
output  [7:0] v138_5_address0;
output   v138_5_ce0;
input  [31:0] v138_5_q0;
output  [7:0] v138_5_address1;
output   v138_5_ce1;
input  [31:0] v138_5_q1;
output  [7:0] v138_6_address0;
output   v138_6_ce0;
input  [31:0] v138_6_q0;
output  [7:0] v138_6_address1;
output   v138_6_ce1;
input  [31:0] v138_6_q1;
output  [7:0] v138_7_address0;
output   v138_7_ce0;
input  [31:0] v138_7_q0;
output  [7:0] v138_7_address1;
output   v138_7_ce1;
input  [31:0] v138_7_q1;
output  [7:0] v138_8_address0;
output   v138_8_ce0;
input  [31:0] v138_8_q0;
output  [7:0] v138_8_address1;
output   v138_8_ce1;
input  [31:0] v138_8_q1;
output  [7:0] v138_9_address0;
output   v138_9_ce0;
input  [31:0] v138_9_q0;
output  [7:0] v138_9_address1;
output   v138_9_ce1;
input  [31:0] v138_9_q1;
output  [7:0] v138_10_address0;
output   v138_10_ce0;
input  [31:0] v138_10_q0;
output  [7:0] v138_10_address1;
output   v138_10_ce1;
input  [31:0] v138_10_q1;
output  [7:0] v138_11_address0;
output   v138_11_ce0;
input  [31:0] v138_11_q0;
output  [7:0] v138_11_address1;
output   v138_11_ce1;
input  [31:0] v138_11_q1;
output  [7:0] v138_12_address0;
output   v138_12_ce0;
input  [31:0] v138_12_q0;
output  [7:0] v138_12_address1;
output   v138_12_ce1;
input  [31:0] v138_12_q1;
output  [7:0] v138_13_address0;
output   v138_13_ce0;
input  [31:0] v138_13_q0;
output  [7:0] v138_13_address1;
output   v138_13_ce1;
input  [31:0] v138_13_q1;
output  [7:0] v138_14_address0;
output   v138_14_ce0;
input  [31:0] v138_14_q0;
output  [7:0] v138_14_address1;
output   v138_14_ce1;
input  [31:0] v138_14_q1;
output  [7:0] v138_15_address0;
output   v138_15_ce0;
input  [31:0] v138_15_q0;
output  [7:0] v138_15_address1;
output   v138_15_ce1;
input  [31:0] v138_15_q1;
output  [5:0] v139_address0;
output   v139_ce0;
input  [31:0] v139_q0;
output  [5:0] v140_address0;
output   v140_ce0;
input  [31:0] v140_q0;
output  [5:0] v141_address0;
output   v141_ce0;
output   v141_we0;
output  [31:0] v141_d0;
output  [5:0] v141_address1;
output   v141_ce1;
output   v141_we1;
output  [31:0] v141_d1;
output  [5:0] v142_address0;
output   v142_ce0;
output   v142_we0;
output  [31:0] v142_d0;
output  [5:0] v142_address1;
output   v142_ce1;
output   v142_we1;
output  [31:0] v142_d1;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] reg_712;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_717;
reg   [6:0] v41_load_reg_1108;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln_fu_734_p4;
reg   [4:0] lshr_ln_reg_1113;
wire   [0:0] icmp_ln28_fu_780_p2;
reg   [0:0] icmp_ln28_reg_1128;
wire   [3:0] tmp_s_fu_786_p4;
reg   [3:0] tmp_s_reg_1160;
reg   [2:0] tmp_996_reg_1196;
reg   [0:0] tmp_reg_1206;
reg   [0:0] tmp_1190_reg_1252;
wire   [31:0] v5_2_fu_899_p3;
reg   [31:0] v5_2_reg_1256;
wire   [31:0] v5_3_fu_906_p3;
reg   [31:0] v5_3_reg_1261;
wire   [31:0] v5_4_fu_927_p3;
reg   [31:0] v5_4_reg_1266;
wire   [31:0] v5_5_fu_934_p3;
reg   [31:0] v5_5_reg_1276;
wire   [31:0] v5_6_fu_954_p3;
reg   [31:0] v5_6_reg_1286;
wire   [31:0] v5_7_fu_961_p3;
reg   [31:0] v5_7_reg_1296;
reg   [31:0] v6_6_reg_1306;
reg   [31:0] v6_7_reg_1311;
wire    ap_CS_fsm_state2;
wire    grp_bicg_node2_fu_624_ap_done;
wire    grp_bicg_node1_fu_694_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_subdone;
reg   [1:0] v151_address0;
reg    v151_ce0;
reg    v151_we0;
wire   [31:0] v151_q0;
reg    v151_ce1;
wire   [31:0] v151_q1;
reg   [1:0] v151_1_address0;
reg    v151_1_ce0;
reg    v151_1_we0;
wire   [31:0] v151_1_q0;
reg    v151_1_ce1;
wire   [31:0] v151_1_q1;
reg   [1:0] v151_2_address0;
reg    v151_2_ce0;
reg    v151_2_we0;
wire   [31:0] v151_2_q0;
reg    v151_2_ce1;
wire   [31:0] v151_2_q1;
reg   [1:0] v151_3_address0;
reg    v151_3_ce0;
reg    v151_3_we0;
wire   [31:0] v151_3_q0;
reg    v151_3_ce1;
wire   [31:0] v151_3_q1;
reg   [1:0] v151_4_address0;
reg    v151_4_ce0;
reg    v151_4_we0;
wire   [31:0] v151_4_q0;
reg    v151_4_ce1;
wire   [31:0] v151_4_q1;
reg   [1:0] v151_5_address0;
reg    v151_5_ce0;
reg    v151_5_we0;
wire   [31:0] v151_5_q0;
reg    v151_5_ce1;
wire   [31:0] v151_5_q1;
reg   [1:0] v151_6_address0;
reg    v151_6_ce0;
reg    v151_6_we0;
wire   [31:0] v151_6_q0;
reg    v151_6_ce1;
wire   [31:0] v151_6_q1;
reg   [1:0] v151_7_address0;
reg    v151_7_ce0;
reg    v151_7_we0;
wire   [31:0] v151_7_q0;
reg    v151_7_ce1;
wire   [31:0] v151_7_q1;
reg   [1:0] v151_8_address0;
reg    v151_8_ce0;
reg    v151_8_we0;
wire   [31:0] v151_8_q0;
reg    v151_8_ce1;
wire   [31:0] v151_8_q1;
reg   [1:0] v151_9_address0;
reg    v151_9_ce0;
reg    v151_9_we0;
wire   [31:0] v151_9_q0;
reg    v151_9_ce1;
wire   [31:0] v151_9_q1;
reg   [1:0] v151_10_address0;
reg    v151_10_ce0;
reg    v151_10_we0;
wire   [31:0] v151_10_q0;
reg    v151_10_ce1;
wire   [31:0] v151_10_q1;
reg   [1:0] v151_11_address0;
reg    v151_11_ce0;
reg    v151_11_we0;
wire   [31:0] v151_11_q0;
reg    v151_11_ce1;
wire   [31:0] v151_11_q1;
reg   [1:0] v151_12_address0;
reg    v151_12_ce0;
reg    v151_12_we0;
wire   [31:0] v151_12_q0;
reg    v151_12_ce1;
wire   [31:0] v151_12_q1;
reg   [1:0] v151_13_address0;
reg    v151_13_ce0;
reg    v151_13_we0;
wire   [31:0] v151_13_q0;
reg    v151_13_ce1;
wire   [31:0] v151_13_q1;
reg   [1:0] v151_14_address0;
reg    v151_14_ce0;
reg    v151_14_we0;
wire   [31:0] v151_14_q0;
reg    v151_14_ce1;
wire   [31:0] v151_14_q1;
reg   [1:0] v151_15_address0;
reg    v151_15_ce0;
reg    v151_15_we0;
wire   [31:0] v151_15_q0;
reg    v151_15_ce1;
wire   [31:0] v151_15_q1;
reg   [4:0] v152_address0;
reg    v152_ce0;
reg    v152_we0;
wire   [31:0] v152_q0;
reg   [4:0] v152_address1;
reg    v152_ce1;
reg    v152_we1;
wire   [31:0] v152_q1;
reg   [4:0] v152_1_address0;
reg    v152_1_ce0;
reg    v152_1_we0;
wire   [31:0] v152_1_q0;
reg   [4:0] v152_1_address1;
reg    v152_1_ce1;
reg    v152_1_we1;
wire   [31:0] v152_1_q1;
wire    grp_bicg_node2_fu_624_ap_start;
wire    grp_bicg_node2_fu_624_ap_idle;
wire    grp_bicg_node2_fu_624_ap_ready;
wire   [5:0] grp_bicg_node2_fu_624_v140_address0;
wire    grp_bicg_node2_fu_624_v140_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_0_address0;
wire    grp_bicg_node2_fu_624_v138_0_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_0_address1;
wire    grp_bicg_node2_fu_624_v138_0_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_1_address0;
wire    grp_bicg_node2_fu_624_v138_1_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_1_address1;
wire    grp_bicg_node2_fu_624_v138_1_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_2_address0;
wire    grp_bicg_node2_fu_624_v138_2_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_2_address1;
wire    grp_bicg_node2_fu_624_v138_2_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_3_address0;
wire    grp_bicg_node2_fu_624_v138_3_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_3_address1;
wire    grp_bicg_node2_fu_624_v138_3_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_4_address0;
wire    grp_bicg_node2_fu_624_v138_4_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_4_address1;
wire    grp_bicg_node2_fu_624_v138_4_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_5_address0;
wire    grp_bicg_node2_fu_624_v138_5_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_5_address1;
wire    grp_bicg_node2_fu_624_v138_5_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_6_address0;
wire    grp_bicg_node2_fu_624_v138_6_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_6_address1;
wire    grp_bicg_node2_fu_624_v138_6_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_7_address0;
wire    grp_bicg_node2_fu_624_v138_7_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_7_address1;
wire    grp_bicg_node2_fu_624_v138_7_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_8_address0;
wire    grp_bicg_node2_fu_624_v138_8_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_8_address1;
wire    grp_bicg_node2_fu_624_v138_8_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_9_address0;
wire    grp_bicg_node2_fu_624_v138_9_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_9_address1;
wire    grp_bicg_node2_fu_624_v138_9_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_10_address0;
wire    grp_bicg_node2_fu_624_v138_10_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_10_address1;
wire    grp_bicg_node2_fu_624_v138_10_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_11_address0;
wire    grp_bicg_node2_fu_624_v138_11_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_11_address1;
wire    grp_bicg_node2_fu_624_v138_11_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_12_address0;
wire    grp_bicg_node2_fu_624_v138_12_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_12_address1;
wire    grp_bicg_node2_fu_624_v138_12_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_13_address0;
wire    grp_bicg_node2_fu_624_v138_13_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_13_address1;
wire    grp_bicg_node2_fu_624_v138_13_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_14_address0;
wire    grp_bicg_node2_fu_624_v138_14_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_14_address1;
wire    grp_bicg_node2_fu_624_v138_14_ce1;
wire   [7:0] grp_bicg_node2_fu_624_v138_15_address0;
wire    grp_bicg_node2_fu_624_v138_15_ce0;
wire   [7:0] grp_bicg_node2_fu_624_v138_15_address1;
wire    grp_bicg_node2_fu_624_v138_15_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_0_address0;
wire    grp_bicg_node2_fu_624_v65_0_ce0;
wire    grp_bicg_node2_fu_624_v65_0_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_0_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_0_address1;
wire    grp_bicg_node2_fu_624_v65_0_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_1_address0;
wire    grp_bicg_node2_fu_624_v65_1_ce0;
wire    grp_bicg_node2_fu_624_v65_1_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_1_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_1_address1;
wire    grp_bicg_node2_fu_624_v65_1_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_2_address0;
wire    grp_bicg_node2_fu_624_v65_2_ce0;
wire    grp_bicg_node2_fu_624_v65_2_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_2_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_2_address1;
wire    grp_bicg_node2_fu_624_v65_2_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_3_address0;
wire    grp_bicg_node2_fu_624_v65_3_ce0;
wire    grp_bicg_node2_fu_624_v65_3_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_3_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_3_address1;
wire    grp_bicg_node2_fu_624_v65_3_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_4_address0;
wire    grp_bicg_node2_fu_624_v65_4_ce0;
wire    grp_bicg_node2_fu_624_v65_4_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_4_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_4_address1;
wire    grp_bicg_node2_fu_624_v65_4_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_5_address0;
wire    grp_bicg_node2_fu_624_v65_5_ce0;
wire    grp_bicg_node2_fu_624_v65_5_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_5_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_5_address1;
wire    grp_bicg_node2_fu_624_v65_5_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_6_address0;
wire    grp_bicg_node2_fu_624_v65_6_ce0;
wire    grp_bicg_node2_fu_624_v65_6_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_6_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_6_address1;
wire    grp_bicg_node2_fu_624_v65_6_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_7_address0;
wire    grp_bicg_node2_fu_624_v65_7_ce0;
wire    grp_bicg_node2_fu_624_v65_7_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_7_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_7_address1;
wire    grp_bicg_node2_fu_624_v65_7_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_8_address0;
wire    grp_bicg_node2_fu_624_v65_8_ce0;
wire    grp_bicg_node2_fu_624_v65_8_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_8_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_8_address1;
wire    grp_bicg_node2_fu_624_v65_8_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_9_address0;
wire    grp_bicg_node2_fu_624_v65_9_ce0;
wire    grp_bicg_node2_fu_624_v65_9_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_9_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_9_address1;
wire    grp_bicg_node2_fu_624_v65_9_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_10_address0;
wire    grp_bicg_node2_fu_624_v65_10_ce0;
wire    grp_bicg_node2_fu_624_v65_10_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_10_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_10_address1;
wire    grp_bicg_node2_fu_624_v65_10_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_11_address0;
wire    grp_bicg_node2_fu_624_v65_11_ce0;
wire    grp_bicg_node2_fu_624_v65_11_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_11_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_11_address1;
wire    grp_bicg_node2_fu_624_v65_11_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_12_address0;
wire    grp_bicg_node2_fu_624_v65_12_ce0;
wire    grp_bicg_node2_fu_624_v65_12_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_12_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_12_address1;
wire    grp_bicg_node2_fu_624_v65_12_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_13_address0;
wire    grp_bicg_node2_fu_624_v65_13_ce0;
wire    grp_bicg_node2_fu_624_v65_13_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_13_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_13_address1;
wire    grp_bicg_node2_fu_624_v65_13_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_14_address0;
wire    grp_bicg_node2_fu_624_v65_14_ce0;
wire    grp_bicg_node2_fu_624_v65_14_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_14_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_14_address1;
wire    grp_bicg_node2_fu_624_v65_14_ce1;
wire   [1:0] grp_bicg_node2_fu_624_v65_15_address0;
wire    grp_bicg_node2_fu_624_v65_15_ce0;
wire    grp_bicg_node2_fu_624_v65_15_we0;
wire   [31:0] grp_bicg_node2_fu_624_v65_15_d0;
wire   [1:0] grp_bicg_node2_fu_624_v65_15_address1;
wire    grp_bicg_node2_fu_624_v65_15_ce1;
wire    grp_bicg_node1_fu_694_ap_start;
wire    grp_bicg_node1_fu_694_ap_idle;
wire    grp_bicg_node1_fu_694_ap_ready;
wire   [9:0] grp_bicg_node1_fu_694_v137_0_address0;
wire    grp_bicg_node1_fu_694_v137_0_ce0;
wire   [9:0] grp_bicg_node1_fu_694_v137_0_address1;
wire    grp_bicg_node1_fu_694_v137_0_ce1;
wire   [9:0] grp_bicg_node1_fu_694_v137_1_address0;
wire    grp_bicg_node1_fu_694_v137_1_ce0;
wire   [9:0] grp_bicg_node1_fu_694_v137_1_address1;
wire    grp_bicg_node1_fu_694_v137_1_ce1;
wire   [9:0] grp_bicg_node1_fu_694_v137_2_address0;
wire    grp_bicg_node1_fu_694_v137_2_ce0;
wire   [9:0] grp_bicg_node1_fu_694_v137_2_address1;
wire    grp_bicg_node1_fu_694_v137_2_ce1;
wire   [9:0] grp_bicg_node1_fu_694_v137_3_address0;
wire    grp_bicg_node1_fu_694_v137_3_ce0;
wire   [9:0] grp_bicg_node1_fu_694_v137_3_address1;
wire    grp_bicg_node1_fu_694_v137_3_ce1;
wire   [5:0] grp_bicg_node1_fu_694_v139_address0;
wire    grp_bicg_node1_fu_694_v139_ce0;
wire   [4:0] grp_bicg_node1_fu_694_v10_0_address0;
wire    grp_bicg_node1_fu_694_v10_0_ce0;
wire    grp_bicg_node1_fu_694_v10_0_we0;
wire   [31:0] grp_bicg_node1_fu_694_v10_0_d0;
wire   [4:0] grp_bicg_node1_fu_694_v10_0_address1;
wire    grp_bicg_node1_fu_694_v10_0_ce1;
wire    grp_bicg_node1_fu_694_v10_0_we1;
wire   [31:0] grp_bicg_node1_fu_694_v10_0_d1;
wire   [4:0] grp_bicg_node1_fu_694_v10_1_address0;
wire    grp_bicg_node1_fu_694_v10_1_ce0;
wire    grp_bicg_node1_fu_694_v10_1_we0;
wire   [31:0] grp_bicg_node1_fu_694_v10_1_d0;
wire   [4:0] grp_bicg_node1_fu_694_v10_1_address1;
wire    grp_bicg_node1_fu_694_v10_1_ce1;
wire    grp_bicg_node1_fu_694_v10_1_we1;
wire   [31:0] grp_bicg_node1_fu_694_v10_1_d1;
reg    grp_bicg_node2_fu_624_ap_start_reg;
reg    grp_bicg_node1_fu_694_ap_start_reg;
wire   [63:0] zext_ln27_2_fu_760_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_1_fu_744_p1;
wire   [63:0] zext_ln28_2_fu_804_p1;
wire   [63:0] zext_ln27_fu_847_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln28_fu_876_p1;
wire   [63:0] zext_ln28_5_fu_921_p1;
wire   [63:0] zext_ln28_8_fu_948_p1;
wire   [63:0] zext_ln28_1_fu_975_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln28_3_fu_997_p1;
wire   [63:0] zext_ln28_4_fu_1019_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln28_6_fu_1044_p1;
wire   [63:0] zext_ln28_7_fu_1066_p1;
wire   [63:0] zext_ln28_9_fu_1087_p1;
reg   [6:0] v41_fu_136;
wire   [6:0] v4_fu_828_p2;
reg    v151_ce0_local;
reg    v151_8_ce0_local;
reg    v152_ce1_local;
reg   [4:0] v152_address1_local;
reg    v152_ce0_local;
reg   [4:0] v152_address0_local;
reg    v151_1_ce0_local;
reg    v151_9_ce0_local;
reg    v152_1_ce1_local;
reg   [4:0] v152_1_address1_local;
reg    v152_1_ce0_local;
reg   [4:0] v152_1_address0_local;
reg    v151_2_ce0_local;
reg    v151_10_ce0_local;
reg    v151_3_ce0_local;
reg    v151_11_ce0_local;
reg    v151_4_ce0_local;
reg    v151_12_ce0_local;
reg    v151_5_ce0_local;
reg    v151_13_ce0_local;
reg    v151_6_ce0_local;
reg    v151_14_ce0_local;
reg    v151_7_ce0_local;
reg    v151_15_ce0_local;
reg    v141_we1_local;
reg   [31:0] v141_d1_local;
wire   [31:0] bitcast_ln29_fu_859_p1;
reg    v141_ce1_local;
reg   [5:0] v141_address1_local;
reg    v141_we0_local;
reg   [31:0] v141_d0_local;
wire   [31:0] bitcast_ln29_1_fu_889_p1;
reg    v141_ce0_local;
reg   [5:0] v141_address0_local;
wire   [31:0] bitcast_ln29_2_fu_981_p1;
wire   [31:0] bitcast_ln29_3_fu_1003_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] bitcast_ln29_4_fu_1025_p1;
wire   [31:0] bitcast_ln29_5_fu_1050_p1;
wire   [31:0] bitcast_ln29_6_fu_1072_p1;
wire   [31:0] bitcast_ln29_7_fu_1093_p1;
reg    v142_we1_local;
reg   [31:0] v142_d1_local;
wire   [31:0] bitcast_ln31_fu_864_p1;
reg    v142_ce1_local;
reg   [5:0] v142_address1_local;
reg    v142_we0_local;
reg   [31:0] v142_d0_local;
wire   [31:0] bitcast_ln31_1_fu_894_p1;
reg    v142_ce0_local;
reg   [5:0] v142_address0_local;
wire   [31:0] bitcast_ln31_2_fu_985_p1;
wire   [31:0] bitcast_ln31_3_fu_1007_p1;
wire   [31:0] bitcast_ln31_4_fu_1029_p1;
wire   [31:0] bitcast_ln31_5_fu_1054_p1;
wire   [31:0] bitcast_ln31_6_fu_1076_p1;
wire   [31:0] bitcast_ln31_7_fu_1097_p1;
wire   [1:0] lshr_ln27_1_fu_750_p4;
wire   [3:0] trunc_ln27_fu_730_p1;
wire   [4:0] or_ln3_fu_796_p3;
wire   [31:0] v5_fu_852_p3;
wire   [5:0] or_ln_fu_869_p3;
wire   [31:0] v5_1_fu_882_p3;
wire   [4:0] or_ln28_1_fu_913_p4;
wire   [4:0] or_ln28_2_fu_941_p3;
wire   [5:0] or_ln27_1_fu_968_p3;
wire   [5:0] or_ln27_2_fu_990_p3;
wire   [5:0] or_ln27_3_fu_1012_p3;
wire   [5:0] or_ln27_4_fu_1034_p5;
wire   [5:0] or_ln27_5_fu_1059_p3;
wire   [5:0] or_ln27_6_fu_1080_p3;
wire    ap_CS_fsm_state8;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_bicg_node2_fu_624_ap_start_reg = 1'b0;
#0 grp_bicg_node1_fu_694_ap_start_reg = 1'b0;
#0 v41_fu_136 = 7'd0;
end
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_address0),.ce0(v151_ce0),.we0(v151_we0),.d0(grp_bicg_node2_fu_624_v65_0_d0),.q0(v151_q0),.address1(grp_bicg_node2_fu_624_v65_0_address1),.ce1(v151_ce1),.q1(v151_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_1_address0),.ce0(v151_1_ce0),.we0(v151_1_we0),.d0(grp_bicg_node2_fu_624_v65_1_d0),.q0(v151_1_q0),.address1(grp_bicg_node2_fu_624_v65_1_address1),.ce1(v151_1_ce1),.q1(v151_1_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_2_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_2_address0),.ce0(v151_2_ce0),.we0(v151_2_we0),.d0(grp_bicg_node2_fu_624_v65_2_d0),.q0(v151_2_q0),.address1(grp_bicg_node2_fu_624_v65_2_address1),.ce1(v151_2_ce1),.q1(v151_2_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_3_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_3_address0),.ce0(v151_3_ce0),.we0(v151_3_we0),.d0(grp_bicg_node2_fu_624_v65_3_d0),.q0(v151_3_q0),.address1(grp_bicg_node2_fu_624_v65_3_address1),.ce1(v151_3_ce1),.q1(v151_3_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_4_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_4_address0),.ce0(v151_4_ce0),.we0(v151_4_we0),.d0(grp_bicg_node2_fu_624_v65_4_d0),.q0(v151_4_q0),.address1(grp_bicg_node2_fu_624_v65_4_address1),.ce1(v151_4_ce1),.q1(v151_4_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_5_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_5_address0),.ce0(v151_5_ce0),.we0(v151_5_we0),.d0(grp_bicg_node2_fu_624_v65_5_d0),.q0(v151_5_q0),.address1(grp_bicg_node2_fu_624_v65_5_address1),.ce1(v151_5_ce1),.q1(v151_5_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_6_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_6_address0),.ce0(v151_6_ce0),.we0(v151_6_we0),.d0(grp_bicg_node2_fu_624_v65_6_d0),.q0(v151_6_q0),.address1(grp_bicg_node2_fu_624_v65_6_address1),.ce1(v151_6_ce1),.q1(v151_6_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_7_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_7_address0),.ce0(v151_7_ce0),.we0(v151_7_we0),.d0(grp_bicg_node2_fu_624_v65_7_d0),.q0(v151_7_q0),.address1(grp_bicg_node2_fu_624_v65_7_address1),.ce1(v151_7_ce1),.q1(v151_7_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_8_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_8_address0),.ce0(v151_8_ce0),.we0(v151_8_we0),.d0(grp_bicg_node2_fu_624_v65_8_d0),.q0(v151_8_q0),.address1(grp_bicg_node2_fu_624_v65_8_address1),.ce1(v151_8_ce1),.q1(v151_8_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_9_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_9_address0),.ce0(v151_9_ce0),.we0(v151_9_we0),.d0(grp_bicg_node2_fu_624_v65_9_d0),.q0(v151_9_q0),.address1(grp_bicg_node2_fu_624_v65_9_address1),.ce1(v151_9_ce1),.q1(v151_9_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_10_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_10_address0),.ce0(v151_10_ce0),.we0(v151_10_we0),.d0(grp_bicg_node2_fu_624_v65_10_d0),.q0(v151_10_q0),.address1(grp_bicg_node2_fu_624_v65_10_address1),.ce1(v151_10_ce1),.q1(v151_10_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_11_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_11_address0),.ce0(v151_11_ce0),.we0(v151_11_we0),.d0(grp_bicg_node2_fu_624_v65_11_d0),.q0(v151_11_q0),.address1(grp_bicg_node2_fu_624_v65_11_address1),.ce1(v151_11_ce1),.q1(v151_11_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_12_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_12_address0),.ce0(v151_12_ce0),.we0(v151_12_we0),.d0(grp_bicg_node2_fu_624_v65_12_d0),.q0(v151_12_q0),.address1(grp_bicg_node2_fu_624_v65_12_address1),.ce1(v151_12_ce1),.q1(v151_12_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_13_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_13_address0),.ce0(v151_13_ce0),.we0(v151_13_we0),.d0(grp_bicg_node2_fu_624_v65_13_d0),.q0(v151_13_q0),.address1(grp_bicg_node2_fu_624_v65_13_address1),.ce1(v151_13_ce1),.q1(v151_13_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_14_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_14_address0),.ce0(v151_14_ce0),.we0(v151_14_we0),.d0(grp_bicg_node2_fu_624_v65_14_d0),.q0(v151_14_q0),.address1(grp_bicg_node2_fu_624_v65_14_address1),.ce1(v151_14_ce1),.q1(v151_14_q1));
bicg_v151_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 4 ),.AddressWidth( 2 ))
v151_15_U(.clk(ap_clk),.reset(ap_rst),.address0(v151_15_address0),.ce0(v151_15_ce0),.we0(v151_15_we0),.d0(grp_bicg_node2_fu_624_v65_15_d0),.q0(v151_15_q0),.address1(grp_bicg_node2_fu_624_v65_15_address1),.ce1(v151_15_ce1),.q1(v151_15_q1));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_address0),.ce0(v152_ce0),.we0(v152_we0),.d0(grp_bicg_node1_fu_694_v10_0_d0),.q0(v152_q0),.address1(v152_address1),.ce1(v152_ce1),.we1(v152_we1),.d1(grp_bicg_node1_fu_694_v10_0_d1),.q1(v152_q1));
bicg_v152_RAM_AUTO_1R1W #(.DataWidth( 32 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v152_1_address0),.ce0(v152_1_ce0),.we0(v152_1_we0),.d0(grp_bicg_node1_fu_694_v10_1_d0),.q0(v152_1_q0),.address1(v152_1_address1),.ce1(v152_1_ce1),.we1(v152_1_we1),.d1(grp_bicg_node1_fu_694_v10_1_d1),.q1(v152_1_q1));
bicg_bicg_node2 grp_bicg_node2_fu_624(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node2_fu_624_ap_start),.ap_done(grp_bicg_node2_fu_624_ap_done),.ap_idle(grp_bicg_node2_fu_624_ap_idle),.ap_ready(grp_bicg_node2_fu_624_ap_ready),.v140_address0(grp_bicg_node2_fu_624_v140_address0),.v140_ce0(grp_bicg_node2_fu_624_v140_ce0),.v140_q0(v140_q0),.v138_0_address0(grp_bicg_node2_fu_624_v138_0_address0),.v138_0_ce0(grp_bicg_node2_fu_624_v138_0_ce0),.v138_0_q0(v138_0_q0),.v138_0_address1(grp_bicg_node2_fu_624_v138_0_address1),.v138_0_ce1(grp_bicg_node2_fu_624_v138_0_ce1),.v138_0_q1(v138_0_q1),.v138_1_address0(grp_bicg_node2_fu_624_v138_1_address0),.v138_1_ce0(grp_bicg_node2_fu_624_v138_1_ce0),.v138_1_q0(v138_1_q0),.v138_1_address1(grp_bicg_node2_fu_624_v138_1_address1),.v138_1_ce1(grp_bicg_node2_fu_624_v138_1_ce1),.v138_1_q1(v138_1_q1),.v138_2_address0(grp_bicg_node2_fu_624_v138_2_address0),.v138_2_ce0(grp_bicg_node2_fu_624_v138_2_ce0),.v138_2_q0(v138_2_q0),.v138_2_address1(grp_bicg_node2_fu_624_v138_2_address1),.v138_2_ce1(grp_bicg_node2_fu_624_v138_2_ce1),.v138_2_q1(v138_2_q1),.v138_3_address0(grp_bicg_node2_fu_624_v138_3_address0),.v138_3_ce0(grp_bicg_node2_fu_624_v138_3_ce0),.v138_3_q0(v138_3_q0),.v138_3_address1(grp_bicg_node2_fu_624_v138_3_address1),.v138_3_ce1(grp_bicg_node2_fu_624_v138_3_ce1),.v138_3_q1(v138_3_q1),.v138_4_address0(grp_bicg_node2_fu_624_v138_4_address0),.v138_4_ce0(grp_bicg_node2_fu_624_v138_4_ce0),.v138_4_q0(v138_4_q0),.v138_4_address1(grp_bicg_node2_fu_624_v138_4_address1),.v138_4_ce1(grp_bicg_node2_fu_624_v138_4_ce1),.v138_4_q1(v138_4_q1),.v138_5_address0(grp_bicg_node2_fu_624_v138_5_address0),.v138_5_ce0(grp_bicg_node2_fu_624_v138_5_ce0),.v138_5_q0(v138_5_q0),.v138_5_address1(grp_bicg_node2_fu_624_v138_5_address1),.v138_5_ce1(grp_bicg_node2_fu_624_v138_5_ce1),.v138_5_q1(v138_5_q1),.v138_6_address0(grp_bicg_node2_fu_624_v138_6_address0),.v138_6_ce0(grp_bicg_node2_fu_624_v138_6_ce0),.v138_6_q0(v138_6_q0),.v138_6_address1(grp_bicg_node2_fu_624_v138_6_address1),.v138_6_ce1(grp_bicg_node2_fu_624_v138_6_ce1),.v138_6_q1(v138_6_q1),.v138_7_address0(grp_bicg_node2_fu_624_v138_7_address0),.v138_7_ce0(grp_bicg_node2_fu_624_v138_7_ce0),.v138_7_q0(v138_7_q0),.v138_7_address1(grp_bicg_node2_fu_624_v138_7_address1),.v138_7_ce1(grp_bicg_node2_fu_624_v138_7_ce1),.v138_7_q1(v138_7_q1),.v138_8_address0(grp_bicg_node2_fu_624_v138_8_address0),.v138_8_ce0(grp_bicg_node2_fu_624_v138_8_ce0),.v138_8_q0(v138_8_q0),.v138_8_address1(grp_bicg_node2_fu_624_v138_8_address1),.v138_8_ce1(grp_bicg_node2_fu_624_v138_8_ce1),.v138_8_q1(v138_8_q1),.v138_9_address0(grp_bicg_node2_fu_624_v138_9_address0),.v138_9_ce0(grp_bicg_node2_fu_624_v138_9_ce0),.v138_9_q0(v138_9_q0),.v138_9_address1(grp_bicg_node2_fu_624_v138_9_address1),.v138_9_ce1(grp_bicg_node2_fu_624_v138_9_ce1),.v138_9_q1(v138_9_q1),.v138_10_address0(grp_bicg_node2_fu_624_v138_10_address0),.v138_10_ce0(grp_bicg_node2_fu_624_v138_10_ce0),.v138_10_q0(v138_10_q0),.v138_10_address1(grp_bicg_node2_fu_624_v138_10_address1),.v138_10_ce1(grp_bicg_node2_fu_624_v138_10_ce1),.v138_10_q1(v138_10_q1),.v138_11_address0(grp_bicg_node2_fu_624_v138_11_address0),.v138_11_ce0(grp_bicg_node2_fu_624_v138_11_ce0),.v138_11_q0(v138_11_q0),.v138_11_address1(grp_bicg_node2_fu_624_v138_11_address1),.v138_11_ce1(grp_bicg_node2_fu_624_v138_11_ce1),.v138_11_q1(v138_11_q1),.v138_12_address0(grp_bicg_node2_fu_624_v138_12_address0),.v138_12_ce0(grp_bicg_node2_fu_624_v138_12_ce0),.v138_12_q0(v138_12_q0),.v138_12_address1(grp_bicg_node2_fu_624_v138_12_address1),.v138_12_ce1(grp_bicg_node2_fu_624_v138_12_ce1),.v138_12_q1(v138_12_q1),.v138_13_address0(grp_bicg_node2_fu_624_v138_13_address0),.v138_13_ce0(grp_bicg_node2_fu_624_v138_13_ce0),.v138_13_q0(v138_13_q0),.v138_13_address1(grp_bicg_node2_fu_624_v138_13_address1),.v138_13_ce1(grp_bicg_node2_fu_624_v138_13_ce1),.v138_13_q1(v138_13_q1),.v138_14_address0(grp_bicg_node2_fu_624_v138_14_address0),.v138_14_ce0(grp_bicg_node2_fu_624_v138_14_ce0),.v138_14_q0(v138_14_q0),.v138_14_address1(grp_bicg_node2_fu_624_v138_14_address1),.v138_14_ce1(grp_bicg_node2_fu_624_v138_14_ce1),.v138_14_q1(v138_14_q1),.v138_15_address0(grp_bicg_node2_fu_624_v138_15_address0),.v138_15_ce0(grp_bicg_node2_fu_624_v138_15_ce0),.v138_15_q0(v138_15_q0),.v138_15_address1(grp_bicg_node2_fu_624_v138_15_address1),.v138_15_ce1(grp_bicg_node2_fu_624_v138_15_ce1),.v138_15_q1(v138_15_q1),.v65_0_address0(grp_bicg_node2_fu_624_v65_0_address0),.v65_0_ce0(grp_bicg_node2_fu_624_v65_0_ce0),.v65_0_we0(grp_bicg_node2_fu_624_v65_0_we0),.v65_0_d0(grp_bicg_node2_fu_624_v65_0_d0),.v65_0_address1(grp_bicg_node2_fu_624_v65_0_address1),.v65_0_ce1(grp_bicg_node2_fu_624_v65_0_ce1),.v65_0_q1(v151_q1),.v65_1_address0(grp_bicg_node2_fu_624_v65_1_address0),.v65_1_ce0(grp_bicg_node2_fu_624_v65_1_ce0),.v65_1_we0(grp_bicg_node2_fu_624_v65_1_we0),.v65_1_d0(grp_bicg_node2_fu_624_v65_1_d0),.v65_1_address1(grp_bicg_node2_fu_624_v65_1_address1),.v65_1_ce1(grp_bicg_node2_fu_624_v65_1_ce1),.v65_1_q1(v151_1_q1),.v65_2_address0(grp_bicg_node2_fu_624_v65_2_address0),.v65_2_ce0(grp_bicg_node2_fu_624_v65_2_ce0),.v65_2_we0(grp_bicg_node2_fu_624_v65_2_we0),.v65_2_d0(grp_bicg_node2_fu_624_v65_2_d0),.v65_2_address1(grp_bicg_node2_fu_624_v65_2_address1),.v65_2_ce1(grp_bicg_node2_fu_624_v65_2_ce1),.v65_2_q1(v151_2_q1),.v65_3_address0(grp_bicg_node2_fu_624_v65_3_address0),.v65_3_ce0(grp_bicg_node2_fu_624_v65_3_ce0),.v65_3_we0(grp_bicg_node2_fu_624_v65_3_we0),.v65_3_d0(grp_bicg_node2_fu_624_v65_3_d0),.v65_3_address1(grp_bicg_node2_fu_624_v65_3_address1),.v65_3_ce1(grp_bicg_node2_fu_624_v65_3_ce1),.v65_3_q1(v151_3_q1),.v65_4_address0(grp_bicg_node2_fu_624_v65_4_address0),.v65_4_ce0(grp_bicg_node2_fu_624_v65_4_ce0),.v65_4_we0(grp_bicg_node2_fu_624_v65_4_we0),.v65_4_d0(grp_bicg_node2_fu_624_v65_4_d0),.v65_4_address1(grp_bicg_node2_fu_624_v65_4_address1),.v65_4_ce1(grp_bicg_node2_fu_624_v65_4_ce1),.v65_4_q1(v151_4_q1),.v65_5_address0(grp_bicg_node2_fu_624_v65_5_address0),.v65_5_ce0(grp_bicg_node2_fu_624_v65_5_ce0),.v65_5_we0(grp_bicg_node2_fu_624_v65_5_we0),.v65_5_d0(grp_bicg_node2_fu_624_v65_5_d0),.v65_5_address1(grp_bicg_node2_fu_624_v65_5_address1),.v65_5_ce1(grp_bicg_node2_fu_624_v65_5_ce1),.v65_5_q1(v151_5_q1),.v65_6_address0(grp_bicg_node2_fu_624_v65_6_address0),.v65_6_ce0(grp_bicg_node2_fu_624_v65_6_ce0),.v65_6_we0(grp_bicg_node2_fu_624_v65_6_we0),.v65_6_d0(grp_bicg_node2_fu_624_v65_6_d0),.v65_6_address1(grp_bicg_node2_fu_624_v65_6_address1),.v65_6_ce1(grp_bicg_node2_fu_624_v65_6_ce1),.v65_6_q1(v151_6_q1),.v65_7_address0(grp_bicg_node2_fu_624_v65_7_address0),.v65_7_ce0(grp_bicg_node2_fu_624_v65_7_ce0),.v65_7_we0(grp_bicg_node2_fu_624_v65_7_we0),.v65_7_d0(grp_bicg_node2_fu_624_v65_7_d0),.v65_7_address1(grp_bicg_node2_fu_624_v65_7_address1),.v65_7_ce1(grp_bicg_node2_fu_624_v65_7_ce1),.v65_7_q1(v151_7_q1),.v65_8_address0(grp_bicg_node2_fu_624_v65_8_address0),.v65_8_ce0(grp_bicg_node2_fu_624_v65_8_ce0),.v65_8_we0(grp_bicg_node2_fu_624_v65_8_we0),.v65_8_d0(grp_bicg_node2_fu_624_v65_8_d0),.v65_8_address1(grp_bicg_node2_fu_624_v65_8_address1),.v65_8_ce1(grp_bicg_node2_fu_624_v65_8_ce1),.v65_8_q1(v151_8_q1),.v65_9_address0(grp_bicg_node2_fu_624_v65_9_address0),.v65_9_ce0(grp_bicg_node2_fu_624_v65_9_ce0),.v65_9_we0(grp_bicg_node2_fu_624_v65_9_we0),.v65_9_d0(grp_bicg_node2_fu_624_v65_9_d0),.v65_9_address1(grp_bicg_node2_fu_624_v65_9_address1),.v65_9_ce1(grp_bicg_node2_fu_624_v65_9_ce1),.v65_9_q1(v151_9_q1),.v65_10_address0(grp_bicg_node2_fu_624_v65_10_address0),.v65_10_ce0(grp_bicg_node2_fu_624_v65_10_ce0),.v65_10_we0(grp_bicg_node2_fu_624_v65_10_we0),.v65_10_d0(grp_bicg_node2_fu_624_v65_10_d0),.v65_10_address1(grp_bicg_node2_fu_624_v65_10_address1),.v65_10_ce1(grp_bicg_node2_fu_624_v65_10_ce1),.v65_10_q1(v151_10_q1),.v65_11_address0(grp_bicg_node2_fu_624_v65_11_address0),.v65_11_ce0(grp_bicg_node2_fu_624_v65_11_ce0),.v65_11_we0(grp_bicg_node2_fu_624_v65_11_we0),.v65_11_d0(grp_bicg_node2_fu_624_v65_11_d0),.v65_11_address1(grp_bicg_node2_fu_624_v65_11_address1),.v65_11_ce1(grp_bicg_node2_fu_624_v65_11_ce1),.v65_11_q1(v151_11_q1),.v65_12_address0(grp_bicg_node2_fu_624_v65_12_address0),.v65_12_ce0(grp_bicg_node2_fu_624_v65_12_ce0),.v65_12_we0(grp_bicg_node2_fu_624_v65_12_we0),.v65_12_d0(grp_bicg_node2_fu_624_v65_12_d0),.v65_12_address1(grp_bicg_node2_fu_624_v65_12_address1),.v65_12_ce1(grp_bicg_node2_fu_624_v65_12_ce1),.v65_12_q1(v151_12_q1),.v65_13_address0(grp_bicg_node2_fu_624_v65_13_address0),.v65_13_ce0(grp_bicg_node2_fu_624_v65_13_ce0),.v65_13_we0(grp_bicg_node2_fu_624_v65_13_we0),.v65_13_d0(grp_bicg_node2_fu_624_v65_13_d0),.v65_13_address1(grp_bicg_node2_fu_624_v65_13_address1),.v65_13_ce1(grp_bicg_node2_fu_624_v65_13_ce1),.v65_13_q1(v151_13_q1),.v65_14_address0(grp_bicg_node2_fu_624_v65_14_address0),.v65_14_ce0(grp_bicg_node2_fu_624_v65_14_ce0),.v65_14_we0(grp_bicg_node2_fu_624_v65_14_we0),.v65_14_d0(grp_bicg_node2_fu_624_v65_14_d0),.v65_14_address1(grp_bicg_node2_fu_624_v65_14_address1),.v65_14_ce1(grp_bicg_node2_fu_624_v65_14_ce1),.v65_14_q1(v151_14_q1),.v65_15_address0(grp_bicg_node2_fu_624_v65_15_address0),.v65_15_ce0(grp_bicg_node2_fu_624_v65_15_ce0),.v65_15_we0(grp_bicg_node2_fu_624_v65_15_we0),.v65_15_d0(grp_bicg_node2_fu_624_v65_15_d0),.v65_15_address1(grp_bicg_node2_fu_624_v65_15_address1),.v65_15_ce1(grp_bicg_node2_fu_624_v65_15_ce1),.v65_15_q1(v151_15_q1));
bicg_bicg_node1 grp_bicg_node1_fu_694(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bicg_node1_fu_694_ap_start),.ap_done(grp_bicg_node1_fu_694_ap_done),.ap_idle(grp_bicg_node1_fu_694_ap_idle),.ap_ready(grp_bicg_node1_fu_694_ap_ready),.v137_0_address0(grp_bicg_node1_fu_694_v137_0_address0),.v137_0_ce0(grp_bicg_node1_fu_694_v137_0_ce0),.v137_0_q0(v137_0_q0),.v137_0_address1(grp_bicg_node1_fu_694_v137_0_address1),.v137_0_ce1(grp_bicg_node1_fu_694_v137_0_ce1),.v137_0_q1(v137_0_q1),.v137_1_address0(grp_bicg_node1_fu_694_v137_1_address0),.v137_1_ce0(grp_bicg_node1_fu_694_v137_1_ce0),.v137_1_q0(v137_1_q0),.v137_1_address1(grp_bicg_node1_fu_694_v137_1_address1),.v137_1_ce1(grp_bicg_node1_fu_694_v137_1_ce1),.v137_1_q1(v137_1_q1),.v137_2_address0(grp_bicg_node1_fu_694_v137_2_address0),.v137_2_ce0(grp_bicg_node1_fu_694_v137_2_ce0),.v137_2_q0(v137_2_q0),.v137_2_address1(grp_bicg_node1_fu_694_v137_2_address1),.v137_2_ce1(grp_bicg_node1_fu_694_v137_2_ce1),.v137_2_q1(v137_2_q1),.v137_3_address0(grp_bicg_node1_fu_694_v137_3_address0),.v137_3_ce0(grp_bicg_node1_fu_694_v137_3_ce0),.v137_3_q0(v137_3_q0),.v137_3_address1(grp_bicg_node1_fu_694_v137_3_address1),.v137_3_ce1(grp_bicg_node1_fu_694_v137_3_ce1),.v137_3_q1(v137_3_q1),.v139_address0(grp_bicg_node1_fu_694_v139_address0),.v139_ce0(grp_bicg_node1_fu_694_v139_ce0),.v139_q0(v139_q0),.v10_0_address0(grp_bicg_node1_fu_694_v10_0_address0),.v10_0_ce0(grp_bicg_node1_fu_694_v10_0_ce0),.v10_0_we0(grp_bicg_node1_fu_694_v10_0_we0),.v10_0_d0(grp_bicg_node1_fu_694_v10_0_d0),.v10_0_q0(v152_q0),.v10_0_address1(grp_bicg_node1_fu_694_v10_0_address1),.v10_0_ce1(grp_bicg_node1_fu_694_v10_0_ce1),.v10_0_we1(grp_bicg_node1_fu_694_v10_0_we1),.v10_0_d1(grp_bicg_node1_fu_694_v10_0_d1),.v10_0_q1(v152_q1),.v10_1_address0(grp_bicg_node1_fu_694_v10_1_address0),.v10_1_ce0(grp_bicg_node1_fu_694_v10_1_ce0),.v10_1_we0(grp_bicg_node1_fu_694_v10_1_we0),.v10_1_d0(grp_bicg_node1_fu_694_v10_1_d0),.v10_1_q0(v152_1_q0),.v10_1_address1(grp_bicg_node1_fu_694_v10_1_address1),.v10_1_ce1(grp_bicg_node1_fu_694_v10_1_ce1),.v10_1_we1(grp_bicg_node1_fu_694_v10_1_we1),.v10_1_d1(grp_bicg_node1_fu_694_v10_1_d1),.v10_1_q1(v152_1_q1));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node1_fu_694_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_bicg_node1_fu_694_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node1_fu_694_ap_ready == 1'b1)) begin
            grp_bicg_node1_fu_694_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bicg_node2_fu_624_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_bicg_node2_fu_624_ap_start_reg <= 1'b1;
        end else if ((grp_bicg_node2_fu_624_ap_ready == 1'b1)) begin
            grp_bicg_node2_fu_624_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_712 <= v152_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_712 <= v152_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_717 <= v152_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_717 <= v152_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v41_fu_136 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v41_fu_136 <= v4_fu_828_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln28_reg_1128 <= icmp_ln28_fu_780_p2;
        lshr_ln_reg_1113 <= {{v41_fu_136[5:1]}};
        tmp_1190_reg_1252 <= v4_fu_828_p2[32'd6];
        tmp_996_reg_1196 <= {{v41_fu_136[5:3]}};
        tmp_reg_1206 <= v41_fu_136[32'd1];
        tmp_s_reg_1160 <= {{v41_fu_136[5:2]}};
        v41_load_reg_1108 <= v41_fu_136;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v5_2_reg_1256 <= v5_2_fu_899_p3;
        v5_3_reg_1261 <= v5_3_fu_906_p3;
        v5_4_reg_1266 <= v5_4_fu_927_p3;
        v5_5_reg_1276 <= v5_5_fu_934_p3;
        v5_6_reg_1286 <= v5_6_fu_954_p3;
        v5_7_reg_1296 <= v5_7_fu_961_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v6_6_reg_1306 <= v152_q0;
        v6_7_reg_1311 <= v152_1_q0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if (((tmp_1190_reg_1252 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address0_local = zext_ln28_9_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_address0_local = zext_ln28_6_fu_1044_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_address0_local = zext_ln28_3_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_address0_local = zext_ln28_fu_876_p1;
    end else begin
        v141_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_address1_local = zext_ln28_7_fu_1066_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_address1_local = zext_ln28_4_fu_1019_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_address1_local = zext_ln28_1_fu_975_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_address1_local = zext_ln27_fu_847_p1;
    end else begin
        v141_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v141_ce0_local = 1'b1;
    end else begin
        v141_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v141_ce1_local = 1'b1;
    end else begin
        v141_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d0_local = bitcast_ln29_7_fu_1093_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_d0_local = bitcast_ln29_5_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_d0_local = bitcast_ln29_3_fu_1003_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_d0_local = bitcast_ln29_1_fu_889_p1;
    end else begin
        v141_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v141_d1_local = bitcast_ln29_6_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v141_d1_local = bitcast_ln29_4_fu_1025_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v141_d1_local = bitcast_ln29_2_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v141_d1_local = bitcast_ln29_fu_859_p1;
    end else begin
        v141_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v141_we0_local = 1'b1;
    end else begin
        v141_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v141_we1_local = 1'b1;
    end else begin
        v141_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address0_local = zext_ln28_9_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_address0_local = zext_ln28_6_fu_1044_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_address0_local = zext_ln28_3_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_address0_local = zext_ln28_fu_876_p1;
    end else begin
        v142_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_address1_local = zext_ln28_7_fu_1066_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_address1_local = zext_ln28_4_fu_1019_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_address1_local = zext_ln28_1_fu_975_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_address1_local = zext_ln27_fu_847_p1;
    end else begin
        v142_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v142_ce0_local = 1'b1;
    end else begin
        v142_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v142_ce1_local = 1'b1;
    end else begin
        v142_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d0_local = bitcast_ln31_7_fu_1097_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_d0_local = bitcast_ln31_5_fu_1054_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_d0_local = bitcast_ln31_3_fu_1007_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_d0_local = bitcast_ln31_1_fu_894_p1;
    end else begin
        v142_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v142_d1_local = bitcast_ln31_6_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v142_d1_local = bitcast_ln31_4_fu_1029_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v142_d1_local = bitcast_ln31_2_fu_985_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v142_d1_local = bitcast_ln31_fu_864_p1;
    end else begin
        v142_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v142_we0_local = 1'b1;
    end else begin
        v142_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v142_we1_local = 1'b1;
    end else begin
        v142_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_10_address0 = grp_bicg_node2_fu_624_v65_10_address0;
    end else begin
        v151_10_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_10_ce0 = grp_bicg_node2_fu_624_v65_10_ce0;
    end else begin
        v151_10_ce0 = v151_10_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_10_ce0_local = 1'b1;
    end else begin
        v151_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_10_ce1 = grp_bicg_node2_fu_624_v65_10_ce1;
    end else begin
        v151_10_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_10_we0 = grp_bicg_node2_fu_624_v65_10_we0;
    end else begin
        v151_10_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_11_address0 = grp_bicg_node2_fu_624_v65_11_address0;
    end else begin
        v151_11_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_11_ce0 = grp_bicg_node2_fu_624_v65_11_ce0;
    end else begin
        v151_11_ce0 = v151_11_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_11_ce0_local = 1'b1;
    end else begin
        v151_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_11_ce1 = grp_bicg_node2_fu_624_v65_11_ce1;
    end else begin
        v151_11_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_11_we0 = grp_bicg_node2_fu_624_v65_11_we0;
    end else begin
        v151_11_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_12_address0 = grp_bicg_node2_fu_624_v65_12_address0;
    end else begin
        v151_12_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_12_ce0 = grp_bicg_node2_fu_624_v65_12_ce0;
    end else begin
        v151_12_ce0 = v151_12_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_12_ce0_local = 1'b1;
    end else begin
        v151_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_12_ce1 = grp_bicg_node2_fu_624_v65_12_ce1;
    end else begin
        v151_12_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_12_we0 = grp_bicg_node2_fu_624_v65_12_we0;
    end else begin
        v151_12_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_13_address0 = grp_bicg_node2_fu_624_v65_13_address0;
    end else begin
        v151_13_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_13_ce0 = grp_bicg_node2_fu_624_v65_13_ce0;
    end else begin
        v151_13_ce0 = v151_13_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_13_ce0_local = 1'b1;
    end else begin
        v151_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_13_ce1 = grp_bicg_node2_fu_624_v65_13_ce1;
    end else begin
        v151_13_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_13_we0 = grp_bicg_node2_fu_624_v65_13_we0;
    end else begin
        v151_13_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_14_address0 = grp_bicg_node2_fu_624_v65_14_address0;
    end else begin
        v151_14_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_14_ce0 = grp_bicg_node2_fu_624_v65_14_ce0;
    end else begin
        v151_14_ce0 = v151_14_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_14_ce0_local = 1'b1;
    end else begin
        v151_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_14_ce1 = grp_bicg_node2_fu_624_v65_14_ce1;
    end else begin
        v151_14_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_14_we0 = grp_bicg_node2_fu_624_v65_14_we0;
    end else begin
        v151_14_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_15_address0 = grp_bicg_node2_fu_624_v65_15_address0;
    end else begin
        v151_15_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_15_ce0 = grp_bicg_node2_fu_624_v65_15_ce0;
    end else begin
        v151_15_ce0 = v151_15_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_15_ce0_local = 1'b1;
    end else begin
        v151_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_15_ce1 = grp_bicg_node2_fu_624_v65_15_ce1;
    end else begin
        v151_15_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_15_we0 = grp_bicg_node2_fu_624_v65_15_we0;
    end else begin
        v151_15_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_address0 = grp_bicg_node2_fu_624_v65_1_address0;
    end else begin
        v151_1_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce0 = grp_bicg_node2_fu_624_v65_1_ce0;
    end else begin
        v151_1_ce0 = v151_1_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_1_ce0_local = 1'b1;
    end else begin
        v151_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_ce1 = grp_bicg_node2_fu_624_v65_1_ce1;
    end else begin
        v151_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_1_we0 = grp_bicg_node2_fu_624_v65_1_we0;
    end else begin
        v151_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_address0 = grp_bicg_node2_fu_624_v65_2_address0;
    end else begin
        v151_2_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_ce0 = grp_bicg_node2_fu_624_v65_2_ce0;
    end else begin
        v151_2_ce0 = v151_2_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_2_ce0_local = 1'b1;
    end else begin
        v151_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_ce1 = grp_bicg_node2_fu_624_v65_2_ce1;
    end else begin
        v151_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_2_we0 = grp_bicg_node2_fu_624_v65_2_we0;
    end else begin
        v151_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_address0 = grp_bicg_node2_fu_624_v65_3_address0;
    end else begin
        v151_3_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_ce0 = grp_bicg_node2_fu_624_v65_3_ce0;
    end else begin
        v151_3_ce0 = v151_3_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_3_ce0_local = 1'b1;
    end else begin
        v151_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_ce1 = grp_bicg_node2_fu_624_v65_3_ce1;
    end else begin
        v151_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_3_we0 = grp_bicg_node2_fu_624_v65_3_we0;
    end else begin
        v151_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_address0 = grp_bicg_node2_fu_624_v65_4_address0;
    end else begin
        v151_4_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_ce0 = grp_bicg_node2_fu_624_v65_4_ce0;
    end else begin
        v151_4_ce0 = v151_4_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_4_ce0_local = 1'b1;
    end else begin
        v151_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_ce1 = grp_bicg_node2_fu_624_v65_4_ce1;
    end else begin
        v151_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_4_we0 = grp_bicg_node2_fu_624_v65_4_we0;
    end else begin
        v151_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_address0 = grp_bicg_node2_fu_624_v65_5_address0;
    end else begin
        v151_5_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_ce0 = grp_bicg_node2_fu_624_v65_5_ce0;
    end else begin
        v151_5_ce0 = v151_5_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_5_ce0_local = 1'b1;
    end else begin
        v151_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_ce1 = grp_bicg_node2_fu_624_v65_5_ce1;
    end else begin
        v151_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_5_we0 = grp_bicg_node2_fu_624_v65_5_we0;
    end else begin
        v151_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_address0 = grp_bicg_node2_fu_624_v65_6_address0;
    end else begin
        v151_6_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_ce0 = grp_bicg_node2_fu_624_v65_6_ce0;
    end else begin
        v151_6_ce0 = v151_6_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_6_ce0_local = 1'b1;
    end else begin
        v151_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_ce1 = grp_bicg_node2_fu_624_v65_6_ce1;
    end else begin
        v151_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_6_we0 = grp_bicg_node2_fu_624_v65_6_we0;
    end else begin
        v151_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_address0 = grp_bicg_node2_fu_624_v65_7_address0;
    end else begin
        v151_7_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_ce0 = grp_bicg_node2_fu_624_v65_7_ce0;
    end else begin
        v151_7_ce0 = v151_7_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_7_ce0_local = 1'b1;
    end else begin
        v151_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_ce1 = grp_bicg_node2_fu_624_v65_7_ce1;
    end else begin
        v151_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_7_we0 = grp_bicg_node2_fu_624_v65_7_we0;
    end else begin
        v151_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_8_address0 = grp_bicg_node2_fu_624_v65_8_address0;
    end else begin
        v151_8_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_8_ce0 = grp_bicg_node2_fu_624_v65_8_ce0;
    end else begin
        v151_8_ce0 = v151_8_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_8_ce0_local = 1'b1;
    end else begin
        v151_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_8_ce1 = grp_bicg_node2_fu_624_v65_8_ce1;
    end else begin
        v151_8_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_8_we0 = grp_bicg_node2_fu_624_v65_8_we0;
    end else begin
        v151_8_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_9_address0 = grp_bicg_node2_fu_624_v65_9_address0;
    end else begin
        v151_9_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_9_ce0 = grp_bicg_node2_fu_624_v65_9_ce0;
    end else begin
        v151_9_ce0 = v151_9_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_9_ce0_local = 1'b1;
    end else begin
        v151_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_9_ce1 = grp_bicg_node2_fu_624_v65_9_ce1;
    end else begin
        v151_9_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_9_we0 = grp_bicg_node2_fu_624_v65_9_we0;
    end else begin
        v151_9_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_address0 = grp_bicg_node2_fu_624_v65_0_address0;
    end else begin
        v151_address0 = zext_ln27_2_fu_760_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce0 = grp_bicg_node2_fu_624_v65_0_ce0;
    end else begin
        v151_ce0 = v151_ce0_local;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v151_ce0_local = 1'b1;
    end else begin
        v151_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_ce1 = grp_bicg_node2_fu_624_v65_0_ce1;
    end else begin
        v151_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v151_we0 = grp_bicg_node2_fu_624_v65_0_we0;
    end else begin
        v151_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address0 = grp_bicg_node1_fu_694_v10_1_address0;
    end else begin
        v152_1_address0 = v152_1_address0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_1_address0_local = zext_ln28_8_fu_948_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_1_address0_local = zext_ln28_2_fu_804_p1;
        end else begin
            v152_1_address0_local = 'bx;
        end
    end else begin
        v152_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_address1 = grp_bicg_node1_fu_694_v10_1_address1;
    end else begin
        v152_1_address1 = v152_1_address1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_1_address1_local = zext_ln28_5_fu_921_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_1_address1_local = zext_ln27_1_fu_744_p1;
        end else begin
            v152_1_address1_local = 'bx;
        end
    end else begin
        v152_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce0 = grp_bicg_node1_fu_694_v10_1_ce0;
    end else begin
        v152_1_ce0 = v152_1_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v152_1_ce0_local = 1'b1;
    end else begin
        v152_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_ce1 = grp_bicg_node1_fu_694_v10_1_ce1;
    end else begin
        v152_1_ce1 = v152_1_ce1_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v152_1_ce1_local = 1'b1;
    end else begin
        v152_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we0 = grp_bicg_node1_fu_694_v10_1_we0;
    end else begin
        v152_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_1_we1 = grp_bicg_node1_fu_694_v10_1_we1;
    end else begin
        v152_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address0 = grp_bicg_node1_fu_694_v10_0_address0;
    end else begin
        v152_address0 = v152_address0_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_address0_local = zext_ln28_8_fu_948_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_address0_local = zext_ln28_2_fu_804_p1;
        end else begin
            v152_address0_local = 'bx;
        end
    end else begin
        v152_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_address1 = grp_bicg_node1_fu_694_v10_0_address1;
    end else begin
        v152_address1 = v152_address1_local;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v152_address1_local = zext_ln28_5_fu_921_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v152_address1_local = zext_ln27_1_fu_744_p1;
        end else begin
            v152_address1_local = 'bx;
        end
    end else begin
        v152_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce0 = grp_bicg_node1_fu_694_v10_0_ce0;
    end else begin
        v152_ce0 = v152_ce0_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v152_ce0_local = 1'b1;
    end else begin
        v152_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_ce1 = grp_bicg_node1_fu_694_v10_0_ce1;
    end else begin
        v152_ce1 = v152_ce1_local;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v152_ce1_local = 1'b1;
    end else begin
        v152_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we0 = grp_bicg_node1_fu_694_v10_0_we0;
    end else begin
        v152_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v152_we1 = grp_bicg_node1_fu_694_v10_0_we1;
    end else begin
        v152_we1 = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
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
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];
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
always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_bicg_node1_fu_694_ap_done == 1'b0) | (grp_bicg_node2_fu_624_ap_done == 1'b0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign bitcast_ln29_1_fu_889_p1 = v5_1_fu_882_p3;
assign bitcast_ln29_2_fu_981_p1 = v5_2_reg_1256;
assign bitcast_ln29_3_fu_1003_p1 = v5_3_reg_1261;
assign bitcast_ln29_4_fu_1025_p1 = v5_4_reg_1266;
assign bitcast_ln29_5_fu_1050_p1 = v5_5_reg_1276;
assign bitcast_ln29_6_fu_1072_p1 = v5_6_reg_1286;
assign bitcast_ln29_7_fu_1093_p1 = v5_7_reg_1296;
assign bitcast_ln29_fu_859_p1 = v5_fu_852_p3;
assign bitcast_ln31_1_fu_894_p1 = v152_1_q1;
assign bitcast_ln31_2_fu_985_p1 = reg_712;
assign bitcast_ln31_3_fu_1007_p1 = reg_717;
assign bitcast_ln31_4_fu_1029_p1 = reg_712;
assign bitcast_ln31_5_fu_1054_p1 = reg_717;
assign bitcast_ln31_6_fu_1076_p1 = v6_6_reg_1306;
assign bitcast_ln31_7_fu_1097_p1 = v6_7_reg_1311;
assign bitcast_ln31_fu_864_p1 = v152_q1;
assign grp_bicg_node1_fu_694_ap_start = grp_bicg_node1_fu_694_ap_start_reg;
assign grp_bicg_node2_fu_624_ap_start = grp_bicg_node2_fu_624_ap_start_reg;
assign icmp_ln28_fu_780_p2 = ((trunc_ln27_fu_730_p1 != 4'd0) ? 1'b1 : 1'b0);
assign lshr_ln27_1_fu_750_p4 = {{v41_fu_136[5:4]}};
assign lshr_ln_fu_734_p4 = {{v41_fu_136[5:1]}};
assign or_ln27_1_fu_968_p3 = {{tmp_s_reg_1160}, {2'd2}};
assign or_ln27_2_fu_990_p3 = {{tmp_s_reg_1160}, {2'd3}};
assign or_ln27_3_fu_1012_p3 = {{tmp_996_reg_1196}, {3'd4}};
assign or_ln27_4_fu_1034_p5 = {{{{tmp_996_reg_1196}, {1'd1}}, {tmp_reg_1206}}, {1'd1}};
assign or_ln27_5_fu_1059_p3 = {{tmp_996_reg_1196}, {3'd6}};
assign or_ln27_6_fu_1080_p3 = {{tmp_996_reg_1196}, {3'd7}};
assign or_ln28_1_fu_913_p4 = {{{tmp_996_reg_1196}, {1'd1}}, {tmp_reg_1206}};
assign or_ln28_2_fu_941_p3 = {{tmp_996_reg_1196}, {2'd3}};
assign or_ln3_fu_796_p3 = {{tmp_s_fu_786_p4}, {1'd1}};
assign or_ln_fu_869_p3 = {{lshr_ln_reg_1113}, {1'd1}};
assign tmp_s_fu_786_p4 = {{v41_fu_136[5:2]}};
assign trunc_ln27_fu_730_p1 = v41_fu_136[3:0];
assign v137_0_address0 = grp_bicg_node1_fu_694_v137_0_address0;
assign v137_0_address1 = grp_bicg_node1_fu_694_v137_0_address1;
assign v137_0_ce0 = grp_bicg_node1_fu_694_v137_0_ce0;
assign v137_0_ce1 = grp_bicg_node1_fu_694_v137_0_ce1;
assign v137_1_address0 = grp_bicg_node1_fu_694_v137_1_address0;
assign v137_1_address1 = grp_bicg_node1_fu_694_v137_1_address1;
assign v137_1_ce0 = grp_bicg_node1_fu_694_v137_1_ce0;
assign v137_1_ce1 = grp_bicg_node1_fu_694_v137_1_ce1;
assign v137_2_address0 = grp_bicg_node1_fu_694_v137_2_address0;
assign v137_2_address1 = grp_bicg_node1_fu_694_v137_2_address1;
assign v137_2_ce0 = grp_bicg_node1_fu_694_v137_2_ce0;
assign v137_2_ce1 = grp_bicg_node1_fu_694_v137_2_ce1;
assign v137_3_address0 = grp_bicg_node1_fu_694_v137_3_address0;
assign v137_3_address1 = grp_bicg_node1_fu_694_v137_3_address1;
assign v137_3_ce0 = grp_bicg_node1_fu_694_v137_3_ce0;
assign v137_3_ce1 = grp_bicg_node1_fu_694_v137_3_ce1;
assign v138_0_address0 = grp_bicg_node2_fu_624_v138_0_address0;
assign v138_0_address1 = grp_bicg_node2_fu_624_v138_0_address1;
assign v138_0_ce0 = grp_bicg_node2_fu_624_v138_0_ce0;
assign v138_0_ce1 = grp_bicg_node2_fu_624_v138_0_ce1;
assign v138_10_address0 = grp_bicg_node2_fu_624_v138_10_address0;
assign v138_10_address1 = grp_bicg_node2_fu_624_v138_10_address1;
assign v138_10_ce0 = grp_bicg_node2_fu_624_v138_10_ce0;
assign v138_10_ce1 = grp_bicg_node2_fu_624_v138_10_ce1;
assign v138_11_address0 = grp_bicg_node2_fu_624_v138_11_address0;
assign v138_11_address1 = grp_bicg_node2_fu_624_v138_11_address1;
assign v138_11_ce0 = grp_bicg_node2_fu_624_v138_11_ce0;
assign v138_11_ce1 = grp_bicg_node2_fu_624_v138_11_ce1;
assign v138_12_address0 = grp_bicg_node2_fu_624_v138_12_address0;
assign v138_12_address1 = grp_bicg_node2_fu_624_v138_12_address1;
assign v138_12_ce0 = grp_bicg_node2_fu_624_v138_12_ce0;
assign v138_12_ce1 = grp_bicg_node2_fu_624_v138_12_ce1;
assign v138_13_address0 = grp_bicg_node2_fu_624_v138_13_address0;
assign v138_13_address1 = grp_bicg_node2_fu_624_v138_13_address1;
assign v138_13_ce0 = grp_bicg_node2_fu_624_v138_13_ce0;
assign v138_13_ce1 = grp_bicg_node2_fu_624_v138_13_ce1;
assign v138_14_address0 = grp_bicg_node2_fu_624_v138_14_address0;
assign v138_14_address1 = grp_bicg_node2_fu_624_v138_14_address1;
assign v138_14_ce0 = grp_bicg_node2_fu_624_v138_14_ce0;
assign v138_14_ce1 = grp_bicg_node2_fu_624_v138_14_ce1;
assign v138_15_address0 = grp_bicg_node2_fu_624_v138_15_address0;
assign v138_15_address1 = grp_bicg_node2_fu_624_v138_15_address1;
assign v138_15_ce0 = grp_bicg_node2_fu_624_v138_15_ce0;
assign v138_15_ce1 = grp_bicg_node2_fu_624_v138_15_ce1;
assign v138_1_address0 = grp_bicg_node2_fu_624_v138_1_address0;
assign v138_1_address1 = grp_bicg_node2_fu_624_v138_1_address1;
assign v138_1_ce0 = grp_bicg_node2_fu_624_v138_1_ce0;
assign v138_1_ce1 = grp_bicg_node2_fu_624_v138_1_ce1;
assign v138_2_address0 = grp_bicg_node2_fu_624_v138_2_address0;
assign v138_2_address1 = grp_bicg_node2_fu_624_v138_2_address1;
assign v138_2_ce0 = grp_bicg_node2_fu_624_v138_2_ce0;
assign v138_2_ce1 = grp_bicg_node2_fu_624_v138_2_ce1;
assign v138_3_address0 = grp_bicg_node2_fu_624_v138_3_address0;
assign v138_3_address1 = grp_bicg_node2_fu_624_v138_3_address1;
assign v138_3_ce0 = grp_bicg_node2_fu_624_v138_3_ce0;
assign v138_3_ce1 = grp_bicg_node2_fu_624_v138_3_ce1;
assign v138_4_address0 = grp_bicg_node2_fu_624_v138_4_address0;
assign v138_4_address1 = grp_bicg_node2_fu_624_v138_4_address1;
assign v138_4_ce0 = grp_bicg_node2_fu_624_v138_4_ce0;
assign v138_4_ce1 = grp_bicg_node2_fu_624_v138_4_ce1;
assign v138_5_address0 = grp_bicg_node2_fu_624_v138_5_address0;
assign v138_5_address1 = grp_bicg_node2_fu_624_v138_5_address1;
assign v138_5_ce0 = grp_bicg_node2_fu_624_v138_5_ce0;
assign v138_5_ce1 = grp_bicg_node2_fu_624_v138_5_ce1;
assign v138_6_address0 = grp_bicg_node2_fu_624_v138_6_address0;
assign v138_6_address1 = grp_bicg_node2_fu_624_v138_6_address1;
assign v138_6_ce0 = grp_bicg_node2_fu_624_v138_6_ce0;
assign v138_6_ce1 = grp_bicg_node2_fu_624_v138_6_ce1;
assign v138_7_address0 = grp_bicg_node2_fu_624_v138_7_address0;
assign v138_7_address1 = grp_bicg_node2_fu_624_v138_7_address1;
assign v138_7_ce0 = grp_bicg_node2_fu_624_v138_7_ce0;
assign v138_7_ce1 = grp_bicg_node2_fu_624_v138_7_ce1;
assign v138_8_address0 = grp_bicg_node2_fu_624_v138_8_address0;
assign v138_8_address1 = grp_bicg_node2_fu_624_v138_8_address1;
assign v138_8_ce0 = grp_bicg_node2_fu_624_v138_8_ce0;
assign v138_8_ce1 = grp_bicg_node2_fu_624_v138_8_ce1;
assign v138_9_address0 = grp_bicg_node2_fu_624_v138_9_address0;
assign v138_9_address1 = grp_bicg_node2_fu_624_v138_9_address1;
assign v138_9_ce0 = grp_bicg_node2_fu_624_v138_9_ce0;
assign v138_9_ce1 = grp_bicg_node2_fu_624_v138_9_ce1;
assign v139_address0 = grp_bicg_node1_fu_694_v139_address0;
assign v139_ce0 = grp_bicg_node1_fu_694_v139_ce0;
assign v140_address0 = grp_bicg_node2_fu_624_v140_address0;
assign v140_ce0 = grp_bicg_node2_fu_624_v140_ce0;
assign v141_address0 = v141_address0_local;
assign v141_address1 = v141_address1_local;
assign v141_ce0 = v141_ce0_local;
assign v141_ce1 = v141_ce1_local;
assign v141_d0 = v141_d0_local;
assign v141_d1 = v141_d1_local;
assign v141_we0 = v141_we0_local;
assign v141_we1 = v141_we1_local;
assign v142_address0 = v142_address0_local;
assign v142_address1 = v142_address1_local;
assign v142_ce0 = v142_ce0_local;
assign v142_ce1 = v142_ce1_local;
assign v142_d0 = v142_d0_local;
assign v142_d1 = v142_d1_local;
assign v142_we0 = v142_we0_local;
assign v142_we1 = v142_we1_local;
assign v4_fu_828_p2 = (v41_fu_136 + 7'd8);
assign v5_1_fu_882_p3 = ((icmp_ln28_reg_1128[0:0] == 1'b1) ? v151_9_q0 : v151_1_q0);
assign v5_2_fu_899_p3 = ((icmp_ln28_reg_1128[0:0] == 1'b1) ? v151_10_q0 : v151_2_q0);
assign v5_3_fu_906_p3 = ((icmp_ln28_reg_1128[0:0] == 1'b1) ? v151_11_q0 : v151_3_q0);
assign v5_4_fu_927_p3 = ((icmp_ln28_reg_1128[0:0] == 1'b1) ? v151_12_q0 : v151_4_q0);
assign v5_5_fu_934_p3 = ((icmp_ln28_reg_1128[0:0] == 1'b1) ? v151_13_q0 : v151_5_q0);
assign v5_6_fu_954_p3 = ((icmp_ln28_reg_1128[0:0] == 1'b1) ? v151_14_q0 : v151_6_q0);
assign v5_7_fu_961_p3 = ((icmp_ln28_reg_1128[0:0] == 1'b1) ? v151_15_q0 : v151_7_q0);
assign v5_fu_852_p3 = ((icmp_ln28_reg_1128[0:0] == 1'b1) ? v151_8_q0 : v151_q0);
assign zext_ln27_1_fu_744_p1 = lshr_ln_fu_734_p4;
assign zext_ln27_2_fu_760_p1 = lshr_ln27_1_fu_750_p4;
assign zext_ln27_fu_847_p1 = v41_load_reg_1108;
assign zext_ln28_1_fu_975_p1 = or_ln27_1_fu_968_p3;
assign zext_ln28_2_fu_804_p1 = or_ln3_fu_796_p3;
assign zext_ln28_3_fu_997_p1 = or_ln27_2_fu_990_p3;
assign zext_ln28_4_fu_1019_p1 = or_ln27_3_fu_1012_p3;
assign zext_ln28_5_fu_921_p1 = or_ln28_1_fu_913_p4;
assign zext_ln28_6_fu_1044_p1 = or_ln27_4_fu_1034_p5;
assign zext_ln28_7_fu_1066_p1 = or_ln27_5_fu_1059_p3;
assign zext_ln28_8_fu_948_p1 = or_ln28_2_fu_941_p3;
assign zext_ln28_9_fu_1087_p1 = or_ln27_6_fu_1080_p3;
assign zext_ln28_fu_876_p1 = or_ln_fu_869_p3;
endmodule 