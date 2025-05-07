module kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln277,v262_0_address0,v262_0_ce0,v262_0_q0,v262_1_address0,v262_1_ce0,v262_1_q0,phi_mul,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1,cmp11); 
parameter    ap_ST_fsm_pp0_stage0 = 12'd1;
parameter    ap_ST_fsm_pp0_stage1 = 12'd2;
parameter    ap_ST_fsm_pp0_stage2 = 12'd4;
parameter    ap_ST_fsm_pp0_stage3 = 12'd8;
parameter    ap_ST_fsm_pp0_stage4 = 12'd16;
parameter    ap_ST_fsm_pp0_stage5 = 12'd32;
parameter    ap_ST_fsm_pp0_stage6 = 12'd64;
parameter    ap_ST_fsm_pp0_stage7 = 12'd128;
parameter    ap_ST_fsm_pp0_stage8 = 12'd256;
parameter    ap_ST_fsm_pp0_stage9 = 12'd512;
parameter    ap_ST_fsm_pp0_stage10 = 12'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 12'd2048;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] zext_ln277;
output  [14:0] v262_0_address0;
output   v262_0_ce0;
input  [31:0] v262_0_q0;
output  [14:0] v262_1_address0;
output   v262_1_ce0;
input  [31:0] v262_1_q0;
input  [15:0] phi_mul;
output  [15:0] v263_address0;
output   v263_ce0;
input  [31:0] v263_q0;
output  [15:0] v263_address1;
output   v263_ce1;
input  [31:0] v263_q1;
output  [15:0] v261_address0;
output   v261_ce0;
output   v261_we0;
output  [31:0] v261_d0;
input  [31:0] v261_q0;
output  [15:0] v261_address1;
output   v261_ce1;
output   v261_we1;
output  [31:0] v261_d1;
input  [31:0] v261_q1;
input  [0:0] cmp11;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_subdone;
reg   [0:0] icmp_ln278_reg_966;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_300_p2;
reg   [31:0] reg_308;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_312;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [14:0] zext_ln277_cast_fu_316_p1;
reg   [14:0] zext_ln277_cast_reg_959;
wire   [0:0] icmp_ln278_fu_338_p2;
reg   [0:0] icmp_ln278_reg_966_pp0_iter1_reg;
reg   [0:0] icmp_ln278_reg_966_pp0_iter2_reg;
reg   [7:0] v198_load_reg_970;
wire   [0:0] icmp_ln279_fu_362_p2;
reg   [0:0] icmp_ln279_reg_975;
wire   [7:0] select_ln278_1_fu_368_p3;
reg   [7:0] select_ln278_1_reg_980;
wire   [6:0] lshr_ln_fu_376_p4;
reg   [6:0] lshr_ln_reg_989;
wire   [15:0] mul_ln280_fu_409_p2;
reg   [15:0] mul_ln280_reg_1001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [15:0] zext_ln283_fu_415_p1;
reg   [15:0] zext_ln283_reg_1007;
wire   [15:0] zext_ln289_fu_447_p1;
reg   [15:0] zext_ln289_reg_1022;
wire   [15:0] mul_ln293_fu_483_p2;
reg   [15:0] mul_ln293_reg_1037;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [15:0] v261_addr_reg_1043;
reg   [15:0] v261_addr_reg_1043_pp0_iter1_reg;
wire   [31:0] v202_fu_498_p1;
reg   [31:0] v202_reg_1048;
reg   [31:0] v202_reg_1048_pp0_iter1_reg;
reg   [15:0] v261_addr_1_reg_1053;
reg   [15:0] v261_addr_1_reg_1053_pp0_iter1_reg;
wire   [31:0] v207_fu_511_p1;
reg   [31:0] v207_reg_1058;
reg   [31:0] v207_reg_1058_pp0_iter1_reg;
wire   [15:0] mul_ln304_fu_529_p2;
reg   [15:0] mul_ln304_reg_1073;
reg   [15:0] v261_addr_2_reg_1079;
reg   [15:0] v261_addr_2_reg_1079_pp0_iter1_reg;
wire   [31:0] v200_fu_548_p3;
reg   [31:0] v200_reg_1084;
reg   [15:0] v261_addr_3_reg_1089;
reg   [15:0] v261_addr_3_reg_1089_pp0_iter1_reg;
wire   [31:0] v206_fu_568_p3;
reg   [31:0] v206_reg_1094;
wire   [31:0] v201_fu_575_p1;
reg   [31:0] v201_reg_1099;
wire   [31:0] v212_fu_579_p1;
reg   [31:0] v212_reg_1104;
wire   [15:0] mul_ln315_fu_597_p2;
reg   [15:0] mul_ln315_reg_1119;
reg   [15:0] v261_addr_4_reg_1125;
reg   [15:0] v261_addr_4_reg_1125_pp0_iter1_reg;
reg   [15:0] v261_addr_5_reg_1130;
reg   [15:0] v261_addr_5_reg_1130_pp0_iter1_reg;
wire   [31:0] v211_fu_625_p3;
reg   [31:0] v211_reg_1135;
wire   [31:0] v216_fu_636_p3;
reg   [31:0] v216_reg_1140;
wire   [31:0] v221_fu_643_p1;
reg   [31:0] v221_reg_1145;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] v230_fu_647_p1;
reg   [31:0] v230_reg_1150;
wire   [15:0] mul_ln326_fu_660_p2;
reg   [15:0] mul_ln326_reg_1155;
wire   [7:0] empty_23_fu_671_p2;
reg   [7:0] empty_23_reg_1171;
reg   [15:0] v261_addr_6_reg_1176;
reg   [15:0] v261_addr_6_reg_1176_pp0_iter1_reg;
reg   [15:0] v261_addr_7_reg_1181;
reg   [15:0] v261_addr_7_reg_1181_pp0_iter1_reg;
wire   [31:0] v220_fu_698_p3;
reg   [31:0] v220_reg_1186;
wire   [31:0] v225_fu_709_p3;
reg   [31:0] v225_reg_1191;
wire   [31:0] v239_fu_716_p1;
reg   [31:0] v239_reg_1196;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] v248_fu_729_p1;
reg   [31:0] v248_reg_1201;
reg   [15:0] v261_addr_8_reg_1206;
reg   [15:0] v261_addr_8_reg_1206_pp0_iter1_reg;
wire   [15:0] add_ln337_fu_742_p2;
reg   [15:0] add_ln337_reg_1211;
reg   [15:0] v261_addr_9_reg_1216;
reg   [15:0] v261_addr_9_reg_1216_pp0_iter1_reg;
wire   [15:0] add_ln343_fu_756_p2;
reg   [15:0] add_ln343_reg_1222;
wire   [31:0] v229_fu_765_p3;
reg   [31:0] v229_reg_1227;
wire   [31:0] v234_fu_776_p3;
reg   [31:0] v234_reg_1232;
reg   [15:0] v261_addr_10_reg_1237;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [15:0] v261_addr_10_reg_1237_pp0_iter1_reg;
reg   [15:0] v261_addr_10_reg_1237_pp0_iter2_reg;
reg   [15:0] v261_addr_11_reg_1243;
reg   [15:0] v261_addr_11_reg_1243_pp0_iter1_reg;
reg   [15:0] v261_addr_11_reg_1243_pp0_iter2_reg;
wire   [31:0] v238_fu_795_p3;
reg   [31:0] v238_reg_1248;
wire   [31:0] v243_fu_806_p3;
reg   [31:0] v243_reg_1253;
wire   [31:0] grp_fu_304_p2;
reg   [31:0] v203_reg_1258;
wire   [31:0] v247_fu_817_p3;
reg   [31:0] v247_reg_1263;
wire   [31:0] v252_fu_828_p3;
reg   [31:0] v252_reg_1268;
reg   [31:0] v208_reg_1273;
reg   [31:0] v213_reg_1278;
reg   [31:0] v217_reg_1283;
reg   [31:0] v222_reg_1288;
reg   [31:0] v226_reg_1293;
reg   [31:0] v231_reg_1298;
reg   [31:0] v235_reg_1303;
reg   [31:0] v240_reg_1308;
reg   [31:0] v214_reg_1313;
reg   [31:0] v244_reg_1318;
reg   [31:0] v218_reg_1323;
reg   [31:0] v249_reg_1328;
reg   [31:0] v223_reg_1333;
reg   [31:0] v253_reg_1338;
reg   [31:0] v250_reg_1343;
reg   [31:0] v254_reg_1348;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln283_1_fu_424_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln289_1_fu_456_p1;
wire   [63:0] zext_ln280_1_fu_493_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln287_fu_506_p1;
wire   [63:0] p_cast13_fu_515_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln293_1_fu_539_p1;
wire   [63:0] zext_ln299_fu_559_p1;
wire   [63:0] p_cast_fu_583_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln304_1_fu_607_p1;
wire   [63:0] zext_ln310_fu_616_p1;
wire   [63:0] p_cast14_fu_666_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln315_1_fu_680_p1;
wire   [63:0] zext_ln321_fu_689_p1;
wire   [63:0] zext_ln326_1_fu_737_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln332_fu_751_p1;
wire   [63:0] zext_ln337_1_fu_783_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln343_fu_787_p1;
reg   [7:0] v198_fu_82;
wire   [7:0] add_ln279_fu_461_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v198_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v197_fu_86;
reg   [7:0] ap_sig_allocacmp_v197_load;
reg   [11:0] indvar_flatten_fu_90;
wire   [11:0] add_ln278_1_fu_344_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v263_ce1_local;
reg    v263_ce0_local;
reg    v261_ce1_local;
reg   [15:0] v261_address1_local;
reg    v261_ce0_local;
reg   [15:0] v261_address0_local;
reg    v261_we1_local;
reg   [31:0] v261_d1_local;
wire   [31:0] bitcast_ln286_fu_835_p1;
wire    ap_block_pp0_stage8;
reg    v261_we0_local;
reg   [31:0] v261_d0_local;
wire   [31:0] bitcast_ln292_fu_840_p1;
wire   [31:0] bitcast_ln298_fu_845_p1;
wire    ap_block_pp0_stage9;
wire   [31:0] bitcast_ln303_fu_849_p1;
wire   [31:0] bitcast_ln309_fu_853_p1;
wire    ap_block_pp0_stage10;
wire   [31:0] bitcast_ln314_fu_857_p1;
wire   [31:0] bitcast_ln320_fu_862_p1;
wire    ap_block_pp0_stage11;
wire   [31:0] bitcast_ln325_fu_867_p1;
wire   [31:0] bitcast_ln331_fu_872_p1;
wire   [31:0] bitcast_ln336_fu_877_p1;
wire   [31:0] bitcast_ln342_fu_882_p1;
wire   [31:0] bitcast_ln347_fu_886_p1;
reg    v262_0_ce0_local;
reg   [14:0] v262_0_address0_local;
reg    v262_1_ce0_local;
reg   [14:0] v262_1_address0_local;
reg   [31:0] grp_fu_300_p0;
reg   [31:0] grp_fu_300_p1;
reg   [31:0] grp_fu_304_p0;
reg   [31:0] grp_fu_304_p1;
wire   [7:0] add_ln278_fu_356_p2;
wire   [7:0] mul_ln280_fu_409_p0;
wire   [8:0] mul_ln280_fu_409_p1;
wire   [7:0] select_ln278_fu_400_p3;
wire   [15:0] add_ln283_fu_419_p2;
wire   [6:0] tmp_2_fu_429_p4;
wire   [7:0] or_ln_fu_439_p3;
wire   [15:0] add_ln289_fu_451_p2;
wire   [7:0] tmp_1_fu_472_p3;
wire   [7:0] mul_ln293_fu_483_p0;
wire   [8:0] mul_ln293_fu_483_p1;
wire   [15:0] add_ln280_fu_489_p2;
wire   [15:0] add_ln287_fu_502_p2;
wire   [14:0] grp_fu_890_p3;
wire   [7:0] empty_14_fu_520_p2;
wire   [7:0] mul_ln304_fu_529_p0;
wire   [8:0] mul_ln304_fu_529_p1;
wire   [15:0] add_ln293_fu_535_p2;
wire   [31:0] v199_fu_544_p1;
wire   [15:0] add_ln299_fu_555_p2;
wire   [31:0] v205_fu_564_p1;
wire   [14:0] grp_fu_898_p4;
wire   [7:0] empty_18_fu_588_p2;
wire   [7:0] mul_ln315_fu_597_p0;
wire   [8:0] mul_ln315_fu_597_p1;
wire   [15:0] add_ln304_fu_603_p2;
wire   [15:0] add_ln310_fu_612_p2;
wire   [31:0] v210_fu_621_p1;
wire   [31:0] v215_fu_632_p1;
wire   [7:0] empty_19_fu_651_p2;
wire   [7:0] mul_ln326_fu_660_p0;
wire   [8:0] mul_ln326_fu_660_p1;
wire   [14:0] grp_fu_907_p4;
wire   [15:0] add_ln315_fu_676_p2;
wire   [15:0] add_ln321_fu_685_p2;
wire   [31:0] v219_fu_694_p1;
wire   [31:0] v224_fu_705_p1;
wire   [7:0] mul_ln337_fu_723_p0;
wire   [8:0] mul_ln337_fu_723_p1;
wire   [15:0] add_ln326_fu_733_p2;
wire   [15:0] mul_ln337_fu_723_p2;
wire   [15:0] add_ln332_fu_747_p2;
wire   [31:0] v228_fu_761_p1;
wire   [31:0] v233_fu_772_p1;
wire   [31:0] v237_fu_791_p1;
wire   [31:0] v242_fu_802_p1;
wire   [31:0] v246_fu_813_p1;
wire   [31:0] v251_fu_824_p1;
wire   [7:0] grp_fu_890_p0;
wire   [6:0] grp_fu_890_p1;
wire   [7:0] grp_fu_890_p2;
wire   [0:0] grp_fu_898_p1;
wire   [7:0] grp_fu_898_p2;
wire   [7:0] grp_fu_898_p3;
wire   [1:0] grp_fu_907_p1;
wire   [7:0] grp_fu_907_p2;
wire   [7:0] grp_fu_907_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [14:0] grp_fu_890_p10;
wire   [15:0] mul_ln280_fu_409_p00;
wire   [15:0] mul_ln293_fu_483_p00;
wire   [15:0] mul_ln304_fu_529_p00;
wire   [15:0] mul_ln315_fu_597_p00;
wire   [15:0] mul_ln326_fu_660_p00;
wire   [15:0] mul_ln337_fu_723_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v198_fu_82 = 8'd0;
#0 v197_fu_86 = 8'd0;
#0 indvar_flatten_fu_90 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_300_p0),.din1(grp_fu_300_p1),.ce(1'b1),.dout(grp_fu_300_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_304_p0),.din1(grp_fu_304_p1),.ce(1'b1),.dout(grp_fu_304_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U3(.din0(mul_ln280_fu_409_p0),.din1(mul_ln280_fu_409_p1),.dout(mul_ln280_fu_409_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U4(.din0(mul_ln293_fu_483_p0),.din1(mul_ln293_fu_483_p1),.dout(mul_ln293_fu_483_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U5(.din0(mul_ln304_fu_529_p0),.din1(mul_ln304_fu_529_p1),.dout(mul_ln304_fu_529_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U6(.din0(mul_ln315_fu_597_p0),.din1(mul_ln315_fu_597_p1),.dout(mul_ln315_fu_597_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U7(.din0(mul_ln326_fu_660_p0),.din1(mul_ln326_fu_660_p1),.dout(mul_ln326_fu_660_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U8(.din0(mul_ln337_fu_723_p0),.din1(mul_ln337_fu_723_p1),.dout(mul_ln337_fu_723_p2));
kernel_3mm_mac_muladd_8ns_7ns_8ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_8ns_15_4_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_890_p0),.din1(grp_fu_890_p1),.din2(grp_fu_890_p2),.ce(1'b1),.dout(grp_fu_890_p3));
kernel_3mm_ama_addmuladd_7ns_1ns_8ns_8ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 1 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 15 ))
ama_addmuladd_7ns_1ns_8ns_8ns_15_4_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(lshr_ln_reg_989),.din1(grp_fu_898_p1),.din2(grp_fu_898_p2),.din3(grp_fu_898_p3),.ce(1'b1),.dout(grp_fu_898_p4));
kernel_3mm_ama_addmuladd_7ns_2ns_8ns_8ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 7 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 15 ))
ama_addmuladd_7ns_2ns_8ns_8ns_15_4_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(lshr_ln_reg_989),.din1(grp_fu_907_p1),.din2(grp_fu_907_p2),.din3(grp_fu_907_p3),.ce(1'b1),.dout(grp_fu_907_p4));
kernel_3mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage11),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage11)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_338_p2 == 1'd0))) begin
            indvar_flatten_fu_90 <= add_ln278_1_fu_344_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_90 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_338_p2 == 1'd0))) begin
            v197_fu_86 <= select_ln278_1_fu_368_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v197_fu_86 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v198_fu_82 <= 8'd0;
    end else if (((icmp_ln278_reg_966 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_fu_82 <= add_ln279_fu_461_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln337_reg_1211 <= add_ln337_fu_742_p2;
        add_ln343_reg_1222 <= add_ln343_fu_756_p2;
        v229_reg_1227 <= v229_fu_765_p3;
        v234_reg_1232 <= v234_fu_776_p3;
        v239_reg_1196 <= v239_fu_716_p1;
        v248_reg_1201 <= v248_fu_729_p1;
        v261_addr_8_reg_1206 <= zext_ln326_1_fu_737_p1;
        v261_addr_8_reg_1206_pp0_iter1_reg <= v261_addr_8_reg_1206;
        v261_addr_9_reg_1216 <= zext_ln332_fu_751_p1;
        v261_addr_9_reg_1216_pp0_iter1_reg <= v261_addr_9_reg_1216;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        empty_23_reg_1171 <= empty_23_fu_671_p2;
        mul_ln326_reg_1155 <= mul_ln326_fu_660_p2;
        v220_reg_1186 <= v220_fu_698_p3;
        v221_reg_1145 <= v221_fu_643_p1;
        v225_reg_1191 <= v225_fu_709_p3;
        v230_reg_1150 <= v230_fu_647_p1;
        v261_addr_6_reg_1176 <= zext_ln315_1_fu_680_p1;
        v261_addr_6_reg_1176_pp0_iter1_reg <= v261_addr_6_reg_1176;
        v261_addr_7_reg_1181 <= zext_ln321_fu_689_p1;
        v261_addr_7_reg_1181_pp0_iter1_reg <= v261_addr_7_reg_1181;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln278_reg_966 <= icmp_ln278_fu_338_p2;
        icmp_ln278_reg_966_pp0_iter1_reg <= icmp_ln278_reg_966;
        icmp_ln278_reg_966_pp0_iter2_reg <= icmp_ln278_reg_966_pp0_iter1_reg;
        icmp_ln279_reg_975 <= icmp_ln279_fu_362_p2;
        lshr_ln_reg_989 <= {{select_ln278_1_fu_368_p3[7:1]}};
        select_ln278_1_reg_980 <= select_ln278_1_fu_368_p3;
        v198_load_reg_970 <= ap_sig_allocacmp_v198_load;
        zext_ln277_cast_reg_959[7 : 0] <= zext_ln277_cast_fu_316_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln280_reg_1001 <= mul_ln280_fu_409_p2;
        zext_ln283_reg_1007[7 : 0] <= zext_ln283_fu_415_p1[7 : 0];
        zext_ln289_reg_1022[7 : 1] <= zext_ln289_fu_447_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln293_reg_1037 <= mul_ln293_fu_483_p2;
        v202_reg_1048 <= v202_fu_498_p1;
        v202_reg_1048_pp0_iter1_reg <= v202_reg_1048;
        v207_reg_1058 <= v207_fu_511_p1;
        v207_reg_1058_pp0_iter1_reg <= v207_reg_1058;
        v261_addr_1_reg_1053 <= zext_ln287_fu_506_p1;
        v261_addr_1_reg_1053_pp0_iter1_reg <= v261_addr_1_reg_1053;
        v261_addr_reg_1043 <= zext_ln280_1_fu_493_p1;
        v261_addr_reg_1043_pp0_iter1_reg <= v261_addr_reg_1043;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln304_reg_1073 <= mul_ln304_fu_529_p2;
        v200_reg_1084 <= v200_fu_548_p3;
        v206_reg_1094 <= v206_fu_568_p3;
        v261_addr_2_reg_1079 <= zext_ln293_1_fu_539_p1;
        v261_addr_2_reg_1079_pp0_iter1_reg <= v261_addr_2_reg_1079;
        v261_addr_3_reg_1089 <= zext_ln299_fu_559_p1;
        v261_addr_3_reg_1089_pp0_iter1_reg <= v261_addr_3_reg_1089;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln315_reg_1119 <= mul_ln315_fu_597_p2;
        v201_reg_1099 <= v201_fu_575_p1;
        v211_reg_1135 <= v211_fu_625_p3;
        v212_reg_1104 <= v212_fu_579_p1;
        v216_reg_1140 <= v216_fu_636_p3;
        v261_addr_4_reg_1125 <= zext_ln304_1_fu_607_p1;
        v261_addr_4_reg_1125_pp0_iter1_reg <= v261_addr_4_reg_1125;
        v261_addr_5_reg_1130 <= zext_ln310_fu_616_p1;
        v261_addr_5_reg_1130_pp0_iter1_reg <= v261_addr_5_reg_1130;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_308 <= grp_fu_300_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_312 <= grp_fu_300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v203_reg_1258 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v208_reg_1273 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v213_reg_1278 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v214_reg_1313 <= grp_fu_300_p2;
        v244_reg_1318 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v217_reg_1283 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v218_reg_1323 <= grp_fu_300_p2;
        v249_reg_1328 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v222_reg_1288 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v223_reg_1333 <= grp_fu_300_p2;
        v253_reg_1338 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v226_reg_1293 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v231_reg_1298 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v235_reg_1303 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v238_reg_1248 <= v238_fu_795_p3;
        v243_reg_1253 <= v243_fu_806_p3;
        v261_addr_10_reg_1237 <= zext_ln337_1_fu_783_p1;
        v261_addr_10_reg_1237_pp0_iter1_reg <= v261_addr_10_reg_1237;
        v261_addr_10_reg_1237_pp0_iter2_reg <= v261_addr_10_reg_1237_pp0_iter1_reg;
        v261_addr_11_reg_1243 <= zext_ln343_fu_787_p1;
        v261_addr_11_reg_1243_pp0_iter1_reg <= v261_addr_11_reg_1243;
        v261_addr_11_reg_1243_pp0_iter2_reg <= v261_addr_11_reg_1243_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v240_reg_1308 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v247_reg_1263 <= v247_fu_817_p3;
        v252_reg_1268 <= v252_fu_828_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v250_reg_1343 <= grp_fu_300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v254_reg_1348 <= grp_fu_300_p2;
    end
end
always @ (*) begin
    if (((icmp_ln278_reg_966 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln278_reg_966_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v197_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v197_load = v197_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v198_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v198_load = v198_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_300_p0 = v252_reg_1268;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_300_p0 = v247_reg_1263;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_300_p0 = v243_reg_1253;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_300_p0 = v238_reg_1248;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_300_p0 = v234_reg_1232;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_300_p0 = v229_reg_1227;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_300_p0 = v225_reg_1191;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p0 = v220_reg_1186;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_300_p0 = v216_reg_1140;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_300_p0 = v211_reg_1135;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_300_p0 = v206_reg_1094;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_300_p0 = v200_reg_1084;
    end else begin
        grp_fu_300_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_300_p1 = v253_reg_1338;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_300_p1 = v249_reg_1328;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_300_p1 = v244_reg_1318;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_300_p1 = v240_reg_1308;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_300_p1 = v235_reg_1303;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_300_p1 = v231_reg_1298;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_300_p1 = v226_reg_1293;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_300_p1 = v222_reg_1288;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_300_p1 = v217_reg_1283;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_300_p1 = v213_reg_1278;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_300_p1 = v208_reg_1273;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_300_p1 = v203_reg_1258;
    end else begin
        grp_fu_300_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_304_p0 = v248_reg_1201;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_304_p0 = v239_reg_1196;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_304_p0 = v230_reg_1150;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_304_p0 = v221_reg_1145;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_304_p0 = v212_reg_1104;
    end else if ((((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_304_p0 = v201_reg_1099;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_304_p1 = v207_reg_1058_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_304_p1 = v202_reg_1048_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_304_p1 = v207_reg_1058;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_304_p1 = v202_reg_1048;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_address0_local = v261_addr_11_reg_1243_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_address0_local = v261_addr_10_reg_1237_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_address0_local = v261_addr_7_reg_1181_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_address0_local = v261_addr_5_reg_1130_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_address0_local = v261_addr_3_reg_1089_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_address0_local = v261_addr_1_reg_1053_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_address0_local = zext_ln343_fu_787_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_address0_local = zext_ln332_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_address0_local = zext_ln321_fu_689_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_address0_local = zext_ln310_fu_616_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_address0_local = zext_ln299_fu_559_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_address0_local = zext_ln287_fu_506_p1;
    end else begin
        v261_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_address1_local = v261_addr_9_reg_1216_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_address1_local = v261_addr_8_reg_1206_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_address1_local = v261_addr_6_reg_1176_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_address1_local = v261_addr_4_reg_1125_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_address1_local = v261_addr_2_reg_1079_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_address1_local = v261_addr_reg_1043_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_address1_local = zext_ln337_1_fu_783_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_address1_local = zext_ln326_1_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_address1_local = zext_ln315_1_fu_680_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_address1_local = zext_ln304_1_fu_607_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_address1_local = zext_ln293_1_fu_539_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_address1_local = zext_ln280_1_fu_493_p1;
    end else begin
        v261_address1_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v261_ce0_local = 1'b1;
    end else begin
        v261_ce0_local = 1'b0;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1== 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v261_ce1_local = 1'b1;
    end else begin
        v261_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_d0_local = bitcast_ln347_fu_886_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_d0_local = bitcast_ln342_fu_882_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_d0_local = bitcast_ln325_fu_867_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_d0_local = bitcast_ln314_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_d0_local = bitcast_ln303_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_d0_local = bitcast_ln292_fu_840_p1;
    end else begin
        v261_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_d1_local = bitcast_ln336_fu_877_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_d1_local = bitcast_ln331_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_d1_local = bitcast_ln320_fu_862_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_d1_local = bitcast_ln309_fu_853_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_d1_local = bitcast_ln298_fu_845_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_d1_local = bitcast_ln286_fu_835_p1;
    end else begin
        v261_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v261_we0_local = 1'b1;
    end else begin
        v261_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)))) begin
        v261_we1_local = 1'b1;
    end else begin
        v261_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v262_0_address0_local = p_cast14_fu_666_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v262_0_address0_local = p_cast_fu_583_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_0_address0_local = p_cast13_fu_515_p1;
        end else begin
            v262_0_address0_local = 'bx;
        end
    end else begin
        v262_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v262_0_ce0_local = 1'b1;
    end else begin
        v262_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v262_1_address0_local = p_cast14_fu_666_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v262_1_address0_local = p_cast_fu_583_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_1_address0_local = p_cast13_fu_515_p1;
        end else begin
            v262_1_address0_local = 'bx;
        end
    end else begin
        v262_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v262_1_ce0_local = 1'b1;
    end else begin
        v262_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v263_ce0_local = 1'b1;
    end else begin
        v263_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v263_ce1_local = 1'b1;
    end else begin
        v263_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) & (ap_idle_pp0_0to1 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln278_1_fu_344_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln278_fu_356_p2 = (ap_sig_allocacmp_v197_load + 8'd6);
assign add_ln279_fu_461_p2 = (select_ln278_fu_400_p3 + 8'd2);
assign add_ln280_fu_489_p2 = (mul_ln280_reg_1001 + zext_ln283_reg_1007);
assign add_ln283_fu_419_p2 = (phi_mul + zext_ln283_fu_415_p1);
assign add_ln287_fu_502_p2 = (mul_ln280_reg_1001 + zext_ln289_reg_1022);
assign add_ln289_fu_451_p2 = (phi_mul + zext_ln289_fu_447_p1);
assign add_ln293_fu_535_p2 = (mul_ln293_reg_1037 + zext_ln283_reg_1007);
assign add_ln299_fu_555_p2 = (mul_ln293_reg_1037 + zext_ln289_reg_1022);
assign add_ln304_fu_603_p2 = (mul_ln304_reg_1073 + zext_ln283_reg_1007);
assign add_ln310_fu_612_p2 = (mul_ln304_reg_1073 + zext_ln289_reg_1022);
assign add_ln315_fu_676_p2 = (mul_ln315_reg_1119 + zext_ln283_reg_1007);
assign add_ln321_fu_685_p2 = (mul_ln315_reg_1119 + zext_ln289_reg_1022);
assign add_ln326_fu_733_p2 = (mul_ln326_reg_1155 + zext_ln283_reg_1007);
assign add_ln332_fu_747_p2 = (mul_ln326_reg_1155 + zext_ln289_reg_1022);
assign add_ln337_fu_742_p2 = (mul_ln337_fu_723_p2 + zext_ln283_reg_1007);
assign add_ln343_fu_756_p2 = (mul_ln337_fu_723_p2 + zext_ln289_reg_1022);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage11;
assign ap_ready = ap_ready_sig;
assign bitcast_ln286_fu_835_p1 = reg_308;
assign bitcast_ln292_fu_840_p1 = reg_312;
assign bitcast_ln298_fu_845_p1 = v214_reg_1313;
assign bitcast_ln303_fu_849_p1 = v218_reg_1323;
assign bitcast_ln309_fu_853_p1 = v223_reg_1333;
assign bitcast_ln314_fu_857_p1 = reg_308;
assign bitcast_ln320_fu_862_p1 = reg_312;
assign bitcast_ln325_fu_867_p1 = reg_308;
assign bitcast_ln331_fu_872_p1 = reg_308;
assign bitcast_ln336_fu_877_p1 = reg_308;
assign bitcast_ln342_fu_882_p1 = v250_reg_1343;
assign bitcast_ln347_fu_886_p1 = v254_reg_1348;
assign empty_14_fu_520_p2 = (select_ln278_1_reg_980 + 8'd2);
assign empty_18_fu_588_p2 = (select_ln278_1_reg_980 + 8'd3);
assign empty_19_fu_651_p2 = (select_ln278_1_reg_980 + 8'd4);
assign empty_23_fu_671_p2 = (select_ln278_1_reg_980 + 8'd5);
assign grp_fu_890_p0 = 15'd200;
assign grp_fu_890_p1 = grp_fu_890_p10;
assign grp_fu_890_p10 = lshr_ln_fu_376_p4;
assign grp_fu_890_p2 = zext_ln277_cast_reg_959;
assign grp_fu_898_p1 = 7'd1;
assign grp_fu_898_p2 = 15'd200;
assign grp_fu_898_p3 = zext_ln277_cast_reg_959;
assign grp_fu_907_p1 = 7'd2;
assign grp_fu_907_p2 = 15'd200;
assign grp_fu_907_p3 = zext_ln277_cast_reg_959;
assign icmp_ln278_fu_338_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2850) ? 1'b1 : 1'b0);
assign icmp_ln279_fu_362_p2 = ((ap_sig_allocacmp_v198_load < 8'd190) ? 1'b1 : 1'b0);
assign lshr_ln_fu_376_p4 = {{select_ln278_1_fu_368_p3[7:1]}};
assign mul_ln280_fu_409_p0 = mul_ln280_fu_409_p00;
assign mul_ln280_fu_409_p00 = select_ln278_1_reg_980;
assign mul_ln280_fu_409_p1 = 16'd190;
assign mul_ln293_fu_483_p0 = mul_ln293_fu_483_p00;
assign mul_ln293_fu_483_p00 = tmp_1_fu_472_p3;
assign mul_ln293_fu_483_p1 = 16'd190;
assign mul_ln304_fu_529_p0 = mul_ln304_fu_529_p00;
assign mul_ln304_fu_529_p00 = empty_14_fu_520_p2;
assign mul_ln304_fu_529_p1 = 16'd190;
assign mul_ln315_fu_597_p0 = mul_ln315_fu_597_p00;
assign mul_ln315_fu_597_p00 = empty_18_fu_588_p2;
assign mul_ln315_fu_597_p1 = 16'd190;
assign mul_ln326_fu_660_p0 = mul_ln326_fu_660_p00;
assign mul_ln326_fu_660_p00 = empty_19_fu_651_p2;
assign mul_ln326_fu_660_p1 = 16'd190;
assign mul_ln337_fu_723_p0 = mul_ln337_fu_723_p00;
assign mul_ln337_fu_723_p00 = empty_23_reg_1171;
assign mul_ln337_fu_723_p1 = 16'd190;
assign or_ln_fu_439_p3 = {{tmp_2_fu_429_p4}, {1'd1}};
assign p_cast13_fu_515_p1 = grp_fu_890_p3;
assign p_cast14_fu_666_p1 = grp_fu_907_p4;
assign p_cast_fu_583_p1 = grp_fu_898_p4;
assign select_ln278_1_fu_368_p3 = ((icmp_ln279_fu_362_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v197_load : add_ln278_fu_356_p2);
assign select_ln278_fu_400_p3 = ((icmp_ln279_reg_975[0:0] == 1'b1) ? v198_load_reg_970 : 8'd0);
assign tmp_1_fu_472_p3 = {{lshr_ln_reg_989}, {1'd1}};
assign tmp_2_fu_429_p4 = {{select_ln278_fu_400_p3[7:1]}};
assign v199_fu_544_p1 = v261_q1;
assign v200_fu_548_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v199_fu_544_p1);
assign v201_fu_575_p1 = v262_0_q0;
assign v202_fu_498_p1 = v263_q1;
assign v205_fu_564_p1 = v261_q0;
assign v206_fu_568_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v205_fu_564_p1);
assign v207_fu_511_p1 = v263_q0;
assign v210_fu_621_p1 = v261_q1;
assign v211_fu_625_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v210_fu_621_p1);
assign v212_fu_579_p1 = v262_1_q0;
assign v215_fu_632_p1 = v261_q0;
assign v216_fu_636_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v215_fu_632_p1);
assign v219_fu_694_p1 = v261_q1;
assign v220_fu_698_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v219_fu_694_p1);
assign v221_fu_643_p1 = v262_0_q0;
assign v224_fu_705_p1 = v261_q0;
assign v225_fu_709_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v224_fu_705_p1);
assign v228_fu_761_p1 = v261_q1;
assign v229_fu_765_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v228_fu_761_p1);
assign v230_fu_647_p1 = v262_1_q0;
assign v233_fu_772_p1 = v261_q0;
assign v234_fu_776_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v233_fu_772_p1);
assign v237_fu_791_p1 = v261_q1;
assign v238_fu_795_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v237_fu_791_p1);
assign v239_fu_716_p1 = v262_0_q0;
assign v242_fu_802_p1 = v261_q0;
assign v243_fu_806_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v242_fu_802_p1);
assign v246_fu_813_p1 = v261_q1;
assign v247_fu_817_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v246_fu_813_p1);
assign v248_fu_729_p1 = v262_1_q0;
assign v251_fu_824_p1 = v261_q0;
assign v252_fu_828_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v251_fu_824_p1);
assign v261_address0 = v261_address0_local;
assign v261_address1 = v261_address1_local;
assign v261_ce0 = v261_ce0_local;
assign v261_ce1 = v261_ce1_local;
assign v261_d0 = v261_d0_local;
assign v261_d1 = v261_d1_local;
assign v261_we0 = v261_we0_local;
assign v261_we1 = v261_we1_local;
assign v262_0_address0 = v262_0_address0_local;
assign v262_0_ce0 = v262_0_ce0_local;
assign v262_1_address0 = v262_1_address0_local;
assign v262_1_ce0 = v262_1_ce0_local;
assign v263_address0 = zext_ln289_1_fu_456_p1;
assign v263_address1 = zext_ln283_1_fu_424_p1;
assign v263_ce0 = v263_ce0_local;
assign v263_ce1 = v263_ce1_local;
assign zext_ln277_cast_fu_316_p1 = zext_ln277;
assign zext_ln280_1_fu_493_p1 = add_ln280_fu_489_p2;
assign zext_ln283_1_fu_424_p1 = add_ln283_fu_419_p2;
assign zext_ln283_fu_415_p1 = select_ln278_fu_400_p3;
assign zext_ln287_fu_506_p1 = add_ln287_fu_502_p2;
assign zext_ln289_1_fu_456_p1 = add_ln289_fu_451_p2;
assign zext_ln289_fu_447_p1 = or_ln_fu_439_p3;
assign zext_ln293_1_fu_539_p1 = add_ln293_fu_535_p2;
assign zext_ln299_fu_559_p1 = add_ln299_fu_555_p2;
assign zext_ln304_1_fu_607_p1 = add_ln304_fu_603_p2;
assign zext_ln310_fu_616_p1 = add_ln310_fu_612_p2;
assign zext_ln315_1_fu_680_p1 = add_ln315_fu_676_p2;
assign zext_ln321_fu_689_p1 = add_ln321_fu_685_p2;
assign zext_ln326_1_fu_737_p1 = add_ln326_fu_733_p2;
assign zext_ln332_fu_751_p1 = add_ln332_fu_747_p2;
assign zext_ln337_1_fu_783_p1 = add_ln337_reg_1211;
assign zext_ln343_fu_787_p1 = add_ln343_reg_1222;
always @ (posedge ap_clk) begin
    zext_ln277_cast_reg_959[14:8] <= 7'b0000000;
    zext_ln283_reg_1007[15:8] <= 8'b00000000;
    zext_ln289_reg_1022[0] <= 1'b1;
    zext_ln289_reg_1022[15:8] <= 8'b00000000;
end
endmodule 