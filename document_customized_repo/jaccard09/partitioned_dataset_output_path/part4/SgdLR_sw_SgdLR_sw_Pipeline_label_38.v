
module SgdLR_sw_SgdLR_sw_Pipeline_label_38 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,tmp_106,v0_0_address0,v0_0_ce0,v0_0_q0,v0_0_address1,v0_0_ce1,v0_0_q1,v0_1_address0,v0_1_ce0,v0_1_q0,v0_1_address1,v0_1_ce1,v0_1_q1,v22_3,tmp_70,grp_fu_902_p_din0,grp_fu_902_p_din1,grp_fu_902_p_dout0,grp_fu_902_p_ce,grp_fu_906_p_din0,grp_fu_906_p_din1,grp_fu_906_p_dout0,grp_fu_906_p_ce);  
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
output  [9:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [9:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [22:0] tmp_106;
output  [21:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [21:0] v0_0_address1;
output   v0_0_ce1;
input  [31:0] v0_0_q1;
output  [21:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [21:0] v0_1_address1;
output   v0_1_ce1;
input  [31:0] v0_1_q1;
input  [31:0] v22_3;
input  [10:0] tmp_70;
output  [31:0] grp_fu_902_p_din0;
output  [31:0] grp_fu_902_p_din1;
input  [31:0] grp_fu_902_p_dout0;
output   grp_fu_902_p_ce;
output  [31:0] grp_fu_906_p_din0;
output  [31:0] grp_fu_906_p_din1;
input  [31:0] grp_fu_906_p_dout0;
output   grp_fu_906_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] tmp_reg_943;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_345;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_350;
reg   [10:0] v19_1_reg_934;
reg   [10:0] v19_1_reg_934_pp0_iter1_reg;
reg   [10:0] v19_1_reg_934_pp0_iter2_reg;
reg   [10:0] v19_1_reg_934_pp0_iter3_reg;
reg   [10:0] v19_1_reg_934_pp0_iter4_reg;
reg   [10:0] v19_1_reg_934_pp0_iter5_reg;
reg   [10:0] v19_1_reg_934_pp0_iter6_reg;
reg   [10:0] v19_1_reg_934_pp0_iter7_reg;
reg   [10:0] v19_1_reg_934_pp0_iter8_reg;
wire   [0:0] tmp_fu_363_p3;
wire   [8:0] tmp_s_fu_371_p4;
reg   [8:0] tmp_s_reg_947;
reg   [8:0] tmp_s_reg_947_pp0_iter1_reg;
reg   [8:0] tmp_s_reg_947_pp0_iter2_reg;
reg   [8:0] tmp_s_reg_947_pp0_iter3_reg;
reg   [8:0] tmp_s_reg_947_pp0_iter4_reg;
reg   [8:0] tmp_s_reg_947_pp0_iter5_reg;
reg   [8:0] tmp_s_reg_947_pp0_iter6_reg;
reg   [8:0] tmp_s_reg_947_pp0_iter7_reg;
wire   [22:0] add_ln51_s_fu_381_p5;
wire   [0:0] icmp_ln51_1_fu_409_p2;
reg   [0:0] icmp_ln51_1_reg_957;
reg   [0:0] icmp_ln51_1_reg_957_pp0_iter1_reg;
reg   [0:0] icmp_ln51_1_reg_957_pp0_iter2_reg;
reg   [0:0] icmp_ln51_1_reg_957_pp0_iter3_reg;
reg   [0:0] icmp_ln51_1_reg_957_pp0_iter4_reg;
reg   [0:0] icmp_ln51_1_reg_957_pp0_iter5_reg;
reg   [0:0] icmp_ln51_1_reg_957_pp0_iter6_reg;
wire   [7:0] tmp_1_fu_415_p4;
reg   [7:0] tmp_1_reg_962;
reg   [7:0] tmp_1_reg_962_pp0_iter1_reg;
reg   [7:0] tmp_1_reg_962_pp0_iter2_reg;
reg   [7:0] tmp_1_reg_962_pp0_iter3_reg;
reg   [7:0] tmp_1_reg_962_pp0_iter4_reg;
reg   [7:0] tmp_1_reg_962_pp0_iter5_reg;
reg   [7:0] tmp_1_reg_962_pp0_iter6_reg;
reg   [7:0] tmp_1_reg_962_pp0_iter7_reg;
reg   [7:0] tmp_1_reg_962_pp0_iter8_reg;
wire   [22:0] add_ln51_3_fu_425_p5;
wire   [0:0] icmp_ln51_2_fu_453_p2;
reg   [0:0] icmp_ln51_2_reg_974;
reg   [0:0] icmp_ln51_2_reg_974_pp0_iter1_reg;
reg   [0:0] icmp_ln51_2_reg_974_pp0_iter2_reg;
reg   [0:0] icmp_ln51_2_reg_974_pp0_iter3_reg;
reg   [0:0] icmp_ln51_2_reg_974_pp0_iter4_reg;
reg   [0:0] icmp_ln51_2_reg_974_pp0_iter5_reg;
reg   [0:0] icmp_ln51_2_reg_974_pp0_iter6_reg;
wire   [22:0] add_ln51_5_fu_459_p5;
wire   [0:0] icmp_ln51_3_fu_485_p2;
reg   [0:0] icmp_ln51_3_reg_984;
reg   [0:0] icmp_ln51_3_reg_984_pp0_iter1_reg;
reg   [0:0] icmp_ln51_3_reg_984_pp0_iter2_reg;
reg   [0:0] icmp_ln51_3_reg_984_pp0_iter3_reg;
reg   [0:0] icmp_ln51_3_reg_984_pp0_iter4_reg;
reg   [0:0] icmp_ln51_3_reg_984_pp0_iter5_reg;
reg   [0:0] icmp_ln51_3_reg_984_pp0_iter6_reg;
wire   [6:0] tmp_2_fu_491_p4;
reg   [6:0] tmp_2_reg_989;
reg   [6:0] tmp_2_reg_989_pp0_iter1_reg;
reg   [6:0] tmp_2_reg_989_pp0_iter2_reg;
reg   [6:0] tmp_2_reg_989_pp0_iter3_reg;
reg   [6:0] tmp_2_reg_989_pp0_iter4_reg;
reg   [6:0] tmp_2_reg_989_pp0_iter5_reg;
reg   [6:0] tmp_2_reg_989_pp0_iter6_reg;
reg   [6:0] tmp_2_reg_989_pp0_iter7_reg;
reg   [6:0] tmp_2_reg_989_pp0_iter8_reg;
wire   [22:0] add_ln51_7_fu_500_p5;
wire   [0:0] icmp_ln51_4_fu_527_p2;
reg   [0:0] icmp_ln51_4_reg_1005;
reg   [0:0] icmp_ln51_4_reg_1005_pp0_iter1_reg;
reg   [0:0] icmp_ln51_4_reg_1005_pp0_iter2_reg;
reg   [0:0] icmp_ln51_4_reg_1005_pp0_iter3_reg;
reg   [0:0] icmp_ln51_4_reg_1005_pp0_iter4_reg;
reg   [0:0] icmp_ln51_4_reg_1005_pp0_iter5_reg;
reg   [0:0] icmp_ln51_4_reg_1005_pp0_iter6_reg;
wire   [0:0] tmp_3_fu_533_p3;
reg   [0:0] tmp_3_reg_1010;
reg   [0:0] tmp_3_reg_1010_pp0_iter1_reg;
reg   [0:0] tmp_3_reg_1010_pp0_iter2_reg;
reg   [0:0] tmp_3_reg_1010_pp0_iter3_reg;
reg   [0:0] tmp_3_reg_1010_pp0_iter4_reg;
reg   [0:0] tmp_3_reg_1010_pp0_iter5_reg;
reg   [0:0] tmp_3_reg_1010_pp0_iter6_reg;
reg   [0:0] tmp_3_reg_1010_pp0_iter7_reg;
wire   [22:0] add_ln51_9_fu_540_p7;
wire   [0:0] icmp_ln51_5_fu_570_p2;
reg   [0:0] icmp_ln51_5_reg_1020;
reg   [0:0] icmp_ln51_5_reg_1020_pp0_iter1_reg;
reg   [0:0] icmp_ln51_5_reg_1020_pp0_iter2_reg;
reg   [0:0] icmp_ln51_5_reg_1020_pp0_iter3_reg;
reg   [0:0] icmp_ln51_5_reg_1020_pp0_iter4_reg;
reg   [0:0] icmp_ln51_5_reg_1020_pp0_iter5_reg;
reg   [0:0] icmp_ln51_5_reg_1020_pp0_iter6_reg;
wire   [22:0] add_ln51_11_fu_576_p5;
wire   [0:0] icmp_ln51_6_fu_602_p2;
reg   [0:0] icmp_ln51_6_reg_1030;
reg   [0:0] icmp_ln51_6_reg_1030_pp0_iter1_reg;
reg   [0:0] icmp_ln51_6_reg_1030_pp0_iter2_reg;
reg   [0:0] icmp_ln51_6_reg_1030_pp0_iter3_reg;
reg   [0:0] icmp_ln51_6_reg_1030_pp0_iter4_reg;
reg   [0:0] icmp_ln51_6_reg_1030_pp0_iter5_reg;
reg   [0:0] icmp_ln51_6_reg_1030_pp0_iter6_reg;
wire   [22:0] add_ln51_fu_611_p2;
wire   [0:0] icmp_ln51_fu_632_p2;
reg   [0:0] icmp_ln51_reg_1040;
reg   [0:0] icmp_ln51_reg_1040_pp0_iter1_reg;
reg   [0:0] icmp_ln51_reg_1040_pp0_iter2_reg;
reg   [0:0] icmp_ln51_reg_1040_pp0_iter3_reg;
reg   [0:0] icmp_ln51_reg_1040_pp0_iter4_reg;
reg   [0:0] icmp_ln51_reg_1040_pp0_iter5_reg;
reg   [0:0] icmp_ln51_reg_1040_pp0_iter6_reg;
wire   [22:0] add_ln51_13_fu_638_p5;
wire   [0:0] icmp_ln51_7_fu_664_p2;
reg   [0:0] icmp_ln51_7_reg_1050;
reg   [0:0] icmp_ln51_7_reg_1050_pp0_iter1_reg;
reg   [0:0] icmp_ln51_7_reg_1050_pp0_iter2_reg;
reg   [0:0] icmp_ln51_7_reg_1050_pp0_iter3_reg;
reg   [0:0] icmp_ln51_7_reg_1050_pp0_iter4_reg;
reg   [0:0] icmp_ln51_7_reg_1050_pp0_iter5_reg;
reg   [0:0] icmp_ln51_7_reg_1050_pp0_iter6_reg;
wire   [31:0] select_ln51_1_fu_692_p3;
reg   [31:0] select_ln51_1_reg_1075;
wire   [31:0] select_ln51_2_fu_699_p3;
reg   [31:0] select_ln51_2_reg_1080;
wire   [31:0] v23_1_fu_718_p1;
wire   [31:0] v23_2_fu_722_p1;
wire   [31:0] select_ln51_3_fu_726_p3;
reg   [31:0] select_ln51_3_reg_1115;
wire   [31:0] select_ln51_4_fu_733_p3;
reg   [31:0] select_ln51_4_reg_1120;
wire   [31:0] v23_3_fu_758_p1;
wire   [31:0] v23_4_fu_762_p1;
wire   [31:0] select_ln51_5_fu_766_p3;
reg   [31:0] select_ln51_5_reg_1165;
wire   [31:0] select_ln51_6_fu_773_p3;
reg   [31:0] select_ln51_6_reg_1170;
wire   [31:0] select_ln51_fu_786_p3;
reg   [31:0] select_ln51_reg_1185;
wire   [31:0] v23_5_fu_793_p1;
wire   [31:0] v23_6_fu_797_p1;
wire   [31:0] select_ln51_7_fu_801_p3;
reg   [31:0] select_ln51_7_reg_1200;
wire   [31:0] v23_fu_808_p1;
wire   [31:0] v23_7_fu_812_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln51_4_fu_680_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln51_7_fu_686_p1;
wire   [63:0] zext_ln51_10_fu_706_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln51_13_fu_712_p1;
wire   [63:0] zext_ln51_16_fu_740_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_19_fu_746_p1;
wire   [63:0] zext_ln51_1_fu_752_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln51_22_fu_780_p1;
wire   [63:0] zext_ln51_2_fu_823_p1;
wire   [63:0] zext_ln51_5_fu_835_p1;
wire   [63:0] zext_ln51_8_fu_847_p1;
wire   [63:0] zext_ln51_11_fu_859_p1;
wire   [63:0] zext_ln51_14_fu_874_p1;
wire   [63:0] zext_ln51_17_fu_886_p1;
wire   [63:0] zext_ln47_fu_891_p1;
wire   [63:0] zext_ln51_20_fu_902_p1;
reg   [10:0] v19_fu_96;
wire   [10:0] add_ln47_fu_670_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
reg    v0_0_ce1_local;
reg   [21:0] v0_0_address1_local;
reg    v0_0_ce0_local;
reg   [21:0] v0_0_address0_local;
reg    v0_1_ce1_local;
reg   [21:0] v0_1_address1_local;
reg    v0_1_ce0_local;
reg   [21:0] v0_1_address0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg   [9:0] v3_address1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg   [9:0] v3_address0_local;
reg   [31:0] grp_fu_337_p1;
reg   [31:0] grp_fu_341_p1;
wire   [23:0] zext_ln51_3_fu_393_p1;
wire   [23:0] add_ln51_2_fu_403_p2;
wire   [23:0] zext_ln51_6_fu_437_p1;
wire   [23:0] add_ln51_4_fu_447_p2;
wire   [23:0] zext_ln51_9_fu_469_p1;
wire   [23:0] add_ln51_6_fu_479_p2;
wire   [23:0] zext_ln51_12_fu_511_p1;
wire   [23:0] add_ln51_8_fu_521_p2;
wire   [23:0] zext_ln51_15_fu_554_p1;
wire   [23:0] add_ln51_10_fu_564_p2;
wire   [23:0] zext_ln51_18_fu_586_p1;
wire   [23:0] add_ln51_12_fu_596_p2;
wire   [22:0] zext_ln47_1_fu_608_p1;
wire   [23:0] zext_ln51_fu_616_p1;
wire   [23:0] add_ln51_1_fu_626_p2;
wire   [23:0] zext_ln51_21_fu_648_p1;
wire   [23:0] add_ln51_14_fu_658_p2;
wire   [22:0] grp_fu_397_p2;
wire   [22:0] grp_fu_441_p2;
wire   [22:0] grp_fu_473_p2;
wire   [22:0] grp_fu_515_p2;
wire   [22:0] grp_fu_558_p2;
wire   [22:0] grp_fu_590_p2;
wire   [22:0] grp_fu_620_p2;
wire   [22:0] grp_fu_652_p2;
wire   [9:0] or_ln47_s_fu_816_p3;
wire   [9:0] or_ln47_1_fu_828_p3;
wire   [9:0] or_ln47_2_fu_840_p3;
wire   [9:0] or_ln47_3_fu_852_p3;
wire   [9:0] or_ln47_4_fu_864_p5;
wire   [9:0] or_ln47_5_fu_879_p3;
wire   [9:0] or_ln47_6_fu_895_p3;
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
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to8;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v19_fu_96 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U209(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_s_fu_381_p5),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_397_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U210(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_3_fu_425_p5),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_441_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U211(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_5_fu_459_p5),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_473_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U212(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_7_fu_500_p5),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_515_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U213(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_9_fu_540_p7),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_558_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U214(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_11_fu_576_p5),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_590_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U215(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_fu_611_p2),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_620_p2));
SgdLR_sw_urem_23ns_23ns_23_27_1 #(.ID( 1 ),.NUM_STAGE( 27 ),.din0_WIDTH( 23 ),.din1_WIDTH( 23 ),.dout_WIDTH( 23 ))
urem_23ns_23ns_23_27_1_U216(.clk(ap_clk),.reset(ap_rst),.din0(add_ln51_13_fu_638_p5),.din1(23'd2304000),.ce(1'b1),.dout(grp_fu_652_p2));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_fu_96 <= 11'd0;
    end else if (((tmp_reg_943 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_fu_96 <= add_ln47_fu_670_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        icmp_ln51_7_reg_1050 <= icmp_ln51_7_fu_664_p2;
        icmp_ln51_7_reg_1050_pp0_iter1_reg <= icmp_ln51_7_reg_1050;
        icmp_ln51_7_reg_1050_pp0_iter2_reg <= icmp_ln51_7_reg_1050_pp0_iter1_reg;
        icmp_ln51_7_reg_1050_pp0_iter3_reg <= icmp_ln51_7_reg_1050_pp0_iter2_reg;
        icmp_ln51_7_reg_1050_pp0_iter4_reg <= icmp_ln51_7_reg_1050_pp0_iter3_reg;
        icmp_ln51_7_reg_1050_pp0_iter5_reg <= icmp_ln51_7_reg_1050_pp0_iter4_reg;
        icmp_ln51_7_reg_1050_pp0_iter6_reg <= icmp_ln51_7_reg_1050_pp0_iter5_reg;
        icmp_ln51_reg_1040 <= icmp_ln51_fu_632_p2;
        icmp_ln51_reg_1040_pp0_iter1_reg <= icmp_ln51_reg_1040;
        icmp_ln51_reg_1040_pp0_iter2_reg <= icmp_ln51_reg_1040_pp0_iter1_reg;
        icmp_ln51_reg_1040_pp0_iter3_reg <= icmp_ln51_reg_1040_pp0_iter2_reg;
        icmp_ln51_reg_1040_pp0_iter4_reg <= icmp_ln51_reg_1040_pp0_iter3_reg;
        icmp_ln51_reg_1040_pp0_iter5_reg <= icmp_ln51_reg_1040_pp0_iter4_reg;
        icmp_ln51_reg_1040_pp0_iter6_reg <= icmp_ln51_reg_1040_pp0_iter5_reg;
        select_ln51_1_reg_1075 <= select_ln51_1_fu_692_p3;
        select_ln51_2_reg_1080 <= select_ln51_2_fu_699_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln51_1_reg_957 <= icmp_ln51_1_fu_409_p2;
        icmp_ln51_1_reg_957_pp0_iter1_reg <= icmp_ln51_1_reg_957;
        icmp_ln51_1_reg_957_pp0_iter2_reg <= icmp_ln51_1_reg_957_pp0_iter1_reg;
        icmp_ln51_1_reg_957_pp0_iter3_reg <= icmp_ln51_1_reg_957_pp0_iter2_reg;
        icmp_ln51_1_reg_957_pp0_iter4_reg <= icmp_ln51_1_reg_957_pp0_iter3_reg;
        icmp_ln51_1_reg_957_pp0_iter5_reg <= icmp_ln51_1_reg_957_pp0_iter4_reg;
        icmp_ln51_1_reg_957_pp0_iter6_reg <= icmp_ln51_1_reg_957_pp0_iter5_reg;
        icmp_ln51_2_reg_974 <= icmp_ln51_2_fu_453_p2;
        icmp_ln51_2_reg_974_pp0_iter1_reg <= icmp_ln51_2_reg_974;
        icmp_ln51_2_reg_974_pp0_iter2_reg <= icmp_ln51_2_reg_974_pp0_iter1_reg;
        icmp_ln51_2_reg_974_pp0_iter3_reg <= icmp_ln51_2_reg_974_pp0_iter2_reg;
        icmp_ln51_2_reg_974_pp0_iter4_reg <= icmp_ln51_2_reg_974_pp0_iter3_reg;
        icmp_ln51_2_reg_974_pp0_iter5_reg <= icmp_ln51_2_reg_974_pp0_iter4_reg;
        icmp_ln51_2_reg_974_pp0_iter6_reg <= icmp_ln51_2_reg_974_pp0_iter5_reg;
        select_ln51_3_reg_1115 <= select_ln51_3_fu_726_p3;
        select_ln51_4_reg_1120 <= select_ln51_4_fu_733_p3;
        tmp_1_reg_962 <= {{ap_sig_allocacmp_v19_1[9:2]}};
        tmp_1_reg_962_pp0_iter1_reg <= tmp_1_reg_962;
        tmp_1_reg_962_pp0_iter2_reg <= tmp_1_reg_962_pp0_iter1_reg;
        tmp_1_reg_962_pp0_iter3_reg <= tmp_1_reg_962_pp0_iter2_reg;
        tmp_1_reg_962_pp0_iter4_reg <= tmp_1_reg_962_pp0_iter3_reg;
        tmp_1_reg_962_pp0_iter5_reg <= tmp_1_reg_962_pp0_iter4_reg;
        tmp_1_reg_962_pp0_iter6_reg <= tmp_1_reg_962_pp0_iter5_reg;
        tmp_1_reg_962_pp0_iter7_reg <= tmp_1_reg_962_pp0_iter6_reg;
        tmp_1_reg_962_pp0_iter8_reg <= tmp_1_reg_962_pp0_iter7_reg;
        tmp_reg_943 <= ap_sig_allocacmp_v19_1[32'd10];
        tmp_s_reg_947 <= {{ap_sig_allocacmp_v19_1[9:1]}};
        tmp_s_reg_947_pp0_iter1_reg <= tmp_s_reg_947;
        tmp_s_reg_947_pp0_iter2_reg <= tmp_s_reg_947_pp0_iter1_reg;
        tmp_s_reg_947_pp0_iter3_reg <= tmp_s_reg_947_pp0_iter2_reg;
        tmp_s_reg_947_pp0_iter4_reg <= tmp_s_reg_947_pp0_iter3_reg;
        tmp_s_reg_947_pp0_iter5_reg <= tmp_s_reg_947_pp0_iter4_reg;
        tmp_s_reg_947_pp0_iter6_reg <= tmp_s_reg_947_pp0_iter5_reg;
        tmp_s_reg_947_pp0_iter7_reg <= tmp_s_reg_947_pp0_iter6_reg;
        v19_1_reg_934 <= ap_sig_allocacmp_v19_1;
        v19_1_reg_934_pp0_iter1_reg <= v19_1_reg_934;
        v19_1_reg_934_pp0_iter2_reg <= v19_1_reg_934_pp0_iter1_reg;
        v19_1_reg_934_pp0_iter3_reg <= v19_1_reg_934_pp0_iter2_reg;
        v19_1_reg_934_pp0_iter4_reg <= v19_1_reg_934_pp0_iter3_reg;
        v19_1_reg_934_pp0_iter5_reg <= v19_1_reg_934_pp0_iter4_reg;
        v19_1_reg_934_pp0_iter6_reg <= v19_1_reg_934_pp0_iter5_reg;
        v19_1_reg_934_pp0_iter7_reg <= v19_1_reg_934_pp0_iter6_reg;
        v19_1_reg_934_pp0_iter8_reg <= v19_1_reg_934_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln51_3_reg_984 <= icmp_ln51_3_fu_485_p2;
        icmp_ln51_3_reg_984_pp0_iter1_reg <= icmp_ln51_3_reg_984;
        icmp_ln51_3_reg_984_pp0_iter2_reg <= icmp_ln51_3_reg_984_pp0_iter1_reg;
        icmp_ln51_3_reg_984_pp0_iter3_reg <= icmp_ln51_3_reg_984_pp0_iter2_reg;
        icmp_ln51_3_reg_984_pp0_iter4_reg <= icmp_ln51_3_reg_984_pp0_iter3_reg;
        icmp_ln51_3_reg_984_pp0_iter5_reg <= icmp_ln51_3_reg_984_pp0_iter4_reg;
        icmp_ln51_3_reg_984_pp0_iter6_reg <= icmp_ln51_3_reg_984_pp0_iter5_reg;
        icmp_ln51_4_reg_1005 <= icmp_ln51_4_fu_527_p2;
        icmp_ln51_4_reg_1005_pp0_iter1_reg <= icmp_ln51_4_reg_1005;
        icmp_ln51_4_reg_1005_pp0_iter2_reg <= icmp_ln51_4_reg_1005_pp0_iter1_reg;
        icmp_ln51_4_reg_1005_pp0_iter3_reg <= icmp_ln51_4_reg_1005_pp0_iter2_reg;
        icmp_ln51_4_reg_1005_pp0_iter4_reg <= icmp_ln51_4_reg_1005_pp0_iter3_reg;
        icmp_ln51_4_reg_1005_pp0_iter5_reg <= icmp_ln51_4_reg_1005_pp0_iter4_reg;
        icmp_ln51_4_reg_1005_pp0_iter6_reg <= icmp_ln51_4_reg_1005_pp0_iter5_reg;
        select_ln51_5_reg_1165 <= select_ln51_5_fu_766_p3;
        select_ln51_6_reg_1170 <= select_ln51_6_fu_773_p3;
        tmp_2_reg_989 <= {{v19_1_reg_934[9:3]}};
        tmp_2_reg_989_pp0_iter1_reg <= tmp_2_reg_989;
        tmp_2_reg_989_pp0_iter2_reg <= tmp_2_reg_989_pp0_iter1_reg;
        tmp_2_reg_989_pp0_iter3_reg <= tmp_2_reg_989_pp0_iter2_reg;
        tmp_2_reg_989_pp0_iter4_reg <= tmp_2_reg_989_pp0_iter3_reg;
        tmp_2_reg_989_pp0_iter5_reg <= tmp_2_reg_989_pp0_iter4_reg;
        tmp_2_reg_989_pp0_iter6_reg <= tmp_2_reg_989_pp0_iter5_reg;
        tmp_2_reg_989_pp0_iter7_reg <= tmp_2_reg_989_pp0_iter6_reg;
        tmp_2_reg_989_pp0_iter8_reg <= tmp_2_reg_989_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln51_5_reg_1020 <= icmp_ln51_5_fu_570_p2;
        icmp_ln51_5_reg_1020_pp0_iter1_reg <= icmp_ln51_5_reg_1020;
        icmp_ln51_5_reg_1020_pp0_iter2_reg <= icmp_ln51_5_reg_1020_pp0_iter1_reg;
        icmp_ln51_5_reg_1020_pp0_iter3_reg <= icmp_ln51_5_reg_1020_pp0_iter2_reg;
        icmp_ln51_5_reg_1020_pp0_iter4_reg <= icmp_ln51_5_reg_1020_pp0_iter3_reg;
        icmp_ln51_5_reg_1020_pp0_iter5_reg <= icmp_ln51_5_reg_1020_pp0_iter4_reg;
        icmp_ln51_5_reg_1020_pp0_iter6_reg <= icmp_ln51_5_reg_1020_pp0_iter5_reg;
        icmp_ln51_6_reg_1030 <= icmp_ln51_6_fu_602_p2;
        icmp_ln51_6_reg_1030_pp0_iter1_reg <= icmp_ln51_6_reg_1030;
        icmp_ln51_6_reg_1030_pp0_iter2_reg <= icmp_ln51_6_reg_1030_pp0_iter1_reg;
        icmp_ln51_6_reg_1030_pp0_iter3_reg <= icmp_ln51_6_reg_1030_pp0_iter2_reg;
        icmp_ln51_6_reg_1030_pp0_iter4_reg <= icmp_ln51_6_reg_1030_pp0_iter3_reg;
        icmp_ln51_6_reg_1030_pp0_iter5_reg <= icmp_ln51_6_reg_1030_pp0_iter4_reg;
        icmp_ln51_6_reg_1030_pp0_iter6_reg <= icmp_ln51_6_reg_1030_pp0_iter5_reg;
        select_ln51_7_reg_1200 <= select_ln51_7_fu_801_p3;
        select_ln51_reg_1185 <= select_ln51_fu_786_p3;
        tmp_3_reg_1010 <= v19_1_reg_934[32'd1];
        tmp_3_reg_1010_pp0_iter1_reg <= tmp_3_reg_1010;
        tmp_3_reg_1010_pp0_iter2_reg <= tmp_3_reg_1010_pp0_iter1_reg;
        tmp_3_reg_1010_pp0_iter3_reg <= tmp_3_reg_1010_pp0_iter2_reg;
        tmp_3_reg_1010_pp0_iter4_reg <= tmp_3_reg_1010_pp0_iter3_reg;
        tmp_3_reg_1010_pp0_iter5_reg <= tmp_3_reg_1010_pp0_iter4_reg;
        tmp_3_reg_1010_pp0_iter6_reg <= tmp_3_reg_1010_pp0_iter5_reg;
        tmp_3_reg_1010_pp0_iter7_reg <= tmp_3_reg_1010_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_345 <= grp_fu_902_p_dout0;
        reg_350 <= grp_fu_906_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_943 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_96;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_337_p1 = v23_fu_808_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_337_p1 = v23_5_fu_793_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_337_p1 = v23_3_fu_758_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_337_p1 = v23_1_fu_718_p1;
        end else begin
            grp_fu_337_p1 = 'bx;
        end
    end else begin
        grp_fu_337_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_341_p1 = v23_7_fu_812_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_341_p1 = v23_6_fu_797_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_341_p1 = v23_4_fu_762_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_341_p1 = v23_2_fu_722_p1;
        end else begin
            grp_fu_341_p1 = 'bx;
        end
    end else begin
        grp_fu_341_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address0_local = zext_ln51_22_fu_780_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln51_19_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = zext_ln51_13_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address0_local = zext_ln51_7_fu_686_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_address1_local = zext_ln51_1_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address1_local = zext_ln51_16_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address1_local = zext_ln51_10_fu_706_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_0_address1_local = zext_ln51_4_fu_680_p1;
    end else begin
        v0_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v0_0_ce1_local = 1'b1;
    end else begin
        v0_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address0_local = zext_ln51_22_fu_780_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln51_19_fu_746_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = zext_ln51_13_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address0_local = zext_ln51_7_fu_686_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_address1_local = zext_ln51_1_fu_752_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address1_local = zext_ln51_16_fu_740_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address1_local = zext_ln51_10_fu_706_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v0_1_address1_local = zext_ln51_4_fu_680_p1;
    end else begin
        v0_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v0_1_ce1_local = 1'b1;
    end else begin
        v0_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address0_local = zext_ln51_20_fu_902_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address0_local = zext_ln51_17_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln51_11_fu_859_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln51_5_fu_835_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v3_address1_local = zext_ln47_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v3_address1_local = zext_ln51_14_fu_874_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln51_8_fu_847_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln51_2_fu_823_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln47_fu_670_p2 = (v19_1_reg_934 + 11'd8);
assign add_ln51_10_fu_564_p2 = ($signed(zext_ln51_15_fu_554_p1) + $signed(24'd14473216));
assign add_ln51_11_fu_576_p5 = {{{{tmp_70}, {2'd3}}, {tmp_2_reg_989}}, {3'd6}};
assign add_ln51_12_fu_596_p2 = ($signed(zext_ln51_18_fu_586_p1) + $signed(24'd14473216));
assign add_ln51_13_fu_638_p5 = {{{{tmp_70}, {2'd3}}, {tmp_2_reg_989}}, {3'd7}};
assign add_ln51_14_fu_658_p2 = ($signed(zext_ln51_21_fu_648_p1) + $signed(24'd14473216));
assign add_ln51_1_fu_626_p2 = ($signed(zext_ln51_fu_616_p1) + $signed(24'd14473216));
assign add_ln51_2_fu_403_p2 = ($signed(zext_ln51_3_fu_393_p1) + $signed(24'd14473216));
assign add_ln51_3_fu_425_p5 = {{{{tmp_70}, {2'd3}}, {tmp_1_fu_415_p4}}, {2'd2}};
assign add_ln51_4_fu_447_p2 = ($signed(zext_ln51_6_fu_437_p1) + $signed(24'd14473216));
assign add_ln51_5_fu_459_p5 = {{{{tmp_70}, {2'd3}}, {tmp_1_reg_962}}, {2'd3}};
assign add_ln51_6_fu_479_p2 = ($signed(zext_ln51_9_fu_469_p1) + $signed(24'd14473216));
assign add_ln51_7_fu_500_p5 = {{{{tmp_70}, {2'd3}}, {tmp_2_fu_491_p4}}, {3'd4}};
assign add_ln51_8_fu_521_p2 = ($signed(zext_ln51_12_fu_511_p1) + $signed(24'd14473216));
assign add_ln51_9_fu_540_p7 = {{{{{{tmp_70}, {2'd3}}, {tmp_2_reg_989}}, {1'd1}}, {tmp_3_fu_533_p3}}, {1'd1}};
assign add_ln51_fu_611_p2 = (zext_ln47_1_fu_608_p1 + tmp_106);
assign add_ln51_s_fu_381_p5 = {{{{tmp_70}, {2'd3}}, {tmp_s_fu_371_p4}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_fu_902_p_ce = 1'b1;
assign grp_fu_902_p_din0 = v22_3;
assign grp_fu_902_p_din1 = grp_fu_337_p1;
assign grp_fu_906_p_ce = 1'b1;
assign grp_fu_906_p_din0 = v22_3;
assign grp_fu_906_p_din1 = grp_fu_341_p1;
assign icmp_ln51_1_fu_409_p2 = ((add_ln51_2_fu_403_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_2_fu_453_p2 = ((add_ln51_4_fu_447_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_3_fu_485_p2 = ((add_ln51_6_fu_479_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_4_fu_527_p2 = ((add_ln51_8_fu_521_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_5_fu_570_p2 = ((add_ln51_10_fu_564_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_6_fu_602_p2 = ((add_ln51_12_fu_596_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_7_fu_664_p2 = ((add_ln51_14_fu_658_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign icmp_ln51_fu_632_p2 = ((add_ln51_1_fu_626_p2 < 24'd2304000) ? 1'b1 : 1'b0);
assign or_ln47_1_fu_828_p3 = {{tmp_1_reg_962_pp0_iter7_reg}, {2'd2}};
assign or_ln47_2_fu_840_p3 = {{tmp_1_reg_962_pp0_iter8_reg}, {2'd3}};
assign or_ln47_3_fu_852_p3 = {{tmp_2_reg_989_pp0_iter7_reg}, {3'd4}};
assign or_ln47_4_fu_864_p5 = {{{{tmp_2_reg_989_pp0_iter8_reg}, {1'd1}}, {tmp_3_reg_1010_pp0_iter7_reg}}, {1'd1}};
assign or_ln47_5_fu_879_p3 = {{tmp_2_reg_989_pp0_iter8_reg}, {3'd6}};
assign or_ln47_6_fu_895_p3 = {{tmp_2_reg_989_pp0_iter8_reg}, {3'd7}};
assign or_ln47_s_fu_816_p3 = {{tmp_s_reg_947_pp0_iter7_reg}, {1'd1}};
assign select_ln51_1_fu_692_p3 = ((icmp_ln51_1_reg_957_pp0_iter6_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln51_2_fu_699_p3 = ((icmp_ln51_2_reg_974_pp0_iter6_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_3_fu_726_p3 = ((icmp_ln51_3_reg_984_pp0_iter6_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln51_4_fu_733_p3 = ((icmp_ln51_4_reg_1005_pp0_iter6_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_5_fu_766_p3 = ((icmp_ln51_5_reg_1020_pp0_iter6_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign select_ln51_6_fu_773_p3 = ((icmp_ln51_6_reg_1030_pp0_iter6_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_7_fu_801_p3 = ((icmp_ln51_7_reg_1050_pp0_iter6_reg[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign select_ln51_fu_786_p3 = ((icmp_ln51_reg_1040_pp0_iter6_reg[0:0] == 1'b1) ? v0_1_q1 : v0_0_q1);
assign tmp_1_fu_415_p4 = {{ap_sig_allocacmp_v19_1[9:2]}};
assign tmp_2_fu_491_p4 = {{v19_1_reg_934[9:3]}};
assign tmp_3_fu_533_p3 = v19_1_reg_934[32'd1];
assign tmp_fu_363_p3 = ap_sig_allocacmp_v19_1[32'd10];
assign tmp_s_fu_371_p4 = {{ap_sig_allocacmp_v19_1[9:1]}};
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_address1 = v0_0_address1_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_ce1 = v0_0_ce1_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_address1 = v0_1_address1_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_ce1 = v0_1_ce1_local;
assign v23_1_fu_718_p1 = select_ln51_1_reg_1075;
assign v23_2_fu_722_p1 = select_ln51_2_reg_1080;
assign v23_3_fu_758_p1 = select_ln51_3_reg_1115;
assign v23_4_fu_762_p1 = select_ln51_4_reg_1120;
assign v23_5_fu_793_p1 = select_ln51_5_reg_1165;
assign v23_6_fu_797_p1 = select_ln51_6_reg_1170;
assign v23_7_fu_812_p1 = select_ln51_7_reg_1200;
assign v23_fu_808_p1 = select_ln51_reg_1185;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = reg_350;
assign v3_d1 = reg_345;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_1_fu_608_p1 = v19_1_reg_934;
assign zext_ln47_fu_891_p1 = v19_1_reg_934_pp0_iter8_reg;
assign zext_ln51_10_fu_706_p1 = grp_fu_473_p2;
assign zext_ln51_11_fu_859_p1 = or_ln47_3_fu_852_p3;
assign zext_ln51_12_fu_511_p1 = add_ln51_7_fu_500_p5;
assign zext_ln51_13_fu_712_p1 = grp_fu_515_p2;
assign zext_ln51_14_fu_874_p1 = or_ln47_4_fu_864_p5;
assign zext_ln51_15_fu_554_p1 = add_ln51_9_fu_540_p7;
assign zext_ln51_16_fu_740_p1 = grp_fu_558_p2;
assign zext_ln51_17_fu_886_p1 = or_ln47_5_fu_879_p3;
assign zext_ln51_18_fu_586_p1 = add_ln51_11_fu_576_p5;
assign zext_ln51_19_fu_746_p1 = grp_fu_590_p2;
assign zext_ln51_1_fu_752_p1 = grp_fu_620_p2;
assign zext_ln51_20_fu_902_p1 = or_ln47_6_fu_895_p3;
assign zext_ln51_21_fu_648_p1 = add_ln51_13_fu_638_p5;
assign zext_ln51_22_fu_780_p1 = grp_fu_652_p2;
assign zext_ln51_2_fu_823_p1 = or_ln47_s_fu_816_p3;
assign zext_ln51_3_fu_393_p1 = add_ln51_s_fu_381_p5;
assign zext_ln51_4_fu_680_p1 = grp_fu_397_p2;
assign zext_ln51_5_fu_835_p1 = or_ln47_1_fu_828_p3;
assign zext_ln51_6_fu_437_p1 = add_ln51_3_fu_425_p5;
assign zext_ln51_7_fu_686_p1 = grp_fu_441_p2;
assign zext_ln51_8_fu_847_p1 = or_ln47_2_fu_840_p3;
assign zext_ln51_9_fu_469_p1 = add_ln51_5_fu_459_p5;
assign zext_ln51_fu_616_p1 = add_ln51_fu_611_p2;
endmodule 
