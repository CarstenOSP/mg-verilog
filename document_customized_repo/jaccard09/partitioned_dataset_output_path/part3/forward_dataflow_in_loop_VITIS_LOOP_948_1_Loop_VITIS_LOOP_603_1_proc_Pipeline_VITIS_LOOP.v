
module forward_dataflow_in_loop_VITIS_LOOP_948_1_Loop_VITIS_LOOP_603_1_proc_Pipeline_VITIS_LOOP (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v509_3_address0,v509_3_ce0,v509_3_q0,v509_2_address0,v509_2_ce0,v509_2_q0,v509_1_address0,v509_1_ce0,v509_1_q0,v509_address0,v509_ce0,v509_q0,sext_ln603,empty_71,empty,tmp2,v508_15_address0,v508_15_ce0,v508_15_q0,v508_11_address0,v508_11_ce0,v508_11_q0,v508_7_address0,v508_7_ce0,v508_7_q0,v508_3_address0,v508_3_ce0,v508_3_q0,v508_14_address0,v508_14_ce0,v508_14_q0,v508_10_address0,v508_10_ce0,v508_10_q0,v508_6_address0,v508_6_ce0,v508_6_q0,v508_2_address0,v508_2_ce0,v508_2_q0,v508_13_address0,v508_13_ce0,v508_13_q0,v508_9_address0,v508_9_ce0,v508_9_q0,v508_5_address0,v508_5_ce0,v508_5_q0,v508_1_address0,v508_1_ce0,v508_1_q0,v508_12_address0,v508_12_ce0,v508_12_q0,v508_8_address0,v508_8_ce0,v508_8_q0,v508_4_address0,v508_4_ce0,v508_4_q0,v508_address0,v508_ce0,v508_q0,v511_3_address0,v511_3_ce0,v511_3_q0,v510_3_address0,v510_3_ce0,v510_3_q0,v512_3_address0,v512_3_ce0,v512_3_we0,v512_3_d0,v512_3_address1,v512_3_ce1,v512_3_q1,v511_2_address0,v511_2_ce0,v511_2_q0,v510_2_address0,v510_2_ce0,v510_2_q0,v512_2_address0,v512_2_ce0,v512_2_we0,v512_2_d0,v512_2_address1,v512_2_ce1,v512_2_q1,v511_1_address0,v511_1_ce0,v511_1_q0,v510_1_address0,v510_1_ce0,v510_1_q0,v512_1_address0,v512_1_ce0,v512_1_we0,v512_1_d0,v512_1_address1,v512_1_ce1,v512_1_q1,v511_address0,v511_ce0,v511_q0,v510_address0,v510_ce0,v510_q0,v512_address0,v512_ce0,v512_we0,v512_d0,v512_address1,v512_ce1,v512_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] v509_3_address0;
output   v509_3_ce0;
input  [7:0] v509_3_q0;
output  [2:0] v509_2_address0;
output   v509_2_ce0;
input  [7:0] v509_2_q0;
output  [2:0] v509_1_address0;
output   v509_1_ce0;
input  [7:0] v509_1_q0;
output  [2:0] v509_address0;
output   v509_ce0;
input  [7:0] v509_q0;
input  [8:0] sext_ln603;
input  [8:0] empty_71;
input  [0:0] empty;
input  [0:0] tmp2;
output  [5:0] v508_15_address0;
output   v508_15_ce0;
input  [7:0] v508_15_q0;
output  [5:0] v508_11_address0;
output   v508_11_ce0;
input  [7:0] v508_11_q0;
output  [5:0] v508_7_address0;
output   v508_7_ce0;
input  [7:0] v508_7_q0;
output  [5:0] v508_3_address0;
output   v508_3_ce0;
input  [7:0] v508_3_q0;
output  [5:0] v508_14_address0;
output   v508_14_ce0;
input  [7:0] v508_14_q0;
output  [5:0] v508_10_address0;
output   v508_10_ce0;
input  [7:0] v508_10_q0;
output  [5:0] v508_6_address0;
output   v508_6_ce0;
input  [7:0] v508_6_q0;
output  [5:0] v508_2_address0;
output   v508_2_ce0;
input  [7:0] v508_2_q0;
output  [5:0] v508_13_address0;
output   v508_13_ce0;
input  [7:0] v508_13_q0;
output  [5:0] v508_9_address0;
output   v508_9_ce0;
input  [7:0] v508_9_q0;
output  [5:0] v508_5_address0;
output   v508_5_ce0;
input  [7:0] v508_5_q0;
output  [5:0] v508_1_address0;
output   v508_1_ce0;
input  [7:0] v508_1_q0;
output  [5:0] v508_12_address0;
output   v508_12_ce0;
input  [7:0] v508_12_q0;
output  [5:0] v508_8_address0;
output   v508_8_ce0;
input  [7:0] v508_8_q0;
output  [5:0] v508_4_address0;
output   v508_4_ce0;
input  [7:0] v508_4_q0;
output  [5:0] v508_address0;
output   v508_ce0;
input  [7:0] v508_q0;
output  [2:0] v511_3_address0;
output   v511_3_ce0;
input  [7:0] v511_3_q0;
output  [2:0] v510_3_address0;
output   v510_3_ce0;
input  [7:0] v510_3_q0;
output  [2:0] v512_3_address0;
output   v512_3_ce0;
output   v512_3_we0;
output  [7:0] v512_3_d0;
output  [2:0] v512_3_address1;
output   v512_3_ce1;
input  [7:0] v512_3_q1;
output  [2:0] v511_2_address0;
output   v511_2_ce0;
input  [7:0] v511_2_q0;
output  [2:0] v510_2_address0;
output   v510_2_ce0;
input  [7:0] v510_2_q0;
output  [2:0] v512_2_address0;
output   v512_2_ce0;
output   v512_2_we0;
output  [7:0] v512_2_d0;
output  [2:0] v512_2_address1;
output   v512_2_ce1;
input  [7:0] v512_2_q1;
output  [2:0] v511_1_address0;
output   v511_1_ce0;
input  [7:0] v511_1_q0;
output  [2:0] v510_1_address0;
output   v510_1_ce0;
input  [7:0] v510_1_q0;
output  [2:0] v512_1_address0;
output   v512_1_ce0;
output   v512_1_we0;
output  [7:0] v512_1_d0;
output  [2:0] v512_1_address1;
output   v512_1_ce1;
input  [7:0] v512_1_q1;
output  [2:0] v511_address0;
output   v511_ce0;
input  [7:0] v511_q0;
output  [2:0] v510_address0;
output   v510_ce0;
input  [7:0] v510_q0;
output  [2:0] v512_address0;
output   v512_ce0;
output   v512_we0;
output  [7:0] v512_d0;
output  [2:0] v512_address1;
output   v512_ce1;
input  [7:0] v512_q1;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln603_fu_641_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln605192_reg_602;
wire    ap_block_pp0_stage0_11001;
wire  signed [9:0] sext_ln603_cast_fu_613_p1;
reg  signed [9:0] sext_ln603_cast_reg_1177;
reg   [0:0] icmp_ln603_reg_1182;
reg   [0:0] icmp_ln603_reg_1182_pp0_iter1_reg;
wire   [63:0] zext_ln603_1_fu_694_p1;
reg   [63:0] zext_ln603_1_reg_1186;
wire   [0:0] cmp9_i_i_fu_704_p2;
reg   [0:0] cmp9_i_i_reg_1192;
reg   [0:0] cmp9_i_i_reg_1192_pp0_iter2_reg;
reg   [0:0] cmp9_i_i_reg_1192_pp0_iter3_reg;
reg   [0:0] cmp9_i_i_reg_1192_pp0_iter4_reg;
wire   [0:0] brmerge123_i_fu_728_p2;
reg   [0:0] brmerge123_i_reg_1210;
reg   [0:0] brmerge123_i_reg_1210_pp0_iter2_reg;
reg   [0:0] brmerge123_i_reg_1210_pp0_iter3_reg;
reg   [0:0] brmerge123_i_reg_1210_pp0_iter4_reg;
wire   [0:0] brmerge131_i_fu_739_p2;
reg   [0:0] brmerge131_i_reg_1218;
reg   [0:0] brmerge131_i_reg_1218_pp0_iter2_reg;
reg   [0:0] brmerge131_i_reg_1218_pp0_iter3_reg;
reg   [0:0] brmerge131_i_reg_1218_pp0_iter4_reg;
reg   [0:0] brmerge131_i_reg_1218_pp0_iter5_reg;
wire   [2:0] lshr_ln6_fu_744_p4;
reg   [2:0] lshr_ln6_reg_1226;
reg   [2:0] lshr_ln6_reg_1226_pp0_iter2_reg;
reg   [2:0] lshr_ln6_reg_1226_pp0_iter3_reg;
wire   [63:0] zext_ln613_fu_768_p1;
reg   [63:0] zext_ln613_reg_1231;
wire   [0:0] xor_ln605_fu_794_p2;
reg   [0:0] xor_ln605_reg_1283;
wire   [7:0] mul_ln706_1_fu_810_p2;
reg   [7:0] mul_ln706_1_reg_1394;
wire   [7:0] mul_ln706_2_fu_816_p2;
reg   [7:0] mul_ln706_2_reg_1399;
wire   [7:0] mul_ln717_1_fu_822_p2;
reg   [7:0] mul_ln717_1_reg_1404;
wire   [7:0] mul_ln717_2_fu_828_p2;
reg   [7:0] mul_ln717_2_reg_1409;
wire   [7:0] mul_ln728_1_fu_834_p2;
reg   [7:0] mul_ln728_1_reg_1414;
wire   [7:0] mul_ln728_2_fu_840_p2;
reg   [7:0] mul_ln728_2_reg_1419;
wire   [7:0] mul_ln739_1_fu_846_p2;
reg   [7:0] mul_ln739_1_reg_1424;
wire   [7:0] mul_ln739_2_fu_852_p2;
reg   [7:0] mul_ln739_2_reg_1429;
reg   [2:0] v512_3_addr_reg_1444;
reg   [2:0] v512_3_addr_reg_1444_pp0_iter5_reg;
reg   [2:0] v512_2_addr_reg_1460;
reg   [2:0] v512_2_addr_reg_1460_pp0_iter5_reg;
reg   [2:0] v512_1_addr_reg_1476;
reg   [2:0] v512_1_addr_reg_1476_pp0_iter5_reg;
reg   [2:0] v512_addr_reg_1492;
reg   [2:0] v512_addr_reg_1492_pp0_iter5_reg;
(* use_dsp48 = "no" *) wire   [7:0] v409_fu_934_p2;
reg   [7:0] v409_reg_1498;
(* use_dsp48 = "no" *) wire   [7:0] v420_fu_944_p2;
reg   [7:0] v420_reg_1505;
(* use_dsp48 = "no" *) wire   [7:0] v431_fu_954_p2;
reg   [7:0] v431_reg_1512;
(* use_dsp48 = "no" *) wire   [7:0] v442_fu_964_p2;
reg   [7:0] v442_reg_1519;
reg   [0:0] ap_phi_mux_icmp_ln605192_phi_fu_605_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln605_fu_858_p1;
reg   [5:0] indvar_flatten189_fu_134;
wire   [5:0] add_ln603_1_fu_635_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten189_load;
reg   [5:0] v261190_fu_138;
wire   [5:0] v261_fu_672_p3;
reg   [5:0] v262191_fu_142;
wire   [5:0] v262_fu_780_p2;
reg    v509_1_ce0_local;
reg    v509_ce0_local;
reg    v508_13_ce0_local;
reg    v508_9_ce0_local;
reg    v508_5_ce0_local;
reg    v508_1_ce0_local;
reg    v508_12_ce0_local;
reg    v508_8_ce0_local;
reg    v508_4_ce0_local;
reg    v508_ce0_local;
reg    v509_3_ce0_local;
reg    v509_2_ce0_local;
reg    v508_15_ce0_local;
reg    v508_11_ce0_local;
reg    v508_7_ce0_local;
reg    v508_3_ce0_local;
reg    v508_14_ce0_local;
reg    v508_10_ce0_local;
reg    v508_6_ce0_local;
reg    v508_2_ce0_local;
reg    v511_3_ce0_local;
reg    v510_3_ce0_local;
reg    v512_3_ce1_local;
reg    v512_3_we0_local;
wire   [7:0] select_ln757_fu_989_p3;
reg    v512_3_ce0_local;
reg    v511_2_ce0_local;
reg    v510_2_ce0_local;
reg    v512_2_ce1_local;
reg    v512_2_we0_local;
wire   [7:0] select_ln769_fu_1016_p3;
reg    v512_2_ce0_local;
reg    v511_1_ce0_local;
reg    v510_1_ce0_local;
reg    v512_1_ce1_local;
reg    v512_1_we0_local;
wire   [7:0] select_ln781_fu_1043_p3;
reg    v512_1_ce0_local;
reg    v511_ce0_local;
reg    v510_ce0_local;
reg    v512_ce1_local;
reg    v512_we0_local;
wire   [7:0] select_ln793_fu_1070_p3;
reg    v512_ce0_local;
wire   [5:0] add_ln603_fu_658_p2;
wire   [3:0] lshr_ln_fu_684_p4;
wire   [4:0] empty_92_fu_710_p1;
wire   [9:0] v261_cast7_cast_i_fu_714_p1;
wire   [8:0] zext_ln603_fu_680_p1;
wire   [0:0] cmp10_i_not_i_fu_723_p2;
wire   [9:0] empty_93_fu_718_p2;
wire   [0:0] cmp555_i_not_i_fu_733_p2;
wire   [5:0] select_ln603_fu_664_p3;
wire   [5:0] tmp_s_fu_754_p3;
wire   [5:0] lshr_ln_cast_fu_700_p1;
wire   [5:0] add_ln613_fu_762_p2;
wire   [0:0] tmp_46_fu_786_p3;
wire   [7:0] v266_fu_873_p3;
wire   [7:0] v278_fu_887_p3;
wire   [7:0] v289_fu_901_p3;
wire   [7:0] v300_fu_915_p3;
wire  signed [7:0] add_ln752_2_fu_929_p0;
wire   [7:0] grp_fu_1109_p3;
wire   [7:0] v267_fu_880_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln752_2_fu_929_p2;
wire  signed [7:0] v409_fu_934_p1;
wire   [7:0] grp_fu_1077_p3;
wire  signed [7:0] add_ln764_2_fu_939_p0;
wire   [7:0] grp_fu_1117_p3;
wire   [7:0] v279_fu_894_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln764_2_fu_939_p2;
wire  signed [7:0] v420_fu_944_p1;
wire   [7:0] grp_fu_1085_p3;
wire  signed [7:0] add_ln776_2_fu_949_p0;
wire   [7:0] grp_fu_1125_p3;
wire   [7:0] v290_fu_908_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln776_2_fu_949_p2;
wire  signed [7:0] v431_fu_954_p1;
wire   [7:0] grp_fu_1093_p3;
wire  signed [7:0] add_ln788_2_fu_959_p0;
wire   [7:0] grp_fu_1133_p3;
wire   [7:0] v301_fu_922_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln788_2_fu_959_p2;
wire  signed [7:0] v442_fu_964_p1;
wire   [7:0] grp_fu_1101_p3;
wire   [0:0] v410_fu_969_p2;
wire   [6:0] trunc_ln753_fu_974_p1;
wire   [6:0] v411_1_fu_977_p3;
wire   [7:0] zext_ln755_fu_985_p1;
wire   [0:0] v421_fu_996_p2;
wire   [6:0] trunc_ln765_fu_1001_p1;
wire   [6:0] v422_1_fu_1004_p3;
wire   [7:0] zext_ln767_fu_1012_p1;
wire   [0:0] v432_fu_1023_p2;
wire   [6:0] trunc_ln777_fu_1028_p1;
wire   [6:0] v433_1_fu_1031_p3;
wire   [7:0] zext_ln779_fu_1039_p1;
wire   [0:0] v443_fu_1050_p2;
wire   [6:0] trunc_ln789_fu_1055_p1;
wire   [6:0] v444_1_fu_1058_p3;
wire   [7:0] zext_ln791_fu_1066_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 indvar_flatten189_fu_134 = 6'd0;
#0 v261190_fu_138 = 6'd0;
#0 v262191_fu_142 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9722(.din0(v508_15_q0),.din1(v509_3_q0),.dout(mul_ln706_1_fu_810_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9723(.din0(v508_14_q0),.din1(v509_2_q0),.dout(mul_ln706_2_fu_816_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9724(.din0(v508_11_q0),.din1(v509_3_q0),.dout(mul_ln717_1_fu_822_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9725(.din0(v508_10_q0),.din1(v509_2_q0),.dout(mul_ln717_2_fu_828_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9726(.din0(v508_7_q0),.din1(v509_3_q0),.dout(mul_ln728_1_fu_834_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9727(.din0(v508_6_q0),.din1(v509_2_q0),.dout(mul_ln728_2_fu_840_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9728(.din0(v508_3_q0),.din1(v509_3_q0),.dout(mul_ln739_1_fu_846_p2));
forward_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9729(.din0(v508_2_q0),.din1(v509_2_q0),.dout(mul_ln739_2_fu_852_p2));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9730(.clk(ap_clk),.reset(ap_rst),.din0(v508_13_q0),.din1(v509_1_q0),.din2(mul_ln706_2_reg_1399),.ce(1'b1),.dout(grp_fu_1077_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9731(.clk(ap_clk),.reset(ap_rst),.din0(v508_9_q0),.din1(v509_1_q0),.din2(mul_ln717_2_reg_1409),.ce(1'b1),.dout(grp_fu_1085_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9732(.clk(ap_clk),.reset(ap_rst),.din0(v508_5_q0),.din1(v509_1_q0),.din2(mul_ln728_2_reg_1419),.ce(1'b1),.dout(grp_fu_1093_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9733(.clk(ap_clk),.reset(ap_rst),.din0(v508_1_q0),.din1(v509_1_q0),.din2(mul_ln739_2_reg_1429),.ce(1'b1),.dout(grp_fu_1101_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9734(.clk(ap_clk),.reset(ap_rst),.din0(v508_12_q0),.din1(v509_q0),.din2(mul_ln706_1_reg_1394),.ce(1'b1),.dout(grp_fu_1109_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9735(.clk(ap_clk),.reset(ap_rst),.din0(v508_8_q0),.din1(v509_q0),.din2(mul_ln717_1_reg_1404),.ce(1'b1),.dout(grp_fu_1117_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9736(.clk(ap_clk),.reset(ap_rst),.din0(v508_4_q0),.din1(v509_q0),.din2(mul_ln728_1_reg_1414),.ce(1'b1),.dout(grp_fu_1125_p3));
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9737(.clk(ap_clk),.reset(ap_rst),.din0(v508_q0),.din1(v509_q0),.din2(mul_ln739_1_reg_1424),.ce(1'b1),.dout(grp_fu_1133_p3));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln603_reg_1182_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln605192_reg_602 <= xor_ln605_reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln605192_reg_602 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten189_fu_134 <= add_ln603_1_fu_635_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten189_fu_134 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v261190_fu_138 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v261190_fu_138 <= v261_fu_672_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v262191_fu_142 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v262191_fu_142 <= v262_fu_780_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        brmerge123_i_reg_1210 <= brmerge123_i_fu_728_p2;
        brmerge131_i_reg_1218 <= brmerge131_i_fu_739_p2;
        cmp9_i_i_reg_1192 <= cmp9_i_i_fu_704_p2;
        icmp_ln603_reg_1182 <= icmp_ln603_fu_641_p2;
        icmp_ln603_reg_1182_pp0_iter1_reg <= icmp_ln603_reg_1182;
        lshr_ln6_reg_1226 <= {{select_ln603_fu_664_p3[4:2]}};
        sext_ln603_cast_reg_1177 <= sext_ln603_cast_fu_613_p1;
        zext_ln603_1_reg_1186[3 : 0] <= zext_ln603_1_fu_694_p1[3 : 0];
        zext_ln613_reg_1231[5 : 0] <= zext_ln613_fu_768_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        brmerge123_i_reg_1210_pp0_iter2_reg <= brmerge123_i_reg_1210;
        brmerge123_i_reg_1210_pp0_iter3_reg <= brmerge123_i_reg_1210_pp0_iter2_reg;
        brmerge123_i_reg_1210_pp0_iter4_reg <= brmerge123_i_reg_1210_pp0_iter3_reg;
        brmerge131_i_reg_1218_pp0_iter2_reg <= brmerge131_i_reg_1218;
        brmerge131_i_reg_1218_pp0_iter3_reg <= brmerge131_i_reg_1218_pp0_iter2_reg;
        brmerge131_i_reg_1218_pp0_iter4_reg <= brmerge131_i_reg_1218_pp0_iter3_reg;
        brmerge131_i_reg_1218_pp0_iter5_reg <= brmerge131_i_reg_1218_pp0_iter4_reg;
        cmp9_i_i_reg_1192_pp0_iter2_reg <= cmp9_i_i_reg_1192;
        cmp9_i_i_reg_1192_pp0_iter3_reg <= cmp9_i_i_reg_1192_pp0_iter2_reg;
        cmp9_i_i_reg_1192_pp0_iter4_reg <= cmp9_i_i_reg_1192_pp0_iter3_reg;
        lshr_ln6_reg_1226_pp0_iter2_reg <= lshr_ln6_reg_1226;
        lshr_ln6_reg_1226_pp0_iter3_reg <= lshr_ln6_reg_1226_pp0_iter2_reg;
        mul_ln706_1_reg_1394 <= mul_ln706_1_fu_810_p2;
        mul_ln706_2_reg_1399 <= mul_ln706_2_fu_816_p2;
        mul_ln717_1_reg_1404 <= mul_ln717_1_fu_822_p2;
        mul_ln717_2_reg_1409 <= mul_ln717_2_fu_828_p2;
        mul_ln728_1_reg_1414 <= mul_ln728_1_fu_834_p2;
        mul_ln728_2_reg_1419 <= mul_ln728_2_fu_840_p2;
        mul_ln739_1_reg_1424 <= mul_ln739_1_fu_846_p2;
        mul_ln739_2_reg_1429 <= mul_ln739_2_fu_852_p2;
        v409_reg_1498 <= v409_fu_934_p2;
        v420_reg_1505 <= v420_fu_944_p2;
        v431_reg_1512 <= v431_fu_954_p2;
        v442_reg_1519 <= v442_fu_964_p2;
        v512_1_addr_reg_1476 <= zext_ln605_fu_858_p1;
        v512_1_addr_reg_1476_pp0_iter5_reg <= v512_1_addr_reg_1476;
        v512_2_addr_reg_1460 <= zext_ln605_fu_858_p1;
        v512_2_addr_reg_1460_pp0_iter5_reg <= v512_2_addr_reg_1460;
        v512_3_addr_reg_1444 <= zext_ln605_fu_858_p1;
        v512_3_addr_reg_1444_pp0_iter5_reg <= v512_3_addr_reg_1444;
        v512_addr_reg_1492 <= zext_ln605_fu_858_p1;
        v512_addr_reg_1492_pp0_iter5_reg <= v512_addr_reg_1492;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln605_reg_1283 <= xor_ln605_fu_794_p2;
    end
end
always @ (*) begin
    if (((icmp_ln603_fu_641_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln603_reg_1182_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln605192_phi_fu_605_p4 = xor_ln605_reg_1283;
    end else begin
        ap_phi_mux_icmp_ln605192_phi_fu_605_p4 = icmp_ln605192_reg_602;
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
        ap_sig_allocacmp_indvar_flatten189_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten189_load = indvar_flatten189_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v508_10_ce0_local = 1'b1;
    end else begin
        v508_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v508_11_ce0_local = 1'b1;
    end else begin
        v508_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v508_12_ce0_local = 1'b1;
    end else begin
        v508_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v508_13_ce0_local = 1'b1;
    end else begin
        v508_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v508_14_ce0_local = 1'b1;
    end else begin
        v508_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v508_15_ce0_local = 1'b1;
    end else begin
        v508_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v508_1_ce0_local = 1'b1;
    end else begin
        v508_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v508_2_ce0_local = 1'b1;
    end else begin
        v508_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v508_3_ce0_local = 1'b1;
    end else begin
        v508_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v508_4_ce0_local = 1'b1;
    end else begin
        v508_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v508_5_ce0_local = 1'b1;
    end else begin
        v508_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v508_6_ce0_local = 1'b1;
    end else begin
        v508_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v508_7_ce0_local = 1'b1;
    end else begin
        v508_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v508_8_ce0_local = 1'b1;
    end else begin
        v508_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v508_9_ce0_local = 1'b1;
    end else begin
        v508_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v508_ce0_local = 1'b1;
    end else begin
        v508_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v509_1_ce0_local = 1'b1;
    end else begin
        v509_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_2_ce0_local = 1'b1;
    end else begin
        v509_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v509_3_ce0_local = 1'b1;
    end else begin
        v509_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v509_ce0_local = 1'b1;
    end else begin
        v509_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v510_1_ce0_local = 1'b1;
    end else begin
        v510_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v510_2_ce0_local = 1'b1;
    end else begin
        v510_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v510_3_ce0_local = 1'b1;
    end else begin
        v510_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v510_ce0_local = 1'b1;
    end else begin
        v510_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v511_1_ce0_local = 1'b1;
    end else begin
        v511_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v511_2_ce0_local = 1'b1;
    end else begin
        v511_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v511_3_ce0_local = 1'b1;
    end else begin
        v511_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v511_ce0_local = 1'b1;
    end else begin
        v511_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v512_1_ce0_local = 1'b1;
    end else begin
        v512_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v512_1_ce1_local = 1'b1;
    end else begin
        v512_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v512_1_we0_local = 1'b1;
    end else begin
        v512_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v512_2_ce0_local = 1'b1;
    end else begin
        v512_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v512_2_ce1_local = 1'b1;
    end else begin
        v512_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v512_2_we0_local = 1'b1;
    end else begin
        v512_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v512_3_ce0_local = 1'b1;
    end else begin
        v512_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v512_3_ce1_local = 1'b1;
    end else begin
        v512_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v512_3_we0_local = 1'b1;
    end else begin
        v512_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v512_ce0_local = 1'b1;
    end else begin
        v512_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v512_ce1_local = 1'b1;
    end else begin
        v512_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v512_we0_local = 1'b1;
    end else begin
        v512_we0_local = 1'b0;
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
assign add_ln603_1_fu_635_p2 = (ap_sig_allocacmp_indvar_flatten189_load + 6'd1);
assign add_ln603_fu_658_p2 = (v261190_fu_138 + 6'd4);
assign add_ln613_fu_762_p2 = (tmp_s_fu_754_p3 + lshr_ln_cast_fu_700_p1);
assign add_ln752_2_fu_929_p0 = grp_fu_1109_p3;
assign add_ln752_2_fu_929_p2 = ($signed(add_ln752_2_fu_929_p0) + $signed(v267_fu_880_p3));
assign add_ln764_2_fu_939_p0 = grp_fu_1117_p3;
assign add_ln764_2_fu_939_p2 = ($signed(add_ln764_2_fu_939_p0) + $signed(v279_fu_894_p3));
assign add_ln776_2_fu_949_p0 = grp_fu_1125_p3;
assign add_ln776_2_fu_949_p2 = ($signed(add_ln776_2_fu_949_p0) + $signed(v290_fu_908_p3));
assign add_ln788_2_fu_959_p0 = grp_fu_1133_p3;
assign add_ln788_2_fu_959_p2 = ($signed(add_ln788_2_fu_959_p0) + $signed(v301_fu_922_p3));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge123_i_fu_728_p2 = (empty | cmp10_i_not_i_fu_723_p2);
assign brmerge131_i_fu_739_p2 = (tmp2 | cmp555_i_not_i_fu_733_p2);
assign cmp10_i_not_i_fu_723_p2 = ((zext_ln603_fu_680_p1 != empty_71) ? 1'b1 : 1'b0);
assign cmp555_i_not_i_fu_733_p2 = ((empty_93_fu_718_p2 != 10'd769) ? 1'b1 : 1'b0);
assign cmp9_i_i_fu_704_p2 = ((v261_fu_672_p3 == 6'd0) ? 1'b1 : 1'b0);
assign empty_92_fu_710_p1 = v261_fu_672_p3[4:0];
assign empty_93_fu_718_p2 = ($signed(sext_ln603_cast_reg_1177) - $signed(v261_cast7_cast_i_fu_714_p1));
assign icmp_ln603_fu_641_p2 = ((ap_sig_allocacmp_indvar_flatten189_load == 6'd63) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_744_p4 = {{select_ln603_fu_664_p3[4:2]}};
assign lshr_ln_cast_fu_700_p1 = lshr_ln_fu_684_p4;
assign lshr_ln_fu_684_p4 = {{v261_fu_672_p3[5:2]}};
assign select_ln603_fu_664_p3 = ((ap_phi_mux_icmp_ln605192_phi_fu_605_p4[0:0] == 1'b1) ? v262191_fu_142 : 6'd0);
assign select_ln757_fu_989_p3 = ((brmerge131_i_reg_1218_pp0_iter5_reg[0:0] == 1'b1) ? v409_reg_1498 : zext_ln755_fu_985_p1);
assign select_ln769_fu_1016_p3 = ((brmerge131_i_reg_1218_pp0_iter5_reg[0:0] == 1'b1) ? v420_reg_1505 : zext_ln767_fu_1012_p1);
assign select_ln781_fu_1043_p3 = ((brmerge131_i_reg_1218_pp0_iter5_reg[0:0] == 1'b1) ? v431_reg_1512 : zext_ln779_fu_1039_p1);
assign select_ln793_fu_1070_p3 = ((brmerge131_i_reg_1218_pp0_iter5_reg[0:0] == 1'b1) ? v442_reg_1519 : zext_ln791_fu_1066_p1);
assign sext_ln603_cast_fu_613_p1 = $signed(sext_ln603);
assign tmp_46_fu_786_p3 = v262_fu_780_p2[32'd5];
assign tmp_s_fu_754_p3 = {{lshr_ln6_fu_744_p4}, {3'd0}};
assign trunc_ln753_fu_974_p1 = v409_reg_1498[6:0];
assign trunc_ln765_fu_1001_p1 = v420_reg_1505[6:0];
assign trunc_ln777_fu_1028_p1 = v431_reg_1512[6:0];
assign trunc_ln789_fu_1055_p1 = v442_reg_1519[6:0];
assign v261_cast7_cast_i_fu_714_p1 = empty_92_fu_710_p1;
assign v261_fu_672_p3 = ((ap_phi_mux_icmp_ln605192_phi_fu_605_p4[0:0] == 1'b1) ? v261190_fu_138 : add_ln603_fu_658_p2);
assign v262_fu_780_p2 = (select_ln603_fu_664_p3 + 6'd4);
assign v266_fu_873_p3 = ((cmp9_i_i_reg_1192_pp0_iter4_reg[0:0] == 1'b1) ? v510_3_q0 : v512_3_q1);
assign v267_fu_880_p3 = ((brmerge123_i_reg_1210_pp0_iter4_reg[0:0] == 1'b1) ? v266_fu_873_p3 : v511_3_q0);
assign v278_fu_887_p3 = ((cmp9_i_i_reg_1192_pp0_iter4_reg[0:0] == 1'b1) ? v510_2_q0 : v512_2_q1);
assign v279_fu_894_p3 = ((brmerge123_i_reg_1210_pp0_iter4_reg[0:0] == 1'b1) ? v278_fu_887_p3 : v511_2_q0);
assign v289_fu_901_p3 = ((cmp9_i_i_reg_1192_pp0_iter4_reg[0:0] == 1'b1) ? v510_1_q0 : v512_1_q1);
assign v290_fu_908_p3 = ((brmerge123_i_reg_1210_pp0_iter4_reg[0:0] == 1'b1) ? v289_fu_901_p3 : v511_1_q0);
assign v300_fu_915_p3 = ((cmp9_i_i_reg_1192_pp0_iter4_reg[0:0] == 1'b1) ? v510_q0 : v512_q1);
assign v301_fu_922_p3 = ((brmerge123_i_reg_1210_pp0_iter4_reg[0:0] == 1'b1) ? v300_fu_915_p3 : v511_q0);
assign v409_fu_934_p1 = grp_fu_1077_p3;
assign v409_fu_934_p2 = ($signed(add_ln752_2_fu_929_p2) + $signed(v409_fu_934_p1));
assign v410_fu_969_p2 = (($signed(v409_reg_1498) > $signed(8'd89)) ? 1'b1 : 1'b0);
assign v411_1_fu_977_p3 = ((v410_fu_969_p2[0:0] == 1'b1) ? trunc_ln753_fu_974_p1 : 7'd89);
assign v420_fu_944_p1 = grp_fu_1085_p3;
assign v420_fu_944_p2 = ($signed(add_ln764_2_fu_939_p2) + $signed(v420_fu_944_p1));
assign v421_fu_996_p2 = (($signed(v420_reg_1505) > $signed(8'd89)) ? 1'b1 : 1'b0);
assign v422_1_fu_1004_p3 = ((v421_fu_996_p2[0:0] == 1'b1) ? trunc_ln765_fu_1001_p1 : 7'd89);
assign v431_fu_954_p1 = grp_fu_1093_p3;
assign v431_fu_954_p2 = ($signed(add_ln776_2_fu_949_p2) + $signed(v431_fu_954_p1));
assign v432_fu_1023_p2 = (($signed(v431_reg_1512) > $signed(8'd89)) ? 1'b1 : 1'b0);
assign v433_1_fu_1031_p3 = ((v432_fu_1023_p2[0:0] == 1'b1) ? trunc_ln777_fu_1028_p1 : 7'd89);
assign v442_fu_964_p1 = grp_fu_1101_p3;
assign v442_fu_964_p2 = ($signed(add_ln788_2_fu_959_p2) + $signed(v442_fu_964_p1));
assign v443_fu_1050_p2 = (($signed(v442_reg_1519) > $signed(8'd89)) ? 1'b1 : 1'b0);
assign v444_1_fu_1058_p3 = ((v443_fu_1050_p2[0:0] == 1'b1) ? trunc_ln789_fu_1055_p1 : 7'd89);
assign v508_10_address0 = zext_ln613_reg_1231;
assign v508_10_ce0 = v508_10_ce0_local;
assign v508_11_address0 = zext_ln613_reg_1231;
assign v508_11_ce0 = v508_11_ce0_local;
assign v508_12_address0 = zext_ln613_fu_768_p1;
assign v508_12_ce0 = v508_12_ce0_local;
assign v508_13_address0 = zext_ln613_fu_768_p1;
assign v508_13_ce0 = v508_13_ce0_local;
assign v508_14_address0 = zext_ln613_reg_1231;
assign v508_14_ce0 = v508_14_ce0_local;
assign v508_15_address0 = zext_ln613_reg_1231;
assign v508_15_ce0 = v508_15_ce0_local;
assign v508_1_address0 = zext_ln613_fu_768_p1;
assign v508_1_ce0 = v508_1_ce0_local;
assign v508_2_address0 = zext_ln613_reg_1231;
assign v508_2_ce0 = v508_2_ce0_local;
assign v508_3_address0 = zext_ln613_reg_1231;
assign v508_3_ce0 = v508_3_ce0_local;
assign v508_4_address0 = zext_ln613_fu_768_p1;
assign v508_4_ce0 = v508_4_ce0_local;
assign v508_5_address0 = zext_ln613_fu_768_p1;
assign v508_5_ce0 = v508_5_ce0_local;
assign v508_6_address0 = zext_ln613_reg_1231;
assign v508_6_ce0 = v508_6_ce0_local;
assign v508_7_address0 = zext_ln613_reg_1231;
assign v508_7_ce0 = v508_7_ce0_local;
assign v508_8_address0 = zext_ln613_fu_768_p1;
assign v508_8_ce0 = v508_8_ce0_local;
assign v508_9_address0 = zext_ln613_fu_768_p1;
assign v508_9_ce0 = v508_9_ce0_local;
assign v508_address0 = zext_ln613_fu_768_p1;
assign v508_ce0 = v508_ce0_local;
assign v509_1_address0 = zext_ln603_1_fu_694_p1;
assign v509_1_ce0 = v509_1_ce0_local;
assign v509_2_address0 = zext_ln603_1_reg_1186;
assign v509_2_ce0 = v509_2_ce0_local;
assign v509_3_address0 = zext_ln603_1_reg_1186;
assign v509_3_ce0 = v509_3_ce0_local;
assign v509_address0 = zext_ln603_1_fu_694_p1;
assign v509_ce0 = v509_ce0_local;
assign v510_1_address0 = zext_ln605_fu_858_p1;
assign v510_1_ce0 = v510_1_ce0_local;
assign v510_2_address0 = zext_ln605_fu_858_p1;
assign v510_2_ce0 = v510_2_ce0_local;
assign v510_3_address0 = zext_ln605_fu_858_p1;
assign v510_3_ce0 = v510_3_ce0_local;
assign v510_address0 = zext_ln605_fu_858_p1;
assign v510_ce0 = v510_ce0_local;
assign v511_1_address0 = zext_ln605_fu_858_p1;
assign v511_1_ce0 = v511_1_ce0_local;
assign v511_2_address0 = zext_ln605_fu_858_p1;
assign v511_2_ce0 = v511_2_ce0_local;
assign v511_3_address0 = zext_ln605_fu_858_p1;
assign v511_3_ce0 = v511_3_ce0_local;
assign v511_address0 = zext_ln605_fu_858_p1;
assign v511_ce0 = v511_ce0_local;
assign v512_1_address0 = v512_1_addr_reg_1476_pp0_iter5_reg;
assign v512_1_address1 = zext_ln605_fu_858_p1;
assign v512_1_ce0 = v512_1_ce0_local;
assign v512_1_ce1 = v512_1_ce1_local;
assign v512_1_d0 = select_ln781_fu_1043_p3;
assign v512_1_we0 = v512_1_we0_local;
assign v512_2_address0 = v512_2_addr_reg_1460_pp0_iter5_reg;
assign v512_2_address1 = zext_ln605_fu_858_p1;
assign v512_2_ce0 = v512_2_ce0_local;
assign v512_2_ce1 = v512_2_ce1_local;
assign v512_2_d0 = select_ln769_fu_1016_p3;
assign v512_2_we0 = v512_2_we0_local;
assign v512_3_address0 = v512_3_addr_reg_1444_pp0_iter5_reg;
assign v512_3_address1 = zext_ln605_fu_858_p1;
assign v512_3_ce0 = v512_3_ce0_local;
assign v512_3_ce1 = v512_3_ce1_local;
assign v512_3_d0 = select_ln757_fu_989_p3;
assign v512_3_we0 = v512_3_we0_local;
assign v512_address0 = v512_addr_reg_1492_pp0_iter5_reg;
assign v512_address1 = zext_ln605_fu_858_p1;
assign v512_ce0 = v512_ce0_local;
assign v512_ce1 = v512_ce1_local;
assign v512_d0 = select_ln793_fu_1070_p3;
assign v512_we0 = v512_we0_local;
assign xor_ln605_fu_794_p2 = (tmp_46_fu_786_p3 ^ 1'd1);
assign zext_ln603_1_fu_694_p1 = lshr_ln_fu_684_p4;
assign zext_ln603_fu_680_p1 = v261_fu_672_p3;
assign zext_ln605_fu_858_p1 = lshr_ln6_reg_1226_pp0_iter3_reg;
assign zext_ln613_fu_768_p1 = add_ln613_fu_762_p2;
assign zext_ln755_fu_985_p1 = v411_1_fu_977_p3;
assign zext_ln767_fu_1012_p1 = v422_1_fu_1004_p3;
assign zext_ln779_fu_1039_p1 = v433_1_fu_1031_p3;
assign zext_ln791_fu_1066_p1 = v444_1_fu_1058_p3;
always @ (posedge ap_clk) begin
    zext_ln603_1_reg_1186[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln613_reg_1231[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
