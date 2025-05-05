module forward_dataflow_in_loop_VITIS_LOOP_6427_1_Loop_VITIS_LOOP_6113_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln6113,tmp,v4362_15_address0,v4362_15_ce0,v4362_15_q0,v4362_11_address0,v4362_11_ce0,v4362_11_q0,v4362_7_address0,v4362_7_ce0,v4362_7_q0,v4362_3_address0,v4362_3_ce0,v4362_3_q0,v4362_14_address0,v4362_14_ce0,v4362_14_q0,v4362_10_address0,v4362_10_ce0,v4362_10_q0,v4362_6_address0,v4362_6_ce0,v4362_6_q0,v4362_2_address0,v4362_2_ce0,v4362_2_q0,v4362_13_address0,v4362_13_ce0,v4362_13_q0,v4362_9_address0,v4362_9_ce0,v4362_9_q0,v4362_5_address0,v4362_5_ce0,v4362_5_q0,v4362_1_address0,v4362_1_ce0,v4362_1_q0,v4362_12_address0,v4362_12_ce0,v4362_12_q0,v4362_8_address0,v4362_8_ce0,v4362_8_q0,v4362_4_address0,v4362_4_ce0,v4362_4_q0,v4362_address0,v4362_ce0,v4362_q0,v4364_address0,v4364_ce0,v4364_we0,v4364_d0,v4364_address1,v4364_ce1,v4364_q1,v4364_1_address0,v4364_1_ce0,v4364_1_we0,v4364_1_d0,v4364_1_address1,v4364_1_ce1,v4364_1_q1,v4364_2_address0,v4364_2_ce0,v4364_2_we0,v4364_2_d0,v4364_2_address1,v4364_2_ce1,v4364_2_q1,v4364_3_address0,v4364_3_ce0,v4364_3_we0,v4364_3_d0,v4364_3_address1,v4364_3_ce1,v4364_3_q1,v4363_3_address0,v4363_3_ce0,v4363_3_q0,v4361_3_address0,v4361_3_ce0,v4361_3_q0,v4361_2_address0,v4361_2_ce0,v4361_2_q0,v4361_1_address0,v4361_1_ce0,v4361_1_q0,v4361_address0,v4361_ce0,v4361_q0,v4363_2_address0,v4363_2_ce0,v4363_2_q0,v4363_1_address0,v4363_1_ce0,v4363_1_q0,v4363_address0,v4363_ce0,v4363_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] sext_ln6113;
input  [0:0] tmp;
output  [5:0] v4362_15_address0;
output   v4362_15_ce0;
input  [7:0] v4362_15_q0;
output  [5:0] v4362_11_address0;
output   v4362_11_ce0;
input  [7:0] v4362_11_q0;
output  [5:0] v4362_7_address0;
output   v4362_7_ce0;
input  [7:0] v4362_7_q0;
output  [5:0] v4362_3_address0;
output   v4362_3_ce0;
input  [7:0] v4362_3_q0;
output  [5:0] v4362_14_address0;
output   v4362_14_ce0;
input  [7:0] v4362_14_q0;
output  [5:0] v4362_10_address0;
output   v4362_10_ce0;
input  [7:0] v4362_10_q0;
output  [5:0] v4362_6_address0;
output   v4362_6_ce0;
input  [7:0] v4362_6_q0;
output  [5:0] v4362_2_address0;
output   v4362_2_ce0;
input  [7:0] v4362_2_q0;
output  [5:0] v4362_13_address0;
output   v4362_13_ce0;
input  [7:0] v4362_13_q0;
output  [5:0] v4362_9_address0;
output   v4362_9_ce0;
input  [7:0] v4362_9_q0;
output  [5:0] v4362_5_address0;
output   v4362_5_ce0;
input  [7:0] v4362_5_q0;
output  [5:0] v4362_1_address0;
output   v4362_1_ce0;
input  [7:0] v4362_1_q0;
output  [5:0] v4362_12_address0;
output   v4362_12_ce0;
input  [7:0] v4362_12_q0;
output  [5:0] v4362_8_address0;
output   v4362_8_ce0;
input  [7:0] v4362_8_q0;
output  [5:0] v4362_4_address0;
output   v4362_4_ce0;
input  [7:0] v4362_4_q0;
output  [5:0] v4362_address0;
output   v4362_ce0;
input  [7:0] v4362_q0;
output  [8:0] v4364_address0;
output   v4364_ce0;
output   v4364_we0;
output  [7:0] v4364_d0;
output  [8:0] v4364_address1;
output   v4364_ce1;
input  [7:0] v4364_q1;
output  [8:0] v4364_1_address0;
output   v4364_1_ce0;
output   v4364_1_we0;
output  [7:0] v4364_1_d0;
output  [8:0] v4364_1_address1;
output   v4364_1_ce1;
input  [7:0] v4364_1_q1;
output  [8:0] v4364_2_address0;
output   v4364_2_ce0;
output   v4364_2_we0;
output  [7:0] v4364_2_d0;
output  [8:0] v4364_2_address1;
output   v4364_2_ce1;
input  [7:0] v4364_2_q1;
output  [8:0] v4364_3_address0;
output   v4364_3_ce0;
output   v4364_3_we0;
output  [7:0] v4364_3_d0;
output  [8:0] v4364_3_address1;
output   v4364_3_ce1;
input  [7:0] v4364_3_q1;
output  [8:0] v4363_3_address0;
output   v4363_3_ce0;
input  [7:0] v4363_3_q0;
output  [8:0] v4361_3_address0;
output   v4361_3_ce0;
input  [7:0] v4361_3_q0;
output  [8:0] v4361_2_address0;
output   v4361_2_ce0;
input  [7:0] v4361_2_q0;
output  [8:0] v4361_1_address0;
output   v4361_1_ce0;
input  [7:0] v4361_1_q0;
output  [8:0] v4361_address0;
output   v4361_ce0;
input  [7:0] v4361_q0;
output  [8:0] v4363_2_address0;
output   v4363_2_ce0;
input  [7:0] v4363_2_q0;
output  [8:0] v4363_1_address0;
output   v4363_1_ce0;
input  [7:0] v4363_1_q0;
output  [8:0] v4363_address0;
output   v4363_ce0;
input  [7:0] v4363_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6113_fu_670_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln6115174_reg_560;
reg   [0:0] icmp_ln6116173_reg_571;
reg   [0:0] icmp_ln6117172_reg_582;
wire    ap_block_pp0_stage0_11001;
wire  signed [8:0] sext_ln6113_cast_fu_593_p1;
reg  signed [8:0] sext_ln6113_cast_reg_1365;
wire   [0:0] xor_ln6113_fu_638_p2;
reg   [0:0] xor_ln6113_reg_1370;
wire   [0:0] icmp_ln6115_fu_664_p2;
reg   [0:0] icmp_ln6115_reg_1376;
reg   [0:0] icmp_ln6113_reg_1381;
reg   [0:0] icmp_ln6113_reg_1381_pp0_iter1_reg;
wire   [2:0] v4134_mid2_fu_797_p3;
reg   [2:0] v4134_mid2_reg_1385;
wire   [2:0] v4133_fu_805_p3;
reg   [2:0] v4133_reg_1390;
wire   [3:0] lshr_ln_fu_813_p4;
reg   [3:0] lshr_ln_reg_1395;
wire   [0:0] cmp33_i_i_fu_841_p2;
reg   [0:0] cmp33_i_i_reg_1400;
reg   [0:0] cmp33_i_i_reg_1400_pp0_iter2_reg;
reg   [0:0] cmp33_i_i_reg_1400_pp0_iter3_reg;
reg   [0:0] cmp33_i_i_reg_1400_pp0_iter4_reg;
wire   [0:0] brmerge115_i_fu_866_p2;
reg   [0:0] brmerge115_i_reg_1408;
reg   [0:0] brmerge115_i_reg_1408_pp0_iter2_reg;
reg   [0:0] brmerge115_i_reg_1408_pp0_iter3_reg;
reg   [0:0] brmerge115_i_reg_1408_pp0_iter4_reg;
reg   [0:0] brmerge115_i_reg_1408_pp0_iter5_reg;
reg   [0:0] brmerge115_i_reg_1408_pp0_iter6_reg;
reg   [2:0] lshr_ln57_reg_1416;
wire   [6:0] add_ln6119_fu_885_p2;
reg   [6:0] add_ln6119_reg_1422;
wire   [5:0] trunc_ln6119_fu_891_p1;
reg   [5:0] trunc_ln6119_reg_1427;
wire   [0:0] icmp_ln6117_fu_915_p2;
reg   [0:0] icmp_ln6117_reg_1432;
wire   [0:0] icmp_ln6116_fu_921_p2;
reg   [0:0] icmp_ln6116_reg_1437;
wire   [63:0] p_cast_fu_977_p1;
reg   [63:0] p_cast_reg_1442;
reg   [63:0] p_cast_reg_1442_pp0_iter3_reg;
wire   [8:0] add_ln6149_1_fu_1031_p2;
reg   [8:0] add_ln6149_1_reg_1478;
reg   [8:0] add_ln6149_1_reg_1478_pp0_iter3_reg;
wire   [63:0] zext_ln6119_3_fu_1043_p1;
reg   [63:0] zext_ln6119_3_reg_1483;
reg   [63:0] zext_ln6119_3_reg_1483_pp0_iter3_reg;
reg   [8:0] v4364_addr_reg_1633;
reg   [8:0] v4364_addr_reg_1633_pp0_iter5_reg;
reg   [8:0] v4364_addr_reg_1633_pp0_iter6_reg;
reg   [8:0] v4364_addr_reg_1633_pp0_iter7_reg;
reg   [8:0] v4364_1_addr_reg_1639;
reg   [8:0] v4364_1_addr_reg_1639_pp0_iter5_reg;
reg   [8:0] v4364_1_addr_reg_1639_pp0_iter6_reg;
reg   [8:0] v4364_1_addr_reg_1639_pp0_iter7_reg;
reg   [8:0] v4364_2_addr_reg_1645;
reg   [8:0] v4364_2_addr_reg_1645_pp0_iter5_reg;
reg   [8:0] v4364_2_addr_reg_1645_pp0_iter6_reg;
reg   [8:0] v4364_2_addr_reg_1645_pp0_iter7_reg;
reg   [8:0] v4364_3_addr_reg_1651;
reg   [8:0] v4364_3_addr_reg_1651_pp0_iter5_reg;
reg   [8:0] v4364_3_addr_reg_1651_pp0_iter6_reg;
reg   [8:0] v4364_3_addr_reg_1651_pp0_iter7_reg;
wire   [7:0] mul_ln6205_2_fu_1087_p2;
reg   [7:0] mul_ln6205_2_reg_1718;
wire   [7:0] mul_ln6215_2_fu_1093_p2;
reg   [7:0] mul_ln6215_2_reg_1723;
wire   [7:0] mul_ln6225_2_fu_1099_p2;
reg   [7:0] mul_ln6225_2_reg_1728;
wire   [7:0] mul_ln6235_2_fu_1105_p2;
reg   [7:0] mul_ln6235_2_reg_1733;
wire   [7:0] grp_fu_1211_p3;
wire   [7:0] grp_fu_1219_p3;
wire   [7:0] grp_fu_1227_p3;
wire   [7:0] grp_fu_1235_p3;
wire   [7:0] select_ln6252_fu_1129_p3;
reg   [7:0] select_ln6252_reg_1758;
wire   [7:0] select_ln6263_fu_1154_p3;
reg   [7:0] select_ln6263_reg_1763;
wire   [7:0] select_ln6274_fu_1179_p3;
reg   [7:0] select_ln6274_reg_1768;
wire   [7:0] select_ln6285_fu_1204_p3;
reg   [7:0] select_ln6285_reg_1773;
reg   [0:0] ap_phi_mux_icmp_ln6115174_phi_fu_563_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln6116173_phi_fu_575_p4;
reg   [0:0] ap_phi_mux_icmp_ln6117172_phi_fu_586_p4;
wire   [63:0] zext_ln6149_5_fu_1048_p1;
reg   [11:0] indvar_flatten35165_fu_140;
wire   [11:0] add_ln6113_1_fu_658_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten35165_load;
reg   [5:0] v4131166_fu_144;
wire   [5:0] v4131_fu_725_p3;
reg   [9:0] indvar_flatten12167_fu_148;
wire   [9:0] select_ln6115_1_fu_650_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12167_load;
reg   [5:0] v4132168_fu_152;
wire   [5:0] v4132_fu_771_p3;
reg   [5:0] indvar_flatten169_fu_156;
wire   [5:0] select_ln6116_1_fu_907_p3;
reg   [2:0] v4133170_fu_160;
reg   [2:0] v4134171_fu_164;
wire   [2:0] v4134_fu_895_p2;
reg    v4362_12_ce0_local;
reg    v4362_8_ce0_local;
reg    v4362_4_ce0_local;
reg    v4362_ce0_local;
reg    v4363_ce0_local;
reg    v4362_15_ce0_local;
reg    v4362_11_ce0_local;
reg    v4362_7_ce0_local;
reg    v4362_3_ce0_local;
reg    v4362_13_ce0_local;
reg    v4362_9_ce0_local;
reg    v4362_5_ce0_local;
reg    v4362_1_ce0_local;
reg    v4363_3_ce0_local;
reg    v4363_1_ce0_local;
reg    v4362_14_ce0_local;
reg    v4362_10_ce0_local;
reg    v4362_6_ce0_local;
reg    v4362_2_ce0_local;
reg    v4361_3_ce0_local;
reg    v4364_3_ce1_local;
reg    v4364_3_we0_local;
reg    v4364_3_ce0_local;
reg    v4361_2_ce0_local;
reg    v4364_2_ce1_local;
reg    v4364_2_we0_local;
reg    v4364_2_ce0_local;
reg    v4361_1_ce0_local;
reg    v4364_1_ce1_local;
reg    v4364_1_we0_local;
reg    v4364_1_ce0_local;
reg    v4361_ce0_local;
reg    v4364_ce1_local;
reg    v4364_we0_local;
reg    v4364_ce0_local;
reg    v4363_2_ce0_local;
wire   [9:0] add_ln6115_1_fu_644_p2;
wire   [5:0] add_ln6113_fu_701_p2;
wire   [5:0] select_ln6113_fu_707_p3;
wire   [0:0] and_ln6113_1_fu_720_p2;
wire   [0:0] empty_fu_739_p2;
wire   [0:0] exitcond_flatten_not_fu_753_p2;
wire   [0:0] and_ln6113_fu_715_p2;
wire   [0:0] not_exitcond_flatten_mid234_fu_759_p2;
wire   [5:0] add_ln6115_fu_733_p2;
wire   [2:0] v4133_mid26_fu_745_p3;
wire   [0:0] icmp_ln6117_mid211_fu_765_p2;
wire   [0:0] empty_263_fu_785_p2;
wire   [0:0] empty_264_fu_791_p2;
wire   [2:0] add_ln6116_fu_779_p2;
wire   [6:0] p_shl21_fu_827_p3;
wire   [6:0] zext_ln6119_1_fu_823_p1;
wire   [4:0] empty_265_fu_847_p1;
wire   [8:0] v4131_cast13_cast_i_fu_851_p1;
wire   [8:0] empty_266_fu_855_p2;
wire   [0:0] cmp457_i_not_i_fu_860_p2;
wire   [6:0] sub_ln6119_fu_835_p2;
wire   [6:0] zext_ln6149_1_fu_881_p1;
wire   [5:0] add_ln6116_1_fu_901_p2;
wire   [5:0] p_shl20_fu_958_p3;
wire   [5:0] zext_ln6149_fu_955_p1;
wire   [5:0] zext_ln6119_fu_952_p1;
wire   [5:0] empty_267_fu_971_p2;
wire   [5:0] sub_ln6149_fu_965_p2;
wire   [5:0] zext_ln6149_2_fu_985_p1;
wire   [5:0] add_ln6149_fu_988_p2;
wire   [8:0] p_shl19_fu_998_p3;
wire   [8:0] zext_ln6149_3_fu_994_p1;
wire   [8:0] tmp_187_fu_1012_p3;
wire   [8:0] zext_ln6119_2_fu_1019_p1;
wire   [8:0] sub_ln6149_1_fu_1006_p2;
wire   [8:0] zext_ln6149_4_fu_1028_p1;
wire   [8:0] sub_ln6117_fu_1022_p2;
wire   [8:0] add_ln6119_1_fu_1037_p2;
wire  signed [7:0] v4264_fu_1111_p0;
wire   [7:0] grp_fu_1251_p3;
wire  signed [7:0] v4264_fu_1111_p1;
wire   [7:0] grp_fu_1243_p3;
(* use_dsp48 = "no" *) wire   [7:0] v4264_fu_1111_p2;
wire   [0:0] v4265_fu_1115_p2;
wire   [7:0] v4266_1_fu_1121_p3;
wire  signed [7:0] v4274_fu_1136_p0;
wire   [7:0] grp_fu_1268_p3;
wire  signed [7:0] v4274_fu_1136_p1;
wire   [7:0] grp_fu_1260_p3;
(* use_dsp48 = "no" *) wire   [7:0] v4274_fu_1136_p2;
wire   [0:0] v4275_fu_1140_p2;
wire   [7:0] v4276_1_fu_1146_p3;
wire  signed [7:0] v4284_fu_1161_p0;
wire   [7:0] grp_fu_1285_p3;
wire  signed [7:0] v4284_fu_1161_p1;
wire   [7:0] grp_fu_1277_p3;
(* use_dsp48 = "no" *) wire   [7:0] v4284_fu_1161_p2;
wire   [0:0] v4285_fu_1165_p2;
wire   [7:0] v4286_1_fu_1171_p3;
wire  signed [7:0] v4294_fu_1186_p0;
wire   [7:0] grp_fu_1302_p3;
wire  signed [7:0] v4294_fu_1186_p1;
wire   [7:0] grp_fu_1294_p3;
(* use_dsp48 = "no" *) wire   [7:0] v4294_fu_1186_p2;
wire   [0:0] v4295_fu_1190_p2;
wire   [7:0] v4296_1_fu_1196_p3;
wire   [7:0] grp_fu_1211_p2;
wire   [7:0] grp_fu_1219_p2;
wire   [7:0] grp_fu_1227_p2;
wire   [7:0] grp_fu_1235_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1078;
reg    ap_condition_1083;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 indvar_flatten35165_fu_140 = 12'd0;
#0 v4131166_fu_144 = 6'd0;
#0 indvar_flatten12167_fu_148 = 10'd0;
#0 v4132168_fu_152 = 6'd0;
#0 indvar_flatten169_fu_156 = 6'd0;
#0 v4133170_fu_160 = 3'd0;
#0 v4134171_fu_164 = 3'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7470(.din0(v4363_2_q0),.din1(v4362_14_q0),.dout(mul_ln6205_2_fu_1087_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7471(.din0(v4363_2_q0),.din1(v4362_10_q0),.dout(mul_ln6215_2_fu_1093_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7472(.din0(v4363_2_q0),.din1(v4362_6_q0),.dout(mul_ln6225_2_fu_1099_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7473(.din0(v4363_2_q0),.din1(v4362_2_q0),.dout(mul_ln6235_2_fu_1105_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7474(.clk(ap_clk),.reset(ap_rst),.din0(v4363_q0),.din1(v4362_12_q0),.din2(grp_fu_1211_p2),.ce(1'b1),.dout(grp_fu_1211_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7475(.clk(ap_clk),.reset(ap_rst),.din0(v4363_q0),.din1(v4362_8_q0),.din2(grp_fu_1219_p2),.ce(1'b1),.dout(grp_fu_1219_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7476(.clk(ap_clk),.reset(ap_rst),.din0(v4363_q0),.din1(v4362_4_q0),.din2(grp_fu_1227_p2),.ce(1'b1),.dout(grp_fu_1227_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7477(.clk(ap_clk),.reset(ap_rst),.din0(v4363_q0),.din1(v4362_q0),.din2(grp_fu_1235_p2),.ce(1'b1),.dout(grp_fu_1235_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7478(.clk(ap_clk),.reset(ap_rst),.din0(v4363_1_q0),.din1(v4362_13_q0),.din2(mul_ln6205_2_reg_1718),.ce(1'b1),.dout(grp_fu_1243_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7479(.clk(ap_clk),.reset(ap_rst),.din0(v4363_3_q0),.din1(v4362_15_q0),.din2(grp_fu_1211_p3),.ce(1'b1),.dout(grp_fu_1251_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7480(.clk(ap_clk),.reset(ap_rst),.din0(v4363_1_q0),.din1(v4362_9_q0),.din2(mul_ln6215_2_reg_1723),.ce(1'b1),.dout(grp_fu_1260_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7481(.clk(ap_clk),.reset(ap_rst),.din0(v4363_3_q0),.din1(v4362_11_q0),.din2(grp_fu_1219_p3),.ce(1'b1),.dout(grp_fu_1268_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7482(.clk(ap_clk),.reset(ap_rst),.din0(v4363_1_q0),.din1(v4362_5_q0),.din2(mul_ln6225_2_reg_1728),.ce(1'b1),.dout(grp_fu_1277_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7483(.clk(ap_clk),.reset(ap_rst),.din0(v4363_3_q0),.din1(v4362_7_q0),.din2(grp_fu_1227_p3),.ce(1'b1),.dout(grp_fu_1285_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7484(.clk(ap_clk),.reset(ap_rst),.din0(v4363_1_q0),.din1(v4362_1_q0),.din2(mul_ln6235_2_reg_1733),.ce(1'b1),.dout(grp_fu_1294_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U7485(.clk(ap_clk),.reset(ap_rst),.din0(v4363_3_q0),.din1(v4362_3_q0),.din2(grp_fu_1235_p3),.ce(1'b1),.dout(grp_fu_1302_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1083)) begin
            icmp_ln6115174_reg_560 <= icmp_ln6115_reg_1376;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln6115174_reg_560 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6113_reg_1381_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln6116173_reg_571 <= icmp_ln6116_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6116173_reg_571 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6113_reg_1381_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln6117172_reg_582 <= icmp_ln6117_reg_1432;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6117172_reg_582 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12167_fu_148 <= select_ln6115_1_fu_650_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12167_fu_148 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten169_fu_156 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten169_fu_156 <= select_ln6116_1_fu_907_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten35165_fu_140 <= add_ln6113_1_fu_658_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35165_fu_140 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4131166_fu_144 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4131166_fu_144 <= v4131_fu_725_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4132168_fu_152 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4132168_fu_152 <= v4132_fu_771_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4133170_fu_160 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4133170_fu_160 <= v4133_fu_805_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v4134171_fu_164 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v4134171_fu_164 <= v4134_fu_895_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6119_reg_1422 <= add_ln6119_fu_885_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        brmerge115_i_reg_1408 <= brmerge115_i_fu_866_p2;
        cmp33_i_i_reg_1400 <= cmp33_i_i_fu_841_p2;
        icmp_ln6113_reg_1381 <= icmp_ln6113_fu_670_p2;
        icmp_ln6113_reg_1381_pp0_iter1_reg <= icmp_ln6113_reg_1381;
        lshr_ln57_reg_1416 <= {{v4132_fu_771_p3[4:2]}};
        lshr_ln_reg_1395 <= {{v4131_fu_725_p3[5:2]}};
        sext_ln6113_cast_reg_1365 <= sext_ln6113_cast_fu_593_p1;
        trunc_ln6119_reg_1427 <= trunc_ln6119_fu_891_p1;
        v4133_reg_1390 <= v4133_fu_805_p3;
        v4134_mid2_reg_1385 <= v4134_mid2_fu_797_p3;
        xor_ln6113_reg_1370 <= xor_ln6113_fu_638_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln6149_1_reg_1478 <= add_ln6149_1_fu_1031_p2;
        add_ln6149_1_reg_1478_pp0_iter3_reg <= add_ln6149_1_reg_1478;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        brmerge115_i_reg_1408_pp0_iter2_reg <= brmerge115_i_reg_1408;
        brmerge115_i_reg_1408_pp0_iter3_reg <= brmerge115_i_reg_1408_pp0_iter2_reg;
        brmerge115_i_reg_1408_pp0_iter4_reg <= brmerge115_i_reg_1408_pp0_iter3_reg;
        brmerge115_i_reg_1408_pp0_iter5_reg <= brmerge115_i_reg_1408_pp0_iter4_reg;
        brmerge115_i_reg_1408_pp0_iter6_reg <= brmerge115_i_reg_1408_pp0_iter5_reg;
        cmp33_i_i_reg_1400_pp0_iter2_reg <= cmp33_i_i_reg_1400;
        cmp33_i_i_reg_1400_pp0_iter3_reg <= cmp33_i_i_reg_1400_pp0_iter2_reg;
        cmp33_i_i_reg_1400_pp0_iter4_reg <= cmp33_i_i_reg_1400_pp0_iter3_reg;
        mul_ln6205_2_reg_1718 <= mul_ln6205_2_fu_1087_p2;
        mul_ln6215_2_reg_1723 <= mul_ln6215_2_fu_1093_p2;
        mul_ln6225_2_reg_1728 <= mul_ln6225_2_fu_1099_p2;
        mul_ln6235_2_reg_1733 <= mul_ln6235_2_fu_1105_p2;
        p_cast_reg_1442[5 : 0] <= p_cast_fu_977_p1[5 : 0];
        p_cast_reg_1442_pp0_iter3_reg[5 : 0] <= p_cast_reg_1442[5 : 0];
        select_ln6252_reg_1758 <= select_ln6252_fu_1129_p3;
        select_ln6263_reg_1763 <= select_ln6263_fu_1154_p3;
        select_ln6274_reg_1768 <= select_ln6274_fu_1179_p3;
        select_ln6285_reg_1773 <= select_ln6285_fu_1204_p3;
        v4364_1_addr_reg_1639 <= zext_ln6149_5_fu_1048_p1;
        v4364_1_addr_reg_1639_pp0_iter5_reg <= v4364_1_addr_reg_1639;
        v4364_1_addr_reg_1639_pp0_iter6_reg <= v4364_1_addr_reg_1639_pp0_iter5_reg;
        v4364_1_addr_reg_1639_pp0_iter7_reg <= v4364_1_addr_reg_1639_pp0_iter6_reg;
        v4364_2_addr_reg_1645 <= zext_ln6149_5_fu_1048_p1;
        v4364_2_addr_reg_1645_pp0_iter5_reg <= v4364_2_addr_reg_1645;
        v4364_2_addr_reg_1645_pp0_iter6_reg <= v4364_2_addr_reg_1645_pp0_iter5_reg;
        v4364_2_addr_reg_1645_pp0_iter7_reg <= v4364_2_addr_reg_1645_pp0_iter6_reg;
        v4364_3_addr_reg_1651 <= zext_ln6149_5_fu_1048_p1;
        v4364_3_addr_reg_1651_pp0_iter5_reg <= v4364_3_addr_reg_1651;
        v4364_3_addr_reg_1651_pp0_iter6_reg <= v4364_3_addr_reg_1651_pp0_iter5_reg;
        v4364_3_addr_reg_1651_pp0_iter7_reg <= v4364_3_addr_reg_1651_pp0_iter6_reg;
        v4364_addr_reg_1633 <= zext_ln6149_5_fu_1048_p1;
        v4364_addr_reg_1633_pp0_iter5_reg <= v4364_addr_reg_1633;
        v4364_addr_reg_1633_pp0_iter6_reg <= v4364_addr_reg_1633_pp0_iter5_reg;
        v4364_addr_reg_1633_pp0_iter7_reg <= v4364_addr_reg_1633_pp0_iter6_reg;
        zext_ln6119_3_reg_1483[8 : 0] <= zext_ln6119_3_fu_1043_p1[8 : 0];
        zext_ln6119_3_reg_1483_pp0_iter3_reg[8 : 0] <= zext_ln6119_3_reg_1483[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6115_reg_1376 <= icmp_ln6115_fu_664_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6116_reg_1437 <= icmp_ln6116_fu_921_p2;
        icmp_ln6117_reg_1432 <= icmp_ln6117_fu_915_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6113_fu_670_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1078)) begin
            ap_phi_mux_icmp_ln6115174_phi_fu_563_p4 = icmp_ln6115_reg_1376;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln6115174_phi_fu_563_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln6115174_phi_fu_563_p4 = icmp_ln6115_reg_1376;
        end
    end else begin
        ap_phi_mux_icmp_ln6115174_phi_fu_563_p4 = icmp_ln6115_reg_1376;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln6113_reg_1381_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln6116173_phi_fu_575_p4 = icmp_ln6116_reg_1437;
    end else begin
        ap_phi_mux_icmp_ln6116173_phi_fu_575_p4 = icmp_ln6116173_reg_571;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln6113_reg_1381_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln6117172_phi_fu_586_p4 = icmp_ln6117_reg_1432;
    end else begin
        ap_phi_mux_icmp_ln6117172_phi_fu_586_p4 = icmp_ln6117172_reg_582;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12167_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12167_load = indvar_flatten12167_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35165_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35165_load = indvar_flatten35165_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4361_1_ce0_local = 1'b1;
    end else begin
        v4361_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4361_2_ce0_local = 1'b1;
    end else begin
        v4361_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4361_3_ce0_local = 1'b1;
    end else begin
        v4361_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4361_ce0_local = 1'b1;
    end else begin
        v4361_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4362_10_ce0_local = 1'b1;
    end else begin
        v4362_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_11_ce0_local = 1'b1;
    end else begin
        v4362_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4362_12_ce0_local = 1'b1;
    end else begin
        v4362_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_13_ce0_local = 1'b1;
    end else begin
        v4362_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4362_14_ce0_local = 1'b1;
    end else begin
        v4362_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_15_ce0_local = 1'b1;
    end else begin
        v4362_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_1_ce0_local = 1'b1;
    end else begin
        v4362_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4362_2_ce0_local = 1'b1;
    end else begin
        v4362_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_3_ce0_local = 1'b1;
    end else begin
        v4362_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4362_4_ce0_local = 1'b1;
    end else begin
        v4362_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_5_ce0_local = 1'b1;
    end else begin
        v4362_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4362_6_ce0_local = 1'b1;
    end else begin
        v4362_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_7_ce0_local = 1'b1;
    end else begin
        v4362_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4362_8_ce0_local = 1'b1;
    end else begin
        v4362_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4362_9_ce0_local = 1'b1;
    end else begin
        v4362_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4362_ce0_local = 1'b1;
    end else begin
        v4362_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4363_1_ce0_local = 1'b1;
    end else begin
        v4363_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4363_2_ce0_local = 1'b1;
    end else begin
        v4363_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4363_3_ce0_local = 1'b1;
    end else begin
        v4363_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v4363_ce0_local = 1'b1;
    end else begin
        v4363_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v4364_1_ce0_local = 1'b1;
    end else begin
        v4364_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4364_1_ce1_local = 1'b1;
    end else begin
        v4364_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v4364_1_we0_local = 1'b1;
    end else begin
        v4364_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v4364_2_ce0_local = 1'b1;
    end else begin
        v4364_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4364_2_ce1_local = 1'b1;
    end else begin
        v4364_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v4364_2_we0_local = 1'b1;
    end else begin
        v4364_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v4364_3_ce0_local = 1'b1;
    end else begin
        v4364_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4364_3_ce1_local = 1'b1;
    end else begin
        v4364_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v4364_3_we0_local = 1'b1;
    end else begin
        v4364_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v4364_ce0_local = 1'b1;
    end else begin
        v4364_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v4364_ce1_local = 1'b1;
    end else begin
        v4364_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v4364_we0_local = 1'b1;
    end else begin
        v4364_we0_local = 1'b0;
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
assign add_ln6113_1_fu_658_p2 = (ap_sig_allocacmp_indvar_flatten35165_load + 12'd1);
assign add_ln6113_fu_701_p2 = (v4131166_fu_144 + 6'd4);
assign add_ln6115_1_fu_644_p2 = (ap_sig_allocacmp_indvar_flatten12167_load + 10'd1);
assign add_ln6115_fu_733_p2 = (select_ln6113_fu_707_p3 + 6'd4);
assign add_ln6116_1_fu_901_p2 = (indvar_flatten169_fu_156 + 6'd1);
assign add_ln6116_fu_779_p2 = (v4133_mid26_fu_745_p3 + 3'd1);
assign add_ln6119_1_fu_1037_p2 = (sub_ln6117_fu_1022_p2 + zext_ln6149_4_fu_1028_p1);
assign add_ln6119_fu_885_p2 = (sub_ln6119_fu_835_p2 + zext_ln6149_1_fu_881_p1);
assign add_ln6149_1_fu_1031_p2 = (sub_ln6149_1_fu_1006_p2 + zext_ln6149_4_fu_1028_p1);
assign add_ln6149_fu_988_p2 = (sub_ln6149_fu_965_p2 + zext_ln6149_2_fu_985_p1);
assign and_ln6113_1_fu_720_p2 = (xor_ln6113_reg_1370 & ap_phi_mux_icmp_ln6116173_phi_fu_575_p4);
assign and_ln6113_fu_715_p2 = (xor_ln6113_reg_1370 & ap_phi_mux_icmp_ln6117172_phi_fu_586_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1078 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln6113_reg_1381 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_1083 = ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln6113_reg_1381 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge115_i_fu_866_p2 = (tmp | cmp457_i_not_i_fu_860_p2);
assign cmp33_i_i_fu_841_p2 = ((v4131_fu_725_p3 == 6'd0) ? 1'b1 : 1'b0);
assign cmp457_i_not_i_fu_860_p2 = ((empty_266_fu_855_p2 != 9'd385) ? 1'b1 : 1'b0);
assign empty_263_fu_785_p2 = (icmp_ln6117_mid211_fu_765_p2 | and_ln6113_1_fu_720_p2);
assign empty_264_fu_791_p2 = (icmp_ln6115174_reg_560 | empty_263_fu_785_p2);
assign empty_265_fu_847_p1 = v4131_fu_725_p3[4:0];
assign empty_266_fu_855_p2 = ($signed(sext_ln6113_cast_reg_1365) - $signed(v4131_cast13_cast_i_fu_851_p1));
assign empty_267_fu_971_p2 = (p_shl20_fu_958_p3 + zext_ln6119_fu_952_p1);
assign empty_fu_739_p2 = (icmp_ln6115174_reg_560 | and_ln6113_1_fu_720_p2);
assign exitcond_flatten_not_fu_753_p2 = (ap_phi_mux_icmp_ln6116173_phi_fu_575_p4 ^ 1'd1);
assign grp_fu_1211_p2 = ((cmp33_i_i_reg_1400_pp0_iter4_reg[0:0] == 1'b1) ? v4361_3_q0 : v4364_3_q1);
assign grp_fu_1219_p2 = ((cmp33_i_i_reg_1400_pp0_iter4_reg[0:0] == 1'b1) ? v4361_2_q0 : v4364_2_q1);
assign grp_fu_1227_p2 = ((cmp33_i_i_reg_1400_pp0_iter4_reg[0:0] == 1'b1) ? v4361_1_q0 : v4364_1_q1);
assign grp_fu_1235_p2 = ((cmp33_i_i_reg_1400_pp0_iter4_reg[0:0] == 1'b1) ? v4361_q0 : v4364_q1);
assign icmp_ln6113_fu_670_p2 = ((ap_sig_allocacmp_indvar_flatten35165_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln6115_fu_664_p2 = ((select_ln6115_1_fu_650_p3 == 10'd392) ? 1'b1 : 1'b0);
assign icmp_ln6116_fu_921_p2 = ((select_ln6116_1_fu_907_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6117_fu_915_p2 = ((v4134_fu_895_p2 == 3'd7) ? 1'b1 : 1'b0);
assign icmp_ln6117_mid211_fu_765_p2 = (not_exitcond_flatten_mid234_fu_759_p2 & and_ln6113_fu_715_p2);
assign lshr_ln_fu_813_p4 = {{v4131_fu_725_p3[5:2]}};
assign not_exitcond_flatten_mid234_fu_759_p2 = (icmp_ln6115174_reg_560 | exitcond_flatten_not_fu_753_p2);
assign p_cast_fu_977_p1 = empty_267_fu_971_p2;
assign p_shl19_fu_998_p3 = {{add_ln6149_fu_988_p2}, {3'd0}};
assign p_shl20_fu_958_p3 = {{lshr_ln57_reg_1416}, {3'd0}};
assign p_shl21_fu_827_p3 = {{lshr_ln_fu_813_p4}, {3'd0}};
assign select_ln6113_fu_707_p3 = ((icmp_ln6115174_reg_560[0:0] == 1'b1) ? 6'd0 : v4132168_fu_152);
assign select_ln6115_1_fu_650_p3 = ((ap_phi_mux_icmp_ln6115174_phi_fu_563_p4[0:0] == 1'b1) ? 10'd1 : add_ln6115_1_fu_644_p2);
assign select_ln6116_1_fu_907_p3 = ((empty_fu_739_p2[0:0] == 1'b1) ? 6'd1 : add_ln6116_1_fu_901_p2);
assign select_ln6252_fu_1129_p3 = ((brmerge115_i_reg_1408_pp0_iter6_reg[0:0] == 1'b1) ? v4264_fu_1111_p2 : v4266_1_fu_1121_p3);
assign select_ln6263_fu_1154_p3 = ((brmerge115_i_reg_1408_pp0_iter6_reg[0:0] == 1'b1) ? v4274_fu_1136_p2 : v4276_1_fu_1146_p3);
assign select_ln6274_fu_1179_p3 = ((brmerge115_i_reg_1408_pp0_iter6_reg[0:0] == 1'b1) ? v4284_fu_1161_p2 : v4286_1_fu_1171_p3);
assign select_ln6285_fu_1204_p3 = ((brmerge115_i_reg_1408_pp0_iter6_reg[0:0] == 1'b1) ? v4294_fu_1186_p2 : v4296_1_fu_1196_p3);
assign sext_ln6113_cast_fu_593_p1 = $signed(sext_ln6113);
assign sub_ln6117_fu_1022_p2 = (tmp_187_fu_1012_p3 - zext_ln6119_2_fu_1019_p1);
assign sub_ln6119_fu_835_p2 = (p_shl21_fu_827_p3 - zext_ln6119_1_fu_823_p1);
assign sub_ln6149_1_fu_1006_p2 = (p_shl19_fu_998_p3 - zext_ln6149_3_fu_994_p1);
assign sub_ln6149_fu_965_p2 = (p_shl20_fu_958_p3 - zext_ln6149_fu_955_p1);
assign tmp_187_fu_1012_p3 = {{trunc_ln6119_reg_1427}, {3'd0}};
assign trunc_ln6119_fu_891_p1 = add_ln6119_fu_885_p2[5:0];
assign v4131_cast13_cast_i_fu_851_p1 = empty_265_fu_847_p1;
assign v4131_fu_725_p3 = ((icmp_ln6115174_reg_560[0:0] == 1'b1) ? add_ln6113_fu_701_p2 : v4131166_fu_144);
assign v4132_fu_771_p3 = ((and_ln6113_1_fu_720_p2[0:0] == 1'b1) ? add_ln6115_fu_733_p2 : select_ln6113_fu_707_p3);
assign v4133_fu_805_p3 = ((icmp_ln6117_mid211_fu_765_p2[0:0] == 1'b1) ? add_ln6116_fu_779_p2 : v4133_mid26_fu_745_p3);
assign v4133_mid26_fu_745_p3 = ((empty_fu_739_p2[0:0] == 1'b1) ? 3'd0 : v4133170_fu_160);
assign v4134_fu_895_p2 = (v4134_mid2_fu_797_p3 + 3'd1);
assign v4134_mid2_fu_797_p3 = ((empty_264_fu_791_p2[0:0] == 1'b1) ? 3'd0 : v4134171_fu_164);
assign v4264_fu_1111_p0 = grp_fu_1251_p3;
assign v4264_fu_1111_p1 = grp_fu_1243_p3;
assign v4264_fu_1111_p2 = ($signed(v4264_fu_1111_p0) + $signed(v4264_fu_1111_p1));
assign v4265_fu_1115_p2 = (($signed(v4264_fu_1111_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4266_1_fu_1121_p3 = ((v4265_fu_1115_p2[0:0] == 1'b1) ? v4264_fu_1111_p2 : 8'd229);
assign v4274_fu_1136_p0 = grp_fu_1268_p3;
assign v4274_fu_1136_p1 = grp_fu_1260_p3;
assign v4274_fu_1136_p2 = ($signed(v4274_fu_1136_p0) + $signed(v4274_fu_1136_p1));
assign v4275_fu_1140_p2 = (($signed(v4274_fu_1136_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4276_1_fu_1146_p3 = ((v4275_fu_1140_p2[0:0] == 1'b1) ? v4274_fu_1136_p2 : 8'd229);
assign v4284_fu_1161_p0 = grp_fu_1285_p3;
assign v4284_fu_1161_p1 = grp_fu_1277_p3;
assign v4284_fu_1161_p2 = ($signed(v4284_fu_1161_p0) + $signed(v4284_fu_1161_p1));
assign v4285_fu_1165_p2 = (($signed(v4284_fu_1161_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4286_1_fu_1171_p3 = ((v4285_fu_1165_p2[0:0] == 1'b1) ? v4284_fu_1161_p2 : 8'd229);
assign v4294_fu_1186_p0 = grp_fu_1302_p3;
assign v4294_fu_1186_p1 = grp_fu_1294_p3;
assign v4294_fu_1186_p2 = ($signed(v4294_fu_1186_p0) + $signed(v4294_fu_1186_p1));
assign v4295_fu_1190_p2 = (($signed(v4294_fu_1186_p2) > $signed(8'd229)) ? 1'b1 : 1'b0);
assign v4296_1_fu_1196_p3 = ((v4295_fu_1190_p2[0:0] == 1'b1) ? v4294_fu_1186_p2 : 8'd229);
assign v4361_1_address0 = zext_ln6149_5_fu_1048_p1;
assign v4361_1_ce0 = v4361_1_ce0_local;
assign v4361_2_address0 = zext_ln6149_5_fu_1048_p1;
assign v4361_2_ce0 = v4361_2_ce0_local;
assign v4361_3_address0 = zext_ln6149_5_fu_1048_p1;
assign v4361_3_ce0 = v4361_3_ce0_local;
assign v4361_address0 = zext_ln6149_5_fu_1048_p1;
assign v4361_ce0 = v4361_ce0_local;
assign v4362_10_address0 = p_cast_reg_1442_pp0_iter3_reg;
assign v4362_10_ce0 = v4362_10_ce0_local;
assign v4362_11_address0 = p_cast_reg_1442;
assign v4362_11_ce0 = v4362_11_ce0_local;
assign v4362_12_address0 = p_cast_fu_977_p1;
assign v4362_12_ce0 = v4362_12_ce0_local;
assign v4362_13_address0 = p_cast_reg_1442;
assign v4362_13_ce0 = v4362_13_ce0_local;
assign v4362_14_address0 = p_cast_reg_1442_pp0_iter3_reg;
assign v4362_14_ce0 = v4362_14_ce0_local;
assign v4362_15_address0 = p_cast_reg_1442;
assign v4362_15_ce0 = v4362_15_ce0_local;
assign v4362_1_address0 = p_cast_reg_1442;
assign v4362_1_ce0 = v4362_1_ce0_local;
assign v4362_2_address0 = p_cast_reg_1442_pp0_iter3_reg;
assign v4362_2_ce0 = v4362_2_ce0_local;
assign v4362_3_address0 = p_cast_reg_1442;
assign v4362_3_ce0 = v4362_3_ce0_local;
assign v4362_4_address0 = p_cast_fu_977_p1;
assign v4362_4_ce0 = v4362_4_ce0_local;
assign v4362_5_address0 = p_cast_reg_1442;
assign v4362_5_ce0 = v4362_5_ce0_local;
assign v4362_6_address0 = p_cast_reg_1442_pp0_iter3_reg;
assign v4362_6_ce0 = v4362_6_ce0_local;
assign v4362_7_address0 = p_cast_reg_1442;
assign v4362_7_ce0 = v4362_7_ce0_local;
assign v4362_8_address0 = p_cast_fu_977_p1;
assign v4362_8_ce0 = v4362_8_ce0_local;
assign v4362_9_address0 = p_cast_reg_1442;
assign v4362_9_ce0 = v4362_9_ce0_local;
assign v4362_address0 = p_cast_fu_977_p1;
assign v4362_ce0 = v4362_ce0_local;
assign v4363_1_address0 = zext_ln6119_3_reg_1483;
assign v4363_1_ce0 = v4363_1_ce0_local;
assign v4363_2_address0 = zext_ln6119_3_reg_1483_pp0_iter3_reg;
assign v4363_2_ce0 = v4363_2_ce0_local;
assign v4363_3_address0 = zext_ln6119_3_reg_1483;
assign v4363_3_ce0 = v4363_3_ce0_local;
assign v4363_address0 = zext_ln6119_3_fu_1043_p1;
assign v4363_ce0 = v4363_ce0_local;
assign v4364_1_address0 = v4364_1_addr_reg_1639_pp0_iter7_reg;
assign v4364_1_address1 = zext_ln6149_5_fu_1048_p1;
assign v4364_1_ce0 = v4364_1_ce0_local;
assign v4364_1_ce1 = v4364_1_ce1_local;
assign v4364_1_d0 = select_ln6274_reg_1768;
assign v4364_1_we0 = v4364_1_we0_local;
assign v4364_2_address0 = v4364_2_addr_reg_1645_pp0_iter7_reg;
assign v4364_2_address1 = zext_ln6149_5_fu_1048_p1;
assign v4364_2_ce0 = v4364_2_ce0_local;
assign v4364_2_ce1 = v4364_2_ce1_local;
assign v4364_2_d0 = select_ln6263_reg_1763;
assign v4364_2_we0 = v4364_2_we0_local;
assign v4364_3_address0 = v4364_3_addr_reg_1651_pp0_iter7_reg;
assign v4364_3_address1 = zext_ln6149_5_fu_1048_p1;
assign v4364_3_ce0 = v4364_3_ce0_local;
assign v4364_3_ce1 = v4364_3_ce1_local;
assign v4364_3_d0 = select_ln6252_reg_1758;
assign v4364_3_we0 = v4364_3_we0_local;
assign v4364_address0 = v4364_addr_reg_1633_pp0_iter7_reg;
assign v4364_address1 = zext_ln6149_5_fu_1048_p1;
assign v4364_ce0 = v4364_ce0_local;
assign v4364_ce1 = v4364_ce1_local;
assign v4364_d0 = select_ln6285_reg_1773;
assign v4364_we0 = v4364_we0_local;
assign xor_ln6113_fu_638_p2 = (ap_phi_mux_icmp_ln6115174_phi_fu_563_p4 ^ 1'd1);
assign zext_ln6119_1_fu_823_p1 = lshr_ln_fu_813_p4;
assign zext_ln6119_2_fu_1019_p1 = add_ln6119_reg_1422;
assign zext_ln6119_3_fu_1043_p1 = add_ln6119_1_fu_1037_p2;
assign zext_ln6119_fu_952_p1 = lshr_ln_reg_1395;
assign zext_ln6149_1_fu_881_p1 = v4133_fu_805_p3;
assign zext_ln6149_2_fu_985_p1 = v4133_reg_1390;
assign zext_ln6149_3_fu_994_p1 = add_ln6149_fu_988_p2;
assign zext_ln6149_4_fu_1028_p1 = v4134_mid2_reg_1385;
assign zext_ln6149_5_fu_1048_p1 = add_ln6149_1_reg_1478_pp0_iter3_reg;
assign zext_ln6149_fu_955_p1 = lshr_ln57_reg_1416;
always @ (posedge ap_clk) begin
    p_cast_reg_1442[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_1442_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln6119_3_reg_1483[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln6119_3_reg_1483_pp0_iter3_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 