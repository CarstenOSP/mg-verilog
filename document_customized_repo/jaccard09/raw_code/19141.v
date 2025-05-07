module bfs_bfs_Pipeline_loop_neighbors (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,e,cnt,tmp_end,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,edges_2_address0,edges_2_ce0,edges_2_q0,edges_3_address0,edges_3_ce0,edges_3_q0,edges_4_address0,edges_4_ce0,edges_4_q0,edges_5_address0,edges_5_ce0,edges_5_q0,edges_6_address0,edges_6_ce0,edges_6_q0,edges_7_address0,edges_7_ce0,edges_7_q0,edges_8_address0,edges_8_ce0,edges_8_q0,edges_9_address0,edges_9_ce0,edges_9_q0,edges_10_address0,edges_10_ce0,edges_10_q0,edges_11_address0,edges_11_ce0,edges_11_q0,edges_12_address0,edges_12_ce0,edges_12_q0,edges_13_address0,edges_13_ce0,edges_13_q0,edges_14_address0,edges_14_ce0,edges_14_q0,edges_15_address0,edges_15_ce0,edges_15_q0,edges_16_address0,edges_16_ce0,edges_16_q0,edges_17_address0,edges_17_ce0,edges_17_q0,edges_18_address0,edges_18_ce0,edges_18_q0,edges_19_address0,edges_19_ce0,edges_19_q0,edges_20_address0,edges_20_ce0,edges_20_q0,edges_21_address0,edges_21_ce0,edges_21_q0,edges_22_address0,edges_22_ce0,edges_22_q0,edges_23_address0,edges_23_ce0,edges_23_q0,edges_24_address0,edges_24_ce0,edges_24_q0,edges_25_address0,edges_25_ce0,edges_25_q0,edges_26_address0,edges_26_ce0,edges_26_q0,edges_27_address0,edges_27_ce0,edges_27_q0,edges_28_address0,edges_28_ce0,edges_28_q0,edges_29_address0,edges_29_ce0,edges_29_q0,edges_30_address0,edges_30_ce0,edges_30_q0,edges_31_address0,edges_31_ce0,edges_31_q0,edges_32_address0,edges_32_ce0,edges_32_q0,edges_33_address0,edges_33_ce0,edges_33_q0,edges_34_address0,edges_34_ce0,edges_34_q0,edges_35_address0,edges_35_ce0,edges_35_q0,edges_36_address0,edges_36_ce0,edges_36_q0,edges_37_address0,edges_37_ce0,edges_37_q0,edges_38_address0,edges_38_ce0,edges_38_q0,edges_39_address0,edges_39_ce0,edges_39_q0,edges_40_address0,edges_40_ce0,edges_40_q0,edges_41_address0,edges_41_ce0,edges_41_q0,edges_42_address0,edges_42_ce0,edges_42_q0,edges_43_address0,edges_43_ce0,edges_43_q0,edges_44_address0,edges_44_ce0,edges_44_q0,edges_45_address0,edges_45_ce0,edges_45_q0,edges_46_address0,edges_46_ce0,edges_46_q0,edges_47_address0,edges_47_ce0,edges_47_q0,edges_48_address0,edges_48_ce0,edges_48_q0,edges_49_address0,edges_49_ce0,edges_49_q0,edges_50_address0,edges_50_ce0,edges_50_q0,edges_51_address0,edges_51_ce0,edges_51_q0,edges_52_address0,edges_52_ce0,edges_52_q0,edges_53_address0,edges_53_ce0,edges_53_q0,edges_54_address0,edges_54_ce0,edges_54_q0,edges_55_address0,edges_55_ce0,edges_55_q0,edges_56_address0,edges_56_ce0,edges_56_q0,edges_57_address0,edges_57_ce0,edges_57_q0,edges_58_address0,edges_58_ce0,edges_58_q0,edges_59_address0,edges_59_ce0,edges_59_q0,edges_60_address0,edges_60_ce0,edges_60_q0,edges_61_address0,edges_61_ce0,edges_61_q0,edges_62_address0,edges_62_ce0,edges_62_q0,edges_63_address0,edges_63_ce0,edges_63_q0,level_address0,level_ce0,level_we0,level_d0,level_q0,indvars_iv_next12_cast4,cnt_1_out,cnt_1_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] e;
input  [63:0] cnt;
input  [63:0] tmp_end;
output  [5:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [5:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
output  [5:0] edges_2_address0;
output   edges_2_ce0;
input  [63:0] edges_2_q0;
output  [5:0] edges_3_address0;
output   edges_3_ce0;
input  [63:0] edges_3_q0;
output  [5:0] edges_4_address0;
output   edges_4_ce0;
input  [63:0] edges_4_q0;
output  [5:0] edges_5_address0;
output   edges_5_ce0;
input  [63:0] edges_5_q0;
output  [5:0] edges_6_address0;
output   edges_6_ce0;
input  [63:0] edges_6_q0;
output  [5:0] edges_7_address0;
output   edges_7_ce0;
input  [63:0] edges_7_q0;
output  [5:0] edges_8_address0;
output   edges_8_ce0;
input  [63:0] edges_8_q0;
output  [5:0] edges_9_address0;
output   edges_9_ce0;
input  [63:0] edges_9_q0;
output  [5:0] edges_10_address0;
output   edges_10_ce0;
input  [63:0] edges_10_q0;
output  [5:0] edges_11_address0;
output   edges_11_ce0;
input  [63:0] edges_11_q0;
output  [5:0] edges_12_address0;
output   edges_12_ce0;
input  [63:0] edges_12_q0;
output  [5:0] edges_13_address0;
output   edges_13_ce0;
input  [63:0] edges_13_q0;
output  [5:0] edges_14_address0;
output   edges_14_ce0;
input  [63:0] edges_14_q0;
output  [5:0] edges_15_address0;
output   edges_15_ce0;
input  [63:0] edges_15_q0;
output  [5:0] edges_16_address0;
output   edges_16_ce0;
input  [63:0] edges_16_q0;
output  [5:0] edges_17_address0;
output   edges_17_ce0;
input  [63:0] edges_17_q0;
output  [5:0] edges_18_address0;
output   edges_18_ce0;
input  [63:0] edges_18_q0;
output  [5:0] edges_19_address0;
output   edges_19_ce0;
input  [63:0] edges_19_q0;
output  [5:0] edges_20_address0;
output   edges_20_ce0;
input  [63:0] edges_20_q0;
output  [5:0] edges_21_address0;
output   edges_21_ce0;
input  [63:0] edges_21_q0;
output  [5:0] edges_22_address0;
output   edges_22_ce0;
input  [63:0] edges_22_q0;
output  [5:0] edges_23_address0;
output   edges_23_ce0;
input  [63:0] edges_23_q0;
output  [5:0] edges_24_address0;
output   edges_24_ce0;
input  [63:0] edges_24_q0;
output  [5:0] edges_25_address0;
output   edges_25_ce0;
input  [63:0] edges_25_q0;
output  [5:0] edges_26_address0;
output   edges_26_ce0;
input  [63:0] edges_26_q0;
output  [5:0] edges_27_address0;
output   edges_27_ce0;
input  [63:0] edges_27_q0;
output  [5:0] edges_28_address0;
output   edges_28_ce0;
input  [63:0] edges_28_q0;
output  [5:0] edges_29_address0;
output   edges_29_ce0;
input  [63:0] edges_29_q0;
output  [5:0] edges_30_address0;
output   edges_30_ce0;
input  [63:0] edges_30_q0;
output  [5:0] edges_31_address0;
output   edges_31_ce0;
input  [63:0] edges_31_q0;
output  [5:0] edges_32_address0;
output   edges_32_ce0;
input  [63:0] edges_32_q0;
output  [5:0] edges_33_address0;
output   edges_33_ce0;
input  [63:0] edges_33_q0;
output  [5:0] edges_34_address0;
output   edges_34_ce0;
input  [63:0] edges_34_q0;
output  [5:0] edges_35_address0;
output   edges_35_ce0;
input  [63:0] edges_35_q0;
output  [5:0] edges_36_address0;
output   edges_36_ce0;
input  [63:0] edges_36_q0;
output  [5:0] edges_37_address0;
output   edges_37_ce0;
input  [63:0] edges_37_q0;
output  [5:0] edges_38_address0;
output   edges_38_ce0;
input  [63:0] edges_38_q0;
output  [5:0] edges_39_address0;
output   edges_39_ce0;
input  [63:0] edges_39_q0;
output  [5:0] edges_40_address0;
output   edges_40_ce0;
input  [63:0] edges_40_q0;
output  [5:0] edges_41_address0;
output   edges_41_ce0;
input  [63:0] edges_41_q0;
output  [5:0] edges_42_address0;
output   edges_42_ce0;
input  [63:0] edges_42_q0;
output  [5:0] edges_43_address0;
output   edges_43_ce0;
input  [63:0] edges_43_q0;
output  [5:0] edges_44_address0;
output   edges_44_ce0;
input  [63:0] edges_44_q0;
output  [5:0] edges_45_address0;
output   edges_45_ce0;
input  [63:0] edges_45_q0;
output  [5:0] edges_46_address0;
output   edges_46_ce0;
input  [63:0] edges_46_q0;
output  [5:0] edges_47_address0;
output   edges_47_ce0;
input  [63:0] edges_47_q0;
output  [5:0] edges_48_address0;
output   edges_48_ce0;
input  [63:0] edges_48_q0;
output  [5:0] edges_49_address0;
output   edges_49_ce0;
input  [63:0] edges_49_q0;
output  [5:0] edges_50_address0;
output   edges_50_ce0;
input  [63:0] edges_50_q0;
output  [5:0] edges_51_address0;
output   edges_51_ce0;
input  [63:0] edges_51_q0;
output  [5:0] edges_52_address0;
output   edges_52_ce0;
input  [63:0] edges_52_q0;
output  [5:0] edges_53_address0;
output   edges_53_ce0;
input  [63:0] edges_53_q0;
output  [5:0] edges_54_address0;
output   edges_54_ce0;
input  [63:0] edges_54_q0;
output  [5:0] edges_55_address0;
output   edges_55_ce0;
input  [63:0] edges_55_q0;
output  [5:0] edges_56_address0;
output   edges_56_ce0;
input  [63:0] edges_56_q0;
output  [5:0] edges_57_address0;
output   edges_57_ce0;
input  [63:0] edges_57_q0;
output  [5:0] edges_58_address0;
output   edges_58_ce0;
input  [63:0] edges_58_q0;
output  [5:0] edges_59_address0;
output   edges_59_ce0;
input  [63:0] edges_59_q0;
output  [5:0] edges_60_address0;
output   edges_60_ce0;
input  [63:0] edges_60_q0;
output  [5:0] edges_61_address0;
output   edges_61_ce0;
input  [63:0] edges_61_q0;
output  [5:0] edges_62_address0;
output   edges_62_ce0;
input  [63:0] edges_62_q0;
output  [5:0] edges_63_address0;
output   edges_63_ce0;
input  [63:0] edges_63_q0;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
input  [3:0] indvars_iv_next12_cast4;
output  [63:0] cnt_1_out;
output   cnt_1_out_ap_vld;
reg ap_idle;
reg cnt_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln28_reg_1930;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] indvars_iv_next12_cast4_cast_fu_1206_p1;
reg   [7:0] indvars_iv_next12_cast4_cast_reg_1919;
reg   [63:0] e_3_reg_1924;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln28_fu_1231_p2;
wire   [0:0] icmp_ln29_fu_1321_p2;
reg   [0:0] icmp_ln29_reg_1934;
reg   [0:0] icmp_ln29_reg_1934_pp0_iter1_reg;
wire   [7:0] tmp_dst_fu_1590_p131;
reg   [7:0] tmp_dst_reg_2258;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] level_addr_reg_2263;
wire   [0:0] icmp_ln34_fu_1868_p2;
reg   [0:0] icmp_ln34_reg_2268;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln14_fu_1253_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln31_fu_1864_p1;
wire    ap_block_pp0_stage0;
reg   [7:0] i_fu_318;
wire   [7:0] i_2_fu_1237_p2;
wire    ap_loop_init;
reg   [63:0] e_1_fu_322;
wire   [63:0] e_4_fu_1854_p2;
reg   [63:0] cnt_1_fu_326;
wire   [63:0] cnt_2_fu_1877_p2;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage2_01001;
reg    edges_0_ce0_local;
reg    edges_1_ce0_local;
reg    edges_2_ce0_local;
reg    edges_3_ce0_local;
reg    edges_4_ce0_local;
reg    edges_5_ce0_local;
reg    edges_6_ce0_local;
reg    edges_7_ce0_local;
reg    edges_8_ce0_local;
reg    edges_9_ce0_local;
reg    edges_10_ce0_local;
reg    edges_11_ce0_local;
reg    edges_12_ce0_local;
reg    edges_13_ce0_local;
reg    edges_14_ce0_local;
reg    edges_15_ce0_local;
reg    edges_16_ce0_local;
reg    edges_17_ce0_local;
reg    edges_18_ce0_local;
reg    edges_19_ce0_local;
reg    edges_20_ce0_local;
reg    edges_21_ce0_local;
reg    edges_22_ce0_local;
reg    edges_23_ce0_local;
reg    edges_24_ce0_local;
reg    edges_25_ce0_local;
reg    edges_26_ce0_local;
reg    edges_27_ce0_local;
reg    edges_28_ce0_local;
reg    edges_29_ce0_local;
reg    edges_30_ce0_local;
reg    edges_31_ce0_local;
reg    edges_32_ce0_local;
reg    edges_33_ce0_local;
reg    edges_34_ce0_local;
reg    edges_35_ce0_local;
reg    edges_36_ce0_local;
reg    edges_37_ce0_local;
reg    edges_38_ce0_local;
reg    edges_39_ce0_local;
reg    edges_40_ce0_local;
reg    edges_41_ce0_local;
reg    edges_42_ce0_local;
reg    edges_43_ce0_local;
reg    edges_44_ce0_local;
reg    edges_45_ce0_local;
reg    edges_46_ce0_local;
reg    edges_47_ce0_local;
reg    edges_48_ce0_local;
reg    edges_49_ce0_local;
reg    edges_50_ce0_local;
reg    edges_51_ce0_local;
reg    edges_52_ce0_local;
reg    edges_53_ce0_local;
reg    edges_54_ce0_local;
reg    edges_55_ce0_local;
reg    edges_56_ce0_local;
reg    edges_57_ce0_local;
reg    edges_58_ce0_local;
reg    edges_59_ce0_local;
reg    edges_60_ce0_local;
reg    edges_61_ce0_local;
reg    edges_62_ce0_local;
reg    edges_63_ce0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_we0_local;
wire   [5:0] lshr_ln1_fu_1243_p4;
wire   [7:0] tmp_dst_fu_1590_p2;
wire   [7:0] tmp_dst_fu_1590_p4;
wire   [7:0] tmp_dst_fu_1590_p6;
wire   [7:0] tmp_dst_fu_1590_p8;
wire   [7:0] tmp_dst_fu_1590_p10;
wire   [7:0] tmp_dst_fu_1590_p12;
wire   [7:0] tmp_dst_fu_1590_p14;
wire   [7:0] tmp_dst_fu_1590_p16;
wire   [7:0] tmp_dst_fu_1590_p18;
wire   [7:0] tmp_dst_fu_1590_p20;
wire   [7:0] tmp_dst_fu_1590_p22;
wire   [7:0] tmp_dst_fu_1590_p24;
wire   [7:0] tmp_dst_fu_1590_p26;
wire   [7:0] tmp_dst_fu_1590_p28;
wire   [7:0] tmp_dst_fu_1590_p30;
wire   [7:0] tmp_dst_fu_1590_p32;
wire   [7:0] tmp_dst_fu_1590_p34;
wire   [7:0] tmp_dst_fu_1590_p36;
wire   [7:0] tmp_dst_fu_1590_p38;
wire   [7:0] tmp_dst_fu_1590_p40;
wire   [7:0] tmp_dst_fu_1590_p42;
wire   [7:0] tmp_dst_fu_1590_p44;
wire   [7:0] tmp_dst_fu_1590_p46;
wire   [7:0] tmp_dst_fu_1590_p48;
wire   [7:0] tmp_dst_fu_1590_p50;
wire   [7:0] tmp_dst_fu_1590_p52;
wire   [7:0] tmp_dst_fu_1590_p54;
wire   [7:0] tmp_dst_fu_1590_p56;
wire   [7:0] tmp_dst_fu_1590_p58;
wire   [7:0] tmp_dst_fu_1590_p60;
wire   [7:0] tmp_dst_fu_1590_p62;
wire   [7:0] tmp_dst_fu_1590_p64;
wire   [7:0] tmp_dst_fu_1590_p66;
wire   [7:0] tmp_dst_fu_1590_p68;
wire   [7:0] tmp_dst_fu_1590_p70;
wire   [7:0] tmp_dst_fu_1590_p72;
wire   [7:0] tmp_dst_fu_1590_p74;
wire   [7:0] tmp_dst_fu_1590_p76;
wire   [7:0] tmp_dst_fu_1590_p78;
wire   [7:0] tmp_dst_fu_1590_p80;
wire   [7:0] tmp_dst_fu_1590_p82;
wire   [7:0] tmp_dst_fu_1590_p84;
wire   [7:0] tmp_dst_fu_1590_p86;
wire   [7:0] tmp_dst_fu_1590_p88;
wire   [7:0] tmp_dst_fu_1590_p90;
wire   [7:0] tmp_dst_fu_1590_p92;
wire   [7:0] tmp_dst_fu_1590_p94;
wire   [7:0] tmp_dst_fu_1590_p96;
wire   [7:0] tmp_dst_fu_1590_p98;
wire   [7:0] tmp_dst_fu_1590_p100;
wire   [7:0] tmp_dst_fu_1590_p102;
wire   [7:0] tmp_dst_fu_1590_p104;
wire   [7:0] tmp_dst_fu_1590_p106;
wire   [7:0] tmp_dst_fu_1590_p108;
wire   [7:0] tmp_dst_fu_1590_p110;
wire   [7:0] tmp_dst_fu_1590_p112;
wire   [7:0] tmp_dst_fu_1590_p114;
wire   [7:0] tmp_dst_fu_1590_p116;
wire   [7:0] tmp_dst_fu_1590_p118;
wire   [7:0] tmp_dst_fu_1590_p120;
wire   [7:0] tmp_dst_fu_1590_p122;
wire   [7:0] tmp_dst_fu_1590_p124;
wire   [7:0] tmp_dst_fu_1590_p126;
wire   [7:0] tmp_dst_fu_1590_p128;
wire   [7:0] tmp_dst_fu_1590_p129;
wire   [5:0] tmp_dst_fu_1590_p130;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_dst_fu_1590_p1;
wire   [5:0] tmp_dst_fu_1590_p3;
wire   [5:0] tmp_dst_fu_1590_p5;
wire   [5:0] tmp_dst_fu_1590_p7;
wire   [5:0] tmp_dst_fu_1590_p9;
wire   [5:0] tmp_dst_fu_1590_p11;
wire   [5:0] tmp_dst_fu_1590_p13;
wire   [5:0] tmp_dst_fu_1590_p15;
wire   [5:0] tmp_dst_fu_1590_p17;
wire   [5:0] tmp_dst_fu_1590_p19;
wire   [5:0] tmp_dst_fu_1590_p21;
wire   [5:0] tmp_dst_fu_1590_p23;
wire   [5:0] tmp_dst_fu_1590_p25;
wire   [5:0] tmp_dst_fu_1590_p27;
wire   [5:0] tmp_dst_fu_1590_p29;
wire   [5:0] tmp_dst_fu_1590_p31;
wire   [5:0] tmp_dst_fu_1590_p33;
wire   [5:0] tmp_dst_fu_1590_p35;
wire   [5:0] tmp_dst_fu_1590_p37;
wire   [5:0] tmp_dst_fu_1590_p39;
wire   [5:0] tmp_dst_fu_1590_p41;
wire   [5:0] tmp_dst_fu_1590_p43;
wire   [5:0] tmp_dst_fu_1590_p45;
wire   [5:0] tmp_dst_fu_1590_p47;
wire   [5:0] tmp_dst_fu_1590_p49;
wire   [5:0] tmp_dst_fu_1590_p51;
wire   [5:0] tmp_dst_fu_1590_p53;
wire   [5:0] tmp_dst_fu_1590_p55;
wire   [5:0] tmp_dst_fu_1590_p57;
wire   [5:0] tmp_dst_fu_1590_p59;
wire   [5:0] tmp_dst_fu_1590_p61;
wire   [5:0] tmp_dst_fu_1590_p63;
wire  signed [5:0] tmp_dst_fu_1590_p65;
wire  signed [5:0] tmp_dst_fu_1590_p67;
wire  signed [5:0] tmp_dst_fu_1590_p69;
wire  signed [5:0] tmp_dst_fu_1590_p71;
wire  signed [5:0] tmp_dst_fu_1590_p73;
wire  signed [5:0] tmp_dst_fu_1590_p75;
wire  signed [5:0] tmp_dst_fu_1590_p77;
wire  signed [5:0] tmp_dst_fu_1590_p79;
wire  signed [5:0] tmp_dst_fu_1590_p81;
wire  signed [5:0] tmp_dst_fu_1590_p83;
wire  signed [5:0] tmp_dst_fu_1590_p85;
wire  signed [5:0] tmp_dst_fu_1590_p87;
wire  signed [5:0] tmp_dst_fu_1590_p89;
wire  signed [5:0] tmp_dst_fu_1590_p91;
wire  signed [5:0] tmp_dst_fu_1590_p93;
wire  signed [5:0] tmp_dst_fu_1590_p95;
wire  signed [5:0] tmp_dst_fu_1590_p97;
wire  signed [5:0] tmp_dst_fu_1590_p99;
wire  signed [5:0] tmp_dst_fu_1590_p101;
wire  signed [5:0] tmp_dst_fu_1590_p103;
wire  signed [5:0] tmp_dst_fu_1590_p105;
wire  signed [5:0] tmp_dst_fu_1590_p107;
wire  signed [5:0] tmp_dst_fu_1590_p109;
wire  signed [5:0] tmp_dst_fu_1590_p111;
wire  signed [5:0] tmp_dst_fu_1590_p113;
wire  signed [5:0] tmp_dst_fu_1590_p115;
wire  signed [5:0] tmp_dst_fu_1590_p117;
wire  signed [5:0] tmp_dst_fu_1590_p119;
wire  signed [5:0] tmp_dst_fu_1590_p121;
wire  signed [5:0] tmp_dst_fu_1590_p123;
wire  signed [5:0] tmp_dst_fu_1590_p125;
wire  signed [5:0] tmp_dst_fu_1590_p127;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_318 = 8'd0;
#0 e_1_fu_322 = 64'd0;
#0 cnt_1_fu_326 = 64'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bfs_sparsemux_129_6_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h0 ),.din0_WIDTH( 8 ),.CASE1( 6'h1 ),.din1_WIDTH( 8 ),.CASE2( 6'h2 ),.din2_WIDTH( 8 ),.CASE3( 6'h3 ),.din3_WIDTH( 8 ),.CASE4( 6'h4 ),.din4_WIDTH( 8 ),.CASE5( 6'h5 ),.din5_WIDTH( 8 ),.CASE6( 6'h6 ),.din6_WIDTH( 8 ),.CASE7( 6'h7 ),.din7_WIDTH( 8 ),.CASE8( 6'h8 ),.din8_WIDTH( 8 ),.CASE9( 6'h9 ),.din9_WIDTH( 8 ),.CASE10( 6'hA ),.din10_WIDTH( 8 ),.CASE11( 6'hB ),.din11_WIDTH( 8 ),.CASE12( 6'hC ),.din12_WIDTH( 8 ),.CASE13( 6'hD ),.din13_WIDTH( 8 ),.CASE14( 6'hE ),.din14_WIDTH( 8 ),.CASE15( 6'hF ),.din15_WIDTH( 8 ),.CASE16( 6'h10 ),.din16_WIDTH( 8 ),.CASE17( 6'h11 ),.din17_WIDTH( 8 ),.CASE18( 6'h12 ),.din18_WIDTH( 8 ),.CASE19( 6'h13 ),.din19_WIDTH( 8 ),.CASE20( 6'h14 ),.din20_WIDTH( 8 ),.CASE21( 6'h15 ),.din21_WIDTH( 8 ),.CASE22( 6'h16 ),.din22_WIDTH( 8 ),.CASE23( 6'h17 ),.din23_WIDTH( 8 ),.CASE24( 6'h18 ),.din24_WIDTH( 8 ),.CASE25( 6'h19 ),.din25_WIDTH( 8 ),.CASE26( 6'h1A ),.din26_WIDTH( 8 ),.CASE27( 6'h1B ),.din27_WIDTH( 8 ),.CASE28( 6'h1C ),.din28_WIDTH( 8 ),.CASE29( 6'h1D ),.din29_WIDTH( 8 ),.CASE30( 6'h1E ),.din30_WIDTH( 8 ),.CASE31( 6'h1F ),.din31_WIDTH( 8 ),.CASE32( 6'h20 ),.din32_WIDTH( 8 ),.CASE33( 6'h21 ),.din33_WIDTH( 8 ),.CASE34( 6'h22 ),.din34_WIDTH( 8 ),.CASE35( 6'h23 ),.din35_WIDTH( 8 ),.CASE36( 6'h24 ),.din36_WIDTH( 8 ),.CASE37( 6'h25 ),.din37_WIDTH( 8 ),.CASE38( 6'h26 ),.din38_WIDTH( 8 ),.CASE39( 6'h27 ),.din39_WIDTH( 8 ),.CASE40( 6'h28 ),.din40_WIDTH( 8 ),.CASE41( 6'h29 ),.din41_WIDTH( 8 ),.CASE42( 6'h2A ),.din42_WIDTH( 8 ),.CASE43( 6'h2B ),.din43_WIDTH( 8 ),.CASE44( 6'h2C ),.din44_WIDTH( 8 ),.CASE45( 6'h2D ),.din45_WIDTH( 8 ),.CASE46( 6'h2E ),.din46_WIDTH( 8 ),.CASE47( 6'h2F ),.din47_WIDTH( 8 ),.CASE48( 6'h30 ),.din48_WIDTH( 8 ),.CASE49( 6'h31 ),.din49_WIDTH( 8 ),.CASE50( 6'h32 ),.din50_WIDTH( 8 ),.CASE51( 6'h33 ),.din51_WIDTH( 8 ),.CASE52( 6'h34 ),.din52_WIDTH( 8 ),.CASE53( 6'h35 ),.din53_WIDTH( 8 ),.CASE54( 6'h36 ),.din54_WIDTH( 8 ),.CASE55( 6'h37 ),.din55_WIDTH( 8 ),.CASE56( 6'h38 ),.din56_WIDTH( 8 ),.CASE57( 6'h39 ),.din57_WIDTH( 8 ),.CASE58( 6'h3A ),.din58_WIDTH( 8 ),.CASE59( 6'h3B ),.din59_WIDTH( 8 ),.CASE60( 6'h3C ),.din60_WIDTH( 8 ),.CASE61( 6'h3D ),.din61_WIDTH( 8 ),.CASE62( 6'h3E ),.din62_WIDTH( 8 ),.CASE63( 6'h3F ),.din63_WIDTH( 8 ),.def_WIDTH( 8 ),.sel_WIDTH( 6 ),.dout_WIDTH( 8 ))
sparsemux_129_6_8_1_1_U1(.din0(tmp_dst_fu_1590_p2),.din1(tmp_dst_fu_1590_p4),.din2(tmp_dst_fu_1590_p6),.din3(tmp_dst_fu_1590_p8),.din4(tmp_dst_fu_1590_p10),.din5(tmp_dst_fu_1590_p12),.din6(tmp_dst_fu_1590_p14),.din7(tmp_dst_fu_1590_p16),.din8(tmp_dst_fu_1590_p18),.din9(tmp_dst_fu_1590_p20),.din10(tmp_dst_fu_1590_p22),.din11(tmp_dst_fu_1590_p24),.din12(tmp_dst_fu_1590_p26),.din13(tmp_dst_fu_1590_p28),.din14(tmp_dst_fu_1590_p30),.din15(tmp_dst_fu_1590_p32),.din16(tmp_dst_fu_1590_p34),.din17(tmp_dst_fu_1590_p36),.din18(tmp_dst_fu_1590_p38),.din19(tmp_dst_fu_1590_p40),.din20(tmp_dst_fu_1590_p42),.din21(tmp_dst_fu_1590_p44),.din22(tmp_dst_fu_1590_p46),.din23(tmp_dst_fu_1590_p48),.din24(tmp_dst_fu_1590_p50),.din25(tmp_dst_fu_1590_p52),.din26(tmp_dst_fu_1590_p54),.din27(tmp_dst_fu_1590_p56),.din28(tmp_dst_fu_1590_p58),.din29(tmp_dst_fu_1590_p60),.din30(tmp_dst_fu_1590_p62),.din31(tmp_dst_fu_1590_p64),.din32(tmp_dst_fu_1590_p66),.din33(tmp_dst_fu_1590_p68),.din34(tmp_dst_fu_1590_p70),.din35(tmp_dst_fu_1590_p72),.din36(tmp_dst_fu_1590_p74),.din37(tmp_dst_fu_1590_p76),.din38(tmp_dst_fu_1590_p78),.din39(tmp_dst_fu_1590_p80),.din40(tmp_dst_fu_1590_p82),.din41(tmp_dst_fu_1590_p84),.din42(tmp_dst_fu_1590_p86),.din43(tmp_dst_fu_1590_p88),.din44(tmp_dst_fu_1590_p90),.din45(tmp_dst_fu_1590_p92),.din46(tmp_dst_fu_1590_p94),.din47(tmp_dst_fu_1590_p96),.din48(tmp_dst_fu_1590_p98),.din49(tmp_dst_fu_1590_p100),.din50(tmp_dst_fu_1590_p102),.din51(tmp_dst_fu_1590_p104),.din52(tmp_dst_fu_1590_p106),.din53(tmp_dst_fu_1590_p108),.din54(tmp_dst_fu_1590_p110),.din55(tmp_dst_fu_1590_p112),.din56(tmp_dst_fu_1590_p114),.din57(tmp_dst_fu_1590_p116),.din58(tmp_dst_fu_1590_p118),.din59(tmp_dst_fu_1590_p120),.din60(tmp_dst_fu_1590_p122),.din61(tmp_dst_fu_1590_p124),.din62(tmp_dst_fu_1590_p126),.din63(tmp_dst_fu_1590_p128),.def(tmp_dst_fu_1590_p129),.sel(tmp_dst_fu_1590_p130),.dout(tmp_dst_fu_1590_p131));
bfs_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        cnt_1_fu_326 <= cnt;
    end else if (((icmp_ln34_fu_1868_p2 == 1'd1) & (icmp_ln29_reg_1934 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        cnt_1_fu_326 <= cnt_2_fu_1877_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        e_1_fu_322 <= e;
    end else if (((icmp_ln28_reg_1930 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        e_1_fu_322 <= e_4_fu_1854_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_318 <= 8'd0;
    end else if (((icmp_ln28_fu_1231_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_318 <= i_2_fu_1237_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        e_3_reg_1924 <= e_1_fu_322;
        icmp_ln28_reg_1930 <= icmp_ln28_fu_1231_p2;
        icmp_ln29_reg_1934 <= icmp_ln29_fu_1321_p2;
        icmp_ln29_reg_1934_pp0_iter1_reg <= icmp_ln29_reg_1934;
        icmp_ln34_reg_2268 <= icmp_ln34_fu_1868_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next12_cast4_cast_reg_1919[3 : 0] <= indvars_iv_next12_cast4_cast_fu_1206_p1[3 : 0];
        level_addr_reg_2263 <= zext_ln31_fu_1864_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_dst_reg_2258 <= tmp_dst_fu_1590_p131;
    end
end
always @ (*) begin
    if (((icmp_ln28_reg_1930 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln28_reg_1930 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        cnt_1_out_ap_vld = 1'b1;
    end else begin
        cnt_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_0_ce0_local = 1'b1;
    end else begin
        edges_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_10_ce0_local = 1'b1;
    end else begin
        edges_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_11_ce0_local = 1'b1;
    end else begin
        edges_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_12_ce0_local = 1'b1;
    end else begin
        edges_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_13_ce0_local = 1'b1;
    end else begin
        edges_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_14_ce0_local = 1'b1;
    end else begin
        edges_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_15_ce0_local = 1'b1;
    end else begin
        edges_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_16_ce0_local = 1'b1;
    end else begin
        edges_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_17_ce0_local = 1'b1;
    end else begin
        edges_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_18_ce0_local = 1'b1;
    end else begin
        edges_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_19_ce0_local = 1'b1;
    end else begin
        edges_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_1_ce0_local = 1'b1;
    end else begin
        edges_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_20_ce0_local = 1'b1;
    end else begin
        edges_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_21_ce0_local = 1'b1;
    end else begin
        edges_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_22_ce0_local = 1'b1;
    end else begin
        edges_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_23_ce0_local = 1'b1;
    end else begin
        edges_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_24_ce0_local = 1'b1;
    end else begin
        edges_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_25_ce0_local = 1'b1;
    end else begin
        edges_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_26_ce0_local = 1'b1;
    end else begin
        edges_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_27_ce0_local = 1'b1;
    end else begin
        edges_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_28_ce0_local = 1'b1;
    end else begin
        edges_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_29_ce0_local = 1'b1;
    end else begin
        edges_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_2_ce0_local = 1'b1;
    end else begin
        edges_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_30_ce0_local = 1'b1;
    end else begin
        edges_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_31_ce0_local = 1'b1;
    end else begin
        edges_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_32_ce0_local = 1'b1;
    end else begin
        edges_32_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_33_ce0_local = 1'b1;
    end else begin
        edges_33_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_34_ce0_local = 1'b1;
    end else begin
        edges_34_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_35_ce0_local = 1'b1;
    end else begin
        edges_35_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_36_ce0_local = 1'b1;
    end else begin
        edges_36_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_37_ce0_local = 1'b1;
    end else begin
        edges_37_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_38_ce0_local = 1'b1;
    end else begin
        edges_38_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_39_ce0_local = 1'b1;
    end else begin
        edges_39_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_3_ce0_local = 1'b1;
    end else begin
        edges_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_40_ce0_local = 1'b1;
    end else begin
        edges_40_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_41_ce0_local = 1'b1;
    end else begin
        edges_41_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_42_ce0_local = 1'b1;
    end else begin
        edges_42_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_43_ce0_local = 1'b1;
    end else begin
        edges_43_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_44_ce0_local = 1'b1;
    end else begin
        edges_44_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_45_ce0_local = 1'b1;
    end else begin
        edges_45_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_46_ce0_local = 1'b1;
    end else begin
        edges_46_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_47_ce0_local = 1'b1;
    end else begin
        edges_47_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_48_ce0_local = 1'b1;
    end else begin
        edges_48_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_49_ce0_local = 1'b1;
    end else begin
        edges_49_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_4_ce0_local = 1'b1;
    end else begin
        edges_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_50_ce0_local = 1'b1;
    end else begin
        edges_50_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_51_ce0_local = 1'b1;
    end else begin
        edges_51_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_52_ce0_local = 1'b1;
    end else begin
        edges_52_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_53_ce0_local = 1'b1;
    end else begin
        edges_53_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_54_ce0_local = 1'b1;
    end else begin
        edges_54_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_55_ce0_local = 1'b1;
    end else begin
        edges_55_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_56_ce0_local = 1'b1;
    end else begin
        edges_56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_57_ce0_local = 1'b1;
    end else begin
        edges_57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_58_ce0_local = 1'b1;
    end else begin
        edges_58_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_59_ce0_local = 1'b1;
    end else begin
        edges_59_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_5_ce0_local = 1'b1;
    end else begin
        edges_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_60_ce0_local = 1'b1;
    end else begin
        edges_60_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_61_ce0_local = 1'b1;
    end else begin
        edges_61_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_62_ce0_local = 1'b1;
    end else begin
        edges_62_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_63_ce0_local = 1'b1;
    end else begin
        edges_63_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_6_ce0_local = 1'b1;
    end else begin
        edges_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_7_ce0_local = 1'b1;
    end else begin
        edges_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_8_ce0_local = 1'b1;
    end else begin
        edges_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        edges_9_ce0_local = 1'b1;
    end else begin
        edges_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            level_address0_local = level_addr_reg_2263;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            level_address0_local = zext_ln31_fu_1864_p1;
        end else begin
            level_address0_local = 'bx;
        end
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln34_reg_2268 == 1'd1) & (icmp_ln29_reg_1934_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
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
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign cnt_1_out = cnt_1_fu_326;
assign cnt_2_fu_1877_p2 = (cnt_1_fu_326 + 64'd1);
assign e_4_fu_1854_p2 = (e_3_reg_1924 + 64'd1);
assign edges_0_address0 = zext_ln14_fu_1253_p1;
assign edges_0_ce0 = edges_0_ce0_local;
assign edges_10_address0 = zext_ln14_fu_1253_p1;
assign edges_10_ce0 = edges_10_ce0_local;
assign edges_11_address0 = zext_ln14_fu_1253_p1;
assign edges_11_ce0 = edges_11_ce0_local;
assign edges_12_address0 = zext_ln14_fu_1253_p1;
assign edges_12_ce0 = edges_12_ce0_local;
assign edges_13_address0 = zext_ln14_fu_1253_p1;
assign edges_13_ce0 = edges_13_ce0_local;
assign edges_14_address0 = zext_ln14_fu_1253_p1;
assign edges_14_ce0 = edges_14_ce0_local;
assign edges_15_address0 = zext_ln14_fu_1253_p1;
assign edges_15_ce0 = edges_15_ce0_local;
assign edges_16_address0 = zext_ln14_fu_1253_p1;
assign edges_16_ce0 = edges_16_ce0_local;
assign edges_17_address0 = zext_ln14_fu_1253_p1;
assign edges_17_ce0 = edges_17_ce0_local;
assign edges_18_address0 = zext_ln14_fu_1253_p1;
assign edges_18_ce0 = edges_18_ce0_local;
assign edges_19_address0 = zext_ln14_fu_1253_p1;
assign edges_19_ce0 = edges_19_ce0_local;
assign edges_1_address0 = zext_ln14_fu_1253_p1;
assign edges_1_ce0 = edges_1_ce0_local;
assign edges_20_address0 = zext_ln14_fu_1253_p1;
assign edges_20_ce0 = edges_20_ce0_local;
assign edges_21_address0 = zext_ln14_fu_1253_p1;
assign edges_21_ce0 = edges_21_ce0_local;
assign edges_22_address0 = zext_ln14_fu_1253_p1;
assign edges_22_ce0 = edges_22_ce0_local;
assign edges_23_address0 = zext_ln14_fu_1253_p1;
assign edges_23_ce0 = edges_23_ce0_local;
assign edges_24_address0 = zext_ln14_fu_1253_p1;
assign edges_24_ce0 = edges_24_ce0_local;
assign edges_25_address0 = zext_ln14_fu_1253_p1;
assign edges_25_ce0 = edges_25_ce0_local;
assign edges_26_address0 = zext_ln14_fu_1253_p1;
assign edges_26_ce0 = edges_26_ce0_local;
assign edges_27_address0 = zext_ln14_fu_1253_p1;
assign edges_27_ce0 = edges_27_ce0_local;
assign edges_28_address0 = zext_ln14_fu_1253_p1;
assign edges_28_ce0 = edges_28_ce0_local;
assign edges_29_address0 = zext_ln14_fu_1253_p1;
assign edges_29_ce0 = edges_29_ce0_local;
assign edges_2_address0 = zext_ln14_fu_1253_p1;
assign edges_2_ce0 = edges_2_ce0_local;
assign edges_30_address0 = zext_ln14_fu_1253_p1;
assign edges_30_ce0 = edges_30_ce0_local;
assign edges_31_address0 = zext_ln14_fu_1253_p1;
assign edges_31_ce0 = edges_31_ce0_local;
assign edges_32_address0 = zext_ln14_fu_1253_p1;
assign edges_32_ce0 = edges_32_ce0_local;
assign edges_33_address0 = zext_ln14_fu_1253_p1;
assign edges_33_ce0 = edges_33_ce0_local;
assign edges_34_address0 = zext_ln14_fu_1253_p1;
assign edges_34_ce0 = edges_34_ce0_local;
assign edges_35_address0 = zext_ln14_fu_1253_p1;
assign edges_35_ce0 = edges_35_ce0_local;
assign edges_36_address0 = zext_ln14_fu_1253_p1;
assign edges_36_ce0 = edges_36_ce0_local;
assign edges_37_address0 = zext_ln14_fu_1253_p1;
assign edges_37_ce0 = edges_37_ce0_local;
assign edges_38_address0 = zext_ln14_fu_1253_p1;
assign edges_38_ce0 = edges_38_ce0_local;
assign edges_39_address0 = zext_ln14_fu_1253_p1;
assign edges_39_ce0 = edges_39_ce0_local;
assign edges_3_address0 = zext_ln14_fu_1253_p1;
assign edges_3_ce0 = edges_3_ce0_local;
assign edges_40_address0 = zext_ln14_fu_1253_p1;
assign edges_40_ce0 = edges_40_ce0_local;
assign edges_41_address0 = zext_ln14_fu_1253_p1;
assign edges_41_ce0 = edges_41_ce0_local;
assign edges_42_address0 = zext_ln14_fu_1253_p1;
assign edges_42_ce0 = edges_42_ce0_local;
assign edges_43_address0 = zext_ln14_fu_1253_p1;
assign edges_43_ce0 = edges_43_ce0_local;
assign edges_44_address0 = zext_ln14_fu_1253_p1;
assign edges_44_ce0 = edges_44_ce0_local;
assign edges_45_address0 = zext_ln14_fu_1253_p1;
assign edges_45_ce0 = edges_45_ce0_local;
assign edges_46_address0 = zext_ln14_fu_1253_p1;
assign edges_46_ce0 = edges_46_ce0_local;
assign edges_47_address0 = zext_ln14_fu_1253_p1;
assign edges_47_ce0 = edges_47_ce0_local;
assign edges_48_address0 = zext_ln14_fu_1253_p1;
assign edges_48_ce0 = edges_48_ce0_local;
assign edges_49_address0 = zext_ln14_fu_1253_p1;
assign edges_49_ce0 = edges_49_ce0_local;
assign edges_4_address0 = zext_ln14_fu_1253_p1;
assign edges_4_ce0 = edges_4_ce0_local;
assign edges_50_address0 = zext_ln14_fu_1253_p1;
assign edges_50_ce0 = edges_50_ce0_local;
assign edges_51_address0 = zext_ln14_fu_1253_p1;
assign edges_51_ce0 = edges_51_ce0_local;
assign edges_52_address0 = zext_ln14_fu_1253_p1;
assign edges_52_ce0 = edges_52_ce0_local;
assign edges_53_address0 = zext_ln14_fu_1253_p1;
assign edges_53_ce0 = edges_53_ce0_local;
assign edges_54_address0 = zext_ln14_fu_1253_p1;
assign edges_54_ce0 = edges_54_ce0_local;
assign edges_55_address0 = zext_ln14_fu_1253_p1;
assign edges_55_ce0 = edges_55_ce0_local;
assign edges_56_address0 = zext_ln14_fu_1253_p1;
assign edges_56_ce0 = edges_56_ce0_local;
assign edges_57_address0 = zext_ln14_fu_1253_p1;
assign edges_57_ce0 = edges_57_ce0_local;
assign edges_58_address0 = zext_ln14_fu_1253_p1;
assign edges_58_ce0 = edges_58_ce0_local;
assign edges_59_address0 = zext_ln14_fu_1253_p1;
assign edges_59_ce0 = edges_59_ce0_local;
assign edges_5_address0 = zext_ln14_fu_1253_p1;
assign edges_5_ce0 = edges_5_ce0_local;
assign edges_60_address0 = zext_ln14_fu_1253_p1;
assign edges_60_ce0 = edges_60_ce0_local;
assign edges_61_address0 = zext_ln14_fu_1253_p1;
assign edges_61_ce0 = edges_61_ce0_local;
assign edges_62_address0 = zext_ln14_fu_1253_p1;
assign edges_62_ce0 = edges_62_ce0_local;
assign edges_63_address0 = zext_ln14_fu_1253_p1;
assign edges_63_ce0 = edges_63_ce0_local;
assign edges_6_address0 = zext_ln14_fu_1253_p1;
assign edges_6_ce0 = edges_6_ce0_local;
assign edges_7_address0 = zext_ln14_fu_1253_p1;
assign edges_7_ce0 = edges_7_ce0_local;
assign edges_8_address0 = zext_ln14_fu_1253_p1;
assign edges_8_ce0 = edges_8_ce0_local;
assign edges_9_address0 = zext_ln14_fu_1253_p1;
assign edges_9_ce0 = edges_9_ce0_local;
assign i_2_fu_1237_p2 = (i_fu_318 + 8'd1);
assign icmp_ln28_fu_1231_p2 = ((i_fu_318 == 8'd158) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_1321_p2 = ((e_1_fu_322 < tmp_end) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_1868_p2 = ((level_q0 == 8'd127) ? 1'b1 : 1'b0);
assign indvars_iv_next12_cast4_cast_fu_1206_p1 = indvars_iv_next12_cast4;
assign level_address0 = level_address0_local;
assign level_ce0 = level_ce0_local;
assign level_d0 = indvars_iv_next12_cast4_cast_reg_1919;
assign level_we0 = level_we0_local;
assign lshr_ln1_fu_1243_p4 = {{e_1_fu_322[11:6]}};
assign tmp_dst_fu_1590_p10 = edges_4_q0[7:0];
assign tmp_dst_fu_1590_p100 = edges_49_q0[7:0];
assign tmp_dst_fu_1590_p102 = edges_50_q0[7:0];
assign tmp_dst_fu_1590_p104 = edges_51_q0[7:0];
assign tmp_dst_fu_1590_p106 = edges_52_q0[7:0];
assign tmp_dst_fu_1590_p108 = edges_53_q0[7:0];
assign tmp_dst_fu_1590_p110 = edges_54_q0[7:0];
assign tmp_dst_fu_1590_p112 = edges_55_q0[7:0];
assign tmp_dst_fu_1590_p114 = edges_56_q0[7:0];
assign tmp_dst_fu_1590_p116 = edges_57_q0[7:0];
assign tmp_dst_fu_1590_p118 = edges_58_q0[7:0];
assign tmp_dst_fu_1590_p12 = edges_5_q0[7:0];
assign tmp_dst_fu_1590_p120 = edges_59_q0[7:0];
assign tmp_dst_fu_1590_p122 = edges_60_q0[7:0];
assign tmp_dst_fu_1590_p124 = edges_61_q0[7:0];
assign tmp_dst_fu_1590_p126 = edges_62_q0[7:0];
assign tmp_dst_fu_1590_p128 = edges_63_q0[7:0];
assign tmp_dst_fu_1590_p129 = 'bx;
assign tmp_dst_fu_1590_p130 = e_3_reg_1924[5:0];
assign tmp_dst_fu_1590_p14 = edges_6_q0[7:0];
assign tmp_dst_fu_1590_p16 = edges_7_q0[7:0];
assign tmp_dst_fu_1590_p18 = edges_8_q0[7:0];
assign tmp_dst_fu_1590_p2 = edges_0_q0[7:0];
assign tmp_dst_fu_1590_p20 = edges_9_q0[7:0];
assign tmp_dst_fu_1590_p22 = edges_10_q0[7:0];
assign tmp_dst_fu_1590_p24 = edges_11_q0[7:0];
assign tmp_dst_fu_1590_p26 = edges_12_q0[7:0];
assign tmp_dst_fu_1590_p28 = edges_13_q0[7:0];
assign tmp_dst_fu_1590_p30 = edges_14_q0[7:0];
assign tmp_dst_fu_1590_p32 = edges_15_q0[7:0];
assign tmp_dst_fu_1590_p34 = edges_16_q0[7:0];
assign tmp_dst_fu_1590_p36 = edges_17_q0[7:0];
assign tmp_dst_fu_1590_p38 = edges_18_q0[7:0];
assign tmp_dst_fu_1590_p4 = edges_1_q0[7:0];
assign tmp_dst_fu_1590_p40 = edges_19_q0[7:0];
assign tmp_dst_fu_1590_p42 = edges_20_q0[7:0];
assign tmp_dst_fu_1590_p44 = edges_21_q0[7:0];
assign tmp_dst_fu_1590_p46 = edges_22_q0[7:0];
assign tmp_dst_fu_1590_p48 = edges_23_q0[7:0];
assign tmp_dst_fu_1590_p50 = edges_24_q0[7:0];
assign tmp_dst_fu_1590_p52 = edges_25_q0[7:0];
assign tmp_dst_fu_1590_p54 = edges_26_q0[7:0];
assign tmp_dst_fu_1590_p56 = edges_27_q0[7:0];
assign tmp_dst_fu_1590_p58 = edges_28_q0[7:0];
assign tmp_dst_fu_1590_p6 = edges_2_q0[7:0];
assign tmp_dst_fu_1590_p60 = edges_29_q0[7:0];
assign tmp_dst_fu_1590_p62 = edges_30_q0[7:0];
assign tmp_dst_fu_1590_p64 = edges_31_q0[7:0];
assign tmp_dst_fu_1590_p66 = edges_32_q0[7:0];
assign tmp_dst_fu_1590_p68 = edges_33_q0[7:0];
assign tmp_dst_fu_1590_p70 = edges_34_q0[7:0];
assign tmp_dst_fu_1590_p72 = edges_35_q0[7:0];
assign tmp_dst_fu_1590_p74 = edges_36_q0[7:0];
assign tmp_dst_fu_1590_p76 = edges_37_q0[7:0];
assign tmp_dst_fu_1590_p78 = edges_38_q0[7:0];
assign tmp_dst_fu_1590_p8 = edges_3_q0[7:0];
assign tmp_dst_fu_1590_p80 = edges_39_q0[7:0];
assign tmp_dst_fu_1590_p82 = edges_40_q0[7:0];
assign tmp_dst_fu_1590_p84 = edges_41_q0[7:0];
assign tmp_dst_fu_1590_p86 = edges_42_q0[7:0];
assign tmp_dst_fu_1590_p88 = edges_43_q0[7:0];
assign tmp_dst_fu_1590_p90 = edges_44_q0[7:0];
assign tmp_dst_fu_1590_p92 = edges_45_q0[7:0];
assign tmp_dst_fu_1590_p94 = edges_46_q0[7:0];
assign tmp_dst_fu_1590_p96 = edges_47_q0[7:0];
assign tmp_dst_fu_1590_p98 = edges_48_q0[7:0];
assign zext_ln14_fu_1253_p1 = lshr_ln1_fu_1243_p4;
assign zext_ln31_fu_1864_p1 = tmp_dst_reg_2258;
always @ (posedge ap_clk) begin
    indvars_iv_next12_cast4_cast_reg_1919[7:4] <= 4'b0000;
end
endmodule 