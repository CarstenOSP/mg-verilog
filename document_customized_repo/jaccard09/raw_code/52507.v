module backprop_update_weights_1_Pipeline_up_weight_loop9_VITIS_LOOP_179_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,p_read,p_read1,p_read2,p_read3,p_read4,p_read5,p_read6,p_read7,p_read8,p_read9,p_read10,p_read11,p_read12,p_read13,p_read14,p_read15,p_read16,p_read17,p_read18,p_read19,p_read20,p_read21,p_read22,p_read23,p_read24,p_read25,p_read26,p_read27,p_read28,p_read29,p_read30,p_read31,p_read32,p_read33,p_read34,p_read35,p_read36,p_read37,p_read38,p_read39,p_read40,p_read41,p_read42,p_read43,p_read44,p_read45,p_read46,p_read47,p_read48,p_read49,p_read50,p_read51,p_read52,p_read53,p_read54,p_read55,p_read56,p_read57,p_read58,p_read59,p_read60,p_read61,p_read62,p_read63,p_read64,p_read65,p_read66,p_read67,p_read68,p_read69,p_read70,p_read71,p_read72,p_read73,p_read74,p_read75,p_read76,p_read77,p_read78,p_read79,p_read80,p_read81,p_read82,p_read83,p_read84,p_read85,p_read86,p_read87,p_read88,p_read89,p_read90,p_read91,p_read92,p_read93,p_read94,p_read95,p_read96,p_read97,p_read98,p_read99,p_read100,p_read101,p_read102,p_read103,p_read104,p_read105,p_read106,p_read107,p_read108,p_read109,p_read110,p_read111,p_read112,p_read113,p_read114,p_read115,p_read116,p_read117,p_read118,p_read119,p_read120,p_read121,p_read122,p_read123,p_read124,p_read125,p_read126,p_read127,p_read128,p_read129,p_read130,p_read131,p_read132,p_read133,p_read134,p_read135,p_read136,p_read137,p_read138,p_read139,p_read140,p_read141,p_read142,p_read143,p_read144,p_read145,p_read146,p_read147,p_read148,p_read149,p_read150,p_read151,p_read152,p_read153,p_read154,p_read155,p_read156,p_read157,p_read158,p_read159,p_read160,p_read161,p_read162,p_read163,p_read164,p_read165,p_read166,p_read167,p_read168,p_read169,p_read170,p_read171,p_read172,p_read173,p_read174,p_read175,p_read176,p_read177,p_read178,p_read179,p_read180,p_read181,p_read182,p_read183,p_read184,p_read185,p_read186,p_read187,p_read188,p_read189,p_read190,p_read191,weights3_address0,weights3_ce0,weights3_we0,weights3_d0,weights3_q0,norm_7_out,norm_7_out_ap_vld,grp_fu_5305_p_din0,grp_fu_5305_p_din1,grp_fu_5305_p_dout0,grp_fu_5305_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] p_read;
input  [63:0] p_read1;
input  [63:0] p_read2;
input  [63:0] p_read3;
input  [63:0] p_read4;
input  [63:0] p_read5;
input  [63:0] p_read6;
input  [63:0] p_read7;
input  [63:0] p_read8;
input  [63:0] p_read9;
input  [63:0] p_read10;
input  [63:0] p_read11;
input  [63:0] p_read12;
input  [63:0] p_read13;
input  [63:0] p_read14;
input  [63:0] p_read15;
input  [63:0] p_read16;
input  [63:0] p_read17;
input  [63:0] p_read18;
input  [63:0] p_read19;
input  [63:0] p_read20;
input  [63:0] p_read21;
input  [63:0] p_read22;
input  [63:0] p_read23;
input  [63:0] p_read24;
input  [63:0] p_read25;
input  [63:0] p_read26;
input  [63:0] p_read27;
input  [63:0] p_read28;
input  [63:0] p_read29;
input  [63:0] p_read30;
input  [63:0] p_read31;
input  [63:0] p_read32;
input  [63:0] p_read33;
input  [63:0] p_read34;
input  [63:0] p_read35;
input  [63:0] p_read36;
input  [63:0] p_read37;
input  [63:0] p_read38;
input  [63:0] p_read39;
input  [63:0] p_read40;
input  [63:0] p_read41;
input  [63:0] p_read42;
input  [63:0] p_read43;
input  [63:0] p_read44;
input  [63:0] p_read45;
input  [63:0] p_read46;
input  [63:0] p_read47;
input  [63:0] p_read48;
input  [63:0] p_read49;
input  [63:0] p_read50;
input  [63:0] p_read51;
input  [63:0] p_read52;
input  [63:0] p_read53;
input  [63:0] p_read54;
input  [63:0] p_read55;
input  [63:0] p_read56;
input  [63:0] p_read57;
input  [63:0] p_read58;
input  [63:0] p_read59;
input  [63:0] p_read60;
input  [63:0] p_read61;
input  [63:0] p_read62;
input  [63:0] p_read63;
input  [63:0] p_read64;
input  [63:0] p_read65;
input  [63:0] p_read66;
input  [63:0] p_read67;
input  [63:0] p_read68;
input  [63:0] p_read69;
input  [63:0] p_read70;
input  [63:0] p_read71;
input  [63:0] p_read72;
input  [63:0] p_read73;
input  [63:0] p_read74;
input  [63:0] p_read75;
input  [63:0] p_read76;
input  [63:0] p_read77;
input  [63:0] p_read78;
input  [63:0] p_read79;
input  [63:0] p_read80;
input  [63:0] p_read81;
input  [63:0] p_read82;
input  [63:0] p_read83;
input  [63:0] p_read84;
input  [63:0] p_read85;
input  [63:0] p_read86;
input  [63:0] p_read87;
input  [63:0] p_read88;
input  [63:0] p_read89;
input  [63:0] p_read90;
input  [63:0] p_read91;
input  [63:0] p_read92;
input  [63:0] p_read93;
input  [63:0] p_read94;
input  [63:0] p_read95;
input  [63:0] p_read96;
input  [63:0] p_read97;
input  [63:0] p_read98;
input  [63:0] p_read99;
input  [63:0] p_read100;
input  [63:0] p_read101;
input  [63:0] p_read102;
input  [63:0] p_read103;
input  [63:0] p_read104;
input  [63:0] p_read105;
input  [63:0] p_read106;
input  [63:0] p_read107;
input  [63:0] p_read108;
input  [63:0] p_read109;
input  [63:0] p_read110;
input  [63:0] p_read111;
input  [63:0] p_read112;
input  [63:0] p_read113;
input  [63:0] p_read114;
input  [63:0] p_read115;
input  [63:0] p_read116;
input  [63:0] p_read117;
input  [63:0] p_read118;
input  [63:0] p_read119;
input  [63:0] p_read120;
input  [63:0] p_read121;
input  [63:0] p_read122;
input  [63:0] p_read123;
input  [63:0] p_read124;
input  [63:0] p_read125;
input  [63:0] p_read126;
input  [63:0] p_read127;
input  [63:0] p_read128;
input  [63:0] p_read129;
input  [63:0] p_read130;
input  [63:0] p_read131;
input  [63:0] p_read132;
input  [63:0] p_read133;
input  [63:0] p_read134;
input  [63:0] p_read135;
input  [63:0] p_read136;
input  [63:0] p_read137;
input  [63:0] p_read138;
input  [63:0] p_read139;
input  [63:0] p_read140;
input  [63:0] p_read141;
input  [63:0] p_read142;
input  [63:0] p_read143;
input  [63:0] p_read144;
input  [63:0] p_read145;
input  [63:0] p_read146;
input  [63:0] p_read147;
input  [63:0] p_read148;
input  [63:0] p_read149;
input  [63:0] p_read150;
input  [63:0] p_read151;
input  [63:0] p_read152;
input  [63:0] p_read153;
input  [63:0] p_read154;
input  [63:0] p_read155;
input  [63:0] p_read156;
input  [63:0] p_read157;
input  [63:0] p_read158;
input  [63:0] p_read159;
input  [63:0] p_read160;
input  [63:0] p_read161;
input  [63:0] p_read162;
input  [63:0] p_read163;
input  [63:0] p_read164;
input  [63:0] p_read165;
input  [63:0] p_read166;
input  [63:0] p_read167;
input  [63:0] p_read168;
input  [63:0] p_read169;
input  [63:0] p_read170;
input  [63:0] p_read171;
input  [63:0] p_read172;
input  [63:0] p_read173;
input  [63:0] p_read174;
input  [63:0] p_read175;
input  [63:0] p_read176;
input  [63:0] p_read177;
input  [63:0] p_read178;
input  [63:0] p_read179;
input  [63:0] p_read180;
input  [63:0] p_read181;
input  [63:0] p_read182;
input  [63:0] p_read183;
input  [63:0] p_read184;
input  [63:0] p_read185;
input  [63:0] p_read186;
input  [63:0] p_read187;
input  [63:0] p_read188;
input  [63:0] p_read189;
input  [63:0] p_read190;
input  [63:0] p_read191;
output  [7:0] weights3_address0;
output   weights3_ce0;
output   weights3_we0;
output  [63:0] weights3_d0;
input  [63:0] weights3_q0;
output  [63:0] norm_7_out;
output   norm_7_out_ap_vld;
output  [63:0] grp_fu_5305_p_din0;
output  [63:0] grp_fu_5305_p_din1;
input  [63:0] grp_fu_5305_p_dout0;
output   grp_fu_5305_p_ce;
reg ap_idle;
reg norm_7_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln178_reg_3738;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln178_fu_2042_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln178_reg_3738_pp0_iter1_reg;
reg   [0:0] icmp_ln178_reg_3738_pp0_iter2_reg;
reg   [0:0] icmp_ln178_reg_3738_pp0_iter3_reg;
wire   [7:0] add_ln180_fu_2114_p2;
reg   [7:0] add_ln180_reg_3742;
wire   [63:0] tmp_7_fu_2141_p387;
reg   [63:0] tmp_7_reg_3748;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [7:0] weights3_addr_reg_3753;
reg   [7:0] weights3_addr_reg_3753_pp0_iter2_reg;
reg   [63:0] mul_reg_3758;
reg   [63:0] weights3_load_reg_3763;
wire   [63:0] bitcast_ln180_fu_2728_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_2010_p2;
reg   [63:0] sub5_reg_3773;
reg   [63:0] mul1_reg_3780;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln180_fu_2724_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] norm_fu_822;
reg   [63:0] ap_sig_allocacmp_norm_load_1;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage4;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] j_fu_826;
wire   [1:0] add_ln179_fu_2120_p2;
reg   [6:0] i_fu_830;
wire   [6:0] select_ln178_fu_2080_p3;
reg   [7:0] indvar_flatten27_fu_834;
wire   [7:0] add_ln178_fu_2048_p2;
wire    ap_block_pp0_stage4_01001;
reg    weights3_ce0_local;
reg   [7:0] weights3_address0_local;
reg    weights3_we0_local;
wire   [63:0] bitcast_ln180_1_fu_2732_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] grp_fu_2010_p0;
reg   [63:0] grp_fu_2010_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_2014_p0;
reg   [63:0] grp_fu_2014_p1;
wire   [0:0] icmp_ln179_fu_2060_p2;
wire   [6:0] add_ln178_1_fu_2074_p2;
wire   [5:0] trunc_ln179_fu_2092_p1;
wire   [7:0] p_shl_fu_2096_p3;
wire   [7:0] zext_ln179_fu_2088_p1;
wire   [1:0] select_ln121_fu_2066_p3;
wire   [7:0] zext_ln179_1_fu_2110_p1;
wire   [7:0] sub_ln179_fu_2104_p2;
wire   [63:0] tmp_7_fu_2141_p385;
wire    ap_block_pp0_stage2;
reg   [1:0] grp_fu_2010_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage3_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] tmp_7_fu_2141_p1;
wire   [7:0] tmp_7_fu_2141_p3;
wire   [7:0] tmp_7_fu_2141_p5;
wire   [7:0] tmp_7_fu_2141_p7;
wire   [7:0] tmp_7_fu_2141_p9;
wire   [7:0] tmp_7_fu_2141_p11;
wire   [7:0] tmp_7_fu_2141_p13;
wire   [7:0] tmp_7_fu_2141_p15;
wire   [7:0] tmp_7_fu_2141_p17;
wire   [7:0] tmp_7_fu_2141_p19;
wire   [7:0] tmp_7_fu_2141_p21;
wire   [7:0] tmp_7_fu_2141_p23;
wire   [7:0] tmp_7_fu_2141_p25;
wire   [7:0] tmp_7_fu_2141_p27;
wire   [7:0] tmp_7_fu_2141_p29;
wire   [7:0] tmp_7_fu_2141_p31;
wire   [7:0] tmp_7_fu_2141_p33;
wire   [7:0] tmp_7_fu_2141_p35;
wire   [7:0] tmp_7_fu_2141_p37;
wire   [7:0] tmp_7_fu_2141_p39;
wire   [7:0] tmp_7_fu_2141_p41;
wire   [7:0] tmp_7_fu_2141_p43;
wire   [7:0] tmp_7_fu_2141_p45;
wire   [7:0] tmp_7_fu_2141_p47;
wire   [7:0] tmp_7_fu_2141_p49;
wire   [7:0] tmp_7_fu_2141_p51;
wire   [7:0] tmp_7_fu_2141_p53;
wire   [7:0] tmp_7_fu_2141_p55;
wire   [7:0] tmp_7_fu_2141_p57;
wire   [7:0] tmp_7_fu_2141_p59;
wire   [7:0] tmp_7_fu_2141_p61;
wire   [7:0] tmp_7_fu_2141_p63;
wire   [7:0] tmp_7_fu_2141_p65;
wire   [7:0] tmp_7_fu_2141_p67;
wire   [7:0] tmp_7_fu_2141_p69;
wire   [7:0] tmp_7_fu_2141_p71;
wire   [7:0] tmp_7_fu_2141_p73;
wire   [7:0] tmp_7_fu_2141_p75;
wire   [7:0] tmp_7_fu_2141_p77;
wire   [7:0] tmp_7_fu_2141_p79;
wire   [7:0] tmp_7_fu_2141_p81;
wire   [7:0] tmp_7_fu_2141_p83;
wire   [7:0] tmp_7_fu_2141_p85;
wire   [7:0] tmp_7_fu_2141_p87;
wire   [7:0] tmp_7_fu_2141_p89;
wire   [7:0] tmp_7_fu_2141_p91;
wire   [7:0] tmp_7_fu_2141_p93;
wire   [7:0] tmp_7_fu_2141_p95;
wire   [7:0] tmp_7_fu_2141_p97;
wire   [7:0] tmp_7_fu_2141_p99;
wire   [7:0] tmp_7_fu_2141_p101;
wire   [7:0] tmp_7_fu_2141_p103;
wire   [7:0] tmp_7_fu_2141_p105;
wire   [7:0] tmp_7_fu_2141_p107;
wire   [7:0] tmp_7_fu_2141_p109;
wire   [7:0] tmp_7_fu_2141_p111;
wire   [7:0] tmp_7_fu_2141_p113;
wire   [7:0] tmp_7_fu_2141_p115;
wire   [7:0] tmp_7_fu_2141_p117;
wire   [7:0] tmp_7_fu_2141_p119;
wire   [7:0] tmp_7_fu_2141_p121;
wire   [7:0] tmp_7_fu_2141_p123;
wire   [7:0] tmp_7_fu_2141_p125;
wire   [7:0] tmp_7_fu_2141_p127;
wire   [7:0] tmp_7_fu_2141_p129;
wire   [7:0] tmp_7_fu_2141_p131;
wire   [7:0] tmp_7_fu_2141_p133;
wire   [7:0] tmp_7_fu_2141_p135;
wire   [7:0] tmp_7_fu_2141_p137;
wire   [7:0] tmp_7_fu_2141_p139;
wire   [7:0] tmp_7_fu_2141_p141;
wire   [7:0] tmp_7_fu_2141_p143;
wire   [7:0] tmp_7_fu_2141_p145;
wire   [7:0] tmp_7_fu_2141_p147;
wire   [7:0] tmp_7_fu_2141_p149;
wire   [7:0] tmp_7_fu_2141_p151;
wire   [7:0] tmp_7_fu_2141_p153;
wire   [7:0] tmp_7_fu_2141_p155;
wire   [7:0] tmp_7_fu_2141_p157;
wire   [7:0] tmp_7_fu_2141_p159;
wire   [7:0] tmp_7_fu_2141_p161;
wire   [7:0] tmp_7_fu_2141_p163;
wire   [7:0] tmp_7_fu_2141_p165;
wire   [7:0] tmp_7_fu_2141_p167;
wire   [7:0] tmp_7_fu_2141_p169;
wire   [7:0] tmp_7_fu_2141_p171;
wire   [7:0] tmp_7_fu_2141_p173;
wire   [7:0] tmp_7_fu_2141_p175;
wire   [7:0] tmp_7_fu_2141_p177;
wire   [7:0] tmp_7_fu_2141_p179;
wire   [7:0] tmp_7_fu_2141_p181;
wire   [7:0] tmp_7_fu_2141_p183;
wire   [7:0] tmp_7_fu_2141_p185;
wire   [7:0] tmp_7_fu_2141_p187;
wire   [7:0] tmp_7_fu_2141_p189;
wire   [7:0] tmp_7_fu_2141_p191;
wire   [7:0] tmp_7_fu_2141_p193;
wire   [7:0] tmp_7_fu_2141_p195;
wire   [7:0] tmp_7_fu_2141_p197;
wire   [7:0] tmp_7_fu_2141_p199;
wire   [7:0] tmp_7_fu_2141_p201;
wire   [7:0] tmp_7_fu_2141_p203;
wire   [7:0] tmp_7_fu_2141_p205;
wire   [7:0] tmp_7_fu_2141_p207;
wire   [7:0] tmp_7_fu_2141_p209;
wire   [7:0] tmp_7_fu_2141_p211;
wire   [7:0] tmp_7_fu_2141_p213;
wire   [7:0] tmp_7_fu_2141_p215;
wire   [7:0] tmp_7_fu_2141_p217;
wire   [7:0] tmp_7_fu_2141_p219;
wire   [7:0] tmp_7_fu_2141_p221;
wire   [7:0] tmp_7_fu_2141_p223;
wire   [7:0] tmp_7_fu_2141_p225;
wire   [7:0] tmp_7_fu_2141_p227;
wire   [7:0] tmp_7_fu_2141_p229;
wire   [7:0] tmp_7_fu_2141_p231;
wire   [7:0] tmp_7_fu_2141_p233;
wire   [7:0] tmp_7_fu_2141_p235;
wire   [7:0] tmp_7_fu_2141_p237;
wire   [7:0] tmp_7_fu_2141_p239;
wire   [7:0] tmp_7_fu_2141_p241;
wire   [7:0] tmp_7_fu_2141_p243;
wire   [7:0] tmp_7_fu_2141_p245;
wire   [7:0] tmp_7_fu_2141_p247;
wire   [7:0] tmp_7_fu_2141_p249;
wire   [7:0] tmp_7_fu_2141_p251;
wire   [7:0] tmp_7_fu_2141_p253;
wire   [7:0] tmp_7_fu_2141_p255;
wire  signed [7:0] tmp_7_fu_2141_p257;
wire  signed [7:0] tmp_7_fu_2141_p259;
wire  signed [7:0] tmp_7_fu_2141_p261;
wire  signed [7:0] tmp_7_fu_2141_p263;
wire  signed [7:0] tmp_7_fu_2141_p265;
wire  signed [7:0] tmp_7_fu_2141_p267;
wire  signed [7:0] tmp_7_fu_2141_p269;
wire  signed [7:0] tmp_7_fu_2141_p271;
wire  signed [7:0] tmp_7_fu_2141_p273;
wire  signed [7:0] tmp_7_fu_2141_p275;
wire  signed [7:0] tmp_7_fu_2141_p277;
wire  signed [7:0] tmp_7_fu_2141_p279;
wire  signed [7:0] tmp_7_fu_2141_p281;
wire  signed [7:0] tmp_7_fu_2141_p283;
wire  signed [7:0] tmp_7_fu_2141_p285;
wire  signed [7:0] tmp_7_fu_2141_p287;
wire  signed [7:0] tmp_7_fu_2141_p289;
wire  signed [7:0] tmp_7_fu_2141_p291;
wire  signed [7:0] tmp_7_fu_2141_p293;
wire  signed [7:0] tmp_7_fu_2141_p295;
wire  signed [7:0] tmp_7_fu_2141_p297;
wire  signed [7:0] tmp_7_fu_2141_p299;
wire  signed [7:0] tmp_7_fu_2141_p301;
wire  signed [7:0] tmp_7_fu_2141_p303;
wire  signed [7:0] tmp_7_fu_2141_p305;
wire  signed [7:0] tmp_7_fu_2141_p307;
wire  signed [7:0] tmp_7_fu_2141_p309;
wire  signed [7:0] tmp_7_fu_2141_p311;
wire  signed [7:0] tmp_7_fu_2141_p313;
wire  signed [7:0] tmp_7_fu_2141_p315;
wire  signed [7:0] tmp_7_fu_2141_p317;
wire  signed [7:0] tmp_7_fu_2141_p319;
wire  signed [7:0] tmp_7_fu_2141_p321;
wire  signed [7:0] tmp_7_fu_2141_p323;
wire  signed [7:0] tmp_7_fu_2141_p325;
wire  signed [7:0] tmp_7_fu_2141_p327;
wire  signed [7:0] tmp_7_fu_2141_p329;
wire  signed [7:0] tmp_7_fu_2141_p331;
wire  signed [7:0] tmp_7_fu_2141_p333;
wire  signed [7:0] tmp_7_fu_2141_p335;
wire  signed [7:0] tmp_7_fu_2141_p337;
wire  signed [7:0] tmp_7_fu_2141_p339;
wire  signed [7:0] tmp_7_fu_2141_p341;
wire  signed [7:0] tmp_7_fu_2141_p343;
wire  signed [7:0] tmp_7_fu_2141_p345;
wire  signed [7:0] tmp_7_fu_2141_p347;
wire  signed [7:0] tmp_7_fu_2141_p349;
wire  signed [7:0] tmp_7_fu_2141_p351;
wire  signed [7:0] tmp_7_fu_2141_p353;
wire  signed [7:0] tmp_7_fu_2141_p355;
wire  signed [7:0] tmp_7_fu_2141_p357;
wire  signed [7:0] tmp_7_fu_2141_p359;
wire  signed [7:0] tmp_7_fu_2141_p361;
wire  signed [7:0] tmp_7_fu_2141_p363;
wire  signed [7:0] tmp_7_fu_2141_p365;
wire  signed [7:0] tmp_7_fu_2141_p367;
wire  signed [7:0] tmp_7_fu_2141_p369;
wire  signed [7:0] tmp_7_fu_2141_p371;
wire  signed [7:0] tmp_7_fu_2141_p373;
wire  signed [7:0] tmp_7_fu_2141_p375;
wire  signed [7:0] tmp_7_fu_2141_p377;
wire  signed [7:0] tmp_7_fu_2141_p379;
wire  signed [7:0] tmp_7_fu_2141_p381;
wire  signed [7:0] tmp_7_fu_2141_p383;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 norm_fu_822 = 64'd0;
#0 j_fu_826 = 2'd0;
#0 i_fu_830 = 7'd0;
#0 indvar_flatten27_fu_834 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1505(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2010_p0),.din1(grp_fu_2010_p1),.opcode(grp_fu_2010_opcode),.ce(1'b1),.dout(grp_fu_2010_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_385_8_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 8'h0 ),.din0_WIDTH( 64 ),.CASE1( 8'h1 ),.din1_WIDTH( 64 ),.CASE2( 8'h2 ),.din2_WIDTH( 64 ),.CASE3( 8'h3 ),.din3_WIDTH( 64 ),.CASE4( 8'h4 ),.din4_WIDTH( 64 ),.CASE5( 8'h5 ),.din5_WIDTH( 64 ),.CASE6( 8'h6 ),.din6_WIDTH( 64 ),.CASE7( 8'h7 ),.din7_WIDTH( 64 ),.CASE8( 8'h8 ),.din8_WIDTH( 64 ),.CASE9( 8'h9 ),.din9_WIDTH( 64 ),.CASE10( 8'hA ),.din10_WIDTH( 64 ),.CASE11( 8'hB ),.din11_WIDTH( 64 ),.CASE12( 8'hC ),.din12_WIDTH( 64 ),.CASE13( 8'hD ),.din13_WIDTH( 64 ),.CASE14( 8'hE ),.din14_WIDTH( 64 ),.CASE15( 8'hF ),.din15_WIDTH( 64 ),.CASE16( 8'h10 ),.din16_WIDTH( 64 ),.CASE17( 8'h11 ),.din17_WIDTH( 64 ),.CASE18( 8'h12 ),.din18_WIDTH( 64 ),.CASE19( 8'h13 ),.din19_WIDTH( 64 ),.CASE20( 8'h14 ),.din20_WIDTH( 64 ),.CASE21( 8'h15 ),.din21_WIDTH( 64 ),.CASE22( 8'h16 ),.din22_WIDTH( 64 ),.CASE23( 8'h17 ),.din23_WIDTH( 64 ),.CASE24( 8'h18 ),.din24_WIDTH( 64 ),.CASE25( 8'h19 ),.din25_WIDTH( 64 ),.CASE26( 8'h1A ),.din26_WIDTH( 64 ),.CASE27( 8'h1B ),.din27_WIDTH( 64 ),.CASE28( 8'h1C ),.din28_WIDTH( 64 ),.CASE29( 8'h1D ),.din29_WIDTH( 64 ),.CASE30( 8'h1E ),.din30_WIDTH( 64 ),.CASE31( 8'h1F ),.din31_WIDTH( 64 ),.CASE32( 8'h20 ),.din32_WIDTH( 64 ),.CASE33( 8'h21 ),.din33_WIDTH( 64 ),.CASE34( 8'h22 ),.din34_WIDTH( 64 ),.CASE35( 8'h23 ),.din35_WIDTH( 64 ),.CASE36( 8'h24 ),.din36_WIDTH( 64 ),.CASE37( 8'h25 ),.din37_WIDTH( 64 ),.CASE38( 8'h26 ),.din38_WIDTH( 64 ),.CASE39( 8'h27 ),.din39_WIDTH( 64 ),.CASE40( 8'h28 ),.din40_WIDTH( 64 ),.CASE41( 8'h29 ),.din41_WIDTH( 64 ),.CASE42( 8'h2A ),.din42_WIDTH( 64 ),.CASE43( 8'h2B ),.din43_WIDTH( 64 ),.CASE44( 8'h2C ),.din44_WIDTH( 64 ),.CASE45( 8'h2D ),.din45_WIDTH( 64 ),.CASE46( 8'h2E ),.din46_WIDTH( 64 ),.CASE47( 8'h2F ),.din47_WIDTH( 64 ),.CASE48( 8'h30 ),.din48_WIDTH( 64 ),.CASE49( 8'h31 ),.din49_WIDTH( 64 ),.CASE50( 8'h32 ),.din50_WIDTH( 64 ),.CASE51( 8'h33 ),.din51_WIDTH( 64 ),.CASE52( 8'h34 ),.din52_WIDTH( 64 ),.CASE53( 8'h35 ),.din53_WIDTH( 64 ),.CASE54( 8'h36 ),.din54_WIDTH( 64 ),.CASE55( 8'h37 ),.din55_WIDTH( 64 ),.CASE56( 8'h38 ),.din56_WIDTH( 64 ),.CASE57( 8'h39 ),.din57_WIDTH( 64 ),.CASE58( 8'h3A ),.din58_WIDTH( 64 ),.CASE59( 8'h3B ),.din59_WIDTH( 64 ),.CASE60( 8'h3C ),.din60_WIDTH( 64 ),.CASE61( 8'h3D ),.din61_WIDTH( 64 ),.CASE62( 8'h3E ),.din62_WIDTH( 64 ),.CASE63( 8'h3F ),.din63_WIDTH( 64 ),.CASE64( 8'h40 ),.din64_WIDTH( 64 ),.CASE65( 8'h41 ),.din65_WIDTH( 64 ),.CASE66( 8'h42 ),.din66_WIDTH( 64 ),.CASE67( 8'h43 ),.din67_WIDTH( 64 ),.CASE68( 8'h44 ),.din68_WIDTH( 64 ),.CASE69( 8'h45 ),.din69_WIDTH( 64 ),.CASE70( 8'h46 ),.din70_WIDTH( 64 ),.CASE71( 8'h47 ),.din71_WIDTH( 64 ),.CASE72( 8'h48 ),.din72_WIDTH( 64 ),.CASE73( 8'h49 ),.din73_WIDTH( 64 ),.CASE74( 8'h4A ),.din74_WIDTH( 64 ),.CASE75( 8'h4B ),.din75_WIDTH( 64 ),.CASE76( 8'h4C ),.din76_WIDTH( 64 ),.CASE77( 8'h4D ),.din77_WIDTH( 64 ),.CASE78( 8'h4E ),.din78_WIDTH( 64 ),.CASE79( 8'h4F ),.din79_WIDTH( 64 ),.CASE80( 8'h50 ),.din80_WIDTH( 64 ),.CASE81( 8'h51 ),.din81_WIDTH( 64 ),.CASE82( 8'h52 ),.din82_WIDTH( 64 ),.CASE83( 8'h53 ),.din83_WIDTH( 64 ),.CASE84( 8'h54 ),.din84_WIDTH( 64 ),.CASE85( 8'h55 ),.din85_WIDTH( 64 ),.CASE86( 8'h56 ),.din86_WIDTH( 64 ),.CASE87( 8'h57 ),.din87_WIDTH( 64 ),.CASE88( 8'h58 ),.din88_WIDTH( 64 ),.CASE89( 8'h59 ),.din89_WIDTH( 64 ),.CASE90( 8'h5A ),.din90_WIDTH( 64 ),.CASE91( 8'h5B ),.din91_WIDTH( 64 ),.CASE92( 8'h5C ),.din92_WIDTH( 64 ),.CASE93( 8'h5D ),.din93_WIDTH( 64 ),.CASE94( 8'h5E ),.din94_WIDTH( 64 ),.CASE95( 8'h5F ),.din95_WIDTH( 64 ),.CASE96( 8'h60 ),.din96_WIDTH( 64 ),.CASE97( 8'h61 ),.din97_WIDTH( 64 ),.CASE98( 8'h62 ),.din98_WIDTH( 64 ),.CASE99( 8'h63 ),.din99_WIDTH( 64 ),.CASE100( 8'h64 ),.din100_WIDTH( 64 ),.CASE101( 8'h65 ),.din101_WIDTH( 64 ),.CASE102( 8'h66 ),.din102_WIDTH( 64 ),.CASE103( 8'h67 ),.din103_WIDTH( 64 ),.CASE104( 8'h68 ),.din104_WIDTH( 64 ),.CASE105( 8'h69 ),.din105_WIDTH( 64 ),.CASE106( 8'h6A ),.din106_WIDTH( 64 ),.CASE107( 8'h6B ),.din107_WIDTH( 64 ),.CASE108( 8'h6C ),.din108_WIDTH( 64 ),.CASE109( 8'h6D ),.din109_WIDTH( 64 ),.CASE110( 8'h6E ),.din110_WIDTH( 64 ),.CASE111( 8'h6F ),.din111_WIDTH( 64 ),.CASE112( 8'h70 ),.din112_WIDTH( 64 ),.CASE113( 8'h71 ),.din113_WIDTH( 64 ),.CASE114( 8'h72 ),.din114_WIDTH( 64 ),.CASE115( 8'h73 ),.din115_WIDTH( 64 ),.CASE116( 8'h74 ),.din116_WIDTH( 64 ),.CASE117( 8'h75 ),.din117_WIDTH( 64 ),.CASE118( 8'h76 ),.din118_WIDTH( 64 ),.CASE119( 8'h77 ),.din119_WIDTH( 64 ),.CASE120( 8'h78 ),.din120_WIDTH( 64 ),.CASE121( 8'h79 ),.din121_WIDTH( 64 ),.CASE122( 8'h7A ),.din122_WIDTH( 64 ),.CASE123( 8'h7B ),.din123_WIDTH( 64 ),.CASE124( 8'h7C ),.din124_WIDTH( 64 ),.CASE125( 8'h7D ),.din125_WIDTH( 64 ),.CASE126( 8'h7E ),.din126_WIDTH( 64 ),.CASE127( 8'h7F ),.din127_WIDTH( 64 ),.CASE128( 8'h80 ),.din128_WIDTH( 64 ),.CASE129( 8'h81 ),.din129_WIDTH( 64 ),.CASE130( 8'h82 ),.din130_WIDTH( 64 ),.CASE131( 8'h83 ),.din131_WIDTH( 64 ),.CASE132( 8'h84 ),.din132_WIDTH( 64 ),.CASE133( 8'h85 ),.din133_WIDTH( 64 ),.CASE134( 8'h86 ),.din134_WIDTH( 64 ),.CASE135( 8'h87 ),.din135_WIDTH( 64 ),.CASE136( 8'h88 ),.din136_WIDTH( 64 ),.CASE137( 8'h89 ),.din137_WIDTH( 64 ),.CASE138( 8'h8A ),.din138_WIDTH( 64 ),.CASE139( 8'h8B ),.din139_WIDTH( 64 ),.CASE140( 8'h8C ),.din140_WIDTH( 64 ),.CASE141( 8'h8D ),.din141_WIDTH( 64 ),.CASE142( 8'h8E ),.din142_WIDTH( 64 ),.CASE143( 8'h8F ),.din143_WIDTH( 64 ),.CASE144( 8'h90 ),.din144_WIDTH( 64 ),.CASE145( 8'h91 ),.din145_WIDTH( 64 ),.CASE146( 8'h92 ),.din146_WIDTH( 64 ),.CASE147( 8'h93 ),.din147_WIDTH( 64 ),.CASE148( 8'h94 ),.din148_WIDTH( 64 ),.CASE149( 8'h95 ),.din149_WIDTH( 64 ),.CASE150( 8'h96 ),.din150_WIDTH( 64 ),.CASE151( 8'h97 ),.din151_WIDTH( 64 ),.CASE152( 8'h98 ),.din152_WIDTH( 64 ),.CASE153( 8'h99 ),.din153_WIDTH( 64 ),.CASE154( 8'h9A ),.din154_WIDTH( 64 ),.CASE155( 8'h9B ),.din155_WIDTH( 64 ),.CASE156( 8'h9C ),.din156_WIDTH( 64 ),.CASE157( 8'h9D ),.din157_WIDTH( 64 ),.CASE158( 8'h9E ),.din158_WIDTH( 64 ),.CASE159( 8'h9F ),.din159_WIDTH( 64 ),.CASE160( 8'hA0 ),.din160_WIDTH( 64 ),.CASE161( 8'hA1 ),.din161_WIDTH( 64 ),.CASE162( 8'hA2 ),.din162_WIDTH( 64 ),.CASE163( 8'hA3 ),.din163_WIDTH( 64 ),.CASE164( 8'hA4 ),.din164_WIDTH( 64 ),.CASE165( 8'hA5 ),.din165_WIDTH( 64 ),.CASE166( 8'hA6 ),.din166_WIDTH( 64 ),.CASE167( 8'hA7 ),.din167_WIDTH( 64 ),.CASE168( 8'hA8 ),.din168_WIDTH( 64 ),.CASE169( 8'hA9 ),.din169_WIDTH( 64 ),.CASE170( 8'hAA ),.din170_WIDTH( 64 ),.CASE171( 8'hAB ),.din171_WIDTH( 64 ),.CASE172( 8'hAC ),.din172_WIDTH( 64 ),.CASE173( 8'hAD ),.din173_WIDTH( 64 ),.CASE174( 8'hAE ),.din174_WIDTH( 64 ),.CASE175( 8'hAF ),.din175_WIDTH( 64 ),.CASE176( 8'hB0 ),.din176_WIDTH( 64 ),.CASE177( 8'hB1 ),.din177_WIDTH( 64 ),.CASE178( 8'hB2 ),.din178_WIDTH( 64 ),.CASE179( 8'hB3 ),.din179_WIDTH( 64 ),.CASE180( 8'hB4 ),.din180_WIDTH( 64 ),.CASE181( 8'hB5 ),.din181_WIDTH( 64 ),.CASE182( 8'hB6 ),.din182_WIDTH( 64 ),.CASE183( 8'hB7 ),.din183_WIDTH( 64 ),.CASE184( 8'hB8 ),.din184_WIDTH( 64 ),.CASE185( 8'hB9 ),.din185_WIDTH( 64 ),.CASE186( 8'hBA ),.din186_WIDTH( 64 ),.CASE187( 8'hBB ),.din187_WIDTH( 64 ),.CASE188( 8'hBC ),.din188_WIDTH( 64 ),.CASE189( 8'hBD ),.din189_WIDTH( 64 ),.CASE190( 8'hBE ),.din190_WIDTH( 64 ),.CASE191( 8'hBF ),.din191_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 8 ),.dout_WIDTH( 64 ))
sparsemux_385_8_64_1_1_U1507(.din0(p_read),.din1(p_read1),.din2(p_read2),.din3(p_read3),.din4(p_read4),.din5(p_read5),.din6(p_read6),.din7(p_read7),.din8(p_read8),.din9(p_read9),.din10(p_read10),.din11(p_read11),.din12(p_read12),.din13(p_read13),.din14(p_read14),.din15(p_read15),.din16(p_read16),.din17(p_read17),.din18(p_read18),.din19(p_read19),.din20(p_read20),.din21(p_read21),.din22(p_read22),.din23(p_read23),.din24(p_read24),.din25(p_read25),.din26(p_read26),.din27(p_read27),.din28(p_read28),.din29(p_read29),.din30(p_read30),.din31(p_read31),.din32(p_read32),.din33(p_read33),.din34(p_read34),.din35(p_read35),.din36(p_read36),.din37(p_read37),.din38(p_read38),.din39(p_read39),.din40(p_read40),.din41(p_read41),.din42(p_read42),.din43(p_read43),.din44(p_read44),.din45(p_read45),.din46(p_read46),.din47(p_read47),.din48(p_read48),.din49(p_read49),.din50(p_read50),.din51(p_read51),.din52(p_read52),.din53(p_read53),.din54(p_read54),.din55(p_read55),.din56(p_read56),.din57(p_read57),.din58(p_read58),.din59(p_read59),.din60(p_read60),.din61(p_read61),.din62(p_read62),.din63(p_read63),.din64(p_read64),.din65(p_read65),.din66(p_read66),.din67(p_read67),.din68(p_read68),.din69(p_read69),.din70(p_read70),.din71(p_read71),.din72(p_read72),.din73(p_read73),.din74(p_read74),.din75(p_read75),.din76(p_read76),.din77(p_read77),.din78(p_read78),.din79(p_read79),.din80(p_read80),.din81(p_read81),.din82(p_read82),.din83(p_read83),.din84(p_read84),.din85(p_read85),.din86(p_read86),.din87(p_read87),.din88(p_read88),.din89(p_read89),.din90(p_read90),.din91(p_read91),.din92(p_read92),.din93(p_read93),.din94(p_read94),.din95(p_read95),.din96(p_read96),.din97(p_read97),.din98(p_read98),.din99(p_read99),.din100(p_read100),.din101(p_read101),.din102(p_read102),.din103(p_read103),.din104(p_read104),.din105(p_read105),.din106(p_read106),.din107(p_read107),.din108(p_read108),.din109(p_read109),.din110(p_read110),.din111(p_read111),.din112(p_read112),.din113(p_read113),.din114(p_read114),.din115(p_read115),.din116(p_read116),.din117(p_read117),.din118(p_read118),.din119(p_read119),.din120(p_read120),.din121(p_read121),.din122(p_read122),.din123(p_read123),.din124(p_read124),.din125(p_read125),.din126(p_read126),.din127(p_read127),.din128(p_read128),.din129(p_read129),.din130(p_read130),.din131(p_read131),.din132(p_read132),.din133(p_read133),.din134(p_read134),.din135(p_read135),.din136(p_read136),.din137(p_read137),.din138(p_read138),.din139(p_read139),.din140(p_read140),.din141(p_read141),.din142(p_read142),.din143(p_read143),.din144(p_read144),.din145(p_read145),.din146(p_read146),.din147(p_read147),.din148(p_read148),.din149(p_read149),.din150(p_read150),.din151(p_read151),.din152(p_read152),.din153(p_read153),.din154(p_read154),.din155(p_read155),.din156(p_read156),.din157(p_read157),.din158(p_read158),.din159(p_read159),.din160(p_read160),.din161(p_read161),.din162(p_read162),.din163(p_read163),.din164(p_read164),.din165(p_read165),.din166(p_read166),.din167(p_read167),.din168(p_read168),.din169(p_read169),.din170(p_read170),.din171(p_read171),.din172(p_read172),.din173(p_read173),.din174(p_read174),.din175(p_read175),.din176(p_read176),.din177(p_read177),.din178(p_read178),.din179(p_read179),.din180(p_read180),.din181(p_read181),.din182(p_read182),.din183(p_read183),.din184(p_read184),.din185(p_read185),.din186(p_read186),.din187(p_read187),.din188(p_read188),.din189(p_read189),.din190(p_read190),.din191(p_read191),.def(tmp_7_fu_2141_p385),.sel(add_ln180_reg_3742),.dout(tmp_7_fu_2141_p387));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_830 <= 7'd0;
    end else if (((icmp_ln178_fu_2042_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_830 <= select_ln178_fu_2080_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten27_fu_834 <= 8'd0;
    end else if (((icmp_ln178_fu_2042_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten27_fu_834 <= add_ln178_fu_2048_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_826 <= 2'd0;
    end else if (((icmp_ln178_fu_2042_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_826 <= add_ln179_fu_2120_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        norm_fu_822 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_fu_822 <= grp_fu_2010_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln180_reg_3742 <= add_ln180_fu_2114_p2;
        icmp_ln178_reg_3738 <= icmp_ln178_fu_2042_p2;
        icmp_ln178_reg_3738_pp0_iter1_reg <= icmp_ln178_reg_3738;
        icmp_ln178_reg_3738_pp0_iter2_reg <= icmp_ln178_reg_3738_pp0_iter1_reg;
        icmp_ln178_reg_3738_pp0_iter3_reg <= icmp_ln178_reg_3738_pp0_iter2_reg;
        weights3_addr_reg_3753 <= zext_ln180_fu_2724_p1;
        weights3_addr_reg_3753_pp0_iter2_reg <= weights3_addr_reg_3753;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul1_reg_3780 <= grp_fu_5305_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_reg_3758 <= grp_fu_5305_p_dout0;
        weights3_load_reg_3763 <= weights3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub5_reg_3773 <= grp_fu_2010_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_7_reg_3748 <= tmp_7_fu_2141_p387;
    end
end
always @ (*) begin
    if (((icmp_ln178_reg_3738 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln178_reg_3738_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_norm_load_1 = grp_fu_2010_p2;
    end else begin
        ap_sig_allocacmp_norm_load_1 = norm_fu_822;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2010_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2010_opcode = 2'd0;
    end else begin
        grp_fu_2010_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2010_p0 = ap_sig_allocacmp_norm_load_1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2010_p0 = bitcast_ln180_fu_2728_p1;
    end else begin
        grp_fu_2010_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2010_p1 = mul1_reg_3780;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2010_p1 = mul_reg_3758;
    end else begin
        grp_fu_2010_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2014_p0 = sub5_reg_3773;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2014_p0 = tmp_7_reg_3748;
    end else begin
        grp_fu_2014_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_2014_p1 = sub5_reg_3773;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_2014_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_2014_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln178_reg_3738_pp0_iter3_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        norm_7_out_ap_vld = 1'b1;
    end else begin
        norm_7_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_address0_local = weights3_addr_reg_3753_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        weights3_address0_local = zext_ln180_fu_2724_p1;
    end else begin
        weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        weights3_ce0_local = 1'b1;
    end else begin
        weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        weights3_we0_local = 1'b1;
    end else begin
        weights3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln178_1_fu_2074_p2 = (i_fu_830 + 7'd1);
assign add_ln178_fu_2048_p2 = (indvar_flatten27_fu_834 + 8'd1);
assign add_ln179_fu_2120_p2 = (select_ln121_fu_2066_p3 + 2'd1);
assign add_ln180_fu_2114_p2 = (zext_ln179_1_fu_2110_p1 + sub_ln179_fu_2104_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln180_1_fu_2732_p1 = sub5_reg_3773;
assign bitcast_ln180_fu_2728_p1 = weights3_load_reg_3763;
assign grp_fu_5305_p_ce = 1'b1;
assign grp_fu_5305_p_din0 = grp_fu_2014_p0;
assign grp_fu_5305_p_din1 = grp_fu_2014_p1;
assign icmp_ln178_fu_2042_p2 = ((indvar_flatten27_fu_834 == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln179_fu_2060_p2 = ((j_fu_826 == 2'd3) ? 1'b1 : 1'b0);
assign norm_7_out = norm_fu_822;
assign p_shl_fu_2096_p3 = {{trunc_ln179_fu_2092_p1}, {2'd0}};
assign select_ln121_fu_2066_p3 = ((icmp_ln179_fu_2060_p2[0:0] == 1'b1) ? 2'd0 : j_fu_826);
assign select_ln178_fu_2080_p3 = ((icmp_ln179_fu_2060_p2[0:0] == 1'b1) ? add_ln178_1_fu_2074_p2 : i_fu_830);
assign sub_ln179_fu_2104_p2 = (p_shl_fu_2096_p3 - zext_ln179_fu_2088_p1);
assign tmp_7_fu_2141_p385 = 'bx;
assign trunc_ln179_fu_2092_p1 = select_ln178_fu_2080_p3[5:0];
assign weights3_address0 = weights3_address0_local;
assign weights3_ce0 = weights3_ce0_local;
assign weights3_d0 = bitcast_ln180_1_fu_2732_p1;
assign weights3_we0 = weights3_we0_local;
assign zext_ln179_1_fu_2110_p1 = select_ln121_fu_2066_p3;
assign zext_ln179_fu_2088_p1 = select_ln178_fu_2080_p3;
assign zext_ln180_fu_2724_p1 = add_ln180_reg_3742;
endmodule 