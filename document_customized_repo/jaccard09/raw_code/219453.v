module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,tmp_1,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v0_2_address0,v0_2_ce0,v0_2_q0,v0_2_address1,v0_2_ce1,v0_2_q1,v0_3_address0,v0_3_ce0,v0_3_q0,v0_3_address1,v0_3_ce1,v0_3_q1,v0_4_address0,v0_4_ce0,v0_4_q0,v0_4_address1,v0_4_ce1,v0_4_q1,v0_5_address0,v0_5_ce0,v0_5_q0,v0_5_address1,v0_5_ce1,v0_5_q1,v0_6_address0,v0_6_ce0,v0_6_q0,v0_6_address1,v0_6_ce1,v0_6_q1,v0_7_address0,v0_7_ce0,v0_7_q0,v0_7_address1,v0_7_ce1,v0_7_q1,v22,v5,grp_fu_1385_p_din0,grp_fu_1385_p_din1,grp_fu_1385_p_dout0,grp_fu_1385_p_ce,grp_fu_1389_p_din0,grp_fu_1389_p_din1,grp_fu_1389_p_dout0,grp_fu_1389_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [7:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [22:0] tmp_1;
output  [19:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [19:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [19:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [19:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
output  [19:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [19:0] v0_2_address1;
output   v0_2_ce1;
input  [31:0] v0_2_q1;
output  [19:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [19:0] v0_3_address1;
output   v0_3_ce1;
input  [31:0] v0_3_q1;
output  [19:0] v0_4_address0;
output   v0_4_ce0;
input  [31:0] v0_4_q0;
output  [19:0] v0_4_address1;
output   v0_4_ce1;
input  [31:0] v0_4_q1;
output  [19:0] v0_5_address0;
output   v0_5_ce0;
input  [31:0] v0_5_q0;
output  [19:0] v0_5_address1;
output   v0_5_ce1;
input  [31:0] v0_5_q1;
output  [19:0] v0_6_address0;
output   v0_6_ce0;
input  [31:0] v0_6_q0;
output  [19:0] v0_6_address1;
output   v0_6_ce1;
input  [31:0] v0_6_q1;
output  [19:0] v0_7_address0;
output   v0_7_ce0;
input  [31:0] v0_7_q0;
output  [19:0] v0_7_address1;
output   v0_7_ce1;
input  [31:0] v0_7_q1;
input  [31:0] v22;
input  [12:0] v5;
output  [31:0] grp_fu_1385_p_din0;
output  [31:0] grp_fu_1385_p_din1;
input  [31:0] grp_fu_1385_p_dout0;
output   grp_fu_1385_p_ce;
output  [31:0] grp_fu_1389_p_din0;
output  [31:0] grp_fu_1389_p_din1;
input  [31:0] grp_fu_1389_p_dout0;
output   grp_fu_1389_p_ce;
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
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_1056;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_556;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_562;
reg   [10:0] v19_3_reg_1050;
wire   [7:0] lshr_ln_fu_584_p4;
reg   [7:0] lshr_ln_reg_1060;
reg   [7:0] lshr_ln_reg_1060_pp0_iter1_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter2_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter3_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter4_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter5_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter6_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter7_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter8_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter9_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter10_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter11_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter12_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter13_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter14_reg;
reg   [7:0] lshr_ln_reg_1060_pp0_iter15_reg;
wire   [22:0] add_ln51_1_fu_604_p4;
reg   [22:0] add_ln51_1_reg_1066;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter1_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter2_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter3_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter4_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter5_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter6_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter7_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter8_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter9_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter10_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter11_reg;
reg   [22:0] add_ln51_1_reg_1066_pp0_iter12_reg;
wire   [22:0] add_ln51_2_fu_620_p4;
reg   [22:0] add_ln51_2_reg_1072;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter1_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter2_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter3_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter4_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter5_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter6_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter7_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter8_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter9_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter10_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter11_reg;
reg   [22:0] add_ln51_2_reg_1072_pp0_iter12_reg;
wire   [22:0] add_ln51_fu_639_p2;
reg   [22:0] add_ln51_reg_1078;
reg   [22:0] add_ln51_reg_1078_pp0_iter1_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter2_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter3_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter4_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter5_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter6_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter7_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter8_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter9_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter10_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter11_reg;
reg   [22:0] add_ln51_reg_1078_pp0_iter12_reg;
wire   [22:0] add_ln51_3_fu_650_p4;
reg   [22:0] add_ln51_3_reg_1084;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter1_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter2_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter3_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter4_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter5_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter6_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter7_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter8_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter9_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter10_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter11_reg;
reg   [22:0] add_ln51_3_reg_1084_pp0_iter12_reg;
reg   [2:0] trunc_ln51_1_reg_1090;
reg   [2:0] trunc_ln51_2_reg_1135;
reg   [2:0] trunc_ln51_3_reg_1180;
reg   [2:0] trunc_ln2_reg_1185;
wire   [31:0] v23_1_fu_758_p19;
reg   [31:0] v23_1_reg_1230;
wire   [31:0] v23_2_fu_829_p19;
reg   [31:0] v23_2_reg_1235;
wire   [31:0] v23_fu_912_p19;
reg   [31:0] v23_reg_1280;
wire   [31:0] v23_3_fu_983_p19;
reg   [31:0] v23_3_reg_1285;
wire   [63:0] zext_ln48_fu_1022_p1;
reg   [63:0] zext_ln48_reg_1290;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_1_fu_678_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_2_fu_690_p1;
wire   [63:0] zext_ln51_fu_710_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_3_fu_868_p1;
reg   [10:0] v19_fu_116;
wire   [10:0] add_ln47_fu_664_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_3;
reg    v0_0_ce1_local;
reg   [19:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [19:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [19:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [19:0] v0_1_address0_local;
reg    v0_2_ce1_local;
reg   [19:0] v0_2_address1_local;
reg    v0_2_ce0_local;
reg   [19:0] v0_2_address0_local;
reg    v0_3_ce1_local;
reg   [19:0] v0_3_address1_local;
reg    v0_3_ce0_local;
reg   [19:0] v0_3_address0_local;
reg    v0_4_ce1_local;
reg   [19:0] v0_4_address1_local;
reg    v0_4_ce0_local;
reg   [19:0] v0_4_address0_local;
reg    v0_5_ce1_local;
reg   [19:0] v0_5_address1_local;
reg    v0_5_ce0_local;
reg   [19:0] v0_5_address0_local;
reg    v0_6_ce1_local;
reg   [19:0] v0_6_address1_local;
reg    v0_6_ce0_local;
reg   [19:0] v0_6_address0_local;
reg    v0_7_ce1_local;
reg   [19:0] v0_7_address1_local;
reg    v0_7_ce0_local;
reg   [19:0] v0_7_address0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg   [31:0] grp_fu_518_p1;
reg   [31:0] grp_fu_522_p1;
reg   [22:0] grp_fu_526_p0;
wire   [46:0] zext_ln51_19_fu_674_p1;
wire   [46:0] zext_ln51_20_fu_702_p1;
wire   [24:0] grp_fu_526_p1;
reg   [22:0] grp_fu_531_p0;
wire   [46:0] zext_ln51_21_fu_706_p1;
wire   [46:0] zext_ln51_18_fu_722_p1;
wire   [24:0] grp_fu_531_p1;
wire   [46:0] grp_fu_526_p2;
wire   [46:0] grp_fu_531_p2;
wire   [8:0] tmp_s_fu_594_p4;
wire   [22:0] grp_fu_614_p0;
wire   [20:0] grp_fu_614_p1;
wire   [22:0] grp_fu_630_p0;
wire   [20:0] grp_fu_630_p1;
wire   [22:0] zext_ln47_fu_636_p1;
wire   [22:0] grp_fu_644_p0;
wire   [20:0] grp_fu_644_p1;
wire   [22:0] grp_fu_658_p0;
wire   [20:0] grp_fu_658_p1;
wire   [22:0] grp_fu_614_p2;
wire   [22:0] grp_fu_630_p2;
wire   [22:0] grp_fu_644_p2;
wire   [31:0] v23_1_fu_758_p2;
wire   [31:0] v23_1_fu_758_p4;
wire   [31:0] v23_1_fu_758_p6;
wire   [31:0] v23_1_fu_758_p8;
wire   [31:0] v23_1_fu_758_p10;
wire   [31:0] v23_1_fu_758_p12;
wire   [31:0] v23_1_fu_758_p14;
wire   [31:0] v23_1_fu_758_p16;
wire   [31:0] v23_1_fu_758_p17;
wire   [31:0] v23_2_fu_829_p2;
wire   [31:0] v23_2_fu_829_p4;
wire   [31:0] v23_2_fu_829_p6;
wire   [31:0] v23_2_fu_829_p8;
wire   [31:0] v23_2_fu_829_p10;
wire   [31:0] v23_2_fu_829_p12;
wire   [31:0] v23_2_fu_829_p14;
wire   [31:0] v23_2_fu_829_p16;
wire   [31:0] v23_2_fu_829_p17;
wire   [22:0] grp_fu_658_p2;
wire   [31:0] v23_fu_912_p2;
wire   [31:0] v23_fu_912_p4;
wire   [31:0] v23_fu_912_p6;
wire   [31:0] v23_fu_912_p8;
wire   [31:0] v23_fu_912_p10;
wire   [31:0] v23_fu_912_p12;
wire   [31:0] v23_fu_912_p14;
wire   [31:0] v23_fu_912_p16;
wire   [31:0] v23_fu_912_p17;
wire   [31:0] v23_3_fu_983_p2;
wire   [31:0] v23_3_fu_983_p4;
wire   [31:0] v23_3_fu_983_p6;
wire   [31:0] v23_3_fu_983_p8;
wire   [31:0] v23_3_fu_983_p10;
wire   [31:0] v23_3_fu_983_p12;
wire   [31:0] v23_3_fu_983_p14;
wire   [31:0] v23_3_fu_983_p16;
wire   [31:0] v23_3_fu_983_p17;
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
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v23_1_fu_758_p1;
wire   [2:0] v23_1_fu_758_p3;
wire   [2:0] v23_1_fu_758_p5;
wire   [2:0] v23_1_fu_758_p7;
wire  signed [2:0] v23_1_fu_758_p9;
wire  signed [2:0] v23_1_fu_758_p11;
wire  signed [2:0] v23_1_fu_758_p13;
wire  signed [2:0] v23_1_fu_758_p15;
wire   [2:0] v23_2_fu_829_p1;
wire   [2:0] v23_2_fu_829_p3;
wire   [2:0] v23_2_fu_829_p5;
wire   [2:0] v23_2_fu_829_p7;
wire  signed [2:0] v23_2_fu_829_p9;
wire  signed [2:0] v23_2_fu_829_p11;
wire  signed [2:0] v23_2_fu_829_p13;
wire  signed [2:0] v23_2_fu_829_p15;
wire   [2:0] v23_fu_912_p1;
wire   [2:0] v23_fu_912_p3;
wire   [2:0] v23_fu_912_p5;
wire   [2:0] v23_fu_912_p7;
wire  signed [2:0] v23_fu_912_p9;
wire  signed [2:0] v23_fu_912_p11;
wire  signed [2:0] v23_fu_912_p13;
wire  signed [2:0] v23_fu_912_p15;
wire   [2:0] v23_3_fu_983_p1;
wire   [2:0] v23_3_fu_983_p3;
wire   [2:0] v23_3_fu_983_p5;
wire   [2:0] v23_3_fu_983_p7;
wire  signed [2:0] v23_3_fu_983_p9;
wire  signed [2:0] v23_3_fu_983_p11;
wire  signed [2:0] v23_3_fu_983_p13;
wire  signed [2:0] v23_3_fu_983_p15;
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
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_116 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U40(.din0(grp_fu_526_p0),.din1(grp_fu_526_p1),.dout(grp_fu_526_p2));
SgdLR_sw_mul_23ns_25ns_47_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 23 ),.din1_WIDTH( 25 ),.dout_WIDTH( 47 ))
mul_23ns_25ns_47_1_1_U41(.din0(grp_fu_531_p0),.din1(grp_fu_531_p1),.dout(grp_fu_531_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U42(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_614_p0),.din1(grp_fu_614_p1),.ce(1'b1),.dout(grp_fu_614_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U43(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_630_p0),.din1(grp_fu_630_p1),.ce(1'b1),.dout(grp_fu_630_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U44(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_644_p0),.din1(grp_fu_644_p1),.ce(1'b1),.dout(grp_fu_644_p2));
SgdLR_sw_urem_23ns_21ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 21 ),.dout_WIDTH( 23 ))
urem_23ns_21ns_23_27_1_U45(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_658_p0),.din1(grp_fu_658_p1),.ce(1'b1),.dout(grp_fu_658_p2));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U46(.din0(v23_1_fu_758_p2),.din1(v23_1_fu_758_p4),.din2(v23_1_fu_758_p6),.din3(v23_1_fu_758_p8),.din4(v23_1_fu_758_p10),.din5(v23_1_fu_758_p12),.din6(v23_1_fu_758_p14),.din7(v23_1_fu_758_p16),.def(v23_1_fu_758_p17),.sel(trunc_ln51_1_reg_1090),.dout(v23_1_fu_758_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U47(.din0(v23_2_fu_829_p2),.din1(v23_2_fu_829_p4),.din2(v23_2_fu_829_p6),.din3(v23_2_fu_829_p8),.din4(v23_2_fu_829_p10),.din5(v23_2_fu_829_p12),.din6(v23_2_fu_829_p14),.din7(v23_2_fu_829_p16),.def(v23_2_fu_829_p17),.sel(trunc_ln51_2_reg_1135),.dout(v23_2_fu_829_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U48(.din0(v23_fu_912_p2),.din1(v23_fu_912_p4),.din2(v23_fu_912_p6),.din3(v23_fu_912_p8),.din4(v23_fu_912_p10),.din5(v23_fu_912_p12),.din6(v23_fu_912_p14),.din7(v23_fu_912_p16),.def(v23_fu_912_p17),.sel(trunc_ln2_reg_1185),.dout(v23_fu_912_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U49(.din0(v23_3_fu_983_p2),.din1(v23_3_fu_983_p4),.din2(v23_3_fu_983_p6),.din3(v23_3_fu_983_p8),.din4(v23_3_fu_983_p10),.din5(v23_3_fu_983_p12),.din6(v23_3_fu_983_p14),.din7(v23_3_fu_983_p16),.def(v23_3_fu_983_p17),.sel(trunc_ln51_3_reg_1180),.dout(v23_3_fu_983_p19));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_116 <= 11'd0;
    end else if (((tmp_reg_1056 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_fu_116 <= add_ln47_fu_664_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln51_1_reg_1066[22 : 1] <= add_ln51_1_fu_604_p4[22 : 1];
        add_ln51_1_reg_1066_pp0_iter10_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter9_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter11_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter10_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter12_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter11_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter1_reg[22 : 1] <= add_ln51_1_reg_1066[22 : 1];
        add_ln51_1_reg_1066_pp0_iter2_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter1_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter3_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter2_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter4_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter3_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter5_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter4_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter6_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter5_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter7_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter6_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter8_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter7_reg[22 : 1];
        add_ln51_1_reg_1066_pp0_iter9_reg[22 : 1] <= add_ln51_1_reg_1066_pp0_iter8_reg[22 : 1];
        add_ln51_2_reg_1072[22 : 2] <= add_ln51_2_fu_620_p4[22 : 2];
        add_ln51_2_reg_1072_pp0_iter10_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter9_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter11_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter10_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter12_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter11_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter1_reg[22 : 2] <= add_ln51_2_reg_1072[22 : 2];
        add_ln51_2_reg_1072_pp0_iter2_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter1_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter3_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter2_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter4_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter3_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter5_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter4_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter6_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter5_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter7_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter6_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter8_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter7_reg[22 : 2];
        add_ln51_2_reg_1072_pp0_iter9_reg[22 : 2] <= add_ln51_2_reg_1072_pp0_iter8_reg[22 : 2];
        lshr_ln_reg_1060 <= {{ap_sig_allocacmp_v19_3[9:2]}};
        lshr_ln_reg_1060_pp0_iter10_reg <= lshr_ln_reg_1060_pp0_iter9_reg;
        lshr_ln_reg_1060_pp0_iter11_reg <= lshr_ln_reg_1060_pp0_iter10_reg;
        lshr_ln_reg_1060_pp0_iter12_reg <= lshr_ln_reg_1060_pp0_iter11_reg;
        lshr_ln_reg_1060_pp0_iter13_reg <= lshr_ln_reg_1060_pp0_iter12_reg;
        lshr_ln_reg_1060_pp0_iter14_reg <= lshr_ln_reg_1060_pp0_iter13_reg;
        lshr_ln_reg_1060_pp0_iter15_reg <= lshr_ln_reg_1060_pp0_iter14_reg;
        lshr_ln_reg_1060_pp0_iter1_reg <= lshr_ln_reg_1060;
        lshr_ln_reg_1060_pp0_iter2_reg <= lshr_ln_reg_1060_pp0_iter1_reg;
        lshr_ln_reg_1060_pp0_iter3_reg <= lshr_ln_reg_1060_pp0_iter2_reg;
        lshr_ln_reg_1060_pp0_iter4_reg <= lshr_ln_reg_1060_pp0_iter3_reg;
        lshr_ln_reg_1060_pp0_iter5_reg <= lshr_ln_reg_1060_pp0_iter4_reg;
        lshr_ln_reg_1060_pp0_iter6_reg <= lshr_ln_reg_1060_pp0_iter5_reg;
        lshr_ln_reg_1060_pp0_iter7_reg <= lshr_ln_reg_1060_pp0_iter6_reg;
        lshr_ln_reg_1060_pp0_iter8_reg <= lshr_ln_reg_1060_pp0_iter7_reg;
        lshr_ln_reg_1060_pp0_iter9_reg <= lshr_ln_reg_1060_pp0_iter8_reg;
        tmp_reg_1056 <= ap_sig_allocacmp_v19_3[32'd10];
        v19_3_reg_1050 <= ap_sig_allocacmp_v19_3;
        v23_3_reg_1285 <= v23_3_fu_983_p19;
        v23_reg_1280 <= v23_fu_912_p19;
        zext_ln48_reg_1290[7 : 0] <= zext_ln48_fu_1022_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln51_3_reg_1084[22 : 2] <= add_ln51_3_fu_650_p4[22 : 2];
        add_ln51_3_reg_1084_pp0_iter10_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter9_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter11_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter10_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter12_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter11_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter1_reg[22 : 2] <= add_ln51_3_reg_1084[22 : 2];
        add_ln51_3_reg_1084_pp0_iter2_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter1_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter3_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter2_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter4_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter3_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter5_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter4_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter6_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter5_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter7_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter6_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter8_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter7_reg[22 : 2];
        add_ln51_3_reg_1084_pp0_iter9_reg[22 : 2] <= add_ln51_3_reg_1084_pp0_iter8_reg[22 : 2];
        add_ln51_reg_1078 <= add_ln51_fu_639_p2;
        add_ln51_reg_1078_pp0_iter10_reg <= add_ln51_reg_1078_pp0_iter9_reg;
        add_ln51_reg_1078_pp0_iter11_reg <= add_ln51_reg_1078_pp0_iter10_reg;
        add_ln51_reg_1078_pp0_iter12_reg <= add_ln51_reg_1078_pp0_iter11_reg;
        add_ln51_reg_1078_pp0_iter1_reg <= add_ln51_reg_1078;
        add_ln51_reg_1078_pp0_iter2_reg <= add_ln51_reg_1078_pp0_iter1_reg;
        add_ln51_reg_1078_pp0_iter3_reg <= add_ln51_reg_1078_pp0_iter2_reg;
        add_ln51_reg_1078_pp0_iter4_reg <= add_ln51_reg_1078_pp0_iter3_reg;
        add_ln51_reg_1078_pp0_iter5_reg <= add_ln51_reg_1078_pp0_iter4_reg;
        add_ln51_reg_1078_pp0_iter6_reg <= add_ln51_reg_1078_pp0_iter5_reg;
        add_ln51_reg_1078_pp0_iter7_reg <= add_ln51_reg_1078_pp0_iter6_reg;
        add_ln51_reg_1078_pp0_iter8_reg <= add_ln51_reg_1078_pp0_iter7_reg;
        add_ln51_reg_1078_pp0_iter9_reg <= add_ln51_reg_1078_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        v23_1_reg_1230 <= v23_1_fu_758_p19;
        v23_2_reg_1235 <= v23_2_fu_829_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_556 <= grp_fu_1385_p_dout0;
        reg_562 <= grp_fu_1389_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln2_reg_1185 <= {{grp_fu_531_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln51_1_reg_1090 <= {{grp_fu_526_p2[45:43]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln51_2_reg_1135 <= {{grp_fu_526_p2[45:43]}};
        trunc_ln51_3_reg_1180 <= {{grp_fu_531_p2[45:43]}};
    end
end
always @ (*) begin
    if (((tmp_reg_1056 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter15_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to16 = 1'b1;
    end else begin
        ap_idle_pp0_1to16 = 1'b0;
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
        ap_sig_allocacmp_v19_3 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_3 = v19_fu_116;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_518_p1 = v23_reg_1280;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_518_p1 = v23_1_reg_1230;
        end else begin
            grp_fu_518_p1 = 'bx;
        end
    end else begin
        grp_fu_518_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter14 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_522_p1 = v23_3_reg_1285;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_522_p1 = v23_2_reg_1235;
        end else begin
            grp_fu_522_p1 = 'bx;
        end
    end else begin
        grp_fu_522_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_526_p0 = zext_ln51_20_fu_702_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_526_p0 = zext_ln51_19_fu_674_p1;
    end else begin
        grp_fu_526_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_531_p0 = zext_ln51_18_fu_722_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_531_p0 = zext_ln51_21_fu_706_p1;
        end else begin
            grp_fu_531_p0 = 'bx;
        end
    end else begin
        grp_fu_531_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address0_local = zext_ln51_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address0_local = zext_ln51_2_fu_690_p1;
        end else begin
            v0_0_address0_local = 'bx;
        end
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_0_address1_local = zext_ln51_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_0_address1_local = zext_ln51_1_fu_678_p1;
        end else begin
            v0_0_address1_local = 'bx;
        end
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address0_local = zext_ln51_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address0_local = zext_ln51_2_fu_690_p1;
        end else begin
            v0_1_address0_local = 'bx;
        end
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_1_address1_local = zext_ln51_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_1_address1_local = zext_ln51_1_fu_678_p1;
        end else begin
            v0_1_address1_local = 'bx;
        end
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address0_local = zext_ln51_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address0_local = zext_ln51_2_fu_690_p1;
        end else begin
            v0_2_address0_local = 'bx;
        end
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_2_address1_local = zext_ln51_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_2_address1_local = zext_ln51_1_fu_678_p1;
        end else begin
            v0_2_address1_local = 'bx;
        end
    end else begin
        v0_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_2_ce1_local = 1'b1;
    end else begin
        v0_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address0_local = zext_ln51_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address0_local = zext_ln51_2_fu_690_p1;
        end else begin
            v0_3_address0_local = 'bx;
        end
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_3_address1_local = zext_ln51_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_3_address1_local = zext_ln51_1_fu_678_p1;
        end else begin
            v0_3_address1_local = 'bx;
        end
    end else begin
        v0_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_3_ce1_local = 1'b1;
    end else begin
        v0_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_4_address0_local = zext_ln51_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_4_address0_local = zext_ln51_2_fu_690_p1;
        end else begin
            v0_4_address0_local = 'bx;
        end
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_4_address1_local = zext_ln51_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_4_address1_local = zext_ln51_1_fu_678_p1;
        end else begin
            v0_4_address1_local = 'bx;
        end
    end else begin
        v0_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_4_ce1_local = 1'b1;
    end else begin
        v0_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_5_address0_local = zext_ln51_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_5_address0_local = zext_ln51_2_fu_690_p1;
        end else begin
            v0_5_address0_local = 'bx;
        end
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_5_address1_local = zext_ln51_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_5_address1_local = zext_ln51_1_fu_678_p1;
        end else begin
            v0_5_address1_local = 'bx;
        end
    end else begin
        v0_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_5_ce1_local = 1'b1;
    end else begin
        v0_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_6_address0_local = zext_ln51_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_6_address0_local = zext_ln51_2_fu_690_p1;
        end else begin
            v0_6_address0_local = 'bx;
        end
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_6_address1_local = zext_ln51_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_6_address1_local = zext_ln51_1_fu_678_p1;
        end else begin
            v0_6_address1_local = 'bx;
        end
    end else begin
        v0_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_6_ce1_local = 1'b1;
    end else begin
        v0_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_7_address0_local = zext_ln51_3_fu_868_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_7_address0_local = zext_ln51_2_fu_690_p1;
        end else begin
            v0_7_address0_local = 'bx;
        end
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter13 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v0_7_address1_local = zext_ln51_fu_710_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v0_7_address1_local = zext_ln51_1_fu_678_p1;
        end else begin
            v0_7_address1_local = 'bx;
        end
    end else begin
        v0_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v0_7_ce1_local = 1'b1;
    end else begin
        v0_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to16 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln47_fu_664_p2 = (v19_3_reg_1050 + 11'd4);
assign add_ln51_1_fu_604_p4 = {{{v5}, {tmp_s_fu_594_p4}}, {1'd1}};
assign add_ln51_2_fu_620_p4 = {{{v5}, {lshr_ln_fu_584_p4}}, {2'd2}};
assign add_ln51_3_fu_650_p4 = {{{v5}, {lshr_ln_reg_1060}}, {2'd3}};
assign add_ln51_fu_639_p2 = (zext_ln47_fu_636_p1 + tmp_1);
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
assign grp_fu_1385_p_ce = 1'b1;
assign grp_fu_1385_p_din0 = v22;
assign grp_fu_1385_p_din1 = grp_fu_518_p1;
assign grp_fu_1389_p_ce = 1'b1;
assign grp_fu_1389_p_din0 = v22;
assign grp_fu_1389_p_din1 = grp_fu_522_p1;
assign grp_fu_526_p1 = 47'd15270995;
assign grp_fu_531_p1 = 47'd15270995;
assign grp_fu_614_p0 = {{{v5}, {tmp_s_fu_594_p4}}, {1'd1}};
assign grp_fu_614_p1 = 23'd576000;
assign grp_fu_630_p0 = {{{v5}, {lshr_ln_fu_584_p4}}, {2'd2}};
assign grp_fu_630_p1 = 23'd576000;
assign grp_fu_644_p0 = (zext_ln47_fu_636_p1 + tmp_1);
assign grp_fu_644_p1 = 23'd576000;
assign grp_fu_658_p0 = {{{v5}, {lshr_ln_reg_1060}}, {2'd3}};
assign grp_fu_658_p1 = 23'd576000;
assign lshr_ln_fu_584_p4 = {{ap_sig_allocacmp_v19_3[9:2]}};
assign tmp_s_fu_594_p4 = {{ap_sig_allocacmp_v19_3[9:1]}};
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_address1 = v0_2_address1_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_ce1 = v0_2_ce1_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_address1 = v0_3_address1_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_ce1 = v0_3_ce1_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_address1 = v0_4_address1_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_ce1 = v0_4_ce1_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_address1 = v0_5_address1_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_ce1 = v0_5_ce1_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_address1 = v0_6_address1_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_ce1 = v0_6_ce1_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_address1 = v0_7_address1_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_ce1 = v0_7_ce1_local;
assign v23_1_fu_758_p10 = v0_4_q1;
assign v23_1_fu_758_p12 = v0_5_q1;
assign v23_1_fu_758_p14 = v0_6_q1;
assign v23_1_fu_758_p16 = v0_7_q1;
assign v23_1_fu_758_p17 = 'bx;
assign v23_1_fu_758_p2 = v0_0_q1;
assign v23_1_fu_758_p4 = v0_1_q1;
assign v23_1_fu_758_p6 = v0_2_q1;
assign v23_1_fu_758_p8 = v0_3_q1;
assign v23_2_fu_829_p10 = v0_4_q0;
assign v23_2_fu_829_p12 = v0_5_q0;
assign v23_2_fu_829_p14 = v0_6_q0;
assign v23_2_fu_829_p16 = v0_7_q0;
assign v23_2_fu_829_p17 = 'bx;
assign v23_2_fu_829_p2 = v0_0_q0;
assign v23_2_fu_829_p4 = v0_1_q0;
assign v23_2_fu_829_p6 = v0_2_q0;
assign v23_2_fu_829_p8 = v0_3_q0;
assign v23_3_fu_983_p10 = v0_4_q0;
assign v23_3_fu_983_p12 = v0_5_q0;
assign v23_3_fu_983_p14 = v0_6_q0;
assign v23_3_fu_983_p16 = v0_7_q0;
assign v23_3_fu_983_p17 = 'bx;
assign v23_3_fu_983_p2 = v0_0_q0;
assign v23_3_fu_983_p4 = v0_1_q0;
assign v23_3_fu_983_p6 = v0_2_q0;
assign v23_3_fu_983_p8 = v0_3_q0;
assign v23_fu_912_p10 = v0_4_q1;
assign v23_fu_912_p12 = v0_5_q1;
assign v23_fu_912_p14 = v0_6_q1;
assign v23_fu_912_p16 = v0_7_q1;
assign v23_fu_912_p17 = 'bx;
assign v23_fu_912_p2 = v0_0_q1;
assign v23_fu_912_p4 = v0_1_q1;
assign v23_fu_912_p6 = v0_2_q1;
assign v23_fu_912_p8 = v0_3_q1;
assign v3_1_address0 = zext_ln48_fu_1022_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = reg_556;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_fu_1022_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = reg_562;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = zext_ln48_reg_1290;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = reg_562;
assign v3_3_we0 = v3_3_we0_local;
assign v3_address0 = zext_ln48_reg_1290;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = reg_556;
assign v3_we0 = v3_we0_local;
assign zext_ln47_fu_636_p1 = v19_3_reg_1050;
assign zext_ln48_fu_1022_p1 = lshr_ln_reg_1060_pp0_iter15_reg;
assign zext_ln51_18_fu_722_p1 = add_ln51_reg_1078_pp0_iter12_reg;
assign zext_ln51_19_fu_674_p1 = add_ln51_1_reg_1066_pp0_iter12_reg;
assign zext_ln51_1_fu_678_p1 = grp_fu_614_p2;
assign zext_ln51_20_fu_702_p1 = add_ln51_2_reg_1072_pp0_iter12_reg;
assign zext_ln51_21_fu_706_p1 = add_ln51_3_reg_1084_pp0_iter12_reg;
assign zext_ln51_2_fu_690_p1 = grp_fu_630_p2;
assign zext_ln51_3_fu_868_p1 = grp_fu_658_p2;
assign zext_ln51_fu_710_p1 = grp_fu_644_p2;
always @ (posedge ap_clk) begin
    add_ln51_1_reg_1066[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter1_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter2_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter3_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter4_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter5_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter6_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter7_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter8_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter9_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter10_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter11_reg[0] <= 1'b1;
    add_ln51_1_reg_1066_pp0_iter12_reg[0] <= 1'b1;
    add_ln51_2_reg_1072[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter1_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter2_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter3_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter4_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter5_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter6_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter7_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter8_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter9_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter10_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter11_reg[1:0] <= 2'b10;
    add_ln51_2_reg_1072_pp0_iter12_reg[1:0] <= 2'b10;
    add_ln51_3_reg_1084[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter1_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter2_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter3_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter4_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter5_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter6_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter7_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter8_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter9_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter10_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter11_reg[1:0] <= 2'b11;
    add_ln51_3_reg_1084_pp0_iter12_reg[1:0] <= 2'b11;
    zext_ln48_reg_1290[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 