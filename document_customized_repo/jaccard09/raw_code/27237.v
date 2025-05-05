module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,idx,grp_fu_3580_p_din0,grp_fu_3580_p_din1,grp_fu_3580_p_dout0,grp_fu_3580_p_ce,grp_fu_3584_p_din0,grp_fu_3584_p_din1,grp_fu_3584_p_dout0,grp_fu_3584_p_ce,grp_fu_3588_p_din0,grp_fu_3588_p_din1,grp_fu_3588_p_dout0,grp_fu_3588_p_ce,grp_fu_3592_p_din0,grp_fu_3592_p_din1,grp_fu_3592_p_dout0,grp_fu_3592_p_ce,grp_fu_3596_p_din0,grp_fu_3596_p_din1,grp_fu_3596_p_dout0,grp_fu_3596_p_ce,grp_fu_3600_p_din0,grp_fu_3600_p_din1,grp_fu_3600_p_dout0,grp_fu_3600_p_ce,grp_fu_3604_p_din0,grp_fu_3604_p_din1,grp_fu_3604_p_dout0,grp_fu_3604_p_ce,grp_fu_3608_p_din0,grp_fu_3608_p_din1,grp_fu_3608_p_dout0,grp_fu_3608_p_ce,grp_fu_3612_p_din0,grp_fu_3612_p_din1,grp_fu_3612_p_dout0,grp_fu_3612_p_ce,grp_fu_3616_p_din0,grp_fu_3616_p_din1,grp_fu_3616_p_dout0,grp_fu_3616_p_ce,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [6:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [6:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [6:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [6:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [6:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [6:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [6:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [6:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [6:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [6:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [6:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [6:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [6:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [6:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [6:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
output  [2:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [2:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [2:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [2:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [2:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [2:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [2:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [2:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [2:0] output_difference_4_address0;
output   output_difference_4_ce0;
input  [63:0] output_difference_4_q0;
output  [2:0] output_difference_4_address1;
output   output_difference_4_ce1;
input  [63:0] output_difference_4_q1;
output  [2:0] output_difference_5_address0;
output   output_difference_5_ce0;
input  [63:0] output_difference_5_q0;
output  [2:0] output_difference_5_address1;
output   output_difference_5_ce1;
input  [63:0] output_difference_5_q1;
output  [2:0] output_difference_6_address0;
output   output_difference_6_ce0;
input  [63:0] output_difference_6_q0;
output  [2:0] output_difference_6_address1;
output   output_difference_6_ce1;
input  [63:0] output_difference_6_q1;
output  [2:0] output_difference_7_address0;
output   output_difference_7_ce0;
input  [63:0] output_difference_7_q0;
output  [2:0] output_difference_7_address1;
output   output_difference_7_ce1;
input  [63:0] output_difference_7_q1;
output  [8:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [8:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [8:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [8:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [8:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [8:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [8:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [8:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
input  [11:0] idx;
output  [63:0] grp_fu_3580_p_din0;
output  [63:0] grp_fu_3580_p_din1;
input  [63:0] grp_fu_3580_p_dout0;
output   grp_fu_3580_p_ce;
output  [63:0] grp_fu_3584_p_din0;
output  [63:0] grp_fu_3584_p_din1;
input  [63:0] grp_fu_3584_p_dout0;
output   grp_fu_3584_p_ce;
output  [63:0] grp_fu_3588_p_din0;
output  [63:0] grp_fu_3588_p_din1;
input  [63:0] grp_fu_3588_p_dout0;
output   grp_fu_3588_p_ce;
output  [63:0] grp_fu_3592_p_din0;
output  [63:0] grp_fu_3592_p_din1;
input  [63:0] grp_fu_3592_p_dout0;
output   grp_fu_3592_p_ce;
output  [63:0] grp_fu_3596_p_din0;
output  [63:0] grp_fu_3596_p_din1;
input  [63:0] grp_fu_3596_p_dout0;
output   grp_fu_3596_p_ce;
output  [63:0] grp_fu_3600_p_din0;
output  [63:0] grp_fu_3600_p_din1;
input  [63:0] grp_fu_3600_p_dout0;
output   grp_fu_3600_p_ce;
output  [63:0] grp_fu_3604_p_din0;
output  [63:0] grp_fu_3604_p_din1;
input  [63:0] grp_fu_3604_p_dout0;
output   grp_fu_3604_p_ce;
output  [63:0] grp_fu_3608_p_din0;
output  [63:0] grp_fu_3608_p_din1;
input  [63:0] grp_fu_3608_p_dout0;
output   grp_fu_3608_p_ce;
output  [63:0] grp_fu_3612_p_din0;
output  [63:0] grp_fu_3612_p_din1;
input  [63:0] grp_fu_3612_p_dout0;
output   grp_fu_3612_p_ce;
output  [63:0] grp_fu_3616_p_din0;
output  [63:0] grp_fu_3616_p_din1;
input  [63:0] grp_fu_3616_p_dout0;
output   grp_fu_3616_p_ce;
output  [63:0] grp_fu_3620_p_din0;
output  [63:0] grp_fu_3620_p_din1;
input  [63:0] grp_fu_3620_p_dout0;
output   grp_fu_3620_p_ce;
output  [63:0] grp_fu_3624_p_din0;
output  [63:0] grp_fu_3624_p_din1;
input  [63:0] grp_fu_3624_p_dout0;
output   grp_fu_3624_p_ce;
output  [63:0] grp_fu_3628_p_din0;
output  [63:0] grp_fu_3628_p_din1;
input  [63:0] grp_fu_3628_p_dout0;
output   grp_fu_3628_p_ce;
output  [63:0] grp_fu_3632_p_din0;
output  [63:0] grp_fu_3632_p_din1;
input  [63:0] grp_fu_3632_p_dout0;
output   grp_fu_3632_p_ce;
output  [63:0] grp_fu_3636_p_din0;
output  [63:0] grp_fu_3636_p_din1;
input  [63:0] grp_fu_3636_p_dout0;
output   grp_fu_3636_p_ce;
output  [63:0] grp_fu_3640_p_din0;
output  [63:0] grp_fu_3640_p_din1;
input  [63:0] grp_fu_3640_p_dout0;
output   grp_fu_3640_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln113_reg_1480;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_988;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_993;
reg   [63:0] reg_998;
reg   [63:0] reg_1003;
reg   [63:0] reg_1008;
reg   [63:0] reg_1013;
reg   [63:0] reg_1018;
reg   [63:0] reg_1023;
reg   [63:0] reg_1028;
reg   [63:0] reg_1033;
reg   [63:0] reg_1038;
reg   [63:0] reg_1043;
reg   [63:0] reg_1048;
reg   [63:0] reg_1053;
reg   [63:0] reg_1058;
reg   [63:0] reg_1063;
wire   [0:0] icmp_ln113_fu_1086_p2;
wire   [6:0] select_ln112_fu_1112_p3;
reg   [6:0] select_ln112_reg_1484;
wire   [3:0] select_ln113_fu_1126_p3;
reg   [3:0] select_ln113_reg_1489;
reg   [3:0] select_ln113_reg_1489_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_1489_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_1489_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_1489_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_1489_pp0_iter5_reg;
wire   [3:0] lshr_ln_fu_1134_p4;
reg   [3:0] lshr_ln_reg_1498;
wire   [1:0] tmp_55_fu_1156_p4;
reg   [1:0] tmp_55_reg_1543;
reg   [1:0] tmp_55_reg_1543_pp0_iter1_reg;
reg   [1:0] tmp_55_reg_1543_pp0_iter2_reg;
reg   [1:0] tmp_55_reg_1543_pp0_iter3_reg;
reg   [1:0] tmp_55_reg_1543_pp0_iter4_reg;
reg   [0:0] tmp_23_reg_1588;
reg   [0:0] tmp_23_reg_1588_pp0_iter1_reg;
reg   [0:0] tmp_23_reg_1588_pp0_iter2_reg;
reg   [0:0] tmp_23_reg_1588_pp0_iter3_reg;
reg   [0:0] tmp_23_reg_1588_pp0_iter4_reg;
reg   [0:0] tmp_23_reg_1588_pp0_iter5_reg;
reg   [0:0] tmp_24_reg_1596;
reg   [0:0] tmp_24_reg_1596_pp0_iter1_reg;
reg   [0:0] tmp_24_reg_1596_pp0_iter2_reg;
reg   [0:0] tmp_24_reg_1596_pp0_iter3_reg;
reg   [0:0] tmp_24_reg_1596_pp0_iter4_reg;
reg   [0:0] tmp_24_reg_1596_pp0_iter5_reg;
wire   [2:0] empty_fu_1220_p1;
reg   [2:0] empty_reg_1602;
reg   [63:0] output_difference_0_load_reg_1647;
reg   [63:0] output_difference_1_load_reg_1732;
reg   [63:0] output_difference_2_load_reg_1737;
reg   [63:0] output_difference_3_load_reg_1742;
reg   [63:0] output_difference_4_load_reg_1747;
reg   [63:0] output_difference_5_load_reg_1752;
reg   [63:0] output_difference_6_load_reg_1757;
reg   [63:0] output_difference_7_load_reg_1762;
reg   [63:0] output_difference_0_load_4_reg_1767;
reg   [63:0] output_difference_1_load_4_reg_1772;
reg   [63:0] output_difference_2_load_4_reg_1777;
reg   [63:0] output_difference_3_load_4_reg_1782;
reg   [63:0] output_difference_4_load_4_reg_1787;
reg   [63:0] output_difference_5_load_4_reg_1792;
reg   [63:0] output_difference_6_load_4_reg_1797;
reg   [63:0] output_difference_7_load_4_reg_1802;
wire   [63:0] tmp_fu_1327_p19;
reg   [63:0] tmp_reg_1807;
wire   [6:0] add_ln115_fu_1376_p2;
reg   [6:0] add_ln115_reg_1827;
reg   [6:0] add_ln115_reg_1827_pp0_iter2_reg;
reg   [6:0] add_ln115_reg_1827_pp0_iter3_reg;
reg   [6:0] add_ln115_reg_1827_pp0_iter4_reg;
reg   [63:0] output_difference_0_load_5_reg_1832;
reg   [63:0] output_difference_1_load_5_reg_1837;
reg   [63:0] output_difference_2_load_5_reg_1842;
reg   [63:0] output_difference_3_load_5_reg_1847;
reg   [63:0] output_difference_4_load_5_reg_1852;
reg   [63:0] output_difference_5_load_5_reg_1857;
reg   [63:0] output_difference_6_load_5_reg_1862;
reg   [63:0] output_difference_7_load_5_reg_1867;
reg   [63:0] output_difference_0_load_6_reg_1872;
reg   [63:0] output_difference_1_load_6_reg_1877;
reg   [63:0] output_difference_2_load_6_reg_1882;
reg   [63:0] output_difference_3_load_6_reg_1887;
reg   [63:0] output_difference_4_load_6_reg_1892;
reg   [63:0] output_difference_5_load_6_reg_1897;
reg   [63:0] output_difference_6_load_6_reg_1902;
reg   [63:0] output_difference_7_load_6_reg_1907;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln112_fu_1144_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_1_fu_1174_p1;
wire   [63:0] p_cast_fu_1234_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln115_3_fu_1254_p1;
wire   [63:0] zext_ln115_5_fu_1273_p1;
wire   [63:0] zext_ln115_fu_1382_p1;
wire   [63:0] zext_ln115_2_fu_1401_p1;
wire   [63:0] zext_ln115_4_fu_1422_p1;
wire   [63:0] zext_ln115_6_fu_1442_p1;
reg   [6:0] j_fu_146;
wire   [6:0] add_ln114_fu_1285_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_150;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [4:0] indvar_flatten_fu_154;
wire   [4:0] add_ln113_fu_1092_p2;
reg   [4:0] ap_sig_allocacmp_indvar_flatten_load;
reg    output_difference_0_ce1_local;
reg   [2:0] output_difference_0_address1_local;
reg    output_difference_0_ce0_local;
reg   [2:0] output_difference_0_address0_local;
reg    output_difference_1_ce1_local;
reg   [2:0] output_difference_1_address1_local;
reg    output_difference_1_ce0_local;
reg   [2:0] output_difference_1_address0_local;
reg    output_difference_2_ce1_local;
reg   [2:0] output_difference_2_address1_local;
reg    output_difference_2_ce0_local;
reg   [2:0] output_difference_2_address0_local;
reg    output_difference_3_ce1_local;
reg   [2:0] output_difference_3_address1_local;
reg    output_difference_3_ce0_local;
reg   [2:0] output_difference_3_address0_local;
reg    output_difference_4_ce1_local;
reg   [2:0] output_difference_4_address1_local;
reg    output_difference_4_ce0_local;
reg   [2:0] output_difference_4_address0_local;
reg    output_difference_5_ce1_local;
reg   [2:0] output_difference_5_address1_local;
reg    output_difference_5_ce0_local;
reg   [2:0] output_difference_5_address0_local;
reg    output_difference_6_ce1_local;
reg   [2:0] output_difference_6_address1_local;
reg    output_difference_6_ce0_local;
reg   [2:0] output_difference_6_address0_local;
reg    output_difference_7_ce1_local;
reg   [2:0] output_difference_7_address1_local;
reg    output_difference_7_ce0_local;
reg   [2:0] output_difference_7_address0_local;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    training_data_4_ce0_local;
reg    training_data_5_ce0_local;
reg    training_data_6_ce0_local;
reg    training_data_7_ce0_local;
reg    delta_weights1_0_we1_local;
reg    delta_weights1_0_ce1_local;
reg   [6:0] delta_weights1_0_address1_local;
reg    delta_weights1_0_we0_local;
reg    delta_weights1_0_ce0_local;
reg   [6:0] delta_weights1_0_address0_local;
reg    delta_weights1_1_we1_local;
reg    delta_weights1_1_ce1_local;
reg   [6:0] delta_weights1_1_address1_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg   [6:0] delta_weights1_1_address0_local;
reg    delta_weights1_2_we1_local;
reg    delta_weights1_2_ce1_local;
reg   [6:0] delta_weights1_2_address1_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg   [6:0] delta_weights1_2_address0_local;
reg    delta_weights1_3_we1_local;
reg    delta_weights1_3_ce1_local;
reg   [6:0] delta_weights1_3_address1_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg   [6:0] delta_weights1_3_address0_local;
reg    delta_weights1_4_we1_local;
reg    delta_weights1_4_ce1_local;
reg   [6:0] delta_weights1_4_address1_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg   [6:0] delta_weights1_4_address0_local;
reg    delta_weights1_5_we1_local;
reg    delta_weights1_5_ce1_local;
reg   [6:0] delta_weights1_5_address1_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg   [6:0] delta_weights1_5_address0_local;
reg    delta_weights1_6_we1_local;
reg    delta_weights1_6_ce1_local;
reg   [6:0] delta_weights1_6_address1_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg   [6:0] delta_weights1_6_address0_local;
reg    delta_weights1_7_we1_local;
reg    delta_weights1_7_ce1_local;
reg   [6:0] delta_weights1_7_address1_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
reg   [6:0] delta_weights1_7_address0_local;
reg   [63:0] grp_fu_924_p1;
reg   [63:0] grp_fu_928_p1;
reg   [63:0] grp_fu_932_p1;
reg   [63:0] grp_fu_936_p1;
reg   [63:0] grp_fu_940_p1;
reg   [63:0] grp_fu_944_p1;
reg   [63:0] grp_fu_948_p1;
reg   [63:0] grp_fu_952_p1;
reg   [63:0] grp_fu_956_p1;
reg   [63:0] grp_fu_960_p1;
reg   [63:0] grp_fu_964_p1;
reg   [63:0] grp_fu_968_p1;
reg   [63:0] grp_fu_972_p1;
reg   [63:0] grp_fu_976_p1;
reg   [63:0] grp_fu_980_p1;
reg   [63:0] grp_fu_984_p1;
wire   [0:0] tmp_22_fu_1104_p3;
wire   [3:0] add_ln113_1_fu_1120_p2;
wire   [2:0] or_ln_fu_1166_p3;
wire   [11:0] zext_ln113_fu_1212_p1;
wire   [11:0] p_sum_fu_1215_p2;
wire   [8:0] tmp_s_fu_1224_p4;
wire   [2:0] or_ln115_1_fu_1246_p4;
wire   [2:0] or_ln115_2_fu_1266_p3;
wire   [63:0] tmp_fu_1327_p2;
wire   [63:0] tmp_fu_1327_p4;
wire   [63:0] tmp_fu_1327_p6;
wire   [63:0] tmp_fu_1327_p8;
wire   [63:0] tmp_fu_1327_p10;
wire   [63:0] tmp_fu_1327_p12;
wire   [63:0] tmp_fu_1327_p14;
wire   [63:0] tmp_fu_1327_p16;
wire   [63:0] tmp_fu_1327_p17;
wire   [6:0] zext_ln112_1_fu_1373_p1;
wire   [6:0] p_udiv_fu_1366_p3;
wire   [6:0] add_ln115_1_fu_1393_p4;
wire   [6:0] add_ln115_2_fu_1413_p5;
wire   [6:0] add_ln115_3_fu_1434_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_fu_1327_p1;
wire   [2:0] tmp_fu_1327_p3;
wire   [2:0] tmp_fu_1327_p5;
wire   [2:0] tmp_fu_1327_p7;
wire  signed [2:0] tmp_fu_1327_p9;
wire  signed [2:0] tmp_fu_1327_p11;
wire  signed [2:0] tmp_fu_1327_p13;
wire  signed [2:0] tmp_fu_1327_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_146 = 7'd0;
#0 i_fu_150 = 4'd0;
#0 indvar_flatten_fu_154 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U621(.din0(tmp_fu_1327_p2),.din1(tmp_fu_1327_p4),.din2(tmp_fu_1327_p6),.din3(tmp_fu_1327_p8),.din4(tmp_fu_1327_p10),.din5(tmp_fu_1327_p12),.din6(tmp_fu_1327_p14),.din7(tmp_fu_1327_p16),.def(tmp_fu_1327_p17),.sel(empty_reg_1602),.dout(tmp_fu_1327_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1086_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_150 <= select_ln113_fu_1126_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_150 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_1086_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_154 <= add_ln113_fu_1092_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_154 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_146 <= 7'd0;
    end else if (((icmp_ln113_reg_1480 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_146 <= add_ln114_fu_1285_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln115_reg_1827 <= add_ln115_fu_1376_p2;
        add_ln115_reg_1827_pp0_iter2_reg <= add_ln115_reg_1827;
        add_ln115_reg_1827_pp0_iter3_reg <= add_ln115_reg_1827_pp0_iter2_reg;
        add_ln115_reg_1827_pp0_iter4_reg <= add_ln115_reg_1827_pp0_iter3_reg;
        icmp_ln113_reg_1480 <= icmp_ln113_fu_1086_p2;
        lshr_ln_reg_1498 <= {{select_ln112_fu_1112_p3[6:3]}};
        select_ln112_reg_1484 <= select_ln112_fu_1112_p3;
        select_ln113_reg_1489 <= select_ln113_fu_1126_p3;
        select_ln113_reg_1489_pp0_iter1_reg <= select_ln113_reg_1489;
        select_ln113_reg_1489_pp0_iter2_reg <= select_ln113_reg_1489_pp0_iter1_reg;
        select_ln113_reg_1489_pp0_iter3_reg <= select_ln113_reg_1489_pp0_iter2_reg;
        select_ln113_reg_1489_pp0_iter4_reg <= select_ln113_reg_1489_pp0_iter3_reg;
        select_ln113_reg_1489_pp0_iter5_reg <= select_ln113_reg_1489_pp0_iter4_reg;
        tmp_23_reg_1588 <= select_ln112_fu_1112_p3[32'd5];
        tmp_23_reg_1588_pp0_iter1_reg <= tmp_23_reg_1588;
        tmp_23_reg_1588_pp0_iter2_reg <= tmp_23_reg_1588_pp0_iter1_reg;
        tmp_23_reg_1588_pp0_iter3_reg <= tmp_23_reg_1588_pp0_iter2_reg;
        tmp_23_reg_1588_pp0_iter4_reg <= tmp_23_reg_1588_pp0_iter3_reg;
        tmp_23_reg_1588_pp0_iter5_reg <= tmp_23_reg_1588_pp0_iter4_reg;
        tmp_24_reg_1596 <= select_ln112_fu_1112_p3[32'd3];
        tmp_24_reg_1596_pp0_iter1_reg <= tmp_24_reg_1596;
        tmp_24_reg_1596_pp0_iter2_reg <= tmp_24_reg_1596_pp0_iter1_reg;
        tmp_24_reg_1596_pp0_iter3_reg <= tmp_24_reg_1596_pp0_iter2_reg;
        tmp_24_reg_1596_pp0_iter4_reg <= tmp_24_reg_1596_pp0_iter3_reg;
        tmp_24_reg_1596_pp0_iter5_reg <= tmp_24_reg_1596_pp0_iter4_reg;
        tmp_55_reg_1543 <= {{select_ln112_fu_1112_p3[5:4]}};
        tmp_55_reg_1543_pp0_iter1_reg <= tmp_55_reg_1543;
        tmp_55_reg_1543_pp0_iter2_reg <= tmp_55_reg_1543_pp0_iter1_reg;
        tmp_55_reg_1543_pp0_iter3_reg <= tmp_55_reg_1543_pp0_iter2_reg;
        tmp_55_reg_1543_pp0_iter4_reg <= tmp_55_reg_1543_pp0_iter3_reg;
        tmp_reg_1807 <= tmp_fu_1327_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        empty_reg_1602 <= empty_fu_1220_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        output_difference_0_load_4_reg_1767 <= output_difference_0_q0;
        output_difference_0_load_reg_1647 <= output_difference_0_q1;
        output_difference_1_load_4_reg_1772 <= output_difference_1_q0;
        output_difference_1_load_reg_1732 <= output_difference_1_q1;
        output_difference_2_load_4_reg_1777 <= output_difference_2_q0;
        output_difference_2_load_reg_1737 <= output_difference_2_q1;
        output_difference_3_load_4_reg_1782 <= output_difference_3_q0;
        output_difference_3_load_reg_1742 <= output_difference_3_q1;
        output_difference_4_load_4_reg_1787 <= output_difference_4_q0;
        output_difference_4_load_reg_1747 <= output_difference_4_q1;
        output_difference_5_load_4_reg_1792 <= output_difference_5_q0;
        output_difference_5_load_reg_1752 <= output_difference_5_q1;
        output_difference_6_load_4_reg_1797 <= output_difference_6_q0;
        output_difference_6_load_reg_1757 <= output_difference_6_q1;
        output_difference_7_load_4_reg_1802 <= output_difference_7_q0;
        output_difference_7_load_reg_1762 <= output_difference_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_load_5_reg_1832 <= output_difference_0_q1;
        output_difference_0_load_6_reg_1872 <= output_difference_0_q0;
        output_difference_1_load_5_reg_1837 <= output_difference_1_q1;
        output_difference_1_load_6_reg_1877 <= output_difference_1_q0;
        output_difference_2_load_5_reg_1842 <= output_difference_2_q1;
        output_difference_2_load_6_reg_1882 <= output_difference_2_q0;
        output_difference_3_load_5_reg_1847 <= output_difference_3_q1;
        output_difference_3_load_6_reg_1887 <= output_difference_3_q0;
        output_difference_4_load_5_reg_1852 <= output_difference_4_q1;
        output_difference_4_load_6_reg_1892 <= output_difference_4_q0;
        output_difference_5_load_5_reg_1857 <= output_difference_5_q1;
        output_difference_5_load_6_reg_1897 <= output_difference_5_q0;
        output_difference_6_load_5_reg_1862 <= output_difference_6_q1;
        output_difference_6_load_6_reg_1902 <= output_difference_6_q0;
        output_difference_7_load_5_reg_1867 <= output_difference_7_q1;
        output_difference_7_load_6_reg_1907 <= output_difference_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_1003 <= grp_fu_3592_p_dout0;
        reg_1008 <= grp_fu_3596_p_dout0;
        reg_1013 <= grp_fu_3600_p_dout0;
        reg_1018 <= grp_fu_3604_p_dout0;
        reg_1023 <= grp_fu_3608_p_dout0;
        reg_1028 <= grp_fu_3612_p_dout0;
        reg_1033 <= grp_fu_3616_p_dout0;
        reg_1038 <= grp_fu_3620_p_dout0;
        reg_1043 <= grp_fu_3624_p_dout0;
        reg_1048 <= grp_fu_3628_p_dout0;
        reg_1053 <= grp_fu_3632_p_dout0;
        reg_1058 <= grp_fu_3636_p_dout0;
        reg_1063 <= grp_fu_3640_p_dout0;
        reg_988 <= grp_fu_3580_p_dout0;
        reg_993 <= grp_fu_3584_p_dout0;
        reg_998 <= grp_fu_3588_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln113_reg_1480 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_150;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_154;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_146;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_0_address0_local = zext_ln115_6_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_0_address0_local = zext_ln115_2_fu_1401_p1;
        end else begin
            delta_weights1_0_address0_local = 'bx;
        end
    end else begin
        delta_weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_0_address1_local = zext_ln115_4_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_0_address1_local = zext_ln115_fu_1382_p1;
        end else begin
            delta_weights1_0_address1_local = 'bx;
        end
    end else begin
        delta_weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_1_address0_local = zext_ln115_6_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_1_address0_local = zext_ln115_2_fu_1401_p1;
        end else begin
            delta_weights1_1_address0_local = 'bx;
        end
    end else begin
        delta_weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_1_address1_local = zext_ln115_4_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_1_address1_local = zext_ln115_fu_1382_p1;
        end else begin
            delta_weights1_1_address1_local = 'bx;
        end
    end else begin
        delta_weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_2_address0_local = zext_ln115_6_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_2_address0_local = zext_ln115_2_fu_1401_p1;
        end else begin
            delta_weights1_2_address0_local = 'bx;
        end
    end else begin
        delta_weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_2_address1_local = zext_ln115_4_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_2_address1_local = zext_ln115_fu_1382_p1;
        end else begin
            delta_weights1_2_address1_local = 'bx;
        end
    end else begin
        delta_weights1_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_3_address0_local = zext_ln115_6_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_3_address0_local = zext_ln115_2_fu_1401_p1;
        end else begin
            delta_weights1_3_address0_local = 'bx;
        end
    end else begin
        delta_weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_3_address1_local = zext_ln115_4_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_3_address1_local = zext_ln115_fu_1382_p1;
        end else begin
            delta_weights1_3_address1_local = 'bx;
        end
    end else begin
        delta_weights1_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_4_address0_local = zext_ln115_6_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_4_address0_local = zext_ln115_2_fu_1401_p1;
        end else begin
            delta_weights1_4_address0_local = 'bx;
        end
    end else begin
        delta_weights1_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_4_address1_local = zext_ln115_4_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_4_address1_local = zext_ln115_fu_1382_p1;
        end else begin
            delta_weights1_4_address1_local = 'bx;
        end
    end else begin
        delta_weights1_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_4_ce1_local = 1'b1;
    end else begin
        delta_weights1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_4_we1_local = 1'b1;
    end else begin
        delta_weights1_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_5_address0_local = zext_ln115_6_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_5_address0_local = zext_ln115_2_fu_1401_p1;
        end else begin
            delta_weights1_5_address0_local = 'bx;
        end
    end else begin
        delta_weights1_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_5_address1_local = zext_ln115_4_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_5_address1_local = zext_ln115_fu_1382_p1;
        end else begin
            delta_weights1_5_address1_local = 'bx;
        end
    end else begin
        delta_weights1_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_5_ce1_local = 1'b1;
    end else begin
        delta_weights1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_5_we1_local = 1'b1;
    end else begin
        delta_weights1_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_6_address0_local = zext_ln115_6_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_6_address0_local = zext_ln115_2_fu_1401_p1;
        end else begin
            delta_weights1_6_address0_local = 'bx;
        end
    end else begin
        delta_weights1_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_6_address1_local = zext_ln115_4_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_6_address1_local = zext_ln115_fu_1382_p1;
        end else begin
            delta_weights1_6_address1_local = 'bx;
        end
    end else begin
        delta_weights1_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_6_ce1_local = 1'b1;
    end else begin
        delta_weights1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_6_we1_local = 1'b1;
    end else begin
        delta_weights1_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_7_address0_local = zext_ln115_6_fu_1442_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_7_address0_local = zext_ln115_2_fu_1401_p1;
        end else begin
            delta_weights1_7_address0_local = 'bx;
        end
    end else begin
        delta_weights1_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_7_address1_local = zext_ln115_4_fu_1422_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_7_address1_local = zext_ln115_fu_1382_p1;
        end else begin
            delta_weights1_7_address1_local = 'bx;
        end
    end else begin
        delta_weights1_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_7_ce1_local = 1'b1;
    end else begin
        delta_weights1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_7_we1_local = 1'b1;
    end else begin
        delta_weights1_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_924_p1 = output_difference_0_load_5_reg_1832;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_924_p1 = output_difference_0_load_reg_1647;
    end else begin
        grp_fu_924_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_928_p1 = output_difference_1_load_5_reg_1837;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_928_p1 = output_difference_1_load_reg_1732;
    end else begin
        grp_fu_928_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_932_p1 = output_difference_2_load_5_reg_1842;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_932_p1 = output_difference_2_load_reg_1737;
    end else begin
        grp_fu_932_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_936_p1 = output_difference_3_load_5_reg_1847;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_936_p1 = output_difference_3_load_reg_1742;
    end else begin
        grp_fu_936_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_940_p1 = output_difference_4_load_5_reg_1852;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_940_p1 = output_difference_4_load_reg_1747;
    end else begin
        grp_fu_940_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_944_p1 = output_difference_5_load_5_reg_1857;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_944_p1 = output_difference_5_load_reg_1752;
    end else begin
        grp_fu_944_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_948_p1 = output_difference_6_load_5_reg_1862;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_948_p1 = output_difference_6_load_reg_1757;
    end else begin
        grp_fu_948_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_952_p1 = output_difference_7_load_5_reg_1867;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_952_p1 = output_difference_7_load_reg_1762;
    end else begin
        grp_fu_952_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_956_p1 = output_difference_0_load_6_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_956_p1 = output_difference_0_load_4_reg_1767;
    end else begin
        grp_fu_956_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_960_p1 = output_difference_1_load_6_reg_1877;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_960_p1 = output_difference_1_load_4_reg_1772;
    end else begin
        grp_fu_960_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_964_p1 = output_difference_2_load_6_reg_1882;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_964_p1 = output_difference_2_load_4_reg_1777;
    end else begin
        grp_fu_964_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_968_p1 = output_difference_3_load_6_reg_1887;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_968_p1 = output_difference_3_load_4_reg_1782;
    end else begin
        grp_fu_968_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_972_p1 = output_difference_4_load_6_reg_1892;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_972_p1 = output_difference_4_load_4_reg_1787;
    end else begin
        grp_fu_972_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_976_p1 = output_difference_5_load_6_reg_1897;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_976_p1 = output_difference_5_load_4_reg_1792;
    end else begin
        grp_fu_976_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_980_p1 = output_difference_6_load_6_reg_1902;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_980_p1 = output_difference_6_load_4_reg_1797;
    end else begin
        grp_fu_980_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_984_p1 = output_difference_7_load_6_reg_1907;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_984_p1 = output_difference_7_load_4_reg_1802;
    end else begin
        grp_fu_984_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address0_local = zext_ln115_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address0_local = zext_ln115_1_fu_1174_p1;
        end else begin
            output_difference_0_address0_local = 'bx;
        end
    end else begin
        output_difference_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_0_address1_local = zext_ln115_3_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_0_address1_local = zext_ln112_fu_1144_p1;
        end else begin
            output_difference_0_address1_local = 'bx;
        end
    end else begin
        output_difference_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address0_local = zext_ln115_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address0_local = zext_ln115_1_fu_1174_p1;
        end else begin
            output_difference_1_address0_local = 'bx;
        end
    end else begin
        output_difference_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_1_address1_local = zext_ln115_3_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_1_address1_local = zext_ln112_fu_1144_p1;
        end else begin
            output_difference_1_address1_local = 'bx;
        end
    end else begin
        output_difference_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_2_address0_local = zext_ln115_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_address0_local = zext_ln115_1_fu_1174_p1;
        end else begin
            output_difference_2_address0_local = 'bx;
        end
    end else begin
        output_difference_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_2_address1_local = zext_ln115_3_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_2_address1_local = zext_ln112_fu_1144_p1;
        end else begin
            output_difference_2_address1_local = 'bx;
        end
    end else begin
        output_difference_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_3_address0_local = zext_ln115_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_3_address0_local = zext_ln115_1_fu_1174_p1;
        end else begin
            output_difference_3_address0_local = 'bx;
        end
    end else begin
        output_difference_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_3_address1_local = zext_ln115_3_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_3_address1_local = zext_ln112_fu_1144_p1;
        end else begin
            output_difference_3_address1_local = 'bx;
        end
    end else begin
        output_difference_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_4_address0_local = zext_ln115_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_4_address0_local = zext_ln115_1_fu_1174_p1;
        end else begin
            output_difference_4_address0_local = 'bx;
        end
    end else begin
        output_difference_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_4_address1_local = zext_ln115_3_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_4_address1_local = zext_ln112_fu_1144_p1;
        end else begin
            output_difference_4_address1_local = 'bx;
        end
    end else begin
        output_difference_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_4_ce1_local = 1'b1;
    end else begin
        output_difference_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_5_address0_local = zext_ln115_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_5_address0_local = zext_ln115_1_fu_1174_p1;
        end else begin
            output_difference_5_address0_local = 'bx;
        end
    end else begin
        output_difference_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_5_address1_local = zext_ln115_3_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_5_address1_local = zext_ln112_fu_1144_p1;
        end else begin
            output_difference_5_address1_local = 'bx;
        end
    end else begin
        output_difference_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_5_ce1_local = 1'b1;
    end else begin
        output_difference_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_6_address0_local = zext_ln115_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_6_address0_local = zext_ln115_1_fu_1174_p1;
        end else begin
            output_difference_6_address0_local = 'bx;
        end
    end else begin
        output_difference_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_6_address1_local = zext_ln115_3_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_6_address1_local = zext_ln112_fu_1144_p1;
        end else begin
            output_difference_6_address1_local = 'bx;
        end
    end else begin
        output_difference_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_6_ce1_local = 1'b1;
    end else begin
        output_difference_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_7_address0_local = zext_ln115_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_7_address0_local = zext_ln115_1_fu_1174_p1;
        end else begin
            output_difference_7_address0_local = 'bx;
        end
    end else begin
        output_difference_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            output_difference_7_address1_local = zext_ln115_3_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            output_difference_7_address1_local = zext_ln112_fu_1144_p1;
        end else begin
            output_difference_7_address1_local = 'bx;
        end
    end else begin
        output_difference_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        output_difference_7_ce1_local = 1'b1;
    end else begin
        output_difference_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln113_1_fu_1120_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_1092_p2 = (ap_sig_allocacmp_indvar_flatten_load + 5'd1);
assign add_ln114_fu_1285_p2 = (select_ln112_reg_1484 + 7'd32);
assign add_ln115_1_fu_1393_p4 = {{{select_ln113_reg_1489_pp0_iter4_reg}, {tmp_55_reg_1543_pp0_iter4_reg}}, {1'd1}};
assign add_ln115_2_fu_1413_p5 = {{{{select_ln113_reg_1489_pp0_iter5_reg}, {tmp_23_reg_1588_pp0_iter5_reg}}, {1'd1}}, {tmp_24_reg_1596_pp0_iter5_reg}};
assign add_ln115_3_fu_1434_p4 = {{{select_ln113_reg_1489_pp0_iter5_reg}, {tmp_23_reg_1588_pp0_iter5_reg}}, {2'd3}};
assign add_ln115_fu_1376_p2 = (zext_ln112_1_fu_1373_p1 + p_udiv_fu_1366_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = delta_weights1_0_address0_local;
assign delta_weights1_0_address1 = delta_weights1_0_address1_local;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = reg_1028;
assign delta_weights1_0_d1 = reg_988;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_1_address0 = delta_weights1_1_address0_local;
assign delta_weights1_1_address1 = delta_weights1_1_address1_local;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = reg_1033;
assign delta_weights1_1_d1 = reg_993;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_2_address0 = delta_weights1_2_address0_local;
assign delta_weights1_2_address1 = delta_weights1_2_address1_local;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = reg_1038;
assign delta_weights1_2_d1 = reg_998;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_3_address0 = delta_weights1_3_address0_local;
assign delta_weights1_3_address1 = delta_weights1_3_address1_local;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = reg_1043;
assign delta_weights1_3_d1 = reg_1003;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_4_address0 = delta_weights1_4_address0_local;
assign delta_weights1_4_address1 = delta_weights1_4_address1_local;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_ce1 = delta_weights1_4_ce1_local;
assign delta_weights1_4_d0 = reg_1048;
assign delta_weights1_4_d1 = reg_1008;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_4_we1 = delta_weights1_4_we1_local;
assign delta_weights1_5_address0 = delta_weights1_5_address0_local;
assign delta_weights1_5_address1 = delta_weights1_5_address1_local;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_ce1 = delta_weights1_5_ce1_local;
assign delta_weights1_5_d0 = reg_1053;
assign delta_weights1_5_d1 = reg_1013;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_5_we1 = delta_weights1_5_we1_local;
assign delta_weights1_6_address0 = delta_weights1_6_address0_local;
assign delta_weights1_6_address1 = delta_weights1_6_address1_local;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_ce1 = delta_weights1_6_ce1_local;
assign delta_weights1_6_d0 = reg_1058;
assign delta_weights1_6_d1 = reg_1018;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_6_we1 = delta_weights1_6_we1_local;
assign delta_weights1_7_address0 = delta_weights1_7_address0_local;
assign delta_weights1_7_address1 = delta_weights1_7_address1_local;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_ce1 = delta_weights1_7_ce1_local;
assign delta_weights1_7_d0 = reg_1063;
assign delta_weights1_7_d1 = reg_1023;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_7_we1 = delta_weights1_7_we1_local;
assign empty_fu_1220_p1 = p_sum_fu_1215_p2[2:0];
assign grp_fu_3580_p_ce = 1'b1;
assign grp_fu_3580_p_din0 = tmp_reg_1807;
assign grp_fu_3580_p_din1 = grp_fu_924_p1;
assign grp_fu_3584_p_ce = 1'b1;
assign grp_fu_3584_p_din0 = tmp_reg_1807;
assign grp_fu_3584_p_din1 = grp_fu_928_p1;
assign grp_fu_3588_p_ce = 1'b1;
assign grp_fu_3588_p_din0 = tmp_reg_1807;
assign grp_fu_3588_p_din1 = grp_fu_932_p1;
assign grp_fu_3592_p_ce = 1'b1;
assign grp_fu_3592_p_din0 = tmp_reg_1807;
assign grp_fu_3592_p_din1 = grp_fu_936_p1;
assign grp_fu_3596_p_ce = 1'b1;
assign grp_fu_3596_p_din0 = tmp_reg_1807;
assign grp_fu_3596_p_din1 = grp_fu_940_p1;
assign grp_fu_3600_p_ce = 1'b1;
assign grp_fu_3600_p_din0 = tmp_reg_1807;
assign grp_fu_3600_p_din1 = grp_fu_944_p1;
assign grp_fu_3604_p_ce = 1'b1;
assign grp_fu_3604_p_din0 = tmp_reg_1807;
assign grp_fu_3604_p_din1 = grp_fu_948_p1;
assign grp_fu_3608_p_ce = 1'b1;
assign grp_fu_3608_p_din0 = tmp_reg_1807;
assign grp_fu_3608_p_din1 = grp_fu_952_p1;
assign grp_fu_3612_p_ce = 1'b1;
assign grp_fu_3612_p_din0 = tmp_reg_1807;
assign grp_fu_3612_p_din1 = grp_fu_956_p1;
assign grp_fu_3616_p_ce = 1'b1;
assign grp_fu_3616_p_din0 = tmp_reg_1807;
assign grp_fu_3616_p_din1 = grp_fu_960_p1;
assign grp_fu_3620_p_ce = 1'b1;
assign grp_fu_3620_p_din0 = tmp_reg_1807;
assign grp_fu_3620_p_din1 = grp_fu_964_p1;
assign grp_fu_3624_p_ce = 1'b1;
assign grp_fu_3624_p_din0 = tmp_reg_1807;
assign grp_fu_3624_p_din1 = grp_fu_968_p1;
assign grp_fu_3628_p_ce = 1'b1;
assign grp_fu_3628_p_din0 = tmp_reg_1807;
assign grp_fu_3628_p_din1 = grp_fu_972_p1;
assign grp_fu_3632_p_ce = 1'b1;
assign grp_fu_3632_p_din0 = tmp_reg_1807;
assign grp_fu_3632_p_din1 = grp_fu_976_p1;
assign grp_fu_3636_p_ce = 1'b1;
assign grp_fu_3636_p_din0 = tmp_reg_1807;
assign grp_fu_3636_p_din1 = grp_fu_980_p1;
assign grp_fu_3640_p_ce = 1'b1;
assign grp_fu_3640_p_din0 = tmp_reg_1807;
assign grp_fu_3640_p_din1 = grp_fu_984_p1;
assign icmp_ln113_fu_1086_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 5'd26) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1134_p4 = {{select_ln112_fu_1112_p3[6:3]}};
assign or_ln115_1_fu_1246_p4 = {{{tmp_23_reg_1588}, {1'd1}}, {tmp_24_reg_1596}};
assign or_ln115_2_fu_1266_p3 = {{tmp_23_reg_1588}, {2'd3}};
assign or_ln_fu_1166_p3 = {{tmp_55_fu_1156_p4}, {1'd1}};
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
assign output_difference_4_address0 = output_difference_4_address0_local;
assign output_difference_4_address1 = output_difference_4_address1_local;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_4_ce1 = output_difference_4_ce1_local;
assign output_difference_5_address0 = output_difference_5_address0_local;
assign output_difference_5_address1 = output_difference_5_address1_local;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_5_ce1 = output_difference_5_ce1_local;
assign output_difference_6_address0 = output_difference_6_address0_local;
assign output_difference_6_address1 = output_difference_6_address1_local;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_6_ce1 = output_difference_6_ce1_local;
assign output_difference_7_address0 = output_difference_7_address0_local;
assign output_difference_7_address1 = output_difference_7_address1_local;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_7_ce1 = output_difference_7_ce1_local;
assign p_cast_fu_1234_p1 = tmp_s_fu_1224_p4;
assign p_sum_fu_1215_p2 = (zext_ln113_fu_1212_p1 + idx);
assign p_udiv_fu_1366_p3 = {{select_ln113_reg_1489}, {3'd0}};
assign select_ln112_fu_1112_p3 = ((tmp_22_fu_1104_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_1126_p3 = ((tmp_22_fu_1104_p3[0:0] == 1'b1) ? add_ln113_1_fu_1120_p2 : ap_sig_allocacmp_i_load);
assign tmp_22_fu_1104_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_55_fu_1156_p4 = {{select_ln112_fu_1112_p3[5:4]}};
assign tmp_fu_1327_p10 = training_data_4_q0;
assign tmp_fu_1327_p12 = training_data_5_q0;
assign tmp_fu_1327_p14 = training_data_6_q0;
assign tmp_fu_1327_p16 = training_data_7_q0;
assign tmp_fu_1327_p17 = 'bx;
assign tmp_fu_1327_p2 = training_data_0_q0;
assign tmp_fu_1327_p4 = training_data_1_q0;
assign tmp_fu_1327_p6 = training_data_2_q0;
assign tmp_fu_1327_p8 = training_data_3_q0;
assign tmp_s_fu_1224_p4 = {{p_sum_fu_1215_p2[11:3]}};
assign training_data_0_address0 = p_cast_fu_1234_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast_fu_1234_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast_fu_1234_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast_fu_1234_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast_fu_1234_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast_fu_1234_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast_fu_1234_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast_fu_1234_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign zext_ln112_1_fu_1373_p1 = lshr_ln_reg_1498;
assign zext_ln112_fu_1144_p1 = lshr_ln_fu_1134_p4;
assign zext_ln113_fu_1212_p1 = select_ln113_reg_1489;
assign zext_ln115_1_fu_1174_p1 = or_ln_fu_1166_p3;
assign zext_ln115_2_fu_1401_p1 = add_ln115_1_fu_1393_p4;
assign zext_ln115_3_fu_1254_p1 = or_ln115_1_fu_1246_p4;
assign zext_ln115_4_fu_1422_p1 = add_ln115_2_fu_1413_p5;
assign zext_ln115_5_fu_1273_p1 = or_ln115_2_fu_1266_p3;
assign zext_ln115_6_fu_1442_p1 = add_ln115_3_fu_1434_p4;
assign zext_ln115_fu_1382_p1 = add_ln115_reg_1827_pp0_iter4_reg;
endmodule 