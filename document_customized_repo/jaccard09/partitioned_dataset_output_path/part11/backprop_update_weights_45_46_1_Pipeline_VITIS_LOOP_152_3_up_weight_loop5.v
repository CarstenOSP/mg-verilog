
module backprop_update_weights_45_46_1_Pipeline_VITIS_LOOP_152_3_up_weight_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_15_address0,weights2_15_ce0,weights2_15_we0,weights2_15_d0,weights2_15_q0,weights2_14_address0,weights2_14_ce0,weights2_14_we0,weights2_14_d0,weights2_14_q0,weights2_13_address0,weights2_13_ce0,weights2_13_we0,weights2_13_d0,weights2_13_q0,weights2_12_address0,weights2_12_ce0,weights2_12_we0,weights2_12_d0,weights2_12_q0,weights2_11_address0,weights2_11_ce0,weights2_11_we0,weights2_11_d0,weights2_11_q0,weights2_10_address0,weights2_10_ce0,weights2_10_we0,weights2_10_d0,weights2_10_q0,weights2_9_address0,weights2_9_ce0,weights2_9_we0,weights2_9_d0,weights2_9_q0,weights2_8_address0,weights2_8_ce0,weights2_8_we0,weights2_8_d0,weights2_8_q0,weights2_7_address0,weights2_7_ce0,weights2_7_we0,weights2_7_d0,weights2_7_q0,weights2_6_address0,weights2_6_ce0,weights2_6_we0,weights2_6_d0,weights2_6_q0,weights2_5_address0,weights2_5_ce0,weights2_5_we0,weights2_5_d0,weights2_5_q0,weights2_4_address0,weights2_4_ce0,weights2_4_we0,weights2_4_d0,weights2_4_q0,weights2_3_address0,weights2_3_ce0,weights2_3_we0,weights2_3_d0,weights2_3_q0,weights2_2_address0,weights2_2_ce0,weights2_2_we0,weights2_2_d0,weights2_2_q0,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,d_weights2_0_address0,d_weights2_0_ce0,d_weights2_0_q0,d_weights2_1_address0,d_weights2_1_ce0,d_weights2_1_q0,d_weights2_2_address0,d_weights2_2_ce0,d_weights2_2_q0,d_weights2_3_address0,d_weights2_3_ce0,d_weights2_3_q0,d_weights2_4_address0,d_weights2_4_ce0,d_weights2_4_q0,d_weights2_5_address0,d_weights2_5_ce0,d_weights2_5_q0,d_weights2_6_address0,d_weights2_6_ce0,d_weights2_6_q0,d_weights2_7_address0,d_weights2_7_ce0,d_weights2_7_q0,d_weights2_8_address0,d_weights2_8_ce0,d_weights2_8_q0,d_weights2_9_address0,d_weights2_9_ce0,d_weights2_9_q0,d_weights2_10_address0,d_weights2_10_ce0,d_weights2_10_q0,d_weights2_11_address0,d_weights2_11_ce0,d_weights2_11_q0,d_weights2_12_address0,d_weights2_12_ce0,d_weights2_12_q0,d_weights2_13_address0,d_weights2_13_ce0,d_weights2_13_q0,d_weights2_14_address0,d_weights2_14_ce0,d_weights2_14_q0,d_weights2_15_address0,d_weights2_15_ce0,d_weights2_15_q0,norm_4_out,norm_4_out_ap_vld,grp_fu_1139_p_din0,grp_fu_1139_p_din1,grp_fu_1139_p_opcode,grp_fu_1139_p_dout0,grp_fu_1139_p_ce,grp_fu_1143_p_din0,grp_fu_1143_p_din1,grp_fu_1143_p_dout0,grp_fu_1143_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] weights2_15_address0;
output   weights2_15_ce0;
output   weights2_15_we0;
output  [63:0] weights2_15_d0;
input  [63:0] weights2_15_q0;
output  [7:0] weights2_14_address0;
output   weights2_14_ce0;
output   weights2_14_we0;
output  [63:0] weights2_14_d0;
input  [63:0] weights2_14_q0;
output  [7:0] weights2_13_address0;
output   weights2_13_ce0;
output   weights2_13_we0;
output  [63:0] weights2_13_d0;
input  [63:0] weights2_13_q0;
output  [7:0] weights2_12_address0;
output   weights2_12_ce0;
output   weights2_12_we0;
output  [63:0] weights2_12_d0;
input  [63:0] weights2_12_q0;
output  [7:0] weights2_11_address0;
output   weights2_11_ce0;
output   weights2_11_we0;
output  [63:0] weights2_11_d0;
input  [63:0] weights2_11_q0;
output  [7:0] weights2_10_address0;
output   weights2_10_ce0;
output   weights2_10_we0;
output  [63:0] weights2_10_d0;
input  [63:0] weights2_10_q0;
output  [7:0] weights2_9_address0;
output   weights2_9_ce0;
output   weights2_9_we0;
output  [63:0] weights2_9_d0;
input  [63:0] weights2_9_q0;
output  [7:0] weights2_8_address0;
output   weights2_8_ce0;
output   weights2_8_we0;
output  [63:0] weights2_8_d0;
input  [63:0] weights2_8_q0;
output  [7:0] weights2_7_address0;
output   weights2_7_ce0;
output   weights2_7_we0;
output  [63:0] weights2_7_d0;
input  [63:0] weights2_7_q0;
output  [7:0] weights2_6_address0;
output   weights2_6_ce0;
output   weights2_6_we0;
output  [63:0] weights2_6_d0;
input  [63:0] weights2_6_q0;
output  [7:0] weights2_5_address0;
output   weights2_5_ce0;
output   weights2_5_we0;
output  [63:0] weights2_5_d0;
input  [63:0] weights2_5_q0;
output  [7:0] weights2_4_address0;
output   weights2_4_ce0;
output   weights2_4_we0;
output  [63:0] weights2_4_d0;
input  [63:0] weights2_4_q0;
output  [7:0] weights2_3_address0;
output   weights2_3_ce0;
output   weights2_3_we0;
output  [63:0] weights2_3_d0;
input  [63:0] weights2_3_q0;
output  [7:0] weights2_2_address0;
output   weights2_2_ce0;
output   weights2_2_we0;
output  [63:0] weights2_2_d0;
input  [63:0] weights2_2_q0;
output  [7:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [7:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [7:0] d_weights2_0_address0;
output   d_weights2_0_ce0;
input  [63:0] d_weights2_0_q0;
output  [7:0] d_weights2_1_address0;
output   d_weights2_1_ce0;
input  [63:0] d_weights2_1_q0;
output  [7:0] d_weights2_2_address0;
output   d_weights2_2_ce0;
input  [63:0] d_weights2_2_q0;
output  [7:0] d_weights2_3_address0;
output   d_weights2_3_ce0;
input  [63:0] d_weights2_3_q0;
output  [7:0] d_weights2_4_address0;
output   d_weights2_4_ce0;
input  [63:0] d_weights2_4_q0;
output  [7:0] d_weights2_5_address0;
output   d_weights2_5_ce0;
input  [63:0] d_weights2_5_q0;
output  [7:0] d_weights2_6_address0;
output   d_weights2_6_ce0;
input  [63:0] d_weights2_6_q0;
output  [7:0] d_weights2_7_address0;
output   d_weights2_7_ce0;
input  [63:0] d_weights2_7_q0;
output  [7:0] d_weights2_8_address0;
output   d_weights2_8_ce0;
input  [63:0] d_weights2_8_q0;
output  [7:0] d_weights2_9_address0;
output   d_weights2_9_ce0;
input  [63:0] d_weights2_9_q0;
output  [7:0] d_weights2_10_address0;
output   d_weights2_10_ce0;
input  [63:0] d_weights2_10_q0;
output  [7:0] d_weights2_11_address0;
output   d_weights2_11_ce0;
input  [63:0] d_weights2_11_q0;
output  [7:0] d_weights2_12_address0;
output   d_weights2_12_ce0;
input  [63:0] d_weights2_12_q0;
output  [7:0] d_weights2_13_address0;
output   d_weights2_13_ce0;
input  [63:0] d_weights2_13_q0;
output  [7:0] d_weights2_14_address0;
output   d_weights2_14_ce0;
input  [63:0] d_weights2_14_q0;
output  [7:0] d_weights2_15_address0;
output   d_weights2_15_ce0;
input  [63:0] d_weights2_15_q0;
output  [63:0] norm_4_out;
output   norm_4_out_ap_vld;
output  [63:0] grp_fu_1139_p_din0;
output  [63:0] grp_fu_1139_p_din1;
output  [1:0] grp_fu_1139_p_opcode;
input  [63:0] grp_fu_1139_p_dout0;
output   grp_fu_1139_p_ce;
output  [63:0] grp_fu_1143_p_din0;
output  [63:0] grp_fu_1143_p_din1;
input  [63:0] grp_fu_1143_p_dout0;
output   grp_fu_1143_p_ce;
reg ap_idle;
reg norm_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln152_reg_999;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln152_fu_623_p2;
reg   [0:0] icmp_ln152_reg_999_pp0_iter1_reg;
reg   [0:0] icmp_ln152_reg_999_pp0_iter2_reg;
reg   [0:0] icmp_ln152_reg_999_pp0_iter3_reg;
wire   [12:0] add_ln152_fu_629_p2;
reg   [12:0] add_ln152_reg_1003;
wire   [0:0] icmp_ln153_fu_638_p2;
reg   [0:0] icmp_ln153_reg_1008;
wire   [6:0] select_ln121_fu_644_p3;
reg   [6:0] select_ln121_reg_1013;
wire   [3:0] trunc_ln153_fu_652_p1;
reg   [3:0] trunc_ln153_reg_1018;
reg   [3:0] trunc_ln153_reg_1018_pp0_iter1_reg;
reg   [3:0] trunc_ln153_reg_1018_pp0_iter2_reg;
reg   [1:0] lshr_ln3_reg_1024;
wire   [63:0] zext_ln154_fu_693_p1;
reg   [63:0] zext_ln154_reg_1029;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_9_fu_732_p35;
reg   [63:0] tmp_9_reg_1129;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] weights2_0_addr_reg_1134;
reg   [7:0] weights2_0_addr_reg_1134_pp0_iter2_reg;
reg   [7:0] weights2_1_addr_reg_1139;
reg   [7:0] weights2_1_addr_reg_1139_pp0_iter2_reg;
reg   [7:0] weights2_2_addr_reg_1144;
reg   [7:0] weights2_2_addr_reg_1144_pp0_iter2_reg;
reg   [7:0] weights2_3_addr_reg_1149;
reg   [7:0] weights2_3_addr_reg_1149_pp0_iter2_reg;
reg   [7:0] weights2_4_addr_reg_1154;
reg   [7:0] weights2_4_addr_reg_1154_pp0_iter2_reg;
reg   [7:0] weights2_5_addr_reg_1159;
reg   [7:0] weights2_5_addr_reg_1159_pp0_iter2_reg;
reg   [7:0] weights2_6_addr_reg_1164;
reg   [7:0] weights2_6_addr_reg_1164_pp0_iter2_reg;
reg   [7:0] weights2_7_addr_reg_1169;
reg   [7:0] weights2_7_addr_reg_1169_pp0_iter2_reg;
reg   [7:0] weights2_8_addr_reg_1174;
reg   [7:0] weights2_8_addr_reg_1174_pp0_iter2_reg;
reg   [7:0] weights2_9_addr_reg_1179;
reg   [7:0] weights2_9_addr_reg_1179_pp0_iter2_reg;
reg   [7:0] weights2_10_addr_reg_1184;
reg   [7:0] weights2_10_addr_reg_1184_pp0_iter2_reg;
reg   [7:0] weights2_11_addr_reg_1189;
reg   [7:0] weights2_11_addr_reg_1189_pp0_iter2_reg;
reg   [7:0] weights2_12_addr_reg_1194;
reg   [7:0] weights2_12_addr_reg_1194_pp0_iter2_reg;
reg   [7:0] weights2_13_addr_reg_1199;
reg   [7:0] weights2_13_addr_reg_1199_pp0_iter2_reg;
reg   [7:0] weights2_14_addr_reg_1204;
reg   [7:0] weights2_14_addr_reg_1204_pp0_iter2_reg;
reg   [7:0] weights2_15_addr_reg_1209;
reg   [7:0] weights2_15_addr_reg_1209_pp0_iter2_reg;
reg   [63:0] mul5_reg_1214;
wire   [63:0] tmp_s_fu_867_p35;
reg   [63:0] tmp_s_reg_1219;
reg   [63:0] sub3_reg_1224;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] mul7_reg_1231;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_fu_152;
reg   [63:0] ap_sig_allocacmp_norm_load_2;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] j_fu_156;
wire   [6:0] add_ln153_fu_713_p2;
reg   [6:0] ap_sig_allocacmp_j_load;
wire    ap_block_pp0_stage0;
reg   [6:0] i_4_fu_160;
wire   [6:0] select_ln152_fu_675_p3;
reg   [12:0] indvar_flatten13_fu_164;
reg   [12:0] ap_sig_allocacmp_indvar_flatten13_load;
wire    ap_block_pp0_stage4_01001;
reg    d_weights2_0_ce0_local;
reg    d_weights2_1_ce0_local;
reg    d_weights2_2_ce0_local;
reg    d_weights2_3_ce0_local;
reg    d_weights2_4_ce0_local;
reg    d_weights2_5_ce0_local;
reg    d_weights2_6_ce0_local;
reg    d_weights2_7_ce0_local;
reg    d_weights2_8_ce0_local;
reg    d_weights2_9_ce0_local;
reg    d_weights2_10_ce0_local;
reg    d_weights2_11_ce0_local;
reg    d_weights2_12_ce0_local;
reg    d_weights2_13_ce0_local;
reg    d_weights2_14_ce0_local;
reg    d_weights2_15_ce0_local;
reg    weights2_0_ce0_local;
reg   [7:0] weights2_0_address0_local;
reg    weights2_0_we0_local;
wire   [63:0] bitcast_ln154_16_fu_938_p1;
reg    weights2_1_ce0_local;
reg   [7:0] weights2_1_address0_local;
reg    weights2_1_we0_local;
reg    weights2_2_ce0_local;
reg   [7:0] weights2_2_address0_local;
reg    weights2_2_we0_local;
reg    weights2_3_ce0_local;
reg   [7:0] weights2_3_address0_local;
reg    weights2_3_we0_local;
reg    weights2_4_ce0_local;
reg   [7:0] weights2_4_address0_local;
reg    weights2_4_we0_local;
reg    weights2_5_ce0_local;
reg   [7:0] weights2_5_address0_local;
reg    weights2_5_we0_local;
reg    weights2_6_ce0_local;
reg   [7:0] weights2_6_address0_local;
reg    weights2_6_we0_local;
reg    weights2_7_ce0_local;
reg   [7:0] weights2_7_address0_local;
reg    weights2_7_we0_local;
reg    weights2_8_ce0_local;
reg   [7:0] weights2_8_address0_local;
reg    weights2_8_we0_local;
reg    weights2_9_ce0_local;
reg   [7:0] weights2_9_address0_local;
reg    weights2_9_we0_local;
reg    weights2_10_ce0_local;
reg   [7:0] weights2_10_address0_local;
reg    weights2_10_we0_local;
reg    weights2_11_ce0_local;
reg   [7:0] weights2_11_address0_local;
reg    weights2_11_we0_local;
reg    weights2_12_ce0_local;
reg   [7:0] weights2_12_address0_local;
reg    weights2_12_we0_local;
reg    weights2_13_ce0_local;
reg   [7:0] weights2_13_address0_local;
reg    weights2_13_we0_local;
reg    weights2_14_ce0_local;
reg   [7:0] weights2_14_address0_local;
reg    weights2_14_we0_local;
reg    weights2_15_ce0_local;
reg   [7:0] weights2_15_address0_local;
reg    weights2_15_we0_local;
reg   [63:0] grp_fu_591_p0;
reg   [63:0] grp_fu_591_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_595_p0;
reg   [63:0] grp_fu_595_p1;
wire   [6:0] add_ln152_1_fu_669_p2;
wire   [5:0] trunc_ln154_fu_682_p1;
wire   [7:0] add_ln_fu_686_p3;
wire   [63:0] tmp_9_fu_732_p33;
wire    ap_block_pp0_stage2;
wire   [63:0] tmp_s_fu_867_p2;
wire   [63:0] tmp_s_fu_867_p4;
wire   [63:0] tmp_s_fu_867_p6;
wire   [63:0] tmp_s_fu_867_p8;
wire   [63:0] tmp_s_fu_867_p10;
wire   [63:0] tmp_s_fu_867_p12;
wire   [63:0] tmp_s_fu_867_p14;
wire   [63:0] tmp_s_fu_867_p16;
wire   [63:0] tmp_s_fu_867_p18;
wire   [63:0] tmp_s_fu_867_p20;
wire   [63:0] tmp_s_fu_867_p22;
wire   [63:0] tmp_s_fu_867_p24;
wire   [63:0] tmp_s_fu_867_p26;
wire   [63:0] tmp_s_fu_867_p28;
wire   [63:0] tmp_s_fu_867_p30;
wire   [63:0] tmp_s_fu_867_p32;
wire   [63:0] tmp_s_fu_867_p33;
reg   [1:0] grp_fu_591_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_9_fu_732_p1;
wire   [3:0] tmp_9_fu_732_p3;
wire   [3:0] tmp_9_fu_732_p5;
wire   [3:0] tmp_9_fu_732_p7;
wire   [3:0] tmp_9_fu_732_p9;
wire   [3:0] tmp_9_fu_732_p11;
wire   [3:0] tmp_9_fu_732_p13;
wire   [3:0] tmp_9_fu_732_p15;
wire  signed [3:0] tmp_9_fu_732_p17;
wire  signed [3:0] tmp_9_fu_732_p19;
wire  signed [3:0] tmp_9_fu_732_p21;
wire  signed [3:0] tmp_9_fu_732_p23;
wire  signed [3:0] tmp_9_fu_732_p25;
wire  signed [3:0] tmp_9_fu_732_p27;
wire  signed [3:0] tmp_9_fu_732_p29;
wire  signed [3:0] tmp_9_fu_732_p31;
wire   [3:0] tmp_s_fu_867_p1;
wire   [3:0] tmp_s_fu_867_p3;
wire   [3:0] tmp_s_fu_867_p5;
wire   [3:0] tmp_s_fu_867_p7;
wire   [3:0] tmp_s_fu_867_p9;
wire   [3:0] tmp_s_fu_867_p11;
wire   [3:0] tmp_s_fu_867_p13;
wire   [3:0] tmp_s_fu_867_p15;
wire  signed [3:0] tmp_s_fu_867_p17;
wire  signed [3:0] tmp_s_fu_867_p19;
wire  signed [3:0] tmp_s_fu_867_p21;
wire  signed [3:0] tmp_s_fu_867_p23;
wire  signed [3:0] tmp_s_fu_867_p25;
wire  signed [3:0] tmp_s_fu_867_p27;
wire  signed [3:0] tmp_s_fu_867_p29;
wire  signed [3:0] tmp_s_fu_867_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_152 = 64'd0;
#0 j_fu_156 = 7'd0;
#0 i_4_fu_160 = 7'd0;
#0 indvar_flatten13_fu_164 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U977(.din0(d_weights2_0_q0),.din1(d_weights2_1_q0),.din2(d_weights2_2_q0),.din3(d_weights2_3_q0),.din4(d_weights2_4_q0),.din5(d_weights2_5_q0),.din6(d_weights2_6_q0),.din7(d_weights2_7_q0),.din8(d_weights2_8_q0),.din9(d_weights2_9_q0),.din10(d_weights2_10_q0),.din11(d_weights2_11_q0),.din12(d_weights2_12_q0),.din13(d_weights2_13_q0),.din14(d_weights2_14_q0),.din15(d_weights2_15_q0),.def(tmp_9_fu_732_p33),.sel(trunc_ln153_reg_1018),.dout(tmp_9_fu_732_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U978(.din0(tmp_s_fu_867_p2),.din1(tmp_s_fu_867_p4),.din2(tmp_s_fu_867_p6),.din3(tmp_s_fu_867_p8),.din4(tmp_s_fu_867_p10),.din5(tmp_s_fu_867_p12),.din6(tmp_s_fu_867_p14),.din7(tmp_s_fu_867_p16),.din8(tmp_s_fu_867_p18),.din9(tmp_s_fu_867_p20),.din10(tmp_s_fu_867_p22),.din11(tmp_s_fu_867_p24),.din12(tmp_s_fu_867_p26),.din13(tmp_s_fu_867_p28),.din14(tmp_s_fu_867_p30),.din15(tmp_s_fu_867_p32),.def(tmp_s_fu_867_p33),.sel(trunc_ln153_reg_1018_pp0_iter1_reg),.dout(tmp_s_fu_867_p35));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_4_fu_160 <= 7'd0;
    end else if (((icmp_ln152_reg_999 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_4_fu_160 <= select_ln152_fu_675_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten13_fu_164 <= 13'd0;
    end else if (((icmp_ln152_reg_999 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten13_fu_164 <= add_ln152_reg_1003;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_156 <= 7'd0;
    end else if (((icmp_ln152_reg_999 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_156 <= add_ln153_fu_713_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_fu_152 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_fu_152 <= grp_fu_1139_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln152_reg_1003 <= add_ln152_fu_629_p2;
        icmp_ln152_reg_999 <= icmp_ln152_fu_623_p2;
        icmp_ln152_reg_999_pp0_iter1_reg <= icmp_ln152_reg_999;
        icmp_ln152_reg_999_pp0_iter2_reg <= icmp_ln152_reg_999_pp0_iter1_reg;
        icmp_ln152_reg_999_pp0_iter3_reg <= icmp_ln152_reg_999_pp0_iter2_reg;
        icmp_ln153_reg_1008 <= icmp_ln153_fu_638_p2;
        lshr_ln3_reg_1024 <= {{select_ln121_fu_644_p3[5:4]}};
        select_ln121_reg_1013 <= select_ln121_fu_644_p3;
        trunc_ln153_reg_1018 <= trunc_ln153_fu_652_p1;
        trunc_ln153_reg_1018_pp0_iter1_reg <= trunc_ln153_reg_1018;
        trunc_ln153_reg_1018_pp0_iter2_reg <= trunc_ln153_reg_1018_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul5_reg_1214 <= grp_fu_1143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul7_reg_1231 <= grp_fu_1143_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub3_reg_1224 <= grp_fu_1139_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_9_reg_1129 <= tmp_9_fu_732_p35;
        tmp_s_reg_1219 <= tmp_s_fu_867_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_addr_reg_1134 <= zext_ln154_reg_1029;
        weights2_0_addr_reg_1134_pp0_iter2_reg <= weights2_0_addr_reg_1134;
        weights2_10_addr_reg_1184 <= zext_ln154_reg_1029;
        weights2_10_addr_reg_1184_pp0_iter2_reg <= weights2_10_addr_reg_1184;
        weights2_11_addr_reg_1189 <= zext_ln154_reg_1029;
        weights2_11_addr_reg_1189_pp0_iter2_reg <= weights2_11_addr_reg_1189;
        weights2_12_addr_reg_1194 <= zext_ln154_reg_1029;
        weights2_12_addr_reg_1194_pp0_iter2_reg <= weights2_12_addr_reg_1194;
        weights2_13_addr_reg_1199 <= zext_ln154_reg_1029;
        weights2_13_addr_reg_1199_pp0_iter2_reg <= weights2_13_addr_reg_1199;
        weights2_14_addr_reg_1204 <= zext_ln154_reg_1029;
        weights2_14_addr_reg_1204_pp0_iter2_reg <= weights2_14_addr_reg_1204;
        weights2_15_addr_reg_1209 <= zext_ln154_reg_1029;
        weights2_15_addr_reg_1209_pp0_iter2_reg <= weights2_15_addr_reg_1209;
        weights2_1_addr_reg_1139 <= zext_ln154_reg_1029;
        weights2_1_addr_reg_1139_pp0_iter2_reg <= weights2_1_addr_reg_1139;
        weights2_2_addr_reg_1144 <= zext_ln154_reg_1029;
        weights2_2_addr_reg_1144_pp0_iter2_reg <= weights2_2_addr_reg_1144;
        weights2_3_addr_reg_1149 <= zext_ln154_reg_1029;
        weights2_3_addr_reg_1149_pp0_iter2_reg <= weights2_3_addr_reg_1149;
        weights2_4_addr_reg_1154 <= zext_ln154_reg_1029;
        weights2_4_addr_reg_1154_pp0_iter2_reg <= weights2_4_addr_reg_1154;
        weights2_5_addr_reg_1159 <= zext_ln154_reg_1029;
        weights2_5_addr_reg_1159_pp0_iter2_reg <= weights2_5_addr_reg_1159;
        weights2_6_addr_reg_1164 <= zext_ln154_reg_1029;
        weights2_6_addr_reg_1164_pp0_iter2_reg <= weights2_6_addr_reg_1164;
        weights2_7_addr_reg_1169 <= zext_ln154_reg_1029;
        weights2_7_addr_reg_1169_pp0_iter2_reg <= weights2_7_addr_reg_1169;
        weights2_8_addr_reg_1174 <= zext_ln154_reg_1029;
        weights2_8_addr_reg_1174_pp0_iter2_reg <= weights2_8_addr_reg_1174;
        weights2_9_addr_reg_1179 <= zext_ln154_reg_1029;
        weights2_9_addr_reg_1179_pp0_iter2_reg <= weights2_9_addr_reg_1179;
        zext_ln154_reg_1029[7 : 0] <= zext_ln154_fu_693_p1[7 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln152_reg_999 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln152_reg_999_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten13_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_164;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_156;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_norm_load_2 = grp_fu_1139_p_dout0;
    end else begin
        ap_sig_allocacmp_norm_load_2 = norm_fu_152;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_0_ce0_local = 1'b1;
    end else begin
        d_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_10_ce0_local = 1'b1;
    end else begin
        d_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_11_ce0_local = 1'b1;
    end else begin
        d_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_12_ce0_local = 1'b1;
    end else begin
        d_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_13_ce0_local = 1'b1;
    end else begin
        d_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_14_ce0_local = 1'b1;
    end else begin
        d_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_15_ce0_local = 1'b1;
    end else begin
        d_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_1_ce0_local = 1'b1;
    end else begin
        d_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_2_ce0_local = 1'b1;
    end else begin
        d_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_3_ce0_local = 1'b1;
    end else begin
        d_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_4_ce0_local = 1'b1;
    end else begin
        d_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_5_ce0_local = 1'b1;
    end else begin
        d_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_6_ce0_local = 1'b1;
    end else begin
        d_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_7_ce0_local = 1'b1;
    end else begin
        d_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_8_ce0_local = 1'b1;
    end else begin
        d_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        d_weights2_9_ce0_local = 1'b1;
    end else begin
        d_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_591_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_591_opcode = 2'd0;
    end else begin
        grp_fu_591_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_591_p0 = ap_sig_allocacmp_norm_load_2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_591_p0 = tmp_s_reg_1219;
    end else begin
        grp_fu_591_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_591_p1 = mul7_reg_1231;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_591_p1 = mul5_reg_1214;
    end else begin
        grp_fu_591_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_595_p0 = sub3_reg_1224;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_595_p0 = tmp_9_reg_1129;
    end else begin
        grp_fu_595_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_595_p1 = sub3_reg_1224;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_595_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_595_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (icmp_ln152_reg_999_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_4_out_ap_vld = 1'b1;
    end else begin
        norm_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address0_local = weights2_0_addr_reg_1134_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_10_address0_local = weights2_10_addr_reg_1184_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_10_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_10_ce0_local = 1'b1;
    end else begin
        weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_10_we0_local = 1'b1;
    end else begin
        weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_11_address0_local = weights2_11_addr_reg_1189_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_11_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_11_ce0_local = 1'b1;
    end else begin
        weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_11_we0_local = 1'b1;
    end else begin
        weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_12_address0_local = weights2_12_addr_reg_1194_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_12_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_12_ce0_local = 1'b1;
    end else begin
        weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_12_we0_local = 1'b1;
    end else begin
        weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_13_address0_local = weights2_13_addr_reg_1199_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_13_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_13_ce0_local = 1'b1;
    end else begin
        weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_13_we0_local = 1'b1;
    end else begin
        weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_14_address0_local = weights2_14_addr_reg_1204_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_14_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_14_ce0_local = 1'b1;
    end else begin
        weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_14_we0_local = 1'b1;
    end else begin
        weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_15_address0_local = weights2_15_addr_reg_1209_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_15_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_15_ce0_local = 1'b1;
    end else begin
        weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_15_we0_local = 1'b1;
    end else begin
        weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address0_local = weights2_1_addr_reg_1139_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_2_address0_local = weights2_2_addr_reg_1144_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_2_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_2_ce0_local = 1'b1;
    end else begin
        weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_2_we0_local = 1'b1;
    end else begin
        weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_3_address0_local = weights2_3_addr_reg_1149_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_3_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_3_ce0_local = 1'b1;
    end else begin
        weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_3_we0_local = 1'b1;
    end else begin
        weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_4_address0_local = weights2_4_addr_reg_1154_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_4_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_4_ce0_local = 1'b1;
    end else begin
        weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_4_we0_local = 1'b1;
    end else begin
        weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_5_address0_local = weights2_5_addr_reg_1159_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_5_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_5_ce0_local = 1'b1;
    end else begin
        weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_5_we0_local = 1'b1;
    end else begin
        weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_6_address0_local = weights2_6_addr_reg_1164_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_6_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_6_ce0_local = 1'b1;
    end else begin
        weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_6_we0_local = 1'b1;
    end else begin
        weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_7_address0_local = weights2_7_addr_reg_1169_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_7_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_7_ce0_local = 1'b1;
    end else begin
        weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_7_we0_local = 1'b1;
    end else begin
        weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_8_address0_local = weights2_8_addr_reg_1174_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_8_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_8_ce0_local = 1'b1;
    end else begin
        weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_8_we0_local = 1'b1;
    end else begin
        weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_9_address0_local = weights2_9_addr_reg_1179_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_9_address0_local = zext_ln154_reg_1029;
    end else begin
        weights2_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights2_9_ce0_local = 1'b1;
    end else begin
        weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln153_reg_1018_pp0_iter2_reg == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_9_we0_local = 1'b1;
    end else begin
        weights2_9_we0_local = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln152_1_fu_669_p2 = (i_4_fu_160 + 7'd1);
assign add_ln152_fu_629_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 13'd1);
assign add_ln153_fu_713_p2 = (select_ln121_reg_1013 + 7'd1);
assign add_ln_fu_686_p3 = {{trunc_ln154_fu_682_p1}, {lshr_ln3_reg_1024}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln154_16_fu_938_p1 = sub3_reg_1224;
assign d_weights2_0_address0 = zext_ln154_fu_693_p1;
assign d_weights2_0_ce0 = d_weights2_0_ce0_local;
assign d_weights2_10_address0 = zext_ln154_fu_693_p1;
assign d_weights2_10_ce0 = d_weights2_10_ce0_local;
assign d_weights2_11_address0 = zext_ln154_fu_693_p1;
assign d_weights2_11_ce0 = d_weights2_11_ce0_local;
assign d_weights2_12_address0 = zext_ln154_fu_693_p1;
assign d_weights2_12_ce0 = d_weights2_12_ce0_local;
assign d_weights2_13_address0 = zext_ln154_fu_693_p1;
assign d_weights2_13_ce0 = d_weights2_13_ce0_local;
assign d_weights2_14_address0 = zext_ln154_fu_693_p1;
assign d_weights2_14_ce0 = d_weights2_14_ce0_local;
assign d_weights2_15_address0 = zext_ln154_fu_693_p1;
assign d_weights2_15_ce0 = d_weights2_15_ce0_local;
assign d_weights2_1_address0 = zext_ln154_fu_693_p1;
assign d_weights2_1_ce0 = d_weights2_1_ce0_local;
assign d_weights2_2_address0 = zext_ln154_fu_693_p1;
assign d_weights2_2_ce0 = d_weights2_2_ce0_local;
assign d_weights2_3_address0 = zext_ln154_fu_693_p1;
assign d_weights2_3_ce0 = d_weights2_3_ce0_local;
assign d_weights2_4_address0 = zext_ln154_fu_693_p1;
assign d_weights2_4_ce0 = d_weights2_4_ce0_local;
assign d_weights2_5_address0 = zext_ln154_fu_693_p1;
assign d_weights2_5_ce0 = d_weights2_5_ce0_local;
assign d_weights2_6_address0 = zext_ln154_fu_693_p1;
assign d_weights2_6_ce0 = d_weights2_6_ce0_local;
assign d_weights2_7_address0 = zext_ln154_fu_693_p1;
assign d_weights2_7_ce0 = d_weights2_7_ce0_local;
assign d_weights2_8_address0 = zext_ln154_fu_693_p1;
assign d_weights2_8_ce0 = d_weights2_8_ce0_local;
assign d_weights2_9_address0 = zext_ln154_fu_693_p1;
assign d_weights2_9_ce0 = d_weights2_9_ce0_local;
assign grp_fu_1139_p_ce = 1'b1;
assign grp_fu_1139_p_din0 = grp_fu_591_p0;
assign grp_fu_1139_p_din1 = grp_fu_591_p1;
assign grp_fu_1139_p_opcode = grp_fu_591_opcode;
assign grp_fu_1143_p_ce = 1'b1;
assign grp_fu_1143_p_din0 = grp_fu_595_p0;
assign grp_fu_1143_p_din1 = grp_fu_595_p1;
assign icmp_ln152_fu_623_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln153_fu_638_p2 = ((ap_sig_allocacmp_j_load == 7'd64) ? 1'b1 : 1'b0);
assign norm_4_out = norm_fu_152;
assign select_ln121_fu_644_p3 = ((icmp_ln153_fu_638_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln152_fu_675_p3 = ((icmp_ln153_reg_1008[0:0] == 1'b1) ? add_ln152_1_fu_669_p2 : i_4_fu_160);
assign tmp_9_fu_732_p33 = 'bx;
assign tmp_s_fu_867_p10 = weights2_4_q0;
assign tmp_s_fu_867_p12 = weights2_5_q0;
assign tmp_s_fu_867_p14 = weights2_6_q0;
assign tmp_s_fu_867_p16 = weights2_7_q0;
assign tmp_s_fu_867_p18 = weights2_8_q0;
assign tmp_s_fu_867_p2 = weights2_0_q0;
assign tmp_s_fu_867_p20 = weights2_9_q0;
assign tmp_s_fu_867_p22 = weights2_10_q0;
assign tmp_s_fu_867_p24 = weights2_11_q0;
assign tmp_s_fu_867_p26 = weights2_12_q0;
assign tmp_s_fu_867_p28 = weights2_13_q0;
assign tmp_s_fu_867_p30 = weights2_14_q0;
assign tmp_s_fu_867_p32 = weights2_15_q0;
assign tmp_s_fu_867_p33 = 'bx;
assign tmp_s_fu_867_p4 = weights2_1_q0;
assign tmp_s_fu_867_p6 = weights2_2_q0;
assign tmp_s_fu_867_p8 = weights2_3_q0;
assign trunc_ln153_fu_652_p1 = select_ln121_fu_644_p3[3:0];
assign trunc_ln154_fu_682_p1 = select_ln152_fu_675_p3[5:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_10_address0 = weights2_10_address0_local;
assign weights2_10_ce0 = weights2_10_ce0_local;
assign weights2_10_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_10_we0 = weights2_10_we0_local;
assign weights2_11_address0 = weights2_11_address0_local;
assign weights2_11_ce0 = weights2_11_ce0_local;
assign weights2_11_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_11_we0 = weights2_11_we0_local;
assign weights2_12_address0 = weights2_12_address0_local;
assign weights2_12_ce0 = weights2_12_ce0_local;
assign weights2_12_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_12_we0 = weights2_12_we0_local;
assign weights2_13_address0 = weights2_13_address0_local;
assign weights2_13_ce0 = weights2_13_ce0_local;
assign weights2_13_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_13_we0 = weights2_13_we0_local;
assign weights2_14_address0 = weights2_14_address0_local;
assign weights2_14_ce0 = weights2_14_ce0_local;
assign weights2_14_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_14_we0 = weights2_14_we0_local;
assign weights2_15_address0 = weights2_15_address0_local;
assign weights2_15_ce0 = weights2_15_ce0_local;
assign weights2_15_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_15_we0 = weights2_15_we0_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_2_address0 = weights2_2_address0_local;
assign weights2_2_ce0 = weights2_2_ce0_local;
assign weights2_2_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_2_we0 = weights2_2_we0_local;
assign weights2_3_address0 = weights2_3_address0_local;
assign weights2_3_ce0 = weights2_3_ce0_local;
assign weights2_3_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_3_we0 = weights2_3_we0_local;
assign weights2_4_address0 = weights2_4_address0_local;
assign weights2_4_ce0 = weights2_4_ce0_local;
assign weights2_4_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_4_we0 = weights2_4_we0_local;
assign weights2_5_address0 = weights2_5_address0_local;
assign weights2_5_ce0 = weights2_5_ce0_local;
assign weights2_5_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_5_we0 = weights2_5_we0_local;
assign weights2_6_address0 = weights2_6_address0_local;
assign weights2_6_ce0 = weights2_6_ce0_local;
assign weights2_6_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_6_we0 = weights2_6_we0_local;
assign weights2_7_address0 = weights2_7_address0_local;
assign weights2_7_ce0 = weights2_7_ce0_local;
assign weights2_7_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_7_we0 = weights2_7_we0_local;
assign weights2_8_address0 = weights2_8_address0_local;
assign weights2_8_ce0 = weights2_8_ce0_local;
assign weights2_8_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_8_we0 = weights2_8_we0_local;
assign weights2_9_address0 = weights2_9_address0_local;
assign weights2_9_ce0 = weights2_9_ce0_local;
assign weights2_9_d0 = bitcast_ln154_16_fu_938_p1;
assign weights2_9_we0 = weights2_9_we0_local;
assign zext_ln154_fu_693_p1 = add_ln_fu_686_p3;
always @ (posedge ap_clk) begin
    zext_ln154_reg_1029[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 
