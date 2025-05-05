module atax_atax_Pipeline_label_0_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v124_address0,v124_ce0,v124_q0,v124_1_address0,v124_1_ce0,v124_1_q0,v124_2_address0,v124_2_ce0,v124_2_q0,v124_3_address0,v124_3_ce0,v124_3_q0,v124_4_address0,v124_4_ce0,v124_4_q0,v124_5_address0,v124_5_ce0,v124_5_q0,v124_6_address0,v124_6_ce0,v124_6_q0,v124_7_address0,v124_7_ce0,v124_7_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_1_address0,v113_1_ce0,v113_1_q0,v113_2_address0,v113_2_ce0,v113_2_q0,v113_3_address0,v113_3_ce0,v113_3_q0,v113_4_address0,v113_4_ce0,v113_4_q0,v113_5_address0,v113_5_ce0,v113_5_q0,v113_6_address0,v113_6_ce0,v113_6_q0,v113_7_address0,v113_7_ce0,v113_7_q0,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,grp_fu_163_p_din0,grp_fu_163_p_din1,grp_fu_163_p_opcode,grp_fu_163_p_dout0,grp_fu_163_p_ce,grp_fu_167_p_din0,grp_fu_167_p_din1,grp_fu_167_p_opcode,grp_fu_167_p_dout0,grp_fu_167_p_ce,grp_fu_171_p_din0,grp_fu_171_p_din1,grp_fu_171_p_dout0,grp_fu_171_p_ce,grp_fu_175_p_din0,grp_fu_175_p_din1,grp_fu_175_p_dout0,grp_fu_175_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] v124_address0;
output   v124_ce0;
input  [31:0] v124_q0;
output  [2:0] v124_1_address0;
output   v124_1_ce0;
input  [31:0] v124_1_q0;
output  [2:0] v124_2_address0;
output   v124_2_ce0;
input  [31:0] v124_2_q0;
output  [2:0] v124_3_address0;
output   v124_3_ce0;
input  [31:0] v124_3_q0;
output  [2:0] v124_4_address0;
output   v124_4_ce0;
input  [31:0] v124_4_q0;
output  [2:0] v124_5_address0;
output   v124_5_ce0;
input  [31:0] v124_5_q0;
output  [2:0] v124_6_address0;
output   v124_6_ce0;
input  [31:0] v124_6_q0;
output  [2:0] v124_7_address0;
output   v124_7_ce0;
input  [31:0] v124_7_q0;
output  [8:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [8:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [8:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [8:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [8:0] v113_4_address0;
output   v113_4_ce0;
input  [31:0] v113_4_q0;
output  [8:0] v113_5_address0;
output   v113_5_ce0;
input  [31:0] v113_5_q0;
output  [8:0] v113_6_address0;
output   v113_6_ce0;
input  [31:0] v113_6_q0;
output  [8:0] v113_7_address0;
output   v113_7_ce0;
input  [31:0] v113_7_q0;
output  [3:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [3:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
output  [3:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [3:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [3:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [3:0] v116_2_address1;
output   v116_2_ce1;
output   v116_2_we1;
output  [31:0] v116_2_d1;
input  [31:0] v116_2_q1;
output  [3:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [3:0] v116_3_address1;
output   v116_3_ce1;
output   v116_3_we1;
output  [31:0] v116_3_d1;
input  [31:0] v116_3_q1;
output  [31:0] grp_fu_163_p_din0;
output  [31:0] grp_fu_163_p_din1;
output  [1:0] grp_fu_163_p_opcode;
input  [31:0] grp_fu_163_p_dout0;
output   grp_fu_163_p_ce;
output  [31:0] grp_fu_167_p_din0;
output  [31:0] grp_fu_167_p_din1;
output  [1:0] grp_fu_167_p_opcode;
input  [31:0] grp_fu_167_p_dout0;
output   grp_fu_167_p_ce;
output  [31:0] grp_fu_171_p_din0;
output  [31:0] grp_fu_171_p_din1;
input  [31:0] grp_fu_171_p_dout0;
output   grp_fu_171_p_ce;
output  [31:0] grp_fu_175_p_din0;
output  [31:0] grp_fu_175_p_din1;
input  [31:0] grp_fu_175_p_dout0;
output   grp_fu_175_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln27_reg_830;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] icmp_ln27_fu_490_p2;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v49_load_reg_834;
wire   [0:0] tmp_1_fu_514_p3;
reg   [0:0] tmp_1_reg_839;
wire   [5:0] trunc_ln27_fu_530_p1;
reg   [5:0] trunc_ln27_reg_844;
wire   [2:0] trunc_ln27_1_fu_534_p1;
reg   [2:0] trunc_ln27_1_reg_849;
wire   [6:0] select_ln26_fu_570_p3;
reg   [6:0] select_ln26_reg_894;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v6_fu_576_p19;
reg   [31:0] v6_reg_899;
wire   [2:0] lshr_ln2_fu_615_p4;
reg   [2:0] lshr_ln2_reg_904;
reg   [2:0] lshr_ln2_reg_904_pp0_iter1_reg;
reg   [2:0] lshr_ln2_reg_904_pp0_iter2_reg;
reg   [3:0] lshr_ln29_1_reg_949;
reg   [3:0] lshr_ln29_1_reg_949_pp0_iter1_reg;
wire   [31:0] v3_2_fu_673_p3;
reg   [31:0] v3_2_reg_954;
reg   [31:0] v113_0_load_reg_962;
reg   [31:0] v113_1_load_reg_967;
reg   [31:0] v113_2_load_reg_972;
reg   [31:0] v113_3_load_reg_977;
reg   [31:0] v113_4_load_reg_982;
reg   [31:0] v113_5_load_reg_987;
reg   [31:0] v113_6_load_reg_992;
reg   [31:0] v113_7_load_reg_997;
wire   [31:0] v10_fu_685_p1;
wire   [31:0] v16_fu_689_p1;
wire   [31:0] v22_fu_693_p1;
wire   [31:0] v28_fu_697_p1;
reg   [3:0] v116_0_addr_reg_1022;
reg   [3:0] v116_0_addr_reg_1022_pp0_iter3_reg;
reg   [3:0] v116_0_addr_reg_1022_pp0_iter4_reg;
reg   [3:0] v116_0_addr_reg_1022_pp0_iter5_reg;
reg   [3:0] v116_0_addr_reg_1022_pp0_iter6_reg;
reg   [3:0] v116_0_addr_reg_1022_pp0_iter7_reg;
wire   [31:0] v34_fu_708_p1;
wire   [31:0] v40_fu_712_p1;
wire   [31:0] v46_fu_716_p1;
wire   [31:0] v52_fu_720_p1;
reg   [3:0] v116_1_addr_reg_1047;
reg   [3:0] v116_1_addr_reg_1047_pp0_iter3_reg;
reg   [3:0] v116_1_addr_reg_1047_pp0_iter4_reg;
reg   [3:0] v116_1_addr_reg_1047_pp0_iter5_reg;
reg   [3:0] v116_1_addr_reg_1047_pp0_iter6_reg;
reg   [3:0] v116_1_addr_reg_1047_pp0_iter7_reg;
reg   [3:0] v116_2_addr_reg_1052;
reg   [3:0] v116_2_addr_reg_1052_pp0_iter3_reg;
reg   [3:0] v116_2_addr_reg_1052_pp0_iter4_reg;
reg   [3:0] v116_2_addr_reg_1052_pp0_iter5_reg;
reg   [3:0] v116_2_addr_reg_1052_pp0_iter6_reg;
reg   [3:0] v116_2_addr_reg_1052_pp0_iter7_reg;
reg   [3:0] v116_3_addr_reg_1057;
reg   [3:0] v116_3_addr_reg_1057_pp0_iter3_reg;
reg   [3:0] v116_3_addr_reg_1057_pp0_iter4_reg;
reg   [3:0] v116_3_addr_reg_1057_pp0_iter5_reg;
reg   [3:0] v116_3_addr_reg_1057_pp0_iter6_reg;
reg   [3:0] v116_3_addr_reg_1057_pp0_iter7_reg;
reg   [31:0] v116_0_load_reg_1062;
reg   [31:0] v116_1_load_reg_1067;
reg   [31:0] v116_2_load_reg_1072;
reg   [31:0] v116_3_load_reg_1077;
reg   [31:0] v11_reg_1082;
reg   [31:0] v17_reg_1087;
wire   [31:0] grp_fu_464_p2;
reg   [31:0] v23_reg_1092;
wire   [31:0] grp_fu_468_p2;
reg   [31:0] v29_reg_1097;
reg   [3:0] v116_0_addr_1_reg_1102;
reg   [3:0] v116_0_addr_1_reg_1102_pp0_iter4_reg;
reg   [3:0] v116_0_addr_1_reg_1102_pp0_iter5_reg;
reg   [3:0] v116_0_addr_1_reg_1102_pp0_iter6_reg;
reg   [3:0] v116_0_addr_1_reg_1102_pp0_iter7_reg;
reg   [3:0] v116_1_addr_1_reg_1107;
reg   [3:0] v116_1_addr_1_reg_1107_pp0_iter4_reg;
reg   [3:0] v116_1_addr_1_reg_1107_pp0_iter5_reg;
reg   [3:0] v116_1_addr_1_reg_1107_pp0_iter6_reg;
reg   [3:0] v116_1_addr_1_reg_1107_pp0_iter7_reg;
reg   [3:0] v116_2_addr_1_reg_1112;
reg   [3:0] v116_2_addr_1_reg_1112_pp0_iter4_reg;
reg   [3:0] v116_2_addr_1_reg_1112_pp0_iter5_reg;
reg   [3:0] v116_2_addr_1_reg_1112_pp0_iter6_reg;
reg   [3:0] v116_2_addr_1_reg_1112_pp0_iter7_reg;
reg   [3:0] v116_3_addr_1_reg_1117;
reg   [3:0] v116_3_addr_1_reg_1117_pp0_iter4_reg;
reg   [3:0] v116_3_addr_1_reg_1117_pp0_iter5_reg;
reg   [3:0] v116_3_addr_1_reg_1117_pp0_iter6_reg;
reg   [3:0] v116_3_addr_1_reg_1117_pp0_iter7_reg;
wire   [31:0] v9_fu_739_p1;
reg   [31:0] v35_reg_1127;
reg   [31:0] v41_reg_1132;
reg   [31:0] v47_reg_1137;
reg   [31:0] v53_reg_1142;
wire   [31:0] v15_fu_743_p1;
wire   [31:0] v21_fu_747_p1;
wire   [31:0] v27_fu_751_p1;
reg   [31:0] v116_0_load_1_reg_1162;
reg   [31:0] v116_1_load_1_reg_1167;
reg   [31:0] v116_2_load_1_reg_1172;
reg   [31:0] v116_3_load_1_reg_1177;
wire   [31:0] v33_fu_755_p1;
wire   [31:0] v39_fu_759_p1;
wire   [31:0] v45_fu_763_p1;
wire   [31:0] v51_fu_767_p1;
reg   [31:0] v12_reg_1202;
reg   [31:0] v18_reg_1207;
wire   [31:0] grp_fu_448_p2;
reg   [31:0] v24_reg_1212;
wire   [31:0] grp_fu_452_p2;
reg   [31:0] v30_reg_1217;
reg   [31:0] v36_reg_1222;
reg   [31:0] v42_reg_1227;
reg   [31:0] v48_reg_1232;
reg   [31:0] v54_reg_1237;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_548_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln33_fu_632_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln29_fu_701_p1;
wire   [63:0] zext_ln60_fu_731_p1;
reg   [31:0] v3_fu_116;
reg   [6:0] v49_fu_120;
wire   [6:0] add_ln28_fu_654_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_124;
wire   [6:0] select_ln27_fu_522_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [9:0] indvar_flatten_fu_128;
wire   [9:0] add_ln27_1_fu_496_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v124_ce0_local;
reg    v124_1_ce0_local;
reg    v124_2_ce0_local;
reg    v124_3_ce0_local;
reg    v124_4_ce0_local;
reg    v124_5_ce0_local;
reg    v124_6_ce0_local;
reg    v124_7_ce0_local;
reg    v113_0_ce0_local;
reg    v113_1_ce0_local;
reg    v113_2_ce0_local;
reg    v113_3_ce0_local;
reg    v113_4_ce0_local;
reg    v113_5_ce0_local;
reg    v113_6_ce0_local;
reg    v113_7_ce0_local;
reg    v116_0_ce1_local;
reg   [3:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [3:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_771_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln64_fu_775_p1;
reg    v116_1_ce1_local;
reg   [3:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [3:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_779_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln71_fu_783_p1;
reg    v116_2_ce1_local;
reg   [3:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [3:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_787_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln78_fu_791_p1;
reg    v116_3_ce1_local;
reg   [3:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [3:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_795_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln86_fu_799_p1;
reg   [31:0] grp_fu_440_p0;
reg   [31:0] grp_fu_440_p1;
reg   [31:0] grp_fu_444_p0;
reg   [31:0] grp_fu_444_p1;
reg   [31:0] grp_fu_448_p0;
reg   [31:0] grp_fu_448_p1;
reg   [31:0] grp_fu_452_p0;
reg   [31:0] grp_fu_452_p1;
reg   [31:0] grp_fu_456_p0;
reg   [31:0] grp_fu_460_p0;
reg   [31:0] grp_fu_464_p0;
reg   [31:0] grp_fu_468_p0;
wire   [6:0] add_ln27_fu_508_p2;
wire   [2:0] lshr_ln1_fu_538_p4;
wire   [31:0] v6_fu_576_p17;
wire   [8:0] tmp_fu_625_p3;
wire   [0:0] icmp_ln31_fu_668_p2;
wire   [3:0] or_ln_fu_724_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] v6_fu_576_p1;
wire   [2:0] v6_fu_576_p3;
wire   [2:0] v6_fu_576_p5;
wire   [2:0] v6_fu_576_p7;
wire  signed [2:0] v6_fu_576_p9;
wire  signed [2:0] v6_fu_576_p11;
wire  signed [2:0] v6_fu_576_p13;
wire  signed [2:0] v6_fu_576_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_fu_116 = 32'd0;
#0 v49_fu_120 = 7'd0;
#0 v4_fu_124 = 7'd0;
#0 indvar_flatten_fu_128 = 10'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U221(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_448_p0),.din1(grp_fu_448_p1),.ce(1'b1),.dout(grp_fu_448_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U222(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_452_p0),.din1(grp_fu_452_p1),.ce(1'b1),.dout(grp_fu_452_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U225(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_464_p0),.din1(v3_2_reg_954),.ce(1'b1),.dout(grp_fu_464_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U226(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_468_p0),.din1(v3_2_reg_954),.ce(1'b1),.dout(grp_fu_468_p2));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U227(.din0(v124_q0),.din1(v124_1_q0),.din2(v124_2_q0),.din3(v124_3_q0),.din4(v124_4_q0),.din5(v124_5_q0),.din6(v124_6_q0),.din7(v124_7_q0),.def(v6_fu_576_p17),.sel(trunc_ln27_1_reg_849),.dout(v6_fu_576_p19));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_490_p2 == 1'd0))) begin
            indvar_flatten_fu_128 <= add_ln27_1_fu_496_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_120 <= 7'd0;
    end else if (((icmp_ln27_reg_830 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v49_fu_120 <= add_ln28_fu_654_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_490_p2 == 1'd0))) begin
            v4_fu_124 <= select_ln27_fu_522_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_124 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        lshr_ln29_1_reg_949 <= {{select_ln26_fu_570_p3[5:2]}};
        lshr_ln29_1_reg_949_pp0_iter1_reg <= lshr_ln29_1_reg_949;
        lshr_ln2_reg_904 <= {{select_ln26_fu_570_p3[5:3]}};
        lshr_ln2_reg_904_pp0_iter1_reg <= lshr_ln2_reg_904;
        lshr_ln2_reg_904_pp0_iter2_reg <= lshr_ln2_reg_904_pp0_iter1_reg;
        select_ln26_reg_894 <= select_ln26_fu_570_p3;
        v6_reg_899 <= v6_fu_576_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_830 <= icmp_ln27_fu_490_p2;
        tmp_1_reg_839 <= ap_sig_allocacmp_v49_load[32'd6];
        trunc_ln27_1_reg_849 <= trunc_ln27_1_fu_534_p1;
        trunc_ln27_reg_844 <= trunc_ln27_fu_530_p1;
        v113_0_load_reg_962 <= v113_0_q0;
        v113_1_load_reg_967 <= v113_1_q0;
        v113_2_load_reg_972 <= v113_2_q0;
        v113_3_load_reg_977 <= v113_3_q0;
        v113_4_load_reg_982 <= v113_4_q0;
        v113_5_load_reg_987 <= v113_5_q0;
        v113_6_load_reg_992 <= v113_6_q0;
        v113_7_load_reg_997 <= v113_7_q0;
        v116_0_addr_1_reg_1102[3 : 1] <= zext_ln60_fu_731_p1[3 : 1];
        v116_0_addr_1_reg_1102_pp0_iter4_reg[3 : 1] <= v116_0_addr_1_reg_1102[3 : 1];
        v116_0_addr_1_reg_1102_pp0_iter5_reg[3 : 1] <= v116_0_addr_1_reg_1102_pp0_iter4_reg[3 : 1];
        v116_0_addr_1_reg_1102_pp0_iter6_reg[3 : 1] <= v116_0_addr_1_reg_1102_pp0_iter5_reg[3 : 1];
        v116_0_addr_1_reg_1102_pp0_iter7_reg[3 : 1] <= v116_0_addr_1_reg_1102_pp0_iter6_reg[3 : 1];
        v116_0_addr_reg_1022 <= zext_ln29_fu_701_p1;
        v116_0_addr_reg_1022_pp0_iter3_reg <= v116_0_addr_reg_1022;
        v116_0_addr_reg_1022_pp0_iter4_reg <= v116_0_addr_reg_1022_pp0_iter3_reg;
        v116_0_addr_reg_1022_pp0_iter5_reg <= v116_0_addr_reg_1022_pp0_iter4_reg;
        v116_0_addr_reg_1022_pp0_iter6_reg <= v116_0_addr_reg_1022_pp0_iter5_reg;
        v116_0_addr_reg_1022_pp0_iter7_reg <= v116_0_addr_reg_1022_pp0_iter6_reg;
        v116_1_addr_1_reg_1107[3 : 1] <= zext_ln60_fu_731_p1[3 : 1];
        v116_1_addr_1_reg_1107_pp0_iter4_reg[3 : 1] <= v116_1_addr_1_reg_1107[3 : 1];
        v116_1_addr_1_reg_1107_pp0_iter5_reg[3 : 1] <= v116_1_addr_1_reg_1107_pp0_iter4_reg[3 : 1];
        v116_1_addr_1_reg_1107_pp0_iter6_reg[3 : 1] <= v116_1_addr_1_reg_1107_pp0_iter5_reg[3 : 1];
        v116_1_addr_1_reg_1107_pp0_iter7_reg[3 : 1] <= v116_1_addr_1_reg_1107_pp0_iter6_reg[3 : 1];
        v116_1_addr_reg_1047 <= zext_ln29_fu_701_p1;
        v116_1_addr_reg_1047_pp0_iter3_reg <= v116_1_addr_reg_1047;
        v116_1_addr_reg_1047_pp0_iter4_reg <= v116_1_addr_reg_1047_pp0_iter3_reg;
        v116_1_addr_reg_1047_pp0_iter5_reg <= v116_1_addr_reg_1047_pp0_iter4_reg;
        v116_1_addr_reg_1047_pp0_iter6_reg <= v116_1_addr_reg_1047_pp0_iter5_reg;
        v116_1_addr_reg_1047_pp0_iter7_reg <= v116_1_addr_reg_1047_pp0_iter6_reg;
        v116_2_addr_1_reg_1112[3 : 1] <= zext_ln60_fu_731_p1[3 : 1];
        v116_2_addr_1_reg_1112_pp0_iter4_reg[3 : 1] <= v116_2_addr_1_reg_1112[3 : 1];
        v116_2_addr_1_reg_1112_pp0_iter5_reg[3 : 1] <= v116_2_addr_1_reg_1112_pp0_iter4_reg[3 : 1];
        v116_2_addr_1_reg_1112_pp0_iter6_reg[3 : 1] <= v116_2_addr_1_reg_1112_pp0_iter5_reg[3 : 1];
        v116_2_addr_1_reg_1112_pp0_iter7_reg[3 : 1] <= v116_2_addr_1_reg_1112_pp0_iter6_reg[3 : 1];
        v116_2_addr_reg_1052 <= zext_ln29_fu_701_p1;
        v116_2_addr_reg_1052_pp0_iter3_reg <= v116_2_addr_reg_1052;
        v116_2_addr_reg_1052_pp0_iter4_reg <= v116_2_addr_reg_1052_pp0_iter3_reg;
        v116_2_addr_reg_1052_pp0_iter5_reg <= v116_2_addr_reg_1052_pp0_iter4_reg;
        v116_2_addr_reg_1052_pp0_iter6_reg <= v116_2_addr_reg_1052_pp0_iter5_reg;
        v116_2_addr_reg_1052_pp0_iter7_reg <= v116_2_addr_reg_1052_pp0_iter6_reg;
        v116_3_addr_1_reg_1117[3 : 1] <= zext_ln60_fu_731_p1[3 : 1];
        v116_3_addr_1_reg_1117_pp0_iter4_reg[3 : 1] <= v116_3_addr_1_reg_1117[3 : 1];
        v116_3_addr_1_reg_1117_pp0_iter5_reg[3 : 1] <= v116_3_addr_1_reg_1117_pp0_iter4_reg[3 : 1];
        v116_3_addr_1_reg_1117_pp0_iter6_reg[3 : 1] <= v116_3_addr_1_reg_1117_pp0_iter5_reg[3 : 1];
        v116_3_addr_1_reg_1117_pp0_iter7_reg[3 : 1] <= v116_3_addr_1_reg_1117_pp0_iter6_reg[3 : 1];
        v116_3_addr_reg_1057 <= zext_ln29_fu_701_p1;
        v116_3_addr_reg_1057_pp0_iter3_reg <= v116_3_addr_reg_1057;
        v116_3_addr_reg_1057_pp0_iter4_reg <= v116_3_addr_reg_1057_pp0_iter3_reg;
        v116_3_addr_reg_1057_pp0_iter5_reg <= v116_3_addr_reg_1057_pp0_iter4_reg;
        v116_3_addr_reg_1057_pp0_iter6_reg <= v116_3_addr_reg_1057_pp0_iter5_reg;
        v116_3_addr_reg_1057_pp0_iter7_reg <= v116_3_addr_reg_1057_pp0_iter6_reg;
        v3_2_reg_954 <= v3_2_fu_673_p3;
        v49_load_reg_834 <= ap_sig_allocacmp_v49_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_1162 <= v116_0_q0;
        v116_1_load_1_reg_1167 <= v116_1_q0;
        v116_2_load_1_reg_1172 <= v116_2_q0;
        v116_3_load_1_reg_1177 <= v116_3_q0;
        v35_reg_1127 <= grp_fu_171_p_dout0;
        v41_reg_1132 <= grp_fu_175_p_dout0;
        v47_reg_1137 <= grp_fu_464_p2;
        v53_reg_1142 <= grp_fu_468_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_1062 <= v116_0_q1;
        v116_1_load_reg_1067 <= v116_1_q1;
        v116_2_load_reg_1072 <= v116_2_q1;
        v116_3_load_reg_1077 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_reg_1082 <= grp_fu_171_p_dout0;
        v17_reg_1087 <= grp_fu_175_p_dout0;
        v23_reg_1092 <= grp_fu_464_p2;
        v29_reg_1097 <= grp_fu_468_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v12_reg_1202 <= grp_fu_163_p_dout0;
        v18_reg_1207 <= grp_fu_167_p_dout0;
        v24_reg_1212 <= grp_fu_448_p2;
        v30_reg_1217 <= grp_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v36_reg_1222 <= grp_fu_163_p_dout0;
        v42_reg_1227 <= grp_fu_167_p_dout0;
        v48_reg_1232 <= grp_fu_448_p2;
        v54_reg_1237 <= grp_fu_452_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_fu_116 <= v3_2_fu_673_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_830 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_440_p0 = v33_fu_755_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_440_p0 = v9_fu_739_p1;
    end else begin
        grp_fu_440_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_440_p1 = v35_reg_1127;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_440_p1 = v11_reg_1082;
    end else begin
        grp_fu_440_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_444_p0 = v39_fu_759_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_444_p0 = v15_fu_743_p1;
    end else begin
        grp_fu_444_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_444_p1 = v41_reg_1132;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_444_p1 = v17_reg_1087;
    end else begin
        grp_fu_444_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p0 = v45_fu_763_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p0 = v21_fu_747_p1;
    end else begin
        grp_fu_448_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p1 = v47_reg_1137;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p1 = v23_reg_1092;
    end else begin
        grp_fu_448_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p0 = v51_fu_767_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p0 = v27_fu_751_p1;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p1 = v53_reg_1142;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p1 = v29_reg_1097;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p0 = v34_fu_708_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p0 = v10_fu_685_p1;
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p0 = v40_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p0 = v16_fu_689_p1;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p0 = v46_fu_716_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p0 = v22_fu_693_p1;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p0 = v52_fu_720_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = v28_fu_697_p1;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_4_ce0_local = 1'b1;
    end else begin
        v113_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_5_ce0_local = 1'b1;
    end else begin
        v113_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_6_ce0_local = 1'b1;
    end else begin
        v113_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_7_ce0_local = 1'b1;
    end else begin
        v113_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = v116_0_addr_1_reg_1102_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln60_fu_731_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = v116_0_addr_reg_1022_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_701_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = v116_1_addr_1_reg_1107_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln60_fu_731_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = v116_1_addr_reg_1047_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_701_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = v116_2_addr_1_reg_1112_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln60_fu_731_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address1_local = v116_2_addr_reg_1052_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_701_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = v116_3_addr_1_reg_1117_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln60_fu_731_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address1_local = v116_3_addr_reg_1057_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_701_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_1_ce0_local = 1'b1;
    end else begin
        v124_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_2_ce0_local = 1'b1;
    end else begin
        v124_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_3_ce0_local = 1'b1;
    end else begin
        v124_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_4_ce0_local = 1'b1;
    end else begin
        v124_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_5_ce0_local = 1'b1;
    end else begin
        v124_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_6_ce0_local = 1'b1;
    end else begin
        v124_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_7_ce0_local = 1'b1;
    end else begin
        v124_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v124_ce0_local = 1'b1;
    end else begin
        v124_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln27_1_fu_496_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln27_fu_508_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_654_p2 = (select_ln26_fu_570_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_fu_771_p1 = v12_reg_1202;
assign bitcast_ln43_fu_779_p1 = v18_reg_1207;
assign bitcast_ln50_fu_787_p1 = v24_reg_1212;
assign bitcast_ln57_fu_795_p1 = v30_reg_1217;
assign bitcast_ln64_fu_775_p1 = v36_reg_1222;
assign bitcast_ln71_fu_783_p1 = v42_reg_1227;
assign bitcast_ln78_fu_791_p1 = v48_reg_1232;
assign bitcast_ln86_fu_799_p1 = v54_reg_1237;
assign grp_fu_163_p_ce = 1'b1;
assign grp_fu_163_p_din0 = grp_fu_440_p0;
assign grp_fu_163_p_din1 = grp_fu_440_p1;
assign grp_fu_163_p_opcode = 2'd0;
assign grp_fu_167_p_ce = 1'b1;
assign grp_fu_167_p_din0 = grp_fu_444_p0;
assign grp_fu_167_p_din1 = grp_fu_444_p1;
assign grp_fu_167_p_opcode = 2'd0;
assign grp_fu_171_p_ce = 1'b1;
assign grp_fu_171_p_din0 = grp_fu_456_p0;
assign grp_fu_171_p_din1 = v3_2_reg_954;
assign grp_fu_175_p_ce = 1'b1;
assign grp_fu_175_p_din0 = grp_fu_460_p0;
assign grp_fu_175_p_din1 = v3_2_reg_954;
assign icmp_ln27_fu_490_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_668_p2 = ((select_ln26_reg_894 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_538_p4 = {{select_ln27_fu_522_p3[5:3]}};
assign lshr_ln2_fu_615_p4 = {{select_ln26_fu_570_p3[5:3]}};
assign or_ln_fu_724_p3 = {{lshr_ln2_reg_904_pp0_iter2_reg}, {1'd1}};
assign select_ln26_fu_570_p3 = ((tmp_1_reg_839[0:0] == 1'b1) ? 7'd0 : v49_load_reg_834);
assign select_ln27_fu_522_p3 = ((tmp_1_fu_514_p3[0:0] == 1'b1) ? add_ln27_fu_508_p2 : ap_sig_allocacmp_v4_load);
assign tmp_1_fu_514_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_fu_625_p3 = {{trunc_ln27_reg_844}, {lshr_ln2_fu_615_p4}};
assign trunc_ln27_1_fu_534_p1 = select_ln27_fu_522_p3[2:0];
assign trunc_ln27_fu_530_p1 = select_ln27_fu_522_p3[5:0];
assign v10_fu_685_p1 = v113_0_load_reg_962;
assign v113_0_address0 = zext_ln33_fu_632_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_1_address0 = zext_ln33_fu_632_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_2_address0 = zext_ln33_fu_632_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_3_address0 = zext_ln33_fu_632_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_4_address0 = zext_ln33_fu_632_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_5_address0 = zext_ln33_fu_632_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_6_address0 = zext_ln33_fu_632_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_7_address0 = zext_ln33_fu_632_p1;
assign v113_7_ce0 = v113_7_ce0_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln64_fu_775_p1;
assign v116_0_d1 = bitcast_ln36_fu_771_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln71_fu_783_p1;
assign v116_1_d1 = bitcast_ln43_fu_779_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln78_fu_791_p1;
assign v116_2_d1 = bitcast_ln50_fu_787_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln86_fu_799_p1;
assign v116_3_d1 = bitcast_ln57_fu_795_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v124_1_address0 = zext_ln26_fu_548_p1;
assign v124_1_ce0 = v124_1_ce0_local;
assign v124_2_address0 = zext_ln26_fu_548_p1;
assign v124_2_ce0 = v124_2_ce0_local;
assign v124_3_address0 = zext_ln26_fu_548_p1;
assign v124_3_ce0 = v124_3_ce0_local;
assign v124_4_address0 = zext_ln26_fu_548_p1;
assign v124_4_ce0 = v124_4_ce0_local;
assign v124_5_address0 = zext_ln26_fu_548_p1;
assign v124_5_ce0 = v124_5_ce0_local;
assign v124_6_address0 = zext_ln26_fu_548_p1;
assign v124_6_ce0 = v124_6_ce0_local;
assign v124_7_address0 = zext_ln26_fu_548_p1;
assign v124_7_ce0 = v124_7_ce0_local;
assign v124_address0 = zext_ln26_fu_548_p1;
assign v124_ce0 = v124_ce0_local;
assign v15_fu_743_p1 = v116_1_load_reg_1067;
assign v16_fu_689_p1 = v113_1_load_reg_967;
assign v21_fu_747_p1 = v116_2_load_reg_1072;
assign v22_fu_693_p1 = v113_2_load_reg_972;
assign v27_fu_751_p1 = v116_3_load_reg_1077;
assign v28_fu_697_p1 = v113_3_load_reg_977;
assign v33_fu_755_p1 = v116_0_load_1_reg_1162;
assign v34_fu_708_p1 = v113_4_load_reg_982;
assign v39_fu_759_p1 = v116_1_load_1_reg_1167;
assign v3_2_fu_673_p3 = ((icmp_ln31_fu_668_p2[0:0] == 1'b1) ? v6_reg_899 : v3_fu_116);
assign v40_fu_712_p1 = v113_5_load_reg_987;
assign v45_fu_763_p1 = v116_2_load_1_reg_1172;
assign v46_fu_716_p1 = v113_6_load_reg_992;
assign v51_fu_767_p1 = v116_3_load_1_reg_1177;
assign v52_fu_720_p1 = v113_7_load_reg_997;
assign v6_fu_576_p17 = 'bx;
assign v9_fu_739_p1 = v116_0_load_reg_1062;
assign zext_ln26_fu_548_p1 = lshr_ln1_fu_538_p4;
assign zext_ln29_fu_701_p1 = lshr_ln29_1_reg_949_pp0_iter1_reg;
assign zext_ln33_fu_632_p1 = tmp_fu_625_p3;
assign zext_ln60_fu_731_p1 = or_ln_fu_724_p3;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_1102[0] <= 1'b1;
    v116_0_addr_1_reg_1102_pp0_iter4_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1102_pp0_iter5_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1102_pp0_iter6_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1102_pp0_iter7_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1107[0] <= 1'b1;
    v116_1_addr_1_reg_1107_pp0_iter4_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1107_pp0_iter5_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1107_pp0_iter6_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1107_pp0_iter7_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1112[0] <= 1'b1;
    v116_2_addr_1_reg_1112_pp0_iter4_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1112_pp0_iter5_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1112_pp0_iter6_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1112_pp0_iter7_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1117[0] <= 1'b1;
    v116_3_addr_1_reg_1117_pp0_iter4_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1117_pp0_iter5_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1117_pp0_iter6_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1117_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 