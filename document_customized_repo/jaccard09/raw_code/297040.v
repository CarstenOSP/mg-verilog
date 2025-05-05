module backprop_backprop_Pipeline_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v19_2_address0,v19_2_ce0,v19_2_we0,v19_2_d0,v19_2_address1,v19_2_ce1,v19_2_q1,v19_1_address0,v19_1_ce0,v19_1_we0,v19_1_d0,v19_1_address1,v19_1_ce1,v19_1_q1,v19_address0,v19_ce0,v19_we0,v19_d0,v19_address1,v19_ce1,v19_q1,empty_48,empty_49,empty_50,empty_51,empty_52,empty_53,empty_54,empty_55,empty_56,empty_57,empty_58,empty_59,empty_60,empty_61,empty_62,empty_63,empty_64,empty_65,empty_66,empty_67,empty_68,empty_69,empty_70,empty_71,empty_72,empty_73,empty_74,empty_75,empty_76,empty_77,empty_78,empty_79,empty_80,empty_81,empty_82,empty_83,empty_84,empty_85,empty_86,empty_87,empty_88,empty_89,empty_90,empty_91,empty_92,empty_93,empty_94,empty_95,empty_96,empty_97,empty_98,empty_99,empty_100,empty_101,empty_102,empty_103,empty_104,empty_105,empty_106,empty_107,empty_108,empty_109,empty_110,empty,grp_fu_3193_p_din0,grp_fu_3193_p_din1,grp_fu_3193_p_opcode,grp_fu_3193_p_dout0,grp_fu_3193_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v19_2_address0;
output   v19_2_ce0;
output   v19_2_we0;
output  [63:0] v19_2_d0;
output  [4:0] v19_2_address1;
output   v19_2_ce1;
input  [63:0] v19_2_q1;
output  [4:0] v19_1_address0;
output   v19_1_ce0;
output   v19_1_we0;
output  [63:0] v19_1_d0;
output  [4:0] v19_1_address1;
output   v19_1_ce1;
input  [63:0] v19_1_q1;
output  [4:0] v19_address0;
output   v19_ce0;
output   v19_we0;
output  [63:0] v19_d0;
output  [4:0] v19_address1;
output   v19_ce1;
input  [63:0] v19_q1;
input  [63:0] empty_48;
input  [63:0] empty_49;
input  [63:0] empty_50;
input  [63:0] empty_51;
input  [63:0] empty_52;
input  [63:0] empty_53;
input  [63:0] empty_54;
input  [63:0] empty_55;
input  [63:0] empty_56;
input  [63:0] empty_57;
input  [63:0] empty_58;
input  [63:0] empty_59;
input  [63:0] empty_60;
input  [63:0] empty_61;
input  [63:0] empty_62;
input  [63:0] empty_63;
input  [63:0] empty_64;
input  [63:0] empty_65;
input  [63:0] empty_66;
input  [63:0] empty_67;
input  [63:0] empty_68;
input  [63:0] empty_69;
input  [63:0] empty_70;
input  [63:0] empty_71;
input  [63:0] empty_72;
input  [63:0] empty_73;
input  [63:0] empty_74;
input  [63:0] empty_75;
input  [63:0] empty_76;
input  [63:0] empty_77;
input  [63:0] empty_78;
input  [63:0] empty_79;
input  [63:0] empty_80;
input  [63:0] empty_81;
input  [63:0] empty_82;
input  [63:0] empty_83;
input  [63:0] empty_84;
input  [63:0] empty_85;
input  [63:0] empty_86;
input  [63:0] empty_87;
input  [63:0] empty_88;
input  [63:0] empty_89;
input  [63:0] empty_90;
input  [63:0] empty_91;
input  [63:0] empty_92;
input  [63:0] empty_93;
input  [63:0] empty_94;
input  [63:0] empty_95;
input  [63:0] empty_96;
input  [63:0] empty_97;
input  [63:0] empty_98;
input  [63:0] empty_99;
input  [63:0] empty_100;
input  [63:0] empty_101;
input  [63:0] empty_102;
input  [63:0] empty_103;
input  [63:0] empty_104;
input  [63:0] empty_105;
input  [63:0] empty_106;
input  [63:0] empty_107;
input  [63:0] empty_108;
input  [63:0] empty_109;
input  [63:0] empty_110;
input  [63:0] empty;
output  [63:0] grp_fu_3193_p_din0;
output  [63:0] grp_fu_3193_p_din1;
output  [0:0] grp_fu_3193_p_opcode;
input  [63:0] grp_fu_3193_p_dout0;
output   grp_fu_3193_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln105_fu_783_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln105_reg_1172;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] v19_addr_reg_1176;
reg   [4:0] v19_addr_reg_1176_pp0_iter1_reg;
reg   [4:0] v19_addr_reg_1176_pp0_iter2_reg;
reg   [4:0] v19_addr_reg_1176_pp0_iter3_reg;
reg   [4:0] v19_addr_reg_1176_pp0_iter4_reg;
reg   [4:0] v19_addr_reg_1176_pp0_iter5_reg;
reg   [4:0] v19_addr_reg_1176_pp0_iter6_reg;
reg   [4:0] v19_addr_reg_1176_pp0_iter7_reg;
reg   [4:0] v19_addr_reg_1176_pp0_iter8_reg;
reg   [4:0] v19_addr_reg_1176_pp0_iter9_reg;
reg   [4:0] v19_1_addr_reg_1182;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter1_reg;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter2_reg;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter3_reg;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter4_reg;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter5_reg;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter6_reg;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter7_reg;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter8_reg;
reg   [4:0] v19_1_addr_reg_1182_pp0_iter9_reg;
reg   [4:0] v19_2_addr_reg_1188;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter1_reg;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter2_reg;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter3_reg;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter4_reg;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter5_reg;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter6_reg;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter7_reg;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter8_reg;
reg   [4:0] v19_2_addr_reg_1188_pp0_iter9_reg;
wire   [63:0] v51_fu_825_p131;
reg   [63:0] v51_reg_1194;
reg   [63:0] v51_reg_1194_pp0_iter1_reg;
wire   [1:0] trunc_ln105_1_fu_1102_p1;
reg   [1:0] trunc_ln105_1_reg_1199;
reg   [1:0] trunc_ln105_1_reg_1199_pp0_iter2_reg;
reg   [1:0] trunc_ln105_1_reg_1199_pp0_iter3_reg;
reg   [1:0] trunc_ln105_1_reg_1199_pp0_iter4_reg;
reg   [1:0] trunc_ln105_1_reg_1199_pp0_iter5_reg;
reg   [1:0] trunc_ln105_1_reg_1199_pp0_iter6_reg;
reg   [1:0] trunc_ln105_1_reg_1199_pp0_iter7_reg;
reg   [1:0] trunc_ln105_1_reg_1199_pp0_iter8_reg;
reg   [1:0] trunc_ln105_1_reg_1199_pp0_iter9_reg;
wire   [63:0] v50_fu_1106_p9;
reg   [63:0] v50_reg_1203;
reg   [63:0] v52_reg_1208;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln105_fu_818_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] phi_urem193_fu_314;
wire   [6:0] select_ln105_fu_1138_p3;
wire    ap_loop_init;
reg   [13:0] phi_mul191_fu_318;
wire   [13:0] add_ln105_1_fu_802_p2;
reg   [13:0] ap_sig_allocacmp_phi_mul191_load;
reg   [6:0] v49_fu_322;
wire   [6:0] add_ln105_fu_789_p2;
reg   [6:0] ap_sig_allocacmp_v49_1;
reg    v19_ce1_local;
reg    v19_we0_local;
reg    v19_ce0_local;
reg    v19_1_ce1_local;
reg    v19_1_we0_local;
reg    v19_1_ce0_local;
reg    v19_2_ce1_local;
reg    v19_2_we0_local;
reg    v19_2_ce0_local;
wire   [4:0] tmp_66_fu_808_p4;
wire   [63:0] v51_fu_825_p129;
wire   [5:0] v51_fu_825_p130;
wire   [63:0] v50_fu_1106_p7;
wire   [1:0] v50_fu_1106_p8;
wire   [6:0] add_ln105_2_fu_1126_p2;
wire   [0:0] icmp_ln105_1_fu_1132_p2;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] v51_fu_825_p1;
wire   [5:0] v51_fu_825_p3;
wire   [5:0] v51_fu_825_p5;
wire   [5:0] v51_fu_825_p7;
wire   [5:0] v51_fu_825_p9;
wire   [5:0] v51_fu_825_p11;
wire   [5:0] v51_fu_825_p13;
wire   [5:0] v51_fu_825_p15;
wire   [5:0] v51_fu_825_p17;
wire   [5:0] v51_fu_825_p19;
wire   [5:0] v51_fu_825_p21;
wire   [5:0] v51_fu_825_p23;
wire   [5:0] v51_fu_825_p25;
wire   [5:0] v51_fu_825_p27;
wire   [5:0] v51_fu_825_p29;
wire   [5:0] v51_fu_825_p31;
wire   [5:0] v51_fu_825_p33;
wire   [5:0] v51_fu_825_p35;
wire   [5:0] v51_fu_825_p37;
wire   [5:0] v51_fu_825_p39;
wire   [5:0] v51_fu_825_p41;
wire   [5:0] v51_fu_825_p43;
wire   [5:0] v51_fu_825_p45;
wire   [5:0] v51_fu_825_p47;
wire   [5:0] v51_fu_825_p49;
wire   [5:0] v51_fu_825_p51;
wire   [5:0] v51_fu_825_p53;
wire   [5:0] v51_fu_825_p55;
wire   [5:0] v51_fu_825_p57;
wire   [5:0] v51_fu_825_p59;
wire   [5:0] v51_fu_825_p61;
wire   [5:0] v51_fu_825_p63;
wire  signed [5:0] v51_fu_825_p65;
wire  signed [5:0] v51_fu_825_p67;
wire  signed [5:0] v51_fu_825_p69;
wire  signed [5:0] v51_fu_825_p71;
wire  signed [5:0] v51_fu_825_p73;
wire  signed [5:0] v51_fu_825_p75;
wire  signed [5:0] v51_fu_825_p77;
wire  signed [5:0] v51_fu_825_p79;
wire  signed [5:0] v51_fu_825_p81;
wire  signed [5:0] v51_fu_825_p83;
wire  signed [5:0] v51_fu_825_p85;
wire  signed [5:0] v51_fu_825_p87;
wire  signed [5:0] v51_fu_825_p89;
wire  signed [5:0] v51_fu_825_p91;
wire  signed [5:0] v51_fu_825_p93;
wire  signed [5:0] v51_fu_825_p95;
wire  signed [5:0] v51_fu_825_p97;
wire  signed [5:0] v51_fu_825_p99;
wire  signed [5:0] v51_fu_825_p101;
wire  signed [5:0] v51_fu_825_p103;
wire  signed [5:0] v51_fu_825_p105;
wire  signed [5:0] v51_fu_825_p107;
wire  signed [5:0] v51_fu_825_p109;
wire  signed [5:0] v51_fu_825_p111;
wire  signed [5:0] v51_fu_825_p113;
wire  signed [5:0] v51_fu_825_p115;
wire  signed [5:0] v51_fu_825_p117;
wire  signed [5:0] v51_fu_825_p119;
wire  signed [5:0] v51_fu_825_p121;
wire  signed [5:0] v51_fu_825_p123;
wire  signed [5:0] v51_fu_825_p125;
wire  signed [5:0] v51_fu_825_p127;
wire   [1:0] v50_fu_1106_p1;
wire   [1:0] v50_fu_1106_p3;
wire  signed [1:0] v50_fu_1106_p5;
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
#0 phi_urem193_fu_314 = 7'd0;
#0 phi_mul191_fu_318 = 14'd0;
#0 v49_fu_322 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U58(.din0(empty_48),.din1(empty_49),.din2(empty_50),.din3(empty_51),.din4(empty_52),.din5(empty_53),.din6(empty_54),.din7(empty_55),.din8(empty_56),.din9(empty_57),.din10(empty_58),.din11(empty_59),.din12(empty_60),.din13(empty_61),.din14(empty_62),.din15(empty_63),.din16(empty_64),.din17(empty_65),.din18(empty_66),.din19(empty_67),.din20(empty_68),.din21(empty_69),.din22(empty_70),.din23(empty_71),.din24(empty_72),.din25(empty_73),.din26(empty_74),.din27(empty_75),.din28(empty_76),.din29(empty_77),.din30(empty_78),.din31(empty_79),.din32(empty_80),.din33(empty_81),.din34(empty_82),.din35(empty_83),.din36(empty_84),.din37(empty_85),.din38(empty_86),.din39(empty_87),.din40(empty_88),.din41(empty_89),.din42(empty_90),.din43(empty_91),.din44(empty_92),.din45(empty_93),.din46(empty_94),.din47(empty_95),.din48(empty_96),.din49(empty_97),.din50(empty_98),.din51(empty_99),.din52(empty_100),.din53(empty_101),.din54(empty_102),.din55(empty_103),.din56(empty_104),.din57(empty_105),.din58(empty_106),.din59(empty_107),.din60(empty_108),.din61(empty_109),.din62(empty_110),.din63(empty),.def(v51_fu_825_p129),.sel(v51_fu_825_p130),.dout(v51_fu_825_p131));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U59(.din0(v19_q1),.din1(v19_1_q1),.din2(v19_2_q1),.def(v50_fu_1106_p7),.sel(v50_fu_1106_p8),.dout(v50_fu_1106_p9));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
        if (((icmp_ln105_fu_783_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            phi_mul191_fu_318 <= add_ln105_1_fu_802_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            phi_mul191_fu_318 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            phi_urem193_fu_314 <= 7'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln105_reg_1172 == 1'd0))) begin
            phi_urem193_fu_314 <= select_ln105_fu_1138_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln105_fu_783_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v49_fu_322 <= add_ln105_fu_789_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_322 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln105_reg_1172 <= icmp_ln105_fu_783_p2;
        trunc_ln105_1_reg_1199 <= trunc_ln105_1_fu_1102_p1;
        v19_1_addr_reg_1182 <= zext_ln105_fu_818_p1;
        v19_1_addr_reg_1182_pp0_iter1_reg <= v19_1_addr_reg_1182;
        v19_2_addr_reg_1188 <= zext_ln105_fu_818_p1;
        v19_2_addr_reg_1188_pp0_iter1_reg <= v19_2_addr_reg_1188;
        v19_addr_reg_1176 <= zext_ln105_fu_818_p1;
        v19_addr_reg_1176_pp0_iter1_reg <= v19_addr_reg_1176;
        v50_reg_1203 <= v50_fu_1106_p9;
        v51_reg_1194 <= v51_fu_825_p131;
        v51_reg_1194_pp0_iter1_reg <= v51_reg_1194;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        trunc_ln105_1_reg_1199_pp0_iter2_reg <= trunc_ln105_1_reg_1199;
        trunc_ln105_1_reg_1199_pp0_iter3_reg <= trunc_ln105_1_reg_1199_pp0_iter2_reg;
        trunc_ln105_1_reg_1199_pp0_iter4_reg <= trunc_ln105_1_reg_1199_pp0_iter3_reg;
        trunc_ln105_1_reg_1199_pp0_iter5_reg <= trunc_ln105_1_reg_1199_pp0_iter4_reg;
        trunc_ln105_1_reg_1199_pp0_iter6_reg <= trunc_ln105_1_reg_1199_pp0_iter5_reg;
        trunc_ln105_1_reg_1199_pp0_iter7_reg <= trunc_ln105_1_reg_1199_pp0_iter6_reg;
        trunc_ln105_1_reg_1199_pp0_iter8_reg <= trunc_ln105_1_reg_1199_pp0_iter7_reg;
        trunc_ln105_1_reg_1199_pp0_iter9_reg <= trunc_ln105_1_reg_1199_pp0_iter8_reg;
        v19_1_addr_reg_1182_pp0_iter2_reg <= v19_1_addr_reg_1182_pp0_iter1_reg;
        v19_1_addr_reg_1182_pp0_iter3_reg <= v19_1_addr_reg_1182_pp0_iter2_reg;
        v19_1_addr_reg_1182_pp0_iter4_reg <= v19_1_addr_reg_1182_pp0_iter3_reg;
        v19_1_addr_reg_1182_pp0_iter5_reg <= v19_1_addr_reg_1182_pp0_iter4_reg;
        v19_1_addr_reg_1182_pp0_iter6_reg <= v19_1_addr_reg_1182_pp0_iter5_reg;
        v19_1_addr_reg_1182_pp0_iter7_reg <= v19_1_addr_reg_1182_pp0_iter6_reg;
        v19_1_addr_reg_1182_pp0_iter8_reg <= v19_1_addr_reg_1182_pp0_iter7_reg;
        v19_1_addr_reg_1182_pp0_iter9_reg <= v19_1_addr_reg_1182_pp0_iter8_reg;
        v19_2_addr_reg_1188_pp0_iter2_reg <= v19_2_addr_reg_1188_pp0_iter1_reg;
        v19_2_addr_reg_1188_pp0_iter3_reg <= v19_2_addr_reg_1188_pp0_iter2_reg;
        v19_2_addr_reg_1188_pp0_iter4_reg <= v19_2_addr_reg_1188_pp0_iter3_reg;
        v19_2_addr_reg_1188_pp0_iter5_reg <= v19_2_addr_reg_1188_pp0_iter4_reg;
        v19_2_addr_reg_1188_pp0_iter6_reg <= v19_2_addr_reg_1188_pp0_iter5_reg;
        v19_2_addr_reg_1188_pp0_iter7_reg <= v19_2_addr_reg_1188_pp0_iter6_reg;
        v19_2_addr_reg_1188_pp0_iter8_reg <= v19_2_addr_reg_1188_pp0_iter7_reg;
        v19_2_addr_reg_1188_pp0_iter9_reg <= v19_2_addr_reg_1188_pp0_iter8_reg;
        v19_addr_reg_1176_pp0_iter2_reg <= v19_addr_reg_1176_pp0_iter1_reg;
        v19_addr_reg_1176_pp0_iter3_reg <= v19_addr_reg_1176_pp0_iter2_reg;
        v19_addr_reg_1176_pp0_iter4_reg <= v19_addr_reg_1176_pp0_iter3_reg;
        v19_addr_reg_1176_pp0_iter5_reg <= v19_addr_reg_1176_pp0_iter4_reg;
        v19_addr_reg_1176_pp0_iter6_reg <= v19_addr_reg_1176_pp0_iter5_reg;
        v19_addr_reg_1176_pp0_iter7_reg <= v19_addr_reg_1176_pp0_iter6_reg;
        v19_addr_reg_1176_pp0_iter8_reg <= v19_addr_reg_1176_pp0_iter7_reg;
        v19_addr_reg_1176_pp0_iter9_reg <= v19_addr_reg_1176_pp0_iter8_reg;
        v52_reg_1208 <= grp_fu_3193_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln105_fu_783_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln105_reg_1172 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_phi_mul191_load = 14'd0;
    end else begin
        ap_sig_allocacmp_phi_mul191_load = phi_mul191_fu_318;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_1 = v49_fu_322;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_1_ce1_local = 1'b1;
    end else begin
        v19_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln105_1_reg_1199_pp0_iter9_reg == 2'd1))) begin
        v19_1_we0_local = 1'b1;
    end else begin
        v19_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_2_ce1_local = 1'b1;
    end else begin
        v19_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln105_1_reg_1199_pp0_iter9_reg == 2'd1) & ~(trunc_ln105_1_reg_1199_pp0_iter9_reg == 2'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v19_2_we0_local = 1'b1;
    end else begin
        v19_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_ce1_local = 1'b1;
    end else begin
        v19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln105_1_reg_1199_pp0_iter9_reg == 2'd0))) begin
        v19_we0_local = 1'b1;
    end else begin
        v19_we0_local = 1'b0;
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
assign add_ln105_1_fu_802_p2 = (ap_sig_allocacmp_phi_mul191_load + 14'd171);
assign add_ln105_2_fu_1126_p2 = (phi_urem193_fu_314 + 7'd1);
assign add_ln105_fu_789_p2 = (ap_sig_allocacmp_v49_1 + 7'd1);
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
assign grp_fu_3193_p_ce = 1'b1;
assign grp_fu_3193_p_din0 = v50_reg_1203;
assign grp_fu_3193_p_din1 = v51_reg_1194_pp0_iter1_reg;
assign grp_fu_3193_p_opcode = 2'd0;
assign icmp_ln105_1_fu_1132_p2 = ((add_ln105_2_fu_1126_p2 < 7'd3) ? 1'b1 : 1'b0);
assign icmp_ln105_fu_783_p2 = ((ap_sig_allocacmp_v49_1 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln105_fu_1138_p3 = ((icmp_ln105_1_fu_1132_p2[0:0] == 1'b1) ? add_ln105_2_fu_1126_p2 : 7'd0);
assign tmp_66_fu_808_p4 = {{ap_sig_allocacmp_phi_mul191_load[13:9]}};
assign trunc_ln105_1_fu_1102_p1 = phi_urem193_fu_314[1:0];
assign v19_1_address0 = v19_1_addr_reg_1182_pp0_iter9_reg;
assign v19_1_address1 = zext_ln105_fu_818_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_1_ce1 = v19_1_ce1_local;
assign v19_1_d0 = v52_reg_1208;
assign v19_1_we0 = v19_1_we0_local;
assign v19_2_address0 = v19_2_addr_reg_1188_pp0_iter9_reg;
assign v19_2_address1 = zext_ln105_fu_818_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_2_ce1 = v19_2_ce1_local;
assign v19_2_d0 = v52_reg_1208;
assign v19_2_we0 = v19_2_we0_local;
assign v19_address0 = v19_addr_reg_1176_pp0_iter9_reg;
assign v19_address1 = zext_ln105_fu_818_p1;
assign v19_ce0 = v19_ce0_local;
assign v19_ce1 = v19_ce1_local;
assign v19_d0 = v52_reg_1208;
assign v19_we0 = v19_we0_local;
assign v50_fu_1106_p7 = 'bx;
assign v50_fu_1106_p8 = phi_urem193_fu_314[1:0];
assign v51_fu_825_p129 = 'bx;
assign v51_fu_825_p130 = ap_sig_allocacmp_v49_1[5:0];
assign zext_ln105_fu_818_p1 = tmp_66_fu_808_p4;
endmodule 