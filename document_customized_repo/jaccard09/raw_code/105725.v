module gesummv_gesummv_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_address1,buff_A_ce1,buff_A_q1,alpha,mux_case_092_reload,mux_case_2134_reload,mux_case_4176_reload,mux_case_6218_reload,mux_case_82510_reload,mux_case_102912_reload,mux_case_123314_reload,mux_case_143716_reload,mux_case_164118_reload,mux_case_184520_reload,mux_case_204922_reload,mux_case_225324_reload,mux_case_245726_reload,mux_case_266128_reload,mux_case_286530_reload,mux_case_306932_reload,mux_case_327334_reload,mux_case_347736_reload,mux_case_368138_reload,mux_case_388540_reload,mux_case_408942_reload,mux_case_429344_reload,mux_case_449746_reload,mux_case_4610148_reload,mux_case_4810550_reload,mux_case_5010952_reload,mux_case_5211354_reload,mux_case_5411756_reload,mux_case_5612158_reload,mux_case_5812560_reload,mux_case_6012962_reload,mux_case_6213364_reload,mux_case_113766_reload,mux_case_314168_reload,mux_case_514570_reload,mux_case_714972_reload,mux_case_915374_reload,mux_case_1115776_reload,mux_case_1316178_reload,mux_case_1516580_reload,mux_case_1716982_reload,mux_case_1917384_reload,mux_case_2117786_reload,mux_case_2318188_reload,mux_case_2518590_reload,mux_case_2718992_reload,mux_case_2919394_reload,mux_case_3119796_reload,mux_case_3320198_reload,mux_case_35205100_reload,mux_case_37209102_reload,mux_case_39213104_reload,mux_case_41217106_reload,mux_case_43221108_reload,mux_case_45225110_reload,mux_case_47229112_reload,mux_case_49233114_reload,mux_case_51237116_reload,mux_case_53241118_reload,mux_case_55245120_reload,mux_case_57249122_reload,mux_case_59253124_reload,mux_case_61257126_reload,mux_case_63261128_reload,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0,tmp1_q0,grp_fu_1925_p_din0,grp_fu_1925_p_din1,grp_fu_1925_p_opcode,grp_fu_1925_p_dout0,grp_fu_1925_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 15'd1;
parameter    ap_ST_fsm_pp0_stage1 = 15'd2;
parameter    ap_ST_fsm_pp0_stage2 = 15'd4;
parameter    ap_ST_fsm_pp0_stage3 = 15'd8;
parameter    ap_ST_fsm_pp0_stage4 = 15'd16;
parameter    ap_ST_fsm_pp0_stage5 = 15'd32;
parameter    ap_ST_fsm_pp0_stage6 = 15'd64;
parameter    ap_ST_fsm_pp0_stage7 = 15'd128;
parameter    ap_ST_fsm_pp0_stage8 = 15'd256;
parameter    ap_ST_fsm_pp0_stage9 = 15'd512;
parameter    ap_ST_fsm_pp0_stage10 = 15'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 15'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 15'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 15'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 15'd16384;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [11:0] buff_A_address1;
output   buff_A_ce1;
input  [31:0] buff_A_q1;
input  [31:0] alpha;
input  [31:0] mux_case_092_reload;
input  [31:0] mux_case_2134_reload;
input  [31:0] mux_case_4176_reload;
input  [31:0] mux_case_6218_reload;
input  [31:0] mux_case_82510_reload;
input  [31:0] mux_case_102912_reload;
input  [31:0] mux_case_123314_reload;
input  [31:0] mux_case_143716_reload;
input  [31:0] mux_case_164118_reload;
input  [31:0] mux_case_184520_reload;
input  [31:0] mux_case_204922_reload;
input  [31:0] mux_case_225324_reload;
input  [31:0] mux_case_245726_reload;
input  [31:0] mux_case_266128_reload;
input  [31:0] mux_case_286530_reload;
input  [31:0] mux_case_306932_reload;
input  [31:0] mux_case_327334_reload;
input  [31:0] mux_case_347736_reload;
input  [31:0] mux_case_368138_reload;
input  [31:0] mux_case_388540_reload;
input  [31:0] mux_case_408942_reload;
input  [31:0] mux_case_429344_reload;
input  [31:0] mux_case_449746_reload;
input  [31:0] mux_case_4610148_reload;
input  [31:0] mux_case_4810550_reload;
input  [31:0] mux_case_5010952_reload;
input  [31:0] mux_case_5211354_reload;
input  [31:0] mux_case_5411756_reload;
input  [31:0] mux_case_5612158_reload;
input  [31:0] mux_case_5812560_reload;
input  [31:0] mux_case_6012962_reload;
input  [31:0] mux_case_6213364_reload;
input  [31:0] mux_case_113766_reload;
input  [31:0] mux_case_314168_reload;
input  [31:0] mux_case_514570_reload;
input  [31:0] mux_case_714972_reload;
input  [31:0] mux_case_915374_reload;
input  [31:0] mux_case_1115776_reload;
input  [31:0] mux_case_1316178_reload;
input  [31:0] mux_case_1516580_reload;
input  [31:0] mux_case_1716982_reload;
input  [31:0] mux_case_1917384_reload;
input  [31:0] mux_case_2117786_reload;
input  [31:0] mux_case_2318188_reload;
input  [31:0] mux_case_2518590_reload;
input  [31:0] mux_case_2718992_reload;
input  [31:0] mux_case_2919394_reload;
input  [31:0] mux_case_3119796_reload;
input  [31:0] mux_case_3320198_reload;
input  [31:0] mux_case_35205100_reload;
input  [31:0] mux_case_37209102_reload;
input  [31:0] mux_case_39213104_reload;
input  [31:0] mux_case_41217106_reload;
input  [31:0] mux_case_43221108_reload;
input  [31:0] mux_case_45225110_reload;
input  [31:0] mux_case_47229112_reload;
input  [31:0] mux_case_49233114_reload;
input  [31:0] mux_case_51237116_reload;
input  [31:0] mux_case_53241118_reload;
input  [31:0] mux_case_55245120_reload;
input  [31:0] mux_case_57249122_reload;
input  [31:0] mux_case_59253124_reload;
input  [31:0] mux_case_61257126_reload;
input  [31:0] mux_case_63261128_reload;
output  [5:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
input  [31:0] tmp1_q0;
output  [31:0] grp_fu_1925_p_din0;
output  [31:0] grp_fu_1925_p_din1;
output  [1:0] grp_fu_1925_p_opcode;
input  [31:0] grp_fu_1925_p_dout0;
output   grp_fu_1925_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] icmp_ln25_reg_1188;
reg    ap_condition_exit_pp0_iter0_stage10;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_subdone;
wire   [31:0] grp_fu_697_p2;
reg   [31:0] reg_701;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage10_11001;
reg   [31:0] reg_707;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln25_fu_731_p2;
wire   [6:0] select_ln6_fu_763_p3;
reg   [6:0] select_ln6_reg_1192;
wire   [5:0] empty_fu_779_p1;
reg   [5:0] empty_reg_1199;
wire   [0:0] first_iter_1_fu_783_p2;
reg   [0:0] first_iter_1_reg_1205;
reg   [5:0] tmp1_addr_reg_1209;
reg   [5:0] tmp1_addr_reg_1209_pp0_iter1_reg;
wire   [31:0] tmp_fu_798_p67;
reg   [31:0] tmp_reg_1214;
wire   [31:0] tmp_1_fu_934_p67;
reg   [31:0] tmp_1_reg_1219;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] arrayidx45_promoted_reg_1234;
reg   [31:0] buff_A_load_reg_1239;
reg   [31:0] buff_A_load_1_reg_1244;
reg   [31:0] mul_1_reg_1249;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [31:0] mul43_1_reg_1259;
reg   [0:0] tmp_6_reg_1264;
wire    ap_block_pp0_stage14_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln25_fu_789_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_2_fu_1096_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_1_fu_1119_p1;
reg   [6:0] j_fu_250;
wire   [6:0] add_ln26_fu_1132_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_1_fu_254;
wire   [6:0] select_ln25_fu_771_p3;
reg   [6:0] ap_sig_allocacmp_i_1_load;
reg   [11:0] indvar_flatten135_fu_258;
wire   [11:0] add_ln25_1_fu_737_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten135_load;
reg   [31:0] add16_fu_262;
wire    ap_block_pp0_stage11;
reg    tmp1_ce0_local;
reg   [5:0] tmp1_address0_local;
reg    tmp1_we0_local;
wire    ap_block_pp0_stage10;
reg    buff_A_ce1_local;
reg    buff_A_ce0_local;
reg   [31:0] grp_fu_693_p0;
reg   [31:0] grp_fu_693_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
reg   [31:0] grp_fu_697_p0;
reg   [31:0] grp_fu_697_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8;
wire   [0:0] tmp_2_fu_755_p3;
wire   [6:0] add_ln25_fu_749_p2;
wire   [31:0] tmp_fu_798_p65;
wire   [5:0] trunc_ln26_fu_794_p1;
wire   [31:0] tmp_1_fu_934_p65;
wire   [11:0] tmp_3_fu_1080_p3;
wire   [11:0] zext_ln27_fu_1087_p1;
wire   [11:0] add_ln27_fu_1090_p2;
wire   [4:0] tmp_4_fu_1101_p4;
wire   [11:0] tmp_5_fu_1110_p4;
wire    ap_block_pp0_stage14;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [14:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_condition_809;
wire   [5:0] tmp_fu_798_p1;
wire   [5:0] tmp_fu_798_p3;
wire   [5:0] tmp_fu_798_p5;
wire   [5:0] tmp_fu_798_p7;
wire   [5:0] tmp_fu_798_p9;
wire   [5:0] tmp_fu_798_p11;
wire   [5:0] tmp_fu_798_p13;
wire   [5:0] tmp_fu_798_p15;
wire   [5:0] tmp_fu_798_p17;
wire   [5:0] tmp_fu_798_p19;
wire   [5:0] tmp_fu_798_p21;
wire   [5:0] tmp_fu_798_p23;
wire   [5:0] tmp_fu_798_p25;
wire   [5:0] tmp_fu_798_p27;
wire   [5:0] tmp_fu_798_p29;
wire   [5:0] tmp_fu_798_p31;
wire  signed [5:0] tmp_fu_798_p33;
wire  signed [5:0] tmp_fu_798_p35;
wire  signed [5:0] tmp_fu_798_p37;
wire  signed [5:0] tmp_fu_798_p39;
wire  signed [5:0] tmp_fu_798_p41;
wire  signed [5:0] tmp_fu_798_p43;
wire  signed [5:0] tmp_fu_798_p45;
wire  signed [5:0] tmp_fu_798_p47;
wire  signed [5:0] tmp_fu_798_p49;
wire  signed [5:0] tmp_fu_798_p51;
wire  signed [5:0] tmp_fu_798_p53;
wire  signed [5:0] tmp_fu_798_p55;
wire  signed [5:0] tmp_fu_798_p57;
wire  signed [5:0] tmp_fu_798_p59;
wire  signed [5:0] tmp_fu_798_p61;
wire  signed [5:0] tmp_fu_798_p63;
wire   [5:0] tmp_1_fu_934_p1;
wire   [5:0] tmp_1_fu_934_p3;
wire   [5:0] tmp_1_fu_934_p5;
wire   [5:0] tmp_1_fu_934_p7;
wire   [5:0] tmp_1_fu_934_p9;
wire   [5:0] tmp_1_fu_934_p11;
wire   [5:0] tmp_1_fu_934_p13;
wire   [5:0] tmp_1_fu_934_p15;
wire   [5:0] tmp_1_fu_934_p17;
wire   [5:0] tmp_1_fu_934_p19;
wire   [5:0] tmp_1_fu_934_p21;
wire   [5:0] tmp_1_fu_934_p23;
wire   [5:0] tmp_1_fu_934_p25;
wire   [5:0] tmp_1_fu_934_p27;
wire   [5:0] tmp_1_fu_934_p29;
wire   [5:0] tmp_1_fu_934_p31;
wire  signed [5:0] tmp_1_fu_934_p33;
wire  signed [5:0] tmp_1_fu_934_p35;
wire  signed [5:0] tmp_1_fu_934_p37;
wire  signed [5:0] tmp_1_fu_934_p39;
wire  signed [5:0] tmp_1_fu_934_p41;
wire  signed [5:0] tmp_1_fu_934_p43;
wire  signed [5:0] tmp_1_fu_934_p45;
wire  signed [5:0] tmp_1_fu_934_p47;
wire  signed [5:0] tmp_1_fu_934_p49;
wire  signed [5:0] tmp_1_fu_934_p51;
wire  signed [5:0] tmp_1_fu_934_p53;
wire  signed [5:0] tmp_1_fu_934_p55;
wire  signed [5:0] tmp_1_fu_934_p57;
wire  signed [5:0] tmp_1_fu_934_p59;
wire  signed [5:0] tmp_1_fu_934_p61;
wire  signed [5:0] tmp_1_fu_934_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_250 = 7'd0;
#0 i_1_fu_254 = 7'd0;
#0 indvar_flatten135_fu_258 = 12'd0;
#0 add16_fu_262 = 32'd0;
#0 ap_done_reg = 1'b0;
end
gesummv_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_697_p0),.din1(grp_fu_697_p1),.ce(1'b1),.dout(grp_fu_697_p2));
(* dissolve_hierarchy = "yes" *) gesummv_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U138(.din0(mux_case_092_reload),.din1(mux_case_2134_reload),.din2(mux_case_4176_reload),.din3(mux_case_6218_reload),.din4(mux_case_82510_reload),.din5(mux_case_102912_reload),.din6(mux_case_123314_reload),.din7(mux_case_143716_reload),.din8(mux_case_164118_reload),.din9(mux_case_184520_reload),.din10(mux_case_204922_reload),.din11(mux_case_225324_reload),.din12(mux_case_245726_reload),.din13(mux_case_266128_reload),.din14(mux_case_286530_reload),.din15(mux_case_306932_reload),.din16(mux_case_327334_reload),.din17(mux_case_347736_reload),.din18(mux_case_368138_reload),.din19(mux_case_388540_reload),.din20(mux_case_408942_reload),.din21(mux_case_429344_reload),.din22(mux_case_449746_reload),.din23(mux_case_4610148_reload),.din24(mux_case_4810550_reload),.din25(mux_case_5010952_reload),.din26(mux_case_5211354_reload),.din27(mux_case_5411756_reload),.din28(mux_case_5612158_reload),.din29(mux_case_5812560_reload),.din30(mux_case_6012962_reload),.din31(mux_case_6213364_reload),.def(tmp_fu_798_p65),.sel(trunc_ln26_fu_794_p1),.dout(tmp_fu_798_p67));
(* dissolve_hierarchy = "yes" *) gesummv_sparsemux_65_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 32 ),.CASE1( 6'h2 ),.din1_WIDTH( 32 ),.CASE2( 6'h4 ),.din2_WIDTH( 32 ),.CASE3( 6'h6 ),.din3_WIDTH( 32 ),.CASE4( 6'h8 ),.din4_WIDTH( 32 ),.CASE5( 6'hA ),.din5_WIDTH( 32 ),.CASE6( 6'hC ),.din6_WIDTH( 32 ),.CASE7( 6'hE ),.din7_WIDTH( 32 ),.CASE8( 6'h10 ),.din8_WIDTH( 32 ),.CASE9( 6'h12 ),.din9_WIDTH( 32 ),.CASE10( 6'h14 ),.din10_WIDTH( 32 ),.CASE11( 6'h16 ),.din11_WIDTH( 32 ),.CASE12( 6'h18 ),.din12_WIDTH( 32 ),.CASE13( 6'h1A ),.din13_WIDTH( 32 ),.CASE14( 6'h1C ),.din14_WIDTH( 32 ),.CASE15( 6'h1E ),.din15_WIDTH( 32 ),.CASE16( 6'h20 ),.din16_WIDTH( 32 ),.CASE17( 6'h22 ),.din17_WIDTH( 32 ),.CASE18( 6'h24 ),.din18_WIDTH( 32 ),.CASE19( 6'h26 ),.din19_WIDTH( 32 ),.CASE20( 6'h28 ),.din20_WIDTH( 32 ),.CASE21( 6'h2A ),.din21_WIDTH( 32 ),.CASE22( 6'h2C ),.din22_WIDTH( 32 ),.CASE23( 6'h2E ),.din23_WIDTH( 32 ),.CASE24( 6'h30 ),.din24_WIDTH( 32 ),.CASE25( 6'h32 ),.din25_WIDTH( 32 ),.CASE26( 6'h34 ),.din26_WIDTH( 32 ),.CASE27( 6'h36 ),.din27_WIDTH( 32 ),.CASE28( 6'h38 ),.din28_WIDTH( 32 ),.CASE29( 6'h3A ),.din29_WIDTH( 32 ),.CASE30( 6'h3C ),.din30_WIDTH( 32 ),.CASE31( 6'h3E ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_65_6_32_1_1_U139(.din0(mux_case_113766_reload),.din1(mux_case_314168_reload),.din2(mux_case_514570_reload),.din3(mux_case_714972_reload),.din4(mux_case_915374_reload),.din5(mux_case_1115776_reload),.din6(mux_case_1316178_reload),.din7(mux_case_1516580_reload),.din8(mux_case_1716982_reload),.din9(mux_case_1917384_reload),.din10(mux_case_2117786_reload),.din11(mux_case_2318188_reload),.din12(mux_case_2518590_reload),.din13(mux_case_2718992_reload),.din14(mux_case_2919394_reload),.din15(mux_case_3119796_reload),.din16(mux_case_3320198_reload),.din17(mux_case_35205100_reload),.din18(mux_case_37209102_reload),.din19(mux_case_39213104_reload),.din20(mux_case_41217106_reload),.din21(mux_case_43221108_reload),.din22(mux_case_45225110_reload),.din23(mux_case_47229112_reload),.din24(mux_case_49233114_reload),.din25(mux_case_51237116_reload),.din26(mux_case_53241118_reload),.din27(mux_case_55245120_reload),.din28(mux_case_57249122_reload),.din29(mux_case_59253124_reload),.din30(mux_case_61257126_reload),.din31(mux_case_63261128_reload),.def(tmp_1_fu_934_p65),.sel(trunc_ln26_fu_794_p1),.dout(tmp_1_fu_934_p67));
gesummv_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage10),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage14_subdone) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        if ((1'b1 == ap_condition_809)) begin
            add16_fu_262 <= arrayidx45_promoted_reg_1234;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            add16_fu_262 <= reg_707;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln25_fu_731_p2 == 1'd0))) begin
            i_1_fu_254 <= select_ln25_fu_771_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_254 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln25_fu_731_p2 == 1'd0))) begin
            indvar_flatten135_fu_258 <= add_ln25_1_fu_737_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten135_fu_258 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_250 <= 7'd0;
    end else if (((icmp_ln25_reg_1188 == 1'd0) & (1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        j_fu_250 <= add_ln26_fu_1132_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        arrayidx45_promoted_reg_1234 <= tmp1_q0;
        buff_A_load_1_reg_1244 <= buff_A_q0;
        buff_A_load_reg_1239 <= buff_A_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_1199 <= empty_fu_779_p1;
        first_iter_1_reg_1205 <= first_iter_1_fu_783_p2;
        icmp_ln25_reg_1188 <= icmp_ln25_fu_731_p2;
        select_ln6_reg_1192 <= select_ln6_fu_763_p3;
        tmp1_addr_reg_1209 <= zext_ln25_fu_789_p1;
        tmp1_addr_reg_1209_pp0_iter1_reg <= tmp1_addr_reg_1209;
        tmp_1_reg_1219 <= tmp_1_fu_934_p67;
        tmp_reg_1214 <= tmp_fu_798_p67;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul43_1_reg_1259 <= grp_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_1_reg_1249 <= grp_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_701 <= grp_fu_697_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_707 <= grp_fu_1925_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        tmp_6_reg_1264 <= add_ln26_fu_1132_p2[32'd6];
    end
end
always @ (*) begin
    if (((icmp_ln25_reg_1188 == 1'd1) & (1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage14_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_254;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten135_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten135_load = indvar_flatten135_fu_258;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_250;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce1_local = 1'b1;
    end else begin
        buff_A_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_693_p0 = reg_707;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_693_p0 = add16_fu_262;
    end else begin
        grp_fu_693_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_693_p1 = mul43_1_reg_1259;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_693_p1 = reg_701;
    end else begin
        grp_fu_693_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_697_p0 = mul_1_reg_1249;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_697_p0 = reg_701;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_697_p0 = buff_A_load_1_reg_1244;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_697_p0 = buff_A_load_reg_1239;
        end else begin
            grp_fu_697_p0 = 'bx;
        end
    end else begin
        grp_fu_697_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_697_p1 = tmp_1_reg_1219;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_697_p1 = tmp_reg_1214;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_697_p1 = alpha;
    end else begin
        grp_fu_697_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_address0_local = tmp1_addr_reg_1209_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp1_address0_local = tmp1_addr_reg_1209;
    end else begin
        tmp1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_6_reg_1264 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage10)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_737_p2 = (ap_sig_allocacmp_indvar_flatten135_load + 12'd1);
assign add_ln25_fu_749_p2 = (ap_sig_allocacmp_i_1_load + 7'd1);
assign add_ln26_fu_1132_p2 = (select_ln6_reg_1192 + 7'd2);
assign add_ln27_fu_1090_p2 = (tmp_3_fu_1080_p3 + zext_ln27_fu_1087_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_809 = ((icmp_ln25_reg_1188 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (first_iter_1_reg_1205 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage10;
assign ap_ready = ap_ready_sig;
assign buff_A_address0 = zext_ln27_1_fu_1119_p1;
assign buff_A_address1 = zext_ln27_2_fu_1096_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_ce1 = buff_A_ce1_local;
assign empty_fu_779_p1 = select_ln25_fu_771_p3[5:0];
assign first_iter_1_fu_783_p2 = ((select_ln6_fu_763_p3 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_1925_p_ce = 1'b1;
assign grp_fu_1925_p_din0 = grp_fu_693_p0;
assign grp_fu_1925_p_din1 = grp_fu_693_p1;
assign grp_fu_1925_p_opcode = 2'd0;
assign icmp_ln25_fu_731_p2 = ((ap_sig_allocacmp_indvar_flatten135_load == 12'd2048) ? 1'b1 : 1'b0);
assign select_ln25_fu_771_p3 = ((tmp_2_fu_755_p3[0:0] == 1'b1) ? add_ln25_fu_749_p2 : ap_sig_allocacmp_i_1_load);
assign select_ln6_fu_763_p3 = ((tmp_2_fu_755_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp1_address0 = tmp1_address0_local;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = reg_707;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_1_fu_934_p65 = 'bx;
assign tmp_2_fu_755_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_3_fu_1080_p3 = {{empty_reg_1199}, {6'd0}};
assign tmp_4_fu_1101_p4 = {{select_ln6_reg_1192[5:1]}};
assign tmp_5_fu_1110_p4 = {{{empty_reg_1199}, {tmp_4_fu_1101_p4}}, {1'd1}};
assign tmp_fu_798_p65 = 'bx;
assign trunc_ln26_fu_794_p1 = select_ln6_fu_763_p3[5:0];
assign zext_ln25_fu_789_p1 = select_ln25_fu_771_p3;
assign zext_ln27_1_fu_1119_p1 = tmp_5_fu_1110_p4;
assign zext_ln27_2_fu_1096_p1 = add_ln27_fu_1090_p2;
assign zext_ln27_fu_1087_p1 = select_ln6_reg_1192;
endmodule 