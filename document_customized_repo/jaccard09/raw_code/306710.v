module backprop_backprop_Pipeline_label_10_label_11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v18_2_load_1,v18_load_1,v18_1_load_1,empty_719,empty_720,empty_721,empty_722,empty_723,empty_724,empty_725,empty_726,empty_727,empty_728,empty_729,empty_730,empty_731,empty_732,empty_733,empty_734,empty_735,empty_736,empty_737,empty_738,empty_739,empty_740,empty_741,empty_742,empty_743,empty_744,empty_745,empty_746,empty_747,empty_748,empty_749,empty_750,empty_751,empty_752,empty_753,empty_754,empty_755,empty_756,empty_757,empty_758,empty_759,empty_760,empty_761,empty_762,empty_763,empty_764,empty_765,empty_766,empty_767,empty_768,empty_769,empty_770,empty_771,empty_772,empty_773,empty_774,empty_775,empty_776,empty_777,empty_778,empty_779,empty_780,empty_781,empty_782,empty_783,empty_784,empty_785,empty_786,empty_787,empty_788,empty_789,empty_790,empty_791,empty_792,empty_793,empty_794,empty_795,empty_796,empty_797,empty_798,empty_799,empty_800,empty_801,empty_802,empty_803,empty_804,empty_805,empty_806,empty_807,empty_808,empty_809,empty_810,empty_811,empty_812,empty_813,empty_814,empty_815,empty_816,empty_817,empty_818,empty_819,empty_820,empty_821,empty_822,empty_823,empty_824,empty_825,empty_826,empty_827,empty_828,empty_829,empty_830,empty_831,empty_832,empty_833,empty_834,empty_835,empty_836,empty_837,empty_838,empty_839,empty_840,empty_841,empty_842,empty_843,empty_844,empty_845,empty_846,empty_847,empty_848,empty_849,empty_850,empty_851,empty_852,empty_853,empty_854,empty_855,empty_856,empty_857,empty_858,empty_859,empty_860,empty_861,empty_862,empty_863,empty_864,empty_865,empty_866,empty_867,empty_868,empty_869,empty_870,empty_871,empty_872,empty_873,empty_874,empty_875,empty_876,empty_877,empty_878,empty_879,empty_880,empty_881,empty_882,empty_883,empty_884,empty_885,empty_886,empty_887,empty_888,empty_889,empty_890,empty_891,empty_892,empty_893,empty_894,empty_895,empty_896,empty_897,empty_898,empty_899,empty_900,empty_901,empty_902,empty_903,empty_904,empty_905,empty_906,empty_907,empty_908,empty_909,empty,v19_address0,v19_ce0,v19_q0,v19_1_address0,v19_1_ce0,v19_1_q0,v19_2_address0,v19_2_ce0,v19_2_q0,v19_3_address0,v19_3_ce0,v19_3_q0,v18_11_out_i,v18_11_out_o,v18_11_out_o_ap_vld,v18_10_out_i,v18_10_out_o,v18_10_out_o_ap_vld,v18_9_out_i,v18_9_out_o,v18_9_out_o_ap_vld,grp_fu_8957_p_din0,grp_fu_8957_p_din1,grp_fu_8957_p_opcode,grp_fu_8957_p_dout0,grp_fu_8957_p_ce,grp_fu_8969_p_din0,grp_fu_8969_p_din1,grp_fu_8969_p_dout0,grp_fu_8969_p_ce); 
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
input  [63:0] v18_2_load_1;
input  [63:0] v18_load_1;
input  [63:0] v18_1_load_1;
input  [63:0] empty_719;
input  [63:0] empty_720;
input  [63:0] empty_721;
input  [63:0] empty_722;
input  [63:0] empty_723;
input  [63:0] empty_724;
input  [63:0] empty_725;
input  [63:0] empty_726;
input  [63:0] empty_727;
input  [63:0] empty_728;
input  [63:0] empty_729;
input  [63:0] empty_730;
input  [63:0] empty_731;
input  [63:0] empty_732;
input  [63:0] empty_733;
input  [63:0] empty_734;
input  [63:0] empty_735;
input  [63:0] empty_736;
input  [63:0] empty_737;
input  [63:0] empty_738;
input  [63:0] empty_739;
input  [63:0] empty_740;
input  [63:0] empty_741;
input  [63:0] empty_742;
input  [63:0] empty_743;
input  [63:0] empty_744;
input  [63:0] empty_745;
input  [63:0] empty_746;
input  [63:0] empty_747;
input  [63:0] empty_748;
input  [63:0] empty_749;
input  [63:0] empty_750;
input  [63:0] empty_751;
input  [63:0] empty_752;
input  [63:0] empty_753;
input  [63:0] empty_754;
input  [63:0] empty_755;
input  [63:0] empty_756;
input  [63:0] empty_757;
input  [63:0] empty_758;
input  [63:0] empty_759;
input  [63:0] empty_760;
input  [63:0] empty_761;
input  [63:0] empty_762;
input  [63:0] empty_763;
input  [63:0] empty_764;
input  [63:0] empty_765;
input  [63:0] empty_766;
input  [63:0] empty_767;
input  [63:0] empty_768;
input  [63:0] empty_769;
input  [63:0] empty_770;
input  [63:0] empty_771;
input  [63:0] empty_772;
input  [63:0] empty_773;
input  [63:0] empty_774;
input  [63:0] empty_775;
input  [63:0] empty_776;
input  [63:0] empty_777;
input  [63:0] empty_778;
input  [63:0] empty_779;
input  [63:0] empty_780;
input  [63:0] empty_781;
input  [63:0] empty_782;
input  [63:0] empty_783;
input  [63:0] empty_784;
input  [63:0] empty_785;
input  [63:0] empty_786;
input  [63:0] empty_787;
input  [63:0] empty_788;
input  [63:0] empty_789;
input  [63:0] empty_790;
input  [63:0] empty_791;
input  [63:0] empty_792;
input  [63:0] empty_793;
input  [63:0] empty_794;
input  [63:0] empty_795;
input  [63:0] empty_796;
input  [63:0] empty_797;
input  [63:0] empty_798;
input  [63:0] empty_799;
input  [63:0] empty_800;
input  [63:0] empty_801;
input  [63:0] empty_802;
input  [63:0] empty_803;
input  [63:0] empty_804;
input  [63:0] empty_805;
input  [63:0] empty_806;
input  [63:0] empty_807;
input  [63:0] empty_808;
input  [63:0] empty_809;
input  [63:0] empty_810;
input  [63:0] empty_811;
input  [63:0] empty_812;
input  [63:0] empty_813;
input  [63:0] empty_814;
input  [63:0] empty_815;
input  [63:0] empty_816;
input  [63:0] empty_817;
input  [63:0] empty_818;
input  [63:0] empty_819;
input  [63:0] empty_820;
input  [63:0] empty_821;
input  [63:0] empty_822;
input  [63:0] empty_823;
input  [63:0] empty_824;
input  [63:0] empty_825;
input  [63:0] empty_826;
input  [63:0] empty_827;
input  [63:0] empty_828;
input  [63:0] empty_829;
input  [63:0] empty_830;
input  [63:0] empty_831;
input  [63:0] empty_832;
input  [63:0] empty_833;
input  [63:0] empty_834;
input  [63:0] empty_835;
input  [63:0] empty_836;
input  [63:0] empty_837;
input  [63:0] empty_838;
input  [63:0] empty_839;
input  [63:0] empty_840;
input  [63:0] empty_841;
input  [63:0] empty_842;
input  [63:0] empty_843;
input  [63:0] empty_844;
input  [63:0] empty_845;
input  [63:0] empty_846;
input  [63:0] empty_847;
input  [63:0] empty_848;
input  [63:0] empty_849;
input  [63:0] empty_850;
input  [63:0] empty_851;
input  [63:0] empty_852;
input  [63:0] empty_853;
input  [63:0] empty_854;
input  [63:0] empty_855;
input  [63:0] empty_856;
input  [63:0] empty_857;
input  [63:0] empty_858;
input  [63:0] empty_859;
input  [63:0] empty_860;
input  [63:0] empty_861;
input  [63:0] empty_862;
input  [63:0] empty_863;
input  [63:0] empty_864;
input  [63:0] empty_865;
input  [63:0] empty_866;
input  [63:0] empty_867;
input  [63:0] empty_868;
input  [63:0] empty_869;
input  [63:0] empty_870;
input  [63:0] empty_871;
input  [63:0] empty_872;
input  [63:0] empty_873;
input  [63:0] empty_874;
input  [63:0] empty_875;
input  [63:0] empty_876;
input  [63:0] empty_877;
input  [63:0] empty_878;
input  [63:0] empty_879;
input  [63:0] empty_880;
input  [63:0] empty_881;
input  [63:0] empty_882;
input  [63:0] empty_883;
input  [63:0] empty_884;
input  [63:0] empty_885;
input  [63:0] empty_886;
input  [63:0] empty_887;
input  [63:0] empty_888;
input  [63:0] empty_889;
input  [63:0] empty_890;
input  [63:0] empty_891;
input  [63:0] empty_892;
input  [63:0] empty_893;
input  [63:0] empty_894;
input  [63:0] empty_895;
input  [63:0] empty_896;
input  [63:0] empty_897;
input  [63:0] empty_898;
input  [63:0] empty_899;
input  [63:0] empty_900;
input  [63:0] empty_901;
input  [63:0] empty_902;
input  [63:0] empty_903;
input  [63:0] empty_904;
input  [63:0] empty_905;
input  [63:0] empty_906;
input  [63:0] empty_907;
input  [63:0] empty_908;
input  [63:0] empty_909;
input  [63:0] empty;
output  [3:0] v19_address0;
output   v19_ce0;
input  [63:0] v19_q0;
output  [3:0] v19_1_address0;
output   v19_1_ce0;
input  [63:0] v19_1_q0;
output  [3:0] v19_2_address0;
output   v19_2_ce0;
input  [63:0] v19_2_q0;
output  [3:0] v19_3_address0;
output   v19_3_ce0;
input  [63:0] v19_3_q0;
input  [63:0] v18_11_out_i;
output  [63:0] v18_11_out_o;
output   v18_11_out_o_ap_vld;
input  [63:0] v18_10_out_i;
output  [63:0] v18_10_out_o;
output   v18_10_out_o_ap_vld;
input  [63:0] v18_9_out_i;
output  [63:0] v18_9_out_o;
output   v18_9_out_o_ap_vld;
output  [63:0] grp_fu_8957_p_din0;
output  [63:0] grp_fu_8957_p_din1;
output  [0:0] grp_fu_8957_p_opcode;
input  [63:0] grp_fu_8957_p_dout0;
output   grp_fu_8957_p_ce;
output  [63:0] grp_fu_8969_p_din0;
output  [63:0] grp_fu_8969_p_din1;
input  [63:0] grp_fu_8969_p_dout0;
output   grp_fu_8969_p_ce;
reg ap_idle;
reg[63:0] v18_11_out_o;
reg v18_11_out_o_ap_vld;
reg[63:0] v18_10_out_o;
reg v18_10_out_o_ap_vld;
reg[63:0] v18_9_out_o;
reg v18_9_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln122_reg_4011;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln122_fu_2158_p2;
reg   [0:0] icmp_ln122_reg_4011_pp0_iter1_reg;
reg   [6:0] v62_load_reg_4015;
wire   [0:0] icmp_ln124_fu_2176_p2;
reg   [0:0] icmp_ln124_reg_4020;
reg   [0:0] icmp_ln124_reg_4020_pp0_iter1_reg;
wire   [1:0] select_ln122_5_fu_2188_p3;
reg   [1:0] select_ln122_5_reg_4029;
reg   [1:0] select_ln122_5_reg_4029_pp0_iter1_reg;
reg   [1:0] select_ln122_5_reg_4029_pp0_iter2_reg;
wire   [1:0] trunc_ln124_fu_2223_p1;
reg   [1:0] trunc_ln124_reg_4034;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] v63_fu_2251_p387;
reg   [63:0] v63_reg_4039;
wire   [0:0] icmp_ln124_1_fu_2841_p2;
reg   [0:0] icmp_ln124_1_reg_4064;
reg   [0:0] icmp_ln124_1_reg_4064_pp0_iter1_reg;
wire   [63:0] v64_fu_2852_p11;
reg   [63:0] v64_reg_4068;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] v65_reg_4073;
wire   [63:0] select_ln122_1_fu_2899_p3;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln124_1_fu_2237_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] select_ln122_2_fu_2907_p3;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] select_ln122_3_fu_2914_p3;
wire   [63:0] select_ln122_4_fu_2921_p3;
reg   [63:0] v66_fu_844;
reg   [6:0] v62_fu_848;
wire   [6:0] add_ln124_fu_2835_p2;
reg   [6:0] ap_sig_allocacmp_v62_load;
reg   [1:0] v61_fu_852;
reg   [1:0] ap_sig_allocacmp_v61_load;
reg   [63:0] v18_6_fu_856;
reg   [63:0] v18_fu_860;
reg   [63:0] v18_7_fu_864;
reg   [7:0] indvar_flatten_fu_868;
wire   [7:0] add_ln122_fu_2164_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v19_ce0_local;
reg    v19_1_ce0_local;
reg    v19_2_ce0_local;
reg    v19_3_ce0_local;
wire    ap_block_pp0_stage3;
wire   [1:0] add_ln122_1_fu_2182_p2;
wire   [6:0] select_ln122_fu_2206_p3;
wire   [3:0] lshr_ln4_fu_2227_p4;
wire   [7:0] zext_ln124_fu_2219_p1;
wire   [7:0] tmp_9_fu_2212_p3;
wire   [63:0] v63_fu_2251_p385;
wire   [7:0] v63_fu_2251_p386;
wire   [63:0] v64_fu_2852_p9;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] v63_fu_2251_p1;
wire   [7:0] v63_fu_2251_p3;
wire   [7:0] v63_fu_2251_p5;
wire   [7:0] v63_fu_2251_p7;
wire   [7:0] v63_fu_2251_p9;
wire   [7:0] v63_fu_2251_p11;
wire   [7:0] v63_fu_2251_p13;
wire   [7:0] v63_fu_2251_p15;
wire   [7:0] v63_fu_2251_p17;
wire   [7:0] v63_fu_2251_p19;
wire   [7:0] v63_fu_2251_p21;
wire   [7:0] v63_fu_2251_p23;
wire   [7:0] v63_fu_2251_p25;
wire   [7:0] v63_fu_2251_p27;
wire   [7:0] v63_fu_2251_p29;
wire   [7:0] v63_fu_2251_p31;
wire   [7:0] v63_fu_2251_p33;
wire   [7:0] v63_fu_2251_p35;
wire   [7:0] v63_fu_2251_p37;
wire   [7:0] v63_fu_2251_p39;
wire   [7:0] v63_fu_2251_p41;
wire   [7:0] v63_fu_2251_p43;
wire   [7:0] v63_fu_2251_p45;
wire   [7:0] v63_fu_2251_p47;
wire   [7:0] v63_fu_2251_p49;
wire   [7:0] v63_fu_2251_p51;
wire   [7:0] v63_fu_2251_p53;
wire   [7:0] v63_fu_2251_p55;
wire   [7:0] v63_fu_2251_p57;
wire   [7:0] v63_fu_2251_p59;
wire   [7:0] v63_fu_2251_p61;
wire   [7:0] v63_fu_2251_p63;
wire   [7:0] v63_fu_2251_p65;
wire   [7:0] v63_fu_2251_p67;
wire   [7:0] v63_fu_2251_p69;
wire   [7:0] v63_fu_2251_p71;
wire   [7:0] v63_fu_2251_p73;
wire   [7:0] v63_fu_2251_p75;
wire   [7:0] v63_fu_2251_p77;
wire   [7:0] v63_fu_2251_p79;
wire   [7:0] v63_fu_2251_p81;
wire   [7:0] v63_fu_2251_p83;
wire   [7:0] v63_fu_2251_p85;
wire   [7:0] v63_fu_2251_p87;
wire   [7:0] v63_fu_2251_p89;
wire   [7:0] v63_fu_2251_p91;
wire   [7:0] v63_fu_2251_p93;
wire   [7:0] v63_fu_2251_p95;
wire   [7:0] v63_fu_2251_p97;
wire   [7:0] v63_fu_2251_p99;
wire   [7:0] v63_fu_2251_p101;
wire   [7:0] v63_fu_2251_p103;
wire   [7:0] v63_fu_2251_p105;
wire   [7:0] v63_fu_2251_p107;
wire   [7:0] v63_fu_2251_p109;
wire   [7:0] v63_fu_2251_p111;
wire   [7:0] v63_fu_2251_p113;
wire   [7:0] v63_fu_2251_p115;
wire   [7:0] v63_fu_2251_p117;
wire   [7:0] v63_fu_2251_p119;
wire   [7:0] v63_fu_2251_p121;
wire   [7:0] v63_fu_2251_p123;
wire   [7:0] v63_fu_2251_p125;
wire   [7:0] v63_fu_2251_p127;
wire   [7:0] v63_fu_2251_p129;
wire   [7:0] v63_fu_2251_p131;
wire   [7:0] v63_fu_2251_p133;
wire   [7:0] v63_fu_2251_p135;
wire   [7:0] v63_fu_2251_p137;
wire   [7:0] v63_fu_2251_p139;
wire   [7:0] v63_fu_2251_p141;
wire   [7:0] v63_fu_2251_p143;
wire   [7:0] v63_fu_2251_p145;
wire   [7:0] v63_fu_2251_p147;
wire   [7:0] v63_fu_2251_p149;
wire   [7:0] v63_fu_2251_p151;
wire   [7:0] v63_fu_2251_p153;
wire   [7:0] v63_fu_2251_p155;
wire   [7:0] v63_fu_2251_p157;
wire   [7:0] v63_fu_2251_p159;
wire   [7:0] v63_fu_2251_p161;
wire   [7:0] v63_fu_2251_p163;
wire   [7:0] v63_fu_2251_p165;
wire   [7:0] v63_fu_2251_p167;
wire   [7:0] v63_fu_2251_p169;
wire   [7:0] v63_fu_2251_p171;
wire   [7:0] v63_fu_2251_p173;
wire   [7:0] v63_fu_2251_p175;
wire   [7:0] v63_fu_2251_p177;
wire   [7:0] v63_fu_2251_p179;
wire   [7:0] v63_fu_2251_p181;
wire   [7:0] v63_fu_2251_p183;
wire   [7:0] v63_fu_2251_p185;
wire   [7:0] v63_fu_2251_p187;
wire   [7:0] v63_fu_2251_p189;
wire   [7:0] v63_fu_2251_p191;
wire   [7:0] v63_fu_2251_p193;
wire   [7:0] v63_fu_2251_p195;
wire   [7:0] v63_fu_2251_p197;
wire   [7:0] v63_fu_2251_p199;
wire   [7:0] v63_fu_2251_p201;
wire   [7:0] v63_fu_2251_p203;
wire   [7:0] v63_fu_2251_p205;
wire   [7:0] v63_fu_2251_p207;
wire   [7:0] v63_fu_2251_p209;
wire   [7:0] v63_fu_2251_p211;
wire   [7:0] v63_fu_2251_p213;
wire   [7:0] v63_fu_2251_p215;
wire   [7:0] v63_fu_2251_p217;
wire   [7:0] v63_fu_2251_p219;
wire   [7:0] v63_fu_2251_p221;
wire   [7:0] v63_fu_2251_p223;
wire   [7:0] v63_fu_2251_p225;
wire   [7:0] v63_fu_2251_p227;
wire   [7:0] v63_fu_2251_p229;
wire   [7:0] v63_fu_2251_p231;
wire   [7:0] v63_fu_2251_p233;
wire   [7:0] v63_fu_2251_p235;
wire   [7:0] v63_fu_2251_p237;
wire   [7:0] v63_fu_2251_p239;
wire   [7:0] v63_fu_2251_p241;
wire   [7:0] v63_fu_2251_p243;
wire   [7:0] v63_fu_2251_p245;
wire   [7:0] v63_fu_2251_p247;
wire   [7:0] v63_fu_2251_p249;
wire   [7:0] v63_fu_2251_p251;
wire   [7:0] v63_fu_2251_p253;
wire   [7:0] v63_fu_2251_p255;
wire  signed [7:0] v63_fu_2251_p257;
wire  signed [7:0] v63_fu_2251_p259;
wire  signed [7:0] v63_fu_2251_p261;
wire  signed [7:0] v63_fu_2251_p263;
wire  signed [7:0] v63_fu_2251_p265;
wire  signed [7:0] v63_fu_2251_p267;
wire  signed [7:0] v63_fu_2251_p269;
wire  signed [7:0] v63_fu_2251_p271;
wire  signed [7:0] v63_fu_2251_p273;
wire  signed [7:0] v63_fu_2251_p275;
wire  signed [7:0] v63_fu_2251_p277;
wire  signed [7:0] v63_fu_2251_p279;
wire  signed [7:0] v63_fu_2251_p281;
wire  signed [7:0] v63_fu_2251_p283;
wire  signed [7:0] v63_fu_2251_p285;
wire  signed [7:0] v63_fu_2251_p287;
wire  signed [7:0] v63_fu_2251_p289;
wire  signed [7:0] v63_fu_2251_p291;
wire  signed [7:0] v63_fu_2251_p293;
wire  signed [7:0] v63_fu_2251_p295;
wire  signed [7:0] v63_fu_2251_p297;
wire  signed [7:0] v63_fu_2251_p299;
wire  signed [7:0] v63_fu_2251_p301;
wire  signed [7:0] v63_fu_2251_p303;
wire  signed [7:0] v63_fu_2251_p305;
wire  signed [7:0] v63_fu_2251_p307;
wire  signed [7:0] v63_fu_2251_p309;
wire  signed [7:0] v63_fu_2251_p311;
wire  signed [7:0] v63_fu_2251_p313;
wire  signed [7:0] v63_fu_2251_p315;
wire  signed [7:0] v63_fu_2251_p317;
wire  signed [7:0] v63_fu_2251_p319;
wire  signed [7:0] v63_fu_2251_p321;
wire  signed [7:0] v63_fu_2251_p323;
wire  signed [7:0] v63_fu_2251_p325;
wire  signed [7:0] v63_fu_2251_p327;
wire  signed [7:0] v63_fu_2251_p329;
wire  signed [7:0] v63_fu_2251_p331;
wire  signed [7:0] v63_fu_2251_p333;
wire  signed [7:0] v63_fu_2251_p335;
wire  signed [7:0] v63_fu_2251_p337;
wire  signed [7:0] v63_fu_2251_p339;
wire  signed [7:0] v63_fu_2251_p341;
wire  signed [7:0] v63_fu_2251_p343;
wire  signed [7:0] v63_fu_2251_p345;
wire  signed [7:0] v63_fu_2251_p347;
wire  signed [7:0] v63_fu_2251_p349;
wire  signed [7:0] v63_fu_2251_p351;
wire  signed [7:0] v63_fu_2251_p353;
wire  signed [7:0] v63_fu_2251_p355;
wire  signed [7:0] v63_fu_2251_p357;
wire  signed [7:0] v63_fu_2251_p359;
wire  signed [7:0] v63_fu_2251_p361;
wire  signed [7:0] v63_fu_2251_p363;
wire  signed [7:0] v63_fu_2251_p365;
wire  signed [7:0] v63_fu_2251_p367;
wire  signed [7:0] v63_fu_2251_p369;
wire  signed [7:0] v63_fu_2251_p371;
wire  signed [7:0] v63_fu_2251_p373;
wire  signed [7:0] v63_fu_2251_p375;
wire  signed [7:0] v63_fu_2251_p377;
wire  signed [7:0] v63_fu_2251_p379;
wire  signed [7:0] v63_fu_2251_p381;
wire  signed [7:0] v63_fu_2251_p383;
wire   [1:0] v64_fu_2852_p1;
wire   [1:0] v64_fu_2852_p3;
wire  signed [1:0] v64_fu_2852_p5;
wire  signed [1:0] v64_fu_2852_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_fu_844 = 64'd0;
#0 v62_fu_848 = 7'd0;
#0 v61_fu_852 = 2'd0;
#0 v18_6_fu_856 = 64'd0;
#0 v18_fu_860 = 64'd0;
#0 v18_7_fu_864 = 64'd0;
#0 indvar_flatten_fu_868 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_385_8_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 64 ),.CASE1( 8'h1 ),.din1_WIDTH( 64 ),.CASE2( 8'h2 ),.din2_WIDTH( 64 ),.CASE3( 8'h3 ),.din3_WIDTH( 64 ),.CASE4( 8'h4 ),.din4_WIDTH( 64 ),.CASE5( 8'h5 ),.din5_WIDTH( 64 ),.CASE6( 8'h6 ),.din6_WIDTH( 64 ),.CASE7( 8'h7 ),.din7_WIDTH( 64 ),.CASE8( 8'h8 ),.din8_WIDTH( 64 ),.CASE9( 8'h9 ),.din9_WIDTH( 64 ),.CASE10( 8'hA ),.din10_WIDTH( 64 ),.CASE11( 8'hB ),.din11_WIDTH( 64 ),.CASE12( 8'hC ),.din12_WIDTH( 64 ),.CASE13( 8'hD ),.din13_WIDTH( 64 ),.CASE14( 8'hE ),.din14_WIDTH( 64 ),.CASE15( 8'hF ),.din15_WIDTH( 64 ),.CASE16( 8'h10 ),.din16_WIDTH( 64 ),.CASE17( 8'h11 ),.din17_WIDTH( 64 ),.CASE18( 8'h12 ),.din18_WIDTH( 64 ),.CASE19( 8'h13 ),.din19_WIDTH( 64 ),.CASE20( 8'h14 ),.din20_WIDTH( 64 ),.CASE21( 8'h15 ),.din21_WIDTH( 64 ),.CASE22( 8'h16 ),.din22_WIDTH( 64 ),.CASE23( 8'h17 ),.din23_WIDTH( 64 ),.CASE24( 8'h18 ),.din24_WIDTH( 64 ),.CASE25( 8'h19 ),.din25_WIDTH( 64 ),.CASE26( 8'h1A ),.din26_WIDTH( 64 ),.CASE27( 8'h1B ),.din27_WIDTH( 64 ),.CASE28( 8'h1C ),.din28_WIDTH( 64 ),.CASE29( 8'h1D ),.din29_WIDTH( 64 ),.CASE30( 8'h1E ),.din30_WIDTH( 64 ),.CASE31( 8'h1F ),.din31_WIDTH( 64 ),.CASE32( 8'h20 ),.din32_WIDTH( 64 ),.CASE33( 8'h21 ),.din33_WIDTH( 64 ),.CASE34( 8'h22 ),.din34_WIDTH( 64 ),.CASE35( 8'h23 ),.din35_WIDTH( 64 ),.CASE36( 8'h24 ),.din36_WIDTH( 64 ),.CASE37( 8'h25 ),.din37_WIDTH( 64 ),.CASE38( 8'h26 ),.din38_WIDTH( 64 ),.CASE39( 8'h27 ),.din39_WIDTH( 64 ),.CASE40( 8'h28 ),.din40_WIDTH( 64 ),.CASE41( 8'h29 ),.din41_WIDTH( 64 ),.CASE42( 8'h2A ),.din42_WIDTH( 64 ),.CASE43( 8'h2B ),.din43_WIDTH( 64 ),.CASE44( 8'h2C ),.din44_WIDTH( 64 ),.CASE45( 8'h2D ),.din45_WIDTH( 64 ),.CASE46( 8'h2E ),.din46_WIDTH( 64 ),.CASE47( 8'h2F ),.din47_WIDTH( 64 ),.CASE48( 8'h30 ),.din48_WIDTH( 64 ),.CASE49( 8'h31 ),.din49_WIDTH( 64 ),.CASE50( 8'h32 ),.din50_WIDTH( 64 ),.CASE51( 8'h33 ),.din51_WIDTH( 64 ),.CASE52( 8'h34 ),.din52_WIDTH( 64 ),.CASE53( 8'h35 ),.din53_WIDTH( 64 ),.CASE54( 8'h36 ),.din54_WIDTH( 64 ),.CASE55( 8'h37 ),.din55_WIDTH( 64 ),.CASE56( 8'h38 ),.din56_WIDTH( 64 ),.CASE57( 8'h39 ),.din57_WIDTH( 64 ),.CASE58( 8'h3A ),.din58_WIDTH( 64 ),.CASE59( 8'h3B ),.din59_WIDTH( 64 ),.CASE60( 8'h3C ),.din60_WIDTH( 64 ),.CASE61( 8'h3D ),.din61_WIDTH( 64 ),.CASE62( 8'h3E ),.din62_WIDTH( 64 ),.CASE63( 8'h3F ),.din63_WIDTH( 64 ),.CASE64( 8'h40 ),.din64_WIDTH( 64 ),.CASE65( 8'h41 ),.din65_WIDTH( 64 ),.CASE66( 8'h42 ),.din66_WIDTH( 64 ),.CASE67( 8'h43 ),.din67_WIDTH( 64 ),.CASE68( 8'h44 ),.din68_WIDTH( 64 ),.CASE69( 8'h45 ),.din69_WIDTH( 64 ),.CASE70( 8'h46 ),.din70_WIDTH( 64 ),.CASE71( 8'h47 ),.din71_WIDTH( 64 ),.CASE72( 8'h48 ),.din72_WIDTH( 64 ),.CASE73( 8'h49 ),.din73_WIDTH( 64 ),.CASE74( 8'h4A ),.din74_WIDTH( 64 ),.CASE75( 8'h4B ),.din75_WIDTH( 64 ),.CASE76( 8'h4C ),.din76_WIDTH( 64 ),.CASE77( 8'h4D ),.din77_WIDTH( 64 ),.CASE78( 8'h4E ),.din78_WIDTH( 64 ),.CASE79( 8'h4F ),.din79_WIDTH( 64 ),.CASE80( 8'h50 ),.din80_WIDTH( 64 ),.CASE81( 8'h51 ),.din81_WIDTH( 64 ),.CASE82( 8'h52 ),.din82_WIDTH( 64 ),.CASE83( 8'h53 ),.din83_WIDTH( 64 ),.CASE84( 8'h54 ),.din84_WIDTH( 64 ),.CASE85( 8'h55 ),.din85_WIDTH( 64 ),.CASE86( 8'h56 ),.din86_WIDTH( 64 ),.CASE87( 8'h57 ),.din87_WIDTH( 64 ),.CASE88( 8'h58 ),.din88_WIDTH( 64 ),.CASE89( 8'h59 ),.din89_WIDTH( 64 ),.CASE90( 8'h5A ),.din90_WIDTH( 64 ),.CASE91( 8'h5B ),.din91_WIDTH( 64 ),.CASE92( 8'h5C ),.din92_WIDTH( 64 ),.CASE93( 8'h5D ),.din93_WIDTH( 64 ),.CASE94( 8'h5E ),.din94_WIDTH( 64 ),.CASE95( 8'h5F ),.din95_WIDTH( 64 ),.CASE96( 8'h60 ),.din96_WIDTH( 64 ),.CASE97( 8'h61 ),.din97_WIDTH( 64 ),.CASE98( 8'h62 ),.din98_WIDTH( 64 ),.CASE99( 8'h63 ),.din99_WIDTH( 64 ),.CASE100( 8'h64 ),.din100_WIDTH( 64 ),.CASE101( 8'h65 ),.din101_WIDTH( 64 ),.CASE102( 8'h66 ),.din102_WIDTH( 64 ),.CASE103( 8'h67 ),.din103_WIDTH( 64 ),.CASE104( 8'h68 ),.din104_WIDTH( 64 ),.CASE105( 8'h69 ),.din105_WIDTH( 64 ),.CASE106( 8'h6A ),.din106_WIDTH( 64 ),.CASE107( 8'h6B ),.din107_WIDTH( 64 ),.CASE108( 8'h6C ),.din108_WIDTH( 64 ),.CASE109( 8'h6D ),.din109_WIDTH( 64 ),.CASE110( 8'h6E ),.din110_WIDTH( 64 ),.CASE111( 8'h6F ),.din111_WIDTH( 64 ),.CASE112( 8'h70 ),.din112_WIDTH( 64 ),.CASE113( 8'h71 ),.din113_WIDTH( 64 ),.CASE114( 8'h72 ),.din114_WIDTH( 64 ),.CASE115( 8'h73 ),.din115_WIDTH( 64 ),.CASE116( 8'h74 ),.din116_WIDTH( 64 ),.CASE117( 8'h75 ),.din117_WIDTH( 64 ),.CASE118( 8'h76 ),.din118_WIDTH( 64 ),.CASE119( 8'h77 ),.din119_WIDTH( 64 ),.CASE120( 8'h78 ),.din120_WIDTH( 64 ),.CASE121( 8'h79 ),.din121_WIDTH( 64 ),.CASE122( 8'h7A ),.din122_WIDTH( 64 ),.CASE123( 8'h7B ),.din123_WIDTH( 64 ),.CASE124( 8'h7C ),.din124_WIDTH( 64 ),.CASE125( 8'h7D ),.din125_WIDTH( 64 ),.CASE126( 8'h7E ),.din126_WIDTH( 64 ),.CASE127( 8'h7F ),.din127_WIDTH( 64 ),.CASE128( 8'h80 ),.din128_WIDTH( 64 ),.CASE129( 8'h81 ),.din129_WIDTH( 64 ),.CASE130( 8'h82 ),.din130_WIDTH( 64 ),.CASE131( 8'h83 ),.din131_WIDTH( 64 ),.CASE132( 8'h84 ),.din132_WIDTH( 64 ),.CASE133( 8'h85 ),.din133_WIDTH( 64 ),.CASE134( 8'h86 ),.din134_WIDTH( 64 ),.CASE135( 8'h87 ),.din135_WIDTH( 64 ),.CASE136( 8'h88 ),.din136_WIDTH( 64 ),.CASE137( 8'h89 ),.din137_WIDTH( 64 ),.CASE138( 8'h8A ),.din138_WIDTH( 64 ),.CASE139( 8'h8B ),.din139_WIDTH( 64 ),.CASE140( 8'h8C ),.din140_WIDTH( 64 ),.CASE141( 8'h8D ),.din141_WIDTH( 64 ),.CASE142( 8'h8E ),.din142_WIDTH( 64 ),.CASE143( 8'h8F ),.din143_WIDTH( 64 ),.CASE144( 8'h90 ),.din144_WIDTH( 64 ),.CASE145( 8'h91 ),.din145_WIDTH( 64 ),.CASE146( 8'h92 ),.din146_WIDTH( 64 ),.CASE147( 8'h93 ),.din147_WIDTH( 64 ),.CASE148( 8'h94 ),.din148_WIDTH( 64 ),.CASE149( 8'h95 ),.din149_WIDTH( 64 ),.CASE150( 8'h96 ),.din150_WIDTH( 64 ),.CASE151( 8'h97 ),.din151_WIDTH( 64 ),.CASE152( 8'h98 ),.din152_WIDTH( 64 ),.CASE153( 8'h99 ),.din153_WIDTH( 64 ),.CASE154( 8'h9A ),.din154_WIDTH( 64 ),.CASE155( 8'h9B ),.din155_WIDTH( 64 ),.CASE156( 8'h9C ),.din156_WIDTH( 64 ),.CASE157( 8'h9D ),.din157_WIDTH( 64 ),.CASE158( 8'h9E ),.din158_WIDTH( 64 ),.CASE159( 8'h9F ),.din159_WIDTH( 64 ),.CASE160( 8'hA0 ),.din160_WIDTH( 64 ),.CASE161( 8'hA1 ),.din161_WIDTH( 64 ),.CASE162( 8'hA2 ),.din162_WIDTH( 64 ),.CASE163( 8'hA3 ),.din163_WIDTH( 64 ),.CASE164( 8'hA4 ),.din164_WIDTH( 64 ),.CASE165( 8'hA5 ),.din165_WIDTH( 64 ),.CASE166( 8'hA6 ),.din166_WIDTH( 64 ),.CASE167( 8'hA7 ),.din167_WIDTH( 64 ),.CASE168( 8'hA8 ),.din168_WIDTH( 64 ),.CASE169( 8'hA9 ),.din169_WIDTH( 64 ),.CASE170( 8'hAA ),.din170_WIDTH( 64 ),.CASE171( 8'hAB ),.din171_WIDTH( 64 ),.CASE172( 8'hAC ),.din172_WIDTH( 64 ),.CASE173( 8'hAD ),.din173_WIDTH( 64 ),.CASE174( 8'hAE ),.din174_WIDTH( 64 ),.CASE175( 8'hAF ),.din175_WIDTH( 64 ),.CASE176( 8'hB0 ),.din176_WIDTH( 64 ),.CASE177( 8'hB1 ),.din177_WIDTH( 64 ),.CASE178( 8'hB2 ),.din178_WIDTH( 64 ),.CASE179( 8'hB3 ),.din179_WIDTH( 64 ),.CASE180( 8'hB4 ),.din180_WIDTH( 64 ),.CASE181( 8'hB5 ),.din181_WIDTH( 64 ),.CASE182( 8'hB6 ),.din182_WIDTH( 64 ),.CASE183( 8'hB7 ),.din183_WIDTH( 64 ),.CASE184( 8'hB8 ),.din184_WIDTH( 64 ),.CASE185( 8'hB9 ),.din185_WIDTH( 64 ),.CASE186( 8'hBA ),.din186_WIDTH( 64 ),.CASE187( 8'hBB ),.din187_WIDTH( 64 ),.CASE188( 8'hBC ),.din188_WIDTH( 64 ),.CASE189( 8'hBD ),.din189_WIDTH( 64 ),.CASE190( 8'hBE ),.din190_WIDTH( 64 ),.CASE191( 8'hBF ),.din191_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 8 ),.dout_WIDTH( 64 ))
sparsemux_385_8_64_1_1_U122(.din0(empty_719),.din1(empty_720),.din2(empty_721),.din3(empty_722),.din4(empty_723),.din5(empty_724),.din6(empty_725),.din7(empty_726),.din8(empty_727),.din9(empty_728),.din10(empty_729),.din11(empty_730),.din12(empty_731),.din13(empty_732),.din14(empty_733),.din15(empty_734),.din16(empty_735),.din17(empty_736),.din18(empty_737),.din19(empty_738),.din20(empty_739),.din21(empty_740),.din22(empty_741),.din23(empty_742),.din24(empty_743),.din25(empty_744),.din26(empty_745),.din27(empty_746),.din28(empty_747),.din29(empty_748),.din30(empty_749),.din31(empty_750),.din32(empty_751),.din33(empty_752),.din34(empty_753),.din35(empty_754),.din36(empty_755),.din37(empty_756),.din38(empty_757),.din39(empty_758),.din40(empty_759),.din41(empty_760),.din42(empty_761),.din43(empty_762),.din44(empty_763),.din45(empty_764),.din46(empty_765),.din47(empty_766),.din48(empty_767),.din49(empty_768),.din50(empty_769),.din51(empty_770),.din52(empty_771),.din53(empty_772),.din54(empty_773),.din55(empty_774),.din56(empty_775),.din57(empty_776),.din58(empty_777),.din59(empty_778),.din60(empty_779),.din61(empty_780),.din62(empty_781),.din63(empty_782),.din64(empty_783),.din65(empty_784),.din66(empty_785),.din67(empty_786),.din68(empty_787),.din69(empty_788),.din70(empty_789),.din71(empty_790),.din72(empty_791),.din73(empty_792),.din74(empty_793),.din75(empty_794),.din76(empty_795),.din77(empty_796),.din78(empty_797),.din79(empty_798),.din80(empty_799),.din81(empty_800),.din82(empty_801),.din83(empty_802),.din84(empty_803),.din85(empty_804),.din86(empty_805),.din87(empty_806),.din88(empty_807),.din89(empty_808),.din90(empty_809),.din91(empty_810),.din92(empty_811),.din93(empty_812),.din94(empty_813),.din95(empty_814),.din96(empty_815),.din97(empty_816),.din98(empty_817),.din99(empty_818),.din100(empty_819),.din101(empty_820),.din102(empty_821),.din103(empty_822),.din104(empty_823),.din105(empty_824),.din106(empty_825),.din107(empty_826),.din108(empty_827),.din109(empty_828),.din110(empty_829),.din111(empty_830),.din112(empty_831),.din113(empty_832),.din114(empty_833),.din115(empty_834),.din116(empty_835),.din117(empty_836),.din118(empty_837),.din119(empty_838),.din120(empty_839),.din121(empty_840),.din122(empty_841),.din123(empty_842),.din124(empty_843),.din125(empty_844),.din126(empty_845),.din127(empty_846),.din128(empty_847),.din129(empty_848),.din130(empty_849),.din131(empty_850),.din132(empty_851),.din133(empty_852),.din134(empty_853),.din135(empty_854),.din136(empty_855),.din137(empty_856),.din138(empty_857),.din139(empty_858),.din140(empty_859),.din141(empty_860),.din142(empty_861),.din143(empty_862),.din144(empty_863),.din145(empty_864),.din146(empty_865),.din147(empty_866),.din148(empty_867),.din149(empty_868),.din150(empty_869),.din151(empty_870),.din152(empty_871),.din153(empty_872),.din154(empty_873),.din155(empty_874),.din156(empty_875),.din157(empty_876),.din158(empty_877),.din159(empty_878),.din160(empty_879),.din161(empty_880),.din162(empty_881),.din163(empty_882),.din164(empty_883),.din165(empty_884),.din166(empty_885),.din167(empty_886),.din168(empty_887),.din169(empty_888),.din170(empty_889),.din171(empty_890),.din172(empty_891),.din173(empty_892),.din174(empty_893),.din175(empty_894),.din176(empty_895),.din177(empty_896),.din178(empty_897),.din179(empty_898),.din180(empty_899),.din181(empty_900),.din182(empty_901),.din183(empty_902),.din184(empty_903),.din185(empty_904),.din186(empty_905),.din187(empty_906),.din188(empty_907),.din189(empty_908),.din190(empty_909),.din191(empty),.def(v63_fu_2251_p385),.sel(v63_fu_2251_p386),.dout(v63_fu_2251_p387));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U123(.din0(v19_q0),.din1(v19_1_q0),.din2(v19_2_q0),.din3(v19_3_q0),.def(v64_fu_2852_p9),.sel(trunc_ln124_reg_4034),.dout(v64_fu_2852_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln122_fu_2158_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_868 <= add_ln122_fu_2164_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_868 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_6_fu_856 <= v18_1_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_6_fu_856 <= select_ln122_4_fu_2921_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_7_fu_864 <= v18_2_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_7_fu_864 <= select_ln122_2_fu_2907_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_fu_860 <= v18_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_fu_860 <= select_ln122_3_fu_2914_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln122_fu_2158_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v61_fu_852 <= select_ln122_5_fu_2188_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v61_fu_852 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v62_fu_848 <= 7'd0;
    end else if (((icmp_ln122_reg_4011 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v62_fu_848 <= add_ln124_fu_2835_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_844 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v66_fu_844 <= grp_fu_8957_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln122_reg_4011 <= icmp_ln122_fu_2158_p2;
        icmp_ln122_reg_4011_pp0_iter1_reg <= icmp_ln122_reg_4011;
        icmp_ln124_reg_4020 <= icmp_ln124_fu_2176_p2;
        icmp_ln124_reg_4020_pp0_iter1_reg <= icmp_ln124_reg_4020;
        select_ln122_5_reg_4029 <= select_ln122_5_fu_2188_p3;
        select_ln122_5_reg_4029_pp0_iter1_reg <= select_ln122_5_reg_4029;
        select_ln122_5_reg_4029_pp0_iter2_reg <= select_ln122_5_reg_4029_pp0_iter1_reg;
        v62_load_reg_4015 <= ap_sig_allocacmp_v62_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln124_1_reg_4064 <= icmp_ln124_1_fu_2841_p2;
        icmp_ln124_1_reg_4064_pp0_iter1_reg <= icmp_ln124_1_reg_4064;
        trunc_ln124_reg_4034 <= trunc_ln124_fu_2223_p1;
        v63_reg_4039 <= v63_fu_2251_p387;
        v65_reg_4073 <= grp_fu_8969_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v64_reg_4068 <= v64_fu_2852_p11;
    end
end
always @ (*) begin
    if (((icmp_ln122_reg_4011 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln122_reg_4011_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_868;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v61_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v61_load = v61_fu_852;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v62_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v62_load = v62_fu_848;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_10_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_4029_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_4029_pp0_iter1_reg == 2'd1) & (icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v18_10_out_o = select_ln122_3_fu_2914_p3;
    end else if (((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter2_reg == 2'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v18_10_out_o = grp_fu_8957_p_dout0;
    end else begin
        v18_10_out_o = v18_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_4029_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_4029_pp0_iter1_reg == 2'd1) & (icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter2_reg == 2'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v18_10_out_o_ap_vld = 1'b1;
    end else begin
        v18_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_11_out_o = 'bx;
    end else if ((((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v18_11_out_o = select_ln122_2_fu_2907_p3;
    end else if ((~(select_ln122_5_reg_4029_pp0_iter2_reg == 2'd1) & ~(select_ln122_5_reg_4029_pp0_iter2_reg == 2'd0) & (icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v18_11_out_o = grp_fu_8957_p_dout0;
    end else begin
        v18_11_out_o = v18_11_out_i;
    end
end
always @ (*) begin
    if ((((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | (~(select_ln122_5_reg_4029_pp0_iter2_reg == 2'd1) & ~(select_ln122_5_reg_4029_pp0_iter2_reg == 2'd0) & (icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v18_11_out_o_ap_vld = 1'b1;
    end else begin
        v18_11_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_9_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_4029_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_4029_pp0_iter1_reg == 2'd1) & (icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v18_9_out_o = select_ln122_4_fu_2921_p3;
    end else if (((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v18_9_out_o = grp_fu_8957_p_dout0;
    end else begin
        v18_9_out_o = v18_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_4029_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_4029_pp0_iter1_reg == 2'd1) & (icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter1_reg == 2'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln124_1_reg_4064_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_4029_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v18_9_out_o_ap_vld = 1'b1;
    end else begin
        v18_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_3_ce0_local = 1'b1;
    end else begin
        v19_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage1) & (ap_idle_pp0_0to0 == 1'b1))) begin
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
assign add_ln122_1_fu_2182_p2 = (ap_sig_allocacmp_v61_load + 2'd1);
assign add_ln122_fu_2164_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln124_fu_2835_p2 = (select_ln122_fu_2206_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_8957_p_ce = 1'b1;
assign grp_fu_8957_p_din0 = select_ln122_1_fu_2899_p3;
assign grp_fu_8957_p_din1 = v65_reg_4073;
assign grp_fu_8957_p_opcode = 2'd0;
assign grp_fu_8969_p_ce = 1'b1;
assign grp_fu_8969_p_din0 = v63_reg_4039;
assign grp_fu_8969_p_din1 = v64_reg_4068;
assign icmp_ln122_fu_2158_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln124_1_fu_2841_p2 = ((add_ln124_fu_2835_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln124_fu_2176_p2 = ((ap_sig_allocacmp_v62_load == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln4_fu_2227_p4 = {{select_ln122_fu_2206_p3[5:2]}};
assign select_ln122_1_fu_2899_p3 = ((icmp_ln124_reg_4020_pp0_iter1_reg[0:0] == 1'b1) ? 64'd0 : v66_fu_844);
assign select_ln122_2_fu_2907_p3 = ((icmp_ln124_reg_4020_pp0_iter1_reg[0:0] == 1'b1) ? v18_11_out_i : v18_7_fu_864);
assign select_ln122_3_fu_2914_p3 = ((icmp_ln124_reg_4020_pp0_iter1_reg[0:0] == 1'b1) ? v18_10_out_i : v18_fu_860);
assign select_ln122_4_fu_2921_p3 = ((icmp_ln124_reg_4020_pp0_iter1_reg[0:0] == 1'b1) ? v18_9_out_i : v18_6_fu_856);
assign select_ln122_5_fu_2188_p3 = ((icmp_ln124_fu_2176_p2[0:0] == 1'b1) ? add_ln122_1_fu_2182_p2 : ap_sig_allocacmp_v61_load);
assign select_ln122_fu_2206_p3 = ((icmp_ln124_reg_4020[0:0] == 1'b1) ? 7'd0 : v62_load_reg_4015);
assign tmp_9_fu_2212_p3 = {{select_ln122_5_reg_4029}, {6'd0}};
assign trunc_ln124_fu_2223_p1 = select_ln122_fu_2206_p3[1:0];
assign v19_1_address0 = zext_ln124_1_fu_2237_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_2_address0 = zext_ln124_1_fu_2237_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_3_address0 = zext_ln124_1_fu_2237_p1;
assign v19_3_ce0 = v19_3_ce0_local;
assign v19_address0 = zext_ln124_1_fu_2237_p1;
assign v19_ce0 = v19_ce0_local;
assign v63_fu_2251_p385 = 'bx;
assign v63_fu_2251_p386 = (zext_ln124_fu_2219_p1 + tmp_9_fu_2212_p3);
assign v64_fu_2852_p9 = 'bx;
assign zext_ln124_1_fu_2237_p1 = lshr_ln4_fu_2227_p4;
assign zext_ln124_fu_2219_p1 = select_ln122_fu_2206_p3;
endmodule 