
module main_graph_main_graph_Pipeline_VITIS_LOOP_229_9 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln230,v56_address1,v56_ce1,v56_we1,v56_d1,mul_ln234,v57_address0,v57_ce0,v57_q0,mul_ln234_2,mul_ln234_1,add_ln234_2,add_ln234_6,add_ln234_4,add_ln234_3,add_ln234_7,add_ln234_5,v72_21,v72_13,v72_6,v72_18,v72,v72_14,v72_24,v72_9,v72_17,v72_15,v72_16,v72_20,v72_22,v72_7,v72_25,v72_11,v72_8,v72_2,v72_1,v72_5,v72_12,v72_26,v72_19,v72_3,v72_23,v72_10,v72_4);  
parameter    ap_ST_fsm_pp0_stage0 = 27'd1;
parameter    ap_ST_fsm_pp0_stage1 = 27'd2;
parameter    ap_ST_fsm_pp0_stage2 = 27'd4;
parameter    ap_ST_fsm_pp0_stage3 = 27'd8;
parameter    ap_ST_fsm_pp0_stage4 = 27'd16;
parameter    ap_ST_fsm_pp0_stage5 = 27'd32;
parameter    ap_ST_fsm_pp0_stage6 = 27'd64;
parameter    ap_ST_fsm_pp0_stage7 = 27'd128;
parameter    ap_ST_fsm_pp0_stage8 = 27'd256;
parameter    ap_ST_fsm_pp0_stage9 = 27'd512;
parameter    ap_ST_fsm_pp0_stage10 = 27'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 27'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 27'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 27'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 27'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 27'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 27'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 27'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 27'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 27'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 27'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 27'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 27'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 27'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 27'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 27'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 27'd67108864;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] zext_ln230;
output  [15:0] v56_address1;
output   v56_ce1;
output   v56_we1;
output  [7:0] v56_d1;
input  [10:0] mul_ln234;
output  [11:0] v57_address0;
output   v57_ce0;
input  [7:0] v57_q0;
input  [10:0] mul_ln234_2;
input  [10:0] mul_ln234_1;
input  [11:0] add_ln234_2;
input  [11:0] add_ln234_6;
input  [11:0] add_ln234_4;
input  [11:0] add_ln234_3;
input  [11:0] add_ln234_7;
input  [11:0] add_ln234_5;
input  [7:0] v72_21;
input  [7:0] v72_13;
input  [7:0] v72_6;
input  [7:0] v72_18;
input  [7:0] v72;
input  [7:0] v72_14;
input  [7:0] v72_24;
input  [7:0] v72_9;
input  [7:0] v72_17;
input  [7:0] v72_15;
input  [7:0] v72_16;
input  [7:0] v72_20;
input  [7:0] v72_22;
input  [7:0] v72_7;
input  [7:0] v72_25;
input  [7:0] v72_11;
input  [7:0] v72_8;
input  [7:0] v72_2;
input  [7:0] v72_1;
input  [7:0] v72_5;
input  [7:0] v72_12;
input  [7:0] v72_26;
input  [7:0] v72_19;
input  [7:0] v72_3;
input  [7:0] v72_23;
input  [7:0] v72_10;
input  [7:0] v72_4;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [26:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln229_reg_1333;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26_subdone;
reg  signed [7:0] reg_586;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg  signed [7:0] reg_590;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg  signed [7:0] reg_594;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg  signed [7:0] reg_598;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_11001;
wire    ap_CS_fsm_pp0_stage21;
wire    ap_block_pp0_stage21_11001;
reg  signed [7:0] reg_602;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage20;
wire    ap_block_pp0_stage20_11001;
reg  signed [7:0] reg_606;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] v67_1_reg_1325;
wire   [0:0] icmp_ln229_fu_618_p2;
wire   [5:0] add_ln234_fu_624_p2;
reg   [5:0] add_ln234_reg_1337;
wire   [11:0] zext_ln234_9_fu_630_p1;
reg   [11:0] zext_ln234_9_reg_1342;
wire   [5:0] add_ln234_1_fu_650_p2;
reg   [5:0] add_ln234_1_reg_1356;
wire   [10:0] zext_ln234_21_fu_655_p1;
reg   [10:0] zext_ln234_21_reg_1361;
wire   [11:0] zext_ln230_1_fu_687_p1;
reg   [11:0] zext_ln230_1_reg_1382;
wire   [11:0] zext_ln234_20_fu_700_p1;
reg   [11:0] zext_ln234_20_reg_1396;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] mul_ln241_fu_731_p2;
reg   [7:0] mul_ln241_reg_1420;
wire   [10:0] zext_ln230_2_fu_745_p1;
reg   [10:0] zext_ln230_2_reg_1430;
wire   [15:0] add_ln230_fu_751_p2;
reg   [15:0] add_ln230_reg_1436;
wire   [7:0] grp_fu_1013_p3;
wire   [10:0] zext_ln234_10_fu_766_p1;
reg   [10:0] zext_ln234_10_reg_1451;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [7:0] mul_ln241_4_fu_779_p2;
reg   [7:0] mul_ln241_4_reg_1462;
wire   [7:0] grp_fu_1019_p3;
reg  signed [7:0] add_ln241_19_reg_1467;
wire   [10:0] add_ln234_10_fu_793_p2;
reg   [10:0] add_ln234_10_reg_1477;
wire   [10:0] add_ln234_18_fu_797_p2;
reg   [10:0] add_ln234_18_reg_1482;
wire   [10:0] add_ln234_19_fu_801_p2;
reg   [10:0] add_ln234_19_reg_1487;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg  signed [7:0] v71_3_reg_1497;
wire   [7:0] grp_fu_1026_p3;
reg   [7:0] add_ln241_reg_1502;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [7:0] mul_ln241_26_fu_813_p2;
reg   [7:0] mul_ln241_26_reg_1512;
wire   [7:0] grp_fu_1032_p3;
reg  signed [7:0] add_ln241_1_reg_1522;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire   [7:0] mul_ln241_13_fu_831_p2;
reg   [7:0] mul_ln241_13_reg_1532;
wire   [7:0] grp_fu_1038_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln241_4_fu_845_p2;
reg   [7:0] add_ln241_4_reg_1547;
wire   [7:0] grp_fu_1051_p3;
wire   [7:0] grp_fu_1057_p3;
reg  signed [7:0] add_ln241_6_reg_1567;
wire   [11:0] add_ln234_11_fu_867_p2;
reg   [11:0] add_ln234_11_reg_1572;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_11001;
wire   [11:0] add_ln234_14_fu_871_p2;
reg   [11:0] add_ln234_14_reg_1577;
wire   [11:0] add_ln234_22_fu_875_p2;
reg   [11:0] add_ln234_22_reg_1582;
wire   [11:0] add_ln234_23_fu_879_p2;
reg   [11:0] add_ln234_23_reg_1587;
wire   [11:0] add_ln234_25_fu_883_p2;
reg   [11:0] add_ln234_25_reg_1592;
wire   [11:0] add_ln234_29_fu_887_p2;
reg   [11:0] add_ln234_29_reg_1597;
wire   [11:0] add_ln234_33_fu_900_p2;
reg   [11:0] add_ln234_33_reg_1607;
wire   [7:0] mul_ln241_5_fu_904_p2;
reg   [7:0] mul_ln241_5_reg_1612;
wire   [7:0] grp_fu_1064_p3;
wire    ap_CS_fsm_pp0_stage22;
wire    ap_block_pp0_stage22_11001;
wire   [7:0] mul_ln241_24_fu_921_p2;
reg   [7:0] mul_ln241_24_reg_1637;
wire   [7:0] grp_fu_1070_p3;
reg  signed [7:0] add_ln241_13_reg_1642;
wire    ap_CS_fsm_pp0_stage23;
wire    ap_block_pp0_stage23_11001;
wire   [7:0] mul_ln241_14_fu_930_p2;
reg   [7:0] mul_ln241_14_reg_1652;
wire    ap_CS_fsm_pp0_stage24;
wire    ap_block_pp0_stage24_11001;
wire   [7:0] mul_ln241_7_fu_939_p2;
reg   [7:0] mul_ln241_7_reg_1662;
wire   [7:0] grp_fu_1077_p3;
reg  signed [7:0] add_ln241_20_reg_1667;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire   [7:0] mul_ln241_15_fu_948_p2;
reg   [7:0] mul_ln241_15_reg_1677;
(* use_dsp48 = "no" *) wire   [7:0] add_ln241_23_fu_957_p2;
reg   [7:0] add_ln241_23_reg_1682;
wire    ap_block_pp0_stage26_11001;
wire   [7:0] mul_ln241_10_fu_966_p2;
reg   [7:0] mul_ln241_10_reg_1692;
wire   [7:0] grp_fu_1090_p3;
reg  signed [7:0] add_ln241_7_reg_1697;
wire   [7:0] mul_ln241_3_fu_971_p2;
reg   [7:0] mul_ln241_3_reg_1702;
(* use_dsp48 = "no" *) wire   [7:0] add_ln241_10_fu_980_p2;
reg   [7:0] add_ln241_10_reg_1707;
wire   [7:0] grp_fu_1103_p3;
reg  signed [7:0] add_ln241_14_reg_1712;
wire   [7:0] add_ln241_24_fu_994_p2;
reg   [7:0] add_ln241_24_reg_1717;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln234_18_fu_640_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln234_22_fu_664_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln234_23_fu_673_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln234_24_fu_682_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln234_5_fu_695_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln234_28_fu_708_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln234_7_fu_717_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln234_8_fu_726_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln234_30_fu_740_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln234_fu_761_p1;
wire    ap_block_pp0_stage9;
wire   [63:0] zext_ln234_11_fu_774_p1;
wire    ap_block_pp0_stage10;
wire   [63:0] zext_ln234_1_fu_788_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln234_12_fu_805_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln234_2_fu_809_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln234_13_fu_818_p1;
wire    ap_block_pp0_stage14;
wire   [63:0] zext_ln234_14_fu_826_p1;
wire    ap_block_pp0_stage15;
wire   [63:0] zext_ln234_4_fu_840_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln234_15_fu_853_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln234_26_fu_862_p1;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln234_27_fu_895_p1;
wire    ap_block_pp0_stage19;
wire   [63:0] zext_ln234_17_fu_909_p1;
wire    ap_block_pp0_stage20;
wire   [63:0] zext_ln234_29_fu_913_p1;
wire    ap_block_pp0_stage21;
wire   [63:0] zext_ln234_19_fu_917_p1;
wire    ap_block_pp0_stage22;
wire   [63:0] zext_ln234_3_fu_926_p1;
wire    ap_block_pp0_stage23;
wire   [63:0] zext_ln234_25_fu_935_p1;
wire    ap_block_pp0_stage24;
wire   [63:0] zext_ln234_16_fu_944_p1;
wire    ap_block_pp0_stage25;
wire   [63:0] zext_ln234_6_fu_962_p1;
wire    ap_block_pp0_stage26;
wire   [63:0] zext_ln230_4_fu_999_p1;
reg   [5:0] v67_fu_122;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v67_1;
reg    v57_ce0_local;
reg   [11:0] v57_address0_local;
reg    v56_we1_local;
wire   [7:0] v79_fu_1007_p2;
reg    v56_ce1_local;
wire   [11:0] add_ln234_24_fu_634_p2;
wire   [10:0] add_ln234_26_fu_659_p2;
wire   [10:0] add_ln234_27_fu_669_p2;
wire   [10:0] add_ln234_28_fu_678_p2;
wire   [11:0] add_ln234_13_fu_690_p2;
wire   [11:0] add_ln234_32_fu_703_p2;
wire   [11:0] add_ln234_15_fu_713_p2;
wire   [11:0] add_ln234_16_fu_722_p2;
wire   [11:0] add_ln234_34_fu_736_p2;
wire   [15:0] zext_ln230_3_fu_748_p1;
wire   [10:0] add_ln234_8_fu_756_p2;
wire   [10:0] add_ln234_17_fu_769_p2;
wire   [10:0] add_ln234_9_fu_784_p2;
wire   [11:0] add_ln234_20_fu_822_p2;
wire   [11:0] add_ln234_12_fu_836_p2;
wire  signed [7:0] add_ln241_4_fu_845_p0;
wire   [7:0] grp_fu_1044_p3;
wire   [11:0] add_ln234_21_fu_849_p2;
wire   [11:0] add_ln234_30_fu_858_p2;
wire   [11:0] add_ln234_31_fu_891_p2;
wire  signed [7:0] add_ln241_22_fu_953_p0;
wire   [7:0] grp_fu_1083_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln241_22_fu_953_p2;
wire  signed [7:0] add_ln241_9_fu_976_p0;
wire   [7:0] grp_fu_1096_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln241_9_fu_976_p2;
wire  signed [7:0] add_ln241_16_fu_985_p0;
wire   [7:0] grp_fu_1109_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln241_16_fu_985_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln241_17_fu_989_p2;
wire   [7:0] add_ln241_11_fu_1003_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [26:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 27'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v67_fu_122 = 6'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U3(.din0(v57_q0),.din1(v72_21),.dout(mul_ln241_fu_731_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U4(.din0(v57_q0),.din1(v72),.dout(mul_ln241_4_fu_779_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U5(.din0(v57_q0),.din1(v72_4),.dout(mul_ln241_26_fu_813_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U6(.din0(v57_q0),.din1(v72_7),.dout(mul_ln241_13_fu_831_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U7(.din0(v57_q0),.din1(v72_14),.dout(mul_ln241_5_fu_904_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U8(.din0(v57_q0),.din1(v72_23),.dout(mul_ln241_24_fu_921_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U9(.din0(v57_q0),.din1(v72_25),.dout(mul_ln241_14_fu_930_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U10(.din0(v57_q0),.din1(v72_9),.dout(mul_ln241_7_fu_939_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U11(.din0(v57_q0),.din1(v72_11),.dout(mul_ln241_15_fu_948_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U12(.din0(v57_q0),.din1(v72_16),.dout(mul_ln241_10_fu_966_p2));
main_graph_mul_8s_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_8s_8s_8_1_1_U13(.din0(v57_q0),.din1(v72_18),.dout(mul_ln241_3_fu_971_p2));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(reg_586),.din1(v72_22),.din2(mul_ln241_reg_1420),.ce(1'b1),.dout(grp_fu_1013_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U15(.clk(ap_clk),.reset(ap_rst),.din0(reg_606),.din1(v72_20),.din2(grp_fu_1013_p3),.ce(1'b1),.dout(grp_fu_1019_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U16(.clk(ap_clk),.reset(ap_rst),.din0(reg_590),.din1(v72_2),.din2(mul_ln241_4_reg_1462),.ce(1'b1),.dout(grp_fu_1026_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U17(.clk(ap_clk),.reset(ap_rst),.din0(v57_q0),.din1(v72_1),.din2(add_ln241_reg_1502),.ce(1'b1),.dout(grp_fu_1032_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U18(.clk(ap_clk),.reset(ap_rst),.din0(reg_594),.din1(v72_5),.din2(mul_ln241_26_reg_1512),.ce(1'b1),.dout(grp_fu_1038_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U19(.clk(ap_clk),.reset(ap_rst),.din0(v71_3_reg_1497),.din1(v72_3),.din2(grp_fu_1038_p3),.ce(1'b1),.dout(grp_fu_1044_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U20(.clk(ap_clk),.reset(ap_rst),.din0(reg_598),.din1(v72_8),.din2(mul_ln241_13_reg_1532),.ce(1'b1),.dout(grp_fu_1051_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(reg_590),.din1(v72_6),.din2(grp_fu_1051_p3),.ce(1'b1),.dout(grp_fu_1057_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U22(.clk(ap_clk),.reset(ap_rst),.din0(reg_602),.din1(v72_15),.din2(mul_ln241_5_reg_1612),.ce(1'b1),.dout(grp_fu_1064_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U23(.clk(ap_clk),.reset(ap_rst),.din0(reg_598),.din1(v72_13),.din2(grp_fu_1064_p3),.ce(1'b1),.dout(grp_fu_1070_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U24(.clk(ap_clk),.reset(ap_rst),.din0(reg_586),.din1(v72_24),.din2(mul_ln241_24_reg_1637),.ce(1'b1),.dout(grp_fu_1077_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U25(.clk(ap_clk),.reset(ap_rst),.din0(reg_606),.din1(v72_26),.din2(mul_ln241_14_reg_1652),.ce(1'b1),.dout(grp_fu_1083_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U26(.clk(ap_clk),.reset(ap_rst),.din0(reg_594),.din1(v72_10),.din2(mul_ln241_7_reg_1662),.ce(1'b1),.dout(grp_fu_1090_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U27(.clk(ap_clk),.reset(ap_rst),.din0(reg_590),.din1(v72_12),.din2(mul_ln241_15_reg_1677),.ce(1'b1),.dout(grp_fu_1096_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U28(.clk(ap_clk),.reset(ap_rst),.din0(reg_602),.din1(v72_17),.din2(mul_ln241_10_reg_1692),.ce(1'b1),.dout(grp_fu_1103_p3));
main_graph_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U29(.clk(ap_clk),.reset(ap_rst),.din0(reg_598),.din1(v72_19),.din2(mul_ln241_3_reg_1702),.ce(1'b1),.dout(grp_fu_1109_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage26_subdone) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln229_fu_618_p2 == 1'd0))) begin
            v67_fu_122 <= add_ln234_fu_624_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v67_fu_122 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln230_reg_1436 <= add_ln230_fu_751_p2;
        zext_ln230_2_reg_1430[5 : 0] <= zext_ln230_2_fu_745_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln234_10_reg_1477 <= add_ln234_10_fu_793_p2;
        add_ln234_18_reg_1482 <= add_ln234_18_fu_797_p2;
        add_ln234_19_reg_1487 <= add_ln234_19_fu_801_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage19_11001) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        add_ln234_11_reg_1572 <= add_ln234_11_fu_867_p2;
        add_ln234_14_reg_1577 <= add_ln234_14_fu_871_p2;
        add_ln234_22_reg_1582 <= add_ln234_22_fu_875_p2;
        add_ln234_23_reg_1587 <= add_ln234_23_fu_879_p2;
        add_ln234_25_reg_1592 <= add_ln234_25_fu_883_p2;
        add_ln234_29_reg_1597 <= add_ln234_29_fu_887_p2;
        add_ln234_33_reg_1607 <= add_ln234_33_fu_900_p2;
        mul_ln241_5_reg_1612 <= mul_ln241_5_fu_904_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln234_1_reg_1356 <= add_ln234_1_fu_650_p2;
        zext_ln234_21_reg_1361[5 : 0] <= zext_ln234_21_fu_655_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln234_reg_1337 <= add_ln234_fu_624_p2;
        add_ln241_10_reg_1707 <= add_ln241_10_fu_980_p2;
        icmp_ln229_reg_1333 <= icmp_ln229_fu_618_p2;
        mul_ln241_3_reg_1702 <= mul_ln241_3_fu_971_p2;
        v67_1_reg_1325 <= ap_sig_allocacmp_v67_1;
        zext_ln234_9_reg_1342[5 : 0] <= zext_ln234_9_fu_630_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        add_ln241_13_reg_1642 <= grp_fu_1070_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln241_14_reg_1712 <= grp_fu_1103_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        add_ln241_19_reg_1467 <= grp_fu_1019_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add_ln241_1_reg_1522 <= grp_fu_1032_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        add_ln241_20_reg_1667 <= grp_fu_1077_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage25_11001) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
        add_ln241_23_reg_1682 <= add_ln241_23_fu_957_p2;
        mul_ln241_15_reg_1677 <= mul_ln241_15_fu_948_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln241_24_reg_1717 <= add_ln241_24_fu_994_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add_ln241_4_reg_1547 <= add_ln241_4_fu_845_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        add_ln241_6_reg_1567 <= grp_fu_1057_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        add_ln241_7_reg_1697 <= grp_fu_1090_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        add_ln241_reg_1502 <= grp_fu_1026_p3;
        v71_3_reg_1497 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage26_11001) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        mul_ln241_10_reg_1692 <= mul_ln241_10_fu_966_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        mul_ln241_13_reg_1532 <= mul_ln241_13_fu_831_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage23_11001) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
        mul_ln241_14_reg_1652 <= mul_ln241_14_fu_930_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage22_11001) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
        mul_ln241_24_reg_1637 <= mul_ln241_24_fu_921_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        mul_ln241_26_reg_1512 <= mul_ln241_26_fu_813_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul_ln241_4_reg_1462 <= mul_ln241_4_fu_779_p2;
        zext_ln234_10_reg_1451[5 : 0] <= zext_ln234_10_fu_766_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage24_11001) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
        mul_ln241_7_reg_1662 <= mul_ln241_7_fu_939_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_ln241_reg_1420 <= mul_ln241_fu_731_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_586 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_590 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_594 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_598 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_602 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        reg_606 <= v57_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln230_1_reg_1382[5 : 0] <= zext_ln230_1_fu_687_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        zext_ln234_20_reg_1396[5 : 0] <= zext_ln234_20_fu_700_p1[5 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln229_reg_1333 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((1'b0 == ap_block_pp0_stage26_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v67_1 = 6'd0;
    end else begin
        ap_sig_allocacmp_v67_1 = v67_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v56_ce1_local = 1'b1;
    end else begin
        v56_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v56_we1_local = 1'b1;
    end else begin
        v56_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage26) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
            v57_address0_local = zext_ln234_6_fu_962_p1;
        end else if (((1'b0 == ap_block_pp0_stage25) & (1'b1 == ap_CS_fsm_pp0_stage25))) begin
            v57_address0_local = zext_ln234_16_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage24) & (1'b1 == ap_CS_fsm_pp0_stage24))) begin
            v57_address0_local = zext_ln234_25_fu_935_p1;
        end else if (((1'b0 == ap_block_pp0_stage23) & (1'b1 == ap_CS_fsm_pp0_stage23))) begin
            v57_address0_local = zext_ln234_3_fu_926_p1;
        end else if (((1'b0 == ap_block_pp0_stage22) & (1'b1 == ap_CS_fsm_pp0_stage22))) begin
            v57_address0_local = zext_ln234_19_fu_917_p1;
        end else if (((1'b0 == ap_block_pp0_stage21) & (1'b1 == ap_CS_fsm_pp0_stage21))) begin
            v57_address0_local = zext_ln234_29_fu_913_p1;
        end else if (((1'b0 == ap_block_pp0_stage20) & (1'b1 == ap_CS_fsm_pp0_stage20))) begin
            v57_address0_local = zext_ln234_17_fu_909_p1;
        end else if (((1'b0 == ap_block_pp0_stage19) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            v57_address0_local = zext_ln234_27_fu_895_p1;
        end else if (((1'b0 == ap_block_pp0_stage18) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
            v57_address0_local = zext_ln234_26_fu_862_p1;
        end else if (((1'b0 == ap_block_pp0_stage17) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            v57_address0_local = zext_ln234_15_fu_853_p1;
        end else if (((1'b0 == ap_block_pp0_stage16) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            v57_address0_local = zext_ln234_4_fu_840_p1;
        end else if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            v57_address0_local = zext_ln234_14_fu_826_p1;
        end else if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            v57_address0_local = zext_ln234_13_fu_818_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v57_address0_local = zext_ln234_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v57_address0_local = zext_ln234_12_fu_805_p1;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            v57_address0_local = zext_ln234_1_fu_788_p1;
        end else if (((1'b0 == ap_block_pp0_stage10) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            v57_address0_local = zext_ln234_11_fu_774_p1;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            v57_address0_local = zext_ln234_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            v57_address0_local = zext_ln234_30_fu_740_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v57_address0_local = zext_ln234_8_fu_726_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v57_address0_local = zext_ln234_7_fu_717_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v57_address0_local = zext_ln234_28_fu_708_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v57_address0_local = zext_ln234_5_fu_695_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v57_address0_local = zext_ln234_24_fu_682_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v57_address0_local = zext_ln234_23_fu_673_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v57_address0_local = zext_ln234_22_fu_664_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v57_address0_local = zext_ln234_18_fu_640_p1;
        end else begin
            v57_address0_local = 'bx;
        end
    end else begin
        v57_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((1'b0 == ap_block_pp0_stage26_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage24_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage24)) | ((1'b0 == ap_block_pp0_stage23_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage23)) | ((1'b0 == ap_block_pp0_stage22_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage22)) | ((1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage10_11001)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage20_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage20)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage21_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage21)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) &(1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln230_fu_751_p2 = (zext_ln230 + zext_ln230_3_fu_748_p1);
assign add_ln234_10_fu_793_p2 = (mul_ln234_1 + zext_ln230_2_reg_1430);
assign add_ln234_11_fu_867_p2 = (add_ln234_2 + zext_ln230_1_reg_1382);
assign add_ln234_12_fu_836_p2 = (add_ln234_6 + zext_ln230_1_reg_1382);
assign add_ln234_13_fu_690_p2 = (add_ln234_4 + zext_ln230_1_fu_687_p1);
assign add_ln234_14_fu_871_p2 = (add_ln234_3 + zext_ln230_1_reg_1382);
assign add_ln234_15_fu_713_p2 = (add_ln234_7 + zext_ln230_1_reg_1382);
assign add_ln234_16_fu_722_p2 = (add_ln234_5 + zext_ln230_1_reg_1382);
assign add_ln234_17_fu_769_p2 = (mul_ln234 + zext_ln234_10_fu_766_p1);
assign add_ln234_18_fu_797_p2 = (mul_ln234_2 + zext_ln234_10_reg_1451);
assign add_ln234_19_fu_801_p2 = (mul_ln234_1 + zext_ln234_10_reg_1451);
assign add_ln234_1_fu_650_p2 = (v67_1_reg_1325 + 6'd2);
assign add_ln234_20_fu_822_p2 = (add_ln234_2 + zext_ln234_9_reg_1342);
assign add_ln234_21_fu_849_p2 = (add_ln234_6 + zext_ln234_9_reg_1342);
assign add_ln234_22_fu_875_p2 = (add_ln234_4 + zext_ln234_9_reg_1342);
assign add_ln234_23_fu_879_p2 = (add_ln234_3 + zext_ln234_9_reg_1342);
assign add_ln234_24_fu_634_p2 = (add_ln234_7 + zext_ln234_9_fu_630_p1);
assign add_ln234_25_fu_883_p2 = (add_ln234_5 + zext_ln234_9_reg_1342);
assign add_ln234_26_fu_659_p2 = (mul_ln234 + zext_ln234_21_fu_655_p1);
assign add_ln234_27_fu_669_p2 = (mul_ln234_2 + zext_ln234_21_reg_1361);
assign add_ln234_28_fu_678_p2 = (mul_ln234_1 + zext_ln234_21_reg_1361);
assign add_ln234_29_fu_887_p2 = (add_ln234_2 + zext_ln234_20_reg_1396);
assign add_ln234_30_fu_858_p2 = (add_ln234_6 + zext_ln234_20_reg_1396);
assign add_ln234_31_fu_891_p2 = (add_ln234_4 + zext_ln234_20_reg_1396);
assign add_ln234_32_fu_703_p2 = (add_ln234_3 + zext_ln234_20_fu_700_p1);
assign add_ln234_33_fu_900_p2 = (add_ln234_7 + zext_ln234_20_reg_1396);
assign add_ln234_34_fu_736_p2 = (add_ln234_5 + zext_ln234_20_reg_1396);
assign add_ln234_8_fu_756_p2 = (mul_ln234 + zext_ln230_2_fu_745_p1);
assign add_ln234_9_fu_784_p2 = (mul_ln234_2 + zext_ln230_2_reg_1430);
assign add_ln234_fu_624_p2 = (ap_sig_allocacmp_v67_1 + 6'd1);
assign add_ln241_10_fu_980_p2 = ($signed(add_ln241_9_fu_976_p2) + $signed(add_ln241_6_reg_1567));
assign add_ln241_11_fu_1003_p2 = (add_ln241_10_reg_1707 + add_ln241_4_reg_1547);
assign add_ln241_16_fu_985_p0 = grp_fu_1109_p3;
assign add_ln241_16_fu_985_p2 = ($signed(add_ln241_16_fu_985_p0) + $signed(add_ln241_14_reg_1712));
assign add_ln241_17_fu_989_p2 = ($signed(add_ln241_16_fu_985_p2) + $signed(add_ln241_13_reg_1642));
assign add_ln241_22_fu_953_p0 = grp_fu_1083_p3;
assign add_ln241_22_fu_953_p2 = ($signed(add_ln241_22_fu_953_p0) + $signed(add_ln241_20_reg_1667));
assign add_ln241_23_fu_957_p2 = ($signed(add_ln241_22_fu_953_p2) + $signed(add_ln241_19_reg_1467));
assign add_ln241_24_fu_994_p2 = (add_ln241_23_reg_1682 + add_ln241_17_fu_989_p2);
assign add_ln241_4_fu_845_p0 = grp_fu_1044_p3;
assign add_ln241_4_fu_845_p2 = ($signed(add_ln241_4_fu_845_p0) + $signed(add_ln241_1_reg_1522));
assign add_ln241_9_fu_976_p0 = grp_fu_1096_p3;
assign add_ln241_9_fu_976_p2 = ($signed(add_ln241_9_fu_976_p0) + $signed(add_ln241_7_reg_1697));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage20 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_pp0_stage21 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_pp0_stage22 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_pp0_stage23 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_pp0_stage24 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
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
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign icmp_ln229_fu_618_p2 = ((ap_sig_allocacmp_v67_1 == 6'd32) ? 1'b1 : 1'b0);
assign v56_address1 = zext_ln230_4_fu_999_p1;
assign v56_ce1 = v56_ce1_local;
assign v56_d1 = v79_fu_1007_p2;
assign v56_we1 = v56_we1_local;
assign v57_address0 = v57_address0_local;
assign v57_ce0 = v57_ce0_local;
assign v79_fu_1007_p2 = (add_ln241_24_reg_1717 + add_ln241_11_fu_1003_p2);
assign zext_ln230_1_fu_687_p1 = v67_1_reg_1325;
assign zext_ln230_2_fu_745_p1 = v67_1_reg_1325;
assign zext_ln230_3_fu_748_p1 = v67_1_reg_1325;
assign zext_ln230_4_fu_999_p1 = add_ln230_reg_1436;
assign zext_ln234_10_fu_766_p1 = add_ln234_reg_1337;
assign zext_ln234_11_fu_774_p1 = add_ln234_17_fu_769_p2;
assign zext_ln234_12_fu_805_p1 = add_ln234_18_reg_1482;
assign zext_ln234_13_fu_818_p1 = add_ln234_19_reg_1487;
assign zext_ln234_14_fu_826_p1 = add_ln234_20_fu_822_p2;
assign zext_ln234_15_fu_853_p1 = add_ln234_21_fu_849_p2;
assign zext_ln234_16_fu_944_p1 = add_ln234_22_reg_1582;
assign zext_ln234_17_fu_909_p1 = add_ln234_23_reg_1587;
assign zext_ln234_18_fu_640_p1 = add_ln234_24_fu_634_p2;
assign zext_ln234_19_fu_917_p1 = add_ln234_25_reg_1592;
assign zext_ln234_1_fu_788_p1 = add_ln234_9_fu_784_p2;
assign zext_ln234_20_fu_700_p1 = add_ln234_1_reg_1356;
assign zext_ln234_21_fu_655_p1 = add_ln234_1_fu_650_p2;
assign zext_ln234_22_fu_664_p1 = add_ln234_26_fu_659_p2;
assign zext_ln234_23_fu_673_p1 = add_ln234_27_fu_669_p2;
assign zext_ln234_24_fu_682_p1 = add_ln234_28_fu_678_p2;
assign zext_ln234_25_fu_935_p1 = add_ln234_29_reg_1597;
assign zext_ln234_26_fu_862_p1 = add_ln234_30_fu_858_p2;
assign zext_ln234_27_fu_895_p1 = add_ln234_31_fu_891_p2;
assign zext_ln234_28_fu_708_p1 = add_ln234_32_fu_703_p2;
assign zext_ln234_29_fu_913_p1 = add_ln234_33_reg_1607;
assign zext_ln234_2_fu_809_p1 = add_ln234_10_reg_1477;
assign zext_ln234_30_fu_740_p1 = add_ln234_34_fu_736_p2;
assign zext_ln234_3_fu_926_p1 = add_ln234_11_reg_1572;
assign zext_ln234_4_fu_840_p1 = add_ln234_12_fu_836_p2;
assign zext_ln234_5_fu_695_p1 = add_ln234_13_fu_690_p2;
assign zext_ln234_6_fu_962_p1 = add_ln234_14_reg_1577;
assign zext_ln234_7_fu_717_p1 = add_ln234_15_fu_713_p2;
assign zext_ln234_8_fu_726_p1 = add_ln234_16_fu_722_p2;
assign zext_ln234_9_fu_630_p1 = add_ln234_fu_624_p2;
assign zext_ln234_fu_761_p1 = add_ln234_8_fu_756_p2;
always @ (posedge ap_clk) begin
    zext_ln234_9_reg_1342[11:6] <= 6'b000000;
    zext_ln234_21_reg_1361[10:6] <= 5'b00000;
    zext_ln230_1_reg_1382[11:6] <= 6'b000000;
    zext_ln234_20_reg_1396[11:6] <= 6'b000000;
    zext_ln230_2_reg_1430[10:6] <= 5'b00000;
    zext_ln234_10_reg_1451[10:6] <= 5'b00000;
end
endmodule 
