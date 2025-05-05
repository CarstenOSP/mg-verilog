module md_md_Pipeline_loop_q (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_z,sum_y,sum_x,q_idx_range,mul_ln31,position_address0,position_ce0,position_q0,position_load,empty,p_x,trunc_ln34_3,p_y,trunc_ln34_5,p_z,sum_z_2_out,sum_z_2_out_ap_vld,sum_y_2_out,sum_y_2_out_ap_vld,sum_x_2_out,sum_x_2_out_ap_vld); 
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
input  [63:0] sum_z;
input  [63:0] sum_y;
input  [63:0] sum_x;
input  [31:0] q_idx_range;
input  [9:0] mul_ln31;
output  [9:0] position_address0;
output   position_ce0;
input  [191:0] position_q0;
input  [190:0] position_load;
input  [51:0] empty;
input  [63:0] p_x;
input  [51:0] trunc_ln34_3;
input  [63:0] p_y;
input  [51:0] trunc_ln34_5;
input  [63:0] p_z;
output  [63:0] sum_z_2_out;
output   sum_z_2_out_ap_vld;
output  [63:0] sum_y_2_out;
output   sum_y_2_out_ap_vld;
output  [63:0] sum_x_2_out;
output   sum_x_2_out_ap_vld;
reg ap_idle;
reg sum_z_2_out_ap_vld;
reg sum_y_2_out_ap_vld;
reg sum_x_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
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
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln30_reg_675;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln30_fu_294_p2;
reg   [0:0] icmp_ln30_reg_675_pp0_iter1_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter2_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter3_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter4_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter5_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter6_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter7_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter8_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter9_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter10_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter11_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter12_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter13_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter14_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter15_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter16_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter17_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter18_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter19_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter20_reg;
reg   [0:0] icmp_ln30_reg_675_pp0_iter21_reg;
wire   [0:0] icmp_ln34_2_fu_331_p2;
reg   [0:0] icmp_ln34_2_reg_684;
wire   [0:0] icmp_ln34_3_fu_337_p2;
reg   [0:0] icmp_ln34_3_reg_689;
wire   [0:0] icmp_ln34_6_fu_353_p2;
reg   [0:0] icmp_ln34_6_reg_694;
wire   [0:0] icmp_ln34_7_fu_359_p2;
reg   [0:0] icmp_ln34_7_reg_699;
wire   [0:0] icmp_ln34_10_fu_375_p2;
reg   [0:0] icmp_ln34_10_reg_704;
wire   [0:0] icmp_ln34_11_fu_381_p2;
reg   [0:0] icmp_ln34_11_reg_709;
wire   [63:0] trunc_ln31_3_fu_392_p1;
reg   [63:0] trunc_ln31_3_reg_714;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] trunc_ln31_1_reg_719;
reg   [63:0] trunc_ln31_2_reg_724;
wire   [0:0] icmp_ln34_fu_430_p2;
reg   [0:0] icmp_ln34_reg_729;
wire   [0:0] icmp_ln34_1_fu_436_p2;
reg   [0:0] icmp_ln34_1_reg_734;
wire   [0:0] icmp_ln34_4_fu_462_p2;
reg   [0:0] icmp_ln34_4_reg_739;
wire   [0:0] icmp_ln34_5_fu_468_p2;
reg   [0:0] icmp_ln34_5_reg_744;
wire   [0:0] icmp_ln34_8_fu_494_p2;
reg   [0:0] icmp_ln34_8_reg_749;
wire   [0:0] icmp_ln34_9_fu_500_p2;
reg   [0:0] icmp_ln34_9_reg_754;
wire   [63:0] q_y_fu_506_p1;
reg   [63:0] q_y_reg_759;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] and_ln34_5_fu_528_p2;
reg   [0:0] and_ln34_5_reg_765;
wire   [63:0] q_z_fu_534_p1;
reg   [63:0] q_z_reg_770;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] grp_fu_263_p2;
reg   [0:0] tmp_5_reg_776;
wire   [63:0] q_x_fu_538_p1;
reg   [63:0] q_x_reg_781;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln34_6_fu_557_p2;
reg   [0:0] and_ln34_6_reg_787;
wire   [0:0] and_ln34_7_fu_582_p2;
reg   [0:0] and_ln34_7_reg_792;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [0:0] and_ln34_7_reg_792_pp0_iter1_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter2_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter3_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter4_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter5_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter6_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter7_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter8_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter9_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter10_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter11_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter12_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter13_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter14_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter15_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter16_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter17_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter18_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter19_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter20_reg;
reg   [0:0] and_ln34_7_reg_792_pp0_iter21_reg;
wire   [63:0] grp_fu_240_p2;
reg   [63:0] dx_reg_796;
reg   [63:0] dx_reg_796_pp0_iter2_reg;
reg   [63:0] dx_reg_796_pp0_iter3_reg;
reg   [63:0] dx_reg_796_pp0_iter4_reg;
reg   [63:0] dx_reg_796_pp0_iter5_reg;
reg   [63:0] dx_reg_796_pp0_iter6_reg;
reg   [63:0] dx_reg_796_pp0_iter7_reg;
reg   [63:0] dx_reg_796_pp0_iter8_reg;
reg   [63:0] dx_reg_796_pp0_iter9_reg;
reg   [63:0] dx_reg_796_pp0_iter10_reg;
reg   [63:0] dx_reg_796_pp0_iter11_reg;
reg   [63:0] dx_reg_796_pp0_iter12_reg;
reg   [63:0] dx_reg_796_pp0_iter13_reg;
reg   [63:0] dx_reg_796_pp0_iter14_reg;
reg   [63:0] dx_reg_796_pp0_iter15_reg;
reg   [63:0] dx_reg_796_pp0_iter16_reg;
reg   [63:0] dx_reg_796_pp0_iter17_reg;
reg   [63:0] dx_reg_796_pp0_iter18_reg;
reg   [63:0] dx_reg_796_pp0_iter19_reg;
wire   [63:0] grp_fu_244_p2;
reg   [63:0] dy_reg_802;
reg   [63:0] dy_reg_802_pp0_iter2_reg;
reg   [63:0] dy_reg_802_pp0_iter3_reg;
reg   [63:0] dy_reg_802_pp0_iter4_reg;
reg   [63:0] dy_reg_802_pp0_iter5_reg;
reg   [63:0] dy_reg_802_pp0_iter6_reg;
reg   [63:0] dy_reg_802_pp0_iter7_reg;
reg   [63:0] dy_reg_802_pp0_iter8_reg;
reg   [63:0] dy_reg_802_pp0_iter9_reg;
reg   [63:0] dy_reg_802_pp0_iter10_reg;
reg   [63:0] dy_reg_802_pp0_iter11_reg;
reg   [63:0] dy_reg_802_pp0_iter12_reg;
reg   [63:0] dy_reg_802_pp0_iter13_reg;
reg   [63:0] dy_reg_802_pp0_iter14_reg;
reg   [63:0] dy_reg_802_pp0_iter15_reg;
reg   [63:0] dy_reg_802_pp0_iter16_reg;
reg   [63:0] dy_reg_802_pp0_iter17_reg;
reg   [63:0] dy_reg_802_pp0_iter18_reg;
reg   [63:0] dy_reg_802_pp0_iter19_reg;
reg   [63:0] dz_reg_808;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] dz_reg_808_pp0_iter2_reg;
reg   [63:0] dz_reg_808_pp0_iter3_reg;
reg   [63:0] dz_reg_808_pp0_iter4_reg;
reg   [63:0] dz_reg_808_pp0_iter5_reg;
reg   [63:0] dz_reg_808_pp0_iter6_reg;
reg   [63:0] dz_reg_808_pp0_iter7_reg;
reg   [63:0] dz_reg_808_pp0_iter8_reg;
reg   [63:0] dz_reg_808_pp0_iter9_reg;
reg   [63:0] dz_reg_808_pp0_iter10_reg;
reg   [63:0] dz_reg_808_pp0_iter11_reg;
reg   [63:0] dz_reg_808_pp0_iter12_reg;
reg   [63:0] dz_reg_808_pp0_iter13_reg;
reg   [63:0] dz_reg_808_pp0_iter14_reg;
reg   [63:0] dz_reg_808_pp0_iter15_reg;
reg   [63:0] dz_reg_808_pp0_iter16_reg;
reg   [63:0] dz_reg_808_pp0_iter17_reg;
reg   [63:0] dz_reg_808_pp0_iter18_reg;
reg   [63:0] dz_reg_808_pp0_iter19_reg;
wire   [63:0] grp_fu_249_p2;
reg   [63:0] mul_reg_814;
wire   [63:0] grp_fu_253_p2;
reg   [63:0] mul1_reg_819;
reg   [63:0] mul2_reg_824;
reg   [63:0] mul2_reg_824_pp0_iter3_reg;
reg   [63:0] add_reg_829;
reg   [63:0] add1_reg_834;
wire   [63:0] grp_fu_258_p2;
reg   [63:0] r2inv_reg_839;
reg   [63:0] r2inv_reg_839_pp0_iter14_reg;
reg   [63:0] r2inv_reg_839_pp0_iter15_reg;
reg   [63:0] r2inv_reg_839_pp0_iter16_reg;
reg   [63:0] r2inv_reg_839_pp0_iter17_reg;
reg   [63:0] r2inv_reg_839_pp0_iter18_reg;
reg   [63:0] mul3_reg_847;
reg   [63:0] r6inv_reg_852;
reg   [63:0] r6inv_reg_852_pp0_iter16_reg;
reg   [63:0] r6inv_reg_852_pp0_iter17_reg;
reg   [63:0] mul5_reg_857;
reg   [63:0] sub_reg_862;
reg   [63:0] potential_reg_867;
reg   [63:0] f_reg_872;
reg   [63:0] mul8_reg_878;
reg   [63:0] mul9_reg_883;
reg   [63:0] mul4_reg_898;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln31_fu_316_p1;
wire    ap_block_pp0_stage0;
reg   [30:0] q_idx_fu_118;
wire   [30:0] add_ln30_fu_300_p2;
wire    ap_loop_init;
reg   [30:0] ap_sig_allocacmp_q_idx_1;
reg   [63:0] sum_x_1_fu_122;
reg   [63:0] ap_sig_allocacmp_sum_x_1_load_1;
wire    ap_block_pp0_stage2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter21_stage3;
reg    ap_idle_pp0_0to20;
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
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
wire    ap_block_pp0_stage3;
reg   [63:0] sum_y_1_fu_126;
reg   [63:0] ap_sig_allocacmp_sum_y_1_load_1;
reg   [63:0] sum_z_1_fu_130;
reg   [63:0] ap_sig_allocacmp_sum_z_1_load_1;
wire    ap_block_pp0_stage3_01001;
reg    position_ce0_local;
reg   [63:0] grp_fu_240_p0;
reg   [63:0] grp_fu_240_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
reg   [63:0] grp_fu_244_p0;
reg   [63:0] grp_fu_244_p1;
reg   [63:0] grp_fu_249_p0;
reg   [63:0] grp_fu_249_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage1;
reg   [63:0] grp_fu_253_p0;
reg   [63:0] grp_fu_253_p1;
reg   [63:0] grp_fu_263_p0;
reg   [63:0] grp_fu_263_p1;
wire   [31:0] zext_ln30_fu_290_p1;
wire   [9:0] trunc_ln31_fu_306_p1;
wire   [9:0] add_ln31_fu_310_p2;
wire   [10:0] tmp_1_fu_321_p4;
wire   [10:0] tmp_4_fu_343_p4;
wire   [10:0] tmp_7_fu_365_p4;
wire   [10:0] tmp_fu_416_p4;
wire   [51:0] trunc_ln34_fu_426_p1;
wire   [10:0] tmp_3_fu_442_p4;
wire   [51:0] trunc_ln34_2_fu_452_p4;
wire   [10:0] tmp_6_fu_474_p4;
wire   [51:0] trunc_ln34_4_fu_484_p4;
wire   [0:0] or_ln34_3_fu_510_p2;
wire   [0:0] or_ln34_5_fu_518_p2;
wire   [0:0] or_ln34_4_fu_514_p2;
wire   [0:0] and_ln34_4_fu_522_p2;
wire   [0:0] or_ln34_2_fu_542_p2;
wire   [0:0] and_ln34_2_fu_546_p2;
wire   [0:0] and_ln34_3_fu_552_p2;
wire   [0:0] or_ln34_fu_562_p2;
wire   [0:0] or_ln34_1_fu_566_p2;
wire   [0:0] and_ln34_fu_570_p2;
wire   [0:0] and_ln34_1_fu_576_p2;
reg   [1:0] grp_fu_240_opcode;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
reg   [1:0] grp_fu_244_opcode;
wire    ap_block_pp0_stage4_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to22;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
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
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 q_idx_fu_118 = 31'd0;
#0 sum_x_1_fu_122 = 64'd0;
#0 sum_y_1_fu_126 = 64'd0;
#0 sum_z_1_fu_130 = 64'd0;
#0 ap_done_reg = 1'b0;
end
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_240_p0),.din1(grp_fu_240_p1),.opcode(grp_fu_240_opcode),.ce(1'b1),.dout(grp_fu_240_p2));
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_244_p0),.din1(grp_fu_244_p1),.opcode(grp_fu_244_opcode),.ce(1'b1),.dout(grp_fu_244_p2));
md_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_249_p0),.din1(grp_fu_249_p1),.ce(1'b1),.dout(grp_fu_249_p2));
md_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_253_p0),.din1(grp_fu_253_p1),.ce(1'b1),.dout(grp_fu_253_p2));
md_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(add1_reg_834),.ce(1'b1),.dout(grp_fu_258_p2));
md_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_263_p0),.din1(grp_fu_263_p1),.ce(1'b1),.opcode(5'd1),.dout(grp_fu_263_p2));
md_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter21_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
            ap_enable_reg_pp0_iter22 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_fu_294_p2 == 1'd1))) begin
            q_idx_fu_118 <= add_ln30_fu_300_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            q_idx_fu_118 <= 31'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sum_x_1_fu_122 <= sum_x;
    end else if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_7_reg_792_pp0_iter21_reg) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sum_x_1_fu_122 <= grp_fu_240_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sum_y_1_fu_126 <= sum_y;
    end else if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_7_reg_792_pp0_iter21_reg) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        sum_y_1_fu_126 <= grp_fu_244_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sum_z_1_fu_130 <= sum_z;
    end else if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd0 == and_ln34_7_reg_792_pp0_iter21_reg) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        sum_z_1_fu_130 <= grp_fu_240_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add1_reg_834 <= grp_fu_240_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        add_reg_829 <= grp_fu_244_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        and_ln34_5_reg_765 <= and_ln34_5_fu_528_p2;
        q_y_reg_759 <= q_y_fu_506_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        and_ln34_6_reg_787 <= and_ln34_6_fu_557_p2;
        q_x_reg_781 <= q_x_fu_538_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        and_ln34_7_reg_792 <= and_ln34_7_fu_582_p2;
        and_ln34_7_reg_792_pp0_iter10_reg <= and_ln34_7_reg_792_pp0_iter9_reg;
        and_ln34_7_reg_792_pp0_iter11_reg <= and_ln34_7_reg_792_pp0_iter10_reg;
        and_ln34_7_reg_792_pp0_iter12_reg <= and_ln34_7_reg_792_pp0_iter11_reg;
        and_ln34_7_reg_792_pp0_iter13_reg <= and_ln34_7_reg_792_pp0_iter12_reg;
        and_ln34_7_reg_792_pp0_iter14_reg <= and_ln34_7_reg_792_pp0_iter13_reg;
        and_ln34_7_reg_792_pp0_iter15_reg <= and_ln34_7_reg_792_pp0_iter14_reg;
        and_ln34_7_reg_792_pp0_iter16_reg <= and_ln34_7_reg_792_pp0_iter15_reg;
        and_ln34_7_reg_792_pp0_iter17_reg <= and_ln34_7_reg_792_pp0_iter16_reg;
        and_ln34_7_reg_792_pp0_iter18_reg <= and_ln34_7_reg_792_pp0_iter17_reg;
        and_ln34_7_reg_792_pp0_iter19_reg <= and_ln34_7_reg_792_pp0_iter18_reg;
        and_ln34_7_reg_792_pp0_iter1_reg <= and_ln34_7_reg_792;
        and_ln34_7_reg_792_pp0_iter20_reg <= and_ln34_7_reg_792_pp0_iter19_reg;
        and_ln34_7_reg_792_pp0_iter21_reg <= and_ln34_7_reg_792_pp0_iter20_reg;
        and_ln34_7_reg_792_pp0_iter2_reg <= and_ln34_7_reg_792_pp0_iter1_reg;
        and_ln34_7_reg_792_pp0_iter3_reg <= and_ln34_7_reg_792_pp0_iter2_reg;
        and_ln34_7_reg_792_pp0_iter4_reg <= and_ln34_7_reg_792_pp0_iter3_reg;
        and_ln34_7_reg_792_pp0_iter5_reg <= and_ln34_7_reg_792_pp0_iter4_reg;
        and_ln34_7_reg_792_pp0_iter6_reg <= and_ln34_7_reg_792_pp0_iter5_reg;
        and_ln34_7_reg_792_pp0_iter7_reg <= and_ln34_7_reg_792_pp0_iter6_reg;
        and_ln34_7_reg_792_pp0_iter8_reg <= and_ln34_7_reg_792_pp0_iter7_reg;
        and_ln34_7_reg_792_pp0_iter9_reg <= and_ln34_7_reg_792_pp0_iter8_reg;
        dx_reg_796_pp0_iter10_reg <= dx_reg_796_pp0_iter9_reg;
        dx_reg_796_pp0_iter11_reg <= dx_reg_796_pp0_iter10_reg;
        dx_reg_796_pp0_iter12_reg <= dx_reg_796_pp0_iter11_reg;
        dx_reg_796_pp0_iter13_reg <= dx_reg_796_pp0_iter12_reg;
        dx_reg_796_pp0_iter14_reg <= dx_reg_796_pp0_iter13_reg;
        dx_reg_796_pp0_iter15_reg <= dx_reg_796_pp0_iter14_reg;
        dx_reg_796_pp0_iter16_reg <= dx_reg_796_pp0_iter15_reg;
        dx_reg_796_pp0_iter17_reg <= dx_reg_796_pp0_iter16_reg;
        dx_reg_796_pp0_iter18_reg <= dx_reg_796_pp0_iter17_reg;
        dx_reg_796_pp0_iter19_reg <= dx_reg_796_pp0_iter18_reg;
        dx_reg_796_pp0_iter2_reg <= dx_reg_796;
        dx_reg_796_pp0_iter3_reg <= dx_reg_796_pp0_iter2_reg;
        dx_reg_796_pp0_iter4_reg <= dx_reg_796_pp0_iter3_reg;
        dx_reg_796_pp0_iter5_reg <= dx_reg_796_pp0_iter4_reg;
        dx_reg_796_pp0_iter6_reg <= dx_reg_796_pp0_iter5_reg;
        dx_reg_796_pp0_iter7_reg <= dx_reg_796_pp0_iter6_reg;
        dx_reg_796_pp0_iter8_reg <= dx_reg_796_pp0_iter7_reg;
        dx_reg_796_pp0_iter9_reg <= dx_reg_796_pp0_iter8_reg;
        dy_reg_802_pp0_iter10_reg <= dy_reg_802_pp0_iter9_reg;
        dy_reg_802_pp0_iter11_reg <= dy_reg_802_pp0_iter10_reg;
        dy_reg_802_pp0_iter12_reg <= dy_reg_802_pp0_iter11_reg;
        dy_reg_802_pp0_iter13_reg <= dy_reg_802_pp0_iter12_reg;
        dy_reg_802_pp0_iter14_reg <= dy_reg_802_pp0_iter13_reg;
        dy_reg_802_pp0_iter15_reg <= dy_reg_802_pp0_iter14_reg;
        dy_reg_802_pp0_iter16_reg <= dy_reg_802_pp0_iter15_reg;
        dy_reg_802_pp0_iter17_reg <= dy_reg_802_pp0_iter16_reg;
        dy_reg_802_pp0_iter18_reg <= dy_reg_802_pp0_iter17_reg;
        dy_reg_802_pp0_iter19_reg <= dy_reg_802_pp0_iter18_reg;
        dy_reg_802_pp0_iter2_reg <= dy_reg_802;
        dy_reg_802_pp0_iter3_reg <= dy_reg_802_pp0_iter2_reg;
        dy_reg_802_pp0_iter4_reg <= dy_reg_802_pp0_iter3_reg;
        dy_reg_802_pp0_iter5_reg <= dy_reg_802_pp0_iter4_reg;
        dy_reg_802_pp0_iter6_reg <= dy_reg_802_pp0_iter5_reg;
        dy_reg_802_pp0_iter7_reg <= dy_reg_802_pp0_iter6_reg;
        dy_reg_802_pp0_iter8_reg <= dy_reg_802_pp0_iter7_reg;
        dy_reg_802_pp0_iter9_reg <= dy_reg_802_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        dx_reg_796 <= grp_fu_240_p2;
        dy_reg_802 <= grp_fu_244_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        dz_reg_808 <= grp_fu_240_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        dz_reg_808_pp0_iter10_reg <= dz_reg_808_pp0_iter9_reg;
        dz_reg_808_pp0_iter11_reg <= dz_reg_808_pp0_iter10_reg;
        dz_reg_808_pp0_iter12_reg <= dz_reg_808_pp0_iter11_reg;
        dz_reg_808_pp0_iter13_reg <= dz_reg_808_pp0_iter12_reg;
        dz_reg_808_pp0_iter14_reg <= dz_reg_808_pp0_iter13_reg;
        dz_reg_808_pp0_iter15_reg <= dz_reg_808_pp0_iter14_reg;
        dz_reg_808_pp0_iter16_reg <= dz_reg_808_pp0_iter15_reg;
        dz_reg_808_pp0_iter17_reg <= dz_reg_808_pp0_iter16_reg;
        dz_reg_808_pp0_iter18_reg <= dz_reg_808_pp0_iter17_reg;
        dz_reg_808_pp0_iter19_reg <= dz_reg_808_pp0_iter18_reg;
        dz_reg_808_pp0_iter2_reg <= dz_reg_808;
        dz_reg_808_pp0_iter3_reg <= dz_reg_808_pp0_iter2_reg;
        dz_reg_808_pp0_iter4_reg <= dz_reg_808_pp0_iter3_reg;
        dz_reg_808_pp0_iter5_reg <= dz_reg_808_pp0_iter4_reg;
        dz_reg_808_pp0_iter6_reg <= dz_reg_808_pp0_iter5_reg;
        dz_reg_808_pp0_iter7_reg <= dz_reg_808_pp0_iter6_reg;
        dz_reg_808_pp0_iter8_reg <= dz_reg_808_pp0_iter7_reg;
        dz_reg_808_pp0_iter9_reg <= dz_reg_808_pp0_iter8_reg;
        mul2_reg_824_pp0_iter3_reg <= mul2_reg_824;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        f_reg_872 <= grp_fu_253_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln30_reg_675 <= icmp_ln30_fu_294_p2;
        icmp_ln30_reg_675_pp0_iter10_reg <= icmp_ln30_reg_675_pp0_iter9_reg;
        icmp_ln30_reg_675_pp0_iter11_reg <= icmp_ln30_reg_675_pp0_iter10_reg;
        icmp_ln30_reg_675_pp0_iter12_reg <= icmp_ln30_reg_675_pp0_iter11_reg;
        icmp_ln30_reg_675_pp0_iter13_reg <= icmp_ln30_reg_675_pp0_iter12_reg;
        icmp_ln30_reg_675_pp0_iter14_reg <= icmp_ln30_reg_675_pp0_iter13_reg;
        icmp_ln30_reg_675_pp0_iter15_reg <= icmp_ln30_reg_675_pp0_iter14_reg;
        icmp_ln30_reg_675_pp0_iter16_reg <= icmp_ln30_reg_675_pp0_iter15_reg;
        icmp_ln30_reg_675_pp0_iter17_reg <= icmp_ln30_reg_675_pp0_iter16_reg;
        icmp_ln30_reg_675_pp0_iter18_reg <= icmp_ln30_reg_675_pp0_iter17_reg;
        icmp_ln30_reg_675_pp0_iter19_reg <= icmp_ln30_reg_675_pp0_iter18_reg;
        icmp_ln30_reg_675_pp0_iter1_reg <= icmp_ln30_reg_675;
        icmp_ln30_reg_675_pp0_iter20_reg <= icmp_ln30_reg_675_pp0_iter19_reg;
        icmp_ln30_reg_675_pp0_iter21_reg <= icmp_ln30_reg_675_pp0_iter20_reg;
        icmp_ln30_reg_675_pp0_iter2_reg <= icmp_ln30_reg_675_pp0_iter1_reg;
        icmp_ln30_reg_675_pp0_iter3_reg <= icmp_ln30_reg_675_pp0_iter2_reg;
        icmp_ln30_reg_675_pp0_iter4_reg <= icmp_ln30_reg_675_pp0_iter3_reg;
        icmp_ln30_reg_675_pp0_iter5_reg <= icmp_ln30_reg_675_pp0_iter4_reg;
        icmp_ln30_reg_675_pp0_iter6_reg <= icmp_ln30_reg_675_pp0_iter5_reg;
        icmp_ln30_reg_675_pp0_iter7_reg <= icmp_ln30_reg_675_pp0_iter6_reg;
        icmp_ln30_reg_675_pp0_iter8_reg <= icmp_ln30_reg_675_pp0_iter7_reg;
        icmp_ln30_reg_675_pp0_iter9_reg <= icmp_ln30_reg_675_pp0_iter8_reg;
        icmp_ln34_10_reg_704 <= icmp_ln34_10_fu_375_p2;
        icmp_ln34_11_reg_709 <= icmp_ln34_11_fu_381_p2;
        icmp_ln34_2_reg_684 <= icmp_ln34_2_fu_331_p2;
        icmp_ln34_3_reg_689 <= icmp_ln34_3_fu_337_p2;
        icmp_ln34_6_reg_694 <= icmp_ln34_6_fu_353_p2;
        icmp_ln34_7_reg_699 <= icmp_ln34_7_fu_359_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln34_1_reg_734 <= icmp_ln34_1_fu_436_p2;
        icmp_ln34_4_reg_739 <= icmp_ln34_4_fu_462_p2;
        icmp_ln34_5_reg_744 <= icmp_ln34_5_fu_468_p2;
        icmp_ln34_8_reg_749 <= icmp_ln34_8_fu_494_p2;
        icmp_ln34_9_reg_754 <= icmp_ln34_9_fu_500_p2;
        icmp_ln34_reg_729 <= icmp_ln34_fu_430_p2;
        trunc_ln31_1_reg_719 <= {{position_q0[127:64]}};
        trunc_ln31_2_reg_724 <= {{position_q0[191:128]}};
        trunc_ln31_3_reg_714 <= trunc_ln31_3_fu_392_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5_11001))) begin
        mul1_reg_819 <= grp_fu_253_p2;
        mul_reg_814 <= grp_fu_249_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_11001))) begin
        mul2_reg_824 <= grp_fu_249_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        mul3_reg_847 <= grp_fu_249_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        mul4_reg_898 <= grp_fu_249_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4_11001))) begin
        mul5_reg_857 <= grp_fu_249_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        mul8_reg_878 <= grp_fu_249_p2;
        mul9_reg_883 <= grp_fu_253_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        potential_reg_867 <= grp_fu_249_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        q_z_reg_770 <= q_z_fu_534_p1;
        r2inv_reg_839 <= grp_fu_258_p2;
        r2inv_reg_839_pp0_iter14_reg <= r2inv_reg_839;
        r2inv_reg_839_pp0_iter15_reg <= r2inv_reg_839_pp0_iter14_reg;
        r2inv_reg_839_pp0_iter16_reg <= r2inv_reg_839_pp0_iter15_reg;
        r2inv_reg_839_pp0_iter17_reg <= r2inv_reg_839_pp0_iter16_reg;
        r2inv_reg_839_pp0_iter18_reg <= r2inv_reg_839_pp0_iter17_reg;
        r6inv_reg_852_pp0_iter16_reg <= r6inv_reg_852;
        r6inv_reg_852_pp0_iter17_reg <= r6inv_reg_852_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        r6inv_reg_852 <= grp_fu_253_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sub_reg_862 <= grp_fu_244_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        tmp_5_reg_776 <= grp_fu_263_p2;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (icmp_ln30_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (icmp_ln30_reg_675_pp0_iter21_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_condition_exit_pp0_iter21_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter21_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter21_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready_pp0_iter21_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter19_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter18_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter17_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter11_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (ap_loop_exit_ready == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if (((ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to20 = 1'b1;
    end else begin
        ap_idle_pp0_0to20 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to22 = 1'b1;
    end else begin
        ap_idle_pp0_1to22 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_q_idx_1 = 31'd0;
    end else begin
        ap_sig_allocacmp_q_idx_1 = q_idx_fu_118;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_7_reg_792_pp0_iter21_reg) & (1'b0 == ap_block_pp0_stage2))) begin
        ap_sig_allocacmp_sum_x_1_load_1 = grp_fu_240_p2;
    end else begin
        ap_sig_allocacmp_sum_x_1_load_1 = sum_x_1_fu_122;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_7_reg_792_pp0_iter21_reg) & (1'b0 == ap_block_pp0_stage2))) begin
        ap_sig_allocacmp_sum_y_1_load_1 = grp_fu_244_p2;
    end else begin
        ap_sig_allocacmp_sum_y_1_load_1 = sum_y_1_fu_126;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter22 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd0 == and_ln34_7_reg_792_pp0_iter21_reg) & (1'b0 == ap_block_pp0_stage3))) begin
        ap_sig_allocacmp_sum_z_1_load_1 = grp_fu_240_p2;
    end else begin
        ap_sig_allocacmp_sum_z_1_load_1 = sum_z_1_fu_130;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'd0 == and_ln34_7_fu_582_p2) & (icmp_ln30_reg_675 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'd0 == and_ln34_7_reg_792) & (icmp_ln30_reg_675 == 1'd1) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_240_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd0 == and_ln34_7_reg_792_pp0_iter3_reg) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd0 == and_ln34_7_reg_792_pp0_iter20_reg) & (1'b0 == ap_block_pp0_stage3_00001)) | ((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_7_reg_792_pp0_iter20_reg) & (1'b0 == ap_block_pp0_stage2_00001)))) begin
        grp_fu_240_opcode = 2'd0;
    end else begin
        grp_fu_240_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_240_p0 = ap_sig_allocacmp_sum_z_1_load_1;
    end else if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_240_p0 = ap_sig_allocacmp_sum_x_1_load_1;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_240_p0 = add_reg_829;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_240_p0 = p_z;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_240_p0 = p_x;
    end else begin
        grp_fu_240_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_240_p1 = mul4_reg_898;
    end else if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_240_p1 = mul8_reg_878;
    end else if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_240_p1 = mul2_reg_824_pp0_iter3_reg;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_240_p1 = q_z_reg_770;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_240_p1 = q_x_reg_781;
    end else begin
        grp_fu_240_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'd0 == and_ln34_7_fu_582_p2) & (icmp_ln30_reg_675 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001))) begin
        grp_fu_244_opcode = 2'd1;
    end else if ((((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'd0 == and_ln34_7_reg_792_pp0_iter16_reg) & (1'b0 == ap_block_pp0_stage0_00001)) | ((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd0 == and_ln34_7_reg_792_pp0_iter20_reg) & (1'b0 == ap_block_pp0_stage2_00001)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'd0 == and_ln34_7_reg_792_pp0_iter2_reg) & (1'b0 == ap_block_pp0_stage6_00001)))) begin
        grp_fu_244_opcode = 2'd0;
    end else begin
        grp_fu_244_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_244_p0 = ap_sig_allocacmp_sum_y_1_load_1;
    end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_244_p0 = mul5_reg_857;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_244_p0 = mul_reg_814;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_244_p0 = p_y;
    end else begin
        grp_fu_244_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_244_p1 = mul9_reg_883;
    end else if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_244_p1 = 64'd13835058055282163712;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_244_p1 = mul1_reg_819;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_244_p1 = q_y_reg_759;
    end else begin
        grp_fu_244_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3)) | ((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2)))) begin
        grp_fu_249_p0 = f_reg_872;
    end else if (((ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_249_p0 = r6inv_reg_852_pp0_iter17_reg;
    end else if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_249_p0 = r6inv_reg_852;
    end else if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_249_p0 = r2inv_reg_839;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_249_p0 = dz_reg_808;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_249_p0 = dx_reg_796;
    end else begin
        grp_fu_249_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
        grp_fu_249_p1 = dz_reg_808_pp0_iter19_reg;
    end else if (((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_249_p1 = dx_reg_796_pp0_iter19_reg;
    end else if (((ap_enable_reg_pp0_iter18 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_249_p1 = sub_reg_862;
    end else if (((ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (1'b0 == ap_block_pp0_stage5))) begin
        grp_fu_249_p1 = 64'd4609434218613702656;
    end else if (((ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_249_p1 = r2inv_reg_839;
    end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        grp_fu_249_p1 = dz_reg_808;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_249_p1 = dx_reg_796;
    end else begin
        grp_fu_249_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_253_p0 = f_reg_872;
    end else if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_253_p0 = r2inv_reg_839_pp0_iter18_reg;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_253_p0 = mul3_reg_847;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_253_p0 = dy_reg_802;
    end else begin
        grp_fu_253_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
        grp_fu_253_p1 = dy_reg_802_pp0_iter19_reg;
    end else if (((ap_enable_reg_pp0_iter19 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1))) begin
        grp_fu_253_p1 = potential_reg_867;
    end else if (((ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
        grp_fu_253_p1 = r2inv_reg_839_pp0_iter14_reg;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6) & (1'b0 == ap_block_pp0_stage6))) begin
        grp_fu_253_p1 = dy_reg_802;
    end else begin
        grp_fu_253_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_263_p0 = q_x_fu_538_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            grp_fu_263_p0 = q_z_fu_534_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            grp_fu_263_p0 = q_y_fu_506_p1;
        end else begin
            grp_fu_263_p0 = 'bx;
        end
    end else begin
        grp_fu_263_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage4) & (1'b0 == ap_block_pp0_stage4))) begin
            grp_fu_263_p1 = p_x;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3))) begin
            grp_fu_263_p1 = p_z;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2))) begin
            grp_fu_263_p1 = p_y;
        end else begin
            grp_fu_263_p1 = 'bx;
        end
    end else begin
        grp_fu_263_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        position_ce0_local = 1'b1;
    end else begin
        position_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter21_reg == 1'b1) & (icmp_ln30_reg_675_pp0_iter21_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        sum_x_2_out_ap_vld = 1'b1;
    end else begin
        sum_x_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter21_reg == 1'b1) & (icmp_ln30_reg_675_pp0_iter21_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        sum_y_2_out_ap_vld = 1'b1;
    end else begin
        sum_y_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter21_reg == 1'b1) & (icmp_ln30_reg_675_pp0_iter21_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'b0 == ap_block_pp0_stage3_11001))) begin
        sum_z_2_out_ap_vld = 1'b1;
    end else begin
        sum_z_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to22 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to20 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter21_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
assign add_ln30_fu_300_p2 = (ap_sig_allocacmp_q_idx_1 + 31'd1);
assign add_ln31_fu_310_p2 = (mul_ln31 + trunc_ln31_fu_306_p1);
assign and_ln34_1_fu_576_p2 = (grp_fu_263_p2 & and_ln34_fu_570_p2);
assign and_ln34_2_fu_546_p2 = (or_ln34_2_fu_542_p2 & grp_fu_263_p2);
assign and_ln34_3_fu_552_p2 = (and_ln34_5_reg_765 & and_ln34_2_fu_546_p2);
assign and_ln34_4_fu_522_p2 = (or_ln34_5_fu_518_p2 & or_ln34_3_fu_510_p2);
assign and_ln34_5_fu_528_p2 = (or_ln34_4_fu_514_p2 & and_ln34_4_fu_522_p2);
assign and_ln34_6_fu_557_p2 = (tmp_5_reg_776 & and_ln34_3_fu_552_p2);
assign and_ln34_7_fu_582_p2 = (and_ln34_6_reg_787 & and_ln34_1_fu_576_p2);
assign and_ln34_fu_570_p2 = (or_ln34_fu_562_p2 & or_ln34_1_fu_566_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign icmp_ln30_fu_294_p2 = (($signed(zext_ln30_fu_290_p1) < $signed(q_idx_range)) ? 1'b1 : 1'b0);
assign icmp_ln34_10_fu_375_p2 = ((tmp_7_fu_365_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_11_fu_381_p2 = ((trunc_ln34_5 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_1_fu_436_p2 = ((trunc_ln34_fu_426_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_2_fu_331_p2 = ((tmp_1_fu_321_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_3_fu_337_p2 = ((empty == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_4_fu_462_p2 = ((tmp_3_fu_442_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_5_fu_468_p2 = ((trunc_ln34_2_fu_452_p4 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_6_fu_353_p2 = ((tmp_4_fu_343_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_7_fu_359_p2 = ((trunc_ln34_3 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_8_fu_494_p2 = ((tmp_6_fu_474_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_9_fu_500_p2 = ((trunc_ln34_4_fu_484_p4 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_430_p2 = ((tmp_fu_416_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign or_ln34_1_fu_566_p2 = (icmp_ln34_3_reg_689 | icmp_ln34_2_reg_684);
assign or_ln34_2_fu_542_p2 = (icmp_ln34_5_reg_744 | icmp_ln34_4_reg_739);
assign or_ln34_3_fu_510_p2 = (icmp_ln34_7_reg_699 | icmp_ln34_6_reg_694);
assign or_ln34_4_fu_514_p2 = (icmp_ln34_9_reg_754 | icmp_ln34_8_reg_749);
assign or_ln34_5_fu_518_p2 = (icmp_ln34_11_reg_709 | icmp_ln34_10_reg_704);
assign or_ln34_fu_562_p2 = (icmp_ln34_reg_729 | icmp_ln34_1_reg_734);
assign position_address0 = zext_ln31_fu_316_p1;
assign position_ce0 = position_ce0_local;
assign q_x_fu_538_p1 = trunc_ln31_3_reg_714;
assign q_y_fu_506_p1 = trunc_ln31_1_reg_719;
assign q_z_fu_534_p1 = trunc_ln31_2_reg_724;
assign sum_x_2_out = sum_x_1_fu_122;
assign sum_y_2_out = sum_y_1_fu_126;
assign sum_z_2_out = sum_z_1_fu_130;
assign tmp_1_fu_321_p4 = {{position_load[62:52]}};
assign tmp_3_fu_442_p4 = {{position_q0[126:116]}};
assign tmp_4_fu_343_p4 = {{position_load[126:116]}};
assign tmp_6_fu_474_p4 = {{position_q0[190:180]}};
assign tmp_7_fu_365_p4 = {{position_load[190:180]}};
assign tmp_fu_416_p4 = {{position_q0[62:52]}};
assign trunc_ln31_3_fu_392_p1 = position_q0[63:0];
assign trunc_ln31_fu_306_p1 = ap_sig_allocacmp_q_idx_1[9:0];
assign trunc_ln34_2_fu_452_p4 = {{position_q0[115:64]}};
assign trunc_ln34_4_fu_484_p4 = {{position_q0[179:128]}};
assign trunc_ln34_fu_426_p1 = position_q0[51:0];
assign zext_ln30_fu_290_p1 = ap_sig_allocacmp_q_idx_1;
assign zext_ln31_fu_316_p1 = add_ln31_fu_310_p2;
endmodule 