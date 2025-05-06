
module backprop_backprop_Pipeline_label_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_5_reload,v14_3_reload,mul_ln168,v7_0_address0,v7_0_ce0,v7_0_q0,v7_0_address1,v7_0_ce1,v7_0_q1,v7_1_address0,v7_1_ce0,v7_1_q0,v7_1_address1,v7_1_ce1,v7_1_q1,v7_2_address0,v7_2_ce0,v7_2_q0,v7_2_address1,v7_2_ce1,v7_2_q1,v7_3_address0,v7_3_ce0,v7_3_q0,v7_3_address1,v7_3_ce1,v7_3_q1,v7_4_address0,v7_4_ce0,v7_4_q0,v7_4_address1,v7_4_ce1,v7_4_q1,v7_5_address0,v7_5_ce0,v7_5_q0,v7_5_address1,v7_5_ce1,v7_5_q1,v7_6_address0,v7_6_ce0,v7_6_q0,v7_6_address1,v7_6_ce1,v7_6_q1,v7_7_address0,v7_7_ce0,v7_7_q0,v7_7_address1,v7_7_ce1,v7_7_q1,v75_4,v75,v101,mul_ln179,v10_address0,v10_ce0,v10_we0,v10_d0,v10_address1,v10_ce1,v10_we1,v10_d1,v14_10_reload,v75_3,grp_fu_28778_p_din0,grp_fu_28778_p_din1,grp_fu_28778_p_opcode,grp_fu_28778_p_dout0,grp_fu_28778_p_ce,grp_fu_28783_p_din0,grp_fu_28783_p_din1,grp_fu_28783_p_opcode,grp_fu_28783_p_dout0,grp_fu_28783_p_ce,grp_fu_28796_p_din0,grp_fu_28796_p_din1,grp_fu_28796_p_dout0,grp_fu_28796_p_ce,grp_fu_28800_p_din0,grp_fu_28800_p_din1,grp_fu_28800_p_dout0,grp_fu_28800_p_ce,grp_fu_28804_p_din0,grp_fu_28804_p_din1,grp_fu_28804_p_dout0,grp_fu_28804_p_ce,grp_fu_86761_p_din0,grp_fu_86761_p_din1,grp_fu_86761_p_dout0,grp_fu_86761_p_ce);  
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
output  [5:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [5:0] v7_0_address1;
output   v7_0_ce1;
input  [63:0] v7_0_q1;
output  [5:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
output  [5:0] v7_1_address1;
output   v7_1_ce1;
input  [63:0] v7_1_q1;
output  [5:0] v7_2_address0;
output   v7_2_ce0;
input  [63:0] v7_2_q0;
output  [5:0] v7_2_address1;
output   v7_2_ce1;
input  [63:0] v7_2_q1;
output  [5:0] v7_3_address0;
output   v7_3_ce0;
input  [63:0] v7_3_q0;
output  [5:0] v7_3_address1;
output   v7_3_ce1;
input  [63:0] v7_3_q1;
output  [5:0] v7_4_address0;
output   v7_4_ce0;
input  [63:0] v7_4_q0;
output  [5:0] v7_4_address1;
output   v7_4_ce1;
input  [63:0] v7_4_q1;
output  [5:0] v7_5_address0;
output   v7_5_ce0;
input  [63:0] v7_5_q0;
output  [5:0] v7_5_address1;
output   v7_5_ce1;
input  [63:0] v7_5_q1;
output  [5:0] v7_6_address0;
output   v7_6_ce0;
input  [63:0] v7_6_q0;
output  [5:0] v7_6_address1;
output   v7_6_ce1;
input  [63:0] v7_6_q1;
output  [5:0] v7_7_address0;
output   v7_7_ce0;
input  [63:0] v7_7_q0;
output  [5:0] v7_7_address1;
output   v7_7_ce1;
input  [63:0] v7_7_q1;
input  [63:0] v75_4;
input  [63:0] v75;
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
input  [63:0] v75_3;
output  [63:0] grp_fu_28778_p_din0;
output  [63:0] grp_fu_28778_p_din1;
output  [0:0] grp_fu_28778_p_opcode;
input  [63:0] grp_fu_28778_p_dout0;
output   grp_fu_28778_p_ce;
output  [63:0] grp_fu_28783_p_din0;
output  [63:0] grp_fu_28783_p_din1;
output  [0:0] grp_fu_28783_p_opcode;
input  [63:0] grp_fu_28783_p_dout0;
output   grp_fu_28783_p_ce;
output  [63:0] grp_fu_28796_p_din0;
output  [63:0] grp_fu_28796_p_din1;
input  [63:0] grp_fu_28796_p_dout0;
output   grp_fu_28796_p_ce;
output  [63:0] grp_fu_28800_p_din0;
output  [63:0] grp_fu_28800_p_din1;
input  [63:0] grp_fu_28800_p_dout0;
output   grp_fu_28800_p_ce;
output  [63:0] grp_fu_28804_p_din0;
output  [63:0] grp_fu_28804_p_din1;
input  [63:0] grp_fu_28804_p_dout0;
output   grp_fu_28804_p_ce;
output  [63:0] grp_fu_86761_p_din0;
output  [63:0] grp_fu_86761_p_din1;
input  [63:0] grp_fu_86761_p_dout0;
output   grp_fu_86761_p_ce;
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
wire   [0:0] icmp_ln179_fu_465_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] v102_1_reg_879;
reg   [1:0] v102_1_reg_879_pp0_iter1_reg;
reg   [1:0] v102_1_reg_879_pp0_iter2_reg;
reg   [1:0] v102_1_reg_879_pp0_iter3_reg;
reg   [1:0] v102_1_reg_879_pp0_iter4_reg;
reg   [1:0] v102_1_reg_879_pp0_iter5_reg;
reg   [1:0] v102_1_reg_879_pp0_iter6_reg;
reg   [1:0] v102_1_reg_879_pp0_iter7_reg;
reg   [1:0] v102_1_reg_879_pp0_iter8_reg;
reg   [1:0] v102_1_reg_879_pp0_iter9_reg;
reg   [1:0] v102_1_reg_879_pp0_iter10_reg;
reg   [1:0] v102_1_reg_879_pp0_iter11_reg;
reg   [1:0] v102_1_reg_879_pp0_iter12_reg;
reg   [1:0] v102_1_reg_879_pp0_iter13_reg;
reg   [1:0] v102_1_reg_879_pp0_iter14_reg;
reg   [1:0] v102_1_reg_879_pp0_iter15_reg;
reg   [1:0] v102_1_reg_879_pp0_iter16_reg;
reg   [1:0] v102_1_reg_879_pp0_iter17_reg;
reg   [1:0] v102_1_reg_879_pp0_iter18_reg;
reg   [1:0] v102_1_reg_879_pp0_iter19_reg;
reg   [1:0] v102_1_reg_879_pp0_iter20_reg;
reg   [1:0] v102_1_reg_879_pp0_iter21_reg;
reg   [1:0] v102_1_reg_879_pp0_iter22_reg;
reg   [1:0] v102_1_reg_879_pp0_iter23_reg;
reg   [1:0] v102_1_reg_879_pp0_iter24_reg;
reg   [1:0] v102_1_reg_879_pp0_iter25_reg;
reg   [1:0] v102_1_reg_879_pp0_iter26_reg;
reg   [1:0] v102_1_reg_879_pp0_iter27_reg;
reg   [1:0] v102_1_reg_879_pp0_iter28_reg;
reg   [1:0] v102_1_reg_879_pp0_iter29_reg;
reg   [1:0] v102_1_reg_879_pp0_iter30_reg;
reg   [1:0] v102_1_reg_879_pp0_iter31_reg;
reg   [1:0] v102_1_reg_879_pp0_iter32_reg;
reg   [1:0] v102_1_reg_879_pp0_iter33_reg;
reg   [1:0] v102_1_reg_879_pp0_iter34_reg;
reg   [1:0] v102_1_reg_879_pp0_iter35_reg;
wire   [8:0] add_ln181_fu_437_p2;
reg   [8:0] add_ln181_reg_885;
wire   [1:0] or_ln3_fu_457_p3;
reg   [1:0] or_ln3_reg_891;
reg   [1:0] or_ln3_reg_891_pp0_iter1_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter2_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter3_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter4_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter5_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter6_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter7_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter8_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter9_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter10_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter11_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter12_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter13_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter14_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter15_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter16_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter17_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter18_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter19_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter20_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter21_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter22_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter23_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter24_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter25_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter26_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter27_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter28_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter29_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter30_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter31_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter32_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter33_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter34_reg;
reg   [1:0] or_ln3_reg_891_pp0_iter35_reg;
reg   [0:0] icmp_ln179_reg_896;
reg   [0:0] icmp_ln179_reg_896_pp0_iter1_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter2_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter3_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter4_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter5_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter6_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter7_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter8_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter9_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter10_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter11_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter12_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter13_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter14_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter15_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter16_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter17_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter18_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter19_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter20_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter21_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter22_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter23_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter24_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter25_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter26_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter27_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter28_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter29_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter30_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter31_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter32_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter33_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter34_reg;
reg   [0:0] icmp_ln179_reg_896_pp0_iter35_reg;
wire   [8:0] add_ln181_1_fu_475_p2;
reg   [8:0] add_ln181_1_reg_900;
reg   [2:0] trunc_ln9_reg_906;
reg   [2:0] trunc_ln9_reg_906_pp0_iter2_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter3_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter4_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter5_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter6_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter7_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter8_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter9_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter10_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter11_reg;
reg   [2:0] trunc_ln9_reg_906_pp0_iter12_reg;
reg   [2:0] trunc_ln181_1_reg_911;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter2_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter3_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter4_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter5_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter6_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter7_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter8_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter9_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter10_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter11_reg;
reg   [2:0] trunc_ln181_1_reg_911_pp0_iter12_reg;
wire   [0:0] icmp_ln180_fu_580_p2;
reg   [0:0] icmp_ln180_reg_996;
reg   [0:0] icmp_ln180_reg_996_pp0_iter14_reg;
reg   [0:0] icmp_ln180_reg_996_pp0_iter15_reg;
reg   [0:0] icmp_ln180_reg_996_pp0_iter16_reg;
reg   [0:0] icmp_ln180_reg_996_pp0_iter17_reg;
reg   [0:0] icmp_ln180_reg_996_pp0_iter18_reg;
reg   [0:0] icmp_ln180_reg_996_pp0_iter19_reg;
reg   [0:0] icmp_ln180_reg_996_pp0_iter20_reg;
wire   [63:0] v104_fu_617_p19;
reg   [63:0] v104_reg_1002;
wire   [63:0] v104_1_fu_688_p19;
reg   [63:0] v104_1_reg_1007;
wire   [63:0] v103_fu_727_p3;
wire   [0:0] xor_ln183_2_fu_745_p2;
reg   [0:0] xor_ln183_2_reg_1017;
wire   [62:0] trunc_ln183_fu_751_p1;
reg   [62:0] trunc_ln183_reg_1022;
wire   [63:0] v107_fu_755_p3;
reg   [63:0] v107_reg_1027;
wire   [0:0] xor_ln183_fu_772_p2;
reg   [0:0] xor_ln183_reg_1032;
wire   [62:0] trunc_ln183_1_fu_778_p1;
reg   [62:0] trunc_ln183_1_reg_1037;
wire   [63:0] v106_fu_788_p1;
wire   [63:0] v106_1_fu_799_p1;
reg   [63:0] v108_reg_1052;
reg   [63:0] v108_1_reg_1057;
reg   [63:0] v109_reg_1062;
reg   [63:0] v109_1_reg_1067;
wire   [63:0] zext_ln181_fu_556_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln181_1_fu_568_p1;
wire   [63:0] zext_ln187_fu_812_p1;
wire   [63:0] zext_ln187_1_fu_825_p1;
reg   [1:0] v102_fu_118;
wire   [1:0] xor_ln8_fu_505_p3;
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
reg    v7_4_ce1_local;
reg    v7_4_ce0_local;
reg    v7_5_ce1_local;
reg    v7_5_ce0_local;
reg    v7_6_ce1_local;
reg    v7_6_ce0_local;
reg    v7_7_ce1_local;
reg    v7_7_ce0_local;
reg    v10_we1_local;
reg    v10_ce1_local;
reg    v10_we0_local;
reg    v10_ce0_local;
wire   [8:0] zext_ln179_1_fu_433_p1;
wire   [8:0] grp_fu_443_p0;
wire   [6:0] grp_fu_443_p1;
wire   [0:0] tmp_fu_449_p3;
wire   [8:0] zext_ln179_3_fu_471_p1;
wire   [8:0] grp_fu_481_p0;
wire   [6:0] grp_fu_481_p1;
wire   [0:0] bit_sel4_fu_487_p3;
wire   [0:0] xor_ln179_fu_495_p2;
wire   [0:0] trunc_ln179_fu_501_p1;
wire   [8:0] mul_ln181_fu_521_p0;
wire   [10:0] mul_ln181_fu_521_p1;
wire   [18:0] mul_ln181_fu_521_p2;
wire   [8:0] mul_ln181_1_fu_540_p0;
wire   [10:0] mul_ln181_1_fu_540_p1;
wire   [18:0] mul_ln181_1_fu_540_p2;
wire   [8:0] grp_fu_443_p2;
wire   [8:0] grp_fu_481_p2;
wire   [63:0] v104_fu_617_p2;
wire   [63:0] v104_fu_617_p4;
wire   [63:0] v104_fu_617_p6;
wire   [63:0] v104_fu_617_p8;
wire   [63:0] v104_fu_617_p10;
wire   [63:0] v104_fu_617_p12;
wire   [63:0] v104_fu_617_p14;
wire   [63:0] v104_fu_617_p16;
wire   [63:0] v104_fu_617_p17;
wire   [63:0] v104_1_fu_688_p2;
wire   [63:0] v104_1_fu_688_p4;
wire   [63:0] v104_1_fu_688_p6;
wire   [63:0] v104_1_fu_688_p8;
wire   [63:0] v104_1_fu_688_p10;
wire   [63:0] v104_1_fu_688_p12;
wire   [63:0] v104_1_fu_688_p14;
wire   [63:0] v104_1_fu_688_p16;
wire   [63:0] v104_1_fu_688_p17;
wire   [63:0] bitcast_ln183_fu_733_p1;
wire   [0:0] bit_sel_fu_737_p3;
wire   [63:0] bitcast_ln183_2_fu_760_p1;
wire   [0:0] bit_sel3_fu_764_p3;
wire   [63:0] xor_ln7_fu_782_p3;
wire   [63:0] xor_ln183_1_fu_793_p3;
wire   [7:0] zext_ln179_fu_804_p1;
wire   [7:0] add_ln187_fu_807_p2;
wire   [7:0] zext_ln179_2_fu_817_p1;
wire   [7:0] add_ln187_1_fu_820_p2;
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
wire   [18:0] mul_ln181_1_fu_540_p00;
wire   [18:0] mul_ln181_fu_521_p00;
wire   [2:0] v104_fu_617_p1;
wire   [2:0] v104_fu_617_p3;
wire   [2:0] v104_fu_617_p5;
wire   [2:0] v104_fu_617_p7;
wire  signed [2:0] v104_fu_617_p9;
wire  signed [2:0] v104_fu_617_p11;
wire  signed [2:0] v104_fu_617_p13;
wire  signed [2:0] v104_fu_617_p15;
wire   [2:0] v104_1_fu_688_p1;
wire   [2:0] v104_1_fu_688_p3;
wire   [2:0] v104_1_fu_688_p5;
wire   [2:0] v104_1_fu_688_p7;
wire  signed [2:0] v104_1_fu_688_p9;
wire  signed [2:0] v104_1_fu_688_p11;
wire  signed [2:0] v104_1_fu_688_p13;
wire  signed [2:0] v104_1_fu_688_p15;
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
#0 v102_fu_118 = 2'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_9ns_7ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 7 ),.dout_WIDTH( 9 ))
urem_9ns_7ns_9_13_1_U2608(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_443_p0),.din1(grp_fu_443_p1),.ce(1'b1),.dout(grp_fu_443_p2));
backprop_urem_9ns_7ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 7 ),.dout_WIDTH( 9 ))
urem_9ns_7ns_9_13_1_U2609(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_481_p0),.din1(grp_fu_481_p1),.ce(1'b1),.dout(grp_fu_481_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U2610(.din0(mul_ln181_fu_521_p0),.din1(mul_ln181_fu_521_p1),.dout(mul_ln181_fu_521_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U2611(.din0(mul_ln181_1_fu_540_p0),.din1(mul_ln181_1_fu_540_p1),.dout(mul_ln181_1_fu_540_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U2612(.din0(v104_fu_617_p2),.din1(v104_fu_617_p4),.din2(v104_fu_617_p6),.din3(v104_fu_617_p8),.din4(v104_fu_617_p10),.din5(v104_fu_617_p12),.din6(v104_fu_617_p14),.din7(v104_fu_617_p16),.def(v104_fu_617_p17),.sel(trunc_ln9_reg_906_pp0_iter12_reg),.dout(v104_fu_617_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U2613(.din0(v104_1_fu_688_p2),.din1(v104_1_fu_688_p4),.din2(v104_1_fu_688_p6),.din3(v104_1_fu_688_p8),.din4(v104_1_fu_688_p10),.din5(v104_1_fu_688_p12),.din6(v104_1_fu_688_p14),.din7(v104_1_fu_688_p16),.def(v104_1_fu_688_p17),.sel(trunc_ln181_1_reg_911_pp0_iter12_reg),.dout(v104_1_fu_688_p19));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln179_fu_465_p2 == 1'd0))) begin
            v102_fu_118 <= xor_ln8_fu_505_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v102_fu_118 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln181_1_reg_900 <= add_ln181_1_fu_475_p2;
        add_ln181_reg_885 <= add_ln181_fu_437_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln179_reg_896 <= icmp_ln179_fu_465_p2;
        icmp_ln179_reg_896_pp0_iter1_reg <= icmp_ln179_reg_896;
        or_ln3_reg_891[1] <= or_ln3_fu_457_p3[1];
        or_ln3_reg_891_pp0_iter1_reg[1] <= or_ln3_reg_891[1];
        trunc_ln181_1_reg_911 <= {{mul_ln181_1_fu_540_p2[17:15]}};
        trunc_ln9_reg_906 <= {{mul_ln181_fu_521_p2[17:15]}};
        v102_1_reg_879 <= ap_sig_allocacmp_v102_1;
        v102_1_reg_879_pp0_iter1_reg <= v102_1_reg_879;
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
        icmp_ln179_reg_896_pp0_iter10_reg <= icmp_ln179_reg_896_pp0_iter9_reg;
        icmp_ln179_reg_896_pp0_iter11_reg <= icmp_ln179_reg_896_pp0_iter10_reg;
        icmp_ln179_reg_896_pp0_iter12_reg <= icmp_ln179_reg_896_pp0_iter11_reg;
        icmp_ln179_reg_896_pp0_iter13_reg <= icmp_ln179_reg_896_pp0_iter12_reg;
        icmp_ln179_reg_896_pp0_iter14_reg <= icmp_ln179_reg_896_pp0_iter13_reg;
        icmp_ln179_reg_896_pp0_iter15_reg <= icmp_ln179_reg_896_pp0_iter14_reg;
        icmp_ln179_reg_896_pp0_iter16_reg <= icmp_ln179_reg_896_pp0_iter15_reg;
        icmp_ln179_reg_896_pp0_iter17_reg <= icmp_ln179_reg_896_pp0_iter16_reg;
        icmp_ln179_reg_896_pp0_iter18_reg <= icmp_ln179_reg_896_pp0_iter17_reg;
        icmp_ln179_reg_896_pp0_iter19_reg <= icmp_ln179_reg_896_pp0_iter18_reg;
        icmp_ln179_reg_896_pp0_iter20_reg <= icmp_ln179_reg_896_pp0_iter19_reg;
        icmp_ln179_reg_896_pp0_iter21_reg <= icmp_ln179_reg_896_pp0_iter20_reg;
        icmp_ln179_reg_896_pp0_iter22_reg <= icmp_ln179_reg_896_pp0_iter21_reg;
        icmp_ln179_reg_896_pp0_iter23_reg <= icmp_ln179_reg_896_pp0_iter22_reg;
        icmp_ln179_reg_896_pp0_iter24_reg <= icmp_ln179_reg_896_pp0_iter23_reg;
        icmp_ln179_reg_896_pp0_iter25_reg <= icmp_ln179_reg_896_pp0_iter24_reg;
        icmp_ln179_reg_896_pp0_iter26_reg <= icmp_ln179_reg_896_pp0_iter25_reg;
        icmp_ln179_reg_896_pp0_iter27_reg <= icmp_ln179_reg_896_pp0_iter26_reg;
        icmp_ln179_reg_896_pp0_iter28_reg <= icmp_ln179_reg_896_pp0_iter27_reg;
        icmp_ln179_reg_896_pp0_iter29_reg <= icmp_ln179_reg_896_pp0_iter28_reg;
        icmp_ln179_reg_896_pp0_iter2_reg <= icmp_ln179_reg_896_pp0_iter1_reg;
        icmp_ln179_reg_896_pp0_iter30_reg <= icmp_ln179_reg_896_pp0_iter29_reg;
        icmp_ln179_reg_896_pp0_iter31_reg <= icmp_ln179_reg_896_pp0_iter30_reg;
        icmp_ln179_reg_896_pp0_iter32_reg <= icmp_ln179_reg_896_pp0_iter31_reg;
        icmp_ln179_reg_896_pp0_iter33_reg <= icmp_ln179_reg_896_pp0_iter32_reg;
        icmp_ln179_reg_896_pp0_iter34_reg <= icmp_ln179_reg_896_pp0_iter33_reg;
        icmp_ln179_reg_896_pp0_iter35_reg <= icmp_ln179_reg_896_pp0_iter34_reg;
        icmp_ln179_reg_896_pp0_iter3_reg <= icmp_ln179_reg_896_pp0_iter2_reg;
        icmp_ln179_reg_896_pp0_iter4_reg <= icmp_ln179_reg_896_pp0_iter3_reg;
        icmp_ln179_reg_896_pp0_iter5_reg <= icmp_ln179_reg_896_pp0_iter4_reg;
        icmp_ln179_reg_896_pp0_iter6_reg <= icmp_ln179_reg_896_pp0_iter5_reg;
        icmp_ln179_reg_896_pp0_iter7_reg <= icmp_ln179_reg_896_pp0_iter6_reg;
        icmp_ln179_reg_896_pp0_iter8_reg <= icmp_ln179_reg_896_pp0_iter7_reg;
        icmp_ln179_reg_896_pp0_iter9_reg <= icmp_ln179_reg_896_pp0_iter8_reg;
        icmp_ln180_reg_996 <= icmp_ln180_fu_580_p2;
        icmp_ln180_reg_996_pp0_iter14_reg <= icmp_ln180_reg_996;
        icmp_ln180_reg_996_pp0_iter15_reg <= icmp_ln180_reg_996_pp0_iter14_reg;
        icmp_ln180_reg_996_pp0_iter16_reg <= icmp_ln180_reg_996_pp0_iter15_reg;
        icmp_ln180_reg_996_pp0_iter17_reg <= icmp_ln180_reg_996_pp0_iter16_reg;
        icmp_ln180_reg_996_pp0_iter18_reg <= icmp_ln180_reg_996_pp0_iter17_reg;
        icmp_ln180_reg_996_pp0_iter19_reg <= icmp_ln180_reg_996_pp0_iter18_reg;
        icmp_ln180_reg_996_pp0_iter20_reg <= icmp_ln180_reg_996_pp0_iter19_reg;
        or_ln3_reg_891_pp0_iter10_reg[1] <= or_ln3_reg_891_pp0_iter9_reg[1];
        or_ln3_reg_891_pp0_iter11_reg[1] <= or_ln3_reg_891_pp0_iter10_reg[1];
        or_ln3_reg_891_pp0_iter12_reg[1] <= or_ln3_reg_891_pp0_iter11_reg[1];
        or_ln3_reg_891_pp0_iter13_reg[1] <= or_ln3_reg_891_pp0_iter12_reg[1];
        or_ln3_reg_891_pp0_iter14_reg[1] <= or_ln3_reg_891_pp0_iter13_reg[1];
        or_ln3_reg_891_pp0_iter15_reg[1] <= or_ln3_reg_891_pp0_iter14_reg[1];
        or_ln3_reg_891_pp0_iter16_reg[1] <= or_ln3_reg_891_pp0_iter15_reg[1];
        or_ln3_reg_891_pp0_iter17_reg[1] <= or_ln3_reg_891_pp0_iter16_reg[1];
        or_ln3_reg_891_pp0_iter18_reg[1] <= or_ln3_reg_891_pp0_iter17_reg[1];
        or_ln3_reg_891_pp0_iter19_reg[1] <= or_ln3_reg_891_pp0_iter18_reg[1];
        or_ln3_reg_891_pp0_iter20_reg[1] <= or_ln3_reg_891_pp0_iter19_reg[1];
        or_ln3_reg_891_pp0_iter21_reg[1] <= or_ln3_reg_891_pp0_iter20_reg[1];
        or_ln3_reg_891_pp0_iter22_reg[1] <= or_ln3_reg_891_pp0_iter21_reg[1];
        or_ln3_reg_891_pp0_iter23_reg[1] <= or_ln3_reg_891_pp0_iter22_reg[1];
        or_ln3_reg_891_pp0_iter24_reg[1] <= or_ln3_reg_891_pp0_iter23_reg[1];
        or_ln3_reg_891_pp0_iter25_reg[1] <= or_ln3_reg_891_pp0_iter24_reg[1];
        or_ln3_reg_891_pp0_iter26_reg[1] <= or_ln3_reg_891_pp0_iter25_reg[1];
        or_ln3_reg_891_pp0_iter27_reg[1] <= or_ln3_reg_891_pp0_iter26_reg[1];
        or_ln3_reg_891_pp0_iter28_reg[1] <= or_ln3_reg_891_pp0_iter27_reg[1];
        or_ln3_reg_891_pp0_iter29_reg[1] <= or_ln3_reg_891_pp0_iter28_reg[1];
        or_ln3_reg_891_pp0_iter2_reg[1] <= or_ln3_reg_891_pp0_iter1_reg[1];
        or_ln3_reg_891_pp0_iter30_reg[1] <= or_ln3_reg_891_pp0_iter29_reg[1];
        or_ln3_reg_891_pp0_iter31_reg[1] <= or_ln3_reg_891_pp0_iter30_reg[1];
        or_ln3_reg_891_pp0_iter32_reg[1] <= or_ln3_reg_891_pp0_iter31_reg[1];
        or_ln3_reg_891_pp0_iter33_reg[1] <= or_ln3_reg_891_pp0_iter32_reg[1];
        or_ln3_reg_891_pp0_iter34_reg[1] <= or_ln3_reg_891_pp0_iter33_reg[1];
        or_ln3_reg_891_pp0_iter35_reg[1] <= or_ln3_reg_891_pp0_iter34_reg[1];
        or_ln3_reg_891_pp0_iter3_reg[1] <= or_ln3_reg_891_pp0_iter2_reg[1];
        or_ln3_reg_891_pp0_iter4_reg[1] <= or_ln3_reg_891_pp0_iter3_reg[1];
        or_ln3_reg_891_pp0_iter5_reg[1] <= or_ln3_reg_891_pp0_iter4_reg[1];
        or_ln3_reg_891_pp0_iter6_reg[1] <= or_ln3_reg_891_pp0_iter5_reg[1];
        or_ln3_reg_891_pp0_iter7_reg[1] <= or_ln3_reg_891_pp0_iter6_reg[1];
        or_ln3_reg_891_pp0_iter8_reg[1] <= or_ln3_reg_891_pp0_iter7_reg[1];
        or_ln3_reg_891_pp0_iter9_reg[1] <= or_ln3_reg_891_pp0_iter8_reg[1];
        trunc_ln181_1_reg_911_pp0_iter10_reg <= trunc_ln181_1_reg_911_pp0_iter9_reg;
        trunc_ln181_1_reg_911_pp0_iter11_reg <= trunc_ln181_1_reg_911_pp0_iter10_reg;
        trunc_ln181_1_reg_911_pp0_iter12_reg <= trunc_ln181_1_reg_911_pp0_iter11_reg;
        trunc_ln181_1_reg_911_pp0_iter2_reg <= trunc_ln181_1_reg_911;
        trunc_ln181_1_reg_911_pp0_iter3_reg <= trunc_ln181_1_reg_911_pp0_iter2_reg;
        trunc_ln181_1_reg_911_pp0_iter4_reg <= trunc_ln181_1_reg_911_pp0_iter3_reg;
        trunc_ln181_1_reg_911_pp0_iter5_reg <= trunc_ln181_1_reg_911_pp0_iter4_reg;
        trunc_ln181_1_reg_911_pp0_iter6_reg <= trunc_ln181_1_reg_911_pp0_iter5_reg;
        trunc_ln181_1_reg_911_pp0_iter7_reg <= trunc_ln181_1_reg_911_pp0_iter6_reg;
        trunc_ln181_1_reg_911_pp0_iter8_reg <= trunc_ln181_1_reg_911_pp0_iter7_reg;
        trunc_ln181_1_reg_911_pp0_iter9_reg <= trunc_ln181_1_reg_911_pp0_iter8_reg;
        trunc_ln183_1_reg_1037 <= trunc_ln183_1_fu_778_p1;
        trunc_ln183_reg_1022 <= trunc_ln183_fu_751_p1;
        trunc_ln9_reg_906_pp0_iter10_reg <= trunc_ln9_reg_906_pp0_iter9_reg;
        trunc_ln9_reg_906_pp0_iter11_reg <= trunc_ln9_reg_906_pp0_iter10_reg;
        trunc_ln9_reg_906_pp0_iter12_reg <= trunc_ln9_reg_906_pp0_iter11_reg;
        trunc_ln9_reg_906_pp0_iter2_reg <= trunc_ln9_reg_906;
        trunc_ln9_reg_906_pp0_iter3_reg <= trunc_ln9_reg_906_pp0_iter2_reg;
        trunc_ln9_reg_906_pp0_iter4_reg <= trunc_ln9_reg_906_pp0_iter3_reg;
        trunc_ln9_reg_906_pp0_iter5_reg <= trunc_ln9_reg_906_pp0_iter4_reg;
        trunc_ln9_reg_906_pp0_iter6_reg <= trunc_ln9_reg_906_pp0_iter5_reg;
        trunc_ln9_reg_906_pp0_iter7_reg <= trunc_ln9_reg_906_pp0_iter6_reg;
        trunc_ln9_reg_906_pp0_iter8_reg <= trunc_ln9_reg_906_pp0_iter7_reg;
        trunc_ln9_reg_906_pp0_iter9_reg <= trunc_ln9_reg_906_pp0_iter8_reg;
        v102_1_reg_879_pp0_iter10_reg <= v102_1_reg_879_pp0_iter9_reg;
        v102_1_reg_879_pp0_iter11_reg <= v102_1_reg_879_pp0_iter10_reg;
        v102_1_reg_879_pp0_iter12_reg <= v102_1_reg_879_pp0_iter11_reg;
        v102_1_reg_879_pp0_iter13_reg <= v102_1_reg_879_pp0_iter12_reg;
        v102_1_reg_879_pp0_iter14_reg <= v102_1_reg_879_pp0_iter13_reg;
        v102_1_reg_879_pp0_iter15_reg <= v102_1_reg_879_pp0_iter14_reg;
        v102_1_reg_879_pp0_iter16_reg <= v102_1_reg_879_pp0_iter15_reg;
        v102_1_reg_879_pp0_iter17_reg <= v102_1_reg_879_pp0_iter16_reg;
        v102_1_reg_879_pp0_iter18_reg <= v102_1_reg_879_pp0_iter17_reg;
        v102_1_reg_879_pp0_iter19_reg <= v102_1_reg_879_pp0_iter18_reg;
        v102_1_reg_879_pp0_iter20_reg <= v102_1_reg_879_pp0_iter19_reg;
        v102_1_reg_879_pp0_iter21_reg <= v102_1_reg_879_pp0_iter20_reg;
        v102_1_reg_879_pp0_iter22_reg <= v102_1_reg_879_pp0_iter21_reg;
        v102_1_reg_879_pp0_iter23_reg <= v102_1_reg_879_pp0_iter22_reg;
        v102_1_reg_879_pp0_iter24_reg <= v102_1_reg_879_pp0_iter23_reg;
        v102_1_reg_879_pp0_iter25_reg <= v102_1_reg_879_pp0_iter24_reg;
        v102_1_reg_879_pp0_iter26_reg <= v102_1_reg_879_pp0_iter25_reg;
        v102_1_reg_879_pp0_iter27_reg <= v102_1_reg_879_pp0_iter26_reg;
        v102_1_reg_879_pp0_iter28_reg <= v102_1_reg_879_pp0_iter27_reg;
        v102_1_reg_879_pp0_iter29_reg <= v102_1_reg_879_pp0_iter28_reg;
        v102_1_reg_879_pp0_iter2_reg <= v102_1_reg_879_pp0_iter1_reg;
        v102_1_reg_879_pp0_iter30_reg <= v102_1_reg_879_pp0_iter29_reg;
        v102_1_reg_879_pp0_iter31_reg <= v102_1_reg_879_pp0_iter30_reg;
        v102_1_reg_879_pp0_iter32_reg <= v102_1_reg_879_pp0_iter31_reg;
        v102_1_reg_879_pp0_iter33_reg <= v102_1_reg_879_pp0_iter32_reg;
        v102_1_reg_879_pp0_iter34_reg <= v102_1_reg_879_pp0_iter33_reg;
        v102_1_reg_879_pp0_iter35_reg <= v102_1_reg_879_pp0_iter34_reg;
        v102_1_reg_879_pp0_iter3_reg <= v102_1_reg_879_pp0_iter2_reg;
        v102_1_reg_879_pp0_iter4_reg <= v102_1_reg_879_pp0_iter3_reg;
        v102_1_reg_879_pp0_iter5_reg <= v102_1_reg_879_pp0_iter4_reg;
        v102_1_reg_879_pp0_iter6_reg <= v102_1_reg_879_pp0_iter5_reg;
        v102_1_reg_879_pp0_iter7_reg <= v102_1_reg_879_pp0_iter6_reg;
        v102_1_reg_879_pp0_iter8_reg <= v102_1_reg_879_pp0_iter7_reg;
        v102_1_reg_879_pp0_iter9_reg <= v102_1_reg_879_pp0_iter8_reg;
        v104_1_reg_1007 <= v104_1_fu_688_p19;
        v104_reg_1002 <= v104_fu_617_p19;
        v107_reg_1027 <= v107_fu_755_p3;
        v108_1_reg_1057 <= grp_fu_28800_p_dout0;
        v108_reg_1052 <= grp_fu_28796_p_dout0;
        v109_1_reg_1067 <= grp_fu_86761_p_dout0;
        v109_reg_1062 <= grp_fu_28804_p_dout0;
        xor_ln183_2_reg_1017 <= xor_ln183_2_fu_745_p2;
        xor_ln183_reg_1032 <= xor_ln183_fu_772_p2;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln179_fu_465_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_sig_allocacmp_v102_1 = v102_fu_118;
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
    if (((icmp_ln179_reg_896_pp0_iter35_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter36 == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_4_ce0_local = 1'b1;
    end else begin
        v7_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_4_ce1_local = 1'b1;
    end else begin
        v7_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_5_ce0_local = 1'b1;
    end else begin
        v7_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_5_ce1_local = 1'b1;
    end else begin
        v7_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_6_ce0_local = 1'b1;
    end else begin
        v7_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_6_ce1_local = 1'b1;
    end else begin
        v7_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_7_ce0_local = 1'b1;
    end else begin
        v7_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v7_7_ce1_local = 1'b1;
    end else begin
        v7_7_ce1_local = 1'b0;
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
assign add_ln181_1_fu_475_p2 = (zext_ln179_3_fu_471_p1 + mul_ln168);
assign add_ln181_fu_437_p2 = (zext_ln179_1_fu_433_p1 + mul_ln168);
assign add_ln187_1_fu_820_p2 = (zext_ln179_2_fu_817_p1 + mul_ln179);
assign add_ln187_fu_807_p2 = (zext_ln179_fu_804_p1 + mul_ln179);
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
assign bit_sel3_fu_764_p3 = bitcast_ln183_2_fu_760_p1[64'd63];
assign bit_sel4_fu_487_p3 = ap_sig_allocacmp_v102_1[2'd1];
assign bit_sel_fu_737_p3 = bitcast_ln183_fu_733_p1[64'd63];
assign bitcast_ln183_2_fu_760_p1 = grp_fu_28783_p_dout0;
assign bitcast_ln183_fu_733_p1 = grp_fu_28778_p_dout0;
assign grp_fu_28778_p_ce = 1'b1;
assign grp_fu_28778_p_din0 = v103_fu_727_p3;
assign grp_fu_28778_p_din1 = v104_reg_1002;
assign grp_fu_28778_p_opcode = 2'd1;
assign grp_fu_28783_p_ce = 1'b1;
assign grp_fu_28783_p_din0 = v14_10_reload;
assign grp_fu_28783_p_din1 = v104_1_reg_1007;
assign grp_fu_28783_p_opcode = 2'd1;
assign grp_fu_28796_p_ce = 1'b1;
assign grp_fu_28796_p_din0 = v106_fu_788_p1;
assign grp_fu_28796_p_din1 = v107_reg_1027;
assign grp_fu_28800_p_ce = 1'b1;
assign grp_fu_28800_p_din0 = v106_1_fu_799_p1;
assign grp_fu_28800_p_din1 = v75_3;
assign grp_fu_28804_p_ce = 1'b1;
assign grp_fu_28804_p_din0 = v101;
assign grp_fu_28804_p_din1 = v108_reg_1052;
assign grp_fu_443_p0 = (zext_ln179_1_fu_433_p1 + mul_ln168);
assign grp_fu_443_p1 = 9'd62;
assign grp_fu_481_p0 = (zext_ln179_3_fu_471_p1 + mul_ln168);
assign grp_fu_481_p1 = 9'd62;
assign grp_fu_86761_p_ce = 1'b1;
assign grp_fu_86761_p_din0 = v101;
assign grp_fu_86761_p_din1 = v108_1_reg_1057;
assign icmp_ln179_fu_465_p2 = ((or_ln3_fu_457_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln180_fu_580_p2 = ((v102_1_reg_879_pp0_iter12_reg == 2'd2) ? 1'b1 : 1'b0);
assign mul_ln181_1_fu_540_p0 = mul_ln181_1_fu_540_p00;
assign mul_ln181_1_fu_540_p00 = add_ln181_1_reg_900;
assign mul_ln181_1_fu_540_p1 = 19'd529;
assign mul_ln181_fu_521_p0 = mul_ln181_fu_521_p00;
assign mul_ln181_fu_521_p00 = add_ln181_reg_885;
assign mul_ln181_fu_521_p1 = 19'd529;
assign or_ln3_fu_457_p3 = {{tmp_fu_449_p3}, {1'd1}};
assign tmp_fu_449_p3 = ap_sig_allocacmp_v102_1[32'd1];
assign trunc_ln179_fu_501_p1 = ap_sig_allocacmp_v102_1[0:0];
assign trunc_ln183_1_fu_778_p1 = bitcast_ln183_2_fu_760_p1[62:0];
assign trunc_ln183_fu_751_p1 = bitcast_ln183_fu_733_p1[62:0];
assign v103_fu_727_p3 = ((icmp_ln180_reg_996[0:0] == 1'b1) ? v14_5_reload : v14_3_reload);
assign v104_1_fu_688_p10 = v7_4_q0;
assign v104_1_fu_688_p12 = v7_5_q0;
assign v104_1_fu_688_p14 = v7_6_q0;
assign v104_1_fu_688_p16 = v7_7_q0;
assign v104_1_fu_688_p17 = 'bx;
assign v104_1_fu_688_p2 = v7_0_q0;
assign v104_1_fu_688_p4 = v7_1_q0;
assign v104_1_fu_688_p6 = v7_2_q0;
assign v104_1_fu_688_p8 = v7_3_q0;
assign v104_fu_617_p10 = v7_4_q1;
assign v104_fu_617_p12 = v7_5_q1;
assign v104_fu_617_p14 = v7_6_q1;
assign v104_fu_617_p16 = v7_7_q1;
assign v104_fu_617_p17 = 'bx;
assign v104_fu_617_p2 = v7_0_q1;
assign v104_fu_617_p4 = v7_1_q1;
assign v104_fu_617_p6 = v7_2_q1;
assign v104_fu_617_p8 = v7_3_q1;
assign v106_1_fu_799_p1 = xor_ln183_1_fu_793_p3;
assign v106_fu_788_p1 = xor_ln7_fu_782_p3;
assign v107_fu_755_p3 = ((icmp_ln180_reg_996_pp0_iter20_reg[0:0] == 1'b1) ? v75_4 : v75);
assign v10_address0 = zext_ln187_1_fu_825_p1;
assign v10_address1 = zext_ln187_fu_812_p1;
assign v10_ce0 = v10_ce0_local;
assign v10_ce1 = v10_ce1_local;
assign v10_d0 = v109_1_reg_1067;
assign v10_d1 = v109_reg_1062;
assign v10_we0 = v10_we0_local;
assign v10_we1 = v10_we1_local;
assign v7_0_address0 = zext_ln181_1_fu_568_p1;
assign v7_0_address1 = zext_ln181_fu_556_p1;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_0_ce1 = v7_0_ce1_local;
assign v7_1_address0 = zext_ln181_1_fu_568_p1;
assign v7_1_address1 = zext_ln181_fu_556_p1;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_1_ce1 = v7_1_ce1_local;
assign v7_2_address0 = zext_ln181_1_fu_568_p1;
assign v7_2_address1 = zext_ln181_fu_556_p1;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_2_ce1 = v7_2_ce1_local;
assign v7_3_address0 = zext_ln181_1_fu_568_p1;
assign v7_3_address1 = zext_ln181_fu_556_p1;
assign v7_3_ce0 = v7_3_ce0_local;
assign v7_3_ce1 = v7_3_ce1_local;
assign v7_4_address0 = zext_ln181_1_fu_568_p1;
assign v7_4_address1 = zext_ln181_fu_556_p1;
assign v7_4_ce0 = v7_4_ce0_local;
assign v7_4_ce1 = v7_4_ce1_local;
assign v7_5_address0 = zext_ln181_1_fu_568_p1;
assign v7_5_address1 = zext_ln181_fu_556_p1;
assign v7_5_ce0 = v7_5_ce0_local;
assign v7_5_ce1 = v7_5_ce1_local;
assign v7_6_address0 = zext_ln181_1_fu_568_p1;
assign v7_6_address1 = zext_ln181_fu_556_p1;
assign v7_6_ce0 = v7_6_ce0_local;
assign v7_6_ce1 = v7_6_ce1_local;
assign v7_7_address0 = zext_ln181_1_fu_568_p1;
assign v7_7_address1 = zext_ln181_fu_556_p1;
assign v7_7_ce0 = v7_7_ce0_local;
assign v7_7_ce1 = v7_7_ce1_local;
assign xor_ln179_fu_495_p2 = (bit_sel4_fu_487_p3 ^ 1'd1);
assign xor_ln183_1_fu_793_p3 = {{xor_ln183_reg_1032}, {trunc_ln183_1_reg_1037}};
assign xor_ln183_2_fu_745_p2 = (bit_sel_fu_737_p3 ^ 1'd1);
assign xor_ln183_fu_772_p2 = (bit_sel3_fu_764_p3 ^ 1'd1);
assign xor_ln7_fu_782_p3 = {{xor_ln183_2_reg_1017}, {trunc_ln183_reg_1022}};
assign xor_ln8_fu_505_p3 = {{xor_ln179_fu_495_p2}, {trunc_ln179_fu_501_p1}};
assign zext_ln179_1_fu_433_p1 = ap_sig_allocacmp_v102_1;
assign zext_ln179_2_fu_817_p1 = or_ln3_reg_891_pp0_iter35_reg;
assign zext_ln179_3_fu_471_p1 = or_ln3_fu_457_p3;
assign zext_ln179_fu_804_p1 = v102_1_reg_879_pp0_iter35_reg;
assign zext_ln181_1_fu_568_p1 = grp_fu_481_p2;
assign zext_ln181_fu_556_p1 = grp_fu_443_p2;
assign zext_ln187_1_fu_825_p1 = add_ln187_1_fu_820_p2;
assign zext_ln187_fu_812_p1 = add_ln187_fu_807_p2;
always @ (posedge ap_clk) begin
    or_ln3_reg_891[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter1_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter2_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter3_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter4_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter5_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter6_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter7_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter8_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter9_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter10_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter11_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter12_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter13_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter14_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter15_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter16_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter17_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter18_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter19_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter20_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter21_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter22_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter23_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter24_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter25_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter26_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter27_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter28_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter29_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter30_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter31_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter32_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter33_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter34_reg[0] <= 1'b1;
    or_ln3_reg_891_pp0_iter35_reg[0] <= 1'b1;
end
endmodule 
