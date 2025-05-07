module kernel_3mm_kernel_3mm_node2_Pipeline_label_7_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln277,v262_address0,v262_ce0,v262_q0,phi_mul,v263_address0,v263_ce0,v263_q0,v263_address1,v263_ce1,v263_q1,v261_address0,v261_ce0,v261_we0,v261_d0,v261_q0,v261_address1,v261_ce1,v261_we1,v261_d1,v261_q1,cmp11); 
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
output  [15:0] v262_address0;
output   v262_ce0;
input  [31:0] v262_q0;
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
reg   [0:0] icmp_ln278_reg_981;
reg    ap_condition_exit_pp0_iter0_stage11;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_289_p2;
reg   [31:0] reg_297;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_block_pp0_stage11_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_301;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [15:0] zext_ln277_cast_fu_305_p1;
reg   [15:0] zext_ln277_cast_reg_971;
wire   [0:0] icmp_ln278_fu_327_p2;
reg   [0:0] icmp_ln278_reg_981_pp0_iter1_reg;
reg   [0:0] icmp_ln278_reg_981_pp0_iter2_reg;
reg   [7:0] v198_load_reg_985;
wire   [0:0] icmp_ln279_fu_351_p2;
reg   [0:0] icmp_ln279_reg_990;
wire   [7:0] select_ln278_1_fu_357_p3;
reg   [7:0] select_ln278_1_reg_995;
wire   [15:0] select_ln278_1_cast_fu_365_p1;
reg   [15:0] select_ln278_1_cast_reg_1003;
reg   [6:0] tmp_reg_1009;
wire   [15:0] mul_ln280_fu_395_p2;
reg   [15:0] mul_ln280_reg_1014;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [15:0] tmp_1_cast_fu_407_p1;
reg   [15:0] tmp_1_cast_reg_1020;
wire   [15:0] zext_ln283_fu_411_p1;
reg   [15:0] zext_ln283_reg_1026;
wire   [15:0] zext_ln289_fu_443_p1;
reg   [15:0] zext_ln289_reg_1041;
wire   [15:0] mul_ln293_fu_468_p2;
reg   [15:0] mul_ln293_reg_1056;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [15:0] p_cast1_fu_478_p1;
reg   [15:0] p_cast1_reg_1062;
reg   [15:0] v261_addr_reg_1068;
reg   [15:0] v261_addr_reg_1068_pp0_iter1_reg;
wire   [31:0] v202_fu_491_p1;
reg   [31:0] v202_reg_1073;
reg   [31:0] v202_reg_1073_pp0_iter1_reg;
reg   [15:0] v261_addr_1_reg_1078;
reg   [15:0] v261_addr_1_reg_1078_pp0_iter1_reg;
wire   [31:0] v207_fu_504_p1;
reg   [31:0] v207_reg_1083;
reg   [31:0] v207_reg_1083_pp0_iter1_reg;
wire   [15:0] mul_ln304_fu_512_p2;
reg   [15:0] mul_ln304_reg_1093;
wire   [15:0] p_cast6_fu_522_p1;
reg   [15:0] p_cast6_reg_1099;
reg   [15:0] v261_addr_2_reg_1105;
reg   [15:0] v261_addr_2_reg_1105_pp0_iter1_reg;
wire   [31:0] v200_fu_539_p3;
reg   [31:0] v200_reg_1110;
reg   [15:0] v261_addr_3_reg_1115;
reg   [15:0] v261_addr_3_reg_1115_pp0_iter1_reg;
wire   [31:0] v206_fu_559_p3;
reg   [31:0] v206_reg_1120;
reg   [31:0] v262_load_reg_1125;
wire   [15:0] mul_ln315_fu_570_p2;
reg   [15:0] mul_ln315_reg_1135;
wire   [15:0] p_cast7_fu_580_p1;
reg   [15:0] p_cast7_reg_1141;
reg   [15:0] v261_addr_4_reg_1147;
reg   [15:0] v261_addr_4_reg_1147_pp0_iter1_reg;
reg   [15:0] v261_addr_5_reg_1152;
reg   [15:0] v261_addr_5_reg_1152_pp0_iter1_reg;
wire   [31:0] v211_fu_606_p3;
reg   [31:0] v211_reg_1157;
wire   [31:0] v216_fu_617_p3;
reg   [31:0] v216_reg_1162;
wire   [31:0] v201_fu_624_p1;
reg   [31:0] v201_reg_1167;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] v212_fu_628_p1;
reg   [31:0] v212_reg_1172;
wire   [15:0] mul_ln326_fu_636_p2;
reg   [15:0] mul_ln326_reg_1182;
wire   [15:0] p_cast8_fu_646_p1;
reg   [15:0] p_cast8_reg_1188;
reg   [15:0] v261_addr_6_reg_1194;
reg   [15:0] v261_addr_6_reg_1194_pp0_iter1_reg;
reg   [15:0] v261_addr_7_reg_1199;
reg   [15:0] v261_addr_7_reg_1199_pp0_iter1_reg;
wire   [31:0] v220_fu_672_p3;
reg   [31:0] v220_reg_1204;
wire   [31:0] v225_fu_683_p3;
reg   [31:0] v225_reg_1209;
wire   [31:0] v221_fu_690_p1;
reg   [31:0] v221_reg_1214;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [15:0] v261_addr_8_reg_1224;
reg   [15:0] v261_addr_8_reg_1224_pp0_iter1_reg;
wire   [15:0] add_ln337_fu_712_p2;
reg   [15:0] add_ln337_reg_1229;
reg   [15:0] v261_addr_9_reg_1234;
reg   [15:0] v261_addr_9_reg_1234_pp0_iter1_reg;
wire   [15:0] add_ln343_fu_726_p2;
reg   [15:0] add_ln343_reg_1240;
wire   [31:0] v229_fu_735_p3;
reg   [31:0] v229_reg_1245;
wire   [31:0] v234_fu_746_p3;
reg   [31:0] v234_reg_1250;
wire   [31:0] v230_fu_753_p1;
reg   [31:0] v230_reg_1255;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
reg   [15:0] v261_addr_10_reg_1265;
reg   [15:0] v261_addr_10_reg_1265_pp0_iter1_reg;
reg   [15:0] v261_addr_10_reg_1265_pp0_iter2_reg;
reg   [15:0] v261_addr_11_reg_1271;
reg   [15:0] v261_addr_11_reg_1271_pp0_iter1_reg;
reg   [15:0] v261_addr_11_reg_1271_pp0_iter2_reg;
wire   [31:0] v238_fu_773_p3;
reg   [31:0] v238_reg_1276;
wire   [31:0] v243_fu_784_p3;
reg   [31:0] v243_reg_1281;
wire   [31:0] v239_fu_791_p1;
reg   [31:0] v239_reg_1286;
wire   [31:0] grp_fu_293_p2;
reg   [31:0] v203_reg_1296;
wire   [31:0] v247_fu_803_p3;
reg   [31:0] v247_reg_1301;
wire   [31:0] v252_fu_814_p3;
reg   [31:0] v252_reg_1306;
wire   [31:0] v248_fu_821_p1;
reg   [31:0] v248_reg_1311;
reg   [31:0] v208_reg_1316;
reg   [31:0] v213_reg_1321;
reg   [31:0] v217_reg_1326;
reg   [31:0] v222_reg_1331;
reg   [31:0] v226_reg_1336;
reg   [31:0] v231_reg_1341;
reg   [31:0] v235_reg_1346;
reg   [31:0] v240_reg_1351;
reg   [31:0] v214_reg_1356;
reg   [31:0] v244_reg_1361;
reg   [31:0] v218_reg_1366;
reg   [31:0] v249_reg_1371;
reg   [31:0] v223_reg_1376;
reg   [31:0] v253_reg_1381;
reg   [31:0] v250_reg_1386;
reg   [31:0] v254_reg_1391;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln283_1_fu_420_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln289_1_fu_452_p1;
wire   [63:0] zext_ln280_fu_486_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln287_fu_499_p1;
wire   [63:0] p_cast9_fu_508_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln293_fu_530_p1;
wire   [63:0] zext_ln299_fu_550_p1;
wire   [63:0] p_cast_fu_566_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln304_fu_588_p1;
wire   [63:0] zext_ln310_fu_597_p1;
wire   [63:0] p_cast10_fu_632_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln315_fu_654_p1;
wire   [63:0] zext_ln321_fu_663_p1;
wire   [63:0] p_cast11_fu_694_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln326_fu_707_p1;
wire   [63:0] zext_ln332_fu_721_p1;
wire   [63:0] p_cast12_fu_757_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln337_fu_761_p1;
wire   [63:0] zext_ln343_fu_765_p1;
wire   [63:0] p_cast13_fu_795_p1;
wire    ap_block_pp0_stage8;
reg   [7:0] v198_fu_76;
wire   [7:0] add_ln279_fu_457_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v198_load;
wire    ap_block_pp0_stage0;
reg   [7:0] v197_fu_80;
reg   [7:0] ap_sig_allocacmp_v197_load;
reg   [11:0] indvar_flatten_fu_84;
wire   [11:0] add_ln278_1_fu_333_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v263_ce1_local;
reg    v263_ce0_local;
reg    v261_ce1_local;
reg   [15:0] v261_address1_local;
reg    v261_ce0_local;
reg   [15:0] v261_address0_local;
reg    v261_we1_local;
reg   [31:0] v261_d1_local;
wire   [31:0] bitcast_ln286_fu_825_p1;
reg    v261_we0_local;
reg   [31:0] v261_d0_local;
wire   [31:0] bitcast_ln292_fu_830_p1;
wire   [31:0] bitcast_ln298_fu_835_p1;
wire    ap_block_pp0_stage9;
wire   [31:0] bitcast_ln303_fu_839_p1;
wire   [31:0] bitcast_ln309_fu_843_p1;
wire    ap_block_pp0_stage10;
wire   [31:0] bitcast_ln314_fu_847_p1;
wire   [31:0] bitcast_ln320_fu_852_p1;
wire    ap_block_pp0_stage11;
wire   [31:0] bitcast_ln325_fu_857_p1;
wire   [31:0] bitcast_ln331_fu_862_p1;
wire   [31:0] bitcast_ln336_fu_867_p1;
wire   [31:0] bitcast_ln342_fu_872_p1;
wire   [31:0] bitcast_ln347_fu_876_p1;
reg    v262_ce0_local;
reg   [15:0] v262_address0_local;
reg   [31:0] grp_fu_289_p0;
reg   [31:0] grp_fu_289_p1;
reg   [31:0] grp_fu_293_p0;
reg   [31:0] grp_fu_293_p1;
wire   [7:0] add_ln278_fu_345_p2;
wire   [7:0] mul_ln280_fu_395_p0;
wire   [8:0] mul_ln280_fu_395_p1;
wire   [7:0] tmp_1_fu_400_p3;
wire   [7:0] select_ln278_fu_389_p3;
wire   [15:0] add_ln283_fu_415_p2;
wire   [6:0] tmp_2_fu_425_p4;
wire   [7:0] or_ln_fu_435_p3;
wire   [15:0] add_ln289_fu_447_p2;
wire   [7:0] mul_ln293_fu_468_p0;
wire   [8:0] mul_ln293_fu_468_p1;
wire   [7:0] empty_14_fu_473_p2;
wire   [15:0] add_ln280_fu_482_p2;
wire   [15:0] add_ln287_fu_495_p2;
wire   [15:0] grp_fu_880_p3;
wire   [7:0] mul_ln304_fu_512_p0;
wire   [8:0] mul_ln304_fu_512_p1;
wire   [7:0] empty_17_fu_517_p2;
wire   [15:0] add_ln293_fu_526_p2;
wire   [31:0] v199_fu_535_p1;
wire   [15:0] add_ln299_fu_546_p2;
wire   [31:0] v205_fu_555_p1;
wire   [15:0] grp_fu_888_p3;
wire   [7:0] mul_ln315_fu_570_p0;
wire   [8:0] mul_ln315_fu_570_p1;
wire   [7:0] empty_20_fu_575_p2;
wire   [15:0] add_ln304_fu_584_p2;
wire   [15:0] add_ln310_fu_593_p2;
wire   [31:0] v210_fu_602_p1;
wire   [31:0] v215_fu_613_p1;
wire   [15:0] grp_fu_896_p3;
wire   [7:0] mul_ln326_fu_636_p0;
wire   [8:0] mul_ln326_fu_636_p1;
wire   [7:0] empty_23_fu_641_p2;
wire   [15:0] add_ln315_fu_650_p2;
wire   [15:0] add_ln321_fu_659_p2;
wire   [31:0] v219_fu_668_p1;
wire   [31:0] v224_fu_679_p1;
wire   [15:0] grp_fu_904_p3;
wire   [7:0] mul_ln337_fu_698_p0;
wire   [8:0] mul_ln337_fu_698_p1;
wire   [15:0] add_ln326_fu_703_p2;
wire   [15:0] mul_ln337_fu_698_p2;
wire   [15:0] add_ln332_fu_717_p2;
wire   [31:0] v228_fu_731_p1;
wire   [31:0] v233_fu_742_p1;
wire   [15:0] grp_fu_912_p3;
wire   [31:0] v237_fu_769_p1;
wire   [31:0] v242_fu_780_p1;
wire   [15:0] grp_fu_920_p3;
wire   [31:0] v246_fu_799_p1;
wire   [31:0] v251_fu_810_p1;
wire   [7:0] grp_fu_880_p0;
wire   [7:0] grp_fu_880_p1;
wire   [7:0] grp_fu_880_p2;
wire   [7:0] grp_fu_888_p0;
wire   [7:0] grp_fu_888_p1;
wire   [7:0] grp_fu_888_p2;
wire   [7:0] grp_fu_896_p0;
wire   [7:0] grp_fu_896_p1;
wire   [7:0] grp_fu_896_p2;
wire   [7:0] grp_fu_904_p0;
wire   [7:0] grp_fu_904_p1;
wire   [7:0] grp_fu_904_p2;
wire   [7:0] grp_fu_912_p0;
wire   [7:0] grp_fu_912_p1;
wire   [7:0] grp_fu_912_p2;
wire   [7:0] grp_fu_920_p0;
wire   [7:0] grp_fu_920_p1;
wire   [7:0] grp_fu_920_p2;
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
wire   [15:0] grp_fu_880_p00;
wire   [15:0] grp_fu_888_p00;
wire   [15:0] grp_fu_896_p00;
wire   [15:0] grp_fu_904_p00;
wire   [15:0] grp_fu_912_p00;
wire   [15:0] grp_fu_920_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v198_fu_76 = 8'd0;
#0 v197_fu_80 = 8'd0;
#0 indvar_flatten_fu_84 = 12'd0;
#0 ap_done_reg = 1'b0;
end
kernel_3mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_289_p0),.din1(grp_fu_289_p1),.ce(1'b1),.dout(grp_fu_289_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_293_p0),.din1(grp_fu_293_p1),.ce(1'b1),.dout(grp_fu_293_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U3(.din0(mul_ln280_fu_395_p0),.din1(mul_ln280_fu_395_p1),.dout(mul_ln280_fu_395_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U4(.din0(mul_ln293_fu_468_p0),.din1(mul_ln293_fu_468_p1),.dout(mul_ln293_fu_468_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U5(.din0(mul_ln304_fu_512_p0),.din1(mul_ln304_fu_512_p1),.dout(mul_ln304_fu_512_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U6(.din0(mul_ln315_fu_570_p0),.din1(mul_ln315_fu_570_p1),.dout(mul_ln315_fu_570_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U7(.din0(mul_ln326_fu_636_p0),.din1(mul_ln326_fu_636_p1),.dout(mul_ln326_fu_636_p2));
kernel_3mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U8(.din0(mul_ln337_fu_698_p0),.din1(mul_ln337_fu_698_p1),.dout(mul_ln337_fu_698_p2));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_880_p0),.din1(grp_fu_880_p1),.din2(grp_fu_880_p2),.ce(1'b1),.dout(grp_fu_880_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U10(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_888_p0),.din1(grp_fu_888_p1),.din2(grp_fu_888_p2),.ce(1'b1),.dout(grp_fu_888_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U11(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_896_p0),.din1(grp_fu_896_p1),.din2(grp_fu_896_p2),.ce(1'b1),.dout(grp_fu_896_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U12(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_904_p0),.din1(grp_fu_904_p1),.din2(grp_fu_904_p2),.ce(1'b1),.dout(grp_fu_904_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_912_p0),.din1(grp_fu_912_p1),.din2(grp_fu_912_p2),.ce(1'b1),.dout(grp_fu_912_p3));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_920_p0),.din1(grp_fu_920_p1),.din2(grp_fu_920_p2),.ce(1'b1),.dout(grp_fu_920_p3));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_327_p2 == 1'd0))) begin
            indvar_flatten_fu_84 <= add_ln278_1_fu_333_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_84 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln278_fu_327_p2 == 1'd0))) begin
            v197_fu_80 <= select_ln278_1_fu_357_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v197_fu_80 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v198_fu_76 <= 8'd0;
    end else if (((icmp_ln278_reg_981 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v198_fu_76 <= add_ln279_fu_457_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln337_reg_1229 <= add_ln337_fu_712_p2;
        add_ln343_reg_1240 <= add_ln343_fu_726_p2;
        v221_reg_1214 <= v221_fu_690_p1;
        v229_reg_1245 <= v229_fu_735_p3;
        v234_reg_1250 <= v234_fu_746_p3;
        v261_addr_8_reg_1224 <= zext_ln326_fu_707_p1;
        v261_addr_8_reg_1224_pp0_iter1_reg <= v261_addr_8_reg_1224;
        v261_addr_9_reg_1234 <= zext_ln332_fu_721_p1;
        v261_addr_9_reg_1234_pp0_iter1_reg <= v261_addr_9_reg_1234;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln278_reg_981 <= icmp_ln278_fu_327_p2;
        icmp_ln278_reg_981_pp0_iter1_reg <= icmp_ln278_reg_981;
        icmp_ln278_reg_981_pp0_iter2_reg <= icmp_ln278_reg_981_pp0_iter1_reg;
        icmp_ln279_reg_990 <= icmp_ln279_fu_351_p2;
        select_ln278_1_cast_reg_1003[7 : 0] <= select_ln278_1_cast_fu_365_p1[7 : 0];
        select_ln278_1_reg_995 <= select_ln278_1_fu_357_p3;
        tmp_reg_1009 <= {{select_ln278_1_fu_357_p3[7:1]}};
        v198_load_reg_985 <= ap_sig_allocacmp_v198_load;
        zext_ln277_cast_reg_971[7 : 0] <= zext_ln277_cast_fu_305_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln280_reg_1014 <= mul_ln280_fu_395_p2;
        tmp_1_cast_reg_1020[7 : 1] <= tmp_1_cast_fu_407_p1[7 : 1];
        zext_ln283_reg_1026[7 : 0] <= zext_ln283_fu_411_p1[7 : 0];
        zext_ln289_reg_1041[7 : 1] <= zext_ln289_fu_443_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln293_reg_1056 <= mul_ln293_fu_468_p2;
        p_cast1_reg_1062[7 : 0] <= p_cast1_fu_478_p1[7 : 0];
        v202_reg_1073 <= v202_fu_491_p1;
        v202_reg_1073_pp0_iter1_reg <= v202_reg_1073;
        v207_reg_1083 <= v207_fu_504_p1;
        v207_reg_1083_pp0_iter1_reg <= v207_reg_1083;
        v261_addr_1_reg_1078 <= zext_ln287_fu_499_p1;
        v261_addr_1_reg_1078_pp0_iter1_reg <= v261_addr_1_reg_1078;
        v261_addr_reg_1068 <= zext_ln280_fu_486_p1;
        v261_addr_reg_1068_pp0_iter1_reg <= v261_addr_reg_1068;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln304_reg_1093 <= mul_ln304_fu_512_p2;
        p_cast6_reg_1099[7 : 0] <= p_cast6_fu_522_p1[7 : 0];
        v200_reg_1110 <= v200_fu_539_p3;
        v206_reg_1120 <= v206_fu_559_p3;
        v261_addr_2_reg_1105 <= zext_ln293_fu_530_p1;
        v261_addr_2_reg_1105_pp0_iter1_reg <= v261_addr_2_reg_1105;
        v261_addr_3_reg_1115 <= zext_ln299_fu_550_p1;
        v261_addr_3_reg_1115_pp0_iter1_reg <= v261_addr_3_reg_1115;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln315_reg_1135 <= mul_ln315_fu_570_p2;
        p_cast7_reg_1141[7 : 0] <= p_cast7_fu_580_p1[7 : 0];
        v211_reg_1157 <= v211_fu_606_p3;
        v216_reg_1162 <= v216_fu_617_p3;
        v261_addr_4_reg_1147 <= zext_ln304_fu_588_p1;
        v261_addr_4_reg_1147_pp0_iter1_reg <= v261_addr_4_reg_1147;
        v261_addr_5_reg_1152 <= zext_ln310_fu_597_p1;
        v261_addr_5_reg_1152_pp0_iter1_reg <= v261_addr_5_reg_1152;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul_ln326_reg_1182 <= mul_ln326_fu_636_p2;
        p_cast8_reg_1188[7 : 0] <= p_cast8_fu_646_p1[7 : 0];
        v201_reg_1167 <= v201_fu_624_p1;
        v212_reg_1172 <= v212_fu_628_p1;
        v220_reg_1204 <= v220_fu_672_p3;
        v225_reg_1209 <= v225_fu_683_p3;
        v261_addr_6_reg_1194 <= zext_ln315_fu_654_p1;
        v261_addr_6_reg_1194_pp0_iter1_reg <= v261_addr_6_reg_1194;
        v261_addr_7_reg_1199 <= zext_ln321_fu_663_p1;
        v261_addr_7_reg_1199_pp0_iter1_reg <= v261_addr_7_reg_1199;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_297 <= grp_fu_289_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_301 <= grp_fu_289_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v203_reg_1296 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v208_reg_1316 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v213_reg_1321 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v214_reg_1356 <= grp_fu_289_p2;
        v244_reg_1361 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v217_reg_1326 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v218_reg_1366 <= grp_fu_289_p2;
        v249_reg_1371 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v222_reg_1331 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v223_reg_1376 <= grp_fu_289_p2;
        v253_reg_1381 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v226_reg_1336 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v230_reg_1255 <= v230_fu_753_p1;
        v238_reg_1276 <= v238_fu_773_p3;
        v243_reg_1281 <= v243_fu_784_p3;
        v261_addr_10_reg_1265 <= zext_ln337_fu_761_p1;
        v261_addr_10_reg_1265_pp0_iter1_reg <= v261_addr_10_reg_1265;
        v261_addr_10_reg_1265_pp0_iter2_reg <= v261_addr_10_reg_1265_pp0_iter1_reg;
        v261_addr_11_reg_1271 <= zext_ln343_fu_765_p1;
        v261_addr_11_reg_1271_pp0_iter1_reg <= v261_addr_11_reg_1271;
        v261_addr_11_reg_1271_pp0_iter2_reg <= v261_addr_11_reg_1271_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v231_reg_1341 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v235_reg_1346 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v239_reg_1286 <= v239_fu_791_p1;
        v247_reg_1301 <= v247_fu_803_p3;
        v252_reg_1306 <= v252_fu_814_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v240_reg_1351 <= grp_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v248_reg_1311 <= v248_fu_821_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v250_reg_1386 <= grp_fu_289_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v254_reg_1391 <= grp_fu_289_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v262_load_reg_1125 <= v262_q0;
    end
end
always @ (*) begin
    if (((icmp_ln278_reg_981 == 1'd1) & (1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln278_reg_981_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v197_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v197_load = v197_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v198_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v198_load = v198_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_289_p0 = v252_reg_1306;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_289_p0 = v247_reg_1301;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_289_p0 = v243_reg_1281;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_289_p0 = v238_reg_1276;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_289_p0 = v234_reg_1250;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p0 = v229_reg_1245;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p0 = v225_reg_1209;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_289_p0 = v220_reg_1204;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_289_p0 = v216_reg_1162;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_289_p0 = v211_reg_1157;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_289_p0 = v206_reg_1120;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_289_p0 = v200_reg_1110;
    end else begin
        grp_fu_289_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_289_p1 = v253_reg_1381;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_289_p1 = v249_reg_1371;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_289_p1 = v244_reg_1361;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_289_p1 = v240_reg_1351;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_289_p1 = v235_reg_1346;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p1 = v231_reg_1341;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p1 = v226_reg_1336;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_289_p1 = v222_reg_1331;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_289_p1 = v217_reg_1326;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_289_p1 = v213_reg_1321;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_289_p1 = v208_reg_1316;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_289_p1 = v203_reg_1296;
    end else begin
        grp_fu_289_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_293_p0 = v248_reg_1311;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_293_p0 = v239_reg_1286;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_293_p0 = v230_reg_1255;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_293_p0 = v221_reg_1214;
    end else if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_293_p0 = v212_reg_1172;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_293_p0 = v201_reg_1167;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_293_p0 = v201_fu_624_p1;
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_293_p1 = v207_reg_1083_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p1 = v202_reg_1073_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_293_p1 = v207_reg_1083;
    end else if ((((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_293_p1 = v202_reg_1073;
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_address0_local = v261_addr_11_reg_1271_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_address0_local = v261_addr_10_reg_1265_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_address0_local = v261_addr_7_reg_1199_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_address0_local = v261_addr_5_reg_1152_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_address0_local = v261_addr_3_reg_1115_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_address0_local = v261_addr_1_reg_1078_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_address0_local = zext_ln343_fu_765_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_address0_local = zext_ln332_fu_721_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_address0_local = zext_ln321_fu_663_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_address0_local = zext_ln310_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_address0_local = zext_ln299_fu_550_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_address0_local = zext_ln287_fu_499_p1;
    end else begin
        v261_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_address1_local = v261_addr_9_reg_1234_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_address1_local = v261_addr_8_reg_1224_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_address1_local = v261_addr_6_reg_1194_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_address1_local = v261_addr_4_reg_1147_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_address1_local = v261_addr_2_reg_1105_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_address1_local = v261_addr_reg_1068_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v261_address1_local = zext_ln337_fu_761_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v261_address1_local = zext_ln326_fu_707_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v261_address1_local = zext_ln315_fu_654_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v261_address1_local = zext_ln304_fu_588_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v261_address1_local = zext_ln293_fu_530_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v261_address1_local = zext_ln280_fu_486_p1;
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
        v261_d0_local = bitcast_ln347_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_d0_local = bitcast_ln342_fu_872_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_d0_local = bitcast_ln325_fu_857_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_d0_local = bitcast_ln314_fu_847_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_d0_local = bitcast_ln303_fu_839_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_d0_local = bitcast_ln292_fu_830_p1;
    end else begin
        v261_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v261_d1_local = bitcast_ln336_fu_867_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v261_d1_local = bitcast_ln331_fu_862_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v261_d1_local = bitcast_ln320_fu_852_p1;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        v261_d1_local = bitcast_ln309_fu_843_p1;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        v261_d1_local = bitcast_ln298_fu_835_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v261_d1_local = bitcast_ln286_fu_825_p1;
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
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            v262_address0_local = p_cast13_fu_795_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v262_address0_local = p_cast12_fu_757_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v262_address0_local = p_cast11_fu_694_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v262_address0_local = p_cast10_fu_632_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v262_address0_local = p_cast_fu_566_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v262_address0_local = p_cast9_fu_508_p1;
        end else begin
            v262_address0_local = 'bx;
        end
    end else begin
        v262_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v262_ce0_local = 1'b1;
    end else begin
        v262_ce0_local = 1'b0;
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
assign add_ln278_1_fu_333_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln278_fu_345_p2 = (ap_sig_allocacmp_v197_load + 8'd6);
assign add_ln279_fu_457_p2 = (select_ln278_fu_389_p3 + 8'd2);
assign add_ln280_fu_482_p2 = (mul_ln280_reg_1014 + zext_ln283_reg_1026);
assign add_ln283_fu_415_p2 = (phi_mul + zext_ln283_fu_411_p1);
assign add_ln287_fu_495_p2 = (mul_ln280_reg_1014 + zext_ln289_reg_1041);
assign add_ln289_fu_447_p2 = (phi_mul + zext_ln289_fu_443_p1);
assign add_ln293_fu_526_p2 = (mul_ln293_reg_1056 + zext_ln283_reg_1026);
assign add_ln299_fu_546_p2 = (mul_ln293_reg_1056 + zext_ln289_reg_1041);
assign add_ln304_fu_584_p2 = (mul_ln304_reg_1093 + zext_ln283_reg_1026);
assign add_ln310_fu_593_p2 = (mul_ln304_reg_1093 + zext_ln289_reg_1041);
assign add_ln315_fu_650_p2 = (mul_ln315_reg_1135 + zext_ln283_reg_1026);
assign add_ln321_fu_659_p2 = (mul_ln315_reg_1135 + zext_ln289_reg_1041);
assign add_ln326_fu_703_p2 = (mul_ln326_reg_1182 + zext_ln283_reg_1026);
assign add_ln332_fu_717_p2 = (mul_ln326_reg_1182 + zext_ln289_reg_1041);
assign add_ln337_fu_712_p2 = (mul_ln337_fu_698_p2 + zext_ln283_reg_1026);
assign add_ln343_fu_726_p2 = (mul_ln337_fu_698_p2 + zext_ln289_reg_1041);
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
assign bitcast_ln286_fu_825_p1 = reg_297;
assign bitcast_ln292_fu_830_p1 = reg_301;
assign bitcast_ln298_fu_835_p1 = v214_reg_1356;
assign bitcast_ln303_fu_839_p1 = v218_reg_1366;
assign bitcast_ln309_fu_843_p1 = v223_reg_1376;
assign bitcast_ln314_fu_847_p1 = reg_297;
assign bitcast_ln320_fu_852_p1 = reg_301;
assign bitcast_ln325_fu_857_p1 = reg_297;
assign bitcast_ln331_fu_862_p1 = reg_297;
assign bitcast_ln336_fu_867_p1 = reg_297;
assign bitcast_ln342_fu_872_p1 = v250_reg_1386;
assign bitcast_ln347_fu_876_p1 = v254_reg_1391;
assign empty_14_fu_473_p2 = (select_ln278_1_reg_995 + 8'd2);
assign empty_17_fu_517_p2 = (select_ln278_1_reg_995 + 8'd3);
assign empty_20_fu_575_p2 = (select_ln278_1_reg_995 + 8'd4);
assign empty_23_fu_641_p2 = (select_ln278_1_reg_995 + 8'd5);
assign grp_fu_880_p0 = grp_fu_880_p00;
assign grp_fu_880_p00 = select_ln278_1_fu_357_p3;
assign grp_fu_880_p1 = 16'd200;
assign grp_fu_880_p2 = zext_ln277_cast_reg_971;
assign grp_fu_888_p0 = grp_fu_888_p00;
assign grp_fu_888_p00 = tmp_1_fu_400_p3;
assign grp_fu_888_p1 = 16'd200;
assign grp_fu_888_p2 = zext_ln277_cast_reg_971;
assign grp_fu_896_p0 = grp_fu_896_p00;
assign grp_fu_896_p00 = empty_14_fu_473_p2;
assign grp_fu_896_p1 = 16'd200;
assign grp_fu_896_p2 = zext_ln277_cast_reg_971;
assign grp_fu_904_p0 = grp_fu_904_p00;
assign grp_fu_904_p00 = empty_17_fu_517_p2;
assign grp_fu_904_p1 = 16'd200;
assign grp_fu_904_p2 = zext_ln277_cast_reg_971;
assign grp_fu_912_p0 = grp_fu_912_p00;
assign grp_fu_912_p00 = empty_20_fu_575_p2;
assign grp_fu_912_p1 = 16'd200;
assign grp_fu_912_p2 = zext_ln277_cast_reg_971;
assign grp_fu_920_p0 = grp_fu_920_p00;
assign grp_fu_920_p00 = empty_23_fu_641_p2;
assign grp_fu_920_p1 = 16'd200;
assign grp_fu_920_p2 = zext_ln277_cast_reg_971;
assign icmp_ln278_fu_327_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2850) ? 1'b1 : 1'b0);
assign icmp_ln279_fu_351_p2 = ((ap_sig_allocacmp_v198_load < 8'd190) ? 1'b1 : 1'b0);
assign mul_ln280_fu_395_p0 = select_ln278_1_cast_reg_1003;
assign mul_ln280_fu_395_p1 = 16'd190;
assign mul_ln293_fu_468_p0 = tmp_1_cast_reg_1020;
assign mul_ln293_fu_468_p1 = 16'd190;
assign mul_ln304_fu_512_p0 = p_cast1_reg_1062;
assign mul_ln304_fu_512_p1 = 16'd190;
assign mul_ln315_fu_570_p0 = p_cast6_reg_1099;
assign mul_ln315_fu_570_p1 = 16'd190;
assign mul_ln326_fu_636_p0 = p_cast7_reg_1141;
assign mul_ln326_fu_636_p1 = 16'd190;
assign mul_ln337_fu_698_p0 = p_cast8_reg_1188;
assign mul_ln337_fu_698_p1 = 16'd190;
assign or_ln_fu_435_p3 = {{tmp_2_fu_425_p4}, {1'd1}};
assign p_cast10_fu_632_p1 = grp_fu_896_p3;
assign p_cast11_fu_694_p1 = grp_fu_904_p3;
assign p_cast12_fu_757_p1 = grp_fu_912_p3;
assign p_cast13_fu_795_p1 = grp_fu_920_p3;
assign p_cast1_fu_478_p1 = empty_14_fu_473_p2;
assign p_cast6_fu_522_p1 = empty_17_fu_517_p2;
assign p_cast7_fu_580_p1 = empty_20_fu_575_p2;
assign p_cast8_fu_646_p1 = empty_23_fu_641_p2;
assign p_cast9_fu_508_p1 = grp_fu_880_p3;
assign p_cast_fu_566_p1 = grp_fu_888_p3;
assign select_ln278_1_cast_fu_365_p1 = select_ln278_1_fu_357_p3;
assign select_ln278_1_fu_357_p3 = ((icmp_ln279_fu_351_p2[0:0] == 1'b1) ? ap_sig_allocacmp_v197_load : add_ln278_fu_345_p2);
assign select_ln278_fu_389_p3 = ((icmp_ln279_reg_990[0:0] == 1'b1) ? v198_load_reg_985 : 8'd0);
assign tmp_1_cast_fu_407_p1 = tmp_1_fu_400_p3;
assign tmp_1_fu_400_p3 = {{tmp_reg_1009}, {1'd1}};
assign tmp_2_fu_425_p4 = {{select_ln278_fu_389_p3[7:1]}};
assign v199_fu_535_p1 = v261_q1;
assign v200_fu_539_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v199_fu_535_p1);
assign v201_fu_624_p1 = v262_load_reg_1125;
assign v202_fu_491_p1 = v263_q1;
assign v205_fu_555_p1 = v261_q0;
assign v206_fu_559_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v205_fu_555_p1);
assign v207_fu_504_p1 = v263_q0;
assign v210_fu_602_p1 = v261_q1;
assign v211_fu_606_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v210_fu_602_p1);
assign v212_fu_628_p1 = v262_q0;
assign v215_fu_613_p1 = v261_q0;
assign v216_fu_617_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v215_fu_613_p1);
assign v219_fu_668_p1 = v261_q1;
assign v220_fu_672_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v219_fu_668_p1);
assign v221_fu_690_p1 = v262_q0;
assign v224_fu_679_p1 = v261_q0;
assign v225_fu_683_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v224_fu_679_p1);
assign v228_fu_731_p1 = v261_q1;
assign v229_fu_735_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v228_fu_731_p1);
assign v230_fu_753_p1 = v262_q0;
assign v233_fu_742_p1 = v261_q0;
assign v234_fu_746_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v233_fu_742_p1);
assign v237_fu_769_p1 = v261_q1;
assign v238_fu_773_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v237_fu_769_p1);
assign v239_fu_791_p1 = v262_q0;
assign v242_fu_780_p1 = v261_q0;
assign v243_fu_784_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v242_fu_780_p1);
assign v246_fu_799_p1 = v261_q1;
assign v247_fu_803_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v246_fu_799_p1);
assign v248_fu_821_p1 = v262_q0;
assign v251_fu_810_p1 = v261_q0;
assign v252_fu_814_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v251_fu_810_p1);
assign v261_address0 = v261_address0_local;
assign v261_address1 = v261_address1_local;
assign v261_ce0 = v261_ce0_local;
assign v261_ce1 = v261_ce1_local;
assign v261_d0 = v261_d0_local;
assign v261_d1 = v261_d1_local;
assign v261_we0 = v261_we0_local;
assign v261_we1 = v261_we1_local;
assign v262_address0 = v262_address0_local;
assign v262_ce0 = v262_ce0_local;
assign v263_address0 = zext_ln289_1_fu_452_p1;
assign v263_address1 = zext_ln283_1_fu_420_p1;
assign v263_ce0 = v263_ce0_local;
assign v263_ce1 = v263_ce1_local;
assign zext_ln277_cast_fu_305_p1 = zext_ln277;
assign zext_ln280_fu_486_p1 = add_ln280_fu_482_p2;
assign zext_ln283_1_fu_420_p1 = add_ln283_fu_415_p2;
assign zext_ln283_fu_411_p1 = select_ln278_fu_389_p3;
assign zext_ln287_fu_499_p1 = add_ln287_fu_495_p2;
assign zext_ln289_1_fu_452_p1 = add_ln289_fu_447_p2;
assign zext_ln289_fu_443_p1 = or_ln_fu_435_p3;
assign zext_ln293_fu_530_p1 = add_ln293_fu_526_p2;
assign zext_ln299_fu_550_p1 = add_ln299_fu_546_p2;
assign zext_ln304_fu_588_p1 = add_ln304_fu_584_p2;
assign zext_ln310_fu_597_p1 = add_ln310_fu_593_p2;
assign zext_ln315_fu_654_p1 = add_ln315_fu_650_p2;
assign zext_ln321_fu_663_p1 = add_ln321_fu_659_p2;
assign zext_ln326_fu_707_p1 = add_ln326_fu_703_p2;
assign zext_ln332_fu_721_p1 = add_ln332_fu_717_p2;
assign zext_ln337_fu_761_p1 = add_ln337_reg_1229;
assign zext_ln343_fu_765_p1 = add_ln343_reg_1240;
always @ (posedge ap_clk) begin
    zext_ln277_cast_reg_971[15:8] <= 8'b00000000;
    select_ln278_1_cast_reg_1003[15:8] <= 8'b00000000;
    tmp_1_cast_reg_1020[0] <= 1'b1;
    tmp_1_cast_reg_1020[15:8] <= 8'b00000000;
    zext_ln283_reg_1026[15:8] <= 8'b00000000;
    zext_ln289_reg_1041[0] <= 1'b1;
    zext_ln289_reg_1041[15:8] <= 8'b00000000;
    p_cast1_reg_1062[15:8] <= 8'b00000000;
    p_cast6_reg_1099[15:8] <= 8'b00000000;
    p_cast7_reg_1141[15:8] <= 8'b00000000;
    p_cast8_reg_1188[15:8] <= 8'b00000000;
end
endmodule 