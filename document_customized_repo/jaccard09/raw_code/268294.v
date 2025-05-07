module backprop_backprop_Pipeline_label_17 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v10_2_address0,v10_2_ce0,v10_2_we0,v10_2_d0,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_address0,v10_ce0,v10_we0,v10_d0,v64,v64_1,v64_2,v64_3,v64_4,v64_5,v64_6,v64_7,v64_8,v64_9,v64_10,v64_11,v64_12,v64_13,v64_14,v64_15,v64_16,v64_17,v64_18,v64_19,v64_20,v64_21,v64_22,v64_23,v64_24,v64_25,v64_26,v64_27,v64_28,v64_29,v64_30,v64_31,v64_32,v64_33,v64_34,v64_35,v64_36,v64_37,v64_38,v64_39,v64_40,v64_41,v64_42,v64_43,v64_44,v64_45,v64_46,v64_47,v64_48,v64_49,v64_50,v64_51,v64_52,v64_53,v64_54,v64_55,v64_56,v64_57,v64_58,v64_59,v64_60,v64_61,v64_62,v64_63,v108,v108_3,v108_4,grp_fu_5990_p_din0,grp_fu_5990_p_din1,grp_fu_5990_p_dout0,grp_fu_5990_p_ce,grp_fu_5994_p_din0,grp_fu_5994_p_din1,grp_fu_5994_p_dout0,grp_fu_5994_p_ce,grp_fu_5998_p_din0,grp_fu_5998_p_din1,grp_fu_5998_p_dout0,grp_fu_5998_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v10_2_address0;
output   v10_2_ce0;
output   v10_2_we0;
output  [63:0] v10_2_d0;
output  [5:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [63:0] v10_1_d0;
output  [5:0] v10_address0;
output   v10_ce0;
output   v10_we0;
output  [63:0] v10_d0;
input  [63:0] v64;
input  [63:0] v64_1;
input  [63:0] v64_2;
input  [63:0] v64_3;
input  [63:0] v64_4;
input  [63:0] v64_5;
input  [63:0] v64_6;
input  [63:0] v64_7;
input  [63:0] v64_8;
input  [63:0] v64_9;
input  [63:0] v64_10;
input  [63:0] v64_11;
input  [63:0] v64_12;
input  [63:0] v64_13;
input  [63:0] v64_14;
input  [63:0] v64_15;
input  [63:0] v64_16;
input  [63:0] v64_17;
input  [63:0] v64_18;
input  [63:0] v64_19;
input  [63:0] v64_20;
input  [63:0] v64_21;
input  [63:0] v64_22;
input  [63:0] v64_23;
input  [63:0] v64_24;
input  [63:0] v64_25;
input  [63:0] v64_26;
input  [63:0] v64_27;
input  [63:0] v64_28;
input  [63:0] v64_29;
input  [63:0] v64_30;
input  [63:0] v64_31;
input  [63:0] v64_32;
input  [63:0] v64_33;
input  [63:0] v64_34;
input  [63:0] v64_35;
input  [63:0] v64_36;
input  [63:0] v64_37;
input  [63:0] v64_38;
input  [63:0] v64_39;
input  [63:0] v64_40;
input  [63:0] v64_41;
input  [63:0] v64_42;
input  [63:0] v64_43;
input  [63:0] v64_44;
input  [63:0] v64_45;
input  [63:0] v64_46;
input  [63:0] v64_47;
input  [63:0] v64_48;
input  [63:0] v64_49;
input  [63:0] v64_50;
input  [63:0] v64_51;
input  [63:0] v64_52;
input  [63:0] v64_53;
input  [63:0] v64_54;
input  [63:0] v64_55;
input  [63:0] v64_56;
input  [63:0] v64_57;
input  [63:0] v64_58;
input  [63:0] v64_59;
input  [63:0] v64_60;
input  [63:0] v64_61;
input  [63:0] v64_62;
input  [63:0] v64_63;
input  [63:0] v108;
input  [63:0] v108_3;
input  [63:0] v108_4;
output  [63:0] grp_fu_5990_p_din0;
output  [63:0] grp_fu_5990_p_din1;
input  [63:0] grp_fu_5990_p_dout0;
output   grp_fu_5990_p_ce;
output  [63:0] grp_fu_5994_p_din0;
output  [63:0] grp_fu_5994_p_din1;
input  [63:0] grp_fu_5994_p_dout0;
output   grp_fu_5994_p_ce;
output  [63:0] grp_fu_5998_p_din0;
output  [63:0] grp_fu_5998_p_din1;
input  [63:0] grp_fu_5998_p_dout0;
output   grp_fu_5998_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln177_fu_765_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v100_1_reg_1078;
reg   [6:0] v100_1_reg_1078_pp0_iter1_reg;
reg   [6:0] v100_1_reg_1078_pp0_iter2_reg;
reg   [6:0] v100_1_reg_1078_pp0_iter3_reg;
reg   [6:0] v100_1_reg_1078_pp0_iter4_reg;
reg   [6:0] v100_1_reg_1078_pp0_iter5_reg;
reg   [6:0] v100_1_reg_1078_pp0_iter6_reg;
reg   [6:0] v100_1_reg_1078_pp0_iter7_reg;
wire   [63:0] v101_fu_781_p131;
reg   [63:0] v101_reg_1087;
reg   [63:0] v109_reg_1094;
reg   [63:0] v109_1_reg_1099;
reg   [63:0] v109_2_reg_1104;
wire   [63:0] zext_ln177_fu_1050_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] v100_fu_300;
wire   [6:0] add_ln177_fu_771_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v100_1;
reg    v10_we0_local;
reg    v10_ce0_local;
reg    v10_1_we0_local;
reg    v10_1_ce0_local;
reg    v10_2_we0_local;
reg    v10_2_ce0_local;
wire   [63:0] v101_fu_781_p129;
wire   [5:0] v101_fu_781_p130;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] v101_fu_781_p1;
wire   [5:0] v101_fu_781_p3;
wire   [5:0] v101_fu_781_p5;
wire   [5:0] v101_fu_781_p7;
wire   [5:0] v101_fu_781_p9;
wire   [5:0] v101_fu_781_p11;
wire   [5:0] v101_fu_781_p13;
wire   [5:0] v101_fu_781_p15;
wire   [5:0] v101_fu_781_p17;
wire   [5:0] v101_fu_781_p19;
wire   [5:0] v101_fu_781_p21;
wire   [5:0] v101_fu_781_p23;
wire   [5:0] v101_fu_781_p25;
wire   [5:0] v101_fu_781_p27;
wire   [5:0] v101_fu_781_p29;
wire   [5:0] v101_fu_781_p31;
wire   [5:0] v101_fu_781_p33;
wire   [5:0] v101_fu_781_p35;
wire   [5:0] v101_fu_781_p37;
wire   [5:0] v101_fu_781_p39;
wire   [5:0] v101_fu_781_p41;
wire   [5:0] v101_fu_781_p43;
wire   [5:0] v101_fu_781_p45;
wire   [5:0] v101_fu_781_p47;
wire   [5:0] v101_fu_781_p49;
wire   [5:0] v101_fu_781_p51;
wire   [5:0] v101_fu_781_p53;
wire   [5:0] v101_fu_781_p55;
wire   [5:0] v101_fu_781_p57;
wire   [5:0] v101_fu_781_p59;
wire   [5:0] v101_fu_781_p61;
wire   [5:0] v101_fu_781_p63;
wire  signed [5:0] v101_fu_781_p65;
wire  signed [5:0] v101_fu_781_p67;
wire  signed [5:0] v101_fu_781_p69;
wire  signed [5:0] v101_fu_781_p71;
wire  signed [5:0] v101_fu_781_p73;
wire  signed [5:0] v101_fu_781_p75;
wire  signed [5:0] v101_fu_781_p77;
wire  signed [5:0] v101_fu_781_p79;
wire  signed [5:0] v101_fu_781_p81;
wire  signed [5:0] v101_fu_781_p83;
wire  signed [5:0] v101_fu_781_p85;
wire  signed [5:0] v101_fu_781_p87;
wire  signed [5:0] v101_fu_781_p89;
wire  signed [5:0] v101_fu_781_p91;
wire  signed [5:0] v101_fu_781_p93;
wire  signed [5:0] v101_fu_781_p95;
wire  signed [5:0] v101_fu_781_p97;
wire  signed [5:0] v101_fu_781_p99;
wire  signed [5:0] v101_fu_781_p101;
wire  signed [5:0] v101_fu_781_p103;
wire  signed [5:0] v101_fu_781_p105;
wire  signed [5:0] v101_fu_781_p107;
wire  signed [5:0] v101_fu_781_p109;
wire  signed [5:0] v101_fu_781_p111;
wire  signed [5:0] v101_fu_781_p113;
wire  signed [5:0] v101_fu_781_p115;
wire  signed [5:0] v101_fu_781_p117;
wire  signed [5:0] v101_fu_781_p119;
wire  signed [5:0] v101_fu_781_p121;
wire  signed [5:0] v101_fu_781_p123;
wire  signed [5:0] v101_fu_781_p125;
wire  signed [5:0] v101_fu_781_p127;
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
#0 v100_fu_300 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_129_6_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 64 ),.CASE1( 6'h1 ),.din1_WIDTH( 64 ),.CASE2( 6'h2 ),.din2_WIDTH( 64 ),.CASE3( 6'h3 ),.din3_WIDTH( 64 ),.CASE4( 6'h4 ),.din4_WIDTH( 64 ),.CASE5( 6'h5 ),.din5_WIDTH( 64 ),.CASE6( 6'h6 ),.din6_WIDTH( 64 ),.CASE7( 6'h7 ),.din7_WIDTH( 64 ),.CASE8( 6'h8 ),.din8_WIDTH( 64 ),.CASE9( 6'h9 ),.din9_WIDTH( 64 ),.CASE10( 6'hA ),.din10_WIDTH( 64 ),.CASE11( 6'hB ),.din11_WIDTH( 64 ),.CASE12( 6'hC ),.din12_WIDTH( 64 ),.CASE13( 6'hD ),.din13_WIDTH( 64 ),.CASE14( 6'hE ),.din14_WIDTH( 64 ),.CASE15( 6'hF ),.din15_WIDTH( 64 ),.CASE16( 6'h10 ),.din16_WIDTH( 64 ),.CASE17( 6'h11 ),.din17_WIDTH( 64 ),.CASE18( 6'h12 ),.din18_WIDTH( 64 ),.CASE19( 6'h13 ),.din19_WIDTH( 64 ),.CASE20( 6'h14 ),.din20_WIDTH( 64 ),.CASE21( 6'h15 ),.din21_WIDTH( 64 ),.CASE22( 6'h16 ),.din22_WIDTH( 64 ),.CASE23( 6'h17 ),.din23_WIDTH( 64 ),.CASE24( 6'h18 ),.din24_WIDTH( 64 ),.CASE25( 6'h19 ),.din25_WIDTH( 64 ),.CASE26( 6'h1A ),.din26_WIDTH( 64 ),.CASE27( 6'h1B ),.din27_WIDTH( 64 ),.CASE28( 6'h1C ),.din28_WIDTH( 64 ),.CASE29( 6'h1D ),.din29_WIDTH( 64 ),.CASE30( 6'h1E ),.din30_WIDTH( 64 ),.CASE31( 6'h1F ),.din31_WIDTH( 64 ),.CASE32( 6'h20 ),.din32_WIDTH( 64 ),.CASE33( 6'h21 ),.din33_WIDTH( 64 ),.CASE34( 6'h22 ),.din34_WIDTH( 64 ),.CASE35( 6'h23 ),.din35_WIDTH( 64 ),.CASE36( 6'h24 ),.din36_WIDTH( 64 ),.CASE37( 6'h25 ),.din37_WIDTH( 64 ),.CASE38( 6'h26 ),.din38_WIDTH( 64 ),.CASE39( 6'h27 ),.din39_WIDTH( 64 ),.CASE40( 6'h28 ),.din40_WIDTH( 64 ),.CASE41( 6'h29 ),.din41_WIDTH( 64 ),.CASE42( 6'h2A ),.din42_WIDTH( 64 ),.CASE43( 6'h2B ),.din43_WIDTH( 64 ),.CASE44( 6'h2C ),.din44_WIDTH( 64 ),.CASE45( 6'h2D ),.din45_WIDTH( 64 ),.CASE46( 6'h2E ),.din46_WIDTH( 64 ),.CASE47( 6'h2F ),.din47_WIDTH( 64 ),.CASE48( 6'h30 ),.din48_WIDTH( 64 ),.CASE49( 6'h31 ),.din49_WIDTH( 64 ),.CASE50( 6'h32 ),.din50_WIDTH( 64 ),.CASE51( 6'h33 ),.din51_WIDTH( 64 ),.CASE52( 6'h34 ),.din52_WIDTH( 64 ),.CASE53( 6'h35 ),.din53_WIDTH( 64 ),.CASE54( 6'h36 ),.din54_WIDTH( 64 ),.CASE55( 6'h37 ),.din55_WIDTH( 64 ),.CASE56( 6'h38 ),.din56_WIDTH( 64 ),.CASE57( 6'h39 ),.din57_WIDTH( 64 ),.CASE58( 6'h3A ),.din58_WIDTH( 64 ),.CASE59( 6'h3B ),.din59_WIDTH( 64 ),.CASE60( 6'h3C ),.din60_WIDTH( 64 ),.CASE61( 6'h3D ),.din61_WIDTH( 64 ),.CASE62( 6'h3E ),.din62_WIDTH( 64 ),.CASE63( 6'h3F ),.din63_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 6 ),.dout_WIDTH( 64 ))
sparsemux_129_6_64_1_1_U1011(.din0(v64),.din1(v64_1),.din2(v64_2),.din3(v64_3),.din4(v64_4),.din5(v64_5),.din6(v64_6),.din7(v64_7),.din8(v64_8),.din9(v64_9),.din10(v64_10),.din11(v64_11),.din12(v64_12),.din13(v64_13),.din14(v64_14),.din15(v64_15),.din16(v64_16),.din17(v64_17),.din18(v64_18),.din19(v64_19),.din20(v64_20),.din21(v64_21),.din22(v64_22),.din23(v64_23),.din24(v64_24),.din25(v64_25),.din26(v64_26),.din27(v64_27),.din28(v64_28),.din29(v64_29),.din30(v64_30),.din31(v64_31),.din32(v64_32),.din33(v64_33),.din34(v64_34),.din35(v64_35),.din36(v64_36),.din37(v64_37),.din38(v64_38),.din39(v64_39),.din40(v64_40),.din41(v64_41),.din42(v64_42),.din43(v64_43),.din44(v64_44),.din45(v64_45),.din46(v64_46),.din47(v64_47),.din48(v64_48),.din49(v64_49),.din50(v64_50),.din51(v64_51),.din52(v64_52),.din53(v64_53),.din54(v64_54),.din55(v64_55),.din56(v64_56),.din57(v64_57),.din58(v64_58),.din59(v64_59),.din60(v64_60),.din61(v64_61),.din62(v64_62),.din63(v64_63),.def(v101_fu_781_p129),.sel(v101_fu_781_p130),.dout(v101_fu_781_p131));
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
        end else if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln177_fu_765_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v100_fu_300 <= add_ln177_fu_771_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v100_fu_300 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v100_1_reg_1078 <= ap_sig_allocacmp_v100_1;
        v100_1_reg_1078_pp0_iter1_reg <= v100_1_reg_1078;
        v101_reg_1087 <= v101_fu_781_p131;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        v100_1_reg_1078_pp0_iter2_reg <= v100_1_reg_1078_pp0_iter1_reg;
        v100_1_reg_1078_pp0_iter3_reg <= v100_1_reg_1078_pp0_iter2_reg;
        v100_1_reg_1078_pp0_iter4_reg <= v100_1_reg_1078_pp0_iter3_reg;
        v100_1_reg_1078_pp0_iter5_reg <= v100_1_reg_1078_pp0_iter4_reg;
        v100_1_reg_1078_pp0_iter6_reg <= v100_1_reg_1078_pp0_iter5_reg;
        v100_1_reg_1078_pp0_iter7_reg <= v100_1_reg_1078_pp0_iter6_reg;
        v109_1_reg_1099 <= grp_fu_5994_p_dout0;
        v109_2_reg_1104 <= grp_fu_5998_p_dout0;
        v109_reg_1094 <= grp_fu_5990_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln177_fu_765_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v100_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v100_1 = v100_fu_300;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v10_2_ce0_local = 1'b1;
    end else begin
        v10_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v10_2_we0_local = 1'b1;
    end else begin
        v10_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v10_ce0_local = 1'b1;
    end else begin
        v10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        v10_we0_local = 1'b1;
    end else begin
        v10_we0_local = 1'b0;
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
assign add_ln177_fu_771_p2 = (ap_sig_allocacmp_v100_1 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_5990_p_ce = 1'b1;
assign grp_fu_5990_p_din0 = v101_reg_1087;
assign grp_fu_5990_p_din1 = v108;
assign grp_fu_5994_p_ce = 1'b1;
assign grp_fu_5994_p_din0 = v101_reg_1087;
assign grp_fu_5994_p_din1 = v108_3;
assign grp_fu_5998_p_ce = 1'b1;
assign grp_fu_5998_p_din0 = v101_reg_1087;
assign grp_fu_5998_p_din1 = v108_4;
assign icmp_ln177_fu_765_p2 = ((ap_sig_allocacmp_v100_1 == 7'd64) ? 1'b1 : 1'b0);
assign v101_fu_781_p129 = 'bx;
assign v101_fu_781_p130 = ap_sig_allocacmp_v100_1[5:0];
assign v10_1_address0 = zext_ln177_fu_1050_p1;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_d0 = v109_1_reg_1099;
assign v10_1_we0 = v10_1_we0_local;
assign v10_2_address0 = zext_ln177_fu_1050_p1;
assign v10_2_ce0 = v10_2_ce0_local;
assign v10_2_d0 = v109_2_reg_1104;
assign v10_2_we0 = v10_2_we0_local;
assign v10_address0 = zext_ln177_fu_1050_p1;
assign v10_ce0 = v10_ce0_local;
assign v10_d0 = v109_reg_1094;
assign v10_we0 = v10_we0_local;
assign zext_ln177_fu_1050_p1 = v100_1_reg_1078_pp0_iter7_reg;
endmodule 