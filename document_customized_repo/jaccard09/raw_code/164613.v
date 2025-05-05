module main_graph_main_graph_Pipeline_VITIS_LOOP_643_85_VITIS_LOOP_644_86_VITIS_LOOP_645_87 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v8_Addr_A,v8_EN_A,v8_WEN_A,v8_Din_A,v8_Dout_A,v8_Addr_B,v8_EN_B,v8_WEN_B,v8_Din_B,v8_Dout_B,v81_address1,v81_ce1,v81_we1,v81_d1,v82_address0,v82_ce0,v82_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] v8_Addr_A;
output   v8_EN_A;
output  [0:0] v8_WEN_A;
output  [7:0] v8_Din_A;
input  [7:0] v8_Dout_A;
output  [31:0] v8_Addr_B;
output   v8_EN_B;
output  [0:0] v8_WEN_B;
output  [7:0] v8_Din_B;
input  [7:0] v8_Dout_B;
output  [12:0] v81_address1;
output   v81_ce1;
output   v81_we1;
output  [7:0] v81_d1;
output  [15:0] v82_address0;
output   v82_ce0;
input  [6:0] v82_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln643_reg_1041;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [6:0] reg_291;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln643_fu_323_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [3:0] v276_load_reg_1045;
wire   [0:0] icmp_ln644_fu_353_p2;
reg   [0:0] icmp_ln644_reg_1050;
wire   [0:0] and_ln643_fu_379_p2;
reg   [0:0] and_ln643_reg_1055;
wire   [7:0] select_ln643_1_fu_385_p3;
reg   [7:0] select_ln643_1_reg_1060;
wire   [12:0] add_ln649_13_fu_443_p2;
reg   [12:0] add_ln649_13_reg_1066;
wire   [9:0] add_ln646_fu_453_p2;
reg   [9:0] add_ln646_reg_1072;
wire   [2:0] empty_95_fu_459_p1;
reg   [2:0] empty_95_reg_1077;
wire   [3:0] empty_96_fu_463_p2;
reg   [3:0] empty_96_reg_1082;
wire   [12:0] add_ln649_1_fu_473_p2;
reg   [12:0] add_ln649_1_reg_1087;
wire   [11:0] trunc_ln649_fu_479_p1;
reg   [11:0] trunc_ln649_reg_1092;
wire   [10:0] empty_86_fu_553_p1;
reg   [10:0] empty_86_reg_1097;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [15:0] mul_ln649_1_fu_593_p2;
reg   [15:0] mul_ln649_1_reg_1118;
wire   [15:0] mul_ln649_2_fu_641_p2;
reg   [15:0] mul_ln649_2_reg_1124;
wire   [15:0] add_ln645_1_fu_687_p2;
reg   [15:0] add_ln645_1_reg_1131;
wire   [12:0] add_ln646_1_fu_697_p2;
reg   [12:0] add_ln646_1_reg_1138;
reg   [12:0] add_ln646_1_reg_1138_pp0_iter1_reg;
wire   [2:0] empty_98_fu_703_p1;
reg   [2:0] empty_98_reg_1143;
wire   [3:0] empty_99_fu_707_p2;
reg   [3:0] empty_99_reg_1148;
wire   [15:0] zext_ln649_15_fu_713_p1;
reg   [15:0] zext_ln649_15_reg_1153;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg  signed [7:0] v280_reg_1174;
reg  signed [7:0] v280_8_reg_1179;
reg   [6:0] v279_reg_1184;
wire   [15:0] zext_ln649_23_fu_768_p1;
reg   [15:0] zext_ln649_23_reg_1189;
reg  signed [7:0] v280_3_reg_1210;
reg  signed [7:0] v280_5_reg_1215;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg  signed [7:0] v280_6_reg_1235;
reg  signed [7:0] v280_7_reg_1240;
wire   [15:0] add_ln649_6_fu_831_p2;
reg   [15:0] add_ln649_6_reg_1245;
wire   [15:0] add_ln649_7_fu_846_p2;
reg   [15:0] add_ln649_7_reg_1250;
wire   [15:0] add_ln649_8_fu_851_p2;
reg   [15:0] add_ln649_8_reg_1255;
wire   [15:0] add_ln649_9_fu_856_p2;
reg   [15:0] add_ln649_9_reg_1260;
wire   [15:0] add_ln649_10_fu_861_p2;
reg   [15:0] add_ln649_10_reg_1265;
reg   [6:0] v279_3_reg_1275;
wire    ap_block_pp0_stage6_11001;
reg  signed [7:0] v280_1_reg_1285;
reg  signed [7:0] v280_2_reg_1290;
reg   [6:0] v279_5_reg_1300;
reg  signed [7:0] v280_4_reg_1305;
wire    ap_block_pp0_stage8_11001;
wire   [7:0] mul_ln656_fu_907_p2;
reg   [7:0] mul_ln656_reg_1330;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] mul_ln656_3_fu_923_p2;
reg   [7:0] mul_ln656_3_reg_1345;
wire   [7:0] mul_ln656_2_fu_939_p2;
reg   [7:0] mul_ln656_2_reg_1360;
wire   [7:0] grp_fu_975_p3;
reg   [7:0] add_ln656_4_reg_1365;
wire   [7:0] mul_ln656_6_fu_952_p2;
reg   [7:0] mul_ln656_6_reg_1375;
wire   [7:0] grp_fu_981_p3;
reg  signed [7:0] add_ln656_reg_1380;
wire   [7:0] grp_fu_987_p3;
reg  signed [7:0] add_ln656_1_reg_1385;
wire   [7:0] grp_fu_993_p3;
reg  signed [7:0] add_ln656_3_reg_1390;
wire   [7:0] v287_fu_965_p2;
reg   [7:0] v287_reg_1395;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast8_fu_548_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast16_fu_563_p1;
wire   [63:0] zext_ln649_16_fu_723_p1;
wire   [63:0] p_cast11_fu_744_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast13_fu_754_p1;
wire   [63:0] zext_ln649_26_fu_777_p1;
wire   [63:0] p_cast14_fu_787_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast15_fu_797_p1;
wire   [63:0] zext_ln649_17_fu_806_p1;
wire   [63:0] p_cast9_fu_816_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast10_fu_826_p1;
wire   [63:0] zext_ln649_25_fu_869_p1;
wire   [63:0] p_cast12_fu_879_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln649_18_fu_884_p1;
wire   [63:0] zext_ln649_22_fu_888_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln649_20_fu_899_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln649_24_fu_916_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln649_21_fu_928_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln646_2_fu_971_p1;
reg   [3:0] v276_fu_96;
wire   [3:0] add_ln645_fu_728_p2;
wire    ap_loop_init;
reg   [3:0] v275_fu_100;
wire   [3:0] select_ln644_fu_403_p3;
reg   [7:0] indvar_flatten454_fu_104;
wire   [7:0] select_ln644_1_fu_489_p3;
reg   [7:0] v274_fu_108;
reg   [13:0] indvar_flatten467_fu_112;
wire   [13:0] add_ln643_1_fu_329_p2;
reg    v8_EN_B_local;
reg   [31:0] v8_Addr_B_orig;
reg    v8_EN_A_local;
reg   [31:0] v8_Addr_A_orig;
reg    v82_ce0_local;
reg   [15:0] v82_address0_local;
reg    v81_we1_local;
reg    v81_ce1_local;
wire   [0:0] icmp_ln645_fu_373_p2;
wire   [0:0] xor_ln643_fu_367_p2;
wire   [7:0] add_ln643_fu_347_p2;
wire   [3:0] select_ln643_fu_359_p3;
wire   [3:0] add_ln644_fu_397_p2;
wire   [6:0] trunc_ln644_fu_393_p1;
wire   [11:0] tmp_42_fu_419_p3;
wire   [8:0] tmp_43_fu_431_p3;
wire   [12:0] zext_ln649_fu_427_p1;
wire   [12:0] zext_ln649_3_fu_439_p1;
wire   [9:0] tmp_s_fu_411_p3;
wire   [9:0] zext_ln646_fu_449_p1;
wire   [12:0] zext_ln649_5_fu_469_p1;
wire   [7:0] add_ln644_1_fu_483_p2;
wire   [0:0] empty_fu_517_p2;
wire   [10:0] tmp_fu_531_p3;
wire   [11:0] p_shl68_fu_538_p1;
wire   [11:0] select_ln643_1_cast_fu_528_p1;
wire   [11:0] empty_85_fu_542_p2;
wire   [10:0] empty_94_fu_557_p2;
wire   [13:0] tmp_45_fu_582_p3;
wire   [15:0] p_shl3_fu_575_p3;
wire   [15:0] p_shl65_fu_589_p1;
wire   [4:0] p_cast214_fu_599_p1;
wire   [4:0] empty_97_fu_602_p2;
wire   [12:0] zext_ln649_13_fu_608_p1;
wire   [12:0] add_ln649_2_fu_612_p2;
wire   [11:0] trunc_ln649_1_fu_617_p1;
wire   [13:0] tmp_46_fu_629_p3;
wire   [15:0] p_shl4_fu_621_p3;
wire   [15:0] p_shl63_fu_637_p1;
wire   [3:0] tmp_12_fu_647_p3;
wire   [12:0] zext_ln649_14_fu_654_p1;
wire   [12:0] add_ln649_3_fu_658_p2;
wire   [11:0] trunc_ln649_2_fu_663_p1;
wire   [13:0] tmp_47_fu_675_p3;
wire   [15:0] p_shl_fu_667_p3;
wire   [15:0] zext_ln645_fu_683_p1;
wire   [3:0] v276_mid2_fu_521_p3;
wire   [12:0] tmp_44_fu_568_p3;
wire   [12:0] zext_ln646_1_fu_693_p1;
wire   [15:0] add_ln649_4_fu_717_p2;
wire   [10:0] empty_89_fu_739_p2;
wire   [10:0] empty_91_fu_749_p2;
wire   [4:0] zext_ln649_1_fu_759_p1;
wire   [4:0] add_ln649_fu_762_p2;
wire   [15:0] add_ln649_12_fu_772_p2;
wire   [10:0] empty_92_fu_782_p2;
wire   [10:0] empty_93_fu_792_p2;
wire   [15:0] add_ln649_5_fu_802_p2;
wire   [10:0] empty_87_fu_811_p2;
wire   [10:0] empty_88_fu_821_p2;
wire   [3:0] or_ln1_fu_835_p3;
wire   [15:0] zext_ln649_19_fu_842_p1;
wire   [15:0] add_ln649_11_fu_865_p2;
wire   [10:0] empty_90_fu_874_p2;
wire   [6:0] mul_ln656_fu_907_p0;
wire   [6:0] mul_ln656_3_fu_923_p0;
wire   [6:0] mul_ln656_2_fu_939_p0;
wire   [6:0] mul_ln656_6_fu_952_p0;
wire  signed [7:0] add_ln656_6_fu_961_p0;
wire   [7:0] grp_fu_999_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln656_6_fu_961_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln656_2_fu_957_p2;
wire   [6:0] grp_fu_975_p1;
wire   [6:0] grp_fu_981_p1;
wire   [6:0] grp_fu_987_p1;
wire   [6:0] grp_fu_993_p1;
wire   [6:0] grp_fu_999_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_975_p10;
wire   [7:0] grp_fu_981_p10;
wire   [7:0] grp_fu_987_p10;
wire   [7:0] grp_fu_993_p10;
wire   [7:0] grp_fu_999_p10;
wire   [7:0] mul_ln656_2_fu_939_p00;
wire   [7:0] mul_ln656_3_fu_923_p00;
wire   [7:0] mul_ln656_6_fu_952_p00;
wire   [7:0] mul_ln656_fu_907_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v276_fu_96 = 4'd0;
#0 v275_fu_100 = 4'd0;
#0 indvar_flatten454_fu_104 = 8'd0;
#0 v274_fu_108 = 8'd0;
#0 indvar_flatten467_fu_112 = 14'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U265(.din0(mul_ln656_fu_907_p0),.din1(v280_7_reg_1240),.dout(mul_ln656_fu_907_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U266(.din0(mul_ln656_3_fu_923_p0),.din1(v280_1_reg_1285),.dout(mul_ln656_3_fu_923_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U267(.din0(mul_ln656_2_fu_939_p0),.din1(v280_2_reg_1290),.dout(mul_ln656_2_fu_939_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U268(.din0(mul_ln656_6_fu_952_p0),.din1(v280_4_reg_1305),.dout(mul_ln656_6_fu_952_p2));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(v280_8_reg_1179),.din1(grp_fu_975_p1),.din2(mul_ln656_reg_1330),.ce(1'b1),.dout(grp_fu_975_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(v280_reg_1174),.din1(grp_fu_981_p1),.din2(mul_ln656_3_reg_1345),.ce(1'b1),.dout(grp_fu_981_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U271(.clk(ap_clk),.reset(ap_rst),.din0(v280_3_reg_1210),.din1(grp_fu_987_p1),.din2(mul_ln656_2_reg_1360),.ce(1'b1),.dout(grp_fu_987_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(v280_5_reg_1215),.din1(grp_fu_993_p1),.din2(mul_ln656_6_reg_1375),.ce(1'b1),.dout(grp_fu_993_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(v280_6_reg_1235),.din1(grp_fu_999_p1),.din2(add_ln656_4_reg_1365),.ce(1'b1),.dout(grp_fu_999_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
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
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten454_fu_104 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln643_fu_323_p2 == 1'd0))) begin
        indvar_flatten454_fu_104 <= select_ln644_1_fu_489_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten467_fu_112 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln643_fu_323_p2 == 1'd0))) begin
        indvar_flatten467_fu_112 <= add_ln643_1_fu_329_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v274_fu_108 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln643_fu_323_p2 == 1'd0))) begin
        v274_fu_108 <= select_ln643_1_fu_385_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v275_fu_100 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln643_fu_323_p2 == 1'd0))) begin
        v275_fu_100 <= select_ln644_fu_403_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v276_fu_96 <= 4'd0;
    end else if (((icmp_ln643_reg_1041 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v276_fu_96 <= add_ln645_fu_728_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln645_1_reg_1131[15 : 2] <= add_ln645_1_fu_687_p2[15 : 2];
        add_ln646_1_reg_1138 <= add_ln646_1_fu_697_p2;
        add_ln646_1_reg_1138_pp0_iter1_reg <= add_ln646_1_reg_1138;
        empty_86_reg_1097 <= empty_86_fu_553_p1;
        empty_98_reg_1143 <= empty_98_fu_703_p1;
        empty_99_reg_1148[3 : 1] <= empty_99_fu_707_p2[3 : 1];
        mul_ln649_1_reg_1118[15 : 2] <= mul_ln649_1_fu_593_p2[15 : 2];
        mul_ln649_2_reg_1124[15 : 2] <= mul_ln649_2_fu_641_p2[15 : 2];
        mul_ln656_6_reg_1375 <= mul_ln656_6_fu_952_p2;
        zext_ln649_15_reg_1153[3 : 1] <= zext_ln649_15_fu_713_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln646_reg_1072 <= add_ln646_fu_453_p2;
        add_ln649_13_reg_1066[12 : 1] <= add_ln649_13_fu_443_p2[12 : 1];
        add_ln649_1_reg_1087[12 : 1] <= add_ln649_1_fu_473_p2[12 : 1];
        and_ln643_reg_1055 <= and_ln643_fu_379_p2;
        empty_95_reg_1077 <= empty_95_fu_459_p1;
        empty_96_reg_1082[3 : 1] <= empty_96_fu_463_p2[3 : 1];
        icmp_ln643_reg_1041 <= icmp_ln643_fu_323_p2;
        icmp_ln644_reg_1050 <= icmp_ln644_fu_353_p2;
        mul_ln656_2_reg_1360 <= mul_ln656_2_fu_939_p2;
        select_ln643_1_reg_1060 <= select_ln643_1_fu_385_p3;
        trunc_ln649_reg_1092[11 : 1] <= trunc_ln649_fu_479_p1[11 : 1];
        v276_load_reg_1045 <= v276_fu_96;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln649_10_reg_1265[15 : 1] <= add_ln649_10_fu_861_p2[15 : 1];
        add_ln649_6_reg_1245[15 : 1] <= add_ln649_6_fu_831_p2[15 : 1];
        add_ln649_7_reg_1250[15 : 1] <= add_ln649_7_fu_846_p2[15 : 1];
        add_ln649_8_reg_1255[15 : 1] <= add_ln649_8_fu_851_p2[15 : 1];
        add_ln649_9_reg_1260[15 : 1] <= add_ln649_9_fu_856_p2[15 : 1];
        v287_reg_1395 <= v287_fu_965_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln656_1_reg_1385 <= grp_fu_987_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln656_3_reg_1390 <= grp_fu_993_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln656_4_reg_1365 <= grp_fu_975_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln656_reg_1380 <= grp_fu_981_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln656_3_reg_1345 <= mul_ln656_3_fu_923_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln656_reg_1330 <= mul_ln656_fu_907_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_291 <= v82_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v279_3_reg_1275 <= v82_q0;
        v280_6_reg_1235 <= v8_Dout_B;
        v280_7_reg_1240 <= v8_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v279_5_reg_1300 <= v82_q0;
        v280_1_reg_1285 <= v8_Dout_B;
        v280_2_reg_1290 <= v8_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v279_reg_1184 <= v82_q0;
        v280_8_reg_1179 <= v8_Dout_A;
        v280_reg_1174 <= v8_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v280_3_reg_1210 <= v8_Dout_B;
        v280_5_reg_1215 <= v8_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v280_4_reg_1305 <= v8_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln649_23_reg_1189[4 : 1] <= zext_ln649_23_fu_768_p1[4 : 1];
    end
end
always @ (*) begin
    if (((icmp_ln643_reg_1041 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v81_ce1_local = 1'b1;
    end else begin
        v81_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v81_we1_local = 1'b1;
    end else begin
        v81_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v82_address0_local = zext_ln649_21_fu_928_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v82_address0_local = zext_ln649_24_fu_916_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v82_address0_local = zext_ln649_20_fu_899_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v82_address0_local = zext_ln649_22_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v82_address0_local = zext_ln649_18_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v82_address0_local = zext_ln649_25_fu_869_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v82_address0_local = zext_ln649_17_fu_806_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v82_address0_local = zext_ln649_26_fu_777_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v82_address0_local = zext_ln649_16_fu_723_p1;
    end else begin
        v82_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v82_ce0_local = 1'b1;
    end else begin
        v82_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v8_Addr_A_orig = p_cast12_fu_879_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v8_Addr_A_orig = p_cast10_fu_826_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v8_Addr_A_orig = p_cast15_fu_797_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v8_Addr_A_orig = p_cast13_fu_754_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v8_Addr_A_orig = p_cast16_fu_563_p1;
        end else begin
            v8_Addr_A_orig = 'bx;
        end
    end else begin
        v8_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v8_Addr_B_orig = p_cast9_fu_816_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v8_Addr_B_orig = p_cast14_fu_787_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v8_Addr_B_orig = p_cast11_fu_744_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v8_Addr_B_orig = p_cast8_fu_548_p1;
        end else begin
            v8_Addr_B_orig = 'bx;
        end
    end else begin
        v8_Addr_B_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v8_EN_A_local = 1'b1;
    end else begin
        v8_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v8_EN_B_local = 1'b1;
    end else begin
        v8_EN_B_local = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln643_1_fu_329_p2 = (indvar_flatten467_fu_112 + 14'd1);
assign add_ln643_fu_347_p2 = (v274_fu_108 + 8'd1);
assign add_ln644_1_fu_483_p2 = (indvar_flatten454_fu_104 + 8'd1);
assign add_ln644_fu_397_p2 = (select_ln643_fu_359_p3 + 4'd1);
assign add_ln645_1_fu_687_p2 = (p_shl_fu_667_p3 + zext_ln645_fu_683_p1);
assign add_ln645_fu_728_p2 = (v276_mid2_fu_521_p3 + 4'd1);
assign add_ln646_1_fu_697_p2 = (tmp_44_fu_568_p3 + zext_ln646_1_fu_693_p1);
assign add_ln646_fu_453_p2 = (tmp_s_fu_411_p3 + zext_ln646_fu_449_p1);
assign add_ln649_10_fu_861_p2 = (mul_ln649_1_reg_1118 + zext_ln649_23_reg_1189);
assign add_ln649_11_fu_865_p2 = (add_ln645_1_reg_1131 + zext_ln649_23_reg_1189);
assign add_ln649_12_fu_772_p2 = (mul_ln649_2_reg_1124 + zext_ln649_23_fu_768_p1);
assign add_ln649_13_fu_443_p2 = (zext_ln649_fu_427_p1 + zext_ln649_3_fu_439_p1);
assign add_ln649_1_fu_473_p2 = (add_ln649_13_fu_443_p2 + zext_ln649_5_fu_469_p1);
assign add_ln649_2_fu_612_p2 = (add_ln649_13_reg_1066 + zext_ln649_13_fu_608_p1);
assign add_ln649_3_fu_658_p2 = (add_ln649_13_reg_1066 + zext_ln649_14_fu_654_p1);
assign add_ln649_4_fu_717_p2 = (mul_ln649_1_fu_593_p2 + zext_ln649_15_fu_713_p1);
assign add_ln649_5_fu_802_p2 = (add_ln645_1_reg_1131 + zext_ln649_15_reg_1153);
assign add_ln649_6_fu_831_p2 = (mul_ln649_2_reg_1124 + zext_ln649_15_reg_1153);
assign add_ln649_7_fu_846_p2 = (mul_ln649_1_reg_1118 + zext_ln649_19_fu_842_p1);
assign add_ln649_8_fu_851_p2 = (add_ln645_1_reg_1131 + zext_ln649_19_fu_842_p1);
assign add_ln649_9_fu_856_p2 = (mul_ln649_2_reg_1124 + zext_ln649_19_fu_842_p1);
assign add_ln649_fu_762_p2 = (zext_ln649_1_fu_759_p1 + 5'd2);
assign add_ln656_2_fu_957_p2 = ($signed(add_ln656_1_reg_1385) + $signed(add_ln656_reg_1380));
assign add_ln656_6_fu_961_p0 = grp_fu_999_p3;
assign add_ln656_6_fu_961_p2 = ($signed(add_ln656_6_fu_961_p0) + $signed(add_ln656_3_reg_1390));
assign and_ln643_fu_379_p2 = (xor_ln643_fu_367_p2 & icmp_ln645_fu_373_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign empty_85_fu_542_p2 = (p_shl68_fu_538_p1 + select_ln643_1_cast_fu_528_p1);
assign empty_86_fu_553_p1 = empty_85_fu_542_p2[10:0];
assign empty_87_fu_811_p2 = (empty_86_reg_1097 + 11'd1);
assign empty_88_fu_821_p2 = (empty_86_reg_1097 + 11'd2);
assign empty_89_fu_739_p2 = (empty_86_reg_1097 + 11'd3);
assign empty_90_fu_874_p2 = (empty_86_reg_1097 + 11'd4);
assign empty_91_fu_749_p2 = (empty_86_reg_1097 + 11'd5);
assign empty_92_fu_782_p2 = (empty_86_reg_1097 + 11'd6);
assign empty_93_fu_792_p2 = (empty_86_reg_1097 + 11'd7);
assign empty_94_fu_557_p2 = (empty_86_fu_553_p1 + 11'd8);
assign empty_95_fu_459_p1 = select_ln644_fu_403_p3[2:0];
assign empty_96_fu_463_p2 = select_ln644_fu_403_p3 << 4'd1;
assign empty_97_fu_602_p2 = (p_cast214_fu_599_p1 + 5'd2);
assign empty_98_fu_703_p1 = v276_mid2_fu_521_p3[2:0];
assign empty_99_fu_707_p2 = v276_mid2_fu_521_p3 << 4'd1;
assign empty_fu_517_p2 = (icmp_ln644_reg_1050 | and_ln643_reg_1055);
assign grp_fu_975_p1 = grp_fu_975_p10;
assign grp_fu_975_p10 = reg_291;
assign grp_fu_981_p1 = grp_fu_981_p10;
assign grp_fu_981_p10 = v279_reg_1184;
assign grp_fu_987_p1 = grp_fu_987_p10;
assign grp_fu_987_p10 = v279_3_reg_1275;
assign grp_fu_993_p1 = grp_fu_993_p10;
assign grp_fu_993_p10 = v279_5_reg_1300;
assign grp_fu_999_p1 = grp_fu_999_p10;
assign grp_fu_999_p10 = reg_291;
assign icmp_ln643_fu_323_p2 = ((indvar_flatten467_fu_112 == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln644_fu_353_p2 = ((indvar_flatten454_fu_104 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln645_fu_373_p2 = ((v276_fu_96 == 4'd8) ? 1'b1 : 1'b0);
assign mul_ln649_1_fu_593_p2 = (p_shl3_fu_575_p3 + p_shl65_fu_589_p1);
assign mul_ln649_2_fu_641_p2 = (p_shl4_fu_621_p3 + p_shl63_fu_637_p1);
assign mul_ln656_2_fu_939_p0 = mul_ln656_2_fu_939_p00;
assign mul_ln656_2_fu_939_p00 = v82_q0;
assign mul_ln656_3_fu_923_p0 = mul_ln656_3_fu_923_p00;
assign mul_ln656_3_fu_923_p00 = v82_q0;
assign mul_ln656_6_fu_952_p0 = mul_ln656_6_fu_952_p00;
assign mul_ln656_6_fu_952_p00 = v82_q0;
assign mul_ln656_fu_907_p0 = mul_ln656_fu_907_p00;
assign mul_ln656_fu_907_p00 = v82_q0;
assign or_ln1_fu_835_p3 = {{empty_98_reg_1143}, {1'd1}};
assign p_cast10_fu_826_p1 = empty_88_fu_821_p2;
assign p_cast11_fu_744_p1 = empty_89_fu_739_p2;
assign p_cast12_fu_879_p1 = empty_90_fu_874_p2;
assign p_cast13_fu_754_p1 = empty_91_fu_749_p2;
assign p_cast14_fu_787_p1 = empty_92_fu_782_p2;
assign p_cast15_fu_797_p1 = empty_93_fu_792_p2;
assign p_cast16_fu_563_p1 = empty_94_fu_557_p2;
assign p_cast214_fu_599_p1 = empty_96_reg_1082;
assign p_cast8_fu_548_p1 = empty_85_fu_542_p2;
assign p_cast9_fu_816_p1 = empty_87_fu_811_p2;
assign p_shl3_fu_575_p3 = {{trunc_ln649_reg_1092}, {4'd0}};
assign p_shl4_fu_621_p3 = {{trunc_ln649_1_fu_617_p1}, {4'd0}};
assign p_shl63_fu_637_p1 = tmp_46_fu_629_p3;
assign p_shl65_fu_589_p1 = tmp_45_fu_582_p3;
assign p_shl68_fu_538_p1 = tmp_fu_531_p3;
assign p_shl_fu_667_p3 = {{trunc_ln649_2_fu_663_p1}, {4'd0}};
assign select_ln643_1_cast_fu_528_p1 = select_ln643_1_reg_1060;
assign select_ln643_1_fu_385_p3 = ((icmp_ln644_fu_353_p2[0:0] == 1'b1) ? add_ln643_fu_347_p2 : v274_fu_108);
assign select_ln643_fu_359_p3 = ((icmp_ln644_fu_353_p2[0:0] == 1'b1) ? 4'd0 : v275_fu_100);
assign select_ln644_1_fu_489_p3 = ((icmp_ln644_fu_353_p2[0:0] == 1'b1) ? 8'd1 : add_ln644_1_fu_483_p2);
assign select_ln644_fu_403_p3 = ((and_ln643_fu_379_p2[0:0] == 1'b1) ? add_ln644_fu_397_p2 : select_ln643_fu_359_p3);
assign tmp_12_fu_647_p3 = {{empty_95_reg_1077}, {1'd1}};
assign tmp_42_fu_419_p3 = {{select_ln643_1_fu_385_p3}, {4'd0}};
assign tmp_43_fu_431_p3 = {{select_ln643_1_fu_385_p3}, {1'd0}};
assign tmp_44_fu_568_p3 = {{add_ln646_reg_1072}, {3'd0}};
assign tmp_45_fu_582_p3 = {{add_ln649_1_reg_1087}, {1'd0}};
assign tmp_46_fu_629_p3 = {{add_ln649_2_fu_612_p2}, {1'd0}};
assign tmp_47_fu_675_p3 = {{add_ln649_3_fu_658_p2}, {1'd0}};
assign tmp_fu_531_p3 = {{select_ln643_1_reg_1060}, {3'd0}};
assign tmp_s_fu_411_p3 = {{trunc_ln644_fu_393_p1}, {3'd0}};
assign trunc_ln644_fu_393_p1 = select_ln643_1_fu_385_p3[6:0];
assign trunc_ln649_1_fu_617_p1 = add_ln649_2_fu_612_p2[11:0];
assign trunc_ln649_2_fu_663_p1 = add_ln649_3_fu_658_p2[11:0];
assign trunc_ln649_fu_479_p1 = add_ln649_1_fu_473_p2[11:0];
assign v276_mid2_fu_521_p3 = ((empty_fu_517_p2[0:0] == 1'b1) ? 4'd0 : v276_load_reg_1045);
assign v287_fu_965_p2 = (add_ln656_6_fu_961_p2 + add_ln656_2_fu_957_p2);
assign v81_address1 = zext_ln646_2_fu_971_p1;
assign v81_ce1 = v81_ce1_local;
assign v81_d1 = v287_reg_1395;
assign v81_we1 = v81_we1_local;
assign v82_address0 = v82_address0_local;
assign v82_ce0 = v82_ce0_local;
assign v8_Addr_A = v8_Addr_A_orig << 32'd0;
assign v8_Addr_B = v8_Addr_B_orig << 32'd0;
assign v8_Din_A = 8'd0;
assign v8_Din_B = 8'd0;
assign v8_EN_A = v8_EN_A_local;
assign v8_EN_B = v8_EN_B_local;
assign v8_WEN_A = 1'd0;
assign v8_WEN_B = 1'd0;
assign xor_ln643_fu_367_p2 = (icmp_ln644_fu_353_p2 ^ 1'd1);
assign zext_ln645_fu_683_p1 = tmp_47_fu_675_p3;
assign zext_ln646_1_fu_693_p1 = v276_mid2_fu_521_p3;
assign zext_ln646_2_fu_971_p1 = add_ln646_1_reg_1138_pp0_iter1_reg;
assign zext_ln646_fu_449_p1 = select_ln644_fu_403_p3;
assign zext_ln649_13_fu_608_p1 = empty_97_fu_602_p2;
assign zext_ln649_14_fu_654_p1 = tmp_12_fu_647_p3;
assign zext_ln649_15_fu_713_p1 = empty_99_fu_707_p2;
assign zext_ln649_16_fu_723_p1 = add_ln649_4_fu_717_p2;
assign zext_ln649_17_fu_806_p1 = add_ln649_5_fu_802_p2;
assign zext_ln649_18_fu_884_p1 = add_ln649_6_reg_1245;
assign zext_ln649_19_fu_842_p1 = or_ln1_fu_835_p3;
assign zext_ln649_1_fu_759_p1 = empty_99_reg_1148;
assign zext_ln649_20_fu_899_p1 = add_ln649_7_reg_1250;
assign zext_ln649_21_fu_928_p1 = add_ln649_8_reg_1255;
assign zext_ln649_22_fu_888_p1 = add_ln649_9_reg_1260;
assign zext_ln649_23_fu_768_p1 = add_ln649_fu_762_p2;
assign zext_ln649_24_fu_916_p1 = add_ln649_10_reg_1265;
assign zext_ln649_25_fu_869_p1 = add_ln649_11_fu_865_p2;
assign zext_ln649_26_fu_777_p1 = add_ln649_12_fu_772_p2;
assign zext_ln649_3_fu_439_p1 = tmp_43_fu_431_p3;
assign zext_ln649_5_fu_469_p1 = empty_96_fu_463_p2;
assign zext_ln649_fu_427_p1 = tmp_42_fu_419_p3;
always @ (posedge ap_clk) begin
    add_ln649_13_reg_1066[0] <= 1'b0;
    empty_96_reg_1082[0] <= 1'b0;
    add_ln649_1_reg_1087[0] <= 1'b0;
    trunc_ln649_reg_1092[0] <= 1'b0;
    mul_ln649_1_reg_1118[1:0] <= 2'b00;
    mul_ln649_2_reg_1124[1:0] <= 2'b00;
    add_ln645_1_reg_1131[1:0] <= 2'b10;
    empty_99_reg_1148[0] <= 1'b0;
    zext_ln649_15_reg_1153[0] <= 1'b0;
    zext_ln649_15_reg_1153[15:4] <= 12'b000000000000;
    zext_ln649_23_reg_1189[0] <= 1'b0;
    zext_ln649_23_reg_1189[15:5] <= 11'b00000000000;
    add_ln649_6_reg_1245[0] <= 1'b0;
    add_ln649_7_reg_1250[0] <= 1'b1;
    add_ln649_8_reg_1255[0] <= 1'b1;
    add_ln649_9_reg_1260[0] <= 1'b1;
    add_ln649_10_reg_1265[0] <= 1'b0;
end
endmodule 