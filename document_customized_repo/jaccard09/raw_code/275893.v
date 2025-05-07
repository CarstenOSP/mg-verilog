module backprop_backprop_Pipeline_label_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_5_reload,v14_3_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_0_address1,v7_0_ce1,v7_0_q1,v7_1_address0,v7_1_ce0,v7_1_q0,v7_1_address1,v7_1_ce1,v7_1_q1,v7_2_address0,v7_2_ce0,v7_2_q0,v7_2_address1,v7_2_ce1,v7_2_q1,v7_3_address0,v7_3_ce0,v7_3_q0,v7_3_address1,v7_3_ce1,v7_3_q1,v15_5_reload,v15_3_reload,v101,mul_ln179,v10_address0,v10_ce0,v10_we0,v10_d0,v10_address1,v10_ce1,v10_we1,v10_d1,v14_10_reload,v15_10_reload,grp_fu_50742_p_din0,grp_fu_50742_p_din1,grp_fu_50742_p_opcode,grp_fu_50742_p_dout0,grp_fu_50742_p_ce,grp_fu_50746_p_din0,grp_fu_50746_p_din1,grp_fu_50746_p_opcode,grp_fu_50746_p_dout0,grp_fu_50746_p_ce,grp_fu_25648_p_din0,grp_fu_25648_p_din1,grp_fu_25648_p_dout0,grp_fu_25648_p_ce,grp_fu_50762_p_din0,grp_fu_50762_p_din1,grp_fu_50762_p_dout0,grp_fu_50762_p_ce,grp_fu_50766_p_din0,grp_fu_50766_p_din1,grp_fu_50766_p_dout0,grp_fu_50766_p_ce,grp_fu_50770_p_din0,grp_fu_50770_p_din1,grp_fu_50770_p_dout0,grp_fu_50770_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v14_5_reload;
input  [63:0] v14_3_reload;
input  [8:0] mul_ln168;
output  [6:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [6:0] v7_0_address1;
output   v7_0_ce1;
input  [63:0] v7_0_q1;
output  [6:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
output  [6:0] v7_1_address1;
output   v7_1_ce1;
input  [63:0] v7_1_q1;
output  [6:0] v7_2_address0;
output   v7_2_ce0;
input  [63:0] v7_2_q0;
output  [6:0] v7_2_address1;
output   v7_2_ce1;
input  [63:0] v7_2_q1;
output  [6:0] v7_3_address0;
output   v7_3_ce0;
input  [63:0] v7_3_q0;
output  [6:0] v7_3_address1;
output   v7_3_ce1;
input  [63:0] v7_3_q1;
input  [63:0] v15_5_reload;
input  [63:0] v15_3_reload;
input  [63:0] v101;
input  [7:0] mul_ln179;
output  [7:0] v10_address0;
output   v10_ce0;
output   v10_we0;
output  [63:0] v10_d0;
output  [7:0] v10_address1;
output   v10_ce1;
output   v10_we1;
output  [63:0] v10_d1;
input  [63:0] v14_10_reload;
input  [63:0] v15_10_reload;
output  [63:0] grp_fu_50742_p_din0;
output  [63:0] grp_fu_50742_p_din1;
output  [0:0] grp_fu_50742_p_opcode;
input  [63:0] grp_fu_50742_p_dout0;
output   grp_fu_50742_p_ce;
output  [63:0] grp_fu_50746_p_din0;
output  [63:0] grp_fu_50746_p_din1;
output  [0:0] grp_fu_50746_p_opcode;
input  [63:0] grp_fu_50746_p_dout0;
output   grp_fu_50746_p_ce;
output  [63:0] grp_fu_25648_p_din0;
output  [63:0] grp_fu_25648_p_din1;
input  [63:0] grp_fu_25648_p_dout0;
output   grp_fu_25648_p_ce;
output  [63:0] grp_fu_50762_p_din0;
output  [63:0] grp_fu_50762_p_din1;
input  [63:0] grp_fu_50762_p_dout0;
output   grp_fu_50762_p_ce;
output  [63:0] grp_fu_50766_p_din0;
output  [63:0] grp_fu_50766_p_din1;
input  [63:0] grp_fu_50766_p_dout0;
output   grp_fu_50766_p_ce;
output  [63:0] grp_fu_50770_p_din0;
output  [63:0] grp_fu_50770_p_din1;
input  [63:0] grp_fu_50770_p_dout0;
output   grp_fu_50770_p_ce;
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
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_enable_reg_pp0_iter27;
reg    ap_enable_reg_pp0_iter28;
reg    ap_enable_reg_pp0_iter29;
reg    ap_enable_reg_pp0_iter30;
reg    ap_enable_reg_pp0_iter31;
reg    ap_enable_reg_pp0_iter32;
reg    ap_enable_reg_pp0_iter33;
reg    ap_enable_reg_pp0_iter34;
reg    ap_enable_reg_pp0_iter35;
reg    ap_enable_reg_pp0_iter36;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln179_fu_341_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] v102_1_reg_683;
reg   [1:0] v102_1_reg_683_pp0_iter1_reg;
reg   [1:0] v102_1_reg_683_pp0_iter2_reg;
reg   [1:0] v102_1_reg_683_pp0_iter3_reg;
reg   [1:0] v102_1_reg_683_pp0_iter4_reg;
reg   [1:0] v102_1_reg_683_pp0_iter5_reg;
reg   [1:0] v102_1_reg_683_pp0_iter6_reg;
reg   [1:0] v102_1_reg_683_pp0_iter7_reg;
reg   [1:0] v102_1_reg_683_pp0_iter8_reg;
reg   [1:0] v102_1_reg_683_pp0_iter9_reg;
reg   [1:0] v102_1_reg_683_pp0_iter10_reg;
reg   [1:0] v102_1_reg_683_pp0_iter11_reg;
reg   [1:0] v102_1_reg_683_pp0_iter12_reg;
reg   [1:0] v102_1_reg_683_pp0_iter13_reg;
reg   [1:0] v102_1_reg_683_pp0_iter14_reg;
reg   [1:0] v102_1_reg_683_pp0_iter15_reg;
reg   [1:0] v102_1_reg_683_pp0_iter16_reg;
reg   [1:0] v102_1_reg_683_pp0_iter17_reg;
reg   [1:0] v102_1_reg_683_pp0_iter18_reg;
reg   [1:0] v102_1_reg_683_pp0_iter19_reg;
reg   [1:0] v102_1_reg_683_pp0_iter20_reg;
reg   [1:0] v102_1_reg_683_pp0_iter21_reg;
reg   [1:0] v102_1_reg_683_pp0_iter22_reg;
reg   [1:0] v102_1_reg_683_pp0_iter23_reg;
reg   [1:0] v102_1_reg_683_pp0_iter24_reg;
reg   [1:0] v102_1_reg_683_pp0_iter25_reg;
reg   [1:0] v102_1_reg_683_pp0_iter26_reg;
reg   [1:0] v102_1_reg_683_pp0_iter27_reg;
reg   [1:0] v102_1_reg_683_pp0_iter28_reg;
reg   [1:0] v102_1_reg_683_pp0_iter29_reg;
reg   [1:0] v102_1_reg_683_pp0_iter30_reg;
reg   [1:0] v102_1_reg_683_pp0_iter31_reg;
reg   [1:0] v102_1_reg_683_pp0_iter32_reg;
reg   [1:0] v102_1_reg_683_pp0_iter33_reg;
reg   [1:0] v102_1_reg_683_pp0_iter34_reg;
reg   [1:0] v102_1_reg_683_pp0_iter35_reg;
wire   [8:0] add_ln181_fu_313_p2;
reg   [8:0] add_ln181_reg_689;
wire   [1:0] or_ln3_fu_333_p3;
reg   [1:0] or_ln3_reg_695;
reg   [1:0] or_ln3_reg_695_pp0_iter1_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter2_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter3_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter4_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter5_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter6_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter7_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter8_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter9_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter10_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter11_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter12_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter13_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter14_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter15_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter16_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter17_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter18_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter19_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter20_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter21_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter22_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter23_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter24_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter25_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter26_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter27_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter28_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter29_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter30_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter31_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter32_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter33_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter34_reg;
reg   [1:0] or_ln3_reg_695_pp0_iter35_reg;
reg   [0:0] icmp_ln179_reg_700;
reg   [0:0] icmp_ln179_reg_700_pp0_iter1_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter2_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter3_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter4_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter5_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter6_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter7_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter8_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter9_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter10_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter11_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter12_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter13_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter14_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter15_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter16_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter17_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter18_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter19_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter20_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter21_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter22_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter23_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter24_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter25_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter26_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter27_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter28_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter29_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter30_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter31_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter32_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter33_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter34_reg;
reg   [0:0] icmp_ln179_reg_700_pp0_iter35_reg;
wire   [8:0] add_ln181_1_fu_351_p2;
reg   [8:0] add_ln181_1_reg_704;
reg   [1:0] trunc_ln7_reg_710;
reg   [1:0] trunc_ln7_reg_710_pp0_iter2_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter3_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter4_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter5_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter6_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter7_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter8_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter9_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter10_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter11_reg;
reg   [1:0] trunc_ln7_reg_710_pp0_iter12_reg;
reg   [1:0] trunc_ln181_1_reg_715;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter2_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter3_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter4_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter5_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter6_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter7_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter8_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter9_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter10_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter11_reg;
reg   [1:0] trunc_ln181_1_reg_715_pp0_iter12_reg;
wire   [0:0] icmp_ln180_fu_448_p2;
reg   [0:0] icmp_ln180_reg_760;
reg   [0:0] icmp_ln180_reg_760_pp0_iter14_reg;
reg   [0:0] icmp_ln180_reg_760_pp0_iter15_reg;
reg   [0:0] icmp_ln180_reg_760_pp0_iter16_reg;
reg   [0:0] icmp_ln180_reg_760_pp0_iter17_reg;
reg   [0:0] icmp_ln180_reg_760_pp0_iter18_reg;
reg   [0:0] icmp_ln180_reg_760_pp0_iter19_reg;
reg   [0:0] icmp_ln180_reg_760_pp0_iter20_reg;
wire   [63:0] v104_fu_469_p11;
reg   [63:0] v104_reg_766;
wire   [63:0] v104_1_fu_508_p11;
reg   [63:0] v104_1_reg_771;
wire   [63:0] v103_fu_531_p3;
wire   [0:0] xor_ln183_2_fu_549_p2;
reg   [0:0] xor_ln183_2_reg_781;
wire   [62:0] trunc_ln183_fu_555_p1;
reg   [62:0] trunc_ln183_reg_786;
wire   [63:0] v107_fu_559_p3;
reg   [63:0] v107_reg_791;
wire   [0:0] xor_ln183_fu_576_p2;
reg   [0:0] xor_ln183_reg_796;
wire   [62:0] trunc_ln183_1_fu_582_p1;
reg   [62:0] trunc_ln183_1_reg_801;
wire   [63:0] v106_fu_592_p1;
wire   [63:0] v106_1_fu_603_p1;
reg   [63:0] v108_reg_816;
reg   [63:0] v108_1_reg_821;
reg   [63:0] v109_reg_826;
reg   [63:0] v109_1_reg_831;
wire   [63:0] zext_ln181_fu_432_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln181_1_fu_440_p1;
wire   [63:0] zext_ln187_fu_616_p1;
wire   [63:0] zext_ln187_1_fu_629_p1;
reg   [1:0] v102_fu_94;
wire   [1:0] xor_ln8_fu_381_p3;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v102_1;
reg    v7_0_ce1_local;
reg    v7_0_ce0_local;
reg    v7_1_ce1_local;
reg    v7_1_ce0_local;
reg    v7_2_ce1_local;
reg    v7_2_ce0_local;
reg    v7_3_ce1_local;
reg    v7_3_ce0_local;
reg    v10_we1_local;
reg    v10_ce1_local;
reg    v10_we0_local;
reg    v10_ce0_local;
wire   [8:0] zext_ln179_1_fu_309_p1;
wire   [8:0] grp_fu_319_p0;
wire   [7:0] grp_fu_319_p1;
wire   [0:0] tmp_fu_325_p3;
wire   [8:0] zext_ln179_3_fu_347_p1;
wire   [8:0] grp_fu_357_p0;
wire   [7:0] grp_fu_357_p1;
wire   [0:0] bit_sel4_fu_363_p3;
wire   [0:0] xor_ln179_fu_371_p2;
wire   [0:0] trunc_ln179_fu_377_p1;
wire   [8:0] mul_ln181_fu_397_p0;
wire   [10:0] mul_ln181_fu_397_p1;
wire   [18:0] mul_ln181_fu_397_p2;
wire   [8:0] mul_ln181_1_fu_416_p0;
wire   [10:0] mul_ln181_1_fu_416_p1;
wire   [18:0] mul_ln181_1_fu_416_p2;
wire   [8:0] grp_fu_319_p2;
wire   [8:0] grp_fu_357_p2;
wire   [63:0] v104_fu_469_p2;
wire   [63:0] v104_fu_469_p4;
wire   [63:0] v104_fu_469_p6;
wire   [63:0] v104_fu_469_p8;
wire   [63:0] v104_fu_469_p9;
wire   [63:0] v104_1_fu_508_p2;
wire   [63:0] v104_1_fu_508_p4;
wire   [63:0] v104_1_fu_508_p6;
wire   [63:0] v104_1_fu_508_p8;
wire   [63:0] v104_1_fu_508_p9;
wire   [63:0] bitcast_ln183_fu_537_p1;
wire   [0:0] bit_sel_fu_541_p3;
wire   [63:0] bitcast_ln183_2_fu_564_p1;
wire   [0:0] bit_sel3_fu_568_p3;
wire   [63:0] xor_ln7_fu_586_p3;
wire   [63:0] xor_ln183_1_fu_597_p3;
wire   [7:0] zext_ln179_fu_608_p1;
wire   [7:0] add_ln187_fu_611_p2;
wire   [7:0] zext_ln179_2_fu_621_p1;
wire   [7:0] add_ln187_1_fu_624_p2;
wire    ap_block_pp0_stage0_00001;
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
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg    ap_loop_exit_ready_pp0_iter26_reg;
reg    ap_loop_exit_ready_pp0_iter27_reg;
reg    ap_loop_exit_ready_pp0_iter28_reg;
reg    ap_loop_exit_ready_pp0_iter29_reg;
reg    ap_loop_exit_ready_pp0_iter30_reg;
reg    ap_loop_exit_ready_pp0_iter31_reg;
reg    ap_loop_exit_ready_pp0_iter32_reg;
reg    ap_loop_exit_ready_pp0_iter33_reg;
reg    ap_loop_exit_ready_pp0_iter34_reg;
reg    ap_loop_exit_ready_pp0_iter35_reg;
reg    ap_loop_exit_ready_pp0_iter36_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln181_1_fu_416_p00;
wire   [18:0] mul_ln181_fu_397_p00;
wire   [1:0] v104_fu_469_p1;
wire   [1:0] v104_fu_469_p3;
wire  signed [1:0] v104_fu_469_p5;
wire  signed [1:0] v104_fu_469_p7;
wire   [1:0] v104_1_fu_508_p1;
wire   [1:0] v104_1_fu_508_p3;
wire  signed [1:0] v104_1_fu_508_p5;
wire  signed [1:0] v104_1_fu_508_p7;
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
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_enable_reg_pp0_iter36 = 1'b0;
#0 v102_fu_94 = 2'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_9ns_8ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 8 ),.dout_WIDTH( 9 ))
urem_9ns_8ns_9_13_1_U2574(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_319_p0),.din1(grp_fu_319_p1),.ce(1'b1),.dout(grp_fu_319_p2));
backprop_urem_9ns_8ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 8 ),.dout_WIDTH( 9 ))
urem_9ns_8ns_9_13_1_U2575(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_357_p0),.din1(grp_fu_357_p1),.ce(1'b1),.dout(grp_fu_357_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U2576(.din0(mul_ln181_fu_397_p0),.din1(mul_ln181_fu_397_p1),.dout(mul_ln181_fu_397_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U2577(.din0(mul_ln181_1_fu_416_p0),.din1(mul_ln181_1_fu_416_p1),.dout(mul_ln181_1_fu_416_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2578(.din0(v104_fu_469_p2),.din1(v104_fu_469_p4),.din2(v104_fu_469_p6),.din3(v104_fu_469_p8),.def(v104_fu_469_p9),.sel(trunc_ln7_reg_710_pp0_iter12_reg),.dout(v104_fu_469_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2579(.din0(v104_1_fu_508_p2),.din1(v104_1_fu_508_p4),.din2(v104_1_fu_508_p6),.din3(v104_1_fu_508_p8),.def(v104_1_fu_508_p9),.sel(trunc_ln181_1_reg_715_pp0_iter12_reg),.dout(v104_1_fu_508_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter36_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter27 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter28 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter29 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
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
        ap_enable_reg_pp0_iter30 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter31 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter32 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter33 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter34 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter35 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter36 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter36 <= ap_enable_reg_pp0_iter35;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter35_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter36_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter36_reg <= ap_loop_exit_ready_pp0_iter35_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln179_fu_341_p2 == 1'd0))) begin
            v102_fu_94 <= xor_ln8_fu_381_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v102_fu_94 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln181_1_reg_704 <= add_ln181_1_fu_351_p2;
        add_ln181_reg_689 <= add_ln181_fu_313_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln179_reg_700 <= icmp_ln179_fu_341_p2;
        icmp_ln179_reg_700_pp0_iter1_reg <= icmp_ln179_reg_700;
        or_ln3_reg_695[1] <= or_ln3_fu_333_p3[1];
        or_ln3_reg_695_pp0_iter1_reg[1] <= or_ln3_reg_695[1];
        trunc_ln181_1_reg_715 <= {{mul_ln181_1_fu_416_p2[17:16]}};
        trunc_ln7_reg_710 <= {{mul_ln181_fu_397_p2[17:16]}};
        v102_1_reg_683 <= ap_sig_allocacmp_v102_1;
        v102_1_reg_683_pp0_iter1_reg <= v102_1_reg_683;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
        ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
        ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
        ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
        ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
        ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
        ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
        ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
        ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
        ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
        ap_loop_exit_ready_pp0_iter35_reg <= ap_loop_exit_ready_pp0_iter34_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln179_reg_700_pp0_iter10_reg <= icmp_ln179_reg_700_pp0_iter9_reg;
        icmp_ln179_reg_700_pp0_iter11_reg <= icmp_ln179_reg_700_pp0_iter10_reg;
        icmp_ln179_reg_700_pp0_iter12_reg <= icmp_ln179_reg_700_pp0_iter11_reg;
        icmp_ln179_reg_700_pp0_iter13_reg <= icmp_ln179_reg_700_pp0_iter12_reg;
        icmp_ln179_reg_700_pp0_iter14_reg <= icmp_ln179_reg_700_pp0_iter13_reg;
        icmp_ln179_reg_700_pp0_iter15_reg <= icmp_ln179_reg_700_pp0_iter14_reg;
        icmp_ln179_reg_700_pp0_iter16_reg <= icmp_ln179_reg_700_pp0_iter15_reg;
        icmp_ln179_reg_700_pp0_iter17_reg <= icmp_ln179_reg_700_pp0_iter16_reg;
        icmp_ln179_reg_700_pp0_iter18_reg <= icmp_ln179_reg_700_pp0_iter17_reg;
        icmp_ln179_reg_700_pp0_iter19_reg <= icmp_ln179_reg_700_pp0_iter18_reg;
        icmp_ln179_reg_700_pp0_iter20_reg <= icmp_ln179_reg_700_pp0_iter19_reg;
        icmp_ln179_reg_700_pp0_iter21_reg <= icmp_ln179_reg_700_pp0_iter20_reg;
        icmp_ln179_reg_700_pp0_iter22_reg <= icmp_ln179_reg_700_pp0_iter21_reg;
        icmp_ln179_reg_700_pp0_iter23_reg <= icmp_ln179_reg_700_pp0_iter22_reg;
        icmp_ln179_reg_700_pp0_iter24_reg <= icmp_ln179_reg_700_pp0_iter23_reg;
        icmp_ln179_reg_700_pp0_iter25_reg <= icmp_ln179_reg_700_pp0_iter24_reg;
        icmp_ln179_reg_700_pp0_iter26_reg <= icmp_ln179_reg_700_pp0_iter25_reg;
        icmp_ln179_reg_700_pp0_iter27_reg <= icmp_ln179_reg_700_pp0_iter26_reg;
        icmp_ln179_reg_700_pp0_iter28_reg <= icmp_ln179_reg_700_pp0_iter27_reg;
        icmp_ln179_reg_700_pp0_iter29_reg <= icmp_ln179_reg_700_pp0_iter28_reg;
        icmp_ln179_reg_700_pp0_iter2_reg <= icmp_ln179_reg_700_pp0_iter1_reg;
        icmp_ln179_reg_700_pp0_iter30_reg <= icmp_ln179_reg_700_pp0_iter29_reg;
        icmp_ln179_reg_700_pp0_iter31_reg <= icmp_ln179_reg_700_pp0_iter30_reg;
        icmp_ln179_reg_700_pp0_iter32_reg <= icmp_ln179_reg_700_pp0_iter31_reg;
        icmp_ln179_reg_700_pp0_iter33_reg <= icmp_ln179_reg_700_pp0_iter32_reg;
        icmp_ln179_reg_700_pp0_iter34_reg <= icmp_ln179_reg_700_pp0_iter33_reg;
        icmp_ln179_reg_700_pp0_iter35_reg <= icmp_ln179_reg_700_pp0_iter34_reg;
        icmp_ln179_reg_700_pp0_iter3_reg <= icmp_ln179_reg_700_pp0_iter2_reg;
        icmp_ln179_reg_700_pp0_iter4_reg <= icmp_ln179_reg_700_pp0_iter3_reg;
        icmp_ln179_reg_700_pp0_iter5_reg <= icmp_ln179_reg_700_pp0_iter4_reg;
        icmp_ln179_reg_700_pp0_iter6_reg <= icmp_ln179_reg_700_pp0_iter5_reg;
        icmp_ln179_reg_700_pp0_iter7_reg <= icmp_ln179_reg_700_pp0_iter6_reg;
        icmp_ln179_reg_700_pp0_iter8_reg <= icmp_ln179_reg_700_pp0_iter7_reg;
        icmp_ln179_reg_700_pp0_iter9_reg <= icmp_ln179_reg_700_pp0_iter8_reg;
        icmp_ln180_reg_760 <= icmp_ln180_fu_448_p2;
        icmp_ln180_reg_760_pp0_iter14_reg <= icmp_ln180_reg_760;
        icmp_ln180_reg_760_pp0_iter15_reg <= icmp_ln180_reg_760_pp0_iter14_reg;
        icmp_ln180_reg_760_pp0_iter16_reg <= icmp_ln180_reg_760_pp0_iter15_reg;
        icmp_ln180_reg_760_pp0_iter17_reg <= icmp_ln180_reg_760_pp0_iter16_reg;
        icmp_ln180_reg_760_pp0_iter18_reg <= icmp_ln180_reg_760_pp0_iter17_reg;
        icmp_ln180_reg_760_pp0_iter19_reg <= icmp_ln180_reg_760_pp0_iter18_reg;
        icmp_ln180_reg_760_pp0_iter20_reg <= icmp_ln180_reg_760_pp0_iter19_reg;
        or_ln3_reg_695_pp0_iter10_reg[1] <= or_ln3_reg_695_pp0_iter9_reg[1];
        or_ln3_reg_695_pp0_iter11_reg[1] <= or_ln3_reg_695_pp0_iter10_reg[1];
        or_ln3_reg_695_pp0_iter12_reg[1] <= or_ln3_reg_695_pp0_iter11_reg[1];
        or_ln3_reg_695_pp0_iter13_reg[1] <= or_ln3_reg_695_pp0_iter12_reg[1];
        or_ln3_reg_695_pp0_iter14_reg[1] <= or_ln3_reg_695_pp0_iter13_reg[1];
        or_ln3_reg_695_pp0_iter15_reg[1] <= or_ln3_reg_695_pp0_iter14_reg[1];
        or_ln3_reg_695_pp0_iter16_reg[1] <= or_ln3_reg_695_pp0_iter15_reg[1];
        or_ln3_reg_695_pp0_iter17_reg[1] <= or_ln3_reg_695_pp0_iter16_reg[1];
        or_ln3_reg_695_pp0_iter18_reg[1] <= or_ln3_reg_695_pp0_iter17_reg[1];
        or_ln3_reg_695_pp0_iter19_reg[1] <= or_ln3_reg_695_pp0_iter18_reg[1];
        or_ln3_reg_695_pp0_iter20_reg[1] <= or_ln3_reg_695_pp0_iter19_reg[1];
        or_ln3_reg_695_pp0_iter21_reg[1] <= or_ln3_reg_695_pp0_iter20_reg[1];
        or_ln3_reg_695_pp0_iter22_reg[1] <= or_ln3_reg_695_pp0_iter21_reg[1];
        or_ln3_reg_695_pp0_iter23_reg[1] <= or_ln3_reg_695_pp0_iter22_reg[1];
        or_ln3_reg_695_pp0_iter24_reg[1] <= or_ln3_reg_695_pp0_iter23_reg[1];
        or_ln3_reg_695_pp0_iter25_reg[1] <= or_ln3_reg_695_pp0_iter24_reg[1];
        or_ln3_reg_695_pp0_iter26_reg[1] <= or_ln3_reg_695_pp0_iter25_reg[1];
        or_ln3_reg_695_pp0_iter27_reg[1] <= or_ln3_reg_695_pp0_iter26_reg[1];
        or_ln3_reg_695_pp0_iter28_reg[1] <= or_ln3_reg_695_pp0_iter27_reg[1];
        or_ln3_reg_695_pp0_iter29_reg[1] <= or_ln3_reg_695_pp0_iter28_reg[1];
        or_ln3_reg_695_pp0_iter2_reg[1] <= or_ln3_reg_695_pp0_iter1_reg[1];
        or_ln3_reg_695_pp0_iter30_reg[1] <= or_ln3_reg_695_pp0_iter29_reg[1];
        or_ln3_reg_695_pp0_iter31_reg[1] <= or_ln3_reg_695_pp0_iter30_reg[1];
        or_ln3_reg_695_pp0_iter32_reg[1] <= or_ln3_reg_695_pp0_iter31_reg[1];
        or_ln3_reg_695_pp0_iter33_reg[1] <= or_ln3_reg_695_pp0_iter32_reg[1];
        or_ln3_reg_695_pp0_iter34_reg[1] <= or_ln3_reg_695_pp0_iter33_reg[1];
        or_ln3_reg_695_pp0_iter35_reg[1] <= or_ln3_reg_695_pp0_iter34_reg[1];
        or_ln3_reg_695_pp0_iter3_reg[1] <= or_ln3_reg_695_pp0_iter2_reg[1];
        or_ln3_reg_695_pp0_iter4_reg[1] <= or_ln3_reg_695_pp0_iter3_reg[1];
        or_ln3_reg_695_pp0_iter5_reg[1] <= or_ln3_reg_695_pp0_iter4_reg[1];
        or_ln3_reg_695_pp0_iter6_reg[1] <= or_ln3_reg_695_pp0_iter5_reg[1];
        or_ln3_reg_695_pp0_iter7_reg[1] <= or_ln3_reg_695_pp0_iter6_reg[1];
        or_ln3_reg_695_pp0_iter8_reg[1] <= or_ln3_reg_695_pp0_iter7_reg[1];
        or_ln3_reg_695_pp0_iter9_reg[1] <= or_ln3_reg_695_pp0_iter8_reg[1];
        trunc_ln181_1_reg_715_pp0_iter10_reg <= trunc_ln181_1_reg_715_pp0_iter9_reg;
        trunc_ln181_1_reg_715_pp0_iter11_reg <= trunc_ln181_1_reg_715_pp0_iter10_reg;
        trunc_ln181_1_reg_715_pp0_iter12_reg <= trunc_ln181_1_reg_715_pp0_iter11_reg;
        trunc_ln181_1_reg_715_pp0_iter2_reg <= trunc_ln181_1_reg_715;
        trunc_ln181_1_reg_715_pp0_iter3_reg <= trunc_ln181_1_reg_715_pp0_iter2_reg;
        trunc_ln181_1_reg_715_pp0_iter4_reg <= trunc_ln181_1_reg_715_pp0_iter3_reg;
        trunc_ln181_1_reg_715_pp0_iter5_reg <= trunc_ln181_1_reg_715_pp0_iter4_reg;
        trunc_ln181_1_reg_715_pp0_iter6_reg <= trunc_ln181_1_reg_715_pp0_iter5_reg;
        trunc_ln181_1_reg_715_pp0_iter7_reg <= trunc_ln181_1_reg_715_pp0_iter6_reg;
        trunc_ln181_1_reg_715_pp0_iter8_reg <= trunc_ln181_1_reg_715_pp0_iter7_reg;
        trunc_ln181_1_reg_715_pp0_iter9_reg <= trunc_ln181_1_reg_715_pp0_iter8_reg;
        trunc_ln183_1_reg_801 <= trunc_ln183_1_fu_582_p1;
        trunc_ln183_reg_786 <= trunc_ln183_fu_555_p1;
        trunc_ln7_reg_710_pp0_iter10_reg <= trunc_ln7_reg_710_pp0_iter9_reg;
        trunc_ln7_reg_710_pp0_iter11_reg <= trunc_ln7_reg_710_pp0_iter10_reg;
        trunc_ln7_reg_710_pp0_iter12_reg <= trunc_ln7_reg_710_pp0_iter11_reg;
        trunc_ln7_reg_710_pp0_iter2_reg <= trunc_ln7_reg_710;
        trunc_ln7_reg_710_pp0_iter3_reg <= trunc_ln7_reg_710_pp0_iter2_reg;
        trunc_ln7_reg_710_pp0_iter4_reg <= trunc_ln7_reg_710_pp0_iter3_reg;
        trunc_ln7_reg_710_pp0_iter5_reg <= trunc_ln7_reg_710_pp0_iter4_reg;
        trunc_ln7_reg_710_pp0_iter6_reg <= trunc_ln7_reg_710_pp0_iter5_reg;
        trunc_ln7_reg_710_pp0_iter7_reg <= trunc_ln7_reg_710_pp0_iter6_reg;
        trunc_ln7_reg_710_pp0_iter8_reg <= trunc_ln7_reg_710_pp0_iter7_reg;
        trunc_ln7_reg_710_pp0_iter9_reg <= trunc_ln7_reg_710_pp0_iter8_reg;
        v102_1_reg_683_pp0_iter10_reg <= v102_1_reg_683_pp0_iter9_reg;
        v102_1_reg_683_pp0_iter11_reg <= v102_1_reg_683_pp0_iter10_reg;
        v102_1_reg_683_pp0_iter12_reg <= v102_1_reg_683_pp0_iter11_reg;
        v102_1_reg_683_pp0_iter13_reg <= v102_1_reg_683_pp0_iter12_reg;
        v102_1_reg_683_pp0_iter14_reg <= v102_1_reg_683_pp0_iter13_reg;
        v102_1_reg_683_pp0_iter15_reg <= v102_1_reg_683_pp0_iter14_reg;
        v102_1_reg_683_pp0_iter16_reg <= v102_1_reg_683_pp0_iter15_reg;
        v102_1_reg_683_pp0_iter17_reg <= v102_1_reg_683_pp0_iter16_reg;
        v102_1_reg_683_pp0_iter18_reg <= v102_1_reg_683_pp0_iter17_reg;
        v102_1_reg_683_pp0_iter19_reg <= v102_1_reg_683_pp0_iter18_reg;
        v102_1_reg_683_pp0_iter20_reg <= v102_1_reg_683_pp0_iter19_reg;
        v102_1_reg_683_pp0_iter21_reg <= v102_1_reg_683_pp0_iter20_reg;
        v102_1_reg_683_pp0_iter22_reg <= v102_1_reg_683_pp0_iter21_reg;
        v102_1_reg_683_pp0_iter23_reg <= v102_1_reg_683_pp0_iter22_reg;
        v102_1_reg_683_pp0_iter24_reg <= v102_1_reg_683_pp0_iter23_reg;
        v102_1_reg_683_pp0_iter25_reg <= v102_1_reg_683_pp0_iter24_reg;
        v102_1_reg_683_pp0_iter26_reg <= v102_1_reg_683_pp0_iter25_reg;
        v102_1_reg_683_pp0_iter27_reg <= v102_1_reg_683_pp0_iter26_reg;
        v102_1_reg_683_pp0_iter28_reg <= v102_1_reg_683_pp0_iter27_reg;
        v102_1_reg_683_pp0_iter29_reg <= v102_1_reg_683_pp0_iter28_reg;
        v102_1_reg_683_pp0_iter2_reg <= v102_1_reg_683_pp0_iter1_reg;
        v102_1_reg_683_pp0_iter30_reg <= v102_1_reg_683_pp0_iter29_reg;
        v102_1_reg_683_pp0_iter31_reg <= v102_1_reg_683_pp0_iter30_reg;
        v102_1_reg_683_pp0_iter32_reg <= v102_1_reg_683_pp0_iter31_reg;
        v102_1_reg_683_pp0_iter33_reg <= v102_1_reg_683_pp0_iter32_reg;
        v102_1_reg_683_pp0_iter34_reg <= v102_1_reg_683_pp0_iter33_reg;
        v102_1_reg_683_pp0_iter35_reg <= v102_1_reg_683_pp0_iter34_reg;
        v102_1_reg_683_pp0_iter3_reg <= v102_1_reg_683_pp0_iter2_reg;
        v102_1_reg_683_pp0_iter4_reg <= v102_1_reg_683_pp0_iter3_reg;
        v102_1_reg_683_pp0_iter5_reg <= v102_1_reg_683_pp0_iter4_reg;
        v102_1_reg_683_pp0_iter6_reg <= v102_1_reg_683_pp0_iter5_reg;
        v102_1_reg_683_pp0_iter7_reg <= v102_1_reg_683_pp0_iter6_reg;
        v102_1_reg_683_pp0_iter8_reg <= v102_1_reg_683_pp0_iter7_reg;
        v102_1_reg_683_pp0_iter9_reg <= v102_1_reg_683_pp0_iter8_reg;
        v104_1_reg_771 <= v104_1_fu_508_p11;
        v104_reg_766 <= v104_fu_469_p11;
        v107_reg_791 <= v107_fu_559_p3;
        v108_1_reg_821 <= grp_fu_50762_p_dout0;
        v108_reg_816 <= grp_fu_25648_p_dout0;
        v109_1_reg_831 <= grp_fu_50770_p_dout0;
        v109_reg_826 <= grp_fu_50766_p_dout0;
        xor_ln183_2_reg_781 <= xor_ln183_2_fu_549_p2;
        xor_ln183_reg_796 <= xor_ln183_fu_576_p2;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln179_fu_341_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter36_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter36 == 1'b0)& (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v102_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v102_1 = v102_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter36 == 1'b1))) begin
        v10_ce0_local = 1'b1;
    end else begin
        v10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter36 == 1'b1))) begin
        v10_ce1_local = 1'b1;
    end else begin
        v10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln179_reg_700_pp0_iter35_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter36 == 1'b1))) begin
        v10_we0_local = 1'b1;
    end else begin
        v10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter36 == 1'b1))) begin
        v10_we1_local = 1'b1;
    end else begin
        v10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_0_ce1_local = 1'b1;
    end else begin
        v7_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_1_ce1_local = 1'b1;
    end else begin
        v7_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_2_ce0_local = 1'b1;
    end else begin
        v7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_2_ce1_local = 1'b1;
    end else begin
        v7_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_3_ce0_local = 1'b1;
    end else begin
        v7_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_3_ce1_local = 1'b1;
    end else begin
        v7_3_ce1_local = 1'b0;
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
assign add_ln181_1_fu_351_p2 = (zext_ln179_3_fu_347_p1 + mul_ln168);
assign add_ln181_fu_313_p2 = (zext_ln179_1_fu_309_p1 + mul_ln168);
assign add_ln187_1_fu_624_p2 = (zext_ln179_2_fu_621_p1 + mul_ln179);
assign add_ln187_fu_611_p2 = (zext_ln179_fu_608_p1 + mul_ln179);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel3_fu_568_p3 = bitcast_ln183_2_fu_564_p1[64'd63];
assign bit_sel4_fu_363_p3 = ap_sig_allocacmp_v102_1[2'd1];
assign bit_sel_fu_541_p3 = bitcast_ln183_fu_537_p1[64'd63];
assign bitcast_ln183_2_fu_564_p1 = grp_fu_50746_p_dout0;
assign bitcast_ln183_fu_537_p1 = grp_fu_50742_p_dout0;
assign grp_fu_25648_p_ce = 1'b1;
assign grp_fu_25648_p_din0 = v106_fu_592_p1;
assign grp_fu_25648_p_din1 = v107_reg_791;
assign grp_fu_319_p0 = (zext_ln179_1_fu_309_p1 + mul_ln168);
assign grp_fu_319_p1 = 9'd123;
assign grp_fu_357_p0 = (zext_ln179_3_fu_347_p1 + mul_ln168);
assign grp_fu_357_p1 = 9'd123;
assign grp_fu_50742_p_ce = 1'b1;
assign grp_fu_50742_p_din0 = v103_fu_531_p3;
assign grp_fu_50742_p_din1 = v104_reg_766;
assign grp_fu_50742_p_opcode = 2'd1;
assign grp_fu_50746_p_ce = 1'b1;
assign grp_fu_50746_p_din0 = v14_10_reload;
assign grp_fu_50746_p_din1 = v104_1_reg_771;
assign grp_fu_50746_p_opcode = 2'd1;
assign grp_fu_50762_p_ce = 1'b1;
assign grp_fu_50762_p_din0 = v106_1_fu_603_p1;
assign grp_fu_50762_p_din1 = v15_10_reload;
assign grp_fu_50766_p_ce = 1'b1;
assign grp_fu_50766_p_din0 = v101;
assign grp_fu_50766_p_din1 = v108_reg_816;
assign grp_fu_50770_p_ce = 1'b1;
assign grp_fu_50770_p_din0 = v101;
assign grp_fu_50770_p_din1 = v108_1_reg_821;
assign icmp_ln179_fu_341_p2 = ((or_ln3_fu_333_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln180_fu_448_p2 = ((v102_1_reg_683_pp0_iter12_reg == 2'd2) ? 1'b1 : 1'b0);
assign mul_ln181_1_fu_416_p0 = mul_ln181_1_fu_416_p00;
assign mul_ln181_1_fu_416_p00 = add_ln181_1_reg_704;
assign mul_ln181_1_fu_416_p1 = 19'd533;
assign mul_ln181_fu_397_p0 = mul_ln181_fu_397_p00;
assign mul_ln181_fu_397_p00 = add_ln181_reg_689;
assign mul_ln181_fu_397_p1 = 19'd533;
assign or_ln3_fu_333_p3 = {{tmp_fu_325_p3}, {1'd1}};
assign tmp_fu_325_p3 = ap_sig_allocacmp_v102_1[32'd1];
assign trunc_ln179_fu_377_p1 = ap_sig_allocacmp_v102_1[0:0];
assign trunc_ln183_1_fu_582_p1 = bitcast_ln183_2_fu_564_p1[62:0];
assign trunc_ln183_fu_555_p1 = bitcast_ln183_fu_537_p1[62:0];
assign v103_fu_531_p3 = ((icmp_ln180_reg_760[0:0] == 1'b1) ? v14_5_reload : v14_3_reload);
assign v104_1_fu_508_p2 = v7_0_q0;
assign v104_1_fu_508_p4 = v7_1_q0;
assign v104_1_fu_508_p6 = v7_2_q0;
assign v104_1_fu_508_p8 = v7_3_q0;
assign v104_1_fu_508_p9 = 'bx;
assign v104_fu_469_p2 = v7_0_q1;
assign v104_fu_469_p4 = v7_1_q1;
assign v104_fu_469_p6 = v7_2_q1;
assign v104_fu_469_p8 = v7_3_q1;
assign v104_fu_469_p9 = 'bx;
assign v106_1_fu_603_p1 = xor_ln183_1_fu_597_p3;
assign v106_fu_592_p1 = xor_ln7_fu_586_p3;
assign v107_fu_559_p3 = ((icmp_ln180_reg_760_pp0_iter20_reg[0:0] == 1'b1) ? v15_5_reload : v15_3_reload);
assign v10_address0 = zext_ln187_1_fu_629_p1;
assign v10_address1 = zext_ln187_fu_616_p1;
assign v10_ce0 = v10_ce0_local;
assign v10_ce1 = v10_ce1_local;
assign v10_d0 = v109_1_reg_831;
assign v10_d1 = v109_reg_826;
assign v10_we0 = v10_we0_local;
assign v10_we1 = v10_we1_local;
assign v7_0_address0 = zext_ln181_1_fu_440_p1;
assign v7_0_address1 = zext_ln181_fu_432_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_0_ce1 = v7_0_ce1_local;
assign v7_1_address0 = zext_ln181_1_fu_440_p1;
assign v7_1_address1 = zext_ln181_fu_432_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_1_ce1 = v7_1_ce1_local;
assign v7_2_address0 = zext_ln181_1_fu_440_p1;
assign v7_2_address1 = zext_ln181_fu_432_p1;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_2_ce1 = v7_2_ce1_local;
assign v7_3_address0 = zext_ln181_1_fu_440_p1;
assign v7_3_address1 = zext_ln181_fu_432_p1;
assign v7_3_ce0 = v7_3_ce0_local;
assign v7_3_ce1 = v7_3_ce1_local;
assign xor_ln179_fu_371_p2 = (bit_sel4_fu_363_p3 ^ 1'd1);
assign xor_ln183_1_fu_597_p3 = {{xor_ln183_reg_796}, {trunc_ln183_1_reg_801}};
assign xor_ln183_2_fu_549_p2 = (bit_sel_fu_541_p3 ^ 1'd1);
assign xor_ln183_fu_576_p2 = (bit_sel3_fu_568_p3 ^ 1'd1);
assign xor_ln7_fu_586_p3 = {{xor_ln183_2_reg_781}, {trunc_ln183_reg_786}};
assign xor_ln8_fu_381_p3 = {{xor_ln179_fu_371_p2}, {trunc_ln179_fu_377_p1}};
assign zext_ln179_1_fu_309_p1 = ap_sig_allocacmp_v102_1;
assign zext_ln179_2_fu_621_p1 = or_ln3_reg_695_pp0_iter35_reg;
assign zext_ln179_3_fu_347_p1 = or_ln3_fu_333_p3;
assign zext_ln179_fu_608_p1 = v102_1_reg_683_pp0_iter35_reg;
assign zext_ln181_1_fu_440_p1 = grp_fu_357_p2;
assign zext_ln181_fu_432_p1 = grp_fu_319_p2;
assign zext_ln187_1_fu_629_p1 = add_ln187_1_fu_624_p2;
assign zext_ln187_fu_616_p1 = add_ln187_fu_611_p2;
always @ (posedge ap_clk) begin
    or_ln3_reg_695[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter1_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter2_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter3_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter4_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter5_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter6_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter7_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter8_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter9_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter10_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter11_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter12_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter13_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter14_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter15_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter16_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter17_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter18_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter19_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter20_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter21_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter22_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter23_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter24_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter25_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter26_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter27_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter28_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter29_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter30_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter31_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter32_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter33_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter34_reg[0] <= 1'b1;
    or_ln3_reg_695_pp0_iter35_reg[0] <= 1'b1;
end
endmodule 