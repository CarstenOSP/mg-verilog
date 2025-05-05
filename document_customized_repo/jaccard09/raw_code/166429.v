module forward_dataflow_in_loop_VITIS_LOOP_788_1_Loop_VITIS_LOOP_529_1_proc115_Pipeline_VITIS_L (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty_86,empty_87,v368_3_i_address0,v368_3_i_ce0,v368_3_i_q0,v368_2_i_address0,v368_2_i_ce0,v368_2_i_q0,v368_1_i_address0,v368_1_i_ce0,v368_1_i_q0,v368_i_address0,v368_i_ce0,v368_i_q0,empty,v367_15_i_address0,v367_15_i_ce0,v367_15_i_q0,v367_11_i_address0,v367_11_i_ce0,v367_11_i_q0,v367_7_i_address0,v367_7_i_ce0,v367_7_i_q0,v367_3_i_address0,v367_3_i_ce0,v367_3_i_q0,v367_14_i_address0,v367_14_i_ce0,v367_14_i_q0,v367_10_i_address0,v367_10_i_ce0,v367_10_i_q0,v367_6_i_address0,v367_6_i_ce0,v367_6_i_q0,v367_2_i_address0,v367_2_i_ce0,v367_2_i_q0,v367_13_i_address0,v367_13_i_ce0,v367_13_i_q0,v367_9_i_address0,v367_9_i_ce0,v367_9_i_q0,v367_5_i_address0,v367_5_i_ce0,v367_5_i_q0,v367_1_i_address0,v367_1_i_ce0,v367_1_i_q0,v367_12_i_address0,v367_12_i_ce0,v367_12_i_q0,v367_8_i_address0,v367_8_i_ce0,v367_8_i_q0,v367_4_i_address0,v367_4_i_ce0,v367_4_i_q0,v367_i_address0,v367_i_ce0,v367_i_q0,rem_i,shl_ln,v361_0_address0,v361_0_ce0,v361_0_we0,v361_0_d0,v361_0_address1,v361_0_ce1,v361_0_q1,v361_1_address0,v361_1_ce0,v361_1_we0,v361_1_d0,v361_1_q0,v361_2_address0,v361_2_ce0,v361_2_we0,v361_2_d0,v361_2_q0,v361_3_address0,v361_3_ce0,v361_3_we0,v361_3_d0,v361_3_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [10:0] empty_86;
input  [4:0] empty_87;
output  [7:0] v368_3_i_address0;
output   v368_3_i_ce0;
input  [7:0] v368_3_i_q0;
output  [7:0] v368_2_i_address0;
output   v368_2_i_ce0;
input  [7:0] v368_2_i_q0;
output  [7:0] v368_1_i_address0;
output   v368_1_i_ce0;
input  [7:0] v368_1_i_q0;
output  [7:0] v368_i_address0;
output   v368_i_ce0;
input  [7:0] v368_i_q0;
input  [2:0] empty;
output  [10:0] v367_15_i_address0;
output   v367_15_i_ce0;
input  [7:0] v367_15_i_q0;
output  [10:0] v367_11_i_address0;
output   v367_11_i_ce0;
input  [7:0] v367_11_i_q0;
output  [10:0] v367_7_i_address0;
output   v367_7_i_ce0;
input  [7:0] v367_7_i_q0;
output  [10:0] v367_3_i_address0;
output   v367_3_i_ce0;
input  [7:0] v367_3_i_q0;
output  [10:0] v367_14_i_address0;
output   v367_14_i_ce0;
input  [7:0] v367_14_i_q0;
output  [10:0] v367_10_i_address0;
output   v367_10_i_ce0;
input  [7:0] v367_10_i_q0;
output  [10:0] v367_6_i_address0;
output   v367_6_i_ce0;
input  [7:0] v367_6_i_q0;
output  [10:0] v367_2_i_address0;
output   v367_2_i_ce0;
input  [7:0] v367_2_i_q0;
output  [10:0] v367_13_i_address0;
output   v367_13_i_ce0;
input  [7:0] v367_13_i_q0;
output  [10:0] v367_9_i_address0;
output   v367_9_i_ce0;
input  [7:0] v367_9_i_q0;
output  [10:0] v367_5_i_address0;
output   v367_5_i_ce0;
input  [7:0] v367_5_i_q0;
output  [10:0] v367_1_i_address0;
output   v367_1_i_ce0;
input  [7:0] v367_1_i_q0;
output  [10:0] v367_12_i_address0;
output   v367_12_i_ce0;
input  [7:0] v367_12_i_q0;
output  [10:0] v367_8_i_address0;
output   v367_8_i_ce0;
input  [7:0] v367_8_i_q0;
output  [10:0] v367_4_i_address0;
output   v367_4_i_ce0;
input  [7:0] v367_4_i_q0;
output  [10:0] v367_i_address0;
output   v367_i_ce0;
input  [7:0] v367_i_q0;
input  [7:0] rem_i;
input  [5:0] shl_ln;
output  [5:0] v361_0_address0;
output   v361_0_ce0;
output   v361_0_we0;
output  [7:0] v361_0_d0;
output  [5:0] v361_0_address1;
output   v361_0_ce1;
input  [7:0] v361_0_q1;
output  [5:0] v361_1_address0;
output   v361_1_ce0;
output   v361_1_we0;
output  [7:0] v361_1_d0;
input  [7:0] v361_1_q0;
output  [5:0] v361_2_address0;
output   v361_2_ce0;
output   v361_2_we0;
output  [7:0] v361_2_d0;
input  [7:0] v361_2_q0;
output  [5:0] v361_3_address0;
output   v361_3_ce0;
output   v361_3_we0;
output  [7:0] v361_3_d0;
input  [7:0] v361_3_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln529_fu_1114_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [5:0] v13823_0_address0;
wire   [7:0] v13823_0_q0;
wire   [5:0] v13823_1_address0;
wire   [7:0] v13823_1_q0;
wire   [5:0] v13823_2_address0;
wire   [7:0] v13823_2_q0;
wire   [5:0] v13823_3_address0;
wire   [7:0] v13823_3_q0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] empty_193_fu_767_p2;
reg   [0:0] empty_193_reg_1522;
wire   [0:0] icmp_ln535_mid211_fu_781_p2;
reg   [0:0] icmp_ln535_mid211_reg_1528;
wire   [1:0] v190_fu_801_p3;
reg   [1:0] v190_reg_1533;
wire   [4:0] lshr_ln_fu_813_p4;
reg   [4:0] lshr_ln_reg_1539;
wire   [2:0] lshr_ln1_fu_855_p4;
reg   [2:0] lshr_ln1_reg_1544;
wire   [7:0] empty_195_fu_869_p2;
reg   [7:0] empty_195_reg_1549;
wire   [0:0] brmerge81_i_i_fu_897_p2;
reg   [0:0] brmerge81_i_i_reg_1555;
reg   [0:0] brmerge81_i_i_reg_1555_pp0_iter1_reg;
reg   [0:0] brmerge81_i_i_reg_1555_pp0_iter2_reg;
wire   [0:0] icmp_ln531_fu_917_p2;
reg   [0:0] icmp_ln531_reg_1563;
wire   [63:0] p_cast5_fu_991_p1;
reg   [63:0] p_cast5_reg_1568;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] lshr_ln2_fu_1002_p4;
reg   [3:0] lshr_ln2_reg_1588;
wire   [10:0] add_ln541_1_fu_1048_p2;
reg   [10:0] add_ln541_1_reg_1593;
reg   [5:0] lshr_ln3_reg_1599;
reg   [5:0] lshr_ln3_reg_1599_pp0_iter1_reg;
wire   [0:0] xor_ln535_fu_1102_p2;
reg   [0:0] xor_ln535_reg_1604;
wire   [0:0] icmp_ln533_fu_1108_p2;
reg   [0:0] icmp_ln533_reg_1609;
reg   [0:0] icmp_ln529_reg_1614;
reg  signed [7:0] v195_reg_1618;
reg  signed [7:0] v261_reg_1626;
reg  signed [7:0] v291_reg_1634;
reg   [5:0] v361_0_addr_reg_1732;
reg   [5:0] v361_0_addr_reg_1732_pp0_iter2_reg;
reg  signed [7:0] v205_reg_1743;
reg  signed [7:0] v214_reg_1748;
reg  signed [7:0] v223_reg_1753;
reg  signed [7:0] v232_reg_1758;
reg  signed [7:0] v239_reg_1763;
reg  signed [7:0] v246_reg_1768;
reg  signed [7:0] v253_reg_1773;
reg  signed [7:0] v276_reg_1778;
reg  signed [7:0] v283_reg_1783;
wire   [7:0] mul_ln642_2_fu_1188_p2;
reg   [7:0] mul_ln642_2_reg_1793;
wire   [7:0] mul_ln650_2_fu_1193_p2;
reg   [7:0] mul_ln650_2_reg_1803;
wire   [7:0] v194_fu_1198_p3;
reg   [7:0] v194_reg_1826;
wire   [63:0] zext_ln547_fu_1205_p1;
reg   [63:0] zext_ln547_reg_1831;
reg   [5:0] v361_1_addr_reg_1844;
reg   [5:0] v361_1_addr_reg_1844_pp0_iter3_reg;
reg   [5:0] v361_2_addr_reg_1849;
reg   [5:0] v361_2_addr_reg_1849_pp0_iter3_reg;
reg   [5:0] v361_3_addr_reg_1854;
reg   [5:0] v361_3_addr_reg_1854_pp0_iter3_reg;
wire   [7:0] mul_ln658_2_fu_1211_p2;
reg   [7:0] mul_ln658_2_reg_1859;
wire   [7:0] mul_ln666_2_fu_1215_p2;
reg   [7:0] mul_ln666_2_reg_1864;
reg   [7:0] v361_1_load_reg_1874;
wire   [0:0] addr_cmp38_fu_1222_p2;
reg   [0:0] addr_cmp38_reg_1879;
reg   [7:0] v361_2_load_reg_1889;
wire   [0:0] addr_cmp32_fu_1230_p2;
reg   [0:0] addr_cmp32_reg_1894;
reg   [7:0] v361_3_load_reg_1904;
wire   [0:0] addr_cmp_fu_1238_p2;
reg   [0:0] addr_cmp_reg_1909;
wire   [7:0] grp_fu_1344_p3;
reg  signed [7:0] add_ln642_reg_1929;
wire   [7:0] grp_fu_1338_p3;
wire   [7:0] grp_fu_1350_p3;
wire   [7:0] grp_fu_1356_p3;
wire   [7:0] grp_fu_1362_p3;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln531174_phi_fu_617_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln533173_phi_fu_627_p4;
reg   [0:0] ap_phi_mux_icmp_ln535172_phi_fu_637_p4;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln541_2_fu_1154_p1;
wire   [63:0] zext_ln537_fu_1182_p1;
reg   [63:0] reuse_addr_reg35_fu_164;
reg   [7:0] reuse_reg34_fu_168;
(* use_dsp48 = "no" *) wire   [7:0] add_ln650_3_fu_1308_p2;
reg   [63:0] reuse_addr_reg29_fu_172;
reg   [7:0] reuse_reg28_fu_176;
(* use_dsp48 = "no" *) wire   [7:0] add_ln658_3_fu_1313_p2;
reg   [63:0] reuse_addr_reg_fu_180;
reg   [7:0] reuse_reg_fu_184;
(* use_dsp48 = "no" *) wire   [7:0] v318_fu_1318_p2;
reg   [10:0] indvar_flatten35165_fu_188;
wire   [10:0] add_ln529_1_fu_1088_p2;
reg   [5:0] v188166_fu_192;
wire   [5:0] v188_fu_753_p3;
reg   [5:0] ap_sig_allocacmp_v188166_load;
reg   [7:0] indvar_flatten12167_fu_196;
wire   [7:0] select_ln531_fu_909_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten12167_load;
reg   [3:0] v189168_fu_200;
wire   [3:0] v189_fu_787_p3;
reg   [3:0] ap_sig_allocacmp_v189168_load;
reg   [5:0] indvar_flatten169_fu_204;
wire   [5:0] select_ln533_1_fu_1081_p3;
reg   [1:0] v190170_fu_208;
reg   [1:0] ap_sig_allocacmp_v190170_load;
reg   [5:0] v191171_fu_212;
wire   [5:0] v191_fu_1069_p2;
reg    v368_3_i_ce0_local;
reg    v368_1_i_ce0_local;
reg    v368_i_ce0_local;
reg    v367_15_i_ce0_local;
reg    v367_11_i_ce0_local;
reg    v367_7_i_ce0_local;
reg    v367_3_i_ce0_local;
reg    v367_14_i_ce0_local;
reg    v367_10_i_ce0_local;
reg    v367_6_i_ce0_local;
reg    v367_2_i_ce0_local;
reg    v367_13_i_ce0_local;
reg    v367_9_i_ce0_local;
reg    v367_5_i_ce0_local;
reg    v367_1_i_ce0_local;
reg    v367_12_i_ce0_local;
reg    v367_8_i_ce0_local;
reg    v367_4_i_ce0_local;
reg    v367_i_ce0_local;
reg    v368_2_i_ce0_local;
reg    v13823_0_ce0_local;
reg    v361_0_ce1_local;
reg    v361_0_we0_local;
(* use_dsp48 = "no" *) wire   [7:0] v297_fu_1303_p2;
reg    v361_0_ce0_local;
reg    v361_1_ce0_local;
reg   [5:0] v361_1_address0_local;
reg    v361_1_we0_local;
reg    v361_2_ce0_local;
reg   [5:0] v361_2_address0_local;
reg    v361_2_we0_local;
reg    v361_3_ce0_local;
reg   [5:0] v361_3_address0_local;
reg    v361_3_we0_local;
reg    v13823_1_ce0_local;
reg    v13823_2_ce0_local;
reg    v13823_3_ce0_local;
wire   [0:0] xor_ln529_fu_741_p2;
wire   [5:0] add_ln529_fu_721_p2;
wire   [3:0] select_ln529_fu_727_p3;
wire   [0:0] and_ln529_fu_747_p2;
wire   [0:0] or_ln529_fu_735_p2;
wire   [3:0] add_ln531_fu_761_p2;
wire   [1:0] v190_mid26_fu_773_p3;
wire   [1:0] add_ln533_fu_795_p2;
wire   [6:0] tmp_140_fu_827_p3;
wire   [7:0] p_shl27_fu_835_p1;
wire   [7:0] lshr_ln_cast_fu_823_p1;
wire   [10:0] zext_ln529_fu_809_p1;
wire   [7:0] empty_194_fu_839_p2;
wire   [7:0] lshr_ln10_cast_fu_865_p1;
wire   [4:0] zext_ln531_fu_851_p1;
wire   [2:0] zext_ln533_fu_881_p1;
wire   [0:0] cmp22_i_not_i_i_fu_875_p2;
wire   [0:0] cmp26_i_not_i_i_fu_885_p2;
wire   [0:0] tmp_fu_891_p2;
wire   [0:0] cmp19_i_not_i_i_fu_845_p2;
wire   [7:0] add_ln531_1_fu_903_p2;
wire   [5:0] v191_mid27_fu_952_p3;
wire   [7:0] empty_196_fu_972_p2;
wire   [7:0] empty_197_fu_977_p2;
wire   [7:0] select_ln533_cast_fu_982_p1;
wire   [7:0] empty_198_fu_985_p2;
wire   [5:0] v191_mid2_fu_959_p3;
wire   [7:0] tmp_s_fu_1012_p3;
wire   [8:0] zext_ln541_fu_1020_p1;
wire   [8:0] lshr_ln_cast2_fu_966_p1;
wire   [8:0] add_ln541_fu_1024_p2;
wire   [10:0] tmp_141_fu_1034_p3;
wire   [10:0] zext_ln541_1_fu_1030_p1;
wire   [10:0] add_ln541_3_fu_1042_p2;
wire   [10:0] lshr_ln10_cast3_fu_969_p1;
wire   [7:0] zext_ln535_fu_998_p1;
wire   [7:0] add_ln537_fu_1054_p2;
wire   [5:0] add_ln533_1_fu_1075_p2;
wire   [0:0] tmp_142_fu_1094_p3;
wire   [10:0] shl_ln541_fu_1138_p2;
wire   [10:0] sub_ln541_fu_1143_p2;
wire   [10:0] select_ln533_cast4_fu_1135_p1;
wire   [10:0] add_ln541_2_fu_1148_p2;
wire   [5:0] zext_ln535_1_fu_1174_p1;
wire   [5:0] add_ln537_1_fu_1177_p2;
wire   [7:0] v203_fu_1258_p3;
wire   [7:0] v212_fu_1274_p3;
wire   [7:0] v221_fu_1290_p3;
wire  signed [7:0] v297_fu_1303_p0;
wire   [7:0] grp_fu_1368_p3;
wire  signed [7:0] add_ln650_3_fu_1308_p0;
wire   [7:0] grp_fu_1376_p3;
wire  signed [7:0] add_ln650_3_fu_1308_p1;
wire   [7:0] grp_fu_1384_p3;
wire  signed [7:0] add_ln658_3_fu_1313_p0;
wire   [7:0] grp_fu_1391_p3;
wire  signed [7:0] add_ln658_3_fu_1313_p1;
wire   [7:0] grp_fu_1399_p3;
wire  signed [7:0] v318_fu_1318_p0;
wire   [7:0] grp_fu_1406_p3;
wire  signed [7:0] v318_fu_1318_p1;
wire   [7:0] grp_fu_1414_p3;
wire   [7:0] grp_fu_1384_p2;
wire   [7:0] grp_fu_1399_p2;
wire   [7:0] grp_fu_1414_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_1132;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 reuse_addr_reg35_fu_164 = 64'd0;
#0 reuse_reg34_fu_168 = 8'd0;
#0 reuse_addr_reg29_fu_172 = 64'd0;
#0 reuse_reg28_fu_176 = 8'd0;
#0 reuse_addr_reg_fu_180 = 64'd0;
#0 reuse_reg_fu_184 = 8'd0;
#0 indvar_flatten35165_fu_188 = 11'd0;
#0 v188166_fu_192 = 6'd0;
#0 indvar_flatten12167_fu_196 = 8'd0;
#0 v189168_fu_200 = 4'd0;
#0 indvar_flatten169_fu_204 = 6'd0;
#0 v190170_fu_208 = 2'd0;
#0 v191171_fu_212 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_788_1_Loop_VITIS_LOOP_529_1_proc115_Pipeline_VITILf8 #(.DataWidth( 8 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v13823_0_U(.clk(ap_clk),.reset(ap_rst),.address0(v13823_0_address0),.ce0(v13823_0_ce0_local),.q0(v13823_0_q0));
forward_dataflow_in_loop_VITIS_LOOP_788_1_Loop_VITIS_LOOP_529_1_proc115_Pipeline_VITIMgi #(.DataWidth( 8 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v13823_1_U(.clk(ap_clk),.reset(ap_rst),.address0(v13823_1_address0),.ce0(v13823_1_ce0_local),.q0(v13823_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_788_1_Loop_VITIS_LOOP_529_1_proc115_Pipeline_VITINgs #(.DataWidth( 8 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v13823_2_U(.clk(ap_clk),.reset(ap_rst),.address0(v13823_2_address0),.ce0(v13823_2_ce0_local),.q0(v13823_2_q0));
forward_dataflow_in_loop_VITIS_LOOP_788_1_Loop_VITIS_LOOP_529_1_proc115_Pipeline_VITIOgC #(.DataWidth( 8 ),.AddressRange( 64 ),.AddressWidth( 6 ))
v13823_3_U(.clk(ap_clk),.reset(ap_rst),.address0(v13823_3_address0),.ce0(v13823_3_ce0_local),.q0(v13823_3_q0));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U14249(.din0(v367_13_i_q0),.din1(v261_reg_1626),.dout(mul_ln642_2_fu_1188_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U14250(.din0(v367_9_i_q0),.din1(v261_reg_1626),.dout(mul_ln650_2_fu_1193_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U14251(.din0(v276_reg_1778),.din1(v261_reg_1626),.dout(mul_ln658_2_fu_1211_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U14252(.din0(v283_reg_1783),.din1(v261_reg_1626),.dout(mul_ln666_2_fu_1215_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14253(.clk(ap_clk),.reset(ap_rst),.din0(v367_12_i_q0),.din1(v291_reg_1634),.din2(mul_ln642_2_reg_1793),.ce(1'b1),.dout(grp_fu_1338_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14254(.clk(ap_clk),.reset(ap_rst),.din0(v367_15_i_q0),.din1(v195_reg_1618),.din2(v194_reg_1826),.ce(1'b1),.dout(grp_fu_1344_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14255(.clk(ap_clk),.reset(ap_rst),.din0(v367_8_i_q0),.din1(v291_reg_1634),.din2(mul_ln650_2_reg_1803),.ce(1'b1),.dout(grp_fu_1350_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14256(.clk(ap_clk),.reset(ap_rst),.din0(v367_4_i_q0),.din1(v291_reg_1634),.din2(mul_ln658_2_reg_1859),.ce(1'b1),.dout(grp_fu_1356_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14257(.clk(ap_clk),.reset(ap_rst),.din0(v367_i_q0),.din1(v291_reg_1634),.din2(mul_ln666_2_reg_1864),.ce(1'b1),.dout(grp_fu_1362_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14258(.clk(ap_clk),.reset(ap_rst),.din0(v232_reg_1758),.din1(v368_2_i_q0),.din2(grp_fu_1338_p3),.ce(1'b1),.dout(grp_fu_1368_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14259(.clk(ap_clk),.reset(ap_rst),.din0(v239_reg_1763),.din1(v368_2_i_q0),.din2(grp_fu_1350_p3),.ce(1'b1),.dout(grp_fu_1376_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14260(.clk(ap_clk),.reset(ap_rst),.din0(v205_reg_1743),.din1(v195_reg_1618),.din2(grp_fu_1384_p2),.ce(1'b1),.dout(grp_fu_1384_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14261(.clk(ap_clk),.reset(ap_rst),.din0(v246_reg_1768),.din1(v368_2_i_q0),.din2(grp_fu_1356_p3),.ce(1'b1),.dout(grp_fu_1391_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14262(.clk(ap_clk),.reset(ap_rst),.din0(v214_reg_1748),.din1(v195_reg_1618),.din2(grp_fu_1399_p2),.ce(1'b1),.dout(grp_fu_1399_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14263(.clk(ap_clk),.reset(ap_rst),.din0(v253_reg_1773),.din1(v368_2_i_q0),.din2(grp_fu_1362_p3),.ce(1'b1),.dout(grp_fu_1406_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14264(.clk(ap_clk),.reset(ap_rst),.din0(v223_reg_1753),.din1(v195_reg_1618),.din2(grp_fu_1414_p2),.ce(1'b1),.dout(grp_fu_1414_p3));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage1)) begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
            ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage1_11001)) begin
            ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten12167_fu_196 <= select_ln531_fu_909_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12167_fu_196 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten169_fu_204 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten169_fu_204 <= select_ln533_1_fu_1081_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten35165_fu_188 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten35165_fu_188 <= add_ln529_1_fu_1088_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_addr_reg29_fu_172 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_addr_reg29_fu_172 <= zext_ln547_reg_1831;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_addr_reg35_fu_164 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_addr_reg35_fu_164 <= zext_ln547_reg_1831;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_addr_reg_fu_180 <= 64'd18446744073709551615;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_addr_reg_fu_180 <= zext_ln547_reg_1831;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_reg28_fu_176 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_reg28_fu_176 <= add_ln658_3_fu_1313_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_reg34_fu_168 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_reg34_fu_168 <= add_ln650_3_fu_1308_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_reg_fu_184 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_reg_fu_184 <= v318_fu_1318_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v188166_fu_192 <= v188_fu_753_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v188166_fu_192 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v189168_fu_200 <= v189_fu_787_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v189168_fu_200 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v190170_fu_208 <= v190_fu_801_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v190170_fu_208 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v191171_fu_212 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v191171_fu_212 <= v191_fu_1069_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln541_1_reg_1593 <= add_ln541_1_fu_1048_p2;
        addr_cmp32_reg_1894 <= addr_cmp32_fu_1230_p2;
        addr_cmp38_reg_1879 <= addr_cmp38_fu_1222_p2;
        addr_cmp_reg_1909 <= addr_cmp_fu_1238_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln529_reg_1614 <= icmp_ln529_fu_1114_p2;
        lshr_ln2_reg_1588 <= {{v191_mid2_fu_959_p3[5:2]}};
        lshr_ln3_reg_1599 <= {{add_ln537_fu_1054_p2[7:2]}};
        lshr_ln3_reg_1599_pp0_iter1_reg <= lshr_ln3_reg_1599;
        mul_ln642_2_reg_1793 <= mul_ln642_2_fu_1188_p2;
        mul_ln650_2_reg_1803 <= mul_ln650_2_fu_1193_p2;
        p_cast5_reg_1568[7 : 0] <= p_cast5_fu_991_p1[7 : 0];
        v205_reg_1743 <= v367_11_i_q0;
        v214_reg_1748 <= v367_7_i_q0;
        v223_reg_1753 <= v367_3_i_q0;
        v232_reg_1758 <= v367_14_i_q0;
        v239_reg_1763 <= v367_10_i_q0;
        v246_reg_1768 <= v367_6_i_q0;
        v253_reg_1773 <= v367_2_i_q0;
        v276_reg_1778 <= v367_5_i_q0;
        v283_reg_1783 <= v367_1_i_q0;
        v361_0_addr_reg_1732 <= zext_ln537_fu_1182_p1;
        v361_0_addr_reg_1732_pp0_iter2_reg <= v361_0_addr_reg_1732;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln642_reg_1929 <= grp_fu_1344_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        brmerge81_i_i_reg_1555 <= brmerge81_i_i_fu_897_p2;
        brmerge81_i_i_reg_1555_pp0_iter1_reg <= brmerge81_i_i_reg_1555;
        brmerge81_i_i_reg_1555_pp0_iter2_reg <= brmerge81_i_i_reg_1555_pp0_iter1_reg;
        empty_193_reg_1522 <= empty_193_fu_767_p2;
        empty_195_reg_1549 <= empty_195_fu_869_p2;
        icmp_ln535_mid211_reg_1528 <= icmp_ln535_mid211_fu_781_p2;
        lshr_ln1_reg_1544 <= {{v189_fu_787_p3[3:1]}};
        lshr_ln_reg_1539 <= {{v188_fu_753_p3[5:1]}};
        mul_ln658_2_reg_1859 <= mul_ln658_2_fu_1211_p2;
        mul_ln666_2_reg_1864 <= mul_ln666_2_fu_1215_p2;
        v190_reg_1533 <= v190_fu_801_p3;
        v194_reg_1826 <= v194_fu_1198_p3;
        v195_reg_1618 <= v368_3_i_q0;
        v261_reg_1626 <= v368_1_i_q0;
        v291_reg_1634 <= v368_i_q0;
        v361_1_addr_reg_1844 <= zext_ln547_fu_1205_p1;
        v361_1_addr_reg_1844_pp0_iter3_reg <= v361_1_addr_reg_1844;
        v361_2_addr_reg_1849 <= zext_ln547_fu_1205_p1;
        v361_2_addr_reg_1849_pp0_iter3_reg <= v361_2_addr_reg_1849;
        v361_3_addr_reg_1854 <= zext_ln547_fu_1205_p1;
        v361_3_addr_reg_1854_pp0_iter3_reg <= v361_3_addr_reg_1854;
        zext_ln547_reg_1831[5 : 0] <= zext_ln547_fu_1205_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln531_reg_1563 <= icmp_ln531_fu_917_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln533_reg_1609 <= icmp_ln533_fu_1108_p2;
        xor_ln535_reg_1604 <= xor_ln535_fu_1102_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_1_load_reg_1874 <= v361_1_q0;
        v361_2_load_reg_1889 <= v361_2_q0;
        v361_3_load_reg_1904 <= v361_3_q0;
    end
end
always @ (*) begin
    if (((icmp_ln529_fu_1114_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1132)) begin
            ap_phi_mux_icmp_ln531174_phi_fu_617_p4 = icmp_ln531_reg_1563;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln531174_phi_fu_617_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln531174_phi_fu_617_p4 = icmp_ln531_reg_1563;
        end
    end else begin
        ap_phi_mux_icmp_ln531174_phi_fu_617_p4 = icmp_ln531_reg_1563;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1132)) begin
            ap_phi_mux_icmp_ln533173_phi_fu_627_p4 = icmp_ln533_reg_1609;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln533173_phi_fu_627_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln533173_phi_fu_627_p4 = icmp_ln533_reg_1609;
        end
    end else begin
        ap_phi_mux_icmp_ln533173_phi_fu_627_p4 = icmp_ln533_reg_1609;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_1132)) begin
            ap_phi_mux_icmp_ln535172_phi_fu_637_p4 = xor_ln535_reg_1604;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln535172_phi_fu_637_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln535172_phi_fu_637_p4 = xor_ln535_reg_1604;
        end
    end else begin
        ap_phi_mux_icmp_ln535172_phi_fu_637_p4 = xor_ln535_reg_1604;
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
        ap_sig_allocacmp_indvar_flatten12167_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12167_load = indvar_flatten12167_fu_196;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v188166_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v188166_load = v188166_fu_192;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v189168_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v189168_load = v189168_fu_200;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v190170_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v190170_load = v190170_fu_208;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v13823_0_ce0_local = 1'b1;
    end else begin
        v13823_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v13823_1_ce0_local = 1'b1;
    end else begin
        v13823_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v13823_2_ce0_local = 1'b1;
    end else begin
        v13823_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v13823_3_ce0_local = 1'b1;
    end else begin
        v13823_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_0_ce0_local = 1'b1;
    end else begin
        v361_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_0_ce1_local = 1'b1;
    end else begin
        v361_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_0_we0_local = 1'b1;
    end else begin
        v361_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_1_address0_local = v361_1_addr_reg_1844_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v361_1_address0_local = zext_ln547_fu_1205_p1;
    end else begin
        v361_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v361_1_ce0_local = 1'b1;
    end else begin
        v361_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_1_we0_local = 1'b1;
    end else begin
        v361_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_2_address0_local = v361_2_addr_reg_1849_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v361_2_address0_local = zext_ln547_fu_1205_p1;
    end else begin
        v361_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v361_2_ce0_local = 1'b1;
    end else begin
        v361_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_2_we0_local = 1'b1;
    end else begin
        v361_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_3_address0_local = v361_3_addr_reg_1854_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v361_3_address0_local = zext_ln547_fu_1205_p1;
    end else begin
        v361_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v361_3_ce0_local = 1'b1;
    end else begin
        v361_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v361_3_we0_local = 1'b1;
    end else begin
        v361_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_10_i_ce0_local = 1'b1;
    end else begin
        v367_10_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_11_i_ce0_local = 1'b1;
    end else begin
        v367_11_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_12_i_ce0_local = 1'b1;
    end else begin
        v367_12_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_13_i_ce0_local = 1'b1;
    end else begin
        v367_13_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_14_i_ce0_local = 1'b1;
    end else begin
        v367_14_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_15_i_ce0_local = 1'b1;
    end else begin
        v367_15_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_1_i_ce0_local = 1'b1;
    end else begin
        v367_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_2_i_ce0_local = 1'b1;
    end else begin
        v367_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_3_i_ce0_local = 1'b1;
    end else begin
        v367_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_4_i_ce0_local = 1'b1;
    end else begin
        v367_4_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_5_i_ce0_local = 1'b1;
    end else begin
        v367_5_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_6_i_ce0_local = 1'b1;
    end else begin
        v367_6_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_7_i_ce0_local = 1'b1;
    end else begin
        v367_7_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_8_i_ce0_local = 1'b1;
    end else begin
        v367_8_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_9_i_ce0_local = 1'b1;
    end else begin
        v367_9_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_i_ce0_local = 1'b1;
    end else begin
        v367_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v368_1_i_ce0_local = 1'b1;
    end else begin
        v368_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v368_2_i_ce0_local = 1'b1;
    end else begin
        v368_2_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v368_3_i_ce0_local = 1'b1;
    end else begin
        v368_3_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v368_i_ce0_local = 1'b1;
    end else begin
        v368_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln529_1_fu_1088_p2 = (indvar_flatten35165_fu_188 + 11'd1);
assign add_ln529_fu_721_p2 = (ap_sig_allocacmp_v188166_load + 6'd2);
assign add_ln531_1_fu_903_p2 = (ap_sig_allocacmp_indvar_flatten12167_load + 8'd1);
assign add_ln531_fu_761_p2 = (select_ln529_fu_727_p3 + 4'd2);
assign add_ln533_1_fu_1075_p2 = (indvar_flatten169_fu_204 + 6'd1);
assign add_ln533_fu_795_p2 = (v190_mid26_fu_773_p3 + 2'd1);
assign add_ln537_1_fu_1177_p2 = (zext_ln535_1_fu_1174_p1 + shl_ln);
assign add_ln537_fu_1054_p2 = (rem_i + zext_ln535_fu_998_p1);
assign add_ln541_1_fu_1048_p2 = (add_ln541_3_fu_1042_p2 + lshr_ln10_cast3_fu_969_p1);
assign add_ln541_2_fu_1148_p2 = (sub_ln541_fu_1143_p2 + select_ln533_cast4_fu_1135_p1);
assign add_ln541_3_fu_1042_p2 = (tmp_141_fu_1034_p3 + zext_ln541_1_fu_1030_p1);
assign add_ln541_fu_1024_p2 = (zext_ln541_fu_1020_p1 + lshr_ln_cast2_fu_966_p1);
assign add_ln650_3_fu_1308_p0 = grp_fu_1376_p3;
assign add_ln650_3_fu_1308_p1 = grp_fu_1384_p3;
assign add_ln650_3_fu_1308_p2 = ($signed(add_ln650_3_fu_1308_p0) + $signed(add_ln650_3_fu_1308_p1));
assign add_ln658_3_fu_1313_p0 = grp_fu_1391_p3;
assign add_ln658_3_fu_1313_p1 = grp_fu_1399_p3;
assign add_ln658_3_fu_1313_p2 = ($signed(add_ln658_3_fu_1313_p0) + $signed(add_ln658_3_fu_1313_p1));
assign addr_cmp32_fu_1230_p2 = ((reuse_addr_reg29_fu_172 == zext_ln547_reg_1831) ? 1'b1 : 1'b0);
assign addr_cmp38_fu_1222_p2 = ((reuse_addr_reg35_fu_164 == zext_ln547_reg_1831) ? 1'b1 : 1'b0);
assign addr_cmp_fu_1238_p2 = ((reuse_addr_reg_fu_180 == zext_ln547_reg_1831) ? 1'b1 : 1'b0);
assign and_ln529_fu_747_p2 = (xor_ln529_fu_741_p2 & ap_phi_mux_icmp_ln533173_phi_fu_627_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_1132 = ((1'b0 == ap_block_pp0_stage0) & (icmp_ln529_reg_1614 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign brmerge81_i_i_fu_897_p2 = (tmp_fu_891_p2 | cmp19_i_not_i_i_fu_845_p2);
assign cmp19_i_not_i_i_fu_845_p2 = ((zext_ln529_fu_809_p1 != empty_86) ? 1'b1 : 1'b0);
assign cmp22_i_not_i_i_fu_875_p2 = ((zext_ln531_fu_851_p1 != empty_87) ? 1'b1 : 1'b0);
assign cmp26_i_not_i_i_fu_885_p2 = ((zext_ln533_fu_881_p1 != empty) ? 1'b1 : 1'b0);
assign empty_193_fu_767_p2 = (ap_phi_mux_icmp_ln531174_phi_fu_617_p4 | and_ln529_fu_747_p2);
assign empty_194_fu_839_p2 = (p_shl27_fu_835_p1 + lshr_ln_cast_fu_823_p1);
assign empty_195_fu_869_p2 = (empty_194_fu_839_p2 + lshr_ln10_cast_fu_865_p1);
assign empty_196_fu_972_p2 = empty_195_reg_1549 << 8'd2;
assign empty_197_fu_977_p2 = (empty_196_fu_972_p2 - empty_195_reg_1549);
assign empty_198_fu_985_p2 = (empty_197_fu_977_p2 + select_ln533_cast_fu_982_p1);
assign grp_fu_1384_p2 = ((brmerge81_i_i_reg_1555_pp0_iter2_reg[0:0] == 1'b1) ? v203_fu_1258_p3 : v13823_1_q0);
assign grp_fu_1399_p2 = ((brmerge81_i_i_reg_1555_pp0_iter2_reg[0:0] == 1'b1) ? v212_fu_1274_p3 : v13823_2_q0);
assign grp_fu_1414_p2 = ((brmerge81_i_i_reg_1555_pp0_iter2_reg[0:0] == 1'b1) ? v221_fu_1290_p3 : v13823_3_q0);
assign icmp_ln529_fu_1114_p2 = ((indvar_flatten35165_fu_188 == 11'd1919) ? 1'b1 : 1'b0);
assign icmp_ln531_fu_917_p2 = ((select_ln531_fu_909_p3 == 8'd120) ? 1'b1 : 1'b0);
assign icmp_ln533_fu_1108_p2 = ((select_ln533_1_fu_1081_p3 == 6'd24) ? 1'b1 : 1'b0);
assign icmp_ln535_mid211_fu_781_p2 = (or_ln529_fu_735_p2 | and_ln529_fu_747_p2);
assign lshr_ln10_cast3_fu_969_p1 = lshr_ln1_reg_1544;
assign lshr_ln10_cast_fu_865_p1 = lshr_ln1_fu_855_p4;
assign lshr_ln1_fu_855_p4 = {{v189_fu_787_p3[3:1]}};
assign lshr_ln2_fu_1002_p4 = {{v191_mid2_fu_959_p3[5:2]}};
assign lshr_ln_cast2_fu_966_p1 = lshr_ln_reg_1539;
assign lshr_ln_cast_fu_823_p1 = lshr_ln_fu_813_p4;
assign lshr_ln_fu_813_p4 = {{v188_fu_753_p3[5:1]}};
assign or_ln529_fu_735_p2 = (ap_phi_mux_icmp_ln535172_phi_fu_637_p4 | ap_phi_mux_icmp_ln531174_phi_fu_617_p4);
assign p_cast5_fu_991_p1 = empty_198_fu_985_p2;
assign p_shl27_fu_835_p1 = tmp_140_fu_827_p3;
assign select_ln529_fu_727_p3 = ((ap_phi_mux_icmp_ln531174_phi_fu_617_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v189168_load);
assign select_ln531_fu_909_p3 = ((ap_phi_mux_icmp_ln531174_phi_fu_617_p4[0:0] == 1'b1) ? 8'd1 : add_ln531_1_fu_903_p2);
assign select_ln533_1_fu_1081_p3 = ((empty_193_reg_1522[0:0] == 1'b1) ? 6'd1 : add_ln533_1_fu_1075_p2);
assign select_ln533_cast4_fu_1135_p1 = v190_reg_1533;
assign select_ln533_cast_fu_982_p1 = v190_reg_1533;
assign shl_ln541_fu_1138_p2 = add_ln541_1_reg_1593 << 11'd2;
assign sub_ln541_fu_1143_p2 = (shl_ln541_fu_1138_p2 - add_ln541_1_reg_1593);
assign tmp_140_fu_827_p3 = {{lshr_ln_fu_813_p4}, {2'd0}};
assign tmp_141_fu_1034_p3 = {{add_ln541_fu_1024_p2}, {2'd0}};
assign tmp_142_fu_1094_p3 = v191_fu_1069_p2[32'd5];
assign tmp_fu_891_p2 = (cmp26_i_not_i_i_fu_885_p2 | cmp22_i_not_i_i_fu_875_p2);
assign tmp_s_fu_1012_p3 = {{lshr_ln2_fu_1002_p4}, {4'd0}};
assign v13823_0_address0 = zext_ln537_fu_1182_p1;
assign v13823_1_address0 = zext_ln547_reg_1831;
assign v13823_2_address0 = zext_ln547_reg_1831;
assign v13823_3_address0 = zext_ln547_reg_1831;
assign v188_fu_753_p3 = ((ap_phi_mux_icmp_ln531174_phi_fu_617_p4[0:0] == 1'b1) ? add_ln529_fu_721_p2 : ap_sig_allocacmp_v188166_load);
assign v189_fu_787_p3 = ((and_ln529_fu_747_p2[0:0] == 1'b1) ? add_ln531_fu_761_p2 : select_ln529_fu_727_p3);
assign v190_fu_801_p3 = ((icmp_ln535_mid211_fu_781_p2[0:0] == 1'b1) ? v190_mid26_fu_773_p3 : add_ln533_fu_795_p2);
assign v190_mid26_fu_773_p3 = ((empty_193_fu_767_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v190170_load);
assign v191_fu_1069_p2 = (v191_mid2_fu_959_p3 + 6'd4);
assign v191_mid27_fu_952_p3 = ((empty_193_reg_1522[0:0] == 1'b1) ? 6'd0 : v191171_fu_212);
assign v191_mid2_fu_959_p3 = ((icmp_ln535_mid211_reg_1528[0:0] == 1'b1) ? v191_mid27_fu_952_p3 : 6'd0);
assign v194_fu_1198_p3 = ((brmerge81_i_i_reg_1555_pp0_iter1_reg[0:0] == 1'b1) ? v361_0_q1 : v13823_0_q0);
assign v203_fu_1258_p3 = ((addr_cmp38_reg_1879[0:0] == 1'b1) ? reuse_reg34_fu_168 : v361_1_load_reg_1874);
assign v212_fu_1274_p3 = ((addr_cmp32_reg_1894[0:0] == 1'b1) ? reuse_reg28_fu_176 : v361_2_load_reg_1889);
assign v221_fu_1290_p3 = ((addr_cmp_reg_1909[0:0] == 1'b1) ? reuse_reg_fu_184 : v361_3_load_reg_1904);
assign v297_fu_1303_p0 = grp_fu_1368_p3;
assign v297_fu_1303_p2 = ($signed(v297_fu_1303_p0) + $signed(add_ln642_reg_1929));
assign v318_fu_1318_p0 = grp_fu_1406_p3;
assign v318_fu_1318_p1 = grp_fu_1414_p3;
assign v318_fu_1318_p2 = ($signed(v318_fu_1318_p0) + $signed(v318_fu_1318_p1));
assign v361_0_address0 = v361_0_addr_reg_1732_pp0_iter2_reg;
assign v361_0_address1 = zext_ln537_fu_1182_p1;
assign v361_0_ce0 = v361_0_ce0_local;
assign v361_0_ce1 = v361_0_ce1_local;
assign v361_0_d0 = v297_fu_1303_p2;
assign v361_0_we0 = v361_0_we0_local;
assign v361_1_address0 = v361_1_address0_local;
assign v361_1_ce0 = v361_1_ce0_local;
assign v361_1_d0 = add_ln650_3_fu_1308_p2;
assign v361_1_we0 = v361_1_we0_local;
assign v361_2_address0 = v361_2_address0_local;
assign v361_2_ce0 = v361_2_ce0_local;
assign v361_2_d0 = add_ln658_3_fu_1313_p2;
assign v361_2_we0 = v361_2_we0_local;
assign v361_3_address0 = v361_3_address0_local;
assign v361_3_ce0 = v361_3_ce0_local;
assign v361_3_d0 = v318_fu_1318_p2;
assign v361_3_we0 = v361_3_we0_local;
assign v367_10_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_10_i_ce0 = v367_10_i_ce0_local;
assign v367_11_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_11_i_ce0 = v367_11_i_ce0_local;
assign v367_12_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_12_i_ce0 = v367_12_i_ce0_local;
assign v367_13_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_13_i_ce0 = v367_13_i_ce0_local;
assign v367_14_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_14_i_ce0 = v367_14_i_ce0_local;
assign v367_15_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_15_i_ce0 = v367_15_i_ce0_local;
assign v367_1_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_1_i_ce0 = v367_1_i_ce0_local;
assign v367_2_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_2_i_ce0 = v367_2_i_ce0_local;
assign v367_3_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_3_i_ce0 = v367_3_i_ce0_local;
assign v367_4_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_4_i_ce0 = v367_4_i_ce0_local;
assign v367_5_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_5_i_ce0 = v367_5_i_ce0_local;
assign v367_6_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_6_i_ce0 = v367_6_i_ce0_local;
assign v367_7_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_7_i_ce0 = v367_7_i_ce0_local;
assign v367_8_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_8_i_ce0 = v367_8_i_ce0_local;
assign v367_9_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_9_i_ce0 = v367_9_i_ce0_local;
assign v367_i_address0 = zext_ln541_2_fu_1154_p1;
assign v367_i_ce0 = v367_i_ce0_local;
assign v368_1_i_address0 = p_cast5_fu_991_p1;
assign v368_1_i_ce0 = v368_1_i_ce0_local;
assign v368_2_i_address0 = p_cast5_reg_1568;
assign v368_2_i_ce0 = v368_2_i_ce0_local;
assign v368_3_i_address0 = p_cast5_fu_991_p1;
assign v368_3_i_ce0 = v368_3_i_ce0_local;
assign v368_i_address0 = p_cast5_fu_991_p1;
assign v368_i_ce0 = v368_i_ce0_local;
assign xor_ln529_fu_741_p2 = (ap_phi_mux_icmp_ln531174_phi_fu_617_p4 ^ 1'd1);
assign xor_ln535_fu_1102_p2 = (tmp_142_fu_1094_p3 ^ 1'd1);
assign zext_ln529_fu_809_p1 = v188_fu_753_p3;
assign zext_ln531_fu_851_p1 = v189_fu_787_p3;
assign zext_ln533_fu_881_p1 = v190_fu_801_p3;
assign zext_ln535_1_fu_1174_p1 = lshr_ln2_reg_1588;
assign zext_ln535_fu_998_p1 = v191_mid2_fu_959_p3;
assign zext_ln537_fu_1182_p1 = add_ln537_1_fu_1177_p2;
assign zext_ln541_1_fu_1030_p1 = add_ln541_fu_1024_p2;
assign zext_ln541_2_fu_1154_p1 = add_ln541_2_fu_1148_p2;
assign zext_ln541_fu_1020_p1 = tmp_s_fu_1012_p3;
assign zext_ln547_fu_1205_p1 = lshr_ln3_reg_1599_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    p_cast5_reg_1568[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln547_reg_1831[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 