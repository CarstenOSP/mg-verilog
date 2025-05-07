module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_q0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_q0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_q0,buff_B_4_address0,buff_B_4_ce0,buff_B_4_q0,buff_B_5_address0,buff_B_5_ce0,buff_B_5_q0,buff_B_6_address0,buff_B_6_ce0,buff_B_6_q0,buff_B_7_address0,buff_B_7_ce0,buff_B_7_q0,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_q1,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_address1,buff_C_out_2_ce1,buff_C_out_2_q1,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_address1,buff_C_out_3_ce1,buff_C_out_3_q1,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_address1,buff_C_out_4_ce1,buff_C_out_4_q1,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_address1,buff_C_out_5_ce1,buff_C_out_5_q1,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_address1,buff_C_out_6_ce1,buff_C_out_6_q1,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_address1,buff_C_out_7_ce1,buff_C_out_7_q1,beta,grp_fu_472_p_din0,grp_fu_472_p_din1,grp_fu_472_p_opcode,grp_fu_472_p_dout0,grp_fu_472_p_ce,grp_fu_476_p_din0,grp_fu_476_p_din1,grp_fu_476_p_opcode,grp_fu_476_p_dout0,grp_fu_476_p_ce,grp_fu_480_p_din0,grp_fu_480_p_din1,grp_fu_480_p_opcode,grp_fu_480_p_dout0,grp_fu_480_p_ce,grp_fu_484_p_din0,grp_fu_484_p_din1,grp_fu_484_p_opcode,grp_fu_484_p_dout0,grp_fu_484_p_ce,grp_fu_488_p_din0,grp_fu_488_p_din1,grp_fu_488_p_dout0,grp_fu_488_p_ce,grp_fu_492_p_din0,grp_fu_492_p_din1,grp_fu_492_p_dout0,grp_fu_492_p_ce,grp_fu_496_p_din0,grp_fu_496_p_din1,grp_fu_496_p_dout0,grp_fu_496_p_ce,grp_fu_500_p_din0,grp_fu_500_p_din1,grp_fu_500_p_dout0,grp_fu_500_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [8:0] buff_B_1_address0;
output   buff_B_1_ce0;
input  [31:0] buff_B_1_q0;
output  [8:0] buff_B_2_address0;
output   buff_B_2_ce0;
input  [31:0] buff_B_2_q0;
output  [8:0] buff_B_3_address0;
output   buff_B_3_ce0;
input  [31:0] buff_B_3_q0;
output  [8:0] buff_B_4_address0;
output   buff_B_4_ce0;
input  [31:0] buff_B_4_q0;
output  [8:0] buff_B_5_address0;
output   buff_B_5_ce0;
input  [31:0] buff_B_5_q0;
output  [8:0] buff_B_6_address0;
output   buff_B_6_ce0;
input  [31:0] buff_B_6_q0;
output  [8:0] buff_B_7_address0;
output   buff_B_7_ce0;
input  [31:0] buff_B_7_q0;
output  [8:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
output  [8:0] buff_C_out_address1;
output   buff_C_out_ce1;
input  [31:0] buff_C_out_q1;
output  [8:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
output  [8:0] buff_C_out_1_address1;
output   buff_C_out_1_ce1;
input  [31:0] buff_C_out_1_q1;
output  [8:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
output  [8:0] buff_C_out_2_address1;
output   buff_C_out_2_ce1;
input  [31:0] buff_C_out_2_q1;
output  [8:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
output  [8:0] buff_C_out_3_address1;
output   buff_C_out_3_ce1;
input  [31:0] buff_C_out_3_q1;
output  [8:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
output   buff_C_out_4_we0;
output  [31:0] buff_C_out_4_d0;
output  [8:0] buff_C_out_4_address1;
output   buff_C_out_4_ce1;
input  [31:0] buff_C_out_4_q1;
output  [8:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
output   buff_C_out_5_we0;
output  [31:0] buff_C_out_5_d0;
output  [8:0] buff_C_out_5_address1;
output   buff_C_out_5_ce1;
input  [31:0] buff_C_out_5_q1;
output  [8:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
output   buff_C_out_6_we0;
output  [31:0] buff_C_out_6_d0;
output  [8:0] buff_C_out_6_address1;
output   buff_C_out_6_ce1;
input  [31:0] buff_C_out_6_q1;
output  [8:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
output   buff_C_out_7_we0;
output  [31:0] buff_C_out_7_d0;
output  [8:0] buff_C_out_7_address1;
output   buff_C_out_7_ce1;
input  [31:0] buff_C_out_7_q1;
input  [31:0] beta;
output  [31:0] grp_fu_472_p_din0;
output  [31:0] grp_fu_472_p_din1;
output  [1:0] grp_fu_472_p_opcode;
input  [31:0] grp_fu_472_p_dout0;
output   grp_fu_472_p_ce;
output  [31:0] grp_fu_476_p_din0;
output  [31:0] grp_fu_476_p_din1;
output  [1:0] grp_fu_476_p_opcode;
input  [31:0] grp_fu_476_p_dout0;
output   grp_fu_476_p_ce;
output  [31:0] grp_fu_480_p_din0;
output  [31:0] grp_fu_480_p_din1;
output  [1:0] grp_fu_480_p_opcode;
input  [31:0] grp_fu_480_p_dout0;
output   grp_fu_480_p_ce;
output  [31:0] grp_fu_484_p_din0;
output  [31:0] grp_fu_484_p_din1;
output  [1:0] grp_fu_484_p_opcode;
input  [31:0] grp_fu_484_p_dout0;
output   grp_fu_484_p_ce;
output  [31:0] grp_fu_488_p_din0;
output  [31:0] grp_fu_488_p_din1;
input  [31:0] grp_fu_488_p_dout0;
output   grp_fu_488_p_ce;
output  [31:0] grp_fu_492_p_din0;
output  [31:0] grp_fu_492_p_din1;
input  [31:0] grp_fu_492_p_dout0;
output   grp_fu_492_p_ce;
output  [31:0] grp_fu_496_p_din0;
output  [31:0] grp_fu_496_p_din1;
input  [31:0] grp_fu_496_p_dout0;
output   grp_fu_496_p_ce;
output  [31:0] grp_fu_500_p_din0;
output  [31:0] grp_fu_500_p_din1;
input  [31:0] grp_fu_500_p_dout0;
output   grp_fu_500_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln29_fu_390_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln32_fu_469_p1;
reg   [63:0] zext_ln32_reg_598;
reg   [63:0] zext_ln32_reg_598_pp0_iter2_reg;
reg   [63:0] zext_ln32_reg_598_pp0_iter3_reg;
reg   [63:0] zext_ln32_reg_598_pp0_iter4_reg;
wire   [0:0] icmp_ln32_1_fu_481_p2;
reg   [0:0] icmp_ln32_1_reg_650;
reg   [0:0] icmp_ln32_1_reg_650_pp0_iter2_reg;
reg   [0:0] icmp_ln32_1_reg_650_pp0_iter3_reg;
reg   [0:0] icmp_ln32_1_reg_650_pp0_iter4_reg;
reg   [0:0] icmp_ln32_1_reg_650_pp0_iter5_reg;
wire   [0:0] icmp_ln32_fu_487_p2;
reg   [0:0] icmp_ln32_reg_662;
reg   [0:0] icmp_ln32_reg_662_pp0_iter2_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter3_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter4_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter5_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter6_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter7_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter8_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter9_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter10_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter11_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter12_reg;
reg   [0:0] icmp_ln32_reg_662_pp0_iter13_reg;
wire   [31:0] select_ln32_fu_509_p3;
reg   [31:0] select_ln32_reg_666;
wire   [31:0] select_ln32_2_fu_516_p3;
reg   [31:0] select_ln32_2_reg_671;
wire   [31:0] select_ln32_3_fu_523_p3;
reg   [31:0] select_ln32_3_reg_676;
wire   [31:0] select_ln32_4_fu_530_p3;
reg   [31:0] select_ln32_4_reg_681;
reg   [8:0] buff_C_out_addr_reg_686;
reg   [8:0] buff_C_out_addr_reg_686_pp0_iter6_reg;
reg   [8:0] buff_C_out_addr_reg_686_pp0_iter7_reg;
reg   [8:0] buff_C_out_addr_reg_686_pp0_iter8_reg;
reg   [8:0] buff_C_out_addr_reg_686_pp0_iter9_reg;
reg   [8:0] buff_C_out_addr_reg_686_pp0_iter10_reg;
reg   [8:0] buff_C_out_addr_reg_686_pp0_iter11_reg;
reg   [8:0] buff_C_out_addr_reg_686_pp0_iter12_reg;
reg   [8:0] buff_C_out_addr_reg_686_pp0_iter13_reg;
reg   [8:0] buff_C_out_1_addr_reg_692;
reg   [8:0] buff_C_out_1_addr_reg_692_pp0_iter6_reg;
reg   [8:0] buff_C_out_1_addr_reg_692_pp0_iter7_reg;
reg   [8:0] buff_C_out_1_addr_reg_692_pp0_iter8_reg;
reg   [8:0] buff_C_out_1_addr_reg_692_pp0_iter9_reg;
reg   [8:0] buff_C_out_1_addr_reg_692_pp0_iter10_reg;
reg   [8:0] buff_C_out_1_addr_reg_692_pp0_iter11_reg;
reg   [8:0] buff_C_out_1_addr_reg_692_pp0_iter12_reg;
reg   [8:0] buff_C_out_1_addr_reg_692_pp0_iter13_reg;
reg   [8:0] buff_C_out_2_addr_reg_698;
reg   [8:0] buff_C_out_2_addr_reg_698_pp0_iter6_reg;
reg   [8:0] buff_C_out_2_addr_reg_698_pp0_iter7_reg;
reg   [8:0] buff_C_out_2_addr_reg_698_pp0_iter8_reg;
reg   [8:0] buff_C_out_2_addr_reg_698_pp0_iter9_reg;
reg   [8:0] buff_C_out_2_addr_reg_698_pp0_iter10_reg;
reg   [8:0] buff_C_out_2_addr_reg_698_pp0_iter11_reg;
reg   [8:0] buff_C_out_2_addr_reg_698_pp0_iter12_reg;
reg   [8:0] buff_C_out_2_addr_reg_698_pp0_iter13_reg;
reg   [8:0] buff_C_out_3_addr_reg_704;
reg   [8:0] buff_C_out_3_addr_reg_704_pp0_iter6_reg;
reg   [8:0] buff_C_out_3_addr_reg_704_pp0_iter7_reg;
reg   [8:0] buff_C_out_3_addr_reg_704_pp0_iter8_reg;
reg   [8:0] buff_C_out_3_addr_reg_704_pp0_iter9_reg;
reg   [8:0] buff_C_out_3_addr_reg_704_pp0_iter10_reg;
reg   [8:0] buff_C_out_3_addr_reg_704_pp0_iter11_reg;
reg   [8:0] buff_C_out_3_addr_reg_704_pp0_iter12_reg;
reg   [8:0] buff_C_out_3_addr_reg_704_pp0_iter13_reg;
reg   [8:0] buff_C_out_4_addr_reg_710;
reg   [8:0] buff_C_out_4_addr_reg_710_pp0_iter6_reg;
reg   [8:0] buff_C_out_4_addr_reg_710_pp0_iter7_reg;
reg   [8:0] buff_C_out_4_addr_reg_710_pp0_iter8_reg;
reg   [8:0] buff_C_out_4_addr_reg_710_pp0_iter9_reg;
reg   [8:0] buff_C_out_4_addr_reg_710_pp0_iter10_reg;
reg   [8:0] buff_C_out_4_addr_reg_710_pp0_iter11_reg;
reg   [8:0] buff_C_out_4_addr_reg_710_pp0_iter12_reg;
reg   [8:0] buff_C_out_4_addr_reg_710_pp0_iter13_reg;
reg   [8:0] buff_C_out_5_addr_reg_716;
reg   [8:0] buff_C_out_5_addr_reg_716_pp0_iter6_reg;
reg   [8:0] buff_C_out_5_addr_reg_716_pp0_iter7_reg;
reg   [8:0] buff_C_out_5_addr_reg_716_pp0_iter8_reg;
reg   [8:0] buff_C_out_5_addr_reg_716_pp0_iter9_reg;
reg   [8:0] buff_C_out_5_addr_reg_716_pp0_iter10_reg;
reg   [8:0] buff_C_out_5_addr_reg_716_pp0_iter11_reg;
reg   [8:0] buff_C_out_5_addr_reg_716_pp0_iter12_reg;
reg   [8:0] buff_C_out_5_addr_reg_716_pp0_iter13_reg;
reg   [8:0] buff_C_out_6_addr_reg_722;
reg   [8:0] buff_C_out_6_addr_reg_722_pp0_iter6_reg;
reg   [8:0] buff_C_out_6_addr_reg_722_pp0_iter7_reg;
reg   [8:0] buff_C_out_6_addr_reg_722_pp0_iter8_reg;
reg   [8:0] buff_C_out_6_addr_reg_722_pp0_iter9_reg;
reg   [8:0] buff_C_out_6_addr_reg_722_pp0_iter10_reg;
reg   [8:0] buff_C_out_6_addr_reg_722_pp0_iter11_reg;
reg   [8:0] buff_C_out_6_addr_reg_722_pp0_iter12_reg;
reg   [8:0] buff_C_out_6_addr_reg_722_pp0_iter13_reg;
reg   [8:0] buff_C_out_7_addr_reg_728;
reg   [8:0] buff_C_out_7_addr_reg_728_pp0_iter6_reg;
reg   [8:0] buff_C_out_7_addr_reg_728_pp0_iter7_reg;
reg   [8:0] buff_C_out_7_addr_reg_728_pp0_iter8_reg;
reg   [8:0] buff_C_out_7_addr_reg_728_pp0_iter9_reg;
reg   [8:0] buff_C_out_7_addr_reg_728_pp0_iter10_reg;
reg   [8:0] buff_C_out_7_addr_reg_728_pp0_iter11_reg;
reg   [8:0] buff_C_out_7_addr_reg_728_pp0_iter12_reg;
reg   [8:0] buff_C_out_7_addr_reg_728_pp0_iter13_reg;
reg   [31:0] mul2_reg_734;
wire   [31:0] select_ln32_1_fu_537_p3;
reg   [31:0] select_ln32_1_reg_739;
reg   [31:0] mul74_1_reg_744;
reg   [31:0] mul74_2_reg_749;
reg   [31:0] mul74_3_reg_754;
wire   [31:0] select_ln32_5_fu_544_p3;
reg   [31:0] select_ln32_5_reg_759;
wire   [31:0] select_ln32_6_fu_551_p3;
reg   [31:0] select_ln32_6_reg_764;
wire   [31:0] select_ln32_7_fu_558_p3;
reg   [31:0] select_ln32_7_reg_769;
reg   [31:0] add1_reg_774;
reg   [31:0] add79_1_reg_780;
reg   [31:0] add79_2_reg_786;
reg   [31:0] add79_3_reg_792;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_82;
wire   [6:0] add_ln30_fu_493_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_86;
wire   [6:0] select_ln29_fu_435_p3;
reg   [10:0] indvar_flatten13_fu_90;
wire   [10:0] add_ln29_1_fu_396_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten13_load;
reg    buff_B_ce0_local;
reg    buff_B_4_ce0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_5_ce0_local;
reg    buff_B_2_ce0_local;
reg    buff_B_6_ce0_local;
reg    buff_B_3_ce0_local;
reg    buff_B_7_ce0_local;
reg    buff_C_out_ce1_local;
reg    buff_C_out_we0_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_4_ce1_local;
reg    buff_C_out_4_we0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_1_ce1_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_5_ce1_local;
reg    buff_C_out_5_we0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_2_ce1_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_6_ce1_local;
reg    buff_C_out_6_we0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_3_ce1_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_7_ce1_local;
reg    buff_C_out_7_we0_local;
reg    buff_C_out_7_ce0_local;
wire   [0:0] tmp_fu_419_p3;
wire   [6:0] add_ln29_fu_413_p2;
wire   [6:0] select_ln5_fu_427_p3;
wire   [5:0] trunc_ln30_fu_443_p1;
wire   [2:0] lshr_ln5_4_fu_451_p4;
wire   [8:0] tmp_s_fu_461_p3;
wire   [2:0] trunc_ln30_1_fu_447_p1;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
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
#0 j_fu_82 = 7'd0;
#0 i_fu_86 = 7'd0;
#0 indvar_flatten13_fu_90 = 11'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_86 <= select_ln29_fu_435_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_390_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten13_fu_90 <= add_ln29_1_fu_396_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_90 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_82 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_82 <= add_ln30_fu_493_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_774 <= grp_fu_472_p_dout0;
        add79_1_reg_780 <= grp_fu_476_p_dout0;
        add79_2_reg_786 <= grp_fu_480_p_dout0;
        add79_3_reg_792 <= grp_fu_484_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_C_out_1_addr_reg_692 <= zext_ln32_reg_598_pp0_iter4_reg;
        buff_C_out_1_addr_reg_692_pp0_iter10_reg <= buff_C_out_1_addr_reg_692_pp0_iter9_reg;
        buff_C_out_1_addr_reg_692_pp0_iter11_reg <= buff_C_out_1_addr_reg_692_pp0_iter10_reg;
        buff_C_out_1_addr_reg_692_pp0_iter12_reg <= buff_C_out_1_addr_reg_692_pp0_iter11_reg;
        buff_C_out_1_addr_reg_692_pp0_iter13_reg <= buff_C_out_1_addr_reg_692_pp0_iter12_reg;
        buff_C_out_1_addr_reg_692_pp0_iter6_reg <= buff_C_out_1_addr_reg_692;
        buff_C_out_1_addr_reg_692_pp0_iter7_reg <= buff_C_out_1_addr_reg_692_pp0_iter6_reg;
        buff_C_out_1_addr_reg_692_pp0_iter8_reg <= buff_C_out_1_addr_reg_692_pp0_iter7_reg;
        buff_C_out_1_addr_reg_692_pp0_iter9_reg <= buff_C_out_1_addr_reg_692_pp0_iter8_reg;
        buff_C_out_2_addr_reg_698 <= zext_ln32_reg_598_pp0_iter4_reg;
        buff_C_out_2_addr_reg_698_pp0_iter10_reg <= buff_C_out_2_addr_reg_698_pp0_iter9_reg;
        buff_C_out_2_addr_reg_698_pp0_iter11_reg <= buff_C_out_2_addr_reg_698_pp0_iter10_reg;
        buff_C_out_2_addr_reg_698_pp0_iter12_reg <= buff_C_out_2_addr_reg_698_pp0_iter11_reg;
        buff_C_out_2_addr_reg_698_pp0_iter13_reg <= buff_C_out_2_addr_reg_698_pp0_iter12_reg;
        buff_C_out_2_addr_reg_698_pp0_iter6_reg <= buff_C_out_2_addr_reg_698;
        buff_C_out_2_addr_reg_698_pp0_iter7_reg <= buff_C_out_2_addr_reg_698_pp0_iter6_reg;
        buff_C_out_2_addr_reg_698_pp0_iter8_reg <= buff_C_out_2_addr_reg_698_pp0_iter7_reg;
        buff_C_out_2_addr_reg_698_pp0_iter9_reg <= buff_C_out_2_addr_reg_698_pp0_iter8_reg;
        buff_C_out_3_addr_reg_704 <= zext_ln32_reg_598_pp0_iter4_reg;
        buff_C_out_3_addr_reg_704_pp0_iter10_reg <= buff_C_out_3_addr_reg_704_pp0_iter9_reg;
        buff_C_out_3_addr_reg_704_pp0_iter11_reg <= buff_C_out_3_addr_reg_704_pp0_iter10_reg;
        buff_C_out_3_addr_reg_704_pp0_iter12_reg <= buff_C_out_3_addr_reg_704_pp0_iter11_reg;
        buff_C_out_3_addr_reg_704_pp0_iter13_reg <= buff_C_out_3_addr_reg_704_pp0_iter12_reg;
        buff_C_out_3_addr_reg_704_pp0_iter6_reg <= buff_C_out_3_addr_reg_704;
        buff_C_out_3_addr_reg_704_pp0_iter7_reg <= buff_C_out_3_addr_reg_704_pp0_iter6_reg;
        buff_C_out_3_addr_reg_704_pp0_iter8_reg <= buff_C_out_3_addr_reg_704_pp0_iter7_reg;
        buff_C_out_3_addr_reg_704_pp0_iter9_reg <= buff_C_out_3_addr_reg_704_pp0_iter8_reg;
        buff_C_out_4_addr_reg_710 <= zext_ln32_reg_598_pp0_iter4_reg;
        buff_C_out_4_addr_reg_710_pp0_iter10_reg <= buff_C_out_4_addr_reg_710_pp0_iter9_reg;
        buff_C_out_4_addr_reg_710_pp0_iter11_reg <= buff_C_out_4_addr_reg_710_pp0_iter10_reg;
        buff_C_out_4_addr_reg_710_pp0_iter12_reg <= buff_C_out_4_addr_reg_710_pp0_iter11_reg;
        buff_C_out_4_addr_reg_710_pp0_iter13_reg <= buff_C_out_4_addr_reg_710_pp0_iter12_reg;
        buff_C_out_4_addr_reg_710_pp0_iter6_reg <= buff_C_out_4_addr_reg_710;
        buff_C_out_4_addr_reg_710_pp0_iter7_reg <= buff_C_out_4_addr_reg_710_pp0_iter6_reg;
        buff_C_out_4_addr_reg_710_pp0_iter8_reg <= buff_C_out_4_addr_reg_710_pp0_iter7_reg;
        buff_C_out_4_addr_reg_710_pp0_iter9_reg <= buff_C_out_4_addr_reg_710_pp0_iter8_reg;
        buff_C_out_5_addr_reg_716 <= zext_ln32_reg_598_pp0_iter4_reg;
        buff_C_out_5_addr_reg_716_pp0_iter10_reg <= buff_C_out_5_addr_reg_716_pp0_iter9_reg;
        buff_C_out_5_addr_reg_716_pp0_iter11_reg <= buff_C_out_5_addr_reg_716_pp0_iter10_reg;
        buff_C_out_5_addr_reg_716_pp0_iter12_reg <= buff_C_out_5_addr_reg_716_pp0_iter11_reg;
        buff_C_out_5_addr_reg_716_pp0_iter13_reg <= buff_C_out_5_addr_reg_716_pp0_iter12_reg;
        buff_C_out_5_addr_reg_716_pp0_iter6_reg <= buff_C_out_5_addr_reg_716;
        buff_C_out_5_addr_reg_716_pp0_iter7_reg <= buff_C_out_5_addr_reg_716_pp0_iter6_reg;
        buff_C_out_5_addr_reg_716_pp0_iter8_reg <= buff_C_out_5_addr_reg_716_pp0_iter7_reg;
        buff_C_out_5_addr_reg_716_pp0_iter9_reg <= buff_C_out_5_addr_reg_716_pp0_iter8_reg;
        buff_C_out_6_addr_reg_722 <= zext_ln32_reg_598_pp0_iter4_reg;
        buff_C_out_6_addr_reg_722_pp0_iter10_reg <= buff_C_out_6_addr_reg_722_pp0_iter9_reg;
        buff_C_out_6_addr_reg_722_pp0_iter11_reg <= buff_C_out_6_addr_reg_722_pp0_iter10_reg;
        buff_C_out_6_addr_reg_722_pp0_iter12_reg <= buff_C_out_6_addr_reg_722_pp0_iter11_reg;
        buff_C_out_6_addr_reg_722_pp0_iter13_reg <= buff_C_out_6_addr_reg_722_pp0_iter12_reg;
        buff_C_out_6_addr_reg_722_pp0_iter6_reg <= buff_C_out_6_addr_reg_722;
        buff_C_out_6_addr_reg_722_pp0_iter7_reg <= buff_C_out_6_addr_reg_722_pp0_iter6_reg;
        buff_C_out_6_addr_reg_722_pp0_iter8_reg <= buff_C_out_6_addr_reg_722_pp0_iter7_reg;
        buff_C_out_6_addr_reg_722_pp0_iter9_reg <= buff_C_out_6_addr_reg_722_pp0_iter8_reg;
        buff_C_out_7_addr_reg_728 <= zext_ln32_reg_598_pp0_iter4_reg;
        buff_C_out_7_addr_reg_728_pp0_iter10_reg <= buff_C_out_7_addr_reg_728_pp0_iter9_reg;
        buff_C_out_7_addr_reg_728_pp0_iter11_reg <= buff_C_out_7_addr_reg_728_pp0_iter10_reg;
        buff_C_out_7_addr_reg_728_pp0_iter12_reg <= buff_C_out_7_addr_reg_728_pp0_iter11_reg;
        buff_C_out_7_addr_reg_728_pp0_iter13_reg <= buff_C_out_7_addr_reg_728_pp0_iter12_reg;
        buff_C_out_7_addr_reg_728_pp0_iter6_reg <= buff_C_out_7_addr_reg_728;
        buff_C_out_7_addr_reg_728_pp0_iter7_reg <= buff_C_out_7_addr_reg_728_pp0_iter6_reg;
        buff_C_out_7_addr_reg_728_pp0_iter8_reg <= buff_C_out_7_addr_reg_728_pp0_iter7_reg;
        buff_C_out_7_addr_reg_728_pp0_iter9_reg <= buff_C_out_7_addr_reg_728_pp0_iter8_reg;
        buff_C_out_addr_reg_686 <= zext_ln32_reg_598_pp0_iter4_reg;
        buff_C_out_addr_reg_686_pp0_iter10_reg <= buff_C_out_addr_reg_686_pp0_iter9_reg;
        buff_C_out_addr_reg_686_pp0_iter11_reg <= buff_C_out_addr_reg_686_pp0_iter10_reg;
        buff_C_out_addr_reg_686_pp0_iter12_reg <= buff_C_out_addr_reg_686_pp0_iter11_reg;
        buff_C_out_addr_reg_686_pp0_iter13_reg <= buff_C_out_addr_reg_686_pp0_iter12_reg;
        buff_C_out_addr_reg_686_pp0_iter6_reg <= buff_C_out_addr_reg_686;
        buff_C_out_addr_reg_686_pp0_iter7_reg <= buff_C_out_addr_reg_686_pp0_iter6_reg;
        buff_C_out_addr_reg_686_pp0_iter8_reg <= buff_C_out_addr_reg_686_pp0_iter7_reg;
        buff_C_out_addr_reg_686_pp0_iter9_reg <= buff_C_out_addr_reg_686_pp0_iter8_reg;
        icmp_ln32_1_reg_650_pp0_iter2_reg <= icmp_ln32_1_reg_650;
        icmp_ln32_1_reg_650_pp0_iter3_reg <= icmp_ln32_1_reg_650_pp0_iter2_reg;
        icmp_ln32_1_reg_650_pp0_iter4_reg <= icmp_ln32_1_reg_650_pp0_iter3_reg;
        icmp_ln32_1_reg_650_pp0_iter5_reg <= icmp_ln32_1_reg_650_pp0_iter4_reg;
        icmp_ln32_reg_662_pp0_iter10_reg <= icmp_ln32_reg_662_pp0_iter9_reg;
        icmp_ln32_reg_662_pp0_iter11_reg <= icmp_ln32_reg_662_pp0_iter10_reg;
        icmp_ln32_reg_662_pp0_iter12_reg <= icmp_ln32_reg_662_pp0_iter11_reg;
        icmp_ln32_reg_662_pp0_iter13_reg <= icmp_ln32_reg_662_pp0_iter12_reg;
        icmp_ln32_reg_662_pp0_iter2_reg <= icmp_ln32_reg_662;
        icmp_ln32_reg_662_pp0_iter3_reg <= icmp_ln32_reg_662_pp0_iter2_reg;
        icmp_ln32_reg_662_pp0_iter4_reg <= icmp_ln32_reg_662_pp0_iter3_reg;
        icmp_ln32_reg_662_pp0_iter5_reg <= icmp_ln32_reg_662_pp0_iter4_reg;
        icmp_ln32_reg_662_pp0_iter6_reg <= icmp_ln32_reg_662_pp0_iter5_reg;
        icmp_ln32_reg_662_pp0_iter7_reg <= icmp_ln32_reg_662_pp0_iter6_reg;
        icmp_ln32_reg_662_pp0_iter8_reg <= icmp_ln32_reg_662_pp0_iter7_reg;
        icmp_ln32_reg_662_pp0_iter9_reg <= icmp_ln32_reg_662_pp0_iter8_reg;
        mul2_reg_734 <= grp_fu_488_p_dout0;
        mul74_1_reg_744 <= grp_fu_492_p_dout0;
        mul74_2_reg_749 <= grp_fu_496_p_dout0;
        mul74_3_reg_754 <= grp_fu_500_p_dout0;
        select_ln32_1_reg_739 <= select_ln32_1_fu_537_p3;
        select_ln32_2_reg_671 <= select_ln32_2_fu_516_p3;
        select_ln32_3_reg_676 <= select_ln32_3_fu_523_p3;
        select_ln32_4_reg_681 <= select_ln32_4_fu_530_p3;
        select_ln32_5_reg_759 <= select_ln32_5_fu_544_p3;
        select_ln32_6_reg_764 <= select_ln32_6_fu_551_p3;
        select_ln32_7_reg_769 <= select_ln32_7_fu_558_p3;
        select_ln32_reg_666 <= select_ln32_fu_509_p3;
        zext_ln32_reg_598_pp0_iter2_reg[8 : 0] <= zext_ln32_reg_598[8 : 0];
        zext_ln32_reg_598_pp0_iter3_reg[8 : 0] <= zext_ln32_reg_598_pp0_iter2_reg[8 : 0];
        zext_ln32_reg_598_pp0_iter4_reg[8 : 0] <= zext_ln32_reg_598_pp0_iter3_reg[8 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln32_1_reg_650 <= icmp_ln32_1_fu_481_p2;
        icmp_ln32_reg_662 <= icmp_ln32_fu_487_p2;
        zext_ln32_reg_598[8 : 0] <= zext_ln32_fu_469_p1[8 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln29_fu_390_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter13_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten13_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_1_ce1_local = 1'b1;
    end else begin
        buff_C_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln32_reg_662_pp0_iter13_reg == 1'd1))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_2_ce1_local = 1'b1;
    end else begin
        buff_C_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln32_reg_662_pp0_iter13_reg == 1'd1))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_3_ce1_local = 1'b1;
    end else begin
        buff_C_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln32_reg_662_pp0_iter13_reg == 1'd1))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_4_ce1_local = 1'b1;
    end else begin
        buff_C_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln32_reg_662_pp0_iter13_reg == 1'd0))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_5_ce1_local = 1'b1;
    end else begin
        buff_C_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln32_reg_662_pp0_iter13_reg == 1'd0))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_6_ce1_local = 1'b1;
    end else begin
        buff_C_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln32_reg_662_pp0_iter13_reg == 1'd0))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_7_ce1_local = 1'b1;
    end else begin
        buff_C_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln32_reg_662_pp0_iter13_reg == 1'd0))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_C_out_ce1_local = 1'b1;
    end else begin
        buff_C_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (icmp_ln32_reg_662_pp0_iter13_reg == 1'd1))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
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
assign add_ln29_1_fu_396_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 11'd1);
assign add_ln29_fu_413_p2 = (i_fu_86 + 7'd1);
assign add_ln30_fu_493_p2 = (select_ln5_fu_427_p3 + 7'd4);
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
assign buff_B_1_address0 = zext_ln32_fu_469_p1;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_2_address0 = zext_ln32_fu_469_p1;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_3_address0 = zext_ln32_fu_469_p1;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_4_address0 = zext_ln32_fu_469_p1;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_5_address0 = zext_ln32_fu_469_p1;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_6_address0 = zext_ln32_fu_469_p1;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_7_address0 = zext_ln32_fu_469_p1;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_address0 = zext_ln32_fu_469_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_C_out_1_address0 = buff_C_out_1_addr_reg_692_pp0_iter13_reg;
assign buff_C_out_1_address1 = zext_ln32_reg_598_pp0_iter4_reg;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = add79_1_reg_780;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_addr_reg_698_pp0_iter13_reg;
assign buff_C_out_2_address1 = zext_ln32_reg_598_pp0_iter4_reg;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_ce1 = buff_C_out_2_ce1_local;
assign buff_C_out_2_d0 = add79_2_reg_786;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_addr_reg_704_pp0_iter13_reg;
assign buff_C_out_3_address1 = zext_ln32_reg_598_pp0_iter4_reg;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_ce1 = buff_C_out_3_ce1_local;
assign buff_C_out_3_d0 = add79_3_reg_792;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_addr_reg_710_pp0_iter13_reg;
assign buff_C_out_4_address1 = zext_ln32_reg_598_pp0_iter4_reg;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_ce1 = buff_C_out_4_ce1_local;
assign buff_C_out_4_d0 = add1_reg_774;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_addr_reg_716_pp0_iter13_reg;
assign buff_C_out_5_address1 = zext_ln32_reg_598_pp0_iter4_reg;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_ce1 = buff_C_out_5_ce1_local;
assign buff_C_out_5_d0 = add79_1_reg_780;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_addr_reg_722_pp0_iter13_reg;
assign buff_C_out_6_address1 = zext_ln32_reg_598_pp0_iter4_reg;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_ce1 = buff_C_out_6_ce1_local;
assign buff_C_out_6_d0 = add79_2_reg_786;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_addr_reg_728_pp0_iter13_reg;
assign buff_C_out_7_address1 = zext_ln32_reg_598_pp0_iter4_reg;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_ce1 = buff_C_out_7_ce1_local;
assign buff_C_out_7_d0 = add79_3_reg_792;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_address0 = buff_C_out_addr_reg_686_pp0_iter13_reg;
assign buff_C_out_address1 = zext_ln32_reg_598_pp0_iter4_reg;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = add1_reg_774;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign grp_fu_472_p_ce = 1'b1;
assign grp_fu_472_p_din0 = select_ln32_1_reg_739;
assign grp_fu_472_p_din1 = mul2_reg_734;
assign grp_fu_472_p_opcode = 2'd0;
assign grp_fu_476_p_ce = 1'b1;
assign grp_fu_476_p_din0 = select_ln32_5_reg_759;
assign grp_fu_476_p_din1 = mul74_1_reg_744;
assign grp_fu_476_p_opcode = 2'd0;
assign grp_fu_480_p_ce = 1'b1;
assign grp_fu_480_p_din0 = select_ln32_6_reg_764;
assign grp_fu_480_p_din1 = mul74_2_reg_749;
assign grp_fu_480_p_opcode = 2'd0;
assign grp_fu_484_p_ce = 1'b1;
assign grp_fu_484_p_din0 = select_ln32_7_reg_769;
assign grp_fu_484_p_din1 = mul74_3_reg_754;
assign grp_fu_484_p_opcode = 2'd0;
assign grp_fu_488_p_ce = 1'b1;
assign grp_fu_488_p_din0 = select_ln32_reg_666;
assign grp_fu_488_p_din1 = beta;
assign grp_fu_492_p_ce = 1'b1;
assign grp_fu_492_p_din0 = select_ln32_2_reg_671;
assign grp_fu_492_p_din1 = beta;
assign grp_fu_496_p_ce = 1'b1;
assign grp_fu_496_p_din0 = select_ln32_3_reg_676;
assign grp_fu_496_p_din1 = beta;
assign grp_fu_500_p_ce = 1'b1;
assign grp_fu_500_p_din0 = select_ln32_4_reg_681;
assign grp_fu_500_p_din1 = beta;
assign icmp_ln29_fu_390_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_481_p2 = ((trunc_ln30_1_fu_447_p1 != 3'd0) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_487_p2 = ((trunc_ln30_1_fu_447_p1 == 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln5_4_fu_451_p4 = {{select_ln5_fu_427_p3[5:3]}};
assign select_ln29_fu_435_p3 = ((tmp_fu_419_p3[0:0] == 1'b1) ? add_ln29_fu_413_p2 : i_fu_86);
assign select_ln32_1_fu_537_p3 = ((icmp_ln32_1_reg_650_pp0_iter5_reg[0:0] == 1'b1) ? buff_C_out_4_q1 : buff_C_out_q1);
assign select_ln32_2_fu_516_p3 = ((icmp_ln32_1_reg_650[0:0] == 1'b1) ? buff_B_5_q0 : buff_B_1_q0);
assign select_ln32_3_fu_523_p3 = ((icmp_ln32_1_reg_650[0:0] == 1'b1) ? buff_B_6_q0 : buff_B_2_q0);
assign select_ln32_4_fu_530_p3 = ((icmp_ln32_1_reg_650[0:0] == 1'b1) ? buff_B_7_q0 : buff_B_3_q0);
assign select_ln32_5_fu_544_p3 = ((icmp_ln32_1_reg_650_pp0_iter5_reg[0:0] == 1'b1) ? buff_C_out_5_q1 : buff_C_out_1_q1);
assign select_ln32_6_fu_551_p3 = ((icmp_ln32_1_reg_650_pp0_iter5_reg[0:0] == 1'b1) ? buff_C_out_6_q1 : buff_C_out_2_q1);
assign select_ln32_7_fu_558_p3 = ((icmp_ln32_1_reg_650_pp0_iter5_reg[0:0] == 1'b1) ? buff_C_out_7_q1 : buff_C_out_3_q1);
assign select_ln32_fu_509_p3 = ((icmp_ln32_1_reg_650[0:0] == 1'b1) ? buff_B_4_q0 : buff_B_q0);
assign select_ln5_fu_427_p3 = ((tmp_fu_419_p3[0:0] == 1'b1) ? 7'd0 : j_fu_82);
assign tmp_fu_419_p3 = j_fu_82[32'd6];
assign tmp_s_fu_461_p3 = {{trunc_ln30_fu_443_p1}, {lshr_ln5_4_fu_451_p4}};
assign trunc_ln30_1_fu_447_p1 = select_ln5_fu_427_p3[2:0];
assign trunc_ln30_fu_443_p1 = select_ln29_fu_435_p3[5:0];
assign zext_ln32_fu_469_p1 = tmp_s_fu_461_p3;
always @ (posedge ap_clk) begin
    zext_ln32_reg_598[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_598_pp0_iter2_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_598_pp0_iter3_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    zext_ln32_reg_598_pp0_iter4_reg[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 