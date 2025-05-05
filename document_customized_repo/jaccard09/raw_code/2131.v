module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_44_reload,B_36_reload,E_42_reload,D_44_reload,E_28_reload,W_address0,W_ce0,W_q0,W_2_address0,W_2_ce0,W_2_q0,W_4_address0,W_4_ce0,W_4_q0,W_6_address0,W_6_ce0,W_6_q0,W_8_address0,W_8_ce0,W_8_q0,W_10_address0,W_10_ce0,W_10_q0,W_12_address0,W_12_ce0,W_12_q0,W_14_address0,W_14_ce0,W_14_q0,W_16_address0,W_16_ce0,W_16_q0,W_18_address0,W_18_ce0,W_18_q0,W_20_address0,W_20_ce0,W_20_q0,W_22_address0,W_22_ce0,W_22_q0,W_24_address0,W_24_ce0,W_24_q0,W_26_address0,W_26_ce0,W_26_q0,W_28_address0,W_28_ce0,W_28_q0,W_30_address0,W_30_ce0,W_30_q0,W_32_address0,W_32_ce0,W_32_q0,W_34_address0,W_34_ce0,W_34_q0,W_36_address0,W_36_ce0,W_36_q0,W_38_address0,W_38_ce0,W_38_q0,W_40_address0,W_40_ce0,W_40_q0,W_42_address0,W_42_ce0,W_42_q0,W_44_address0,W_44_ce0,W_44_q0,W_46_address0,W_46_ce0,W_46_q0,W_48_address0,W_48_ce0,W_48_q0,W_50_address0,W_50_ce0,W_50_q0,W_52_address0,W_52_ce0,W_52_q0,W_54_address0,W_54_ce0,W_54_q0,W_56_address0,W_56_ce0,W_56_q0,W_58_address0,W_58_ce0,W_58_q0,W_60_address0,W_60_ce0,W_60_q0,W_62_address0,W_62_ce0,W_62_q0,W_1_address0,W_1_ce0,W_1_q0,W_3_address0,W_3_ce0,W_3_q0,W_5_address0,W_5_ce0,W_5_q0,W_7_address0,W_7_ce0,W_7_q0,W_9_address0,W_9_ce0,W_9_q0,W_11_address0,W_11_ce0,W_11_q0,W_13_address0,W_13_ce0,W_13_q0,W_15_address0,W_15_ce0,W_15_q0,W_17_address0,W_17_ce0,W_17_q0,W_19_address0,W_19_ce0,W_19_q0,W_21_address0,W_21_ce0,W_21_q0,W_23_address0,W_23_ce0,W_23_q0,W_25_address0,W_25_ce0,W_25_q0,W_27_address0,W_27_ce0,W_27_q0,W_29_address0,W_29_ce0,W_29_q0,W_31_address0,W_31_ce0,W_31_q0,W_33_address0,W_33_ce0,W_33_q0,W_35_address0,W_35_ce0,W_35_q0,W_37_address0,W_37_ce0,W_37_q0,W_39_address0,W_39_ce0,W_39_q0,W_41_address0,W_41_ce0,W_41_q0,W_43_address0,W_43_ce0,W_43_q0,W_45_address0,W_45_ce0,W_45_q0,W_47_address0,W_47_ce0,W_47_q0,W_49_address0,W_49_ce0,W_49_q0,W_51_address0,W_51_ce0,W_51_q0,W_53_address0,W_53_ce0,W_53_q0,W_55_address0,W_55_ce0,W_55_q0,W_57_address0,W_57_ce0,W_57_q0,W_59_address0,W_59_ce0,W_59_q0,W_61_address0,W_61_ce0,W_61_q0,W_63_address0,W_63_ce0,W_63_q0,A_46_out,A_46_out_ap_vld,B_35_out,B_35_out_ap_vld,C_43_out,C_43_out_ap_vld,D_46_out,D_46_out_ap_vld,E_32_out,E_32_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_44_reload;
input  [31:0] B_36_reload;
input  [31:0] E_42_reload;
input  [31:0] D_44_reload;
input  [31:0] E_28_reload;
output  [0:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [0:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [0:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [0:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [0:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [0:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [0:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [0:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [0:0] W_16_address0;
output   W_16_ce0;
input  [31:0] W_16_q0;
output  [0:0] W_18_address0;
output   W_18_ce0;
input  [31:0] W_18_q0;
output  [0:0] W_20_address0;
output   W_20_ce0;
input  [31:0] W_20_q0;
output  [0:0] W_22_address0;
output   W_22_ce0;
input  [31:0] W_22_q0;
output  [0:0] W_24_address0;
output   W_24_ce0;
input  [31:0] W_24_q0;
output  [0:0] W_26_address0;
output   W_26_ce0;
input  [31:0] W_26_q0;
output  [0:0] W_28_address0;
output   W_28_ce0;
input  [31:0] W_28_q0;
output  [0:0] W_30_address0;
output   W_30_ce0;
input  [31:0] W_30_q0;
output  [0:0] W_32_address0;
output   W_32_ce0;
input  [31:0] W_32_q0;
output  [0:0] W_34_address0;
output   W_34_ce0;
input  [31:0] W_34_q0;
output  [0:0] W_36_address0;
output   W_36_ce0;
input  [31:0] W_36_q0;
output  [0:0] W_38_address0;
output   W_38_ce0;
input  [31:0] W_38_q0;
output  [0:0] W_40_address0;
output   W_40_ce0;
input  [31:0] W_40_q0;
output  [0:0] W_42_address0;
output   W_42_ce0;
input  [31:0] W_42_q0;
output  [0:0] W_44_address0;
output   W_44_ce0;
input  [31:0] W_44_q0;
output  [0:0] W_46_address0;
output   W_46_ce0;
input  [31:0] W_46_q0;
output  [0:0] W_48_address0;
output   W_48_ce0;
input  [31:0] W_48_q0;
output  [0:0] W_50_address0;
output   W_50_ce0;
input  [31:0] W_50_q0;
output  [0:0] W_52_address0;
output   W_52_ce0;
input  [31:0] W_52_q0;
output  [0:0] W_54_address0;
output   W_54_ce0;
input  [31:0] W_54_q0;
output  [0:0] W_56_address0;
output   W_56_ce0;
input  [31:0] W_56_q0;
output  [0:0] W_58_address0;
output   W_58_ce0;
input  [31:0] W_58_q0;
output  [0:0] W_60_address0;
output   W_60_ce0;
input  [31:0] W_60_q0;
output  [0:0] W_62_address0;
output   W_62_ce0;
input  [31:0] W_62_q0;
output  [0:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [0:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [0:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [0:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [0:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [0:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [0:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [0:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [0:0] W_17_address0;
output   W_17_ce0;
input  [31:0] W_17_q0;
output  [0:0] W_19_address0;
output   W_19_ce0;
input  [31:0] W_19_q0;
output  [0:0] W_21_address0;
output   W_21_ce0;
input  [31:0] W_21_q0;
output  [0:0] W_23_address0;
output   W_23_ce0;
input  [31:0] W_23_q0;
output  [0:0] W_25_address0;
output   W_25_ce0;
input  [31:0] W_25_q0;
output  [0:0] W_27_address0;
output   W_27_ce0;
input  [31:0] W_27_q0;
output  [0:0] W_29_address0;
output   W_29_ce0;
input  [31:0] W_29_q0;
output  [0:0] W_31_address0;
output   W_31_ce0;
input  [31:0] W_31_q0;
output  [0:0] W_33_address0;
output   W_33_ce0;
input  [31:0] W_33_q0;
output  [0:0] W_35_address0;
output   W_35_ce0;
input  [31:0] W_35_q0;
output  [0:0] W_37_address0;
output   W_37_ce0;
input  [31:0] W_37_q0;
output  [0:0] W_39_address0;
output   W_39_ce0;
input  [31:0] W_39_q0;
output  [0:0] W_41_address0;
output   W_41_ce0;
input  [31:0] W_41_q0;
output  [0:0] W_43_address0;
output   W_43_ce0;
input  [31:0] W_43_q0;
output  [0:0] W_45_address0;
output   W_45_ce0;
input  [31:0] W_45_q0;
output  [0:0] W_47_address0;
output   W_47_ce0;
input  [31:0] W_47_q0;
output  [0:0] W_49_address0;
output   W_49_ce0;
input  [31:0] W_49_q0;
output  [0:0] W_51_address0;
output   W_51_ce0;
input  [31:0] W_51_q0;
output  [0:0] W_53_address0;
output   W_53_ce0;
input  [31:0] W_53_q0;
output  [0:0] W_55_address0;
output   W_55_ce0;
input  [31:0] W_55_q0;
output  [0:0] W_57_address0;
output   W_57_ce0;
input  [31:0] W_57_q0;
output  [0:0] W_59_address0;
output   W_59_ce0;
input  [31:0] W_59_q0;
output  [0:0] W_61_address0;
output   W_61_ce0;
input  [31:0] W_61_q0;
output  [0:0] W_63_address0;
output   W_63_ce0;
input  [31:0] W_63_q0;
output  [31:0] A_46_out;
output   A_46_out_ap_vld;
output  [31:0] B_35_out;
output   B_35_out_ap_vld;
output  [31:0] C_43_out;
output   C_43_out_ap_vld;
output  [31:0] D_46_out;
output   D_46_out_ap_vld;
output  [31:0] E_32_out;
output   E_32_out_ap_vld;
reg ap_idle;
reg A_46_out_ap_vld;
reg B_35_out_ap_vld;
reg C_43_out_ap_vld;
reg D_46_out_ap_vld;
reg E_32_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln128_reg_1845;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_1839;
wire   [0:0] icmp_ln128_fu_1220_p2;
reg   [31:0] C_2_reg_2169;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_s_fu_1309_p67;
reg   [31:0] tmp_s_reg_2176;
wire   [31:0] tmp_1_fu_1445_p67;
reg   [31:0] tmp_1_reg_2181;
reg   [31:0] E_1_load_reg_2186;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] temp_fu_1643_p2;
reg   [31:0] temp_reg_2191;
wire   [26:0] trunc_ln130_2_fu_1671_p1;
reg   [26:0] trunc_ln130_2_reg_2196;
reg   [4:0] lshr_ln130_2_reg_2201;
wire   [31:0] xor_ln130_3_fu_1691_p2;
reg   [31:0] xor_ln130_3_reg_2206;
wire   [31:0] add_ln130_6_fu_1753_p2;
reg   [31:0] add_ln130_6_reg_2211;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_1234_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_266;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_270;
wire   [31:0] C_3_fu_1663_p3;
reg   [31:0] B_fu_274;
reg   [31:0] B_1_fu_278;
wire   [31:0] temp_1_fu_1767_p2;
reg   [6:0] i_fu_282;
wire   [6:0] add_ln128_fu_1718_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
reg   [31:0] E_2_fu_286;
wire   [31:0] C_fu_1710_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_2_ce0_local;
reg    W_4_ce0_local;
reg    W_6_ce0_local;
reg    W_8_ce0_local;
reg    W_10_ce0_local;
reg    W_12_ce0_local;
reg    W_14_ce0_local;
reg    W_16_ce0_local;
reg    W_18_ce0_local;
reg    W_20_ce0_local;
reg    W_22_ce0_local;
reg    W_24_ce0_local;
reg    W_26_ce0_local;
reg    W_28_ce0_local;
reg    W_30_ce0_local;
reg    W_32_ce0_local;
reg    W_34_ce0_local;
reg    W_36_ce0_local;
reg    W_38_ce0_local;
reg    W_40_ce0_local;
reg    W_42_ce0_local;
reg    W_44_ce0_local;
reg    W_46_ce0_local;
reg    W_48_ce0_local;
reg    W_50_ce0_local;
reg    W_52_ce0_local;
reg    W_54_ce0_local;
reg    W_56_ce0_local;
reg    W_58_ce0_local;
reg    W_60_ce0_local;
reg    W_62_ce0_local;
reg    W_1_ce0_local;
reg    W_3_ce0_local;
reg    W_5_ce0_local;
reg    W_7_ce0_local;
reg    W_9_ce0_local;
reg    W_11_ce0_local;
reg    W_13_ce0_local;
reg    W_15_ce0_local;
reg    W_17_ce0_local;
reg    W_19_ce0_local;
reg    W_21_ce0_local;
reg    W_23_ce0_local;
reg    W_25_ce0_local;
reg    W_27_ce0_local;
reg    W_29_ce0_local;
reg    W_31_ce0_local;
reg    W_33_ce0_local;
reg    W_35_ce0_local;
reg    W_37_ce0_local;
reg    W_39_ce0_local;
reg    W_41_ce0_local;
reg    W_43_ce0_local;
reg    W_45_ce0_local;
reg    W_47_ce0_local;
reg    W_49_ce0_local;
reg    W_51_ce0_local;
reg    W_53_ce0_local;
reg    W_55_ce0_local;
reg    W_57_ce0_local;
reg    W_59_ce0_local;
reg    W_61_ce0_local;
reg    W_63_ce0_local;
wire   [0:0] tmp_fu_1226_p3;
wire   [31:0] tmp_s_fu_1309_p65;
wire   [5:0] trunc_ln128_fu_1306_p1;
wire   [31:0] tmp_1_fu_1445_p65;
wire   [31:0] xor_ln130_fu_1607_p2;
wire   [26:0] trunc_ln130_fu_1593_p1;
wire   [4:0] lshr_ln5_fu_1597_p4;
wire   [31:0] add_ln130_1_fu_1626_p2;
wire   [31:0] or_ln2_fu_1618_p3;
wire   [31:0] xor_ln130_1_fu_1612_p2;
wire   [31:0] add_ln130_fu_1637_p2;
wire   [31:0] add_ln130_2_fu_1631_p2;
wire   [1:0] trunc_ln130_1_fu_1649_p1;
wire   [29:0] lshr_ln130_1_fu_1653_p4;
wire   [31:0] xor_ln130_2_fu_1685_p2;
wire   [1:0] trunc_ln130_3_fu_1696_p1;
wire   [29:0] lshr_ln130_3_fu_1700_p4;
wire   [31:0] or_ln130_2_fu_1742_p3;
wire   [31:0] add_ln130_5_fu_1748_p2;
wire   [31:0] add_ln130_4_fu_1763_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_s_fu_1309_p1;
wire   [5:0] tmp_s_fu_1309_p3;
wire   [5:0] tmp_s_fu_1309_p5;
wire   [5:0] tmp_s_fu_1309_p7;
wire   [5:0] tmp_s_fu_1309_p9;
wire   [5:0] tmp_s_fu_1309_p11;
wire   [5:0] tmp_s_fu_1309_p13;
wire   [5:0] tmp_s_fu_1309_p15;
wire   [5:0] tmp_s_fu_1309_p17;
wire   [5:0] tmp_s_fu_1309_p19;
wire   [5:0] tmp_s_fu_1309_p21;
wire   [5:0] tmp_s_fu_1309_p23;
wire   [5:0] tmp_s_fu_1309_p25;
wire   [5:0] tmp_s_fu_1309_p27;
wire   [5:0] tmp_s_fu_1309_p29;
wire   [5:0] tmp_s_fu_1309_p31;
wire  signed [5:0] tmp_s_fu_1309_p33;
wire  signed [5:0] tmp_s_fu_1309_p35;
wire  signed [5:0] tmp_s_fu_1309_p37;
wire  signed [5:0] tmp_s_fu_1309_p39;
wire  signed [5:0] tmp_s_fu_1309_p41;
wire  signed [5:0] tmp_s_fu_1309_p43;
wire  signed [5:0] tmp_s_fu_1309_p45;
wire  signed [5:0] tmp_s_fu_1309_p47;
wire  signed [5:0] tmp_s_fu_1309_p49;
wire  signed [5:0] tmp_s_fu_1309_p51;
wire  signed [5:0] tmp_s_fu_1309_p53;
wire  signed [5:0] tmp_s_fu_1309_p55;
wire  signed [5:0] tmp_s_fu_1309_p57;
wire  signed [5:0] tmp_s_fu_1309_p59;
wire  signed [5:0] tmp_s_fu_1309_p61;
wire  signed [5:0] tmp_s_fu_1309_p63;
wire   [5:0] tmp_1_fu_1445_p1;
wire   [5:0] tmp_1_fu_1445_p3;
wire   [5:0] tmp_1_fu_1445_p5;
wire   [5:0] tmp_1_fu_1445_p7;
wire   [5:0] tmp_1_fu_1445_p9;
wire   [5:0] tmp_1_fu_1445_p11;
wire   [5:0] tmp_1_fu_1445_p13;
wire   [5:0] tmp_1_fu_1445_p15;
wire   [5:0] tmp_1_fu_1445_p17;
wire   [5:0] tmp_1_fu_1445_p19;
wire   [5:0] tmp_1_fu_1445_p21;
wire   [5:0] tmp_1_fu_1445_p23;
wire   [5:0] tmp_1_fu_1445_p25;
wire   [5:0] tmp_1_fu_1445_p27;
wire   [5:0] tmp_1_fu_1445_p29;
wire   [5:0] tmp_1_fu_1445_p31;
wire  signed [5:0] tmp_1_fu_1445_p33;
wire  signed [5:0] tmp_1_fu_1445_p35;
wire  signed [5:0] tmp_1_fu_1445_p37;
wire  signed [5:0] tmp_1_fu_1445_p39;
wire  signed [5:0] tmp_1_fu_1445_p41;
wire  signed [5:0] tmp_1_fu_1445_p43;
wire  signed [5:0] tmp_1_fu_1445_p45;
wire  signed [5:0] tmp_1_fu_1445_p47;
wire  signed [5:0] tmp_1_fu_1445_p49;
wire  signed [5:0] tmp_1_fu_1445_p51;
wire  signed [5:0] tmp_1_fu_1445_p53;
wire  signed [5:0] tmp_1_fu_1445_p55;
wire  signed [5:0] tmp_1_fu_1445_p57;
wire  signed [5:0] tmp_1_fu_1445_p59;
wire  signed [5:0] tmp_1_fu_1445_p61;
wire  signed [5:0] tmp_1_fu_1445_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_266 = 32'd0;
#0 E_1_fu_270 = 32'd0;
#0 B_fu_274 = 32'd0;
#0 B_1_fu_278 = 32'd0;
#0 i_fu_282 = 7'd0;
#0 E_2_fu_286 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U204(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.din4(W_8_q0),.din5(W_10_q0),.din6(W_12_q0),.din7(W_14_q0),.din8(W_16_q0),.din9(W_18_q0),.din10(W_20_q0),.din11(W_22_q0),.din12(W_24_q0),.din13(W_26_q0),.din14(W_28_q0),.din15(W_30_q0),.din16(W_32_q0),.din17(W_34_q0),.din18(W_36_q0),.din19(W_38_q0),.din20(W_40_q0),.din21(W_42_q0),.din22(W_44_q0),.din23(W_46_q0),.din24(W_48_q0),.din25(W_50_q0),.din26(W_52_q0),.din27(W_54_q0),.din28(W_56_q0),.din29(W_58_q0),.din30(W_60_q0),.din31(W_62_q0),.def(tmp_s_fu_1309_p65),.sel(trunc_ln128_fu_1306_p1),.dout(tmp_s_fu_1309_p67));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U205(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.din4(W_9_q0),.din5(W_11_q0),.din6(W_13_q0),.din7(W_15_q0),.din8(W_17_q0),.din9(W_19_q0),.din10(W_21_q0),.din11(W_23_q0),.din12(W_25_q0),.din13(W_27_q0),.din14(W_29_q0),.din15(W_31_q0),.din16(W_33_q0),.din17(W_35_q0),.din18(W_37_q0),.din19(W_39_q0),.din20(W_41_q0),.din21(W_43_q0),.din22(W_45_q0),.din23(W_47_q0),.din24(W_49_q0),.din25(W_51_q0),.din26(W_53_q0),.din27(W_55_q0),.din28(W_57_q0),.din29(W_59_q0),.din30(W_61_q0),.din31(W_63_q0),.def(tmp_1_fu_1445_p65),.sel(trunc_ln128_fu_1306_p1),.dout(tmp_1_fu_1445_p67));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_278 <= A_44_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_278 <= temp_1_fu_1767_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_274 <= B_36_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_274 <= temp_reg_2191;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_270 <= D_44_reload;
    end else if (((icmp_ln128_reg_1845 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_fu_270 <= C_3_fu_1663_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_286 <= E_42_reload;
    end else if (((icmp_ln128_reg_1845 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_2_fu_286 <= C_fu_1710_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_266 <= E_28_reload;
    end else if (((icmp_ln128_reg_1845 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_fu_266 <= C_2_reg_2169;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_282 <= 7'd60;
    end else if (((icmp_ln128_reg_1845 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_282 <= add_ln128_fu_1718_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_2_reg_2169 <= E_2_fu_286;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_load_reg_2186 <= E_1_fu_270;
        lshr_ln130_2_reg_2201 <= {{temp_fu_1643_p2[31:27]}};
        temp_reg_2191 <= temp_fu_1643_p2;
        trunc_ln130_2_reg_2196 <= trunc_ln130_2_fu_1671_p1;
        xor_ln130_3_reg_2206 <= xor_ln130_3_fu_1691_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_6_reg_2211 <= add_ln130_6_fu_1753_p2;
        i_1_reg_1839 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_1845 <= icmp_ln128_fu_1220_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_2181 <= tmp_1_fu_1445_p67;
        tmp_s_reg_2176 <= tmp_s_fu_1309_p67;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_46_out_ap_vld = 1'b1;
    end else begin
        A_46_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_35_out_ap_vld = 1'b1;
    end else begin
        B_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_43_out_ap_vld = 1'b1;
    end else begin
        C_43_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_46_out_ap_vld = 1'b1;
    end else begin
        D_46_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_32_out_ap_vld = 1'b1;
    end else begin
        E_32_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_16_ce0_local = 1'b1;
    end else begin
        W_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_17_ce0_local = 1'b1;
    end else begin
        W_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_18_ce0_local = 1'b1;
    end else begin
        W_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_19_ce0_local = 1'b1;
    end else begin
        W_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_20_ce0_local = 1'b1;
    end else begin
        W_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_21_ce0_local = 1'b1;
    end else begin
        W_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_22_ce0_local = 1'b1;
    end else begin
        W_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_23_ce0_local = 1'b1;
    end else begin
        W_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_24_ce0_local = 1'b1;
    end else begin
        W_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_25_ce0_local = 1'b1;
    end else begin
        W_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_26_ce0_local = 1'b1;
    end else begin
        W_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_27_ce0_local = 1'b1;
    end else begin
        W_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_28_ce0_local = 1'b1;
    end else begin
        W_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_29_ce0_local = 1'b1;
    end else begin
        W_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_30_ce0_local = 1'b1;
    end else begin
        W_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_31_ce0_local = 1'b1;
    end else begin
        W_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_32_ce0_local = 1'b1;
    end else begin
        W_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_33_ce0_local = 1'b1;
    end else begin
        W_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_34_ce0_local = 1'b1;
    end else begin
        W_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_35_ce0_local = 1'b1;
    end else begin
        W_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_36_ce0_local = 1'b1;
    end else begin
        W_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_37_ce0_local = 1'b1;
    end else begin
        W_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_38_ce0_local = 1'b1;
    end else begin
        W_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_39_ce0_local = 1'b1;
    end else begin
        W_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_40_ce0_local = 1'b1;
    end else begin
        W_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_41_ce0_local = 1'b1;
    end else begin
        W_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_42_ce0_local = 1'b1;
    end else begin
        W_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_43_ce0_local = 1'b1;
    end else begin
        W_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_44_ce0_local = 1'b1;
    end else begin
        W_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_45_ce0_local = 1'b1;
    end else begin
        W_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_46_ce0_local = 1'b1;
    end else begin
        W_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_47_ce0_local = 1'b1;
    end else begin
        W_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_48_ce0_local = 1'b1;
    end else begin
        W_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_49_ce0_local = 1'b1;
    end else begin
        W_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_50_ce0_local = 1'b1;
    end else begin
        W_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_51_ce0_local = 1'b1;
    end else begin
        W_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_52_ce0_local = 1'b1;
    end else begin
        W_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_53_ce0_local = 1'b1;
    end else begin
        W_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_54_ce0_local = 1'b1;
    end else begin
        W_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_55_ce0_local = 1'b1;
    end else begin
        W_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_56_ce0_local = 1'b1;
    end else begin
        W_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_57_ce0_local = 1'b1;
    end else begin
        W_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_58_ce0_local = 1'b1;
    end else begin
        W_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_59_ce0_local = 1'b1;
    end else begin
        W_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_60_ce0_local = 1'b1;
    end else begin
        W_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_61_ce0_local = 1'b1;
    end else begin
        W_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_62_ce0_local = 1'b1;
    end else begin
        W_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_63_ce0_local = 1'b1;
    end else begin
        W_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_1845 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_282;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_46_out = B_1_fu_278;
assign B_35_out = B_fu_274;
assign C_3_fu_1663_p3 = {{trunc_ln130_1_fu_1649_p1}, {lshr_ln130_1_fu_1653_p4}};
assign C_43_out = E_2_fu_286;
assign C_fu_1710_p3 = {{trunc_ln130_3_fu_1696_p1}, {lshr_ln130_3_fu_1700_p4}};
assign D_46_out = E_1_fu_270;
assign E_32_out = E_fu_266;
assign W_10_address0 = zext_ln100_fu_1234_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_1234_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_1234_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_1234_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_1234_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_1234_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_1234_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_1234_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_1234_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_1234_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_1_address0 = zext_ln100_fu_1234_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_20_address0 = zext_ln100_fu_1234_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_1234_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_1234_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_1234_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_1234_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_1234_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_1234_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_1234_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_1234_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_1234_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_2_address0 = zext_ln100_fu_1234_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_30_address0 = zext_ln100_fu_1234_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_1234_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_32_address0 = zext_ln100_fu_1234_p1;
assign W_32_ce0 = W_32_ce0_local;
assign W_33_address0 = zext_ln100_fu_1234_p1;
assign W_33_ce0 = W_33_ce0_local;
assign W_34_address0 = zext_ln100_fu_1234_p1;
assign W_34_ce0 = W_34_ce0_local;
assign W_35_address0 = zext_ln100_fu_1234_p1;
assign W_35_ce0 = W_35_ce0_local;
assign W_36_address0 = zext_ln100_fu_1234_p1;
assign W_36_ce0 = W_36_ce0_local;
assign W_37_address0 = zext_ln100_fu_1234_p1;
assign W_37_ce0 = W_37_ce0_local;
assign W_38_address0 = zext_ln100_fu_1234_p1;
assign W_38_ce0 = W_38_ce0_local;
assign W_39_address0 = zext_ln100_fu_1234_p1;
assign W_39_ce0 = W_39_ce0_local;
assign W_3_address0 = zext_ln100_fu_1234_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_40_address0 = zext_ln100_fu_1234_p1;
assign W_40_ce0 = W_40_ce0_local;
assign W_41_address0 = zext_ln100_fu_1234_p1;
assign W_41_ce0 = W_41_ce0_local;
assign W_42_address0 = zext_ln100_fu_1234_p1;
assign W_42_ce0 = W_42_ce0_local;
assign W_43_address0 = zext_ln100_fu_1234_p1;
assign W_43_ce0 = W_43_ce0_local;
assign W_44_address0 = zext_ln100_fu_1234_p1;
assign W_44_ce0 = W_44_ce0_local;
assign W_45_address0 = zext_ln100_fu_1234_p1;
assign W_45_ce0 = W_45_ce0_local;
assign W_46_address0 = zext_ln100_fu_1234_p1;
assign W_46_ce0 = W_46_ce0_local;
assign W_47_address0 = zext_ln100_fu_1234_p1;
assign W_47_ce0 = W_47_ce0_local;
assign W_48_address0 = zext_ln100_fu_1234_p1;
assign W_48_ce0 = W_48_ce0_local;
assign W_49_address0 = zext_ln100_fu_1234_p1;
assign W_49_ce0 = W_49_ce0_local;
assign W_4_address0 = zext_ln100_fu_1234_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_50_address0 = zext_ln100_fu_1234_p1;
assign W_50_ce0 = W_50_ce0_local;
assign W_51_address0 = zext_ln100_fu_1234_p1;
assign W_51_ce0 = W_51_ce0_local;
assign W_52_address0 = zext_ln100_fu_1234_p1;
assign W_52_ce0 = W_52_ce0_local;
assign W_53_address0 = zext_ln100_fu_1234_p1;
assign W_53_ce0 = W_53_ce0_local;
assign W_54_address0 = zext_ln100_fu_1234_p1;
assign W_54_ce0 = W_54_ce0_local;
assign W_55_address0 = zext_ln100_fu_1234_p1;
assign W_55_ce0 = W_55_ce0_local;
assign W_56_address0 = zext_ln100_fu_1234_p1;
assign W_56_ce0 = W_56_ce0_local;
assign W_57_address0 = zext_ln100_fu_1234_p1;
assign W_57_ce0 = W_57_ce0_local;
assign W_58_address0 = zext_ln100_fu_1234_p1;
assign W_58_ce0 = W_58_ce0_local;
assign W_59_address0 = zext_ln100_fu_1234_p1;
assign W_59_ce0 = W_59_ce0_local;
assign W_5_address0 = zext_ln100_fu_1234_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_60_address0 = zext_ln100_fu_1234_p1;
assign W_60_ce0 = W_60_ce0_local;
assign W_61_address0 = zext_ln100_fu_1234_p1;
assign W_61_ce0 = W_61_ce0_local;
assign W_62_address0 = zext_ln100_fu_1234_p1;
assign W_62_ce0 = W_62_ce0_local;
assign W_63_address0 = zext_ln100_fu_1234_p1;
assign W_63_ce0 = W_63_ce0_local;
assign W_6_address0 = zext_ln100_fu_1234_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_1234_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_1234_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_1234_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_1234_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_fu_1718_p2 = (i_1_reg_1839 + 7'd2);
assign add_ln130_1_fu_1626_p2 = ($signed(tmp_s_reg_2176) + $signed(32'd3395469782));
assign add_ln130_2_fu_1631_p2 = (add_ln130_1_fu_1626_p2 + or_ln2_fu_1618_p3);
assign add_ln130_4_fu_1763_p2 = (E_1_load_reg_2186 + xor_ln130_3_reg_2206);
assign add_ln130_5_fu_1748_p2 = ($signed(tmp_1_reg_2181) + $signed(32'd3395469782));
assign add_ln130_6_fu_1753_p2 = (or_ln130_2_fu_1742_p3 + add_ln130_5_fu_1748_p2);
assign add_ln130_fu_1637_p2 = (xor_ln130_1_fu_1612_p2 + E_fu_266);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_1220_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_1_fu_1653_p4 = {{B_fu_274[31:2]}};
assign lshr_ln130_3_fu_1700_p4 = {{B_1_fu_278[31:2]}};
assign lshr_ln5_fu_1597_p4 = {{B_1_fu_278[31:27]}};
assign or_ln130_2_fu_1742_p3 = {{trunc_ln130_2_reg_2196}, {lshr_ln130_2_reg_2201}};
assign or_ln2_fu_1618_p3 = {{trunc_ln130_fu_1593_p1}, {lshr_ln5_fu_1597_p4}};
assign temp_1_fu_1767_p2 = (add_ln130_6_reg_2211 + add_ln130_4_fu_1763_p2);
assign temp_fu_1643_p2 = (add_ln130_fu_1637_p2 + add_ln130_2_fu_1631_p2);
assign tmp_1_fu_1445_p65 = 'bx;
assign tmp_fu_1226_p3 = ap_sig_allocacmp_i_1[32'd6];
assign tmp_s_fu_1309_p65 = 'bx;
assign trunc_ln128_fu_1306_p1 = i_1_reg_1839[5:0];
assign trunc_ln130_1_fu_1649_p1 = B_fu_274[1:0];
assign trunc_ln130_2_fu_1671_p1 = temp_fu_1643_p2[26:0];
assign trunc_ln130_3_fu_1696_p1 = B_1_fu_278[1:0];
assign trunc_ln130_fu_1593_p1 = B_1_fu_278[26:0];
assign xor_ln130_1_fu_1612_p2 = (xor_ln130_fu_1607_p2 ^ B_fu_274);
assign xor_ln130_2_fu_1685_p2 = (C_3_fu_1663_p3 ^ B_1_fu_278);
assign xor_ln130_3_fu_1691_p2 = (xor_ln130_2_fu_1685_p2 ^ C_2_reg_2169);
assign xor_ln130_fu_1607_p2 = (E_1_fu_270 ^ C_2_reg_2169);
assign zext_ln100_fu_1234_p1 = tmp_fu_1226_p3;
endmodule 