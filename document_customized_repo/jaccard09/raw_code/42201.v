module backprop_update_weights_37_38_1_Pipeline_VITIS_LOOP_166_4_up_weight_loop7 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,weights2_1_address0,weights2_1_ce0,weights2_1_we0,weights2_1_d0,weights2_1_q0,weights2_1_address1,weights2_1_ce1,weights2_1_we1,weights2_1_d1,weights2_1_q1,weights2_0_address0,weights2_0_ce0,weights2_0_we0,weights2_0_d0,weights2_0_q0,weights2_0_address1,weights2_0_ce1,weights2_0_we1,weights2_0_d1,weights2_0_q1,norm_18); 
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] weights2_1_address0;
output   weights2_1_ce0;
output   weights2_1_we0;
output  [63:0] weights2_1_d0;
input  [63:0] weights2_1_q0;
output  [10:0] weights2_1_address1;
output   weights2_1_ce1;
output   weights2_1_we1;
output  [63:0] weights2_1_d1;
input  [63:0] weights2_1_q1;
output  [10:0] weights2_0_address0;
output   weights2_0_ce0;
output   weights2_0_we0;
output  [63:0] weights2_0_d0;
input  [63:0] weights2_0_q0;
output  [10:0] weights2_0_address1;
output   weights2_0_ce1;
output   weights2_0_we1;
output  [63:0] weights2_0_d1;
input  [63:0] weights2_0_q1;
input  [63:0] norm_18;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
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
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln166_reg_729;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_258;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_262;
wire   [63:0] grp_fu_250_p2;
reg   [63:0] reg_266;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] grp_fu_254_p2;
reg   [63:0] reg_270;
reg   [63:0] reg_274;
reg   [63:0] reg_278;
wire   [0:0] icmp_ln166_fu_300_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln166_reg_729_pp0_iter1_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter2_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter3_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter4_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter5_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter6_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter7_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter8_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter9_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter10_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter11_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter12_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter13_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter14_reg;
reg   [0:0] icmp_ln166_reg_729_pp0_iter15_reg;
wire   [6:0] select_ln121_fu_326_p3;
reg   [6:0] select_ln121_reg_733;
wire   [5:0] trunc_ln168_fu_358_p1;
reg   [5:0] trunc_ln168_reg_738;
reg   [5:0] trunc_ln168_reg_738_pp0_iter1_reg;
reg   [5:0] trunc_ln168_reg_738_pp0_iter2_reg;
reg   [5:0] trunc_ln168_reg_738_pp0_iter3_reg;
reg   [5:0] trunc_ln168_reg_738_pp0_iter4_reg;
reg   [5:0] trunc_ln168_reg_738_pp0_iter5_reg;
reg   [5:0] trunc_ln168_reg_738_pp0_iter6_reg;
reg   [5:0] trunc_ln168_reg_738_pp0_iter7_reg;
reg   [5:0] trunc_ln168_reg_738_pp0_iter8_reg;
reg   [10:0] weights2_0_addr_reg_749;
reg   [10:0] weights2_0_addr_reg_749_pp0_iter1_reg;
reg   [10:0] weights2_0_addr_reg_749_pp0_iter2_reg;
reg   [10:0] weights2_0_addr_reg_749_pp0_iter3_reg;
reg   [10:0] weights2_0_addr_reg_749_pp0_iter4_reg;
reg   [10:0] weights2_0_addr_reg_749_pp0_iter5_reg;
reg   [10:0] weights2_0_addr_reg_749_pp0_iter6_reg;
reg   [10:0] weights2_0_addr_reg_749_pp0_iter7_reg;
reg   [10:0] weights2_1_addr_reg_754;
reg   [10:0] weights2_1_addr_reg_754_pp0_iter1_reg;
reg   [10:0] weights2_1_addr_reg_754_pp0_iter2_reg;
reg   [10:0] weights2_1_addr_reg_754_pp0_iter3_reg;
reg   [10:0] weights2_1_addr_reg_754_pp0_iter4_reg;
reg   [10:0] weights2_1_addr_reg_754_pp0_iter5_reg;
reg   [10:0] weights2_1_addr_reg_754_pp0_iter6_reg;
reg   [10:0] weights2_1_addr_reg_754_pp0_iter7_reg;
reg   [3:0] tmp_s_reg_759;
reg   [3:0] tmp_s_reg_759_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_759_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_759_pp0_iter3_reg;
reg   [3:0] tmp_s_reg_759_pp0_iter4_reg;
reg   [3:0] tmp_s_reg_759_pp0_iter5_reg;
reg   [3:0] tmp_s_reg_759_pp0_iter6_reg;
reg   [3:0] tmp_s_reg_759_pp0_iter7_reg;
reg   [2:0] tmp_18_reg_764;
reg   [2:0] tmp_18_reg_764_pp0_iter1_reg;
reg   [2:0] tmp_18_reg_764_pp0_iter2_reg;
reg   [2:0] tmp_18_reg_764_pp0_iter3_reg;
reg   [2:0] tmp_18_reg_764_pp0_iter4_reg;
reg   [2:0] tmp_18_reg_764_pp0_iter5_reg;
reg   [2:0] tmp_18_reg_764_pp0_iter6_reg;
reg   [2:0] tmp_18_reg_764_pp0_iter7_reg;
reg   [0:0] tmp_11_reg_770;
reg   [0:0] tmp_11_reg_770_pp0_iter1_reg;
reg   [0:0] tmp_11_reg_770_pp0_iter2_reg;
reg   [0:0] tmp_11_reg_770_pp0_iter3_reg;
reg   [0:0] tmp_11_reg_770_pp0_iter4_reg;
reg   [0:0] tmp_11_reg_770_pp0_iter5_reg;
reg   [0:0] tmp_11_reg_770_pp0_iter6_reg;
reg   [0:0] tmp_11_reg_770_pp0_iter7_reg;
reg   [0:0] tmp_11_reg_770_pp0_iter8_reg;
reg   [1:0] tmp_19_reg_776;
reg   [1:0] tmp_19_reg_776_pp0_iter1_reg;
reg   [1:0] tmp_19_reg_776_pp0_iter2_reg;
reg   [1:0] tmp_19_reg_776_pp0_iter3_reg;
reg   [1:0] tmp_19_reg_776_pp0_iter4_reg;
reg   [1:0] tmp_19_reg_776_pp0_iter5_reg;
reg   [1:0] tmp_19_reg_776_pp0_iter6_reg;
reg   [1:0] tmp_19_reg_776_pp0_iter7_reg;
reg   [1:0] tmp_19_reg_776_pp0_iter8_reg;
reg   [1:0] tmp_20_reg_784;
reg   [1:0] tmp_20_reg_784_pp0_iter1_reg;
reg   [1:0] tmp_20_reg_784_pp0_iter2_reg;
reg   [1:0] tmp_20_reg_784_pp0_iter3_reg;
reg   [1:0] tmp_20_reg_784_pp0_iter4_reg;
reg   [1:0] tmp_20_reg_784_pp0_iter5_reg;
reg   [1:0] tmp_20_reg_784_pp0_iter6_reg;
reg   [1:0] tmp_20_reg_784_pp0_iter7_reg;
reg   [0:0] tmp_12_reg_789;
reg   [0:0] tmp_12_reg_789_pp0_iter1_reg;
reg   [0:0] tmp_12_reg_789_pp0_iter2_reg;
reg   [0:0] tmp_12_reg_789_pp0_iter3_reg;
reg   [0:0] tmp_12_reg_789_pp0_iter4_reg;
reg   [0:0] tmp_12_reg_789_pp0_iter5_reg;
reg   [0:0] tmp_12_reg_789_pp0_iter6_reg;
reg   [0:0] tmp_12_reg_789_pp0_iter7_reg;
wire   [63:0] bitcast_ln168_fu_442_p1;
wire   [63:0] bitcast_ln168_2_fu_447_p1;
reg   [10:0] weights2_0_addr_1_reg_804;
wire    ap_block_pp0_stage7_11001;
reg   [10:0] weights2_0_addr_1_reg_804_pp0_iter8_reg;
reg   [10:0] weights2_0_addr_1_reg_804_pp0_iter9_reg;
reg   [10:0] weights2_0_addr_1_reg_804_pp0_iter10_reg;
reg   [10:0] weights2_0_addr_1_reg_804_pp0_iter11_reg;
reg   [10:0] weights2_0_addr_1_reg_804_pp0_iter12_reg;
reg   [10:0] weights2_0_addr_1_reg_804_pp0_iter13_reg;
reg   [10:0] weights2_0_addr_1_reg_804_pp0_iter14_reg;
reg   [10:0] weights2_1_addr_1_reg_809;
reg   [10:0] weights2_1_addr_1_reg_809_pp0_iter8_reg;
reg   [10:0] weights2_1_addr_1_reg_809_pp0_iter9_reg;
reg   [10:0] weights2_1_addr_1_reg_809_pp0_iter10_reg;
reg   [10:0] weights2_1_addr_1_reg_809_pp0_iter11_reg;
reg   [10:0] weights2_1_addr_1_reg_809_pp0_iter12_reg;
reg   [10:0] weights2_1_addr_1_reg_809_pp0_iter13_reg;
reg   [10:0] weights2_1_addr_1_reg_809_pp0_iter14_reg;
reg   [10:0] weights2_0_addr_2_reg_814;
reg   [10:0] weights2_0_addr_2_reg_814_pp0_iter8_reg;
reg   [10:0] weights2_0_addr_2_reg_814_pp0_iter9_reg;
reg   [10:0] weights2_0_addr_2_reg_814_pp0_iter10_reg;
reg   [10:0] weights2_0_addr_2_reg_814_pp0_iter11_reg;
reg   [10:0] weights2_0_addr_2_reg_814_pp0_iter12_reg;
reg   [10:0] weights2_0_addr_2_reg_814_pp0_iter13_reg;
reg   [10:0] weights2_0_addr_2_reg_814_pp0_iter14_reg;
reg   [10:0] weights2_1_addr_2_reg_820;
reg   [10:0] weights2_1_addr_2_reg_820_pp0_iter8_reg;
reg   [10:0] weights2_1_addr_2_reg_820_pp0_iter9_reg;
reg   [10:0] weights2_1_addr_2_reg_820_pp0_iter10_reg;
reg   [10:0] weights2_1_addr_2_reg_820_pp0_iter11_reg;
reg   [10:0] weights2_1_addr_2_reg_820_pp0_iter12_reg;
reg   [10:0] weights2_1_addr_2_reg_820_pp0_iter13_reg;
reg   [10:0] weights2_1_addr_2_reg_820_pp0_iter14_reg;
reg   [10:0] weights2_0_addr_3_reg_826;
reg   [10:0] weights2_0_addr_3_reg_826_pp0_iter9_reg;
reg   [10:0] weights2_0_addr_3_reg_826_pp0_iter10_reg;
reg   [10:0] weights2_0_addr_3_reg_826_pp0_iter11_reg;
reg   [10:0] weights2_0_addr_3_reg_826_pp0_iter12_reg;
reg   [10:0] weights2_0_addr_3_reg_826_pp0_iter13_reg;
reg   [10:0] weights2_0_addr_3_reg_826_pp0_iter14_reg;
reg   [10:0] weights2_0_addr_3_reg_826_pp0_iter15_reg;
reg   [10:0] weights2_0_addr_3_reg_826_pp0_iter16_reg;
reg   [10:0] weights2_1_addr_3_reg_831;
reg   [10:0] weights2_1_addr_3_reg_831_pp0_iter9_reg;
reg   [10:0] weights2_1_addr_3_reg_831_pp0_iter10_reg;
reg   [10:0] weights2_1_addr_3_reg_831_pp0_iter11_reg;
reg   [10:0] weights2_1_addr_3_reg_831_pp0_iter12_reg;
reg   [10:0] weights2_1_addr_3_reg_831_pp0_iter13_reg;
reg   [10:0] weights2_1_addr_3_reg_831_pp0_iter14_reg;
reg   [10:0] weights2_1_addr_3_reg_831_pp0_iter15_reg;
reg   [10:0] weights2_1_addr_3_reg_831_pp0_iter16_reg;
reg   [10:0] weights2_0_addr_4_reg_836;
reg   [10:0] weights2_0_addr_4_reg_836_pp0_iter9_reg;
reg   [10:0] weights2_0_addr_4_reg_836_pp0_iter10_reg;
reg   [10:0] weights2_0_addr_4_reg_836_pp0_iter11_reg;
reg   [10:0] weights2_0_addr_4_reg_836_pp0_iter12_reg;
reg   [10:0] weights2_0_addr_4_reg_836_pp0_iter13_reg;
reg   [10:0] weights2_0_addr_4_reg_836_pp0_iter14_reg;
reg   [10:0] weights2_0_addr_4_reg_836_pp0_iter15_reg;
reg   [10:0] weights2_0_addr_4_reg_836_pp0_iter16_reg;
reg   [10:0] weights2_1_addr_4_reg_841;
reg   [10:0] weights2_1_addr_4_reg_841_pp0_iter9_reg;
reg   [10:0] weights2_1_addr_4_reg_841_pp0_iter10_reg;
reg   [10:0] weights2_1_addr_4_reg_841_pp0_iter11_reg;
reg   [10:0] weights2_1_addr_4_reg_841_pp0_iter12_reg;
reg   [10:0] weights2_1_addr_4_reg_841_pp0_iter13_reg;
reg   [10:0] weights2_1_addr_4_reg_841_pp0_iter14_reg;
reg   [10:0] weights2_1_addr_4_reg_841_pp0_iter15_reg;
reg   [10:0] weights2_1_addr_4_reg_841_pp0_iter16_reg;
wire   [63:0] bitcast_ln168_4_fu_530_p1;
wire   [63:0] bitcast_ln168_6_fu_535_p1;
reg   [63:0] weights2_0_load_3_reg_856;
reg   [63:0] weights2_1_load_3_reg_861;
reg   [63:0] weights2_0_load_4_reg_866;
reg   [63:0] weights2_1_load_4_reg_871;
reg   [10:0] weights2_0_addr_5_reg_876;
reg   [10:0] weights2_0_addr_5_reg_876_pp0_iter9_reg;
reg   [10:0] weights2_0_addr_5_reg_876_pp0_iter10_reg;
reg   [10:0] weights2_0_addr_5_reg_876_pp0_iter11_reg;
reg   [10:0] weights2_0_addr_5_reg_876_pp0_iter12_reg;
reg   [10:0] weights2_0_addr_5_reg_876_pp0_iter13_reg;
reg   [10:0] weights2_0_addr_5_reg_876_pp0_iter14_reg;
reg   [10:0] weights2_0_addr_5_reg_876_pp0_iter15_reg;
reg   [10:0] weights2_0_addr_5_reg_876_pp0_iter16_reg;
reg   [10:0] weights2_1_addr_5_reg_881;
reg   [10:0] weights2_1_addr_5_reg_881_pp0_iter9_reg;
reg   [10:0] weights2_1_addr_5_reg_881_pp0_iter10_reg;
reg   [10:0] weights2_1_addr_5_reg_881_pp0_iter11_reg;
reg   [10:0] weights2_1_addr_5_reg_881_pp0_iter12_reg;
reg   [10:0] weights2_1_addr_5_reg_881_pp0_iter13_reg;
reg   [10:0] weights2_1_addr_5_reg_881_pp0_iter14_reg;
reg   [10:0] weights2_1_addr_5_reg_881_pp0_iter15_reg;
reg   [10:0] weights2_1_addr_5_reg_881_pp0_iter16_reg;
wire   [63:0] bitcast_ln168_8_fu_557_p1;
wire   [63:0] bitcast_ln168_10_fu_562_p1;
reg   [10:0] weights2_0_addr_6_reg_896;
reg   [10:0] weights2_0_addr_6_reg_896_pp0_iter9_reg;
reg   [10:0] weights2_0_addr_6_reg_896_pp0_iter10_reg;
reg   [10:0] weights2_0_addr_6_reg_896_pp0_iter11_reg;
reg   [10:0] weights2_0_addr_6_reg_896_pp0_iter12_reg;
reg   [10:0] weights2_0_addr_6_reg_896_pp0_iter13_reg;
reg   [10:0] weights2_0_addr_6_reg_896_pp0_iter14_reg;
reg   [10:0] weights2_0_addr_6_reg_896_pp0_iter15_reg;
reg   [10:0] weights2_0_addr_6_reg_896_pp0_iter16_reg;
reg   [10:0] weights2_1_addr_6_reg_902;
reg   [10:0] weights2_1_addr_6_reg_902_pp0_iter9_reg;
reg   [10:0] weights2_1_addr_6_reg_902_pp0_iter10_reg;
reg   [10:0] weights2_1_addr_6_reg_902_pp0_iter11_reg;
reg   [10:0] weights2_1_addr_6_reg_902_pp0_iter12_reg;
reg   [10:0] weights2_1_addr_6_reg_902_pp0_iter13_reg;
reg   [10:0] weights2_1_addr_6_reg_902_pp0_iter14_reg;
reg   [10:0] weights2_1_addr_6_reg_902_pp0_iter15_reg;
reg   [10:0] weights2_1_addr_6_reg_902_pp0_iter16_reg;
reg   [10:0] weights2_0_addr_7_reg_908;
reg   [10:0] weights2_0_addr_7_reg_908_pp0_iter9_reg;
reg   [10:0] weights2_0_addr_7_reg_908_pp0_iter10_reg;
reg   [10:0] weights2_0_addr_7_reg_908_pp0_iter11_reg;
reg   [10:0] weights2_0_addr_7_reg_908_pp0_iter12_reg;
reg   [10:0] weights2_0_addr_7_reg_908_pp0_iter13_reg;
reg   [10:0] weights2_0_addr_7_reg_908_pp0_iter14_reg;
reg   [10:0] weights2_0_addr_7_reg_908_pp0_iter15_reg;
reg   [10:0] weights2_0_addr_7_reg_908_pp0_iter16_reg;
reg   [10:0] weights2_1_addr_7_reg_913;
reg   [10:0] weights2_1_addr_7_reg_913_pp0_iter9_reg;
reg   [10:0] weights2_1_addr_7_reg_913_pp0_iter10_reg;
reg   [10:0] weights2_1_addr_7_reg_913_pp0_iter11_reg;
reg   [10:0] weights2_1_addr_7_reg_913_pp0_iter12_reg;
reg   [10:0] weights2_1_addr_7_reg_913_pp0_iter13_reg;
reg   [10:0] weights2_1_addr_7_reg_913_pp0_iter14_reg;
reg   [10:0] weights2_1_addr_7_reg_913_pp0_iter15_reg;
reg   [10:0] weights2_1_addr_7_reg_913_pp0_iter16_reg;
reg   [63:0] weights2_0_load_7_reg_918;
reg   [63:0] weights2_1_load_7_reg_923;
wire   [63:0] bitcast_ln168_12_fu_596_p1;
wire   [63:0] bitcast_ln168_14_fu_600_p1;
wire   [63:0] bitcast_ln168_16_fu_604_p1;
wire   [63:0] bitcast_ln168_18_fu_608_p1;
wire   [63:0] bitcast_ln168_20_fu_612_p1;
wire   [63:0] bitcast_ln168_22_fu_617_p1;
wire   [63:0] bitcast_ln168_24_fu_622_p1;
wire   [63:0] bitcast_ln168_26_fu_627_p1;
wire   [63:0] bitcast_ln168_28_fu_632_p1;
wire   [63:0] bitcast_ln168_30_fu_636_p1;
reg   [63:0] div131_8_reg_978;
reg   [63:0] div131_9_reg_983;
reg   [63:0] div131_s_reg_988;
reg   [63:0] div131_10_reg_993;
reg   [63:0] div131_11_reg_998;
reg   [63:0] div131_12_reg_1003;
reg   [63:0] div131_13_reg_1008;
reg   [63:0] div131_14_reg_1013;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage6_subdone;
wire   [63:0] zext_ln168_fu_370_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln168_1_fu_480_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln168_2_fu_495_p1;
wire   [63:0] zext_ln168_3_fu_509_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln168_4_fu_524_p1;
wire   [63:0] zext_ln168_5_fu_551_p1;
wire   [63:0] zext_ln168_6_fu_576_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln168_7_fu_590_p1;
reg   [6:0] j_fu_86;
wire   [6:0] add_ln167_fu_452_p2;
wire    ap_loop_init;
reg   [6:0] i_6_fu_90;
wire   [6:0] select_ln166_fu_340_p3;
reg   [8:0] indvar_flatten20_fu_94;
wire   [8:0] add_ln166_fu_306_p2;
reg    weights2_0_ce1_local;
reg   [10:0] weights2_0_address1_local;
reg    weights2_0_we1_local;
reg   [63:0] weights2_0_d1_local;
wire   [63:0] bitcast_ln168_1_fu_462_p1;
wire    ap_block_pp0_stage6;
reg    weights2_0_ce0_local;
reg   [10:0] weights2_0_address0_local;
wire   [63:0] bitcast_ln168_5_fu_640_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln168_9_fu_650_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln168_13_fu_660_p1;
wire    ap_block_pp0_stage3;
reg    weights2_0_we0_local;
reg   [63:0] weights2_0_d0_local;
wire   [63:0] bitcast_ln168_17_fu_670_p1;
wire   [63:0] bitcast_ln168_21_fu_678_p1;
wire   [63:0] bitcast_ln168_25_fu_686_p1;
wire   [63:0] bitcast_ln168_29_fu_694_p1;
reg    weights2_1_ce1_local;
reg   [10:0] weights2_1_address1_local;
reg    weights2_1_we1_local;
reg   [63:0] weights2_1_d1_local;
wire   [63:0] bitcast_ln168_3_fu_467_p1;
reg    weights2_1_ce0_local;
reg   [10:0] weights2_1_address0_local;
wire   [63:0] bitcast_ln168_7_fu_645_p1;
wire   [63:0] bitcast_ln168_11_fu_655_p1;
wire   [63:0] bitcast_ln168_15_fu_665_p1;
reg    weights2_1_we0_local;
reg   [63:0] weights2_1_d0_local;
wire   [63:0] bitcast_ln168_19_fu_674_p1;
wire   [63:0] bitcast_ln168_23_fu_682_p1;
wire   [63:0] bitcast_ln168_27_fu_690_p1;
wire   [63:0] bitcast_ln168_31_fu_698_p1;
reg   [63:0] grp_fu_250_p0;
reg   [63:0] grp_fu_254_p0;
wire   [0:0] tmp_fu_318_p3;
wire   [6:0] add_ln166_1_fu_334_p2;
wire   [4:0] lshr_ln4_fu_348_p4;
wire   [10:0] add_ln3_fu_362_p3;
wire   [10:0] add_ln168_1_fu_472_p4;
wire   [10:0] add_ln168_2_fu_486_p5;
wire   [10:0] add_ln168_3_fu_501_p4;
wire   [10:0] add_ln168_4_fu_515_p5;
wire   [10:0] add_ln168_5_fu_540_p6;
wire   [10:0] add_ln168_6_fu_567_p5;
wire   [10:0] add_ln168_7_fu_582_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter15_stage6;
reg    ap_idle_pp0_0to14;
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
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to16;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
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
#0 j_fu_86 = 7'd0;
#0 i_6_fu_90 = 7'd0;
#0 indvar_flatten20_fu_94 = 9'd0;
#0 ap_done_reg = 1'b0;
end
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U254(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_250_p0),.din1(norm_18),.ce(1'b1),.dout(grp_fu_250_p2));
backprop_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U255(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_254_p0),.din1(norm_18),.ce(1'b1),.dout(grp_fu_254_p2));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter16 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_6_fu_90 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln166_fu_300_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_6_fu_90 <= select_ln166_fu_340_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten20_fu_94 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln166_fu_300_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten20_fu_94 <= add_ln166_fu_306_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_86 <= add_ln167_fu_452_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        div131_10_reg_993 <= grp_fu_254_p2;
        div131_s_reg_988 <= grp_fu_250_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        div131_11_reg_998 <= grp_fu_250_p2;
        div131_12_reg_1003 <= grp_fu_254_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        div131_13_reg_1008 <= grp_fu_250_p2;
        div131_14_reg_1013 <= grp_fu_254_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        div131_8_reg_978 <= grp_fu_250_p2;
        div131_9_reg_983 <= grp_fu_254_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln166_reg_729 <= icmp_ln166_fu_300_p2;
        icmp_ln166_reg_729_pp0_iter10_reg <= icmp_ln166_reg_729_pp0_iter9_reg;
        icmp_ln166_reg_729_pp0_iter11_reg <= icmp_ln166_reg_729_pp0_iter10_reg;
        icmp_ln166_reg_729_pp0_iter12_reg <= icmp_ln166_reg_729_pp0_iter11_reg;
        icmp_ln166_reg_729_pp0_iter13_reg <= icmp_ln166_reg_729_pp0_iter12_reg;
        icmp_ln166_reg_729_pp0_iter14_reg <= icmp_ln166_reg_729_pp0_iter13_reg;
        icmp_ln166_reg_729_pp0_iter15_reg <= icmp_ln166_reg_729_pp0_iter14_reg;
        icmp_ln166_reg_729_pp0_iter1_reg <= icmp_ln166_reg_729;
        icmp_ln166_reg_729_pp0_iter2_reg <= icmp_ln166_reg_729_pp0_iter1_reg;
        icmp_ln166_reg_729_pp0_iter3_reg <= icmp_ln166_reg_729_pp0_iter2_reg;
        icmp_ln166_reg_729_pp0_iter4_reg <= icmp_ln166_reg_729_pp0_iter3_reg;
        icmp_ln166_reg_729_pp0_iter5_reg <= icmp_ln166_reg_729_pp0_iter4_reg;
        icmp_ln166_reg_729_pp0_iter6_reg <= icmp_ln166_reg_729_pp0_iter5_reg;
        icmp_ln166_reg_729_pp0_iter7_reg <= icmp_ln166_reg_729_pp0_iter6_reg;
        icmp_ln166_reg_729_pp0_iter8_reg <= icmp_ln166_reg_729_pp0_iter7_reg;
        icmp_ln166_reg_729_pp0_iter9_reg <= icmp_ln166_reg_729_pp0_iter8_reg;
        select_ln121_reg_733 <= select_ln121_fu_326_p3;
        tmp_11_reg_770 <= select_ln121_fu_326_p3[32'd1];
        tmp_11_reg_770_pp0_iter1_reg <= tmp_11_reg_770;
        tmp_11_reg_770_pp0_iter2_reg <= tmp_11_reg_770_pp0_iter1_reg;
        tmp_11_reg_770_pp0_iter3_reg <= tmp_11_reg_770_pp0_iter2_reg;
        tmp_11_reg_770_pp0_iter4_reg <= tmp_11_reg_770_pp0_iter3_reg;
        tmp_11_reg_770_pp0_iter5_reg <= tmp_11_reg_770_pp0_iter4_reg;
        tmp_11_reg_770_pp0_iter6_reg <= tmp_11_reg_770_pp0_iter5_reg;
        tmp_11_reg_770_pp0_iter7_reg <= tmp_11_reg_770_pp0_iter6_reg;
        tmp_11_reg_770_pp0_iter8_reg <= tmp_11_reg_770_pp0_iter7_reg;
        tmp_12_reg_789 <= select_ln121_fu_326_p3[32'd2];
        tmp_12_reg_789_pp0_iter1_reg <= tmp_12_reg_789;
        tmp_12_reg_789_pp0_iter2_reg <= tmp_12_reg_789_pp0_iter1_reg;
        tmp_12_reg_789_pp0_iter3_reg <= tmp_12_reg_789_pp0_iter2_reg;
        tmp_12_reg_789_pp0_iter4_reg <= tmp_12_reg_789_pp0_iter3_reg;
        tmp_12_reg_789_pp0_iter5_reg <= tmp_12_reg_789_pp0_iter4_reg;
        tmp_12_reg_789_pp0_iter6_reg <= tmp_12_reg_789_pp0_iter5_reg;
        tmp_12_reg_789_pp0_iter7_reg <= tmp_12_reg_789_pp0_iter6_reg;
        tmp_18_reg_764 <= {{select_ln121_fu_326_p3[5:3]}};
        tmp_18_reg_764_pp0_iter1_reg <= tmp_18_reg_764;
        tmp_18_reg_764_pp0_iter2_reg <= tmp_18_reg_764_pp0_iter1_reg;
        tmp_18_reg_764_pp0_iter3_reg <= tmp_18_reg_764_pp0_iter2_reg;
        tmp_18_reg_764_pp0_iter4_reg <= tmp_18_reg_764_pp0_iter3_reg;
        tmp_18_reg_764_pp0_iter5_reg <= tmp_18_reg_764_pp0_iter4_reg;
        tmp_18_reg_764_pp0_iter6_reg <= tmp_18_reg_764_pp0_iter5_reg;
        tmp_18_reg_764_pp0_iter7_reg <= tmp_18_reg_764_pp0_iter6_reg;
        tmp_19_reg_776 <= {{select_ln121_fu_326_p3[5:4]}};
        tmp_19_reg_776_pp0_iter1_reg <= tmp_19_reg_776;
        tmp_19_reg_776_pp0_iter2_reg <= tmp_19_reg_776_pp0_iter1_reg;
        tmp_19_reg_776_pp0_iter3_reg <= tmp_19_reg_776_pp0_iter2_reg;
        tmp_19_reg_776_pp0_iter4_reg <= tmp_19_reg_776_pp0_iter3_reg;
        tmp_19_reg_776_pp0_iter5_reg <= tmp_19_reg_776_pp0_iter4_reg;
        tmp_19_reg_776_pp0_iter6_reg <= tmp_19_reg_776_pp0_iter5_reg;
        tmp_19_reg_776_pp0_iter7_reg <= tmp_19_reg_776_pp0_iter6_reg;
        tmp_19_reg_776_pp0_iter8_reg <= tmp_19_reg_776_pp0_iter7_reg;
        tmp_20_reg_784 <= {{select_ln121_fu_326_p3[2:1]}};
        tmp_20_reg_784_pp0_iter1_reg <= tmp_20_reg_784;
        tmp_20_reg_784_pp0_iter2_reg <= tmp_20_reg_784_pp0_iter1_reg;
        tmp_20_reg_784_pp0_iter3_reg <= tmp_20_reg_784_pp0_iter2_reg;
        tmp_20_reg_784_pp0_iter4_reg <= tmp_20_reg_784_pp0_iter3_reg;
        tmp_20_reg_784_pp0_iter5_reg <= tmp_20_reg_784_pp0_iter4_reg;
        tmp_20_reg_784_pp0_iter6_reg <= tmp_20_reg_784_pp0_iter5_reg;
        tmp_20_reg_784_pp0_iter7_reg <= tmp_20_reg_784_pp0_iter6_reg;
        tmp_s_reg_759 <= {{select_ln121_fu_326_p3[5:2]}};
        tmp_s_reg_759_pp0_iter1_reg <= tmp_s_reg_759;
        tmp_s_reg_759_pp0_iter2_reg <= tmp_s_reg_759_pp0_iter1_reg;
        tmp_s_reg_759_pp0_iter3_reg <= tmp_s_reg_759_pp0_iter2_reg;
        tmp_s_reg_759_pp0_iter4_reg <= tmp_s_reg_759_pp0_iter3_reg;
        tmp_s_reg_759_pp0_iter5_reg <= tmp_s_reg_759_pp0_iter4_reg;
        tmp_s_reg_759_pp0_iter6_reg <= tmp_s_reg_759_pp0_iter5_reg;
        tmp_s_reg_759_pp0_iter7_reg <= tmp_s_reg_759_pp0_iter6_reg;
        trunc_ln168_reg_738 <= trunc_ln168_fu_358_p1;
        trunc_ln168_reg_738_pp0_iter1_reg <= trunc_ln168_reg_738;
        trunc_ln168_reg_738_pp0_iter2_reg <= trunc_ln168_reg_738_pp0_iter1_reg;
        trunc_ln168_reg_738_pp0_iter3_reg <= trunc_ln168_reg_738_pp0_iter2_reg;
        trunc_ln168_reg_738_pp0_iter4_reg <= trunc_ln168_reg_738_pp0_iter3_reg;
        trunc_ln168_reg_738_pp0_iter5_reg <= trunc_ln168_reg_738_pp0_iter4_reg;
        trunc_ln168_reg_738_pp0_iter6_reg <= trunc_ln168_reg_738_pp0_iter5_reg;
        trunc_ln168_reg_738_pp0_iter7_reg <= trunc_ln168_reg_738_pp0_iter6_reg;
        trunc_ln168_reg_738_pp0_iter8_reg <= trunc_ln168_reg_738_pp0_iter7_reg;
        weights2_0_addr_5_reg_876[1] <= zext_ln168_5_fu_551_p1[1];
weights2_0_addr_5_reg_876[10 : 3] <= zext_ln168_5_fu_551_p1[10 : 3];
        weights2_0_addr_5_reg_876_pp0_iter10_reg[1] <= weights2_0_addr_5_reg_876_pp0_iter9_reg[1];
weights2_0_addr_5_reg_876_pp0_iter10_reg[10 : 3] <= weights2_0_addr_5_reg_876_pp0_iter9_reg[10 : 3];
        weights2_0_addr_5_reg_876_pp0_iter11_reg[1] <= weights2_0_addr_5_reg_876_pp0_iter10_reg[1];
weights2_0_addr_5_reg_876_pp0_iter11_reg[10 : 3] <= weights2_0_addr_5_reg_876_pp0_iter10_reg[10 : 3];
        weights2_0_addr_5_reg_876_pp0_iter12_reg[1] <= weights2_0_addr_5_reg_876_pp0_iter11_reg[1];
weights2_0_addr_5_reg_876_pp0_iter12_reg[10 : 3] <= weights2_0_addr_5_reg_876_pp0_iter11_reg[10 : 3];
        weights2_0_addr_5_reg_876_pp0_iter13_reg[1] <= weights2_0_addr_5_reg_876_pp0_iter12_reg[1];
weights2_0_addr_5_reg_876_pp0_iter13_reg[10 : 3] <= weights2_0_addr_5_reg_876_pp0_iter12_reg[10 : 3];
        weights2_0_addr_5_reg_876_pp0_iter14_reg[1] <= weights2_0_addr_5_reg_876_pp0_iter13_reg[1];
weights2_0_addr_5_reg_876_pp0_iter14_reg[10 : 3] <= weights2_0_addr_5_reg_876_pp0_iter13_reg[10 : 3];
        weights2_0_addr_5_reg_876_pp0_iter15_reg[1] <= weights2_0_addr_5_reg_876_pp0_iter14_reg[1];
weights2_0_addr_5_reg_876_pp0_iter15_reg[10 : 3] <= weights2_0_addr_5_reg_876_pp0_iter14_reg[10 : 3];
        weights2_0_addr_5_reg_876_pp0_iter16_reg[1] <= weights2_0_addr_5_reg_876_pp0_iter15_reg[1];
weights2_0_addr_5_reg_876_pp0_iter16_reg[10 : 3] <= weights2_0_addr_5_reg_876_pp0_iter15_reg[10 : 3];
        weights2_0_addr_5_reg_876_pp0_iter9_reg[1] <= weights2_0_addr_5_reg_876[1];
weights2_0_addr_5_reg_876_pp0_iter9_reg[10 : 3] <= weights2_0_addr_5_reg_876[10 : 3];
        weights2_0_addr_reg_749 <= zext_ln168_fu_370_p1;
        weights2_0_addr_reg_749_pp0_iter1_reg <= weights2_0_addr_reg_749;
        weights2_0_addr_reg_749_pp0_iter2_reg <= weights2_0_addr_reg_749_pp0_iter1_reg;
        weights2_0_addr_reg_749_pp0_iter3_reg <= weights2_0_addr_reg_749_pp0_iter2_reg;
        weights2_0_addr_reg_749_pp0_iter4_reg <= weights2_0_addr_reg_749_pp0_iter3_reg;
        weights2_0_addr_reg_749_pp0_iter5_reg <= weights2_0_addr_reg_749_pp0_iter4_reg;
        weights2_0_addr_reg_749_pp0_iter6_reg <= weights2_0_addr_reg_749_pp0_iter5_reg;
        weights2_0_addr_reg_749_pp0_iter7_reg <= weights2_0_addr_reg_749_pp0_iter6_reg;
        weights2_1_addr_5_reg_881[1] <= zext_ln168_5_fu_551_p1[1];
weights2_1_addr_5_reg_881[10 : 3] <= zext_ln168_5_fu_551_p1[10 : 3];
        weights2_1_addr_5_reg_881_pp0_iter10_reg[1] <= weights2_1_addr_5_reg_881_pp0_iter9_reg[1];
weights2_1_addr_5_reg_881_pp0_iter10_reg[10 : 3] <= weights2_1_addr_5_reg_881_pp0_iter9_reg[10 : 3];
        weights2_1_addr_5_reg_881_pp0_iter11_reg[1] <= weights2_1_addr_5_reg_881_pp0_iter10_reg[1];
weights2_1_addr_5_reg_881_pp0_iter11_reg[10 : 3] <= weights2_1_addr_5_reg_881_pp0_iter10_reg[10 : 3];
        weights2_1_addr_5_reg_881_pp0_iter12_reg[1] <= weights2_1_addr_5_reg_881_pp0_iter11_reg[1];
weights2_1_addr_5_reg_881_pp0_iter12_reg[10 : 3] <= weights2_1_addr_5_reg_881_pp0_iter11_reg[10 : 3];
        weights2_1_addr_5_reg_881_pp0_iter13_reg[1] <= weights2_1_addr_5_reg_881_pp0_iter12_reg[1];
weights2_1_addr_5_reg_881_pp0_iter13_reg[10 : 3] <= weights2_1_addr_5_reg_881_pp0_iter12_reg[10 : 3];
        weights2_1_addr_5_reg_881_pp0_iter14_reg[1] <= weights2_1_addr_5_reg_881_pp0_iter13_reg[1];
weights2_1_addr_5_reg_881_pp0_iter14_reg[10 : 3] <= weights2_1_addr_5_reg_881_pp0_iter13_reg[10 : 3];
        weights2_1_addr_5_reg_881_pp0_iter15_reg[1] <= weights2_1_addr_5_reg_881_pp0_iter14_reg[1];
weights2_1_addr_5_reg_881_pp0_iter15_reg[10 : 3] <= weights2_1_addr_5_reg_881_pp0_iter14_reg[10 : 3];
        weights2_1_addr_5_reg_881_pp0_iter16_reg[1] <= weights2_1_addr_5_reg_881_pp0_iter15_reg[1];
weights2_1_addr_5_reg_881_pp0_iter16_reg[10 : 3] <= weights2_1_addr_5_reg_881_pp0_iter15_reg[10 : 3];
        weights2_1_addr_5_reg_881_pp0_iter9_reg[1] <= weights2_1_addr_5_reg_881[1];
weights2_1_addr_5_reg_881_pp0_iter9_reg[10 : 3] <= weights2_1_addr_5_reg_881[10 : 3];
        weights2_1_addr_reg_754 <= zext_ln168_fu_370_p1;
        weights2_1_addr_reg_754_pp0_iter1_reg <= weights2_1_addr_reg_754;
        weights2_1_addr_reg_754_pp0_iter2_reg <= weights2_1_addr_reg_754_pp0_iter1_reg;
        weights2_1_addr_reg_754_pp0_iter3_reg <= weights2_1_addr_reg_754_pp0_iter2_reg;
        weights2_1_addr_reg_754_pp0_iter4_reg <= weights2_1_addr_reg_754_pp0_iter3_reg;
        weights2_1_addr_reg_754_pp0_iter5_reg <= weights2_1_addr_reg_754_pp0_iter4_reg;
        weights2_1_addr_reg_754_pp0_iter6_reg <= weights2_1_addr_reg_754_pp0_iter5_reg;
        weights2_1_addr_reg_754_pp0_iter7_reg <= weights2_1_addr_reg_754_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_258 <= weights2_0_q1;
        reg_262 <= weights2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_266 <= grp_fu_250_p2;
        reg_270 <= grp_fu_254_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_274 <= weights2_0_q0;
        reg_278 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_addr_1_reg_804[10 : 1] <= zext_ln168_1_fu_480_p1[10 : 1];
        weights2_0_addr_1_reg_804_pp0_iter10_reg[10 : 1] <= weights2_0_addr_1_reg_804_pp0_iter9_reg[10 : 1];
        weights2_0_addr_1_reg_804_pp0_iter11_reg[10 : 1] <= weights2_0_addr_1_reg_804_pp0_iter10_reg[10 : 1];
        weights2_0_addr_1_reg_804_pp0_iter12_reg[10 : 1] <= weights2_0_addr_1_reg_804_pp0_iter11_reg[10 : 1];
        weights2_0_addr_1_reg_804_pp0_iter13_reg[10 : 1] <= weights2_0_addr_1_reg_804_pp0_iter12_reg[10 : 1];
        weights2_0_addr_1_reg_804_pp0_iter14_reg[10 : 1] <= weights2_0_addr_1_reg_804_pp0_iter13_reg[10 : 1];
        weights2_0_addr_1_reg_804_pp0_iter8_reg[10 : 1] <= weights2_0_addr_1_reg_804[10 : 1];
        weights2_0_addr_1_reg_804_pp0_iter9_reg[10 : 1] <= weights2_0_addr_1_reg_804_pp0_iter8_reg[10 : 1];
        weights2_0_addr_2_reg_814[0] <= zext_ln168_2_fu_495_p1[0];
weights2_0_addr_2_reg_814[10 : 2] <= zext_ln168_2_fu_495_p1[10 : 2];
        weights2_0_addr_2_reg_814_pp0_iter10_reg[0] <= weights2_0_addr_2_reg_814_pp0_iter9_reg[0];
weights2_0_addr_2_reg_814_pp0_iter10_reg[10 : 2] <= weights2_0_addr_2_reg_814_pp0_iter9_reg[10 : 2];
        weights2_0_addr_2_reg_814_pp0_iter11_reg[0] <= weights2_0_addr_2_reg_814_pp0_iter10_reg[0];
weights2_0_addr_2_reg_814_pp0_iter11_reg[10 : 2] <= weights2_0_addr_2_reg_814_pp0_iter10_reg[10 : 2];
        weights2_0_addr_2_reg_814_pp0_iter12_reg[0] <= weights2_0_addr_2_reg_814_pp0_iter11_reg[0];
weights2_0_addr_2_reg_814_pp0_iter12_reg[10 : 2] <= weights2_0_addr_2_reg_814_pp0_iter11_reg[10 : 2];
        weights2_0_addr_2_reg_814_pp0_iter13_reg[0] <= weights2_0_addr_2_reg_814_pp0_iter12_reg[0];
weights2_0_addr_2_reg_814_pp0_iter13_reg[10 : 2] <= weights2_0_addr_2_reg_814_pp0_iter12_reg[10 : 2];
        weights2_0_addr_2_reg_814_pp0_iter14_reg[0] <= weights2_0_addr_2_reg_814_pp0_iter13_reg[0];
weights2_0_addr_2_reg_814_pp0_iter14_reg[10 : 2] <= weights2_0_addr_2_reg_814_pp0_iter13_reg[10 : 2];
        weights2_0_addr_2_reg_814_pp0_iter8_reg[0] <= weights2_0_addr_2_reg_814[0];
weights2_0_addr_2_reg_814_pp0_iter8_reg[10 : 2] <= weights2_0_addr_2_reg_814[10 : 2];
        weights2_0_addr_2_reg_814_pp0_iter9_reg[0] <= weights2_0_addr_2_reg_814_pp0_iter8_reg[0];
weights2_0_addr_2_reg_814_pp0_iter9_reg[10 : 2] <= weights2_0_addr_2_reg_814_pp0_iter8_reg[10 : 2];
        weights2_1_addr_1_reg_809[10 : 1] <= zext_ln168_1_fu_480_p1[10 : 1];
        weights2_1_addr_1_reg_809_pp0_iter10_reg[10 : 1] <= weights2_1_addr_1_reg_809_pp0_iter9_reg[10 : 1];
        weights2_1_addr_1_reg_809_pp0_iter11_reg[10 : 1] <= weights2_1_addr_1_reg_809_pp0_iter10_reg[10 : 1];
        weights2_1_addr_1_reg_809_pp0_iter12_reg[10 : 1] <= weights2_1_addr_1_reg_809_pp0_iter11_reg[10 : 1];
        weights2_1_addr_1_reg_809_pp0_iter13_reg[10 : 1] <= weights2_1_addr_1_reg_809_pp0_iter12_reg[10 : 1];
        weights2_1_addr_1_reg_809_pp0_iter14_reg[10 : 1] <= weights2_1_addr_1_reg_809_pp0_iter13_reg[10 : 1];
        weights2_1_addr_1_reg_809_pp0_iter8_reg[10 : 1] <= weights2_1_addr_1_reg_809[10 : 1];
        weights2_1_addr_1_reg_809_pp0_iter9_reg[10 : 1] <= weights2_1_addr_1_reg_809_pp0_iter8_reg[10 : 1];
        weights2_1_addr_2_reg_820[0] <= zext_ln168_2_fu_495_p1[0];
weights2_1_addr_2_reg_820[10 : 2] <= zext_ln168_2_fu_495_p1[10 : 2];
        weights2_1_addr_2_reg_820_pp0_iter10_reg[0] <= weights2_1_addr_2_reg_820_pp0_iter9_reg[0];
weights2_1_addr_2_reg_820_pp0_iter10_reg[10 : 2] <= weights2_1_addr_2_reg_820_pp0_iter9_reg[10 : 2];
        weights2_1_addr_2_reg_820_pp0_iter11_reg[0] <= weights2_1_addr_2_reg_820_pp0_iter10_reg[0];
weights2_1_addr_2_reg_820_pp0_iter11_reg[10 : 2] <= weights2_1_addr_2_reg_820_pp0_iter10_reg[10 : 2];
        weights2_1_addr_2_reg_820_pp0_iter12_reg[0] <= weights2_1_addr_2_reg_820_pp0_iter11_reg[0];
weights2_1_addr_2_reg_820_pp0_iter12_reg[10 : 2] <= weights2_1_addr_2_reg_820_pp0_iter11_reg[10 : 2];
        weights2_1_addr_2_reg_820_pp0_iter13_reg[0] <= weights2_1_addr_2_reg_820_pp0_iter12_reg[0];
weights2_1_addr_2_reg_820_pp0_iter13_reg[10 : 2] <= weights2_1_addr_2_reg_820_pp0_iter12_reg[10 : 2];
        weights2_1_addr_2_reg_820_pp0_iter14_reg[0] <= weights2_1_addr_2_reg_820_pp0_iter13_reg[0];
weights2_1_addr_2_reg_820_pp0_iter14_reg[10 : 2] <= weights2_1_addr_2_reg_820_pp0_iter13_reg[10 : 2];
        weights2_1_addr_2_reg_820_pp0_iter8_reg[0] <= weights2_1_addr_2_reg_820[0];
weights2_1_addr_2_reg_820_pp0_iter8_reg[10 : 2] <= weights2_1_addr_2_reg_820[10 : 2];
        weights2_1_addr_2_reg_820_pp0_iter9_reg[0] <= weights2_1_addr_2_reg_820_pp0_iter8_reg[0];
weights2_1_addr_2_reg_820_pp0_iter9_reg[10 : 2] <= weights2_1_addr_2_reg_820_pp0_iter8_reg[10 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_addr_3_reg_826[10 : 2] <= zext_ln168_3_fu_509_p1[10 : 2];
        weights2_0_addr_3_reg_826_pp0_iter10_reg[10 : 2] <= weights2_0_addr_3_reg_826_pp0_iter9_reg[10 : 2];
        weights2_0_addr_3_reg_826_pp0_iter11_reg[10 : 2] <= weights2_0_addr_3_reg_826_pp0_iter10_reg[10 : 2];
        weights2_0_addr_3_reg_826_pp0_iter12_reg[10 : 2] <= weights2_0_addr_3_reg_826_pp0_iter11_reg[10 : 2];
        weights2_0_addr_3_reg_826_pp0_iter13_reg[10 : 2] <= weights2_0_addr_3_reg_826_pp0_iter12_reg[10 : 2];
        weights2_0_addr_3_reg_826_pp0_iter14_reg[10 : 2] <= weights2_0_addr_3_reg_826_pp0_iter13_reg[10 : 2];
        weights2_0_addr_3_reg_826_pp0_iter15_reg[10 : 2] <= weights2_0_addr_3_reg_826_pp0_iter14_reg[10 : 2];
        weights2_0_addr_3_reg_826_pp0_iter16_reg[10 : 2] <= weights2_0_addr_3_reg_826_pp0_iter15_reg[10 : 2];
        weights2_0_addr_3_reg_826_pp0_iter9_reg[10 : 2] <= weights2_0_addr_3_reg_826[10 : 2];
        weights2_0_addr_4_reg_836[1 : 0] <= zext_ln168_4_fu_524_p1[1 : 0];
weights2_0_addr_4_reg_836[10 : 3] <= zext_ln168_4_fu_524_p1[10 : 3];
        weights2_0_addr_4_reg_836_pp0_iter10_reg[1 : 0] <= weights2_0_addr_4_reg_836_pp0_iter9_reg[1 : 0];
weights2_0_addr_4_reg_836_pp0_iter10_reg[10 : 3] <= weights2_0_addr_4_reg_836_pp0_iter9_reg[10 : 3];
        weights2_0_addr_4_reg_836_pp0_iter11_reg[1 : 0] <= weights2_0_addr_4_reg_836_pp0_iter10_reg[1 : 0];
weights2_0_addr_4_reg_836_pp0_iter11_reg[10 : 3] <= weights2_0_addr_4_reg_836_pp0_iter10_reg[10 : 3];
        weights2_0_addr_4_reg_836_pp0_iter12_reg[1 : 0] <= weights2_0_addr_4_reg_836_pp0_iter11_reg[1 : 0];
weights2_0_addr_4_reg_836_pp0_iter12_reg[10 : 3] <= weights2_0_addr_4_reg_836_pp0_iter11_reg[10 : 3];
        weights2_0_addr_4_reg_836_pp0_iter13_reg[1 : 0] <= weights2_0_addr_4_reg_836_pp0_iter12_reg[1 : 0];
weights2_0_addr_4_reg_836_pp0_iter13_reg[10 : 3] <= weights2_0_addr_4_reg_836_pp0_iter12_reg[10 : 3];
        weights2_0_addr_4_reg_836_pp0_iter14_reg[1 : 0] <= weights2_0_addr_4_reg_836_pp0_iter13_reg[1 : 0];
weights2_0_addr_4_reg_836_pp0_iter14_reg[10 : 3] <= weights2_0_addr_4_reg_836_pp0_iter13_reg[10 : 3];
        weights2_0_addr_4_reg_836_pp0_iter15_reg[1 : 0] <= weights2_0_addr_4_reg_836_pp0_iter14_reg[1 : 0];
weights2_0_addr_4_reg_836_pp0_iter15_reg[10 : 3] <= weights2_0_addr_4_reg_836_pp0_iter14_reg[10 : 3];
        weights2_0_addr_4_reg_836_pp0_iter16_reg[1 : 0] <= weights2_0_addr_4_reg_836_pp0_iter15_reg[1 : 0];
weights2_0_addr_4_reg_836_pp0_iter16_reg[10 : 3] <= weights2_0_addr_4_reg_836_pp0_iter15_reg[10 : 3];
        weights2_0_addr_4_reg_836_pp0_iter9_reg[1 : 0] <= weights2_0_addr_4_reg_836[1 : 0];
weights2_0_addr_4_reg_836_pp0_iter9_reg[10 : 3] <= weights2_0_addr_4_reg_836[10 : 3];
        weights2_1_addr_3_reg_831[10 : 2] <= zext_ln168_3_fu_509_p1[10 : 2];
        weights2_1_addr_3_reg_831_pp0_iter10_reg[10 : 2] <= weights2_1_addr_3_reg_831_pp0_iter9_reg[10 : 2];
        weights2_1_addr_3_reg_831_pp0_iter11_reg[10 : 2] <= weights2_1_addr_3_reg_831_pp0_iter10_reg[10 : 2];
        weights2_1_addr_3_reg_831_pp0_iter12_reg[10 : 2] <= weights2_1_addr_3_reg_831_pp0_iter11_reg[10 : 2];
        weights2_1_addr_3_reg_831_pp0_iter13_reg[10 : 2] <= weights2_1_addr_3_reg_831_pp0_iter12_reg[10 : 2];
        weights2_1_addr_3_reg_831_pp0_iter14_reg[10 : 2] <= weights2_1_addr_3_reg_831_pp0_iter13_reg[10 : 2];
        weights2_1_addr_3_reg_831_pp0_iter15_reg[10 : 2] <= weights2_1_addr_3_reg_831_pp0_iter14_reg[10 : 2];
        weights2_1_addr_3_reg_831_pp0_iter16_reg[10 : 2] <= weights2_1_addr_3_reg_831_pp0_iter15_reg[10 : 2];
        weights2_1_addr_3_reg_831_pp0_iter9_reg[10 : 2] <= weights2_1_addr_3_reg_831[10 : 2];
        weights2_1_addr_4_reg_841[1 : 0] <= zext_ln168_4_fu_524_p1[1 : 0];
weights2_1_addr_4_reg_841[10 : 3] <= zext_ln168_4_fu_524_p1[10 : 3];
        weights2_1_addr_4_reg_841_pp0_iter10_reg[1 : 0] <= weights2_1_addr_4_reg_841_pp0_iter9_reg[1 : 0];
weights2_1_addr_4_reg_841_pp0_iter10_reg[10 : 3] <= weights2_1_addr_4_reg_841_pp0_iter9_reg[10 : 3];
        weights2_1_addr_4_reg_841_pp0_iter11_reg[1 : 0] <= weights2_1_addr_4_reg_841_pp0_iter10_reg[1 : 0];
weights2_1_addr_4_reg_841_pp0_iter11_reg[10 : 3] <= weights2_1_addr_4_reg_841_pp0_iter10_reg[10 : 3];
        weights2_1_addr_4_reg_841_pp0_iter12_reg[1 : 0] <= weights2_1_addr_4_reg_841_pp0_iter11_reg[1 : 0];
weights2_1_addr_4_reg_841_pp0_iter12_reg[10 : 3] <= weights2_1_addr_4_reg_841_pp0_iter11_reg[10 : 3];
        weights2_1_addr_4_reg_841_pp0_iter13_reg[1 : 0] <= weights2_1_addr_4_reg_841_pp0_iter12_reg[1 : 0];
weights2_1_addr_4_reg_841_pp0_iter13_reg[10 : 3] <= weights2_1_addr_4_reg_841_pp0_iter12_reg[10 : 3];
        weights2_1_addr_4_reg_841_pp0_iter14_reg[1 : 0] <= weights2_1_addr_4_reg_841_pp0_iter13_reg[1 : 0];
weights2_1_addr_4_reg_841_pp0_iter14_reg[10 : 3] <= weights2_1_addr_4_reg_841_pp0_iter13_reg[10 : 3];
        weights2_1_addr_4_reg_841_pp0_iter15_reg[1 : 0] <= weights2_1_addr_4_reg_841_pp0_iter14_reg[1 : 0];
weights2_1_addr_4_reg_841_pp0_iter15_reg[10 : 3] <= weights2_1_addr_4_reg_841_pp0_iter14_reg[10 : 3];
        weights2_1_addr_4_reg_841_pp0_iter16_reg[1 : 0] <= weights2_1_addr_4_reg_841_pp0_iter15_reg[1 : 0];
weights2_1_addr_4_reg_841_pp0_iter16_reg[10 : 3] <= weights2_1_addr_4_reg_841_pp0_iter15_reg[10 : 3];
        weights2_1_addr_4_reg_841_pp0_iter9_reg[1 : 0] <= weights2_1_addr_4_reg_841[1 : 0];
weights2_1_addr_4_reg_841_pp0_iter9_reg[10 : 3] <= weights2_1_addr_4_reg_841[10 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_addr_6_reg_896[0] <= zext_ln168_6_fu_576_p1[0];
weights2_0_addr_6_reg_896[10 : 3] <= zext_ln168_6_fu_576_p1[10 : 3];
        weights2_0_addr_6_reg_896_pp0_iter10_reg[0] <= weights2_0_addr_6_reg_896_pp0_iter9_reg[0];
weights2_0_addr_6_reg_896_pp0_iter10_reg[10 : 3] <= weights2_0_addr_6_reg_896_pp0_iter9_reg[10 : 3];
        weights2_0_addr_6_reg_896_pp0_iter11_reg[0] <= weights2_0_addr_6_reg_896_pp0_iter10_reg[0];
weights2_0_addr_6_reg_896_pp0_iter11_reg[10 : 3] <= weights2_0_addr_6_reg_896_pp0_iter10_reg[10 : 3];
        weights2_0_addr_6_reg_896_pp0_iter12_reg[0] <= weights2_0_addr_6_reg_896_pp0_iter11_reg[0];
weights2_0_addr_6_reg_896_pp0_iter12_reg[10 : 3] <= weights2_0_addr_6_reg_896_pp0_iter11_reg[10 : 3];
        weights2_0_addr_6_reg_896_pp0_iter13_reg[0] <= weights2_0_addr_6_reg_896_pp0_iter12_reg[0];
weights2_0_addr_6_reg_896_pp0_iter13_reg[10 : 3] <= weights2_0_addr_6_reg_896_pp0_iter12_reg[10 : 3];
        weights2_0_addr_6_reg_896_pp0_iter14_reg[0] <= weights2_0_addr_6_reg_896_pp0_iter13_reg[0];
weights2_0_addr_6_reg_896_pp0_iter14_reg[10 : 3] <= weights2_0_addr_6_reg_896_pp0_iter13_reg[10 : 3];
        weights2_0_addr_6_reg_896_pp0_iter15_reg[0] <= weights2_0_addr_6_reg_896_pp0_iter14_reg[0];
weights2_0_addr_6_reg_896_pp0_iter15_reg[10 : 3] <= weights2_0_addr_6_reg_896_pp0_iter14_reg[10 : 3];
        weights2_0_addr_6_reg_896_pp0_iter16_reg[0] <= weights2_0_addr_6_reg_896_pp0_iter15_reg[0];
weights2_0_addr_6_reg_896_pp0_iter16_reg[10 : 3] <= weights2_0_addr_6_reg_896_pp0_iter15_reg[10 : 3];
        weights2_0_addr_6_reg_896_pp0_iter9_reg[0] <= weights2_0_addr_6_reg_896[0];
weights2_0_addr_6_reg_896_pp0_iter9_reg[10 : 3] <= weights2_0_addr_6_reg_896[10 : 3];
        weights2_0_addr_7_reg_908[10 : 3] <= zext_ln168_7_fu_590_p1[10 : 3];
        weights2_0_addr_7_reg_908_pp0_iter10_reg[10 : 3] <= weights2_0_addr_7_reg_908_pp0_iter9_reg[10 : 3];
        weights2_0_addr_7_reg_908_pp0_iter11_reg[10 : 3] <= weights2_0_addr_7_reg_908_pp0_iter10_reg[10 : 3];
        weights2_0_addr_7_reg_908_pp0_iter12_reg[10 : 3] <= weights2_0_addr_7_reg_908_pp0_iter11_reg[10 : 3];
        weights2_0_addr_7_reg_908_pp0_iter13_reg[10 : 3] <= weights2_0_addr_7_reg_908_pp0_iter12_reg[10 : 3];
        weights2_0_addr_7_reg_908_pp0_iter14_reg[10 : 3] <= weights2_0_addr_7_reg_908_pp0_iter13_reg[10 : 3];
        weights2_0_addr_7_reg_908_pp0_iter15_reg[10 : 3] <= weights2_0_addr_7_reg_908_pp0_iter14_reg[10 : 3];
        weights2_0_addr_7_reg_908_pp0_iter16_reg[10 : 3] <= weights2_0_addr_7_reg_908_pp0_iter15_reg[10 : 3];
        weights2_0_addr_7_reg_908_pp0_iter9_reg[10 : 3] <= weights2_0_addr_7_reg_908[10 : 3];
        weights2_1_addr_6_reg_902[0] <= zext_ln168_6_fu_576_p1[0];
weights2_1_addr_6_reg_902[10 : 3] <= zext_ln168_6_fu_576_p1[10 : 3];
        weights2_1_addr_6_reg_902_pp0_iter10_reg[0] <= weights2_1_addr_6_reg_902_pp0_iter9_reg[0];
weights2_1_addr_6_reg_902_pp0_iter10_reg[10 : 3] <= weights2_1_addr_6_reg_902_pp0_iter9_reg[10 : 3];
        weights2_1_addr_6_reg_902_pp0_iter11_reg[0] <= weights2_1_addr_6_reg_902_pp0_iter10_reg[0];
weights2_1_addr_6_reg_902_pp0_iter11_reg[10 : 3] <= weights2_1_addr_6_reg_902_pp0_iter10_reg[10 : 3];
        weights2_1_addr_6_reg_902_pp0_iter12_reg[0] <= weights2_1_addr_6_reg_902_pp0_iter11_reg[0];
weights2_1_addr_6_reg_902_pp0_iter12_reg[10 : 3] <= weights2_1_addr_6_reg_902_pp0_iter11_reg[10 : 3];
        weights2_1_addr_6_reg_902_pp0_iter13_reg[0] <= weights2_1_addr_6_reg_902_pp0_iter12_reg[0];
weights2_1_addr_6_reg_902_pp0_iter13_reg[10 : 3] <= weights2_1_addr_6_reg_902_pp0_iter12_reg[10 : 3];
        weights2_1_addr_6_reg_902_pp0_iter14_reg[0] <= weights2_1_addr_6_reg_902_pp0_iter13_reg[0];
weights2_1_addr_6_reg_902_pp0_iter14_reg[10 : 3] <= weights2_1_addr_6_reg_902_pp0_iter13_reg[10 : 3];
        weights2_1_addr_6_reg_902_pp0_iter15_reg[0] <= weights2_1_addr_6_reg_902_pp0_iter14_reg[0];
weights2_1_addr_6_reg_902_pp0_iter15_reg[10 : 3] <= weights2_1_addr_6_reg_902_pp0_iter14_reg[10 : 3];
        weights2_1_addr_6_reg_902_pp0_iter16_reg[0] <= weights2_1_addr_6_reg_902_pp0_iter15_reg[0];
weights2_1_addr_6_reg_902_pp0_iter16_reg[10 : 3] <= weights2_1_addr_6_reg_902_pp0_iter15_reg[10 : 3];
        weights2_1_addr_6_reg_902_pp0_iter9_reg[0] <= weights2_1_addr_6_reg_902[0];
weights2_1_addr_6_reg_902_pp0_iter9_reg[10 : 3] <= weights2_1_addr_6_reg_902[10 : 3];
        weights2_1_addr_7_reg_913[10 : 3] <= zext_ln168_7_fu_590_p1[10 : 3];
        weights2_1_addr_7_reg_913_pp0_iter10_reg[10 : 3] <= weights2_1_addr_7_reg_913_pp0_iter9_reg[10 : 3];
        weights2_1_addr_7_reg_913_pp0_iter11_reg[10 : 3] <= weights2_1_addr_7_reg_913_pp0_iter10_reg[10 : 3];
        weights2_1_addr_7_reg_913_pp0_iter12_reg[10 : 3] <= weights2_1_addr_7_reg_913_pp0_iter11_reg[10 : 3];
        weights2_1_addr_7_reg_913_pp0_iter13_reg[10 : 3] <= weights2_1_addr_7_reg_913_pp0_iter12_reg[10 : 3];
        weights2_1_addr_7_reg_913_pp0_iter14_reg[10 : 3] <= weights2_1_addr_7_reg_913_pp0_iter13_reg[10 : 3];
        weights2_1_addr_7_reg_913_pp0_iter15_reg[10 : 3] <= weights2_1_addr_7_reg_913_pp0_iter14_reg[10 : 3];
        weights2_1_addr_7_reg_913_pp0_iter16_reg[10 : 3] <= weights2_1_addr_7_reg_913_pp0_iter15_reg[10 : 3];
        weights2_1_addr_7_reg_913_pp0_iter9_reg[10 : 3] <= weights2_1_addr_7_reg_913[10 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_load_3_reg_856 <= weights2_0_q1;
        weights2_0_load_4_reg_866 <= weights2_0_q0;
        weights2_1_load_3_reg_861 <= weights2_1_q1;
        weights2_1_load_4_reg_871 <= weights2_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_load_7_reg_918 <= weights2_0_q0;
        weights2_1_load_7_reg_923 <= weights2_1_q0;
    end
end
always @ (*) begin
    if (((icmp_ln166_reg_729 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter15 == 1'b1) & (icmp_ln166_reg_729_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter15_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter15_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to14 = 1'b1;
    end else begin
        ap_idle_pp0_0to14 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_250_p0 = bitcast_ln168_28_fu_632_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_250_p0 = bitcast_ln168_24_fu_622_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_250_p0 = bitcast_ln168_20_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_250_p0 = bitcast_ln168_16_fu_604_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_250_p0 = bitcast_ln168_12_fu_596_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_250_p0 = bitcast_ln168_8_fu_557_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_250_p0 = bitcast_ln168_4_fu_530_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_250_p0 = bitcast_ln168_fu_442_p1;
    end else begin
        grp_fu_250_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_254_p0 = bitcast_ln168_30_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_254_p0 = bitcast_ln168_26_fu_627_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_254_p0 = bitcast_ln168_22_fu_617_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_254_p0 = bitcast_ln168_18_fu_608_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_254_p0 = bitcast_ln168_14_fu_600_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_254_p0 = bitcast_ln168_10_fu_562_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_254_p0 = bitcast_ln168_6_fu_535_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_254_p0 = bitcast_ln168_2_fu_447_p1;
    end else begin
        grp_fu_254_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_address0_local = weights2_0_addr_7_reg_908_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_address0_local = weights2_0_addr_6_reg_896_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address0_local = weights2_0_addr_5_reg_876_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_address0_local = weights2_0_addr_4_reg_836_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_address0_local = zext_ln168_7_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address0_local = zext_ln168_5_fu_551_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_address0_local = zext_ln168_4_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_address0_local = zext_ln168_2_fu_495_p1;
    end else begin
        weights2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_address1_local = weights2_0_addr_3_reg_826_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_address1_local = weights2_0_addr_2_reg_814_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_address1_local = weights2_0_addr_1_reg_804_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_0_address1_local = zext_ln168_6_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_0_address1_local = zext_ln168_3_fu_509_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_0_address1_local = zext_ln168_1_fu_480_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_address1_local = weights2_0_addr_reg_749_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_0_address1_local = zext_ln168_fu_370_p1;
    end else begin
        weights2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_0_ce0_local = 1'b1;
    end else begin
        weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_0_ce1_local = 1'b1;
    end else begin
        weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights2_0_d0_local = bitcast_ln168_29_fu_694_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights2_0_d0_local = bitcast_ln168_25_fu_686_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights2_0_d0_local = bitcast_ln168_21_fu_678_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights2_0_d0_local = bitcast_ln168_17_fu_670_p1;
        end else begin
            weights2_0_d0_local = 'bx;
        end
    end else begin
        weights2_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_0_d1_local = bitcast_ln168_13_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_0_d1_local = bitcast_ln168_9_fu_650_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_0_d1_local = bitcast_ln168_5_fu_640_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_0_d1_local = bitcast_ln168_1_fu_462_p1;
    end else begin
        weights2_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_0_we0_local = 1'b1;
    end else begin
        weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_0_we1_local = 1'b1;
    end else begin
        weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_1_address0_local = weights2_1_addr_7_reg_913_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_1_address0_local = weights2_1_addr_6_reg_902_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address0_local = weights2_1_addr_5_reg_881_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_1_address0_local = weights2_1_addr_4_reg_841_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_1_address0_local = zext_ln168_7_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address0_local = zext_ln168_5_fu_551_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_address0_local = zext_ln168_4_fu_524_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_1_address0_local = zext_ln168_2_fu_495_p1;
    end else begin
        weights2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_1_address1_local = weights2_1_addr_3_reg_831_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_1_address1_local = weights2_1_addr_2_reg_820_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_address1_local = weights2_1_addr_1_reg_809_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        weights2_1_address1_local = zext_ln168_6_fu_576_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        weights2_1_address1_local = zext_ln168_3_fu_509_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        weights2_1_address1_local = zext_ln168_1_fu_480_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_1_address1_local = weights2_1_addr_reg_754_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights2_1_address1_local = zext_ln168_fu_370_p1;
    end else begin
        weights2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_1_ce0_local = 1'b1;
    end else begin
        weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        weights2_1_ce1_local = 1'b1;
    end else begin
        weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter16 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            weights2_1_d0_local = bitcast_ln168_31_fu_698_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            weights2_1_d0_local = bitcast_ln168_27_fu_690_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            weights2_1_d0_local = bitcast_ln168_23_fu_682_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            weights2_1_d0_local = bitcast_ln168_19_fu_674_p1;
        end else begin
            weights2_1_d0_local = 'bx;
        end
    end else begin
        weights2_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        weights2_1_d1_local = bitcast_ln168_15_fu_665_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        weights2_1_d1_local = bitcast_ln168_11_fu_655_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights2_1_d1_local = bitcast_ln168_7_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        weights2_1_d1_local = bitcast_ln168_3_fu_467_p1;
    end else begin
        weights2_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_1_we0_local = 1'b1;
    end else begin
        weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        weights2_1_we1_local = 1'b1;
    end else begin
        weights2_1_we1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter15_stage6) & (ap_idle_pp0_0to14 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln166_1_fu_334_p2 = (i_6_fu_90 + 7'd1);
assign add_ln166_fu_306_p2 = (indvar_flatten20_fu_94 + 9'd1);
assign add_ln167_fu_452_p2 = (select_ln121_reg_733 + 7'd16);
assign add_ln168_1_fu_472_p4 = {{{trunc_ln168_reg_738_pp0_iter7_reg}, {tmp_s_reg_759_pp0_iter7_reg}}, {1'd1}};
assign add_ln168_2_fu_486_p5 = {{{{trunc_ln168_reg_738_pp0_iter7_reg}, {tmp_18_reg_764_pp0_iter7_reg}}, {1'd1}}, {tmp_11_reg_770_pp0_iter7_reg}};
assign add_ln168_3_fu_501_p4 = {{{trunc_ln168_reg_738_pp0_iter7_reg}, {tmp_18_reg_764_pp0_iter7_reg}}, {2'd3}};
assign add_ln168_4_fu_515_p5 = {{{{trunc_ln168_reg_738_pp0_iter7_reg}, {tmp_19_reg_776_pp0_iter7_reg}}, {1'd1}}, {tmp_20_reg_784_pp0_iter7_reg}};
assign add_ln168_5_fu_540_p6 = {{{{{trunc_ln168_reg_738_pp0_iter7_reg}, {tmp_19_reg_776_pp0_iter7_reg}}, {1'd1}}, {tmp_12_reg_789_pp0_iter7_reg}}, {1'd1}};
assign add_ln168_6_fu_567_p5 = {{{{trunc_ln168_reg_738_pp0_iter8_reg}, {tmp_19_reg_776_pp0_iter8_reg}}, {2'd3}}, {tmp_11_reg_770_pp0_iter8_reg}};
assign add_ln168_7_fu_582_p4 = {{{trunc_ln168_reg_738_pp0_iter8_reg}, {tmp_19_reg_776_pp0_iter8_reg}}, {3'd7}};
assign add_ln3_fu_362_p3 = {{trunc_ln168_fu_358_p1}, {lshr_ln4_fu_348_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln168_10_fu_562_p1 = reg_278;
assign bitcast_ln168_11_fu_655_p1 = reg_270;
assign bitcast_ln168_12_fu_596_p1 = weights2_0_load_3_reg_856;
assign bitcast_ln168_13_fu_660_p1 = reg_266;
assign bitcast_ln168_14_fu_600_p1 = weights2_1_load_3_reg_861;
assign bitcast_ln168_15_fu_665_p1 = reg_270;
assign bitcast_ln168_16_fu_604_p1 = weights2_0_load_4_reg_866;
assign bitcast_ln168_17_fu_670_p1 = div131_8_reg_978;
assign bitcast_ln168_18_fu_608_p1 = weights2_1_load_4_reg_871;
assign bitcast_ln168_19_fu_674_p1 = div131_9_reg_983;
assign bitcast_ln168_1_fu_462_p1 = reg_266;
assign bitcast_ln168_20_fu_612_p1 = reg_274;
assign bitcast_ln168_21_fu_678_p1 = div131_s_reg_988;
assign bitcast_ln168_22_fu_617_p1 = reg_278;
assign bitcast_ln168_23_fu_682_p1 = div131_10_reg_993;
assign bitcast_ln168_24_fu_622_p1 = reg_258;
assign bitcast_ln168_25_fu_686_p1 = div131_11_reg_998;
assign bitcast_ln168_26_fu_627_p1 = reg_262;
assign bitcast_ln168_27_fu_690_p1 = div131_12_reg_1003;
assign bitcast_ln168_28_fu_632_p1 = weights2_0_load_7_reg_918;
assign bitcast_ln168_29_fu_694_p1 = div131_13_reg_1008;
assign bitcast_ln168_2_fu_447_p1 = reg_262;
assign bitcast_ln168_30_fu_636_p1 = weights2_1_load_7_reg_923;
assign bitcast_ln168_31_fu_698_p1 = div131_14_reg_1013;
assign bitcast_ln168_3_fu_467_p1 = reg_270;
assign bitcast_ln168_4_fu_530_p1 = reg_258;
assign bitcast_ln168_5_fu_640_p1 = reg_266;
assign bitcast_ln168_6_fu_535_p1 = reg_262;
assign bitcast_ln168_7_fu_645_p1 = reg_270;
assign bitcast_ln168_8_fu_557_p1 = reg_274;
assign bitcast_ln168_9_fu_650_p1 = reg_266;
assign bitcast_ln168_fu_442_p1 = reg_258;
assign icmp_ln166_fu_300_p2 = ((indvar_flatten20_fu_94 == 9'd256) ? 1'b1 : 1'b0);
assign lshr_ln4_fu_348_p4 = {{select_ln121_fu_326_p3[5:1]}};
assign select_ln121_fu_326_p3 = ((tmp_fu_318_p3[0:0] == 1'b1) ? 7'd0 : j_fu_86);
assign select_ln166_fu_340_p3 = ((tmp_fu_318_p3[0:0] == 1'b1) ? add_ln166_1_fu_334_p2 : i_6_fu_90);
assign tmp_fu_318_p3 = j_fu_86[32'd6];
assign trunc_ln168_fu_358_p1 = select_ln166_fu_340_p3[5:0];
assign weights2_0_address0 = weights2_0_address0_local;
assign weights2_0_address1 = weights2_0_address1_local;
assign weights2_0_ce0 = weights2_0_ce0_local;
assign weights2_0_ce1 = weights2_0_ce1_local;
assign weights2_0_d0 = weights2_0_d0_local;
assign weights2_0_d1 = weights2_0_d1_local;
assign weights2_0_we0 = weights2_0_we0_local;
assign weights2_0_we1 = weights2_0_we1_local;
assign weights2_1_address0 = weights2_1_address0_local;
assign weights2_1_address1 = weights2_1_address1_local;
assign weights2_1_ce0 = weights2_1_ce0_local;
assign weights2_1_ce1 = weights2_1_ce1_local;
assign weights2_1_d0 = weights2_1_d0_local;
assign weights2_1_d1 = weights2_1_d1_local;
assign weights2_1_we0 = weights2_1_we0_local;
assign weights2_1_we1 = weights2_1_we1_local;
assign zext_ln168_1_fu_480_p1 = add_ln168_1_fu_472_p4;
assign zext_ln168_2_fu_495_p1 = add_ln168_2_fu_486_p5;
assign zext_ln168_3_fu_509_p1 = add_ln168_3_fu_501_p4;
assign zext_ln168_4_fu_524_p1 = add_ln168_4_fu_515_p5;
assign zext_ln168_5_fu_551_p1 = add_ln168_5_fu_540_p6;
assign zext_ln168_6_fu_576_p1 = add_ln168_6_fu_567_p5;
assign zext_ln168_7_fu_590_p1 = add_ln168_7_fu_582_p4;
assign zext_ln168_fu_370_p1 = add_ln3_fu_362_p3;
always @ (posedge ap_clk) begin
    weights2_0_addr_1_reg_804[0] <= 1'b1;
    weights2_0_addr_1_reg_804_pp0_iter8_reg[0] <= 1'b1;
    weights2_0_addr_1_reg_804_pp0_iter9_reg[0] <= 1'b1;
    weights2_0_addr_1_reg_804_pp0_iter10_reg[0] <= 1'b1;
    weights2_0_addr_1_reg_804_pp0_iter11_reg[0] <= 1'b1;
    weights2_0_addr_1_reg_804_pp0_iter12_reg[0] <= 1'b1;
    weights2_0_addr_1_reg_804_pp0_iter13_reg[0] <= 1'b1;
    weights2_0_addr_1_reg_804_pp0_iter14_reg[0] <= 1'b1;
    weights2_1_addr_1_reg_809[0] <= 1'b1;
    weights2_1_addr_1_reg_809_pp0_iter8_reg[0] <= 1'b1;
    weights2_1_addr_1_reg_809_pp0_iter9_reg[0] <= 1'b1;
    weights2_1_addr_1_reg_809_pp0_iter10_reg[0] <= 1'b1;
    weights2_1_addr_1_reg_809_pp0_iter11_reg[0] <= 1'b1;
    weights2_1_addr_1_reg_809_pp0_iter12_reg[0] <= 1'b1;
    weights2_1_addr_1_reg_809_pp0_iter13_reg[0] <= 1'b1;
    weights2_1_addr_1_reg_809_pp0_iter14_reg[0] <= 1'b1;
    weights2_0_addr_2_reg_814[1] <= 1'b1;
    weights2_0_addr_2_reg_814_pp0_iter8_reg[1] <= 1'b1;
    weights2_0_addr_2_reg_814_pp0_iter9_reg[1] <= 1'b1;
    weights2_0_addr_2_reg_814_pp0_iter10_reg[1] <= 1'b1;
    weights2_0_addr_2_reg_814_pp0_iter11_reg[1] <= 1'b1;
    weights2_0_addr_2_reg_814_pp0_iter12_reg[1] <= 1'b1;
    weights2_0_addr_2_reg_814_pp0_iter13_reg[1] <= 1'b1;
    weights2_0_addr_2_reg_814_pp0_iter14_reg[1] <= 1'b1;
    weights2_1_addr_2_reg_820[1] <= 1'b1;
    weights2_1_addr_2_reg_820_pp0_iter8_reg[1] <= 1'b1;
    weights2_1_addr_2_reg_820_pp0_iter9_reg[1] <= 1'b1;
    weights2_1_addr_2_reg_820_pp0_iter10_reg[1] <= 1'b1;
    weights2_1_addr_2_reg_820_pp0_iter11_reg[1] <= 1'b1;
    weights2_1_addr_2_reg_820_pp0_iter12_reg[1] <= 1'b1;
    weights2_1_addr_2_reg_820_pp0_iter13_reg[1] <= 1'b1;
    weights2_1_addr_2_reg_820_pp0_iter14_reg[1] <= 1'b1;
    weights2_0_addr_3_reg_826[1:0] <= 2'b11;
    weights2_0_addr_3_reg_826_pp0_iter9_reg[1:0] <= 2'b11;
    weights2_0_addr_3_reg_826_pp0_iter10_reg[1:0] <= 2'b11;
    weights2_0_addr_3_reg_826_pp0_iter11_reg[1:0] <= 2'b11;
    weights2_0_addr_3_reg_826_pp0_iter12_reg[1:0] <= 2'b11;
    weights2_0_addr_3_reg_826_pp0_iter13_reg[1:0] <= 2'b11;
    weights2_0_addr_3_reg_826_pp0_iter14_reg[1:0] <= 2'b11;
    weights2_0_addr_3_reg_826_pp0_iter15_reg[1:0] <= 2'b11;
    weights2_0_addr_3_reg_826_pp0_iter16_reg[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831_pp0_iter9_reg[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831_pp0_iter10_reg[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831_pp0_iter11_reg[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831_pp0_iter12_reg[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831_pp0_iter13_reg[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831_pp0_iter14_reg[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831_pp0_iter15_reg[1:0] <= 2'b11;
    weights2_1_addr_3_reg_831_pp0_iter16_reg[1:0] <= 2'b11;
    weights2_0_addr_4_reg_836[2] <= 1'b1;
    weights2_0_addr_4_reg_836_pp0_iter9_reg[2] <= 1'b1;
    weights2_0_addr_4_reg_836_pp0_iter10_reg[2] <= 1'b1;
    weights2_0_addr_4_reg_836_pp0_iter11_reg[2] <= 1'b1;
    weights2_0_addr_4_reg_836_pp0_iter12_reg[2] <= 1'b1;
    weights2_0_addr_4_reg_836_pp0_iter13_reg[2] <= 1'b1;
    weights2_0_addr_4_reg_836_pp0_iter14_reg[2] <= 1'b1;
    weights2_0_addr_4_reg_836_pp0_iter15_reg[2] <= 1'b1;
    weights2_0_addr_4_reg_836_pp0_iter16_reg[2] <= 1'b1;
    weights2_1_addr_4_reg_841[2] <= 1'b1;
    weights2_1_addr_4_reg_841_pp0_iter9_reg[2] <= 1'b1;
    weights2_1_addr_4_reg_841_pp0_iter10_reg[2] <= 1'b1;
    weights2_1_addr_4_reg_841_pp0_iter11_reg[2] <= 1'b1;
    weights2_1_addr_4_reg_841_pp0_iter12_reg[2] <= 1'b1;
    weights2_1_addr_4_reg_841_pp0_iter13_reg[2] <= 1'b1;
    weights2_1_addr_4_reg_841_pp0_iter14_reg[2] <= 1'b1;
    weights2_1_addr_4_reg_841_pp0_iter15_reg[2] <= 1'b1;
    weights2_1_addr_4_reg_841_pp0_iter16_reg[2] <= 1'b1;
    weights2_0_addr_5_reg_876[0] <= 1'b1;
    weights2_0_addr_5_reg_876[2] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter9_reg[0] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter9_reg[2] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter10_reg[0] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter10_reg[2] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter11_reg[0] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter11_reg[2] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter12_reg[0] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter12_reg[2] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter13_reg[0] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter13_reg[2] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter14_reg[0] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter14_reg[2] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter15_reg[0] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter15_reg[2] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter16_reg[0] <= 1'b1;
    weights2_0_addr_5_reg_876_pp0_iter16_reg[2] <= 1'b1;
    weights2_1_addr_5_reg_881[0] <= 1'b1;
    weights2_1_addr_5_reg_881[2] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter9_reg[0] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter9_reg[2] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter10_reg[0] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter10_reg[2] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter11_reg[0] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter11_reg[2] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter12_reg[0] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter12_reg[2] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter13_reg[0] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter13_reg[2] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter14_reg[0] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter14_reg[2] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter15_reg[0] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter15_reg[2] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter16_reg[0] <= 1'b1;
    weights2_1_addr_5_reg_881_pp0_iter16_reg[2] <= 1'b1;
    weights2_0_addr_6_reg_896[2:1] <= 2'b11;
    weights2_0_addr_6_reg_896_pp0_iter9_reg[2:1] <= 2'b11;
    weights2_0_addr_6_reg_896_pp0_iter10_reg[2:1] <= 2'b11;
    weights2_0_addr_6_reg_896_pp0_iter11_reg[2:1] <= 2'b11;
    weights2_0_addr_6_reg_896_pp0_iter12_reg[2:1] <= 2'b11;
    weights2_0_addr_6_reg_896_pp0_iter13_reg[2:1] <= 2'b11;
    weights2_0_addr_6_reg_896_pp0_iter14_reg[2:1] <= 2'b11;
    weights2_0_addr_6_reg_896_pp0_iter15_reg[2:1] <= 2'b11;
    weights2_0_addr_6_reg_896_pp0_iter16_reg[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902_pp0_iter9_reg[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902_pp0_iter10_reg[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902_pp0_iter11_reg[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902_pp0_iter12_reg[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902_pp0_iter13_reg[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902_pp0_iter14_reg[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902_pp0_iter15_reg[2:1] <= 2'b11;
    weights2_1_addr_6_reg_902_pp0_iter16_reg[2:1] <= 2'b11;
    weights2_0_addr_7_reg_908[2:0] <= 3'b111;
    weights2_0_addr_7_reg_908_pp0_iter9_reg[2:0] <= 3'b111;
    weights2_0_addr_7_reg_908_pp0_iter10_reg[2:0] <= 3'b111;
    weights2_0_addr_7_reg_908_pp0_iter11_reg[2:0] <= 3'b111;
    weights2_0_addr_7_reg_908_pp0_iter12_reg[2:0] <= 3'b111;
    weights2_0_addr_7_reg_908_pp0_iter13_reg[2:0] <= 3'b111;
    weights2_0_addr_7_reg_908_pp0_iter14_reg[2:0] <= 3'b111;
    weights2_0_addr_7_reg_908_pp0_iter15_reg[2:0] <= 3'b111;
    weights2_0_addr_7_reg_908_pp0_iter16_reg[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913_pp0_iter9_reg[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913_pp0_iter10_reg[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913_pp0_iter11_reg[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913_pp0_iter12_reg[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913_pp0_iter13_reg[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913_pp0_iter14_reg[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913_pp0_iter15_reg[2:0] <= 3'b111;
    weights2_1_addr_7_reg_913_pp0_iter16_reg[2:0] <= 3'b111;
end
endmodule 