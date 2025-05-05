module backprop_update_weights_68_69_1_Pipeline_up_weight_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights3_3_address0,weights3_3_ce0,weights3_3_we0,weights3_3_d0,weights3_3_q0,weights3_3_address1,weights3_3_ce1,weights3_3_we1,weights3_3_d1,weights3_3_q1,weights3_2_address0,weights3_2_ce0,weights3_2_we0,weights3_2_d0,weights3_2_q0,weights3_2_address1,weights3_2_ce1,weights3_2_we1,weights3_2_d1,weights3_2_q1,weights3_1_address0,weights3_1_ce0,weights3_1_we0,weights3_1_d0,weights3_1_q0,weights3_1_address1,weights3_1_ce1,weights3_1_we1,weights3_1_d1,weights3_1_q1,weights3_0_address0,weights3_0_ce0,weights3_0_we0,weights3_0_d0,weights3_0_q0,weights3_0_address1,weights3_0_ce1,weights3_0_we1,weights3_0_d1,weights3_0_q1,norm_24); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] weights3_3_address0;
output   weights3_3_ce0;
output   weights3_3_we0;
output  [63:0] weights3_3_d0;
input  [63:0] weights3_3_q0;
output  [5:0] weights3_3_address1;
output   weights3_3_ce1;
output   weights3_3_we1;
output  [63:0] weights3_3_d1;
input  [63:0] weights3_3_q1;
output  [5:0] weights3_2_address0;
output   weights3_2_ce0;
output   weights3_2_we0;
output  [63:0] weights3_2_d0;
input  [63:0] weights3_2_q0;
output  [5:0] weights3_2_address1;
output   weights3_2_ce1;
output   weights3_2_we1;
output  [63:0] weights3_2_d1;
input  [63:0] weights3_2_q1;
output  [5:0] weights3_1_address0;
output   weights3_1_ce0;
output   weights3_1_we0;
output  [63:0] weights3_1_d0;
input  [63:0] weights3_1_q0;
output  [5:0] weights3_1_address1;
output   weights3_1_ce1;
output   weights3_1_we1;
output  [63:0] weights3_1_d1;
input  [63:0] weights3_1_q1;
output  [5:0] weights3_0_address0;
output   weights3_0_ce0;
output   weights3_0_we0;
output  [63:0] weights3_0_d0;
input  [63:0] weights3_0_q0;
output  [5:0] weights3_0_address1;
output   weights3_0_ce1;
output   weights3_0_we1;
output  [63:0] weights3_0_d1;
input  [63:0] weights3_0_q1;
input  [63:0] norm_24;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_615;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_236;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] reg_240;
reg   [63:0] reg_244;
reg   [63:0] reg_248;
wire   [63:0] grp_fu_220_p2;
reg   [63:0] reg_252;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_224_p2;
reg   [63:0] reg_256;
wire   [63:0] grp_fu_228_p2;
reg   [63:0] reg_260;
wire   [63:0] grp_fu_232_p2;
reg   [63:0] reg_264;
reg   [6:0] i_4_reg_610;
reg   [0:0] tmp_reg_615_pp0_iter1_reg;
reg   [0:0] tmp_reg_615_pp0_iter2_reg;
reg   [0:0] tmp_reg_615_pp0_iter3_reg;
reg   [0:0] tmp_reg_615_pp0_iter4_reg;
reg   [0:0] tmp_reg_615_pp0_iter5_reg;
reg   [0:0] tmp_reg_615_pp0_iter6_reg;
reg   [0:0] tmp_reg_615_pp0_iter7_reg;
reg   [0:0] tmp_reg_615_pp0_iter8_reg;
reg   [0:0] tmp_reg_615_pp0_iter9_reg;
reg   [0:0] tmp_reg_615_pp0_iter10_reg;
reg   [0:0] tmp_reg_615_pp0_iter11_reg;
reg   [0:0] tmp_reg_615_pp0_iter12_reg;
reg   [0:0] tmp_reg_615_pp0_iter13_reg;
reg   [0:0] tmp_reg_615_pp0_iter14_reg;
reg   [0:0] tmp_reg_615_pp0_iter15_reg;
reg   [0:0] tmp_reg_615_pp0_iter16_reg;
reg   [0:0] tmp_reg_615_pp0_iter17_reg;
reg   [0:0] tmp_reg_615_pp0_iter18_reg;
reg   [0:0] tmp_reg_615_pp0_iter19_reg;
reg   [5:0] weights3_0_addr_reg_619;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter10_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter11_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter12_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter13_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter14_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter15_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter16_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter17_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter18_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter19_reg;
reg   [5:0] weights3_0_addr_reg_619_pp0_iter20_reg;
wire   [7:0] empty_fu_349_p2;
reg   [7:0] empty_reg_624;
reg   [5:0] weights3_1_addr_reg_633;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter10_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter11_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter12_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter13_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter14_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter15_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter16_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter17_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter18_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter19_reg;
reg   [5:0] weights3_1_addr_reg_633_pp0_iter20_reg;
reg   [5:0] weights3_2_addr_reg_638;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter11_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter12_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter13_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter14_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter15_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter16_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter17_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter18_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter19_reg;
reg   [5:0] weights3_2_addr_reg_638_pp0_iter20_reg;
reg   [5:0] weights3_3_addr_reg_643;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter11_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter12_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter13_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter14_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter15_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter16_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter17_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter18_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter19_reg;
reg   [5:0] weights3_3_addr_reg_643_pp0_iter20_reg;
reg   [5:0] weights3_0_addr_3_reg_648;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter10_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter11_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter12_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter13_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter14_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter15_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter16_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter17_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter18_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter19_reg;
reg   [5:0] weights3_0_addr_3_reg_648_pp0_iter20_reg;
reg   [5:0] weights3_1_addr_3_reg_654;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter10_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter11_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter12_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter13_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter14_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter15_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter16_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter17_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter18_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter19_reg;
reg   [5:0] weights3_1_addr_3_reg_654_pp0_iter20_reg;
reg   [5:0] weights3_2_addr_3_reg_660;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter11_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter12_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter13_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter14_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter15_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter16_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter17_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter18_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter19_reg;
reg   [5:0] weights3_2_addr_3_reg_660_pp0_iter20_reg;
reg   [5:0] weights3_3_addr_3_reg_666;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter11_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter12_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter13_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter14_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter15_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter16_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter17_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter18_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter19_reg;
reg   [5:0] weights3_3_addr_3_reg_666_pp0_iter20_reg;
reg   [5:0] weights3_0_addr_4_reg_672;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter1_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter2_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter3_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter4_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter5_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter6_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter7_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter8_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter9_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter10_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter11_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter12_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter13_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter14_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter15_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter16_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter17_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter18_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter19_reg;
reg   [5:0] weights3_0_addr_4_reg_672_pp0_iter20_reg;
reg   [5:0] weights3_1_addr_4_reg_677;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter1_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter2_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter3_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter4_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter5_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter6_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter7_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter8_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter9_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter10_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter11_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter12_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter13_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter14_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter15_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter16_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter17_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter18_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter19_reg;
reg   [5:0] weights3_1_addr_4_reg_677_pp0_iter20_reg;
reg   [5:0] weights3_2_addr_4_reg_682;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter1_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter2_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter3_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter4_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter5_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter6_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter7_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter8_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter9_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter10_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter11_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter12_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter13_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter14_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter15_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter16_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter17_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter18_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter19_reg;
reg   [5:0] weights3_2_addr_4_reg_682_pp0_iter20_reg;
reg   [5:0] weights3_3_addr_4_reg_687;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter1_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter2_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter3_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter4_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter5_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter6_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter7_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter8_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter9_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter10_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter11_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter12_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter13_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter14_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter15_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter16_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter17_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter18_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter19_reg;
reg   [5:0] weights3_3_addr_4_reg_687_pp0_iter20_reg;
wire   [63:0] bitcast_ln194_fu_473_p1;
wire   [63:0] bitcast_ln194_1_fu_478_p1;
wire   [63:0] bitcast_ln194_2_fu_483_p1;
wire   [63:0] bitcast_ln194_3_fu_488_p1;
reg   [63:0] weights3_0_load_4_reg_712;
reg   [63:0] weights3_1_load_4_reg_717;
reg   [63:0] weights3_2_load_4_reg_722;
reg   [63:0] weights3_3_load_4_reg_727;
wire   [63:0] bitcast_ln194_4_fu_503_p1;
wire   [63:0] bitcast_ln194_5_fu_508_p1;
wire   [63:0] bitcast_ln194_6_fu_513_p1;
wire   [63:0] bitcast_ln194_7_fu_518_p1;
wire   [63:0] bitcast_ln194_8_fu_523_p1;
wire   [63:0] bitcast_ln194_9_fu_527_p1;
wire   [63:0] bitcast_ln194_10_fu_531_p1;
wire   [63:0] bitcast_ln194_11_fu_535_p1;
reg   [63:0] div213_1_1_reg_772;
reg   [63:0] div213_1_2_reg_777;
reg   [63:0] div213_2_reg_782;
reg   [63:0] div213_2_1_reg_787;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln194_fu_312_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln194_1_fu_365_p1;
wire   [63:0] zext_ln194_2_fu_385_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] lshr_ln194_3_cast_fu_405_p1;
wire   [63:0] zext_ln194_3_fu_425_p1;
wire   [63:0] lshr_ln194_5_cast_fu_446_p1;
wire   [63:0] zext_ln194_4_fu_466_p1;
reg   [6:0] i_fu_78;
wire   [6:0] add_ln192_fu_493_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_4;
reg    weights3_0_ce1_local;
reg   [5:0] weights3_0_address1_local;
reg    weights3_0_ce0_local;
reg   [5:0] weights3_0_address0_local;
reg    weights3_0_we1_local;
wire   [63:0] bitcast_ln194_12_fu_539_p1;
wire    ap_block_pp0_stage2;
reg    weights3_0_we0_local;
reg   [63:0] weights3_0_d0_local;
wire   [63:0] bitcast_ln194_13_fu_544_p1;
wire   [63:0] bitcast_ln194_14_fu_575_p1;
reg    weights3_1_ce1_local;
reg   [5:0] weights3_1_address1_local;
reg    weights3_1_ce0_local;
reg   [5:0] weights3_1_address0_local;
reg    weights3_1_we1_local;
wire   [63:0] bitcast_ln194_15_fu_548_p1;
reg    weights3_1_we0_local;
reg   [63:0] weights3_1_d0_local;
wire   [63:0] bitcast_ln194_16_fu_553_p1;
wire   [63:0] bitcast_ln194_17_fu_580_p1;
reg    weights3_2_ce1_local;
reg   [5:0] weights3_2_address1_local;
reg    weights3_2_ce0_local;
reg   [5:0] weights3_2_address0_local;
reg    weights3_2_we1_local;
wire   [63:0] bitcast_ln194_18_fu_557_p1;
reg    weights3_2_we0_local;
reg   [63:0] weights3_2_d0_local;
wire   [63:0] bitcast_ln194_19_fu_562_p1;
wire   [63:0] bitcast_ln194_20_fu_585_p1;
reg    weights3_3_ce1_local;
reg   [5:0] weights3_3_address1_local;
reg    weights3_3_ce0_local;
reg   [5:0] weights3_3_address0_local;
reg    weights3_3_we1_local;
wire   [63:0] bitcast_ln194_21_fu_566_p1;
reg    weights3_3_we0_local;
reg   [63:0] weights3_3_d0_local;
wire   [63:0] bitcast_ln194_22_fu_571_p1;
wire   [63:0] bitcast_ln194_23_fu_590_p1;
reg   [63:0] grp_fu_220_p0;
reg   [63:0] grp_fu_224_p0;
reg   [63:0] grp_fu_228_p0;
reg   [63:0] grp_fu_232_p0;
wire   [3:0] lshr_ln7_fu_284_p4;
wire   [5:0] p_shl6_fu_298_p3;
wire   [5:0] zext_ln194_5_fu_294_p1;
wire   [5:0] sub_ln194_fu_306_p2;
wire   [4:0] tmp_4_fu_319_p4;
wire   [5:0] or_ln1_fu_329_p3;
wire   [7:0] p_shl_fu_341_p3;
wire   [7:0] or_ln192_cast_fu_337_p1;
wire   [5:0] lshr_ln194_1_fu_355_p4;
wire   [7:0] add_ln194_fu_370_p2;
wire   [5:0] lshr_ln194_2_fu_375_p4;
wire   [7:0] add_ln194_1_fu_390_p2;
wire   [5:0] lshr_ln194_3_fu_395_p4;
wire   [7:0] empty_34_fu_410_p2;
wire   [5:0] lshr_ln194_4_fu_415_p4;
wire   [7:0] add_ln194_2_fu_431_p2;
wire   [5:0] lshr_ln194_5_fu_436_p4;
wire   [7:0] empty_35_fu_451_p2;
wire   [5:0] lshr_ln194_6_fu_456_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter20_stage0;
reg    ap_idle_pp0_0to19;
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
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to21;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
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
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_78 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U884(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_220_p0),.din1(norm_24),.ce(1'b1),.dout(grp_fu_220_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U885(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_224_p0),.din1(norm_24),.ce(1'b1),.dout(grp_fu_224_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U886(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_228_p0),.din1(norm_24),.ce(1'b1),.dout(grp_fu_228_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U887(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_232_p0),.din1(norm_24),.ce(1'b1),.dout(grp_fu_232_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter21 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_78 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_615 == 1'd0))) begin
        i_fu_78 <= add_ln192_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div213_1_1_reg_772 <= grp_fu_220_p2;
        div213_1_2_reg_777 <= grp_fu_224_p2;
        div213_2_1_reg_787 <= grp_fu_232_p2;
        div213_2_reg_782 <= grp_fu_228_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_624[7 : 1] <= empty_fu_349_p2[7 : 1];
        i_4_reg_610 <= ap_sig_allocacmp_i_4;
        tmp_reg_615 <= ap_sig_allocacmp_i_4[32'd6];
        tmp_reg_615_pp0_iter10_reg <= tmp_reg_615_pp0_iter9_reg;
        tmp_reg_615_pp0_iter11_reg <= tmp_reg_615_pp0_iter10_reg;
        tmp_reg_615_pp0_iter12_reg <= tmp_reg_615_pp0_iter11_reg;
        tmp_reg_615_pp0_iter13_reg <= tmp_reg_615_pp0_iter12_reg;
        tmp_reg_615_pp0_iter14_reg <= tmp_reg_615_pp0_iter13_reg;
        tmp_reg_615_pp0_iter15_reg <= tmp_reg_615_pp0_iter14_reg;
        tmp_reg_615_pp0_iter16_reg <= tmp_reg_615_pp0_iter15_reg;
        tmp_reg_615_pp0_iter17_reg <= tmp_reg_615_pp0_iter16_reg;
        tmp_reg_615_pp0_iter18_reg <= tmp_reg_615_pp0_iter17_reg;
        tmp_reg_615_pp0_iter19_reg <= tmp_reg_615_pp0_iter18_reg;
        tmp_reg_615_pp0_iter1_reg <= tmp_reg_615;
        tmp_reg_615_pp0_iter2_reg <= tmp_reg_615_pp0_iter1_reg;
        tmp_reg_615_pp0_iter3_reg <= tmp_reg_615_pp0_iter2_reg;
        tmp_reg_615_pp0_iter4_reg <= tmp_reg_615_pp0_iter3_reg;
        tmp_reg_615_pp0_iter5_reg <= tmp_reg_615_pp0_iter4_reg;
        tmp_reg_615_pp0_iter6_reg <= tmp_reg_615_pp0_iter5_reg;
        tmp_reg_615_pp0_iter7_reg <= tmp_reg_615_pp0_iter6_reg;
        tmp_reg_615_pp0_iter8_reg <= tmp_reg_615_pp0_iter7_reg;
        tmp_reg_615_pp0_iter9_reg <= tmp_reg_615_pp0_iter8_reg;
        weights3_0_addr_reg_619 <= zext_ln194_fu_312_p1;
        weights3_0_addr_reg_619_pp0_iter10_reg <= weights3_0_addr_reg_619_pp0_iter9_reg;
        weights3_0_addr_reg_619_pp0_iter11_reg <= weights3_0_addr_reg_619_pp0_iter10_reg;
        weights3_0_addr_reg_619_pp0_iter12_reg <= weights3_0_addr_reg_619_pp0_iter11_reg;
        weights3_0_addr_reg_619_pp0_iter13_reg <= weights3_0_addr_reg_619_pp0_iter12_reg;
        weights3_0_addr_reg_619_pp0_iter14_reg <= weights3_0_addr_reg_619_pp0_iter13_reg;
        weights3_0_addr_reg_619_pp0_iter15_reg <= weights3_0_addr_reg_619_pp0_iter14_reg;
        weights3_0_addr_reg_619_pp0_iter16_reg <= weights3_0_addr_reg_619_pp0_iter15_reg;
        weights3_0_addr_reg_619_pp0_iter17_reg <= weights3_0_addr_reg_619_pp0_iter16_reg;
        weights3_0_addr_reg_619_pp0_iter18_reg <= weights3_0_addr_reg_619_pp0_iter17_reg;
        weights3_0_addr_reg_619_pp0_iter19_reg <= weights3_0_addr_reg_619_pp0_iter18_reg;
        weights3_0_addr_reg_619_pp0_iter1_reg <= weights3_0_addr_reg_619;
        weights3_0_addr_reg_619_pp0_iter20_reg <= weights3_0_addr_reg_619_pp0_iter19_reg;
        weights3_0_addr_reg_619_pp0_iter2_reg <= weights3_0_addr_reg_619_pp0_iter1_reg;
        weights3_0_addr_reg_619_pp0_iter3_reg <= weights3_0_addr_reg_619_pp0_iter2_reg;
        weights3_0_addr_reg_619_pp0_iter4_reg <= weights3_0_addr_reg_619_pp0_iter3_reg;
        weights3_0_addr_reg_619_pp0_iter5_reg <= weights3_0_addr_reg_619_pp0_iter4_reg;
        weights3_0_addr_reg_619_pp0_iter6_reg <= weights3_0_addr_reg_619_pp0_iter5_reg;
        weights3_0_addr_reg_619_pp0_iter7_reg <= weights3_0_addr_reg_619_pp0_iter6_reg;
        weights3_0_addr_reg_619_pp0_iter8_reg <= weights3_0_addr_reg_619_pp0_iter7_reg;
        weights3_0_addr_reg_619_pp0_iter9_reg <= weights3_0_addr_reg_619_pp0_iter8_reg;
        weights3_1_addr_reg_633 <= zext_ln194_fu_312_p1;
        weights3_1_addr_reg_633_pp0_iter10_reg <= weights3_1_addr_reg_633_pp0_iter9_reg;
        weights3_1_addr_reg_633_pp0_iter11_reg <= weights3_1_addr_reg_633_pp0_iter10_reg;
        weights3_1_addr_reg_633_pp0_iter12_reg <= weights3_1_addr_reg_633_pp0_iter11_reg;
        weights3_1_addr_reg_633_pp0_iter13_reg <= weights3_1_addr_reg_633_pp0_iter12_reg;
        weights3_1_addr_reg_633_pp0_iter14_reg <= weights3_1_addr_reg_633_pp0_iter13_reg;
        weights3_1_addr_reg_633_pp0_iter15_reg <= weights3_1_addr_reg_633_pp0_iter14_reg;
        weights3_1_addr_reg_633_pp0_iter16_reg <= weights3_1_addr_reg_633_pp0_iter15_reg;
        weights3_1_addr_reg_633_pp0_iter17_reg <= weights3_1_addr_reg_633_pp0_iter16_reg;
        weights3_1_addr_reg_633_pp0_iter18_reg <= weights3_1_addr_reg_633_pp0_iter17_reg;
        weights3_1_addr_reg_633_pp0_iter19_reg <= weights3_1_addr_reg_633_pp0_iter18_reg;
        weights3_1_addr_reg_633_pp0_iter1_reg <= weights3_1_addr_reg_633;
        weights3_1_addr_reg_633_pp0_iter20_reg <= weights3_1_addr_reg_633_pp0_iter19_reg;
        weights3_1_addr_reg_633_pp0_iter2_reg <= weights3_1_addr_reg_633_pp0_iter1_reg;
        weights3_1_addr_reg_633_pp0_iter3_reg <= weights3_1_addr_reg_633_pp0_iter2_reg;
        weights3_1_addr_reg_633_pp0_iter4_reg <= weights3_1_addr_reg_633_pp0_iter3_reg;
        weights3_1_addr_reg_633_pp0_iter5_reg <= weights3_1_addr_reg_633_pp0_iter4_reg;
        weights3_1_addr_reg_633_pp0_iter6_reg <= weights3_1_addr_reg_633_pp0_iter5_reg;
        weights3_1_addr_reg_633_pp0_iter7_reg <= weights3_1_addr_reg_633_pp0_iter6_reg;
        weights3_1_addr_reg_633_pp0_iter8_reg <= weights3_1_addr_reg_633_pp0_iter7_reg;
        weights3_1_addr_reg_633_pp0_iter9_reg <= weights3_1_addr_reg_633_pp0_iter8_reg;
        weights3_2_addr_reg_638 <= zext_ln194_fu_312_p1;
        weights3_2_addr_reg_638_pp0_iter10_reg <= weights3_2_addr_reg_638_pp0_iter9_reg;
        weights3_2_addr_reg_638_pp0_iter11_reg <= weights3_2_addr_reg_638_pp0_iter10_reg;
        weights3_2_addr_reg_638_pp0_iter12_reg <= weights3_2_addr_reg_638_pp0_iter11_reg;
        weights3_2_addr_reg_638_pp0_iter13_reg <= weights3_2_addr_reg_638_pp0_iter12_reg;
        weights3_2_addr_reg_638_pp0_iter14_reg <= weights3_2_addr_reg_638_pp0_iter13_reg;
        weights3_2_addr_reg_638_pp0_iter15_reg <= weights3_2_addr_reg_638_pp0_iter14_reg;
        weights3_2_addr_reg_638_pp0_iter16_reg <= weights3_2_addr_reg_638_pp0_iter15_reg;
        weights3_2_addr_reg_638_pp0_iter17_reg <= weights3_2_addr_reg_638_pp0_iter16_reg;
        weights3_2_addr_reg_638_pp0_iter18_reg <= weights3_2_addr_reg_638_pp0_iter17_reg;
        weights3_2_addr_reg_638_pp0_iter19_reg <= weights3_2_addr_reg_638_pp0_iter18_reg;
        weights3_2_addr_reg_638_pp0_iter1_reg <= weights3_2_addr_reg_638;
        weights3_2_addr_reg_638_pp0_iter20_reg <= weights3_2_addr_reg_638_pp0_iter19_reg;
        weights3_2_addr_reg_638_pp0_iter2_reg <= weights3_2_addr_reg_638_pp0_iter1_reg;
        weights3_2_addr_reg_638_pp0_iter3_reg <= weights3_2_addr_reg_638_pp0_iter2_reg;
        weights3_2_addr_reg_638_pp0_iter4_reg <= weights3_2_addr_reg_638_pp0_iter3_reg;
        weights3_2_addr_reg_638_pp0_iter5_reg <= weights3_2_addr_reg_638_pp0_iter4_reg;
        weights3_2_addr_reg_638_pp0_iter6_reg <= weights3_2_addr_reg_638_pp0_iter5_reg;
        weights3_2_addr_reg_638_pp0_iter7_reg <= weights3_2_addr_reg_638_pp0_iter6_reg;
        weights3_2_addr_reg_638_pp0_iter8_reg <= weights3_2_addr_reg_638_pp0_iter7_reg;
        weights3_2_addr_reg_638_pp0_iter9_reg <= weights3_2_addr_reg_638_pp0_iter8_reg;
        weights3_3_addr_reg_643 <= zext_ln194_1_fu_365_p1;
        weights3_3_addr_reg_643_pp0_iter10_reg <= weights3_3_addr_reg_643_pp0_iter9_reg;
        weights3_3_addr_reg_643_pp0_iter11_reg <= weights3_3_addr_reg_643_pp0_iter10_reg;
        weights3_3_addr_reg_643_pp0_iter12_reg <= weights3_3_addr_reg_643_pp0_iter11_reg;
        weights3_3_addr_reg_643_pp0_iter13_reg <= weights3_3_addr_reg_643_pp0_iter12_reg;
        weights3_3_addr_reg_643_pp0_iter14_reg <= weights3_3_addr_reg_643_pp0_iter13_reg;
        weights3_3_addr_reg_643_pp0_iter15_reg <= weights3_3_addr_reg_643_pp0_iter14_reg;
        weights3_3_addr_reg_643_pp0_iter16_reg <= weights3_3_addr_reg_643_pp0_iter15_reg;
        weights3_3_addr_reg_643_pp0_iter17_reg <= weights3_3_addr_reg_643_pp0_iter16_reg;
        weights3_3_addr_reg_643_pp0_iter18_reg <= weights3_3_addr_reg_643_pp0_iter17_reg;
        weights3_3_addr_reg_643_pp0_iter19_reg <= weights3_3_addr_reg_643_pp0_iter18_reg;
        weights3_3_addr_reg_643_pp0_iter1_reg <= weights3_3_addr_reg_643;
        weights3_3_addr_reg_643_pp0_iter20_reg <= weights3_3_addr_reg_643_pp0_iter19_reg;
        weights3_3_addr_reg_643_pp0_iter2_reg <= weights3_3_addr_reg_643_pp0_iter1_reg;
        weights3_3_addr_reg_643_pp0_iter3_reg <= weights3_3_addr_reg_643_pp0_iter2_reg;
        weights3_3_addr_reg_643_pp0_iter4_reg <= weights3_3_addr_reg_643_pp0_iter3_reg;
        weights3_3_addr_reg_643_pp0_iter5_reg <= weights3_3_addr_reg_643_pp0_iter4_reg;
        weights3_3_addr_reg_643_pp0_iter6_reg <= weights3_3_addr_reg_643_pp0_iter5_reg;
        weights3_3_addr_reg_643_pp0_iter7_reg <= weights3_3_addr_reg_643_pp0_iter6_reg;
        weights3_3_addr_reg_643_pp0_iter8_reg <= weights3_3_addr_reg_643_pp0_iter7_reg;
        weights3_3_addr_reg_643_pp0_iter9_reg <= weights3_3_addr_reg_643_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_236 <= weights3_0_q1;
        reg_240 <= weights3_1_q1;
        reg_244 <= weights3_2_q1;
        reg_248 <= weights3_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_252 <= grp_fu_220_p2;
        reg_256 <= grp_fu_224_p2;
        reg_260 <= grp_fu_228_p2;
        reg_264 <= grp_fu_232_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_addr_3_reg_648 <= zext_ln194_2_fu_385_p1;
        weights3_0_addr_3_reg_648_pp0_iter10_reg <= weights3_0_addr_3_reg_648_pp0_iter9_reg;
        weights3_0_addr_3_reg_648_pp0_iter11_reg <= weights3_0_addr_3_reg_648_pp0_iter10_reg;
        weights3_0_addr_3_reg_648_pp0_iter12_reg <= weights3_0_addr_3_reg_648_pp0_iter11_reg;
        weights3_0_addr_3_reg_648_pp0_iter13_reg <= weights3_0_addr_3_reg_648_pp0_iter12_reg;
        weights3_0_addr_3_reg_648_pp0_iter14_reg <= weights3_0_addr_3_reg_648_pp0_iter13_reg;
        weights3_0_addr_3_reg_648_pp0_iter15_reg <= weights3_0_addr_3_reg_648_pp0_iter14_reg;
        weights3_0_addr_3_reg_648_pp0_iter16_reg <= weights3_0_addr_3_reg_648_pp0_iter15_reg;
        weights3_0_addr_3_reg_648_pp0_iter17_reg <= weights3_0_addr_3_reg_648_pp0_iter16_reg;
        weights3_0_addr_3_reg_648_pp0_iter18_reg <= weights3_0_addr_3_reg_648_pp0_iter17_reg;
        weights3_0_addr_3_reg_648_pp0_iter19_reg <= weights3_0_addr_3_reg_648_pp0_iter18_reg;
        weights3_0_addr_3_reg_648_pp0_iter1_reg <= weights3_0_addr_3_reg_648;
        weights3_0_addr_3_reg_648_pp0_iter20_reg <= weights3_0_addr_3_reg_648_pp0_iter19_reg;
        weights3_0_addr_3_reg_648_pp0_iter2_reg <= weights3_0_addr_3_reg_648_pp0_iter1_reg;
        weights3_0_addr_3_reg_648_pp0_iter3_reg <= weights3_0_addr_3_reg_648_pp0_iter2_reg;
        weights3_0_addr_3_reg_648_pp0_iter4_reg <= weights3_0_addr_3_reg_648_pp0_iter3_reg;
        weights3_0_addr_3_reg_648_pp0_iter5_reg <= weights3_0_addr_3_reg_648_pp0_iter4_reg;
        weights3_0_addr_3_reg_648_pp0_iter6_reg <= weights3_0_addr_3_reg_648_pp0_iter5_reg;
        weights3_0_addr_3_reg_648_pp0_iter7_reg <= weights3_0_addr_3_reg_648_pp0_iter6_reg;
        weights3_0_addr_3_reg_648_pp0_iter8_reg <= weights3_0_addr_3_reg_648_pp0_iter7_reg;
        weights3_0_addr_3_reg_648_pp0_iter9_reg <= weights3_0_addr_3_reg_648_pp0_iter8_reg;
        weights3_0_addr_4_reg_672 <= lshr_ln194_5_cast_fu_446_p1;
        weights3_0_addr_4_reg_672_pp0_iter10_reg <= weights3_0_addr_4_reg_672_pp0_iter9_reg;
        weights3_0_addr_4_reg_672_pp0_iter11_reg <= weights3_0_addr_4_reg_672_pp0_iter10_reg;
        weights3_0_addr_4_reg_672_pp0_iter12_reg <= weights3_0_addr_4_reg_672_pp0_iter11_reg;
        weights3_0_addr_4_reg_672_pp0_iter13_reg <= weights3_0_addr_4_reg_672_pp0_iter12_reg;
        weights3_0_addr_4_reg_672_pp0_iter14_reg <= weights3_0_addr_4_reg_672_pp0_iter13_reg;
        weights3_0_addr_4_reg_672_pp0_iter15_reg <= weights3_0_addr_4_reg_672_pp0_iter14_reg;
        weights3_0_addr_4_reg_672_pp0_iter16_reg <= weights3_0_addr_4_reg_672_pp0_iter15_reg;
        weights3_0_addr_4_reg_672_pp0_iter17_reg <= weights3_0_addr_4_reg_672_pp0_iter16_reg;
        weights3_0_addr_4_reg_672_pp0_iter18_reg <= weights3_0_addr_4_reg_672_pp0_iter17_reg;
        weights3_0_addr_4_reg_672_pp0_iter19_reg <= weights3_0_addr_4_reg_672_pp0_iter18_reg;
        weights3_0_addr_4_reg_672_pp0_iter1_reg <= weights3_0_addr_4_reg_672;
        weights3_0_addr_4_reg_672_pp0_iter20_reg <= weights3_0_addr_4_reg_672_pp0_iter19_reg;
        weights3_0_addr_4_reg_672_pp0_iter2_reg <= weights3_0_addr_4_reg_672_pp0_iter1_reg;
        weights3_0_addr_4_reg_672_pp0_iter3_reg <= weights3_0_addr_4_reg_672_pp0_iter2_reg;
        weights3_0_addr_4_reg_672_pp0_iter4_reg <= weights3_0_addr_4_reg_672_pp0_iter3_reg;
        weights3_0_addr_4_reg_672_pp0_iter5_reg <= weights3_0_addr_4_reg_672_pp0_iter4_reg;
        weights3_0_addr_4_reg_672_pp0_iter6_reg <= weights3_0_addr_4_reg_672_pp0_iter5_reg;
        weights3_0_addr_4_reg_672_pp0_iter7_reg <= weights3_0_addr_4_reg_672_pp0_iter6_reg;
        weights3_0_addr_4_reg_672_pp0_iter8_reg <= weights3_0_addr_4_reg_672_pp0_iter7_reg;
        weights3_0_addr_4_reg_672_pp0_iter9_reg <= weights3_0_addr_4_reg_672_pp0_iter8_reg;
        weights3_1_addr_3_reg_654 <= lshr_ln194_3_cast_fu_405_p1;
        weights3_1_addr_3_reg_654_pp0_iter10_reg <= weights3_1_addr_3_reg_654_pp0_iter9_reg;
        weights3_1_addr_3_reg_654_pp0_iter11_reg <= weights3_1_addr_3_reg_654_pp0_iter10_reg;
        weights3_1_addr_3_reg_654_pp0_iter12_reg <= weights3_1_addr_3_reg_654_pp0_iter11_reg;
        weights3_1_addr_3_reg_654_pp0_iter13_reg <= weights3_1_addr_3_reg_654_pp0_iter12_reg;
        weights3_1_addr_3_reg_654_pp0_iter14_reg <= weights3_1_addr_3_reg_654_pp0_iter13_reg;
        weights3_1_addr_3_reg_654_pp0_iter15_reg <= weights3_1_addr_3_reg_654_pp0_iter14_reg;
        weights3_1_addr_3_reg_654_pp0_iter16_reg <= weights3_1_addr_3_reg_654_pp0_iter15_reg;
        weights3_1_addr_3_reg_654_pp0_iter17_reg <= weights3_1_addr_3_reg_654_pp0_iter16_reg;
        weights3_1_addr_3_reg_654_pp0_iter18_reg <= weights3_1_addr_3_reg_654_pp0_iter17_reg;
        weights3_1_addr_3_reg_654_pp0_iter19_reg <= weights3_1_addr_3_reg_654_pp0_iter18_reg;
        weights3_1_addr_3_reg_654_pp0_iter1_reg <= weights3_1_addr_3_reg_654;
        weights3_1_addr_3_reg_654_pp0_iter20_reg <= weights3_1_addr_3_reg_654_pp0_iter19_reg;
        weights3_1_addr_3_reg_654_pp0_iter2_reg <= weights3_1_addr_3_reg_654_pp0_iter1_reg;
        weights3_1_addr_3_reg_654_pp0_iter3_reg <= weights3_1_addr_3_reg_654_pp0_iter2_reg;
        weights3_1_addr_3_reg_654_pp0_iter4_reg <= weights3_1_addr_3_reg_654_pp0_iter3_reg;
        weights3_1_addr_3_reg_654_pp0_iter5_reg <= weights3_1_addr_3_reg_654_pp0_iter4_reg;
        weights3_1_addr_3_reg_654_pp0_iter6_reg <= weights3_1_addr_3_reg_654_pp0_iter5_reg;
        weights3_1_addr_3_reg_654_pp0_iter7_reg <= weights3_1_addr_3_reg_654_pp0_iter6_reg;
        weights3_1_addr_3_reg_654_pp0_iter8_reg <= weights3_1_addr_3_reg_654_pp0_iter7_reg;
        weights3_1_addr_3_reg_654_pp0_iter9_reg <= weights3_1_addr_3_reg_654_pp0_iter8_reg;
        weights3_1_addr_4_reg_677 <= zext_ln194_4_fu_466_p1;
        weights3_1_addr_4_reg_677_pp0_iter10_reg <= weights3_1_addr_4_reg_677_pp0_iter9_reg;
        weights3_1_addr_4_reg_677_pp0_iter11_reg <= weights3_1_addr_4_reg_677_pp0_iter10_reg;
        weights3_1_addr_4_reg_677_pp0_iter12_reg <= weights3_1_addr_4_reg_677_pp0_iter11_reg;
        weights3_1_addr_4_reg_677_pp0_iter13_reg <= weights3_1_addr_4_reg_677_pp0_iter12_reg;
        weights3_1_addr_4_reg_677_pp0_iter14_reg <= weights3_1_addr_4_reg_677_pp0_iter13_reg;
        weights3_1_addr_4_reg_677_pp0_iter15_reg <= weights3_1_addr_4_reg_677_pp0_iter14_reg;
        weights3_1_addr_4_reg_677_pp0_iter16_reg <= weights3_1_addr_4_reg_677_pp0_iter15_reg;
        weights3_1_addr_4_reg_677_pp0_iter17_reg <= weights3_1_addr_4_reg_677_pp0_iter16_reg;
        weights3_1_addr_4_reg_677_pp0_iter18_reg <= weights3_1_addr_4_reg_677_pp0_iter17_reg;
        weights3_1_addr_4_reg_677_pp0_iter19_reg <= weights3_1_addr_4_reg_677_pp0_iter18_reg;
        weights3_1_addr_4_reg_677_pp0_iter1_reg <= weights3_1_addr_4_reg_677;
        weights3_1_addr_4_reg_677_pp0_iter20_reg <= weights3_1_addr_4_reg_677_pp0_iter19_reg;
        weights3_1_addr_4_reg_677_pp0_iter2_reg <= weights3_1_addr_4_reg_677_pp0_iter1_reg;
        weights3_1_addr_4_reg_677_pp0_iter3_reg <= weights3_1_addr_4_reg_677_pp0_iter2_reg;
        weights3_1_addr_4_reg_677_pp0_iter4_reg <= weights3_1_addr_4_reg_677_pp0_iter3_reg;
        weights3_1_addr_4_reg_677_pp0_iter5_reg <= weights3_1_addr_4_reg_677_pp0_iter4_reg;
        weights3_1_addr_4_reg_677_pp0_iter6_reg <= weights3_1_addr_4_reg_677_pp0_iter5_reg;
        weights3_1_addr_4_reg_677_pp0_iter7_reg <= weights3_1_addr_4_reg_677_pp0_iter6_reg;
        weights3_1_addr_4_reg_677_pp0_iter8_reg <= weights3_1_addr_4_reg_677_pp0_iter7_reg;
        weights3_1_addr_4_reg_677_pp0_iter9_reg <= weights3_1_addr_4_reg_677_pp0_iter8_reg;
        weights3_2_addr_3_reg_660 <= zext_ln194_3_fu_425_p1;
        weights3_2_addr_3_reg_660_pp0_iter10_reg <= weights3_2_addr_3_reg_660_pp0_iter9_reg;
        weights3_2_addr_3_reg_660_pp0_iter11_reg <= weights3_2_addr_3_reg_660_pp0_iter10_reg;
        weights3_2_addr_3_reg_660_pp0_iter12_reg <= weights3_2_addr_3_reg_660_pp0_iter11_reg;
        weights3_2_addr_3_reg_660_pp0_iter13_reg <= weights3_2_addr_3_reg_660_pp0_iter12_reg;
        weights3_2_addr_3_reg_660_pp0_iter14_reg <= weights3_2_addr_3_reg_660_pp0_iter13_reg;
        weights3_2_addr_3_reg_660_pp0_iter15_reg <= weights3_2_addr_3_reg_660_pp0_iter14_reg;
        weights3_2_addr_3_reg_660_pp0_iter16_reg <= weights3_2_addr_3_reg_660_pp0_iter15_reg;
        weights3_2_addr_3_reg_660_pp0_iter17_reg <= weights3_2_addr_3_reg_660_pp0_iter16_reg;
        weights3_2_addr_3_reg_660_pp0_iter18_reg <= weights3_2_addr_3_reg_660_pp0_iter17_reg;
        weights3_2_addr_3_reg_660_pp0_iter19_reg <= weights3_2_addr_3_reg_660_pp0_iter18_reg;
        weights3_2_addr_3_reg_660_pp0_iter1_reg <= weights3_2_addr_3_reg_660;
        weights3_2_addr_3_reg_660_pp0_iter20_reg <= weights3_2_addr_3_reg_660_pp0_iter19_reg;
        weights3_2_addr_3_reg_660_pp0_iter2_reg <= weights3_2_addr_3_reg_660_pp0_iter1_reg;
        weights3_2_addr_3_reg_660_pp0_iter3_reg <= weights3_2_addr_3_reg_660_pp0_iter2_reg;
        weights3_2_addr_3_reg_660_pp0_iter4_reg <= weights3_2_addr_3_reg_660_pp0_iter3_reg;
        weights3_2_addr_3_reg_660_pp0_iter5_reg <= weights3_2_addr_3_reg_660_pp0_iter4_reg;
        weights3_2_addr_3_reg_660_pp0_iter6_reg <= weights3_2_addr_3_reg_660_pp0_iter5_reg;
        weights3_2_addr_3_reg_660_pp0_iter7_reg <= weights3_2_addr_3_reg_660_pp0_iter6_reg;
        weights3_2_addr_3_reg_660_pp0_iter8_reg <= weights3_2_addr_3_reg_660_pp0_iter7_reg;
        weights3_2_addr_3_reg_660_pp0_iter9_reg <= weights3_2_addr_3_reg_660_pp0_iter8_reg;
        weights3_2_addr_4_reg_682 <= zext_ln194_4_fu_466_p1;
        weights3_2_addr_4_reg_682_pp0_iter10_reg <= weights3_2_addr_4_reg_682_pp0_iter9_reg;
        weights3_2_addr_4_reg_682_pp0_iter11_reg <= weights3_2_addr_4_reg_682_pp0_iter10_reg;
        weights3_2_addr_4_reg_682_pp0_iter12_reg <= weights3_2_addr_4_reg_682_pp0_iter11_reg;
        weights3_2_addr_4_reg_682_pp0_iter13_reg <= weights3_2_addr_4_reg_682_pp0_iter12_reg;
        weights3_2_addr_4_reg_682_pp0_iter14_reg <= weights3_2_addr_4_reg_682_pp0_iter13_reg;
        weights3_2_addr_4_reg_682_pp0_iter15_reg <= weights3_2_addr_4_reg_682_pp0_iter14_reg;
        weights3_2_addr_4_reg_682_pp0_iter16_reg <= weights3_2_addr_4_reg_682_pp0_iter15_reg;
        weights3_2_addr_4_reg_682_pp0_iter17_reg <= weights3_2_addr_4_reg_682_pp0_iter16_reg;
        weights3_2_addr_4_reg_682_pp0_iter18_reg <= weights3_2_addr_4_reg_682_pp0_iter17_reg;
        weights3_2_addr_4_reg_682_pp0_iter19_reg <= weights3_2_addr_4_reg_682_pp0_iter18_reg;
        weights3_2_addr_4_reg_682_pp0_iter1_reg <= weights3_2_addr_4_reg_682;
        weights3_2_addr_4_reg_682_pp0_iter20_reg <= weights3_2_addr_4_reg_682_pp0_iter19_reg;
        weights3_2_addr_4_reg_682_pp0_iter2_reg <= weights3_2_addr_4_reg_682_pp0_iter1_reg;
        weights3_2_addr_4_reg_682_pp0_iter3_reg <= weights3_2_addr_4_reg_682_pp0_iter2_reg;
        weights3_2_addr_4_reg_682_pp0_iter4_reg <= weights3_2_addr_4_reg_682_pp0_iter3_reg;
        weights3_2_addr_4_reg_682_pp0_iter5_reg <= weights3_2_addr_4_reg_682_pp0_iter4_reg;
        weights3_2_addr_4_reg_682_pp0_iter6_reg <= weights3_2_addr_4_reg_682_pp0_iter5_reg;
        weights3_2_addr_4_reg_682_pp0_iter7_reg <= weights3_2_addr_4_reg_682_pp0_iter6_reg;
        weights3_2_addr_4_reg_682_pp0_iter8_reg <= weights3_2_addr_4_reg_682_pp0_iter7_reg;
        weights3_2_addr_4_reg_682_pp0_iter9_reg <= weights3_2_addr_4_reg_682_pp0_iter8_reg;
        weights3_3_addr_3_reg_666 <= zext_ln194_3_fu_425_p1;
        weights3_3_addr_3_reg_666_pp0_iter10_reg <= weights3_3_addr_3_reg_666_pp0_iter9_reg;
        weights3_3_addr_3_reg_666_pp0_iter11_reg <= weights3_3_addr_3_reg_666_pp0_iter10_reg;
        weights3_3_addr_3_reg_666_pp0_iter12_reg <= weights3_3_addr_3_reg_666_pp0_iter11_reg;
        weights3_3_addr_3_reg_666_pp0_iter13_reg <= weights3_3_addr_3_reg_666_pp0_iter12_reg;
        weights3_3_addr_3_reg_666_pp0_iter14_reg <= weights3_3_addr_3_reg_666_pp0_iter13_reg;
        weights3_3_addr_3_reg_666_pp0_iter15_reg <= weights3_3_addr_3_reg_666_pp0_iter14_reg;
        weights3_3_addr_3_reg_666_pp0_iter16_reg <= weights3_3_addr_3_reg_666_pp0_iter15_reg;
        weights3_3_addr_3_reg_666_pp0_iter17_reg <= weights3_3_addr_3_reg_666_pp0_iter16_reg;
        weights3_3_addr_3_reg_666_pp0_iter18_reg <= weights3_3_addr_3_reg_666_pp0_iter17_reg;
        weights3_3_addr_3_reg_666_pp0_iter19_reg <= weights3_3_addr_3_reg_666_pp0_iter18_reg;
        weights3_3_addr_3_reg_666_pp0_iter1_reg <= weights3_3_addr_3_reg_666;
        weights3_3_addr_3_reg_666_pp0_iter20_reg <= weights3_3_addr_3_reg_666_pp0_iter19_reg;
        weights3_3_addr_3_reg_666_pp0_iter2_reg <= weights3_3_addr_3_reg_666_pp0_iter1_reg;
        weights3_3_addr_3_reg_666_pp0_iter3_reg <= weights3_3_addr_3_reg_666_pp0_iter2_reg;
        weights3_3_addr_3_reg_666_pp0_iter4_reg <= weights3_3_addr_3_reg_666_pp0_iter3_reg;
        weights3_3_addr_3_reg_666_pp0_iter5_reg <= weights3_3_addr_3_reg_666_pp0_iter4_reg;
        weights3_3_addr_3_reg_666_pp0_iter6_reg <= weights3_3_addr_3_reg_666_pp0_iter5_reg;
        weights3_3_addr_3_reg_666_pp0_iter7_reg <= weights3_3_addr_3_reg_666_pp0_iter6_reg;
        weights3_3_addr_3_reg_666_pp0_iter8_reg <= weights3_3_addr_3_reg_666_pp0_iter7_reg;
        weights3_3_addr_3_reg_666_pp0_iter9_reg <= weights3_3_addr_3_reg_666_pp0_iter8_reg;
        weights3_3_addr_4_reg_687 <= zext_ln194_4_fu_466_p1;
        weights3_3_addr_4_reg_687_pp0_iter10_reg <= weights3_3_addr_4_reg_687_pp0_iter9_reg;
        weights3_3_addr_4_reg_687_pp0_iter11_reg <= weights3_3_addr_4_reg_687_pp0_iter10_reg;
        weights3_3_addr_4_reg_687_pp0_iter12_reg <= weights3_3_addr_4_reg_687_pp0_iter11_reg;
        weights3_3_addr_4_reg_687_pp0_iter13_reg <= weights3_3_addr_4_reg_687_pp0_iter12_reg;
        weights3_3_addr_4_reg_687_pp0_iter14_reg <= weights3_3_addr_4_reg_687_pp0_iter13_reg;
        weights3_3_addr_4_reg_687_pp0_iter15_reg <= weights3_3_addr_4_reg_687_pp0_iter14_reg;
        weights3_3_addr_4_reg_687_pp0_iter16_reg <= weights3_3_addr_4_reg_687_pp0_iter15_reg;
        weights3_3_addr_4_reg_687_pp0_iter17_reg <= weights3_3_addr_4_reg_687_pp0_iter16_reg;
        weights3_3_addr_4_reg_687_pp0_iter18_reg <= weights3_3_addr_4_reg_687_pp0_iter17_reg;
        weights3_3_addr_4_reg_687_pp0_iter19_reg <= weights3_3_addr_4_reg_687_pp0_iter18_reg;
        weights3_3_addr_4_reg_687_pp0_iter1_reg <= weights3_3_addr_4_reg_687;
        weights3_3_addr_4_reg_687_pp0_iter20_reg <= weights3_3_addr_4_reg_687_pp0_iter19_reg;
        weights3_3_addr_4_reg_687_pp0_iter2_reg <= weights3_3_addr_4_reg_687_pp0_iter1_reg;
        weights3_3_addr_4_reg_687_pp0_iter3_reg <= weights3_3_addr_4_reg_687_pp0_iter2_reg;
        weights3_3_addr_4_reg_687_pp0_iter4_reg <= weights3_3_addr_4_reg_687_pp0_iter3_reg;
        weights3_3_addr_4_reg_687_pp0_iter5_reg <= weights3_3_addr_4_reg_687_pp0_iter4_reg;
        weights3_3_addr_4_reg_687_pp0_iter6_reg <= weights3_3_addr_4_reg_687_pp0_iter5_reg;
        weights3_3_addr_4_reg_687_pp0_iter7_reg <= weights3_3_addr_4_reg_687_pp0_iter6_reg;
        weights3_3_addr_4_reg_687_pp0_iter8_reg <= weights3_3_addr_4_reg_687_pp0_iter7_reg;
        weights3_3_addr_4_reg_687_pp0_iter9_reg <= weights3_3_addr_4_reg_687_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_load_4_reg_712 <= weights3_0_q0;
        weights3_1_load_4_reg_717 <= weights3_1_q0;
        weights3_2_load_4_reg_722 <= weights3_2_q0;
        weights3_3_load_4_reg_727 <= weights3_3_q0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_reg_615 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter20 == 1'b1) & (tmp_reg_615_pp0_iter19_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter20_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter20_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter20_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to19 = 1'b1;
    end else begin
        ap_idle_pp0_0to19 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to21 = 1'b1;
    end else begin
        ap_idle_pp0_1to21 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_4 = i_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_220_p0 = bitcast_ln194_8_fu_523_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_220_p0 = bitcast_ln194_4_fu_503_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_220_p0 = bitcast_ln194_fu_473_p1;
    end else begin
        grp_fu_220_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_224_p0 = bitcast_ln194_9_fu_527_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_224_p0 = bitcast_ln194_5_fu_508_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_224_p0 = bitcast_ln194_1_fu_478_p1;
    end else begin
        grp_fu_224_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_228_p0 = bitcast_ln194_10_fu_531_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_228_p0 = bitcast_ln194_6_fu_513_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_228_p0 = bitcast_ln194_2_fu_483_p1;
    end else begin
        grp_fu_228_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_232_p0 = bitcast_ln194_11_fu_535_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_232_p0 = bitcast_ln194_7_fu_518_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_232_p0 = bitcast_ln194_3_fu_488_p1;
    end else begin
        grp_fu_232_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address0_local = weights3_0_addr_4_reg_672_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address0_local = weights3_0_addr_3_reg_648_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address0_local = lshr_ln194_5_cast_fu_446_p1;
    end else begin
        weights3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_address1_local = weights3_0_addr_reg_619_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_0_address1_local = zext_ln194_2_fu_385_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_address1_local = zext_ln194_fu_312_p1;
    end else begin
        weights3_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce0_local = 1'b1;
    end else begin
        weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_0_ce1_local = 1'b1;
    end else begin
        weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_0_d0_local = bitcast_ln194_14_fu_575_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_d0_local = bitcast_ln194_13_fu_544_p1;
    end else begin
        weights3_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights3_0_we0_local = 1'b1;
    end else begin
        weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_0_we1_local = 1'b1;
    end else begin
        weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address0_local = weights3_1_addr_4_reg_677_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address0_local = weights3_1_addr_3_reg_654_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address0_local = zext_ln194_4_fu_466_p1;
    end else begin
        weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_address1_local = weights3_1_addr_reg_633_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_1_address1_local = lshr_ln194_3_cast_fu_405_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_address1_local = zext_ln194_fu_312_p1;
    end else begin
        weights3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce0_local = 1'b1;
    end else begin
        weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_1_ce1_local = 1'b1;
    end else begin
        weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_1_d0_local = bitcast_ln194_17_fu_580_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_d0_local = bitcast_ln194_16_fu_553_p1;
    end else begin
        weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights3_1_we0_local = 1'b1;
    end else begin
        weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_1_we1_local = 1'b1;
    end else begin
        weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address0_local = weights3_2_addr_4_reg_682_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address0_local = weights3_2_addr_3_reg_660_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address0_local = zext_ln194_4_fu_466_p1;
    end else begin
        weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_address1_local = weights3_2_addr_reg_638_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_2_address1_local = zext_ln194_3_fu_425_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_address1_local = zext_ln194_fu_312_p1;
    end else begin
        weights3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce0_local = 1'b1;
    end else begin
        weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_2_ce1_local = 1'b1;
    end else begin
        weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_2_d0_local = bitcast_ln194_20_fu_585_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_d0_local = bitcast_ln194_19_fu_562_p1;
    end else begin
        weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights3_2_we0_local = 1'b1;
    end else begin
        weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_2_we1_local = 1'b1;
    end else begin
        weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address0_local = weights3_3_addr_4_reg_687_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address0_local = weights3_3_addr_3_reg_666_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address0_local = zext_ln194_4_fu_466_p1;
    end else begin
        weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_address1_local = weights3_3_addr_reg_643_pp0_iter20_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_3_address1_local = zext_ln194_3_fu_425_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_address1_local = zext_ln194_1_fu_365_p1;
    end else begin
        weights3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce0_local = 1'b1;
    end else begin
        weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_3_ce1_local = 1'b1;
    end else begin
        weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights3_3_d0_local = bitcast_ln194_23_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_d0_local = bitcast_ln194_22_fu_571_p1;
    end else begin
        weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter21 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights3_3_we0_local = 1'b1;
    end else begin
        weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter20 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights3_3_we1_local = 1'b1;
    end else begin
        weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter20_stage0) & (ap_idle_pp0_0to19 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to21 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln192_fu_493_p2 = (i_4_reg_610 + 7'd4);
assign add_ln194_1_fu_390_p2 = (empty_reg_624 + 8'd2);
assign add_ln194_2_fu_431_p2 = (empty_reg_624 + 8'd5);
assign add_ln194_fu_370_p2 = (empty_reg_624 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bitcast_ln194_10_fu_531_p1 = weights3_2_load_4_reg_722;
assign bitcast_ln194_11_fu_535_p1 = weights3_3_load_4_reg_727;
assign bitcast_ln194_12_fu_539_p1 = reg_252;
assign bitcast_ln194_13_fu_544_p1 = div213_1_1_reg_772;
assign bitcast_ln194_14_fu_575_p1 = reg_252;
assign bitcast_ln194_15_fu_548_p1 = reg_256;
assign bitcast_ln194_16_fu_553_p1 = div213_1_2_reg_777;
assign bitcast_ln194_17_fu_580_p1 = reg_256;
assign bitcast_ln194_18_fu_557_p1 = reg_260;
assign bitcast_ln194_19_fu_562_p1 = div213_2_reg_782;
assign bitcast_ln194_1_fu_478_p1 = reg_240;
assign bitcast_ln194_20_fu_585_p1 = reg_260;
assign bitcast_ln194_21_fu_566_p1 = reg_264;
assign bitcast_ln194_22_fu_571_p1 = div213_2_1_reg_787;
assign bitcast_ln194_23_fu_590_p1 = reg_264;
assign bitcast_ln194_2_fu_483_p1 = reg_244;
assign bitcast_ln194_3_fu_488_p1 = reg_248;
assign bitcast_ln194_4_fu_503_p1 = reg_236;
assign bitcast_ln194_5_fu_508_p1 = reg_240;
assign bitcast_ln194_6_fu_513_p1 = reg_244;
assign bitcast_ln194_7_fu_518_p1 = reg_248;
assign bitcast_ln194_8_fu_523_p1 = weights3_0_load_4_reg_712;
assign bitcast_ln194_9_fu_527_p1 = weights3_1_load_4_reg_717;
assign bitcast_ln194_fu_473_p1 = reg_236;
assign empty_34_fu_410_p2 = (empty_reg_624 + 8'd3);
assign empty_35_fu_451_p2 = (empty_reg_624 + 8'd6);
assign empty_fu_349_p2 = (p_shl_fu_341_p3 - or_ln192_cast_fu_337_p1);
assign lshr_ln194_1_fu_355_p4 = {{empty_fu_349_p2[7:2]}};
assign lshr_ln194_2_fu_375_p4 = {{add_ln194_fu_370_p2[7:2]}};
assign lshr_ln194_3_cast_fu_405_p1 = lshr_ln194_3_fu_395_p4;
assign lshr_ln194_3_fu_395_p4 = {{add_ln194_1_fu_390_p2[7:2]}};
assign lshr_ln194_4_fu_415_p4 = {{empty_34_fu_410_p2[7:2]}};
assign lshr_ln194_5_cast_fu_446_p1 = lshr_ln194_5_fu_436_p4;
assign lshr_ln194_5_fu_436_p4 = {{add_ln194_2_fu_431_p2[7:2]}};
assign lshr_ln194_6_fu_456_p4 = {{empty_35_fu_451_p2[7:2]}};
assign lshr_ln7_fu_284_p4 = {{ap_sig_allocacmp_i_4[5:2]}};
assign or_ln192_cast_fu_337_p1 = or_ln1_fu_329_p3;
assign or_ln1_fu_329_p3 = {{tmp_4_fu_319_p4}, {1'd1}};
assign p_shl6_fu_298_p3 = {{lshr_ln7_fu_284_p4}, {2'd0}};
assign p_shl_fu_341_p3 = {{tmp_4_fu_319_p4}, {3'd4}};
assign sub_ln194_fu_306_p2 = (p_shl6_fu_298_p3 - zext_ln194_5_fu_294_p1);
assign tmp_4_fu_319_p4 = {{ap_sig_allocacmp_i_4[5:1]}};
assign weights3_0_address0 = weights3_0_address0_local;
assign weights3_0_address1 = weights3_0_address1_local;
assign weights3_0_ce0 = weights3_0_ce0_local;
assign weights3_0_ce1 = weights3_0_ce1_local;
assign weights3_0_d0 = weights3_0_d0_local;
assign weights3_0_d1 = bitcast_ln194_12_fu_539_p1;
assign weights3_0_we0 = weights3_0_we0_local;
assign weights3_0_we1 = weights3_0_we1_local;
assign weights3_1_address0 = weights3_1_address0_local;
assign weights3_1_address1 = weights3_1_address1_local;
assign weights3_1_ce0 = weights3_1_ce0_local;
assign weights3_1_ce1 = weights3_1_ce1_local;
assign weights3_1_d0 = weights3_1_d0_local;
assign weights3_1_d1 = bitcast_ln194_15_fu_548_p1;
assign weights3_1_we0 = weights3_1_we0_local;
assign weights3_1_we1 = weights3_1_we1_local;
assign weights3_2_address0 = weights3_2_address0_local;
assign weights3_2_address1 = weights3_2_address1_local;
assign weights3_2_ce0 = weights3_2_ce0_local;
assign weights3_2_ce1 = weights3_2_ce1_local;
assign weights3_2_d0 = weights3_2_d0_local;
assign weights3_2_d1 = bitcast_ln194_18_fu_557_p1;
assign weights3_2_we0 = weights3_2_we0_local;
assign weights3_2_we1 = weights3_2_we1_local;
assign weights3_3_address0 = weights3_3_address0_local;
assign weights3_3_address1 = weights3_3_address1_local;
assign weights3_3_ce0 = weights3_3_ce0_local;
assign weights3_3_ce1 = weights3_3_ce1_local;
assign weights3_3_d0 = weights3_3_d0_local;
assign weights3_3_d1 = bitcast_ln194_21_fu_566_p1;
assign weights3_3_we0 = weights3_3_we0_local;
assign weights3_3_we1 = weights3_3_we1_local;
assign zext_ln194_1_fu_365_p1 = lshr_ln194_1_fu_355_p4;
assign zext_ln194_2_fu_385_p1 = lshr_ln194_2_fu_375_p4;
assign zext_ln194_3_fu_425_p1 = lshr_ln194_4_fu_415_p4;
assign zext_ln194_4_fu_466_p1 = lshr_ln194_6_fu_456_p4;
assign zext_ln194_5_fu_294_p1 = lshr_ln7_fu_284_p4;
assign zext_ln194_fu_312_p1 = sub_ln194_fu_306_p2;
always @ (posedge ap_clk) begin
    empty_reg_624[0] <= 1'b1;
end
endmodule 