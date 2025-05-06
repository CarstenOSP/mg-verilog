
module k2mm_k2mm_Pipeline_lpwr_1_lpwr_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,E_out_din,E_out_full_n,E_out_write,buff_E_out_address0,buff_E_out_ce0,buff_E_out_q0,buff_E_out_1_address0,buff_E_out_1_ce0,buff_E_out_1_q0,buff_E_out_2_address0,buff_E_out_2_ce0,buff_E_out_2_q0,buff_E_out_3_address0,buff_E_out_3_ce0,buff_E_out_3_q0,buff_E_out_4_address0,buff_E_out_4_ce0,buff_E_out_4_q0,buff_E_out_5_address0,buff_E_out_5_ce0,buff_E_out_5_q0,buff_E_out_6_address0,buff_E_out_6_ce0,buff_E_out_6_q0,buff_E_out_7_address0,buff_E_out_7_ce0,buff_E_out_7_q0,buff_E_out_8_address0,buff_E_out_8_ce0,buff_E_out_8_q0,buff_E_out_9_address0,buff_E_out_9_ce0,buff_E_out_9_q0,buff_E_out_10_address0,buff_E_out_10_ce0,buff_E_out_10_q0,buff_E_out_11_address0,buff_E_out_11_ce0,buff_E_out_11_q0,buff_E_out_12_address0,buff_E_out_12_ce0,buff_E_out_12_q0,buff_E_out_13_address0,buff_E_out_13_ce0,buff_E_out_13_q0,buff_E_out_14_address0,buff_E_out_14_ce0,buff_E_out_14_q0,buff_E_out_15_address0,buff_E_out_15_ce0,buff_E_out_15_q0,buff_E_out_16_address0,buff_E_out_16_ce0,buff_E_out_16_q0,buff_E_out_17_address0,buff_E_out_17_ce0,buff_E_out_17_q0,buff_E_out_18_address0,buff_E_out_18_ce0,buff_E_out_18_q0,buff_E_out_19_address0,buff_E_out_19_ce0,buff_E_out_19_q0,buff_E_out_20_address0,buff_E_out_20_ce0,buff_E_out_20_q0,buff_E_out_21_address0,buff_E_out_21_ce0,buff_E_out_21_q0,buff_E_out_22_address0,buff_E_out_22_ce0,buff_E_out_22_q0,buff_E_out_23_address0,buff_E_out_23_ce0,buff_E_out_23_q0,buff_E_out_24_address0,buff_E_out_24_ce0,buff_E_out_24_q0,buff_E_out_25_address0,buff_E_out_25_ce0,buff_E_out_25_q0,buff_E_out_26_address0,buff_E_out_26_ce0,buff_E_out_26_q0,buff_E_out_27_address0,buff_E_out_27_ce0,buff_E_out_27_q0,buff_E_out_28_address0,buff_E_out_28_ce0,buff_E_out_28_q0,buff_E_out_29_address0,buff_E_out_29_ce0,buff_E_out_29_q0,buff_E_out_30_address0,buff_E_out_30_ce0,buff_E_out_30_q0,buff_E_out_31_address0,buff_E_out_31_ce0,buff_E_out_31_q0,buff_E_out_32_address0,buff_E_out_32_ce0,buff_E_out_32_q0,buff_E_out_33_address0,buff_E_out_33_ce0,buff_E_out_33_q0,buff_E_out_34_address0,buff_E_out_34_ce0,buff_E_out_34_q0,buff_E_out_35_address0,buff_E_out_35_ce0,buff_E_out_35_q0,buff_E_out_36_address0,buff_E_out_36_ce0,buff_E_out_36_q0,buff_E_out_37_address0,buff_E_out_37_ce0,buff_E_out_37_q0,buff_E_out_38_address0,buff_E_out_38_ce0,buff_E_out_38_q0,buff_E_out_39_address0,buff_E_out_39_ce0,buff_E_out_39_q0,buff_E_out_40_address0,buff_E_out_40_ce0,buff_E_out_40_q0,buff_E_out_41_address0,buff_E_out_41_ce0,buff_E_out_41_q0,buff_E_out_42_address0,buff_E_out_42_ce0,buff_E_out_42_q0,buff_E_out_43_address0,buff_E_out_43_ce0,buff_E_out_43_q0,buff_E_out_44_address0,buff_E_out_44_ce0,buff_E_out_44_q0,buff_E_out_45_address0,buff_E_out_45_ce0,buff_E_out_45_q0,buff_E_out_46_address0,buff_E_out_46_ce0,buff_E_out_46_q0,buff_E_out_47_address0,buff_E_out_47_ce0,buff_E_out_47_q0,buff_E_out_48_address0,buff_E_out_48_ce0,buff_E_out_48_q0,buff_E_out_49_address0,buff_E_out_49_ce0,buff_E_out_49_q0,buff_E_out_50_address0,buff_E_out_50_ce0,buff_E_out_50_q0,buff_E_out_51_address0,buff_E_out_51_ce0,buff_E_out_51_q0,buff_E_out_52_address0,buff_E_out_52_ce0,buff_E_out_52_q0,buff_E_out_53_address0,buff_E_out_53_ce0,buff_E_out_53_q0,buff_E_out_54_address0,buff_E_out_54_ce0,buff_E_out_54_q0,buff_E_out_55_address0,buff_E_out_55_ce0,buff_E_out_55_q0,buff_E_out_56_address0,buff_E_out_56_ce0,buff_E_out_56_q0,buff_E_out_57_address0,buff_E_out_57_ce0,buff_E_out_57_q0,buff_E_out_58_address0,buff_E_out_58_ce0,buff_E_out_58_q0,buff_E_out_59_address0,buff_E_out_59_ce0,buff_E_out_59_q0,buff_E_out_60_address0,buff_E_out_60_ce0,buff_E_out_60_q0,buff_E_out_61_address0,buff_E_out_61_ce0,buff_E_out_61_q0,buff_E_out_62_address0,buff_E_out_62_ce0,buff_E_out_62_q0,buff_E_out_63_address0,buff_E_out_63_ce0,buff_E_out_63_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] E_out_din;
input   E_out_full_n;
output   E_out_write;
output  [5:0] buff_E_out_address0;
output   buff_E_out_ce0;
input  [31:0] buff_E_out_q0;
output  [5:0] buff_E_out_1_address0;
output   buff_E_out_1_ce0;
input  [31:0] buff_E_out_1_q0;
output  [5:0] buff_E_out_2_address0;
output   buff_E_out_2_ce0;
input  [31:0] buff_E_out_2_q0;
output  [5:0] buff_E_out_3_address0;
output   buff_E_out_3_ce0;
input  [31:0] buff_E_out_3_q0;
output  [5:0] buff_E_out_4_address0;
output   buff_E_out_4_ce0;
input  [31:0] buff_E_out_4_q0;
output  [5:0] buff_E_out_5_address0;
output   buff_E_out_5_ce0;
input  [31:0] buff_E_out_5_q0;
output  [5:0] buff_E_out_6_address0;
output   buff_E_out_6_ce0;
input  [31:0] buff_E_out_6_q0;
output  [5:0] buff_E_out_7_address0;
output   buff_E_out_7_ce0;
input  [31:0] buff_E_out_7_q0;
output  [5:0] buff_E_out_8_address0;
output   buff_E_out_8_ce0;
input  [31:0] buff_E_out_8_q0;
output  [5:0] buff_E_out_9_address0;
output   buff_E_out_9_ce0;
input  [31:0] buff_E_out_9_q0;
output  [5:0] buff_E_out_10_address0;
output   buff_E_out_10_ce0;
input  [31:0] buff_E_out_10_q0;
output  [5:0] buff_E_out_11_address0;
output   buff_E_out_11_ce0;
input  [31:0] buff_E_out_11_q0;
output  [5:0] buff_E_out_12_address0;
output   buff_E_out_12_ce0;
input  [31:0] buff_E_out_12_q0;
output  [5:0] buff_E_out_13_address0;
output   buff_E_out_13_ce0;
input  [31:0] buff_E_out_13_q0;
output  [5:0] buff_E_out_14_address0;
output   buff_E_out_14_ce0;
input  [31:0] buff_E_out_14_q0;
output  [5:0] buff_E_out_15_address0;
output   buff_E_out_15_ce0;
input  [31:0] buff_E_out_15_q0;
output  [5:0] buff_E_out_16_address0;
output   buff_E_out_16_ce0;
input  [31:0] buff_E_out_16_q0;
output  [5:0] buff_E_out_17_address0;
output   buff_E_out_17_ce0;
input  [31:0] buff_E_out_17_q0;
output  [5:0] buff_E_out_18_address0;
output   buff_E_out_18_ce0;
input  [31:0] buff_E_out_18_q0;
output  [5:0] buff_E_out_19_address0;
output   buff_E_out_19_ce0;
input  [31:0] buff_E_out_19_q0;
output  [5:0] buff_E_out_20_address0;
output   buff_E_out_20_ce0;
input  [31:0] buff_E_out_20_q0;
output  [5:0] buff_E_out_21_address0;
output   buff_E_out_21_ce0;
input  [31:0] buff_E_out_21_q0;
output  [5:0] buff_E_out_22_address0;
output   buff_E_out_22_ce0;
input  [31:0] buff_E_out_22_q0;
output  [5:0] buff_E_out_23_address0;
output   buff_E_out_23_ce0;
input  [31:0] buff_E_out_23_q0;
output  [5:0] buff_E_out_24_address0;
output   buff_E_out_24_ce0;
input  [31:0] buff_E_out_24_q0;
output  [5:0] buff_E_out_25_address0;
output   buff_E_out_25_ce0;
input  [31:0] buff_E_out_25_q0;
output  [5:0] buff_E_out_26_address0;
output   buff_E_out_26_ce0;
input  [31:0] buff_E_out_26_q0;
output  [5:0] buff_E_out_27_address0;
output   buff_E_out_27_ce0;
input  [31:0] buff_E_out_27_q0;
output  [5:0] buff_E_out_28_address0;
output   buff_E_out_28_ce0;
input  [31:0] buff_E_out_28_q0;
output  [5:0] buff_E_out_29_address0;
output   buff_E_out_29_ce0;
input  [31:0] buff_E_out_29_q0;
output  [5:0] buff_E_out_30_address0;
output   buff_E_out_30_ce0;
input  [31:0] buff_E_out_30_q0;
output  [5:0] buff_E_out_31_address0;
output   buff_E_out_31_ce0;
input  [31:0] buff_E_out_31_q0;
output  [5:0] buff_E_out_32_address0;
output   buff_E_out_32_ce0;
input  [31:0] buff_E_out_32_q0;
output  [5:0] buff_E_out_33_address0;
output   buff_E_out_33_ce0;
input  [31:0] buff_E_out_33_q0;
output  [5:0] buff_E_out_34_address0;
output   buff_E_out_34_ce0;
input  [31:0] buff_E_out_34_q0;
output  [5:0] buff_E_out_35_address0;
output   buff_E_out_35_ce0;
input  [31:0] buff_E_out_35_q0;
output  [5:0] buff_E_out_36_address0;
output   buff_E_out_36_ce0;
input  [31:0] buff_E_out_36_q0;
output  [5:0] buff_E_out_37_address0;
output   buff_E_out_37_ce0;
input  [31:0] buff_E_out_37_q0;
output  [5:0] buff_E_out_38_address0;
output   buff_E_out_38_ce0;
input  [31:0] buff_E_out_38_q0;
output  [5:0] buff_E_out_39_address0;
output   buff_E_out_39_ce0;
input  [31:0] buff_E_out_39_q0;
output  [5:0] buff_E_out_40_address0;
output   buff_E_out_40_ce0;
input  [31:0] buff_E_out_40_q0;
output  [5:0] buff_E_out_41_address0;
output   buff_E_out_41_ce0;
input  [31:0] buff_E_out_41_q0;
output  [5:0] buff_E_out_42_address0;
output   buff_E_out_42_ce0;
input  [31:0] buff_E_out_42_q0;
output  [5:0] buff_E_out_43_address0;
output   buff_E_out_43_ce0;
input  [31:0] buff_E_out_43_q0;
output  [5:0] buff_E_out_44_address0;
output   buff_E_out_44_ce0;
input  [31:0] buff_E_out_44_q0;
output  [5:0] buff_E_out_45_address0;
output   buff_E_out_45_ce0;
input  [31:0] buff_E_out_45_q0;
output  [5:0] buff_E_out_46_address0;
output   buff_E_out_46_ce0;
input  [31:0] buff_E_out_46_q0;
output  [5:0] buff_E_out_47_address0;
output   buff_E_out_47_ce0;
input  [31:0] buff_E_out_47_q0;
output  [5:0] buff_E_out_48_address0;
output   buff_E_out_48_ce0;
input  [31:0] buff_E_out_48_q0;
output  [5:0] buff_E_out_49_address0;
output   buff_E_out_49_ce0;
input  [31:0] buff_E_out_49_q0;
output  [5:0] buff_E_out_50_address0;
output   buff_E_out_50_ce0;
input  [31:0] buff_E_out_50_q0;
output  [5:0] buff_E_out_51_address0;
output   buff_E_out_51_ce0;
input  [31:0] buff_E_out_51_q0;
output  [5:0] buff_E_out_52_address0;
output   buff_E_out_52_ce0;
input  [31:0] buff_E_out_52_q0;
output  [5:0] buff_E_out_53_address0;
output   buff_E_out_53_ce0;
input  [31:0] buff_E_out_53_q0;
output  [5:0] buff_E_out_54_address0;
output   buff_E_out_54_ce0;
input  [31:0] buff_E_out_54_q0;
output  [5:0] buff_E_out_55_address0;
output   buff_E_out_55_ce0;
input  [31:0] buff_E_out_55_q0;
output  [5:0] buff_E_out_56_address0;
output   buff_E_out_56_ce0;
input  [31:0] buff_E_out_56_q0;
output  [5:0] buff_E_out_57_address0;
output   buff_E_out_57_ce0;
input  [31:0] buff_E_out_57_q0;
output  [5:0] buff_E_out_58_address0;
output   buff_E_out_58_ce0;
input  [31:0] buff_E_out_58_q0;
output  [5:0] buff_E_out_59_address0;
output   buff_E_out_59_ce0;
input  [31:0] buff_E_out_59_q0;
output  [5:0] buff_E_out_60_address0;
output   buff_E_out_60_ce0;
input  [31:0] buff_E_out_60_q0;
output  [5:0] buff_E_out_61_address0;
output   buff_E_out_61_ce0;
input  [31:0] buff_E_out_61_q0;
output  [5:0] buff_E_out_62_address0;
output   buff_E_out_62_ce0;
input  [31:0] buff_E_out_62_q0;
output  [5:0] buff_E_out_63_address0;
output   buff_E_out_63_ce0;
input  [31:0] buff_E_out_63_q0;
reg ap_idle;
reg E_out_write;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln50_fu_1425_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    E_out_blk_n;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] first_iter_4_fu_1476_p2;
reg   [0:0] first_iter_4_reg_2759;
wire   [5:0] trunc_ln51_fu_1550_p1;
reg   [5:0] trunc_ln51_reg_3083;
reg   [5:0] trunc_ln51_reg_3083_pp0_iter2_reg;
wire   [63:0] zext_ln50_fu_1482_p1;
reg   [6:0] j_fu_300;
wire   [6:0] add_ln51_fu_1554_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_304;
wire   [6:0] select_ln50_fu_1468_p3;
reg   [12:0] indvar_flatten739_fu_308;
wire   [12:0] add_ln50_1_fu_1431_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten739_load;
reg   [31:0] buff_E_out_63_load386_fu_312;
reg   [31:0] buff_E_out_62_load388_fu_316;
reg   [31:0] buff_E_out_61_load390_fu_320;
reg   [31:0] buff_E_out_60_load392_fu_324;
reg   [31:0] buff_E_out_59_load394_fu_328;
reg   [31:0] buff_E_out_58_load396_fu_332;
reg   [31:0] buff_E_out_57_load398_fu_336;
reg   [31:0] buff_E_out_56_load400_fu_340;
reg   [31:0] buff_E_out_55_load402_fu_344;
reg   [31:0] buff_E_out_54_load404_fu_348;
reg   [31:0] buff_E_out_53_load406_fu_352;
reg   [31:0] buff_E_out_52_load408_fu_356;
reg   [31:0] buff_E_out_51_load410_fu_360;
reg   [31:0] buff_E_out_50_load412_fu_364;
reg   [31:0] buff_E_out_49_load414_fu_368;
reg   [31:0] buff_E_out_48_load416_fu_372;
reg   [31:0] buff_E_out_47_load418_fu_376;
reg   [31:0] buff_E_out_46_load420_fu_380;
reg   [31:0] buff_E_out_45_load422_fu_384;
reg   [31:0] buff_E_out_44_load424_fu_388;
reg   [31:0] buff_E_out_43_load426_fu_392;
reg   [31:0] buff_E_out_42_load428_fu_396;
reg   [31:0] buff_E_out_41_load430_fu_400;
reg   [31:0] buff_E_out_40_load432_fu_404;
reg   [31:0] buff_E_out_39_load434_fu_408;
reg   [31:0] buff_E_out_38_load436_fu_412;
reg   [31:0] buff_E_out_37_load438_fu_416;
reg   [31:0] buff_E_out_36_load440_fu_420;
reg   [31:0] buff_E_out_35_load442_fu_424;
reg   [31:0] buff_E_out_34_load444_fu_428;
reg   [31:0] buff_E_out_33_load446_fu_432;
reg   [31:0] buff_E_out_32_load448_fu_436;
reg   [31:0] buff_E_out_31_load450_fu_440;
reg   [31:0] buff_E_out_30_load452_fu_444;
reg   [31:0] buff_E_out_29_load454_fu_448;
reg   [31:0] buff_E_out_28_load456_fu_452;
reg   [31:0] buff_E_out_27_load458_fu_456;
reg   [31:0] buff_E_out_26_load460_fu_460;
reg   [31:0] buff_E_out_25_load462_fu_464;
reg   [31:0] buff_E_out_24_load464_fu_468;
reg   [31:0] buff_E_out_23_load466_fu_472;
reg   [31:0] buff_E_out_22_load468_fu_476;
reg   [31:0] buff_E_out_21_load470_fu_480;
reg   [31:0] buff_E_out_20_load472_fu_484;
reg   [31:0] buff_E_out_19_load474_fu_488;
reg   [31:0] buff_E_out_18_load476_fu_492;
reg   [31:0] buff_E_out_17_load478_fu_496;
reg   [31:0] buff_E_out_16_load480_fu_500;
reg   [31:0] buff_E_out_15_load482_fu_504;
reg   [31:0] buff_E_out_14_load484_fu_508;
reg   [31:0] buff_E_out_13_load486_fu_512;
reg   [31:0] buff_E_out_12_load488_fu_516;
reg   [31:0] buff_E_out_11_load490_fu_520;
reg   [31:0] buff_E_out_10_load492_fu_524;
reg   [31:0] buff_E_out_9_load494_fu_528;
reg   [31:0] buff_E_out_8_load496_fu_532;
reg   [31:0] buff_E_out_7_load498_fu_536;
reg   [31:0] buff_E_out_6_load500_fu_540;
reg   [31:0] buff_E_out_5_load502_fu_544;
reg   [31:0] buff_E_out_4_load504_fu_548;
reg   [31:0] buff_E_out_3_load506_fu_552;
reg   [31:0] buff_E_out_2_load508_fu_556;
reg   [31:0] buff_E_out_1_load510_fu_560;
reg   [31:0] buff_E_out_load512_fu_564;
wire   [31:0] bitcast_ln52_fu_2345_p1;
wire    ap_block_pp0_stage0_01001;
reg    E_out_write_local;
reg    buff_E_out_ce0_local;
reg    buff_E_out_1_ce0_local;
reg    buff_E_out_2_ce0_local;
reg    buff_E_out_3_ce0_local;
reg    buff_E_out_4_ce0_local;
reg    buff_E_out_5_ce0_local;
reg    buff_E_out_6_ce0_local;
reg    buff_E_out_7_ce0_local;
reg    buff_E_out_8_ce0_local;
reg    buff_E_out_9_ce0_local;
reg    buff_E_out_10_ce0_local;
reg    buff_E_out_11_ce0_local;
reg    buff_E_out_12_ce0_local;
reg    buff_E_out_13_ce0_local;
reg    buff_E_out_14_ce0_local;
reg    buff_E_out_15_ce0_local;
reg    buff_E_out_16_ce0_local;
reg    buff_E_out_17_ce0_local;
reg    buff_E_out_18_ce0_local;
reg    buff_E_out_19_ce0_local;
reg    buff_E_out_20_ce0_local;
reg    buff_E_out_21_ce0_local;
reg    buff_E_out_22_ce0_local;
reg    buff_E_out_23_ce0_local;
reg    buff_E_out_24_ce0_local;
reg    buff_E_out_25_ce0_local;
reg    buff_E_out_26_ce0_local;
reg    buff_E_out_27_ce0_local;
reg    buff_E_out_28_ce0_local;
reg    buff_E_out_29_ce0_local;
reg    buff_E_out_30_ce0_local;
reg    buff_E_out_31_ce0_local;
reg    buff_E_out_32_ce0_local;
reg    buff_E_out_33_ce0_local;
reg    buff_E_out_34_ce0_local;
reg    buff_E_out_35_ce0_local;
reg    buff_E_out_36_ce0_local;
reg    buff_E_out_37_ce0_local;
reg    buff_E_out_38_ce0_local;
reg    buff_E_out_39_ce0_local;
reg    buff_E_out_40_ce0_local;
reg    buff_E_out_41_ce0_local;
reg    buff_E_out_42_ce0_local;
reg    buff_E_out_43_ce0_local;
reg    buff_E_out_44_ce0_local;
reg    buff_E_out_45_ce0_local;
reg    buff_E_out_46_ce0_local;
reg    buff_E_out_47_ce0_local;
reg    buff_E_out_48_ce0_local;
reg    buff_E_out_49_ce0_local;
reg    buff_E_out_50_ce0_local;
reg    buff_E_out_51_ce0_local;
reg    buff_E_out_52_ce0_local;
reg    buff_E_out_53_ce0_local;
reg    buff_E_out_54_ce0_local;
reg    buff_E_out_55_ce0_local;
reg    buff_E_out_56_ce0_local;
reg    buff_E_out_57_ce0_local;
reg    buff_E_out_58_ce0_local;
reg    buff_E_out_59_ce0_local;
reg    buff_E_out_60_ce0_local;
reg    buff_E_out_61_ce0_local;
reg    buff_E_out_62_ce0_local;
reg    buff_E_out_63_ce0_local;
wire   [0:0] icmp_ln51_fu_1454_p2;
wire   [6:0] add_ln50_fu_1448_p2;
wire   [6:0] select_ln6_fu_1460_p3;
wire   [31:0] tmp_2_fu_2082_p129;
wire   [31:0] tmp_2_fu_2082_p131;
wire    ap_continue_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_done_int_frp;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] frp_pipeline_valid_U_valid_out;
wire   [2:0] frp_pipeline_valid_U_num_valid_datasets;
wire   [31:0] pf_E_out_U_data_out;
wire    pf_E_out_U_data_out_vld;
wire    pf_E_out_U_pf_ready;
wire    pf_E_out_U_pf_done;
wire    ap_condition_frp_pvb_no_fwd_prs;
reg    ap_condition_frp_pvb_no_bkwd_prs;
reg    ap_condition_frp_pvb_pf_start;
reg    ap_frp_vld_in;
reg    frp_pipeline_valid_U_exitcond;
reg    pf_all_done;
wire   [5:0] tmp_2_fu_2082_p1;
wire   [5:0] tmp_2_fu_2082_p3;
wire   [5:0] tmp_2_fu_2082_p5;
wire   [5:0] tmp_2_fu_2082_p7;
wire   [5:0] tmp_2_fu_2082_p9;
wire   [5:0] tmp_2_fu_2082_p11;
wire   [5:0] tmp_2_fu_2082_p13;
wire   [5:0] tmp_2_fu_2082_p15;
wire   [5:0] tmp_2_fu_2082_p17;
wire   [5:0] tmp_2_fu_2082_p19;
wire   [5:0] tmp_2_fu_2082_p21;
wire   [5:0] tmp_2_fu_2082_p23;
wire   [5:0] tmp_2_fu_2082_p25;
wire   [5:0] tmp_2_fu_2082_p27;
wire   [5:0] tmp_2_fu_2082_p29;
wire   [5:0] tmp_2_fu_2082_p31;
wire   [5:0] tmp_2_fu_2082_p33;
wire   [5:0] tmp_2_fu_2082_p35;
wire   [5:0] tmp_2_fu_2082_p37;
wire   [5:0] tmp_2_fu_2082_p39;
wire   [5:0] tmp_2_fu_2082_p41;
wire   [5:0] tmp_2_fu_2082_p43;
wire   [5:0] tmp_2_fu_2082_p45;
wire   [5:0] tmp_2_fu_2082_p47;
wire   [5:0] tmp_2_fu_2082_p49;
wire   [5:0] tmp_2_fu_2082_p51;
wire   [5:0] tmp_2_fu_2082_p53;
wire   [5:0] tmp_2_fu_2082_p55;
wire   [5:0] tmp_2_fu_2082_p57;
wire   [5:0] tmp_2_fu_2082_p59;
wire   [5:0] tmp_2_fu_2082_p61;
wire   [5:0] tmp_2_fu_2082_p63;
wire  signed [5:0] tmp_2_fu_2082_p65;
wire  signed [5:0] tmp_2_fu_2082_p67;
wire  signed [5:0] tmp_2_fu_2082_p69;
wire  signed [5:0] tmp_2_fu_2082_p71;
wire  signed [5:0] tmp_2_fu_2082_p73;
wire  signed [5:0] tmp_2_fu_2082_p75;
wire  signed [5:0] tmp_2_fu_2082_p77;
wire  signed [5:0] tmp_2_fu_2082_p79;
wire  signed [5:0] tmp_2_fu_2082_p81;
wire  signed [5:0] tmp_2_fu_2082_p83;
wire  signed [5:0] tmp_2_fu_2082_p85;
wire  signed [5:0] tmp_2_fu_2082_p87;
wire  signed [5:0] tmp_2_fu_2082_p89;
wire  signed [5:0] tmp_2_fu_2082_p91;
wire  signed [5:0] tmp_2_fu_2082_p93;
wire  signed [5:0] tmp_2_fu_2082_p95;
wire  signed [5:0] tmp_2_fu_2082_p97;
wire  signed [5:0] tmp_2_fu_2082_p99;
wire  signed [5:0] tmp_2_fu_2082_p101;
wire  signed [5:0] tmp_2_fu_2082_p103;
wire  signed [5:0] tmp_2_fu_2082_p105;
wire  signed [5:0] tmp_2_fu_2082_p107;
wire  signed [5:0] tmp_2_fu_2082_p109;
wire  signed [5:0] tmp_2_fu_2082_p111;
wire  signed [5:0] tmp_2_fu_2082_p113;
wire  signed [5:0] tmp_2_fu_2082_p115;
wire  signed [5:0] tmp_2_fu_2082_p117;
wire  signed [5:0] tmp_2_fu_2082_p119;
wire  signed [5:0] tmp_2_fu_2082_p121;
wire  signed [5:0] tmp_2_fu_2082_p123;
wire  signed [5:0] tmp_2_fu_2082_p125;
wire  signed [5:0] tmp_2_fu_2082_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 j_fu_300 = 7'd0;
#0 i_fu_304 = 7'd0;
#0 indvar_flatten739_fu_308 = 13'd0;
#0 buff_E_out_63_load386_fu_312 = 32'd0;
#0 buff_E_out_62_load388_fu_316 = 32'd0;
#0 buff_E_out_61_load390_fu_320 = 32'd0;
#0 buff_E_out_60_load392_fu_324 = 32'd0;
#0 buff_E_out_59_load394_fu_328 = 32'd0;
#0 buff_E_out_58_load396_fu_332 = 32'd0;
#0 buff_E_out_57_load398_fu_336 = 32'd0;
#0 buff_E_out_56_load400_fu_340 = 32'd0;
#0 buff_E_out_55_load402_fu_344 = 32'd0;
#0 buff_E_out_54_load404_fu_348 = 32'd0;
#0 buff_E_out_53_load406_fu_352 = 32'd0;
#0 buff_E_out_52_load408_fu_356 = 32'd0;
#0 buff_E_out_51_load410_fu_360 = 32'd0;
#0 buff_E_out_50_load412_fu_364 = 32'd0;
#0 buff_E_out_49_load414_fu_368 = 32'd0;
#0 buff_E_out_48_load416_fu_372 = 32'd0;
#0 buff_E_out_47_load418_fu_376 = 32'd0;
#0 buff_E_out_46_load420_fu_380 = 32'd0;
#0 buff_E_out_45_load422_fu_384 = 32'd0;
#0 buff_E_out_44_load424_fu_388 = 32'd0;
#0 buff_E_out_43_load426_fu_392 = 32'd0;
#0 buff_E_out_42_load428_fu_396 = 32'd0;
#0 buff_E_out_41_load430_fu_400 = 32'd0;
#0 buff_E_out_40_load432_fu_404 = 32'd0;
#0 buff_E_out_39_load434_fu_408 = 32'd0;
#0 buff_E_out_38_load436_fu_412 = 32'd0;
#0 buff_E_out_37_load438_fu_416 = 32'd0;
#0 buff_E_out_36_load440_fu_420 = 32'd0;
#0 buff_E_out_35_load442_fu_424 = 32'd0;
#0 buff_E_out_34_load444_fu_428 = 32'd0;
#0 buff_E_out_33_load446_fu_432 = 32'd0;
#0 buff_E_out_32_load448_fu_436 = 32'd0;
#0 buff_E_out_31_load450_fu_440 = 32'd0;
#0 buff_E_out_30_load452_fu_444 = 32'd0;
#0 buff_E_out_29_load454_fu_448 = 32'd0;
#0 buff_E_out_28_load456_fu_452 = 32'd0;
#0 buff_E_out_27_load458_fu_456 = 32'd0;
#0 buff_E_out_26_load460_fu_460 = 32'd0;
#0 buff_E_out_25_load462_fu_464 = 32'd0;
#0 buff_E_out_24_load464_fu_468 = 32'd0;
#0 buff_E_out_23_load466_fu_472 = 32'd0;
#0 buff_E_out_22_load468_fu_476 = 32'd0;
#0 buff_E_out_21_load470_fu_480 = 32'd0;
#0 buff_E_out_20_load472_fu_484 = 32'd0;
#0 buff_E_out_19_load474_fu_488 = 32'd0;
#0 buff_E_out_18_load476_fu_492 = 32'd0;
#0 buff_E_out_17_load478_fu_496 = 32'd0;
#0 buff_E_out_16_load480_fu_500 = 32'd0;
#0 buff_E_out_15_load482_fu_504 = 32'd0;
#0 buff_E_out_14_load484_fu_508 = 32'd0;
#0 buff_E_out_13_load486_fu_512 = 32'd0;
#0 buff_E_out_12_load488_fu_516 = 32'd0;
#0 buff_E_out_11_load490_fu_520 = 32'd0;
#0 buff_E_out_10_load492_fu_524 = 32'd0;
#0 buff_E_out_9_load494_fu_528 = 32'd0;
#0 buff_E_out_8_load496_fu_532 = 32'd0;
#0 buff_E_out_7_load498_fu_536 = 32'd0;
#0 buff_E_out_6_load500_fu_540 = 32'd0;
#0 buff_E_out_5_load502_fu_544 = 32'd0;
#0 buff_E_out_4_load504_fu_548 = 32'd0;
#0 buff_E_out_3_load506_fu_552 = 32'd0;
#0 buff_E_out_2_load508_fu_556 = 32'd0;
#0 buff_E_out_1_load510_fu_560 = 32'd0;
#0 buff_E_out_load512_fu_564 = 32'd0;
#0 pf_all_done = 1'b0;
end
(* dissolve_hierarchy = "yes" *) k2mm_sparsemux_129_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h1 ),.din1_WIDTH( 32 ),.CASE2( 6'h2 ),.din2_WIDTH( 32 ),.CASE3( 6'h3 ),.din3_WIDTH( 32 ),.CASE4( 6'h4 ),.din4_WIDTH( 32 ),.CASE5( 6'h5 ),.din5_WIDTH( 32 ),.CASE6( 6'h6 ),.din6_WIDTH( 32 ),.CASE7( 6'h7 ),.din7_WIDTH( 32 ),.CASE8( 6'h8 ),.din8_WIDTH( 32 ),.CASE9( 6'h9 ),.din9_WIDTH( 32 ),.CASE10( 6'hA ),.din10_WIDTH( 32 ),.CASE11( 6'hB ),.din11_WIDTH( 32 ),.CASE12( 6'hC ),.din12_WIDTH( 32 ),.CASE13( 6'hD ),.din13_WIDTH( 32 ),.CASE14( 6'hE ),.din14_WIDTH( 32 ),.CASE15( 6'hF ),.din15_WIDTH( 32 ),.CASE16( 6'h10 ),.din16_WIDTH( 32 ),.CASE17( 6'h11 ),.din17_WIDTH( 32 ),.CASE18( 6'h12 ),.din18_WIDTH( 32 ),.CASE19( 6'h13 ),.din19_WIDTH( 32 ),.CASE20( 6'h14 ),.din20_WIDTH( 32 ),.CASE21( 6'h15 ),.din21_WIDTH( 32 ),.CASE22( 6'h16 ),.din22_WIDTH( 32 ),.CASE23( 6'h17 ),.din23_WIDTH( 32 ),.CASE24( 6'h18 ),.din24_WIDTH( 32 ),.CASE25( 6'h19 ),.din25_WIDTH( 32 ),.CASE26( 6'h1A ),.din26_WIDTH( 32 ),.CASE27( 6'h1B ),.din27_WIDTH( 32 ),.CASE28( 6'h1C ),.din28_WIDTH( 32 ),.CASE29( 6'h1D ),.din29_WIDTH( 32 ),.CASE30( 6'h1E ),.din30_WIDTH( 32 ),.CASE31( 6'h1F ),.din31_WIDTH( 32 ),.CASE32( 6'h20 ),.din32_WIDTH( 32 ),.CASE33( 6'h21 ),.din33_WIDTH( 32 ),.CASE34( 6'h22 ),.din34_WIDTH( 32 ),.CASE35( 6'h23 ),.din35_WIDTH( 32 ),.CASE36( 6'h24 ),.din36_WIDTH( 32 ),.CASE37( 6'h25 ),.din37_WIDTH( 32 ),.CASE38( 6'h26 ),.din38_WIDTH( 32 ),.CASE39( 6'h27 ),.din39_WIDTH( 32 ),.CASE40( 6'h28 ),.din40_WIDTH( 32 ),.CASE41( 6'h29 ),.din41_WIDTH( 32 ),.CASE42( 6'h2A ),.din42_WIDTH( 32 ),.CASE43( 6'h2B ),.din43_WIDTH( 32 ),.CASE44( 6'h2C ),.din44_WIDTH( 32 ),.CASE45( 6'h2D ),.din45_WIDTH( 32 ),.CASE46( 6'h2E ),.din46_WIDTH( 32 ),.CASE47( 6'h2F ),.din47_WIDTH( 32 ),.CASE48( 6'h30 ),.din48_WIDTH( 32 ),.CASE49( 6'h31 ),.din49_WIDTH( 32 ),.CASE50( 6'h32 ),.din50_WIDTH( 32 ),.CASE51( 6'h33 ),.din51_WIDTH( 32 ),.CASE52( 6'h34 ),.din52_WIDTH( 32 ),.CASE53( 6'h35 ),.din53_WIDTH( 32 ),.CASE54( 6'h36 ),.din54_WIDTH( 32 ),.CASE55( 6'h37 ),.din55_WIDTH( 32 ),.CASE56( 6'h38 ),.din56_WIDTH( 32 ),.CASE57( 6'h39 ),.din57_WIDTH( 32 ),.CASE58( 6'h3A ),.din58_WIDTH( 32 ),.CASE59( 6'h3B ),.din59_WIDTH( 32 ),.CASE60( 6'h3C ),.din60_WIDTH( 32 ),.CASE61( 6'h3D ),.din61_WIDTH( 32 ),.CASE62( 6'h3E ),.din62_WIDTH( 32 ),.CASE63( 6'h3F ),.din63_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_129_6_32_1_1_U917(.din0(buff_E_out_load512_fu_564),.din1(buff_E_out_1_load510_fu_560),.din2(buff_E_out_2_load508_fu_556),.din3(buff_E_out_3_load506_fu_552),.din4(buff_E_out_4_load504_fu_548),.din5(buff_E_out_5_load502_fu_544),.din6(buff_E_out_6_load500_fu_540),.din7(buff_E_out_7_load498_fu_536),.din8(buff_E_out_8_load496_fu_532),.din9(buff_E_out_9_load494_fu_528),.din10(buff_E_out_10_load492_fu_524),.din11(buff_E_out_11_load490_fu_520),.din12(buff_E_out_12_load488_fu_516),.din13(buff_E_out_13_load486_fu_512),.din14(buff_E_out_14_load484_fu_508),.din15(buff_E_out_15_load482_fu_504),.din16(buff_E_out_16_load480_fu_500),.din17(buff_E_out_17_load478_fu_496),.din18(buff_E_out_18_load476_fu_492),.din19(buff_E_out_19_load474_fu_488),.din20(buff_E_out_20_load472_fu_484),.din21(buff_E_out_21_load470_fu_480),.din22(buff_E_out_22_load468_fu_476),.din23(buff_E_out_23_load466_fu_472),.din24(buff_E_out_24_load464_fu_468),.din25(buff_E_out_25_load462_fu_464),.din26(buff_E_out_26_load460_fu_460),.din27(buff_E_out_27_load458_fu_456),.din28(buff_E_out_28_load456_fu_452),.din29(buff_E_out_29_load454_fu_448),.din30(buff_E_out_30_load452_fu_444),.din31(buff_E_out_31_load450_fu_440),.din32(buff_E_out_32_load448_fu_436),.din33(buff_E_out_33_load446_fu_432),.din34(buff_E_out_34_load444_fu_428),.din35(buff_E_out_35_load442_fu_424),.din36(buff_E_out_36_load440_fu_420),.din37(buff_E_out_37_load438_fu_416),.din38(buff_E_out_38_load436_fu_412),.din39(buff_E_out_39_load434_fu_408),.din40(buff_E_out_40_load432_fu_404),.din41(buff_E_out_41_load430_fu_400),.din42(buff_E_out_42_load428_fu_396),.din43(buff_E_out_43_load426_fu_392),.din44(buff_E_out_44_load424_fu_388),.din45(buff_E_out_45_load422_fu_384),.din46(buff_E_out_46_load420_fu_380),.din47(buff_E_out_47_load418_fu_376),.din48(buff_E_out_48_load416_fu_372),.din49(buff_E_out_49_load414_fu_368),.din50(buff_E_out_50_load412_fu_364),.din51(buff_E_out_51_load410_fu_360),.din52(buff_E_out_52_load408_fu_356),.din53(buff_E_out_53_load406_fu_352),.din54(buff_E_out_54_load404_fu_348),.din55(buff_E_out_55_load402_fu_344),.din56(buff_E_out_56_load400_fu_340),.din57(buff_E_out_57_load398_fu_336),.din58(buff_E_out_58_load396_fu_332),.din59(buff_E_out_59_load394_fu_328),.din60(buff_E_out_60_load392_fu_324),.din61(buff_E_out_61_load390_fu_320),.din62(buff_E_out_62_load388_fu_316),.din63(buff_E_out_63_load386_fu_312),.def(tmp_2_fu_2082_p129),.sel(trunc_ln51_reg_3083_pp0_iter2_reg),.dout(tmp_2_fu_2082_p131));
k2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(pf_all_done),.ap_continue_int(ap_continue_int),.ap_done_int(pf_all_done));
k2mm_frp_pipeline_valid #(.PipelineLatency( 4 ),.PipelineII( 1 ),.CeilLog2Stages( 2 ),.ExitLatency( 0 ))
frp_pipeline_valid_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.valid_in(ap_frp_vld_in),.exitcond(frp_pipeline_valid_U_exitcond),.valid_out(frp_pipeline_valid_U_valid_out),.num_valid_datasets(frp_pipeline_valid_U_num_valid_datasets));
k2mm_frp_fifoout #(.BlockingType( 1 ),.PipeLatency( 4 ),.PipelineII( 1 ),.DataWidth( 32 ),.NumWrites( 1 ),.CeilLog2Stages( 2 ),.CeilLog2FDepth( 3 ),.PfAllDoneEnable( 2 ))
pf_E_out_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.data_in(bitcast_ln52_fu_2345_p1),.data_out(pf_E_out_U_data_out),.valid(frp_pipeline_valid_U_valid_out),.data_in_vld(E_out_write_local),.data_out_vld(pf_E_out_U_data_out_vld),.data_in_last(ap_done_int_frp),.pf_continue(1'b1),.pf_all_done(pf_all_done),.pf_ready(pf_E_out_U_pf_ready),.pf_done(pf_E_out_U_pf_done),.data_out_read(E_out_full_n),.ap_start(1'b0),.num_valid_datasets(frp_pipeline_valid_U_num_valid_datasets));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        pf_all_done <= 1'b0;
    end else begin
        pf_all_done <= pf_E_out_U_pf_done;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            i_fu_304 <= 7'd0;
        end else if ((frp_pipeline_valid_U_valid_out[2'd1] == 1'b1)) begin
            i_fu_304 <= select_ln50_fu_1468_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((frp_pipeline_valid_U_valid_out[2'd0] == 1'b1) & ((icmp_ln50_fu_1425_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)))) begin
        indvar_flatten739_fu_308 <= add_ln50_1_fu_1431_p2;
    end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten739_fu_308 <= 13'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            j_fu_300 <= 7'd0;
        end else if ((frp_pipeline_valid_U_valid_out[2'd1] == 1'b1)) begin
            j_fu_300 <= add_ln51_fu_1554_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        first_iter_4_reg_2759 <= first_iter_4_fu_1476_p2;
        trunc_ln51_reg_3083 <= trunc_ln51_fu_1550_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((first_iter_4_reg_2759 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_E_out_10_load492_fu_524 <= buff_E_out_10_q0;
        buff_E_out_11_load490_fu_520 <= buff_E_out_11_q0;
        buff_E_out_12_load488_fu_516 <= buff_E_out_12_q0;
        buff_E_out_13_load486_fu_512 <= buff_E_out_13_q0;
        buff_E_out_14_load484_fu_508 <= buff_E_out_14_q0;
        buff_E_out_15_load482_fu_504 <= buff_E_out_15_q0;
        buff_E_out_16_load480_fu_500 <= buff_E_out_16_q0;
        buff_E_out_17_load478_fu_496 <= buff_E_out_17_q0;
        buff_E_out_18_load476_fu_492 <= buff_E_out_18_q0;
        buff_E_out_19_load474_fu_488 <= buff_E_out_19_q0;
        buff_E_out_1_load510_fu_560 <= buff_E_out_1_q0;
        buff_E_out_20_load472_fu_484 <= buff_E_out_20_q0;
        buff_E_out_21_load470_fu_480 <= buff_E_out_21_q0;
        buff_E_out_22_load468_fu_476 <= buff_E_out_22_q0;
        buff_E_out_23_load466_fu_472 <= buff_E_out_23_q0;
        buff_E_out_24_load464_fu_468 <= buff_E_out_24_q0;
        buff_E_out_25_load462_fu_464 <= buff_E_out_25_q0;
        buff_E_out_26_load460_fu_460 <= buff_E_out_26_q0;
        buff_E_out_27_load458_fu_456 <= buff_E_out_27_q0;
        buff_E_out_28_load456_fu_452 <= buff_E_out_28_q0;
        buff_E_out_29_load454_fu_448 <= buff_E_out_29_q0;
        buff_E_out_2_load508_fu_556 <= buff_E_out_2_q0;
        buff_E_out_30_load452_fu_444 <= buff_E_out_30_q0;
        buff_E_out_31_load450_fu_440 <= buff_E_out_31_q0;
        buff_E_out_32_load448_fu_436 <= buff_E_out_32_q0;
        buff_E_out_33_load446_fu_432 <= buff_E_out_33_q0;
        buff_E_out_34_load444_fu_428 <= buff_E_out_34_q0;
        buff_E_out_35_load442_fu_424 <= buff_E_out_35_q0;
        buff_E_out_36_load440_fu_420 <= buff_E_out_36_q0;
        buff_E_out_37_load438_fu_416 <= buff_E_out_37_q0;
        buff_E_out_38_load436_fu_412 <= buff_E_out_38_q0;
        buff_E_out_39_load434_fu_408 <= buff_E_out_39_q0;
        buff_E_out_3_load506_fu_552 <= buff_E_out_3_q0;
        buff_E_out_40_load432_fu_404 <= buff_E_out_40_q0;
        buff_E_out_41_load430_fu_400 <= buff_E_out_41_q0;
        buff_E_out_42_load428_fu_396 <= buff_E_out_42_q0;
        buff_E_out_43_load426_fu_392 <= buff_E_out_43_q0;
        buff_E_out_44_load424_fu_388 <= buff_E_out_44_q0;
        buff_E_out_45_load422_fu_384 <= buff_E_out_45_q0;
        buff_E_out_46_load420_fu_380 <= buff_E_out_46_q0;
        buff_E_out_47_load418_fu_376 <= buff_E_out_47_q0;
        buff_E_out_48_load416_fu_372 <= buff_E_out_48_q0;
        buff_E_out_49_load414_fu_368 <= buff_E_out_49_q0;
        buff_E_out_4_load504_fu_548 <= buff_E_out_4_q0;
        buff_E_out_50_load412_fu_364 <= buff_E_out_50_q0;
        buff_E_out_51_load410_fu_360 <= buff_E_out_51_q0;
        buff_E_out_52_load408_fu_356 <= buff_E_out_52_q0;
        buff_E_out_53_load406_fu_352 <= buff_E_out_53_q0;
        buff_E_out_54_load404_fu_348 <= buff_E_out_54_q0;
        buff_E_out_55_load402_fu_344 <= buff_E_out_55_q0;
        buff_E_out_56_load400_fu_340 <= buff_E_out_56_q0;
        buff_E_out_57_load398_fu_336 <= buff_E_out_57_q0;
        buff_E_out_58_load396_fu_332 <= buff_E_out_58_q0;
        buff_E_out_59_load394_fu_328 <= buff_E_out_59_q0;
        buff_E_out_5_load502_fu_544 <= buff_E_out_5_q0;
        buff_E_out_60_load392_fu_324 <= buff_E_out_60_q0;
        buff_E_out_61_load390_fu_320 <= buff_E_out_61_q0;
        buff_E_out_62_load388_fu_316 <= buff_E_out_62_q0;
        buff_E_out_63_load386_fu_312 <= buff_E_out_63_q0;
        buff_E_out_6_load500_fu_540 <= buff_E_out_6_q0;
        buff_E_out_7_load498_fu_536 <= buff_E_out_7_q0;
        buff_E_out_8_load496_fu_532 <= buff_E_out_8_q0;
        buff_E_out_9_load494_fu_528 <= buff_E_out_9_q0;
        buff_E_out_load512_fu_564 <= buff_E_out_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        trunc_ln51_reg_3083_pp0_iter2_reg <= trunc_ln51_reg_3083;
    end
end
always @ (*) begin
    if ((pf_E_out_U_data_out_vld == 1'b1)) begin
        E_out_write = 1'b1;
    end else begin
        E_out_write = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        E_out_write_local = 1'b1;
    end else begin
        E_out_write_local = 1'b0;
    end
end
always @ (*) begin
    if (((frp_pipeline_valid_U_valid_out[2'd0] == 1'b1) & ((icmp_ln50_fu_1425_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int_frp = 1'b1;
    end else begin
        ap_done_int_frp = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[2'd1] == 1'b1)) begin
        ap_enable_reg_pp0_iter1 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter1 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[2'd2] == 1'b1)) begin
        ap_enable_reg_pp0_iter2 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter2 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[2'd3] == 1'b1)) begin
        ap_enable_reg_pp0_iter3 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_condition_frp_pvb_pf_start) & (1'b1 == ap_condition_frp_pvb_no_bkwd_prs) & (1'b1 == ap_condition_frp_pvb_no_fwd_prs))) begin
        ap_frp_vld_in = 1'b1;
    end else begin
        ap_frp_vld_in = 1'b0;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (frp_pipeline_valid_U_valid_out[2'd0] == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten739_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten739_load = indvar_flatten739_fu_308;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_10_ce0_local = 1'b1;
    end else begin
        buff_E_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_11_ce0_local = 1'b1;
    end else begin
        buff_E_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_12_ce0_local = 1'b1;
    end else begin
        buff_E_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_13_ce0_local = 1'b1;
    end else begin
        buff_E_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_14_ce0_local = 1'b1;
    end else begin
        buff_E_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_15_ce0_local = 1'b1;
    end else begin
        buff_E_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_16_ce0_local = 1'b1;
    end else begin
        buff_E_out_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_17_ce0_local = 1'b1;
    end else begin
        buff_E_out_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_18_ce0_local = 1'b1;
    end else begin
        buff_E_out_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_19_ce0_local = 1'b1;
    end else begin
        buff_E_out_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_1_ce0_local = 1'b1;
    end else begin
        buff_E_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_20_ce0_local = 1'b1;
    end else begin
        buff_E_out_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_21_ce0_local = 1'b1;
    end else begin
        buff_E_out_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_22_ce0_local = 1'b1;
    end else begin
        buff_E_out_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_23_ce0_local = 1'b1;
    end else begin
        buff_E_out_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_24_ce0_local = 1'b1;
    end else begin
        buff_E_out_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_25_ce0_local = 1'b1;
    end else begin
        buff_E_out_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_26_ce0_local = 1'b1;
    end else begin
        buff_E_out_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_27_ce0_local = 1'b1;
    end else begin
        buff_E_out_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_28_ce0_local = 1'b1;
    end else begin
        buff_E_out_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_29_ce0_local = 1'b1;
    end else begin
        buff_E_out_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_2_ce0_local = 1'b1;
    end else begin
        buff_E_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_30_ce0_local = 1'b1;
    end else begin
        buff_E_out_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_31_ce0_local = 1'b1;
    end else begin
        buff_E_out_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_32_ce0_local = 1'b1;
    end else begin
        buff_E_out_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_33_ce0_local = 1'b1;
    end else begin
        buff_E_out_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_34_ce0_local = 1'b1;
    end else begin
        buff_E_out_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_35_ce0_local = 1'b1;
    end else begin
        buff_E_out_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_36_ce0_local = 1'b1;
    end else begin
        buff_E_out_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_37_ce0_local = 1'b1;
    end else begin
        buff_E_out_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_38_ce0_local = 1'b1;
    end else begin
        buff_E_out_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_39_ce0_local = 1'b1;
    end else begin
        buff_E_out_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_3_ce0_local = 1'b1;
    end else begin
        buff_E_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_40_ce0_local = 1'b1;
    end else begin
        buff_E_out_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_41_ce0_local = 1'b1;
    end else begin
        buff_E_out_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_42_ce0_local = 1'b1;
    end else begin
        buff_E_out_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_43_ce0_local = 1'b1;
    end else begin
        buff_E_out_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_44_ce0_local = 1'b1;
    end else begin
        buff_E_out_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_45_ce0_local = 1'b1;
    end else begin
        buff_E_out_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_46_ce0_local = 1'b1;
    end else begin
        buff_E_out_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_47_ce0_local = 1'b1;
    end else begin
        buff_E_out_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_48_ce0_local = 1'b1;
    end else begin
        buff_E_out_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_49_ce0_local = 1'b1;
    end else begin
        buff_E_out_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_4_ce0_local = 1'b1;
    end else begin
        buff_E_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_50_ce0_local = 1'b1;
    end else begin
        buff_E_out_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_51_ce0_local = 1'b1;
    end else begin
        buff_E_out_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_52_ce0_local = 1'b1;
    end else begin
        buff_E_out_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_53_ce0_local = 1'b1;
    end else begin
        buff_E_out_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_54_ce0_local = 1'b1;
    end else begin
        buff_E_out_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_55_ce0_local = 1'b1;
    end else begin
        buff_E_out_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_56_ce0_local = 1'b1;
    end else begin
        buff_E_out_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_57_ce0_local = 1'b1;
    end else begin
        buff_E_out_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_58_ce0_local = 1'b1;
    end else begin
        buff_E_out_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_59_ce0_local = 1'b1;
    end else begin
        buff_E_out_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_5_ce0_local = 1'b1;
    end else begin
        buff_E_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_60_ce0_local = 1'b1;
    end else begin
        buff_E_out_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_61_ce0_local = 1'b1;
    end else begin
        buff_E_out_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_62_ce0_local = 1'b1;
    end else begin
        buff_E_out_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_63_ce0_local = 1'b1;
    end else begin
        buff_E_out_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_6_ce0_local = 1'b1;
    end else begin
        buff_E_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_7_ce0_local = 1'b1;
    end else begin
        buff_E_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_8_ce0_local = 1'b1;
    end else begin
        buff_E_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_9_ce0_local = 1'b1;
    end else begin
        buff_E_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[2'd1] == 1'b1))) begin
        buff_E_out_ce0_local = 1'b1;
    end else begin
        buff_E_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln50_fu_1425_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        frp_pipeline_valid_U_exitcond = 1'b1;
    end else begin
        frp_pipeline_valid_U_exitcond = 1'b0;
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
assign E_out_blk_n = 1'b1;
assign E_out_din = pf_E_out_U_data_out;
assign add_ln50_1_fu_1431_p2 = (ap_sig_allocacmp_indvar_flatten739_load + 13'd1);
assign add_ln50_fu_1448_p2 = (i_fu_304 + 7'd1);
assign add_ln51_fu_1554_p2 = (select_ln6_fu_1460_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = 1'b0;
assign ap_block_pp0_stage0_01001 = 1'b0;
assign ap_block_pp0_stage0_11001 = 1'b0;
assign ap_block_pp0_stage0_subdone = 1'b0;
assign ap_block_state4_pp0_stage0_iter3 = (1'b1 == 1'b0);
always @ (*) begin
    ap_condition_frp_pvb_no_bkwd_prs = (pf_E_out_U_pf_ready == 1'b1);
end
assign ap_condition_frp_pvb_no_fwd_prs = (1'b1 == 1'b1);
always @ (*) begin
    ap_condition_frp_pvb_pf_start = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln52_fu_2345_p1 = tmp_2_fu_2082_p131;
assign buff_E_out_10_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_10_ce0 = buff_E_out_10_ce0_local;
assign buff_E_out_11_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_11_ce0 = buff_E_out_11_ce0_local;
assign buff_E_out_12_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_12_ce0 = buff_E_out_12_ce0_local;
assign buff_E_out_13_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_13_ce0 = buff_E_out_13_ce0_local;
assign buff_E_out_14_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_14_ce0 = buff_E_out_14_ce0_local;
assign buff_E_out_15_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_15_ce0 = buff_E_out_15_ce0_local;
assign buff_E_out_16_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_16_ce0 = buff_E_out_16_ce0_local;
assign buff_E_out_17_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_17_ce0 = buff_E_out_17_ce0_local;
assign buff_E_out_18_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_18_ce0 = buff_E_out_18_ce0_local;
assign buff_E_out_19_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_19_ce0 = buff_E_out_19_ce0_local;
assign buff_E_out_1_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_1_ce0 = buff_E_out_1_ce0_local;
assign buff_E_out_20_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_20_ce0 = buff_E_out_20_ce0_local;
assign buff_E_out_21_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_21_ce0 = buff_E_out_21_ce0_local;
assign buff_E_out_22_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_22_ce0 = buff_E_out_22_ce0_local;
assign buff_E_out_23_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_23_ce0 = buff_E_out_23_ce0_local;
assign buff_E_out_24_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_24_ce0 = buff_E_out_24_ce0_local;
assign buff_E_out_25_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_25_ce0 = buff_E_out_25_ce0_local;
assign buff_E_out_26_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_26_ce0 = buff_E_out_26_ce0_local;
assign buff_E_out_27_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_27_ce0 = buff_E_out_27_ce0_local;
assign buff_E_out_28_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_28_ce0 = buff_E_out_28_ce0_local;
assign buff_E_out_29_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_29_ce0 = buff_E_out_29_ce0_local;
assign buff_E_out_2_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_2_ce0 = buff_E_out_2_ce0_local;
assign buff_E_out_30_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_30_ce0 = buff_E_out_30_ce0_local;
assign buff_E_out_31_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_31_ce0 = buff_E_out_31_ce0_local;
assign buff_E_out_32_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_32_ce0 = buff_E_out_32_ce0_local;
assign buff_E_out_33_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_33_ce0 = buff_E_out_33_ce0_local;
assign buff_E_out_34_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_34_ce0 = buff_E_out_34_ce0_local;
assign buff_E_out_35_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_35_ce0 = buff_E_out_35_ce0_local;
assign buff_E_out_36_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_36_ce0 = buff_E_out_36_ce0_local;
assign buff_E_out_37_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_37_ce0 = buff_E_out_37_ce0_local;
assign buff_E_out_38_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_38_ce0 = buff_E_out_38_ce0_local;
assign buff_E_out_39_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_39_ce0 = buff_E_out_39_ce0_local;
assign buff_E_out_3_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_3_ce0 = buff_E_out_3_ce0_local;
assign buff_E_out_40_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_40_ce0 = buff_E_out_40_ce0_local;
assign buff_E_out_41_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_41_ce0 = buff_E_out_41_ce0_local;
assign buff_E_out_42_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_42_ce0 = buff_E_out_42_ce0_local;
assign buff_E_out_43_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_43_ce0 = buff_E_out_43_ce0_local;
assign buff_E_out_44_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_44_ce0 = buff_E_out_44_ce0_local;
assign buff_E_out_45_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_45_ce0 = buff_E_out_45_ce0_local;
assign buff_E_out_46_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_46_ce0 = buff_E_out_46_ce0_local;
assign buff_E_out_47_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_47_ce0 = buff_E_out_47_ce0_local;
assign buff_E_out_48_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_48_ce0 = buff_E_out_48_ce0_local;
assign buff_E_out_49_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_49_ce0 = buff_E_out_49_ce0_local;
assign buff_E_out_4_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_4_ce0 = buff_E_out_4_ce0_local;
assign buff_E_out_50_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_50_ce0 = buff_E_out_50_ce0_local;
assign buff_E_out_51_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_51_ce0 = buff_E_out_51_ce0_local;
assign buff_E_out_52_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_52_ce0 = buff_E_out_52_ce0_local;
assign buff_E_out_53_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_53_ce0 = buff_E_out_53_ce0_local;
assign buff_E_out_54_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_54_ce0 = buff_E_out_54_ce0_local;
assign buff_E_out_55_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_55_ce0 = buff_E_out_55_ce0_local;
assign buff_E_out_56_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_56_ce0 = buff_E_out_56_ce0_local;
assign buff_E_out_57_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_57_ce0 = buff_E_out_57_ce0_local;
assign buff_E_out_58_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_58_ce0 = buff_E_out_58_ce0_local;
assign buff_E_out_59_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_59_ce0 = buff_E_out_59_ce0_local;
assign buff_E_out_5_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_5_ce0 = buff_E_out_5_ce0_local;
assign buff_E_out_60_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_60_ce0 = buff_E_out_60_ce0_local;
assign buff_E_out_61_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_61_ce0 = buff_E_out_61_ce0_local;
assign buff_E_out_62_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_62_ce0 = buff_E_out_62_ce0_local;
assign buff_E_out_63_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_63_ce0 = buff_E_out_63_ce0_local;
assign buff_E_out_6_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_6_ce0 = buff_E_out_6_ce0_local;
assign buff_E_out_7_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_7_ce0 = buff_E_out_7_ce0_local;
assign buff_E_out_8_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_8_ce0 = buff_E_out_8_ce0_local;
assign buff_E_out_9_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_9_ce0 = buff_E_out_9_ce0_local;
assign buff_E_out_address0 = zext_ln50_fu_1482_p1;
assign buff_E_out_ce0 = buff_E_out_ce0_local;
assign first_iter_4_fu_1476_p2 = ((select_ln6_fu_1460_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln50_fu_1425_p2 = ((ap_sig_allocacmp_indvar_flatten739_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln51_fu_1454_p2 = ((j_fu_300 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln50_fu_1468_p3 = ((icmp_ln51_fu_1454_p2[0:0] == 1'b1) ? add_ln50_fu_1448_p2 : i_fu_304);
assign select_ln6_fu_1460_p3 = ((icmp_ln51_fu_1454_p2[0:0] == 1'b1) ? 7'd0 : j_fu_300);
assign tmp_2_fu_2082_p129 = 'bx;
assign trunc_ln51_fu_1550_p1 = select_ln6_fu_1460_p3[5:0];
assign zext_ln50_fu_1482_p1 = select_ln50_fu_1468_p3;
endmodule 
