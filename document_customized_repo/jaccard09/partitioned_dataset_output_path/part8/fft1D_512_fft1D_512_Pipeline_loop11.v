
module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,work_x_0_address0,work_x_0_ce0,work_x_0_we0,work_x_0_d0,work_x_0_address1,work_x_0_ce1,work_x_0_we1,work_x_0_d1,work_y_0_address0,work_y_0_ce0,work_y_0_we0,work_y_0_d0,work_y_0_address1,work_y_0_ce1,work_y_0_we1,work_y_0_d1,work_y_1_address0,work_y_1_ce0,work_y_1_we0,work_y_1_d0,work_y_1_address1,work_y_1_ce1,work_y_1_we1,work_y_1_d1,work_x_1_address0,work_x_1_ce0,work_x_1_we0,work_x_1_d0,work_x_1_address1,work_x_1_ce1,work_x_1_we1,work_x_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,grp_fu_252_p_din0,grp_fu_252_p_din1,grp_fu_252_p_opcode,grp_fu_252_p_dout0,grp_fu_252_p_ce,grp_fu_256_p_din0,grp_fu_256_p_din1,grp_fu_256_p_opcode,grp_fu_256_p_dout0,grp_fu_256_p_ce,grp_fu_260_p_din0,grp_fu_260_p_din1,grp_fu_260_p_opcode,grp_fu_260_p_dout0,grp_fu_260_p_ce,grp_fu_264_p_din0,grp_fu_264_p_din1,grp_fu_264_p_opcode,grp_fu_264_p_dout0,grp_fu_264_p_ce,grp_fu_268_p_din0,grp_fu_268_p_din1,grp_fu_268_p_opcode,grp_fu_268_p_dout0,grp_fu_268_p_ce,grp_fu_272_p_din0,grp_fu_272_p_din1,grp_fu_272_p_opcode,grp_fu_272_p_dout0,grp_fu_272_p_ce,grp_fu_276_p_din0,grp_fu_276_p_din1,grp_fu_276_p_opcode,grp_fu_276_p_dout0,grp_fu_276_p_ce,grp_fu_280_p_din0,grp_fu_280_p_din1,grp_fu_280_p_opcode,grp_fu_280_p_dout0,grp_fu_280_p_ce,grp_fu_284_p_din0,grp_fu_284_p_din1,grp_fu_284_p_opcode,grp_fu_284_p_dout0,grp_fu_284_p_ce,grp_fu_288_p_din0,grp_fu_288_p_din1,grp_fu_288_p_opcode,grp_fu_288_p_dout0,grp_fu_288_p_ce,grp_fu_292_p_din0,grp_fu_292_p_din1,grp_fu_292_p_opcode,grp_fu_292_p_dout0,grp_fu_292_p_ce,grp_fu_296_p_din0,grp_fu_296_p_din1,grp_fu_296_p_opcode,grp_fu_296_p_dout0,grp_fu_296_p_ce,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_304_p_din0,grp_fu_304_p_din1,grp_fu_304_p_opcode,grp_fu_304_p_dout0,grp_fu_304_p_ce,grp_fu_308_p_din0,grp_fu_308_p_din1,grp_fu_308_p_opcode,grp_fu_308_p_dout0,grp_fu_308_p_ce,grp_fu_312_p_din0,grp_fu_312_p_din1,grp_fu_312_p_dout0,grp_fu_312_p_ce,grp_fu_316_p_din0,grp_fu_316_p_din1,grp_fu_316_p_dout0,grp_fu_316_p_ce,grp_fu_320_p_din0,grp_fu_320_p_din1,grp_fu_320_p_dout0,grp_fu_320_p_ce);  
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
output  [7:0] work_x_0_address0;
output   work_x_0_ce0;
output   work_x_0_we0;
output  [63:0] work_x_0_d0;
output  [7:0] work_x_0_address1;
output   work_x_0_ce1;
output   work_x_0_we1;
output  [63:0] work_x_0_d1;
output  [7:0] work_y_0_address0;
output   work_y_0_ce0;
output   work_y_0_we0;
output  [63:0] work_y_0_d0;
output  [7:0] work_y_0_address1;
output   work_y_0_ce1;
output   work_y_0_we1;
output  [63:0] work_y_0_d1;
output  [7:0] work_y_1_address0;
output   work_y_1_ce0;
output   work_y_1_we0;
output  [63:0] work_y_1_d0;
output  [7:0] work_y_1_address1;
output   work_y_1_ce1;
output   work_y_1_we1;
output  [63:0] work_y_1_d1;
output  [7:0] work_x_1_address0;
output   work_x_1_ce0;
output   work_x_1_we0;
output  [63:0] work_x_1_d0;
output  [7:0] work_x_1_address1;
output   work_x_1_ce1;
output   work_x_1_we1;
output  [63:0] work_x_1_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [7:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [7:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [7:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [7:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [63:0] grp_fu_252_p_din0;
output  [63:0] grp_fu_252_p_din1;
output  [1:0] grp_fu_252_p_opcode;
input  [63:0] grp_fu_252_p_dout0;
output   grp_fu_252_p_ce;
output  [63:0] grp_fu_256_p_din0;
output  [63:0] grp_fu_256_p_din1;
output  [0:0] grp_fu_256_p_opcode;
input  [63:0] grp_fu_256_p_dout0;
output   grp_fu_256_p_ce;
output  [63:0] grp_fu_260_p_din0;
output  [63:0] grp_fu_260_p_din1;
output  [1:0] grp_fu_260_p_opcode;
input  [63:0] grp_fu_260_p_dout0;
output   grp_fu_260_p_ce;
output  [63:0] grp_fu_264_p_din0;
output  [63:0] grp_fu_264_p_din1;
output  [0:0] grp_fu_264_p_opcode;
input  [63:0] grp_fu_264_p_dout0;
output   grp_fu_264_p_ce;
output  [63:0] grp_fu_268_p_din0;
output  [63:0] grp_fu_268_p_din1;
output  [1:0] grp_fu_268_p_opcode;
input  [63:0] grp_fu_268_p_dout0;
output   grp_fu_268_p_ce;
output  [63:0] grp_fu_272_p_din0;
output  [63:0] grp_fu_272_p_din1;
output  [1:0] grp_fu_272_p_opcode;
input  [63:0] grp_fu_272_p_dout0;
output   grp_fu_272_p_ce;
output  [63:0] grp_fu_276_p_din0;
output  [63:0] grp_fu_276_p_din1;
output  [1:0] grp_fu_276_p_opcode;
input  [63:0] grp_fu_276_p_dout0;
output   grp_fu_276_p_ce;
output  [63:0] grp_fu_280_p_din0;
output  [63:0] grp_fu_280_p_din1;
output  [0:0] grp_fu_280_p_opcode;
input  [63:0] grp_fu_280_p_dout0;
output   grp_fu_280_p_ce;
output  [63:0] grp_fu_284_p_din0;
output  [63:0] grp_fu_284_p_din1;
output  [1:0] grp_fu_284_p_opcode;
input  [63:0] grp_fu_284_p_dout0;
output   grp_fu_284_p_ce;
output  [63:0] grp_fu_288_p_din0;
output  [63:0] grp_fu_288_p_din1;
output  [1:0] grp_fu_288_p_opcode;
input  [63:0] grp_fu_288_p_dout0;
output   grp_fu_288_p_ce;
output  [63:0] grp_fu_292_p_din0;
output  [63:0] grp_fu_292_p_din1;
output  [1:0] grp_fu_292_p_opcode;
input  [63:0] grp_fu_292_p_dout0;
output   grp_fu_292_p_ce;
output  [63:0] grp_fu_296_p_din0;
output  [63:0] grp_fu_296_p_din1;
output  [1:0] grp_fu_296_p_opcode;
input  [63:0] grp_fu_296_p_dout0;
output   grp_fu_296_p_ce;
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [0:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_304_p_din0;
output  [63:0] grp_fu_304_p_din1;
output  [1:0] grp_fu_304_p_opcode;
input  [63:0] grp_fu_304_p_dout0;
output   grp_fu_304_p_ce;
output  [63:0] grp_fu_308_p_din0;
output  [63:0] grp_fu_308_p_din1;
output  [1:0] grp_fu_308_p_opcode;
input  [63:0] grp_fu_308_p_dout0;
output   grp_fu_308_p_ce;
output  [63:0] grp_fu_312_p_din0;
output  [63:0] grp_fu_312_p_din1;
input  [63:0] grp_fu_312_p_dout0;
output   grp_fu_312_p_ce;
output  [63:0] grp_fu_316_p_din0;
output  [63:0] grp_fu_316_p_din1;
input  [63:0] grp_fu_316_p_dout0;
output   grp_fu_316_p_ce;
output  [63:0] grp_fu_320_p_din0;
output  [63:0] grp_fu_320_p_din1;
input  [63:0] grp_fu_320_p_dout0;
output   grp_fu_320_p_ce;
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
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln365_reg_1254;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_622;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [6:0] tid_5_reg_1247;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1247_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1247_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1247_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1247_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1247_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1247_pp0_iter6_reg;
wire   [0:0] icmp_ln365_fu_634_p2;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter13_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter14_reg;
reg   [0:0] icmp_ln365_reg_1254_pp0_iter15_reg;
wire   [0:0] trunc_ln365_fu_640_p1;
reg   [0:0] trunc_ln365_reg_1258;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter1_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter2_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter3_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter4_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter5_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter6_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter7_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter8_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter9_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter10_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter11_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter12_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter13_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter14_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter15_reg;
reg   [0:0] trunc_ln365_reg_1258_pp0_iter16_reg;
wire   [5:0] trunc_ln367_fu_644_p1;
reg   [5:0] trunc_ln367_reg_1262;
wire   [63:0] zext_ln367_fu_656_p1;
reg   [63:0] zext_ln367_reg_1267;
wire   [63:0] zext_ln373_fu_686_p1;
reg   [63:0] zext_ln373_reg_1288;
reg   [63:0] c0_y_61_reg_1324;
reg   [63:0] c0_y_62_reg_1330;
reg   [63:0] c0_y_63_reg_1336;
reg   [63:0] DATA_y_load_20_reg_1352;
reg   [63:0] c0_x_61_reg_1368;
reg   [63:0] c0_x_62_reg_1374;
reg   [63:0] c0_x_63_reg_1380;
reg   [63:0] DATA_x_load_20_reg_1396;
reg   [63:0] c0_y_reg_1407;
reg   [63:0] DATA_y_load_19_reg_1413;
reg   [63:0] DATA_y_1_load_19_reg_1419;
reg   [63:0] DATA_y_1_load_20_reg_1425;
reg   [63:0] c0_x_reg_1431;
reg   [63:0] DATA_x_load_19_reg_1437;
reg   [63:0] DATA_x_1_load_19_reg_1443;
reg   [63:0] DATA_x_1_load_20_reg_1449;
reg   [63:0] add_reg_1455;
reg   [63:0] add11_reg_1461;
reg   [63:0] tmp_1_11_reg_1467;
reg   [63:0] tmp_1_11_reg_1467_pp0_iter3_reg;
reg   [63:0] sub12_reg_1473;
reg   [63:0] sub12_reg_1473_pp0_iter3_reg;
reg   [63:0] c0_x_36_reg_1479;
reg   [63:0] c0_y_40_reg_1485;
reg   [63:0] tmp_1_reg_1491;
reg   [63:0] sub_reg_1497;
reg   [63:0] add12_reg_1503;
reg   [63:0] add13_reg_1509;
reg   [63:0] sub13_reg_1515;
reg   [63:0] c0_x_64_reg_1520;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] c0_y_64_reg_1526;
reg   [63:0] c0_x_35_reg_1532;
reg   [63:0] c0_x_35_reg_1532_pp0_iter3_reg;
reg   [63:0] c0_x_35_reg_1532_pp0_iter4_reg;
reg   [63:0] c0_x_35_reg_1532_pp0_iter5_reg;
reg   [63:0] c0_y_39_reg_1538;
reg   [63:0] c0_y_39_reg_1538_pp0_iter3_reg;
reg   [63:0] c0_y_39_reg_1538_pp0_iter4_reg;
reg   [63:0] c0_y_39_reg_1538_pp0_iter5_reg;
wire   [63:0] bitcast_ln386_1_fu_746_p1;
wire   [63:0] bitcast_ln386_3_fu_780_p1;
wire   [63:0] bitcast_ln386_9_fu_815_p1;
wire   [63:0] bitcast_ln386_11_fu_850_p1;
reg   [63:0] mul_reg_1566;
reg   [63:0] mul6_reg_1571;
wire   [63:0] bitcast_ln386_5_fu_885_p1;
wire   [63:0] bitcast_ln386_7_fu_919_p1;
reg   [63:0] sub14_reg_1586;
reg   [63:0] add14_reg_1591;
reg   [63:0] sub16_reg_1596;
reg   [63:0] add16_reg_1601;
reg   [63:0] tmp_16_reg_1606;
reg   [63:0] tmp_16_reg_1606_pp0_iter5_reg;
reg   [63:0] tmp_16_reg_1606_pp0_iter6_reg;
reg   [63:0] sub17_reg_1612;
reg   [63:0] sub17_reg_1612_pp0_iter5_reg;
reg   [63:0] sub17_reg_1612_pp0_iter6_reg;
reg   [63:0] c0_x_65_reg_1618;
reg   [63:0] c0_y_65_reg_1624;
reg   [63:0] c0_x_38_reg_1630;
reg   [63:0] c0_x_38_reg_1630_pp0_iter5_reg;
reg   [63:0] c0_x_38_reg_1630_pp0_iter6_reg;
reg   [63:0] c0_x_38_reg_1630_pp0_iter7_reg;
reg   [63:0] c0_x_38_reg_1630_pp0_iter8_reg;
reg   [63:0] c0_y_42_reg_1636;
reg   [63:0] c0_y_42_reg_1636_pp0_iter5_reg;
reg   [63:0] c0_y_42_reg_1636_pp0_iter6_reg;
reg   [63:0] c0_y_42_reg_1636_pp0_iter7_reg;
reg   [63:0] c0_y_42_reg_1636_pp0_iter8_reg;
reg   [63:0] add17_reg_1642;
reg   [63:0] add18_reg_1648;
reg   [63:0] sub15_reg_1654;
reg   [63:0] add15_reg_1660;
reg   [63:0] c0_x_37_reg_1666;
reg   [63:0] c0_y_41_reg_1672;
reg   [63:0] mul7_reg_1678;
reg   [63:0] mul8_reg_1684;
reg   [63:0] mul9_reg_1690;
reg   [63:0] mul10_reg_1695;
reg   [63:0] add19_reg_1700;
wire   [5:0] lshr_ln114_1_fu_924_p4;
reg   [5:0] lshr_ln114_1_reg_1705;
reg   [5:0] lshr_ln114_1_reg_1705_pp0_iter8_reg;
reg   [5:0] lshr_ln114_1_reg_1705_pp0_iter9_reg;
reg   [5:0] lshr_ln114_1_reg_1705_pp0_iter10_reg;
reg   [5:0] lshr_ln114_1_reg_1705_pp0_iter11_reg;
reg   [5:0] lshr_ln114_1_reg_1705_pp0_iter12_reg;
reg   [5:0] lshr_ln114_1_reg_1705_pp0_iter13_reg;
reg   [5:0] lshr_ln114_1_reg_1705_pp0_iter14_reg;
wire   [63:0] zext_ln114_1_fu_933_p1;
reg   [63:0] zext_ln114_1_reg_1712;
wire   [63:0] bitcast_ln386_13_fu_968_p1;
wire   [63:0] bitcast_ln386_15_fu_1002_p1;
reg   [63:0] add20_reg_1728;
reg   [4:0] part_sel_reg_1733;
reg   [4:0] part_sel_reg_1733_pp0_iter8_reg;
reg   [4:0] part_sel_reg_1733_pp0_iter9_reg;
reg   [4:0] part_sel_reg_1733_pp0_iter10_reg;
wire   [63:0] bitcast_ln393_fu_1021_p1;
reg   [63:0] bitcast_ln393_reg_1738;
reg   [63:0] bitcast_ln393_reg_1738_pp0_iter8_reg;
reg   [63:0] bitcast_ln393_reg_1738_pp0_iter9_reg;
reg   [63:0] bitcast_ln393_reg_1738_pp0_iter10_reg;
reg   [63:0] bitcast_ln393_reg_1738_pp0_iter11_reg;
reg   [63:0] bitcast_ln393_reg_1738_pp0_iter12_reg;
reg   [63:0] bitcast_ln393_reg_1738_pp0_iter13_reg;
reg   [63:0] bitcast_ln393_reg_1738_pp0_iter14_reg;
wire   [63:0] bitcast_ln402_fu_1025_p1;
reg   [63:0] bitcast_ln402_reg_1744;
reg   [63:0] bitcast_ln402_reg_1744_pp0_iter8_reg;
reg   [63:0] bitcast_ln402_reg_1744_pp0_iter9_reg;
reg   [63:0] bitcast_ln402_reg_1744_pp0_iter10_reg;
reg   [63:0] bitcast_ln402_reg_1744_pp0_iter11_reg;
reg   [63:0] bitcast_ln402_reg_1744_pp0_iter12_reg;
reg   [63:0] bitcast_ln402_reg_1744_pp0_iter13_reg;
reg   [63:0] bitcast_ln402_reg_1744_pp0_iter14_reg;
reg   [63:0] bitcast_ln402_reg_1744_pp0_iter15_reg;
reg   [63:0] c0_x_66_reg_1750;
reg   [63:0] c0_y_66_reg_1756;
reg   [63:0] c0_y_66_reg_1756_pp0_iter9_reg;
reg   [63:0] c0_x_39_reg_1762;
reg   [63:0] c0_x_39_reg_1762_pp0_iter9_reg;
reg   [63:0] c0_x_39_reg_1762_pp0_iter10_reg;
reg   [63:0] c0_x_39_reg_1762_pp0_iter11_reg;
reg   [63:0] c0_x_39_reg_1762_pp0_iter12_reg;
reg   [63:0] c0_y_43_reg_1768;
reg   [63:0] c0_y_43_reg_1768_pp0_iter9_reg;
reg   [63:0] c0_y_43_reg_1768_pp0_iter10_reg;
reg   [63:0] c0_y_43_reg_1768_pp0_iter11_reg;
reg   [63:0] c0_y_43_reg_1768_pp0_iter12_reg;
reg   [63:0] c0_y_43_reg_1768_pp0_iter13_reg;
reg   [63:0] add23_reg_1774;
reg   [63:0] tmp_17_reg_1780;
reg   [63:0] tmp_17_reg_1780_pp0_iter9_reg;
reg   [63:0] tmp_17_reg_1780_pp0_iter10_reg;
reg   [63:0] sub24_reg_1786;
reg   [63:0] sub24_reg_1786_pp0_iter9_reg;
reg   [63:0] sub18_reg_1792;
reg   [63:0] sub19_reg_1798;
reg   [63:0] add24_reg_1804;
reg   [63:0] mul11_reg_1810;
wire   [63:0] bitcast_ln386_17_fu_1063_p1;
wire   [63:0] bitcast_ln394_fu_1068_p1;
reg   [63:0] bitcast_ln394_reg_1820;
reg   [63:0] bitcast_ln394_reg_1820_pp0_iter11_reg;
reg   [63:0] bitcast_ln394_reg_1820_pp0_iter12_reg;
reg   [63:0] bitcast_ln394_reg_1820_pp0_iter13_reg;
reg   [63:0] bitcast_ln394_reg_1820_pp0_iter14_reg;
wire  signed [5:0] zext_ln391_cast_fu_1072_p3;
reg  signed [5:0] zext_ln391_cast_reg_1826;
reg  signed [5:0] zext_ln391_cast_reg_1826_pp0_iter11_reg;
reg  signed [5:0] zext_ln391_cast_reg_1826_pp0_iter12_reg;
reg  signed [5:0] zext_ln391_cast_reg_1826_pp0_iter13_reg;
reg  signed [5:0] zext_ln391_cast_reg_1826_pp0_iter14_reg;
wire   [63:0] zext_ln391_fu_1079_p1;
reg   [63:0] zext_ln391_reg_1832;
reg   [63:0] mul12_reg_1838;
reg   [63:0] add21_reg_1843;
wire   [63:0] bitcast_ln386_19_fu_1120_p1;
reg   [63:0] add26_reg_1853;
wire   [63:0] bitcast_ln400_fu_1125_p1;
reg   [63:0] bitcast_ln400_reg_1858;
wire  signed [6:0] zext_ln392_cast_fu_1129_p3;
reg  signed [6:0] zext_ln392_cast_reg_1864;
reg  signed [6:0] zext_ln392_cast_reg_1864_pp0_iter12_reg;
reg  signed [6:0] zext_ln392_cast_reg_1864_pp0_iter13_reg;
reg  signed [6:0] zext_ln392_cast_reg_1864_pp0_iter14_reg;
wire   [63:0] zext_ln392_fu_1136_p1;
reg   [63:0] zext_ln392_reg_1869;
wire   [63:0] bitcast_ln395_fu_1147_p1;
reg   [63:0] bitcast_ln395_reg_1875;
reg   [63:0] bitcast_ln395_reg_1875_pp0_iter12_reg;
reg   [63:0] bitcast_ln395_reg_1875_pp0_iter13_reg;
reg   [63:0] bitcast_ln395_reg_1875_pp0_iter14_reg;
wire   [63:0] bitcast_ln403_fu_1156_p1;
reg   [63:0] bitcast_ln403_reg_1881;
reg   [63:0] bitcast_ln403_reg_1881_pp0_iter12_reg;
reg   [63:0] bitcast_ln403_reg_1881_pp0_iter13_reg;
reg   [63:0] bitcast_ln403_reg_1881_pp0_iter14_reg;
reg   [63:0] bitcast_ln403_reg_1881_pp0_iter15_reg;
wire   [63:0] bitcast_ln404_fu_1160_p1;
reg   [63:0] bitcast_ln404_reg_1887;
reg   [63:0] bitcast_ln404_reg_1887_pp0_iter12_reg;
reg   [63:0] bitcast_ln404_reg_1887_pp0_iter13_reg;
reg   [63:0] bitcast_ln404_reg_1887_pp0_iter14_reg;
reg   [63:0] bitcast_ln404_reg_1887_pp0_iter15_reg;
reg   [63:0] sub25_reg_1893;
reg   [63:0] sub26_reg_1899;
reg   [63:0] add27_reg_1905;
wire   [63:0] zext_ln393_fu_1167_p1;
reg   [63:0] zext_ln393_reg_1910;
reg   [63:0] zext_ln393_reg_1910_pp0_iter15_reg;
wire   [63:0] bitcast_ln396_fu_1178_p1;
reg   [63:0] bitcast_ln396_reg_1916;
wire   [63:0] zext_ln394_fu_1193_p1;
reg   [63:0] zext_ln394_reg_1922;
reg   [63:0] zext_ln394_reg_1922_pp0_iter15_reg;
wire   [63:0] zext_ln395_fu_1208_p1;
reg   [63:0] zext_ln395_reg_1928;
reg   [63:0] zext_ln395_reg_1928_pp0_iter15_reg;
wire   [63:0] zext_ln396_fu_1217_p1;
reg   [63:0] zext_ln396_reg_1934;
wire   [63:0] zext_ln389_fu_1226_p1;
reg   [63:0] zext_ln389_reg_1940;
reg   [63:0] zext_ln389_reg_1940_pp0_iter16_reg;
wire   [63:0] bitcast_ln401_fu_1232_p1;
reg   [63:0] bitcast_ln401_reg_1946;
wire   [63:0] bitcast_ln405_fu_1236_p1;
reg   [63:0] bitcast_ln405_reg_1952;
reg   [63:0] bitcast_ln405_reg_1952_pp0_iter16_reg;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln369_fu_670_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln371_fu_699_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg   [6:0] tid_fu_84;
wire   [6:0] add_ln365_fu_707_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_x_1_ce1_local;
reg   [7:0] DATA_x_1_address1_local;
reg    DATA_x_1_ce0_local;
reg   [7:0] DATA_x_1_address0_local;
reg    DATA_x_ce1_local;
reg   [7:0] DATA_x_address1_local;
reg    DATA_x_ce0_local;
reg   [7:0] DATA_x_address0_local;
reg    work_x_0_we1_local;
reg   [63:0] work_x_0_d1_local;
wire   [63:0] bitcast_ln389_fu_1016_p1;
reg    work_x_0_ce1_local;
reg   [7:0] work_x_0_address1_local;
wire   [63:0] bitcast_ln390_fu_1085_p1;
wire   [63:0] bitcast_ln391_fu_1142_p1;
reg    work_x_0_we0_local;
reg   [63:0] work_x_0_d0_local;
wire   [63:0] bitcast_ln392_fu_1173_p1;
reg    work_x_0_ce0_local;
reg   [7:0] work_x_0_address0_local;
reg    work_x_1_we1_local;
reg   [63:0] work_x_1_d1_local;
reg    work_x_1_ce1_local;
reg   [7:0] work_x_1_address1_local;
reg    work_x_1_we0_local;
reg   [63:0] work_x_1_d0_local;
reg    work_x_1_ce0_local;
reg   [7:0] work_x_1_address0_local;
reg    work_y_0_we1_local;
reg   [63:0] work_y_0_d1_local;
wire   [63:0] bitcast_ln398_fu_1029_p1;
reg    work_y_0_ce1_local;
reg   [7:0] work_y_0_address1_local;
reg    work_y_0_we0_local;
reg   [63:0] work_y_0_d0_local;
wire   [63:0] bitcast_ln399_fu_1151_p1;
reg    work_y_0_ce0_local;
reg   [7:0] work_y_0_address0_local;
reg    work_y_1_we1_local;
reg   [63:0] work_y_1_d1_local;
reg    work_y_1_ce1_local;
reg   [7:0] work_y_1_address1_local;
reg    work_y_1_we0_local;
reg   [63:0] work_y_1_d0_local;
reg    work_y_1_ce0_local;
reg   [7:0] work_y_1_address0_local;
reg   [63:0] grp_fu_544_p0;
reg   [63:0] grp_fu_544_p1;
reg   [63:0] grp_fu_548_p0;
reg   [63:0] grp_fu_548_p1;
reg   [63:0] grp_fu_552_p0;
reg   [63:0] grp_fu_552_p1;
reg   [63:0] grp_fu_556_p0;
reg   [63:0] grp_fu_556_p1;
reg   [63:0] grp_fu_560_p0;
reg   [63:0] grp_fu_560_p1;
reg   [63:0] grp_fu_564_p0;
reg   [63:0] grp_fu_564_p1;
reg   [63:0] grp_fu_568_p0;
reg   [63:0] grp_fu_568_p1;
reg   [63:0] grp_fu_572_p0;
reg   [63:0] grp_fu_572_p1;
reg   [63:0] grp_fu_576_p0;
reg   [63:0] grp_fu_576_p1;
reg   [63:0] grp_fu_580_p0;
reg   [63:0] grp_fu_580_p1;
reg   [63:0] grp_fu_584_p0;
reg   [63:0] grp_fu_584_p1;
reg   [63:0] grp_fu_588_p0;
reg   [63:0] grp_fu_588_p1;
reg   [63:0] grp_fu_592_p0;
reg   [63:0] grp_fu_592_p1;
reg   [63:0] grp_fu_596_p0;
reg   [63:0] grp_fu_596_p1;
reg   [63:0] grp_fu_600_p0;
reg   [63:0] grp_fu_600_p1;
reg   [63:0] grp_fu_604_p0;
reg   [63:0] grp_fu_604_p1;
reg   [63:0] grp_fu_609_p0;
reg   [63:0] grp_fu_609_p1;
reg   [63:0] grp_fu_616_p0;
reg   [63:0] grp_fu_616_p1;
wire   [7:0] shl_ln_fu_648_p3;
wire   [7:0] or_ln_fu_662_p3;
wire   [7:0] or_ln18_fu_678_p3;
wire   [7:0] or_ln17_fu_692_p3;
wire   [63:0] bitcast_ln386_fu_717_p1;
wire   [0:0] bit_sel_fu_720_p3;
wire   [0:0] xor_ln386_10_fu_728_p2;
wire   [62:0] trunc_ln386_fu_734_p1;
wire   [63:0] xor_ln3_fu_738_p3;
wire   [63:0] bitcast_ln386_2_fu_751_p1;
wire   [0:0] bit_sel40_fu_754_p3;
wire   [0:0] xor_ln386_fu_762_p2;
wire   [62:0] trunc_ln386_1_fu_768_p1;
wire   [63:0] xor_ln386_1_fu_772_p3;
wire   [63:0] bitcast_ln386_8_fu_785_p1;
wire   [0:0] bit_sel43_fu_789_p3;
wire   [0:0] xor_ln386_13_fu_797_p2;
wire   [62:0] trunc_ln386_4_fu_803_p1;
wire   [63:0] xor_ln386_4_fu_807_p3;
wire   [63:0] bitcast_ln386_10_fu_821_p1;
wire   [0:0] bit_sel44_fu_824_p3;
wire   [0:0] xor_ln386_14_fu_832_p2;
wire   [62:0] trunc_ln386_5_fu_838_p1;
wire   [63:0] xor_ln386_5_fu_842_p3;
wire   [63:0] bitcast_ln386_4_fu_856_p1;
wire   [0:0] bit_sel41_fu_859_p3;
wire   [0:0] xor_ln386_11_fu_867_p2;
wire   [62:0] trunc_ln386_2_fu_873_p1;
wire   [63:0] xor_ln386_2_fu_877_p3;
wire   [63:0] bitcast_ln386_6_fu_890_p1;
wire   [0:0] bit_sel42_fu_893_p3;
wire   [0:0] xor_ln386_12_fu_901_p2;
wire   [62:0] trunc_ln386_3_fu_907_p1;
wire   [63:0] xor_ln386_3_fu_911_p3;
wire   [63:0] bitcast_ln386_12_fu_939_p1;
wire   [0:0] bit_sel45_fu_942_p3;
wire   [0:0] xor_ln386_15_fu_950_p2;
wire   [62:0] trunc_ln386_6_fu_956_p1;
wire   [63:0] xor_ln386_6_fu_960_p3;
wire   [63:0] bitcast_ln386_14_fu_973_p1;
wire   [0:0] bit_sel46_fu_976_p3;
wire   [0:0] xor_ln386_16_fu_984_p2;
wire   [62:0] trunc_ln386_7_fu_990_p1;
wire   [63:0] xor_ln386_7_fu_994_p3;
wire   [63:0] bitcast_ln386_16_fu_1034_p1;
wire   [0:0] bit_sel47_fu_1037_p3;
wire   [0:0] xor_ln386_17_fu_1045_p2;
wire   [62:0] trunc_ln386_8_fu_1051_p1;
wire   [63:0] xor_ln386_8_fu_1055_p3;
wire   [63:0] bitcast_ln386_18_fu_1091_p1;
wire   [0:0] bit_sel48_fu_1094_p3;
wire   [0:0] xor_ln386_18_fu_1102_p2;
wire   [62:0] trunc_ln386_9_fu_1108_p1;
wire   [63:0] xor_ln386_9_fu_1112_p3;
wire  signed [6:0] sext_ln393_fu_1164_p1;
wire   [6:0] zext_ln114_fu_1182_p1;
wire   [7:0] zext_ln394_cast_fu_1185_p3;
wire   [7:0] zext_ln114_2_fu_1199_p1;
wire   [7:0] add_ln394_fu_1202_p2;
wire  signed [7:0] sext_ln396_fu_1214_p1;
wire  signed [7:0] sext_ln389_fu_1223_p1;
reg   [1:0] grp_fu_544_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg   [1:0] grp_fu_552_opcode;
reg   [1:0] grp_fu_560_opcode;
reg   [1:0] grp_fu_564_opcode;
reg   [1:0] grp_fu_568_opcode;
reg   [1:0] grp_fu_576_opcode;
reg   [1:0] grp_fu_580_opcode;
reg   [1:0] grp_fu_584_opcode;
reg   [1:0] grp_fu_588_opcode;
reg   [1:0] grp_fu_596_opcode;
reg   [1:0] grp_fu_600_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter16_stage0;
reg    ap_idle_pp0_0to15;
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
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to17;
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
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_84 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter17 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_84 <= 7'd0;
    end else if (((icmp_ln365_reg_1254 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_84 <= add_ln365_fu_707_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_x_1_load_19_reg_1443 <= DATA_x_1_q1;
        DATA_x_1_load_20_reg_1449 <= DATA_x_1_q0;
        DATA_x_load_19_reg_1437 <= DATA_x_q0;
        DATA_y_1_load_19_reg_1419 <= DATA_y_1_q1;
        DATA_y_1_load_20_reg_1425 <= DATA_y_1_q0;
        DATA_y_load_19_reg_1413 <= DATA_y_q0;
        c0_x_reg_1431 <= DATA_x_q1;
        c0_y_reg_1407 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_load_20_reg_1396 <= DATA_x_q0;
        DATA_y_load_20_reg_1352 <= DATA_y_q0;
        c0_x_61_reg_1368 <= DATA_x_1_q1;
        c0_x_62_reg_1374 <= DATA_x_q1;
        c0_x_63_reg_1380 <= DATA_x_1_q0;
        c0_y_61_reg_1324 <= DATA_y_1_q1;
        c0_y_62_reg_1330 <= DATA_y_q1;
        c0_y_63_reg_1336 <= DATA_y_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add11_reg_1461 <= grp_fu_256_p_dout0;
        add_reg_1455 <= grp_fu_252_p_dout0;
        sub12_reg_1473 <= grp_fu_264_p_dout0;
        tmp_1_11_reg_1467 <= grp_fu_260_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add12_reg_1503 <= grp_fu_268_p_dout0;
        add13_reg_1509 <= grp_fu_272_p_dout0;
        c0_x_36_reg_1479 <= grp_fu_252_p_dout0;
        c0_y_40_reg_1485 <= grp_fu_256_p_dout0;
        sub13_reg_1515 <= grp_fu_280_p_dout0;
        sub_reg_1497 <= grp_fu_264_p_dout0;
        tmp_1_reg_1491 <= grp_fu_260_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add14_reg_1591 <= grp_fu_288_p_dout0;
        add16_reg_1601 <= grp_fu_296_p_dout0;
        sub14_reg_1586 <= grp_fu_284_p_dout0;
        sub16_reg_1596 <= grp_fu_292_p_dout0;
        sub17_reg_1612 <= grp_fu_304_p_dout0;
        tmp_16_reg_1606 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add15_reg_1660 <= grp_fu_256_p_dout0;
        sub15_reg_1654 <= grp_fu_252_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_1642 <= grp_fu_284_p_dout0;
        add18_reg_1648 <= grp_fu_288_p_dout0;
        c0_x_38_reg_1630 <= grp_fu_276_p_dout0;
        c0_x_65_reg_1618 <= grp_fu_268_p_dout0;
        c0_y_42_reg_1636 <= grp_fu_280_p_dout0;
        c0_y_65_reg_1624 <= grp_fu_272_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add19_reg_1700 <= grp_fu_292_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add20_reg_1728 <= grp_fu_260_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add21_reg_1843 <= grp_fu_288_p_dout0;
        add26_reg_1853 <= grp_fu_296_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add23_reg_1774 <= grp_fu_268_p_dout0;
        tmp_17_reg_1780 <= grp_fu_272_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add24_reg_1804 <= grp_fu_304_p_dout0;
        sub18_reg_1792 <= grp_fu_296_p_dout0;
        sub19_reg_1798 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add27_reg_1905 <= grp_fu_304_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bitcast_ln393_reg_1738 <= bitcast_ln393_fu_1021_p1;
        bitcast_ln393_reg_1738_pp0_iter10_reg <= bitcast_ln393_reg_1738_pp0_iter9_reg;
        bitcast_ln393_reg_1738_pp0_iter11_reg <= bitcast_ln393_reg_1738_pp0_iter10_reg;
        bitcast_ln393_reg_1738_pp0_iter12_reg <= bitcast_ln393_reg_1738_pp0_iter11_reg;
        bitcast_ln393_reg_1738_pp0_iter13_reg <= bitcast_ln393_reg_1738_pp0_iter12_reg;
        bitcast_ln393_reg_1738_pp0_iter14_reg <= bitcast_ln393_reg_1738_pp0_iter13_reg;
        bitcast_ln393_reg_1738_pp0_iter8_reg <= bitcast_ln393_reg_1738;
        bitcast_ln393_reg_1738_pp0_iter9_reg <= bitcast_ln393_reg_1738_pp0_iter8_reg;
        bitcast_ln400_reg_1858 <= bitcast_ln400_fu_1125_p1;
        bitcast_ln401_reg_1946 <= bitcast_ln401_fu_1232_p1;
        bitcast_ln402_reg_1744 <= bitcast_ln402_fu_1025_p1;
        bitcast_ln402_reg_1744_pp0_iter10_reg <= bitcast_ln402_reg_1744_pp0_iter9_reg;
        bitcast_ln402_reg_1744_pp0_iter11_reg <= bitcast_ln402_reg_1744_pp0_iter10_reg;
        bitcast_ln402_reg_1744_pp0_iter12_reg <= bitcast_ln402_reg_1744_pp0_iter11_reg;
        bitcast_ln402_reg_1744_pp0_iter13_reg <= bitcast_ln402_reg_1744_pp0_iter12_reg;
        bitcast_ln402_reg_1744_pp0_iter14_reg <= bitcast_ln402_reg_1744_pp0_iter13_reg;
        bitcast_ln402_reg_1744_pp0_iter15_reg <= bitcast_ln402_reg_1744_pp0_iter14_reg;
        bitcast_ln402_reg_1744_pp0_iter8_reg <= bitcast_ln402_reg_1744;
        bitcast_ln402_reg_1744_pp0_iter9_reg <= bitcast_ln402_reg_1744_pp0_iter8_reg;
        c0_x_39_reg_1762_pp0_iter10_reg <= c0_x_39_reg_1762_pp0_iter9_reg;
        c0_x_39_reg_1762_pp0_iter11_reg <= c0_x_39_reg_1762_pp0_iter10_reg;
        c0_x_39_reg_1762_pp0_iter12_reg <= c0_x_39_reg_1762_pp0_iter11_reg;
        c0_x_39_reg_1762_pp0_iter9_reg <= c0_x_39_reg_1762;
        c0_y_43_reg_1768_pp0_iter10_reg <= c0_y_43_reg_1768_pp0_iter9_reg;
        c0_y_43_reg_1768_pp0_iter11_reg <= c0_y_43_reg_1768_pp0_iter10_reg;
        c0_y_43_reg_1768_pp0_iter12_reg <= c0_y_43_reg_1768_pp0_iter11_reg;
        c0_y_43_reg_1768_pp0_iter13_reg <= c0_y_43_reg_1768_pp0_iter12_reg;
        c0_y_43_reg_1768_pp0_iter9_reg <= c0_y_43_reg_1768;
        c0_y_66_reg_1756_pp0_iter9_reg <= c0_y_66_reg_1756;
        icmp_ln365_reg_1254 <= icmp_ln365_fu_634_p2;
        icmp_ln365_reg_1254_pp0_iter10_reg <= icmp_ln365_reg_1254_pp0_iter9_reg;
        icmp_ln365_reg_1254_pp0_iter11_reg <= icmp_ln365_reg_1254_pp0_iter10_reg;
        icmp_ln365_reg_1254_pp0_iter12_reg <= icmp_ln365_reg_1254_pp0_iter11_reg;
        icmp_ln365_reg_1254_pp0_iter13_reg <= icmp_ln365_reg_1254_pp0_iter12_reg;
        icmp_ln365_reg_1254_pp0_iter14_reg <= icmp_ln365_reg_1254_pp0_iter13_reg;
        icmp_ln365_reg_1254_pp0_iter15_reg <= icmp_ln365_reg_1254_pp0_iter14_reg;
        icmp_ln365_reg_1254_pp0_iter1_reg <= icmp_ln365_reg_1254;
        icmp_ln365_reg_1254_pp0_iter2_reg <= icmp_ln365_reg_1254_pp0_iter1_reg;
        icmp_ln365_reg_1254_pp0_iter3_reg <= icmp_ln365_reg_1254_pp0_iter2_reg;
        icmp_ln365_reg_1254_pp0_iter4_reg <= icmp_ln365_reg_1254_pp0_iter3_reg;
        icmp_ln365_reg_1254_pp0_iter5_reg <= icmp_ln365_reg_1254_pp0_iter4_reg;
        icmp_ln365_reg_1254_pp0_iter6_reg <= icmp_ln365_reg_1254_pp0_iter5_reg;
        icmp_ln365_reg_1254_pp0_iter7_reg <= icmp_ln365_reg_1254_pp0_iter6_reg;
        icmp_ln365_reg_1254_pp0_iter8_reg <= icmp_ln365_reg_1254_pp0_iter7_reg;
        icmp_ln365_reg_1254_pp0_iter9_reg <= icmp_ln365_reg_1254_pp0_iter8_reg;
        lshr_ln114_1_reg_1705 <= {{tid_5_reg_1247_pp0_iter6_reg[6:1]}};
        lshr_ln114_1_reg_1705_pp0_iter10_reg <= lshr_ln114_1_reg_1705_pp0_iter9_reg;
        lshr_ln114_1_reg_1705_pp0_iter11_reg <= lshr_ln114_1_reg_1705_pp0_iter10_reg;
        lshr_ln114_1_reg_1705_pp0_iter12_reg <= lshr_ln114_1_reg_1705_pp0_iter11_reg;
        lshr_ln114_1_reg_1705_pp0_iter13_reg <= lshr_ln114_1_reg_1705_pp0_iter12_reg;
        lshr_ln114_1_reg_1705_pp0_iter14_reg <= lshr_ln114_1_reg_1705_pp0_iter13_reg;
        lshr_ln114_1_reg_1705_pp0_iter8_reg <= lshr_ln114_1_reg_1705;
        lshr_ln114_1_reg_1705_pp0_iter9_reg <= lshr_ln114_1_reg_1705_pp0_iter8_reg;
        part_sel_reg_1733 <= {{tid_5_reg_1247_pp0_iter6_reg[5:1]}};
        part_sel_reg_1733_pp0_iter10_reg <= part_sel_reg_1733_pp0_iter9_reg;
        part_sel_reg_1733_pp0_iter8_reg <= part_sel_reg_1733;
        part_sel_reg_1733_pp0_iter9_reg <= part_sel_reg_1733_pp0_iter8_reg;
        tid_5_reg_1247 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1247_pp0_iter1_reg <= tid_5_reg_1247;
        tid_5_reg_1247_pp0_iter2_reg <= tid_5_reg_1247_pp0_iter1_reg;
        tid_5_reg_1247_pp0_iter3_reg <= tid_5_reg_1247_pp0_iter2_reg;
        tid_5_reg_1247_pp0_iter4_reg <= tid_5_reg_1247_pp0_iter3_reg;
        tid_5_reg_1247_pp0_iter5_reg <= tid_5_reg_1247_pp0_iter4_reg;
        tid_5_reg_1247_pp0_iter6_reg <= tid_5_reg_1247_pp0_iter5_reg;
        trunc_ln365_reg_1258 <= trunc_ln365_fu_640_p1;
        trunc_ln365_reg_1258_pp0_iter10_reg <= trunc_ln365_reg_1258_pp0_iter9_reg;
        trunc_ln365_reg_1258_pp0_iter11_reg <= trunc_ln365_reg_1258_pp0_iter10_reg;
        trunc_ln365_reg_1258_pp0_iter12_reg <= trunc_ln365_reg_1258_pp0_iter11_reg;
        trunc_ln365_reg_1258_pp0_iter13_reg <= trunc_ln365_reg_1258_pp0_iter12_reg;
        trunc_ln365_reg_1258_pp0_iter14_reg <= trunc_ln365_reg_1258_pp0_iter13_reg;
        trunc_ln365_reg_1258_pp0_iter15_reg <= trunc_ln365_reg_1258_pp0_iter14_reg;
        trunc_ln365_reg_1258_pp0_iter16_reg <= trunc_ln365_reg_1258_pp0_iter15_reg;
        trunc_ln365_reg_1258_pp0_iter1_reg <= trunc_ln365_reg_1258;
        trunc_ln365_reg_1258_pp0_iter2_reg <= trunc_ln365_reg_1258_pp0_iter1_reg;
        trunc_ln365_reg_1258_pp0_iter3_reg <= trunc_ln365_reg_1258_pp0_iter2_reg;
        trunc_ln365_reg_1258_pp0_iter4_reg <= trunc_ln365_reg_1258_pp0_iter3_reg;
        trunc_ln365_reg_1258_pp0_iter5_reg <= trunc_ln365_reg_1258_pp0_iter4_reg;
        trunc_ln365_reg_1258_pp0_iter6_reg <= trunc_ln365_reg_1258_pp0_iter5_reg;
        trunc_ln365_reg_1258_pp0_iter7_reg <= trunc_ln365_reg_1258_pp0_iter6_reg;
        trunc_ln365_reg_1258_pp0_iter8_reg <= trunc_ln365_reg_1258_pp0_iter7_reg;
        trunc_ln365_reg_1258_pp0_iter9_reg <= trunc_ln365_reg_1258_pp0_iter8_reg;
        trunc_ln367_reg_1262 <= trunc_ln367_fu_644_p1;
        zext_ln114_1_reg_1712[5 : 0] <= zext_ln114_1_fu_933_p1[5 : 0];
        zext_ln367_reg_1267[7 : 2] <= zext_ln367_fu_656_p1[7 : 2];
        zext_ln373_reg_1288[7 : 2] <= zext_ln373_fu_686_p1[7 : 2];
        zext_ln389_reg_1940[4 : 0] <= zext_ln389_fu_1226_p1[4 : 0];
        zext_ln389_reg_1940_pp0_iter16_reg[4 : 0] <= zext_ln389_reg_1940[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bitcast_ln394_reg_1820 <= bitcast_ln394_fu_1068_p1;
        bitcast_ln394_reg_1820_pp0_iter11_reg <= bitcast_ln394_reg_1820;
        bitcast_ln394_reg_1820_pp0_iter12_reg <= bitcast_ln394_reg_1820_pp0_iter11_reg;
        bitcast_ln394_reg_1820_pp0_iter13_reg <= bitcast_ln394_reg_1820_pp0_iter12_reg;
        bitcast_ln394_reg_1820_pp0_iter14_reg <= bitcast_ln394_reg_1820_pp0_iter13_reg;
        bitcast_ln395_reg_1875 <= bitcast_ln395_fu_1147_p1;
        bitcast_ln395_reg_1875_pp0_iter12_reg <= bitcast_ln395_reg_1875;
        bitcast_ln395_reg_1875_pp0_iter13_reg <= bitcast_ln395_reg_1875_pp0_iter12_reg;
        bitcast_ln395_reg_1875_pp0_iter14_reg <= bitcast_ln395_reg_1875_pp0_iter13_reg;
        bitcast_ln396_reg_1916 <= bitcast_ln396_fu_1178_p1;
        bitcast_ln403_reg_1881 <= bitcast_ln403_fu_1156_p1;
        bitcast_ln403_reg_1881_pp0_iter12_reg <= bitcast_ln403_reg_1881;
        bitcast_ln403_reg_1881_pp0_iter13_reg <= bitcast_ln403_reg_1881_pp0_iter12_reg;
        bitcast_ln403_reg_1881_pp0_iter14_reg <= bitcast_ln403_reg_1881_pp0_iter13_reg;
        bitcast_ln403_reg_1881_pp0_iter15_reg <= bitcast_ln403_reg_1881_pp0_iter14_reg;
        bitcast_ln404_reg_1887 <= bitcast_ln404_fu_1160_p1;
        bitcast_ln404_reg_1887_pp0_iter12_reg <= bitcast_ln404_reg_1887;
        bitcast_ln404_reg_1887_pp0_iter13_reg <= bitcast_ln404_reg_1887_pp0_iter12_reg;
        bitcast_ln404_reg_1887_pp0_iter14_reg <= bitcast_ln404_reg_1887_pp0_iter13_reg;
        bitcast_ln404_reg_1887_pp0_iter15_reg <= bitcast_ln404_reg_1887_pp0_iter14_reg;
        bitcast_ln405_reg_1952 <= bitcast_ln405_fu_1236_p1;
        bitcast_ln405_reg_1952_pp0_iter16_reg <= bitcast_ln405_reg_1952;
        sub12_reg_1473_pp0_iter3_reg <= sub12_reg_1473;
        tmp_17_reg_1780_pp0_iter10_reg <= tmp_17_reg_1780_pp0_iter9_reg;
        tmp_17_reg_1780_pp0_iter9_reg <= tmp_17_reg_1780;
        tmp_1_11_reg_1467_pp0_iter3_reg <= tmp_1_11_reg_1467;
        zext_ln392_cast_reg_1864[5 : 0] <= zext_ln392_cast_fu_1129_p3[5 : 0];
        zext_ln392_cast_reg_1864_pp0_iter12_reg[5 : 0] <= zext_ln392_cast_reg_1864[5 : 0];
        zext_ln392_cast_reg_1864_pp0_iter13_reg[5 : 0] <= zext_ln392_cast_reg_1864_pp0_iter12_reg[5 : 0];
        zext_ln392_cast_reg_1864_pp0_iter14_reg[5 : 0] <= zext_ln392_cast_reg_1864_pp0_iter13_reg[5 : 0];
        zext_ln392_reg_1869[5 : 0] <= zext_ln392_fu_1136_p1[5 : 0];
        zext_ln393_reg_1910[4 : 0] <= zext_ln393_fu_1167_p1[4 : 0];
        zext_ln393_reg_1910_pp0_iter15_reg[4 : 0] <= zext_ln393_reg_1910[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_35_reg_1532 <= grp_fu_260_p_dout0;
        c0_x_64_reg_1520 <= grp_fu_252_p_dout0;
        c0_y_39_reg_1538 <= grp_fu_264_p_dout0;
        c0_y_64_reg_1526 <= grp_fu_256_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        c0_x_35_reg_1532_pp0_iter3_reg <= c0_x_35_reg_1532;
        c0_x_35_reg_1532_pp0_iter4_reg <= c0_x_35_reg_1532_pp0_iter3_reg;
        c0_x_35_reg_1532_pp0_iter5_reg <= c0_x_35_reg_1532_pp0_iter4_reg;
        c0_x_38_reg_1630_pp0_iter5_reg <= c0_x_38_reg_1630;
        c0_x_38_reg_1630_pp0_iter6_reg <= c0_x_38_reg_1630_pp0_iter5_reg;
        c0_x_38_reg_1630_pp0_iter7_reg <= c0_x_38_reg_1630_pp0_iter6_reg;
        c0_x_38_reg_1630_pp0_iter8_reg <= c0_x_38_reg_1630_pp0_iter7_reg;
        c0_y_39_reg_1538_pp0_iter3_reg <= c0_y_39_reg_1538;
        c0_y_39_reg_1538_pp0_iter4_reg <= c0_y_39_reg_1538_pp0_iter3_reg;
        c0_y_39_reg_1538_pp0_iter5_reg <= c0_y_39_reg_1538_pp0_iter4_reg;
        c0_y_42_reg_1636_pp0_iter5_reg <= c0_y_42_reg_1636;
        c0_y_42_reg_1636_pp0_iter6_reg <= c0_y_42_reg_1636_pp0_iter5_reg;
        c0_y_42_reg_1636_pp0_iter7_reg <= c0_y_42_reg_1636_pp0_iter6_reg;
        c0_y_42_reg_1636_pp0_iter8_reg <= c0_y_42_reg_1636_pp0_iter7_reg;
        zext_ln395_reg_1928[7 : 0] <= zext_ln395_fu_1208_p1[7 : 0];
        zext_ln395_reg_1928_pp0_iter15_reg[7 : 0] <= zext_ln395_reg_1928[7 : 0];
        zext_ln396_reg_1934[5 : 0] <= zext_ln396_fu_1217_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c0_x_37_reg_1666 <= grp_fu_312_p_dout0;
        c0_y_41_reg_1672 <= grp_fu_316_p_dout0;
        mul7_reg_1678 <= grp_fu_320_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_39_reg_1762 <= grp_fu_280_p_dout0;
        c0_x_66_reg_1750 <= grp_fu_272_p_dout0;
        c0_y_43_reg_1768 <= grp_fu_284_p_dout0;
        c0_y_66_reg_1756 <= grp_fu_276_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul10_reg_1695 <= grp_fu_320_p_dout0;
        mul8_reg_1684 <= grp_fu_312_p_dout0;
        mul9_reg_1690 <= grp_fu_316_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul11_reg_1810 <= grp_fu_320_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul12_reg_1838 <= grp_fu_312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul6_reg_1571 <= grp_fu_316_p_dout0;
        mul_reg_1566 <= grp_fu_312_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_622 <= grp_fu_276_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub17_reg_1612_pp0_iter5_reg <= sub17_reg_1612;
        sub17_reg_1612_pp0_iter6_reg <= sub17_reg_1612_pp0_iter5_reg;
        sub24_reg_1786_pp0_iter9_reg <= sub24_reg_1786;
        tmp_16_reg_1606_pp0_iter5_reg <= tmp_16_reg_1606;
        tmp_16_reg_1606_pp0_iter6_reg <= tmp_16_reg_1606_pp0_iter5_reg;
        zext_ln391_cast_reg_1826[4 : 0] <= zext_ln391_cast_fu_1072_p3[4 : 0];
        zext_ln391_cast_reg_1826_pp0_iter11_reg[4 : 0] <= zext_ln391_cast_reg_1826[4 : 0];
        zext_ln391_cast_reg_1826_pp0_iter12_reg[4 : 0] <= zext_ln391_cast_reg_1826_pp0_iter11_reg[4 : 0];
        zext_ln391_cast_reg_1826_pp0_iter13_reg[4 : 0] <= zext_ln391_cast_reg_1826_pp0_iter12_reg[4 : 0];
        zext_ln391_cast_reg_1826_pp0_iter14_reg[4 : 0] <= zext_ln391_cast_reg_1826_pp0_iter13_reg[4 : 0];
        zext_ln391_reg_1832[4 : 0] <= zext_ln391_fu_1079_p1[4 : 0];
        zext_ln394_reg_1922[5 : 0] <= zext_ln394_fu_1193_p1[5 : 0];
        zext_ln394_reg_1922_pp0_iter15_reg[5 : 0] <= zext_ln394_reg_1922[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sub24_reg_1786 <= grp_fu_308_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub25_reg_1893 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub26_reg_1899 <= grp_fu_308_p_dout0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address0_local = zext_ln373_reg_1288;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address0_local = zext_ln369_fu_670_p1;
        end else begin
            DATA_x_1_address0_local = 'bx;
        end
    end else begin
        DATA_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_1_address1_local = zext_ln371_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_1_address1_local = zext_ln367_fu_656_p1;
        end else begin
            DATA_x_1_address1_local = 'bx;
        end
    end else begin
        DATA_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address0_local = zext_ln371_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address0_local = zext_ln373_fu_686_p1;
        end else begin
            DATA_x_address0_local = 'bx;
        end
    end else begin
        DATA_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_x_address1_local = zext_ln367_reg_1267;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_x_address1_local = zext_ln369_fu_670_p1;
        end else begin
            DATA_x_address1_local = 'bx;
        end
    end else begin
        DATA_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln373_reg_1288;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln369_fu_670_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln371_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln367_fu_656_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln371_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln373_fu_686_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln367_reg_1267;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln369_fu_670_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln365_reg_1254 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter16 == 1'b1) & (icmp_ln365_reg_1254_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter16_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter16_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to15 = 1'b1;
    end else begin
        ap_idle_pp0_0to15 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to17 = 1'b1;
    end else begin
        ap_idle_pp0_1to17 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_544_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1254 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1254 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_544_opcode = 2'd0;
    end else begin
        grp_fu_544_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_544_p0 = mul_reg_1566;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_544_p0 = c0_x_reg_1431;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_544_p0 = c0_x_61_reg_1368;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_544_p0 = c0_x_62_reg_1374;
    end else begin
        grp_fu_544_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_544_p1 = bitcast_ln386_5_fu_885_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_544_p1 = DATA_x_load_19_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_544_p1 = DATA_x_1_load_19_reg_1443;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_544_p1 = DATA_x_load_20_reg_1396;
    end else begin
        grp_fu_544_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_548_p0 = bitcast_ln386_7_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_548_p0 = c0_y_reg_1407;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_548_p0 = c0_y_61_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_548_p0 = c0_y_62_reg_1330;
    end else begin
        grp_fu_548_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_548_p1 = mul6_reg_1571;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_548_p1 = DATA_y_load_19_reg_1413;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_548_p1 = DATA_y_1_load_19_reg_1419;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_548_p1 = DATA_y_load_20_reg_1352;
    end else begin
        grp_fu_548_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1254 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1254 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_552_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_552_opcode = 2'd0;
    end else begin
        grp_fu_552_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_552_p0 = c0_y_65_reg_1624;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_552_p0 = c0_x_reg_1431;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_552_p0 = c0_x_61_reg_1368;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_552_p0 = c0_x_62_reg_1374;
    end else begin
        grp_fu_552_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_552_p1 = add18_reg_1648;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_552_p1 = DATA_x_load_19_reg_1437;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_552_p1 = DATA_x_1_load_19_reg_1443;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_552_p1 = DATA_x_load_20_reg_1396;
    end else begin
        grp_fu_552_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_556_p0 = c0_x_65_reg_1618;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_556_p0 = c0_y_reg_1407;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_556_p0 = c0_y_61_reg_1324;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_556_p0 = c0_y_62_reg_1330;
    end else begin
        grp_fu_556_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_556_p1 = add17_reg_1642;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_556_p1 = DATA_y_load_19_reg_1413;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_556_p1 = DATA_y_1_load_19_reg_1419;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_556_p1 = DATA_y_load_20_reg_1352;
    end else begin
        grp_fu_556_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_560_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1254 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_560_opcode = 2'd0;
    end else begin
        grp_fu_560_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_560_p0 = c0_x_37_reg_1666;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_560_p0 = c0_y_65_reg_1624;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_560_p0 = c0_x_64_reg_1520;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_560_p0 = c0_x_63_reg_1380;
    end else begin
        grp_fu_560_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_560_p1 = mul7_reg_1678;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_560_p1 = add18_reg_1648;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_560_p1 = add_reg_1455;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_560_p1 = DATA_x_1_load_20_reg_1449;
    end else begin
        grp_fu_560_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_564_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1254 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_564_opcode = 2'd0;
    end else begin
        grp_fu_564_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_564_p0 = c0_x_37_reg_1666;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_564_p0 = c0_x_35_reg_1532_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_564_p0 = c0_y_64_reg_1526;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_564_p0 = c0_y_63_reg_1336;
    end else begin
        grp_fu_564_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_564_p1 = mul7_reg_1678;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_564_p1 = sub15_reg_1654;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_564_p1 = add11_reg_1461;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_564_p1 = DATA_y_1_load_20_reg_1425;
    end else begin
        grp_fu_564_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1254 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_568_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_568_opcode = 2'd0;
    end else begin
        grp_fu_568_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_568_p0 = c0_x_66_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_568_p0 = c0_y_39_reg_1538_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_568_p0 = c0_x_64_reg_1520;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_568_p0 = c0_x_63_reg_1380;
    end else begin
        grp_fu_568_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_568_p1 = add23_reg_1774;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_568_p1 = add15_reg_1660;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_568_p1 = add_reg_1455;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_568_p1 = DATA_x_1_load_20_reg_1449;
    end else begin
        grp_fu_568_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_572_p0 = c0_x_66_reg_1750;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_572_p0 = c0_x_35_reg_1532_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_572_p0 = c0_y_64_reg_1526;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_572_p0 = c0_y_63_reg_1336;
    end else begin
        grp_fu_572_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_572_p1 = add23_reg_1774;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_572_p1 = sub15_reg_1654;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_572_p1 = add11_reg_1461;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_572_p1 = DATA_y_1_load_20_reg_1425;
    end else begin
        grp_fu_572_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_576_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_576_opcode = 2'd0;
    end else begin
        grp_fu_576_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_576_p0 = c0_x_38_reg_1630_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_576_p0 = c0_y_39_reg_1538_pp0_iter5_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_576_p0 = c0_x_36_reg_1479;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_576_p0 = tmp_1_reg_1491;
    end else begin
        grp_fu_576_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_576_p1 = sub18_reg_1792;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_576_p1 = add15_reg_1660;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_576_p1 = add12_reg_1503;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_576_p1 = bitcast_ln386_1_fu_746_p1;
    end else begin
        grp_fu_576_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_580_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_580_opcode = 2'd0;
    end else begin
        grp_fu_580_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_580_p0 = c0_y_42_reg_1636_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_580_p0 = c0_x_38_reg_1630_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_580_p0 = c0_y_40_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_580_p0 = bitcast_ln386_3_fu_780_p1;
    end else begin
        grp_fu_580_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_580_p1 = sub19_reg_1798;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_580_p1 = sub18_reg_1792;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_580_p1 = add13_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_580_p1 = sub_reg_1497;
    end else begin
        grp_fu_580_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_584_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_584_opcode = 2'd0;
    end else begin
        grp_fu_584_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_584_p0 = c0_y_66_reg_1756_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_584_p0 = c0_y_42_reg_1636_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_584_p0 = c0_x_65_reg_1618;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_584_p0 = bitcast_ln386_9_fu_815_p1;
    end else begin
        grp_fu_584_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_584_p1 = add24_reg_1804;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_584_p1 = sub19_reg_1798;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_584_p1 = add17_reg_1642;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_584_p1 = bitcast_ln386_11_fu_850_p1;
    end else begin
        grp_fu_584_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_588_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_588_opcode = 2'd0;
    end else begin
        grp_fu_588_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_588_p0 = c0_x_39_reg_1762_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_588_p0 = c0_y_66_reg_1756_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_588_p0 = mul9_reg_1690;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_588_p0 = bitcast_ln386_9_fu_815_p1;
    end else begin
        grp_fu_588_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_588_p1 = sub25_reg_1893;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_588_p1 = add24_reg_1804;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_588_p1 = bitcast_ln386_13_fu_968_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_588_p1 = bitcast_ln386_11_fu_850_p1;
    end else begin
        grp_fu_588_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_592_p0 = c0_y_43_reg_1768_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_592_p0 = mul11_reg_1810;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_592_p0 = bitcast_ln386_15_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_592_p0 = c0_x_36_reg_1479;
    end else begin
        grp_fu_592_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_592_p1 = sub26_reg_1899;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_592_p1 = bitcast_ln386_17_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_592_p1 = mul10_reg_1695;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_592_p1 = add12_reg_1503;
    end else begin
        grp_fu_592_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_596_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_596_opcode = 2'd0;
    end else begin
        grp_fu_596_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_596_p0 = c0_x_39_reg_1762_pp0_iter12_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_596_p0 = c0_y_41_reg_1672;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_596_p0 = c0_y_40_reg_1485;
    end else begin
        grp_fu_596_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_596_p1 = sub25_reg_1893;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_596_p1 = mul8_reg_1684;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_596_p1 = add13_reg_1509;
    end else begin
        grp_fu_596_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_600_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_600_opcode = 2'd0;
    end else begin
        grp_fu_600_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_600_p0 = c0_y_43_reg_1768_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_600_p0 = bitcast_ln386_19_fu_1120_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_600_p0 = c0_y_41_reg_1672;
    end else begin
        grp_fu_600_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_600_p1 = sub26_reg_1899;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_600_p1 = mul12_reg_1838;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_600_p1 = mul8_reg_1684;
    end else begin
        grp_fu_600_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_604_p0 = sub24_reg_1786;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_604_p0 = add16_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_604_p0 = sub14_reg_1586;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_604_p0 = tmp_1_11_reg_1467;
    end else begin
        grp_fu_604_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_604_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_604_p1 = 64'd0;
    end else begin
        grp_fu_604_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_609_p0 = tmp_16_reg_1606;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_609_p0 = add14_reg_1591;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_609_p0 = sub12_reg_1473;
    end else begin
        grp_fu_609_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_609_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_609_p1 = 64'd0;
    end else begin
        grp_fu_609_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p0 = tmp_17_reg_1780;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p0 = sub17_reg_1612;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p0 = sub16_reg_1596;
    end else begin
        grp_fu_616_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_616_p1 = 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p1 = 64'd4604544271217802189;
    end else begin
        grp_fu_616_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address0_local = zext_ln389_fu_1226_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address0_local = zext_ln396_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address0_local = zext_ln394_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address0_local = zext_ln393_fu_1167_p1;
    end else begin
        work_x_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_address1_local = zext_ln395_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_address1_local = zext_ln392_fu_1136_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_address1_local = zext_ln391_fu_1079_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_address1_local = zext_ln114_1_fu_933_p1;
    end else begin
        work_x_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_x_0_ce0_local = 1'b1;
    end else begin
        work_x_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_x_0_ce1_local = 1'b1;
    end else begin
        work_x_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d0_local = bitcast_ln396_reg_1916;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d0_local = bitcast_ln395_reg_1875_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d0_local = bitcast_ln393_reg_1738_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d0_local = bitcast_ln392_fu_1173_p1;
    end else begin
        work_x_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_0_d1_local = bitcast_ln394_reg_1820_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_0_d1_local = bitcast_ln391_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_0_d1_local = bitcast_ln390_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_0_d1_local = bitcast_ln389_fu_1016_p1;
    end else begin
        work_x_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_x_0_we0_local = 1'b1;
    end else begin
        work_x_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter6_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter11_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter10_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_x_0_we1_local = 1'b1;
    end else begin
        work_x_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address0_local = zext_ln389_fu_1226_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address0_local = zext_ln396_fu_1217_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address0_local = zext_ln394_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address0_local = zext_ln393_fu_1167_p1;
    end else begin
        work_x_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_address1_local = zext_ln395_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_address1_local = zext_ln392_fu_1136_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_address1_local = zext_ln391_fu_1079_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_address1_local = zext_ln114_1_fu_933_p1;
    end else begin
        work_x_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_x_1_ce0_local = 1'b1;
    end else begin
        work_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_x_1_ce1_local = 1'b1;
    end else begin
        work_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d0_local = bitcast_ln396_reg_1916;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d0_local = bitcast_ln395_reg_1875_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d0_local = bitcast_ln393_reg_1738_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d0_local = bitcast_ln392_fu_1173_p1;
    end else begin
        work_x_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_1_d1_local = bitcast_ln394_reg_1820_pp0_iter14_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_1_d1_local = bitcast_ln391_fu_1142_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_1_d1_local = bitcast_ln390_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_1_d1_local = bitcast_ln389_fu_1016_p1;
    end else begin
        work_x_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_x_1_we0_local = 1'b1;
    end else begin
        work_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter14_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter6_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter11_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter10_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_x_1_we1_local = 1'b1;
    end else begin
        work_x_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address0_local = zext_ln389_reg_1940_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address0_local = zext_ln396_reg_1934;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address0_local = zext_ln393_reg_1910_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address0_local = zext_ln391_reg_1832;
    end else begin
        work_y_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_address1_local = zext_ln395_reg_1928_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_address1_local = zext_ln394_reg_1922_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_address1_local = zext_ln392_reg_1869;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_address1_local = zext_ln114_1_reg_1712;
    end else begin
        work_y_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_y_0_ce0_local = 1'b1;
    end else begin
        work_y_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_y_0_ce1_local = 1'b1;
    end else begin
        work_y_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d0_local = bitcast_ln405_reg_1952_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d0_local = bitcast_ln404_reg_1887_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d0_local = bitcast_ln401_reg_1946;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d0_local = bitcast_ln399_fu_1151_p1;
    end else begin
        work_y_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_0_d1_local = bitcast_ln403_reg_1881_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_0_d1_local = bitcast_ln402_reg_1744_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_0_d1_local = bitcast_ln400_reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_0_d1_local = bitcast_ln398_fu_1029_p1;
    end else begin
        work_y_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter16_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter11_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_y_0_we0_local = 1'b1;
    end else begin
        work_y_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter15_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter7_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter11_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_y_0_we1_local = 1'b1;
    end else begin
        work_y_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address0_local = zext_ln389_reg_1940_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address0_local = zext_ln396_reg_1934;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address0_local = zext_ln393_reg_1910_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address0_local = zext_ln391_reg_1832;
    end else begin
        work_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_address1_local = zext_ln395_reg_1928_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_address1_local = zext_ln394_reg_1922_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_address1_local = zext_ln392_reg_1869;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_address1_local = zext_ln114_1_reg_1712;
    end else begin
        work_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_y_1_ce0_local = 1'b1;
    end else begin
        work_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_y_1_ce1_local = 1'b1;
    end else begin
        work_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter17 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d0_local = bitcast_ln405_reg_1952_pp0_iter16_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d0_local = bitcast_ln404_reg_1887_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d0_local = bitcast_ln401_reg_1946;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d0_local = bitcast_ln399_fu_1151_p1;
    end else begin
        work_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter16 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_1_d1_local = bitcast_ln403_reg_1881_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter15 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_1_d1_local = bitcast_ln402_reg_1744_pp0_iter15_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_1_d1_local = bitcast_ln400_reg_1858;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_1_d1_local = bitcast_ln398_fu_1029_p1;
    end else begin
        work_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter17 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter16_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter11_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_y_1_we0_local = 1'b1;
    end else begin
        work_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter15_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter7_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (trunc_ln365_reg_1258_pp0_iter11_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        work_y_1_we1_local = 1'b1;
    end else begin
        work_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter16_stage0) & (ap_idle_pp0_0to15 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to17 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign DATA_x_1_address0 = DATA_x_1_address0_local;
assign DATA_x_1_address1 = DATA_x_1_address1_local;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_address0 = DATA_x_address0_local;
assign DATA_x_address1 = DATA_x_address1_local;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_707_p2 = (tid_5_reg_1247 + 7'd1);
assign add_ln394_fu_1202_p2 = ($signed(zext_ln114_2_fu_1199_p1) + $signed(8'd160));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bit_sel40_fu_754_p3 = bitcast_ln386_2_fu_751_p1[64'd63];
assign bit_sel41_fu_859_p3 = bitcast_ln386_4_fu_856_p1[64'd63];
assign bit_sel42_fu_893_p3 = bitcast_ln386_6_fu_890_p1[64'd63];
assign bit_sel43_fu_789_p3 = bitcast_ln386_8_fu_785_p1[64'd63];
assign bit_sel44_fu_824_p3 = bitcast_ln386_10_fu_821_p1[64'd63];
assign bit_sel45_fu_942_p3 = bitcast_ln386_12_fu_939_p1[64'd63];
assign bit_sel46_fu_976_p3 = bitcast_ln386_14_fu_973_p1[64'd63];
assign bit_sel47_fu_1037_p3 = bitcast_ln386_16_fu_1034_p1[64'd63];
assign bit_sel48_fu_1094_p3 = bitcast_ln386_18_fu_1091_p1[64'd63];
assign bit_sel_fu_720_p3 = bitcast_ln386_fu_717_p1[64'd63];
assign bitcast_ln386_10_fu_821_p1 = sub13_reg_1515;
assign bitcast_ln386_11_fu_850_p1 = xor_ln386_5_fu_842_p3;
assign bitcast_ln386_12_fu_939_p1 = sub17_reg_1612_pp0_iter6_reg;
assign bitcast_ln386_13_fu_968_p1 = xor_ln386_6_fu_960_p3;
assign bitcast_ln386_14_fu_973_p1 = tmp_16_reg_1606_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1002_p1 = xor_ln386_7_fu_994_p3;
assign bitcast_ln386_16_fu_1034_p1 = sub24_reg_1786_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1063_p1 = xor_ln386_8_fu_1055_p3;
assign bitcast_ln386_18_fu_1091_p1 = tmp_17_reg_1780_pp0_iter10_reg;
assign bitcast_ln386_19_fu_1120_p1 = xor_ln386_9_fu_1112_p3;
assign bitcast_ln386_1_fu_746_p1 = xor_ln3_fu_738_p3;
assign bitcast_ln386_2_fu_751_p1 = tmp_1_reg_1491;
assign bitcast_ln386_3_fu_780_p1 = xor_ln386_1_fu_772_p3;
assign bitcast_ln386_4_fu_856_p1 = sub12_reg_1473_pp0_iter3_reg;
assign bitcast_ln386_5_fu_885_p1 = xor_ln386_2_fu_877_p3;
assign bitcast_ln386_6_fu_890_p1 = tmp_1_11_reg_1467_pp0_iter3_reg;
assign bitcast_ln386_7_fu_919_p1 = xor_ln386_3_fu_911_p3;
assign bitcast_ln386_8_fu_785_p1 = reg_622;
assign bitcast_ln386_9_fu_815_p1 = xor_ln386_4_fu_807_p3;
assign bitcast_ln386_fu_717_p1 = sub_reg_1497;
assign bitcast_ln389_fu_1016_p1 = add19_reg_1700;
assign bitcast_ln390_fu_1085_p1 = reg_622;
assign bitcast_ln391_fu_1142_p1 = add21_reg_1843;
assign bitcast_ln392_fu_1173_p1 = add27_reg_1905;
assign bitcast_ln393_fu_1021_p1 = grp_fu_264_p_dout0;
assign bitcast_ln394_fu_1068_p1 = grp_fu_280_p_dout0;
assign bitcast_ln395_fu_1147_p1 = grp_fu_284_p_dout0;
assign bitcast_ln396_fu_1178_p1 = grp_fu_296_p_dout0;
assign bitcast_ln398_fu_1029_p1 = add20_reg_1728;
assign bitcast_ln399_fu_1151_p1 = add26_reg_1853;
assign bitcast_ln400_fu_1125_p1 = grp_fu_292_p_dout0;
assign bitcast_ln401_fu_1232_p1 = grp_fu_308_p_dout0;
assign bitcast_ln402_fu_1025_p1 = grp_fu_268_p_dout0;
assign bitcast_ln403_fu_1156_p1 = grp_fu_292_p_dout0;
assign bitcast_ln404_fu_1160_p1 = grp_fu_288_p_dout0;
assign bitcast_ln405_fu_1236_p1 = grp_fu_300_p_dout0;
assign grp_fu_252_p_ce = 1'b1;
assign grp_fu_252_p_din0 = grp_fu_544_p0;
assign grp_fu_252_p_din1 = grp_fu_544_p1;
assign grp_fu_252_p_opcode = grp_fu_544_opcode;
assign grp_fu_256_p_ce = 1'b1;
assign grp_fu_256_p_din0 = grp_fu_548_p0;
assign grp_fu_256_p_din1 = grp_fu_548_p1;
assign grp_fu_256_p_opcode = 2'd0;
assign grp_fu_260_p_ce = 1'b1;
assign grp_fu_260_p_din0 = grp_fu_552_p0;
assign grp_fu_260_p_din1 = grp_fu_552_p1;
assign grp_fu_260_p_opcode = grp_fu_552_opcode;
assign grp_fu_264_p_ce = 1'b1;
assign grp_fu_264_p_din0 = grp_fu_556_p0;
assign grp_fu_264_p_din1 = grp_fu_556_p1;
assign grp_fu_264_p_opcode = 2'd1;
assign grp_fu_268_p_ce = 1'b1;
assign grp_fu_268_p_din0 = grp_fu_560_p0;
assign grp_fu_268_p_din1 = grp_fu_560_p1;
assign grp_fu_268_p_opcode = grp_fu_560_opcode;
assign grp_fu_272_p_ce = 1'b1;
assign grp_fu_272_p_din0 = grp_fu_564_p0;
assign grp_fu_272_p_din1 = grp_fu_564_p1;
assign grp_fu_272_p_opcode = grp_fu_564_opcode;
assign grp_fu_276_p_ce = 1'b1;
assign grp_fu_276_p_din0 = grp_fu_568_p0;
assign grp_fu_276_p_din1 = grp_fu_568_p1;
assign grp_fu_276_p_opcode = grp_fu_568_opcode;
assign grp_fu_280_p_ce = 1'b1;
assign grp_fu_280_p_din0 = grp_fu_572_p0;
assign grp_fu_280_p_din1 = grp_fu_572_p1;
assign grp_fu_280_p_opcode = 2'd1;
assign grp_fu_284_p_ce = 1'b1;
assign grp_fu_284_p_din0 = grp_fu_576_p0;
assign grp_fu_284_p_din1 = grp_fu_576_p1;
assign grp_fu_284_p_opcode = grp_fu_576_opcode;
assign grp_fu_288_p_ce = 1'b1;
assign grp_fu_288_p_din0 = grp_fu_580_p0;
assign grp_fu_288_p_din1 = grp_fu_580_p1;
assign grp_fu_288_p_opcode = grp_fu_580_opcode;
assign grp_fu_292_p_ce = 1'b1;
assign grp_fu_292_p_din0 = grp_fu_584_p0;
assign grp_fu_292_p_din1 = grp_fu_584_p1;
assign grp_fu_292_p_opcode = grp_fu_584_opcode;
assign grp_fu_296_p_ce = 1'b1;
assign grp_fu_296_p_din0 = grp_fu_588_p0;
assign grp_fu_296_p_din1 = grp_fu_588_p1;
assign grp_fu_296_p_opcode = grp_fu_588_opcode;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_592_p0;
assign grp_fu_300_p_din1 = grp_fu_592_p1;
assign grp_fu_300_p_opcode = 2'd1;
assign grp_fu_304_p_ce = 1'b1;
assign grp_fu_304_p_din0 = grp_fu_596_p0;
assign grp_fu_304_p_din1 = grp_fu_596_p1;
assign grp_fu_304_p_opcode = grp_fu_596_opcode;
assign grp_fu_308_p_ce = 1'b1;
assign grp_fu_308_p_din0 = grp_fu_600_p0;
assign grp_fu_308_p_din1 = grp_fu_600_p1;
assign grp_fu_308_p_opcode = grp_fu_600_opcode;
assign grp_fu_312_p_ce = 1'b1;
assign grp_fu_312_p_din0 = grp_fu_604_p0;
assign grp_fu_312_p_din1 = grp_fu_604_p1;
assign grp_fu_316_p_ce = 1'b1;
assign grp_fu_316_p_din0 = grp_fu_609_p0;
assign grp_fu_316_p_din1 = grp_fu_609_p1;
assign grp_fu_320_p_ce = 1'b1;
assign grp_fu_320_p_din0 = grp_fu_616_p0;
assign grp_fu_320_p_din1 = grp_fu_616_p1;
assign icmp_ln365_fu_634_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln114_1_fu_924_p4 = {{tid_5_reg_1247_pp0_iter6_reg[6:1]}};
assign or_ln17_fu_692_p3 = {{trunc_ln367_reg_1262}, {2'd2}};
assign or_ln18_fu_678_p3 = {{trunc_ln367_fu_644_p1}, {2'd3}};
assign or_ln_fu_662_p3 = {{trunc_ln367_fu_644_p1}, {2'd1}};
assign sext_ln389_fu_1223_p1 = zext_ln391_cast_reg_1826_pp0_iter14_reg;
assign sext_ln393_fu_1164_p1 = zext_ln391_cast_reg_1826_pp0_iter13_reg;
assign sext_ln396_fu_1214_p1 = zext_ln392_cast_reg_1864_pp0_iter14_reg;
assign shl_ln_fu_648_p3 = {{trunc_ln367_fu_644_p1}, {2'd0}};
assign trunc_ln365_fu_640_p1 = ap_sig_allocacmp_tid_5[0:0];
assign trunc_ln367_fu_644_p1 = ap_sig_allocacmp_tid_5[5:0];
assign trunc_ln386_1_fu_768_p1 = bitcast_ln386_2_fu_751_p1[62:0];
assign trunc_ln386_2_fu_873_p1 = bitcast_ln386_4_fu_856_p1[62:0];
assign trunc_ln386_3_fu_907_p1 = bitcast_ln386_6_fu_890_p1[62:0];
assign trunc_ln386_4_fu_803_p1 = bitcast_ln386_8_fu_785_p1[62:0];
assign trunc_ln386_5_fu_838_p1 = bitcast_ln386_10_fu_821_p1[62:0];
assign trunc_ln386_6_fu_956_p1 = bitcast_ln386_12_fu_939_p1[62:0];
assign trunc_ln386_7_fu_990_p1 = bitcast_ln386_14_fu_973_p1[62:0];
assign trunc_ln386_8_fu_1051_p1 = bitcast_ln386_16_fu_1034_p1[62:0];
assign trunc_ln386_9_fu_1108_p1 = bitcast_ln386_18_fu_1091_p1[62:0];
assign trunc_ln386_fu_734_p1 = bitcast_ln386_fu_717_p1[62:0];
assign work_x_0_address0 = work_x_0_address0_local;
assign work_x_0_address1 = work_x_0_address1_local;
assign work_x_0_ce0 = work_x_0_ce0_local;
assign work_x_0_ce1 = work_x_0_ce1_local;
assign work_x_0_d0 = work_x_0_d0_local;
assign work_x_0_d1 = work_x_0_d1_local;
assign work_x_0_we0 = work_x_0_we0_local;
assign work_x_0_we1 = work_x_0_we1_local;
assign work_x_1_address0 = work_x_1_address0_local;
assign work_x_1_address1 = work_x_1_address1_local;
assign work_x_1_ce0 = work_x_1_ce0_local;
assign work_x_1_ce1 = work_x_1_ce1_local;
assign work_x_1_d0 = work_x_1_d0_local;
assign work_x_1_d1 = work_x_1_d1_local;
assign work_x_1_we0 = work_x_1_we0_local;
assign work_x_1_we1 = work_x_1_we1_local;
assign work_y_0_address0 = work_y_0_address0_local;
assign work_y_0_address1 = work_y_0_address1_local;
assign work_y_0_ce0 = work_y_0_ce0_local;
assign work_y_0_ce1 = work_y_0_ce1_local;
assign work_y_0_d0 = work_y_0_d0_local;
assign work_y_0_d1 = work_y_0_d1_local;
assign work_y_0_we0 = work_y_0_we0_local;
assign work_y_0_we1 = work_y_0_we1_local;
assign work_y_1_address0 = work_y_1_address0_local;
assign work_y_1_address1 = work_y_1_address1_local;
assign work_y_1_ce0 = work_y_1_ce0_local;
assign work_y_1_ce1 = work_y_1_ce1_local;
assign work_y_1_d0 = work_y_1_d0_local;
assign work_y_1_d1 = work_y_1_d1_local;
assign work_y_1_we0 = work_y_1_we0_local;
assign work_y_1_we1 = work_y_1_we1_local;
assign xor_ln386_10_fu_728_p2 = (bit_sel_fu_720_p3 ^ 1'd1);
assign xor_ln386_11_fu_867_p2 = (bit_sel41_fu_859_p3 ^ 1'd1);
assign xor_ln386_12_fu_901_p2 = (bit_sel42_fu_893_p3 ^ 1'd1);
assign xor_ln386_13_fu_797_p2 = (bit_sel43_fu_789_p3 ^ 1'd1);
assign xor_ln386_14_fu_832_p2 = (bit_sel44_fu_824_p3 ^ 1'd1);
assign xor_ln386_15_fu_950_p2 = (bit_sel45_fu_942_p3 ^ 1'd1);
assign xor_ln386_16_fu_984_p2 = (bit_sel46_fu_976_p3 ^ 1'd1);
assign xor_ln386_17_fu_1045_p2 = (bit_sel47_fu_1037_p3 ^ 1'd1);
assign xor_ln386_18_fu_1102_p2 = (bit_sel48_fu_1094_p3 ^ 1'd1);
assign xor_ln386_1_fu_772_p3 = {{xor_ln386_fu_762_p2}, {trunc_ln386_1_fu_768_p1}};
assign xor_ln386_2_fu_877_p3 = {{xor_ln386_11_fu_867_p2}, {trunc_ln386_2_fu_873_p1}};
assign xor_ln386_3_fu_911_p3 = {{xor_ln386_12_fu_901_p2}, {trunc_ln386_3_fu_907_p1}};
assign xor_ln386_4_fu_807_p3 = {{xor_ln386_13_fu_797_p2}, {trunc_ln386_4_fu_803_p1}};
assign xor_ln386_5_fu_842_p3 = {{xor_ln386_14_fu_832_p2}, {trunc_ln386_5_fu_838_p1}};
assign xor_ln386_6_fu_960_p3 = {{xor_ln386_15_fu_950_p2}, {trunc_ln386_6_fu_956_p1}};
assign xor_ln386_7_fu_994_p3 = {{xor_ln386_16_fu_984_p2}, {trunc_ln386_7_fu_990_p1}};
assign xor_ln386_8_fu_1055_p3 = {{xor_ln386_17_fu_1045_p2}, {trunc_ln386_8_fu_1051_p1}};
assign xor_ln386_9_fu_1112_p3 = {{xor_ln386_18_fu_1102_p2}, {trunc_ln386_9_fu_1108_p1}};
assign xor_ln386_fu_762_p2 = (bit_sel40_fu_754_p3 ^ 1'd1);
assign xor_ln3_fu_738_p3 = {{xor_ln386_10_fu_728_p2}, {trunc_ln386_fu_734_p1}};
assign zext_ln114_1_fu_933_p1 = lshr_ln114_1_fu_924_p4;
assign zext_ln114_2_fu_1199_p1 = lshr_ln114_1_reg_1705_pp0_iter14_reg;
assign zext_ln114_fu_1182_p1 = lshr_ln114_1_reg_1705_pp0_iter14_reg;
assign zext_ln367_fu_656_p1 = shl_ln_fu_648_p3;
assign zext_ln369_fu_670_p1 = or_ln_fu_662_p3;
assign zext_ln371_fu_699_p1 = or_ln17_fu_692_p3;
assign zext_ln373_fu_686_p1 = or_ln18_fu_678_p3;
assign zext_ln389_fu_1226_p1 = $unsigned(sext_ln389_fu_1223_p1);
assign zext_ln391_cast_fu_1072_p3 = {{1'd1}, {part_sel_reg_1733_pp0_iter10_reg}};
assign zext_ln391_fu_1079_p1 = $unsigned(zext_ln391_cast_fu_1072_p3);
assign zext_ln392_cast_fu_1129_p3 = {{1'd1}, {lshr_ln114_1_reg_1705_pp0_iter11_reg}};
assign zext_ln392_fu_1136_p1 = $unsigned(zext_ln392_cast_fu_1129_p3);
assign zext_ln393_fu_1167_p1 = $unsigned(sext_ln393_fu_1164_p1);
assign zext_ln394_cast_fu_1185_p3 = {{1'd1}, {zext_ln114_fu_1182_p1}};
assign zext_ln394_fu_1193_p1 = zext_ln394_cast_fu_1185_p3;
assign zext_ln395_fu_1208_p1 = add_ln394_fu_1202_p2;
assign zext_ln396_fu_1217_p1 = $unsigned(sext_ln396_fu_1214_p1);
always @ (posedge ap_clk) begin
    zext_ln367_reg_1267[1:0] <= 2'b00;
    zext_ln367_reg_1267[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln373_reg_1288[1:0] <= 2'b11;
    zext_ln373_reg_1288[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln114_1_reg_1712[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln391_cast_reg_1826[5] <= 1'b1;
    zext_ln391_cast_reg_1826_pp0_iter11_reg[5] <= 1'b1;
    zext_ln391_cast_reg_1826_pp0_iter12_reg[5] <= 1'b1;
    zext_ln391_cast_reg_1826_pp0_iter13_reg[5] <= 1'b1;
    zext_ln391_cast_reg_1826_pp0_iter14_reg[5] <= 1'b1;
    zext_ln391_reg_1832[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000001;
    zext_ln392_cast_reg_1864[6] <= 1'b1;
    zext_ln392_cast_reg_1864_pp0_iter12_reg[6] <= 1'b1;
    zext_ln392_cast_reg_1864_pp0_iter13_reg[6] <= 1'b1;
    zext_ln392_cast_reg_1864_pp0_iter14_reg[6] <= 1'b1;
    zext_ln392_reg_1869[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000001;
    zext_ln393_reg_1910[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000011;
    zext_ln393_reg_1910_pp0_iter15_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000011;
    zext_ln394_reg_1922[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000010;
    zext_ln394_reg_1922_pp0_iter15_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000010;
    zext_ln395_reg_1928[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln395_reg_1928_pp0_iter15_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln396_reg_1934[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000011;
    zext_ln389_reg_1940[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000111;
    zext_ln389_reg_1940_pp0_iter16_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000111;
end
endmodule 
