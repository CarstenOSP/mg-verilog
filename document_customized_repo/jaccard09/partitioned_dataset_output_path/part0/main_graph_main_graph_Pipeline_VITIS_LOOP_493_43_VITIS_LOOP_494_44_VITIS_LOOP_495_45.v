
module main_graph_main_graph_Pipeline_VITIS_LOOP_493_43_VITIS_LOOP_494_44_VITIS_LOOP_495_45 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v4_Addr_A,v4_EN_A,v4_WEN_A,v4_Din_A,v4_Dout_A,v4_Addr_B,v4_EN_B,v4_WEN_B,v4_Din_B,v4_Dout_B,v91_address1,v91_ce1,v91_we1,v91_d1,v92_address0,v92_ce0,v92_q0);  
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
output  [31:0] v4_Addr_A;
output   v4_EN_A;
output  [0:0] v4_WEN_A;
output  [7:0] v4_Din_A;
input  [7:0] v4_Dout_A;
output  [31:0] v4_Addr_B;
output   v4_EN_B;
output  [0:0] v4_WEN_B;
output  [7:0] v4_Din_B;
input  [7:0] v4_Dout_B;
output  [13:0] v91_address1;
output   v91_ce1;
output   v91_we1;
output  [7:0] v91_d1;
output  [16:0] v92_address0;
output   v92_ce0;
input  [6:0] v92_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln493_reg_1045;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [6:0] reg_295;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln493_fu_327_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] v184_load_reg_1049;
wire   [0:0] icmp_ln494_fu_357_p2;
reg   [0:0] icmp_ln494_reg_1054;
wire   [0:0] and_ln493_fu_383_p2;
reg   [0:0] and_ln493_reg_1059;
wire   [6:0] select_ln493_1_fu_389_p3;
reg   [6:0] select_ln493_1_reg_1064;
wire   [12:0] add_ln499_13_fu_447_p2;
reg   [12:0] add_ln499_13_reg_1070;
wire   [9:0] add_ln496_fu_457_p2;
reg   [9:0] add_ln496_reg_1076;
wire   [3:0] empty_115_fu_463_p1;
reg   [3:0] empty_115_reg_1081;
wire   [4:0] empty_116_fu_467_p2;
reg   [4:0] empty_116_reg_1086;
wire   [12:0] add_ln499_1_fu_477_p2;
reg   [12:0] add_ln499_1_reg_1091;
wire   [11:0] trunc_ln499_fu_483_p1;
reg   [11:0] trunc_ln499_reg_1096;
wire   [9:0] empty_106_fu_557_p1;
reg   [9:0] empty_106_reg_1101;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [16:0] mul_ln499_1_fu_597_p2;
reg   [16:0] mul_ln499_1_reg_1122;
wire   [16:0] mul_ln499_2_fu_645_p2;
reg   [16:0] mul_ln499_2_reg_1128;
wire   [16:0] add_ln495_1_fu_691_p2;
reg   [16:0] add_ln495_1_reg_1135;
wire   [13:0] add_ln496_1_fu_701_p2;
reg   [13:0] add_ln496_1_reg_1142;
reg   [13:0] add_ln496_1_reg_1142_pp0_iter1_reg;
wire   [3:0] empty_118_fu_707_p1;
reg   [3:0] empty_118_reg_1147;
wire   [4:0] empty_119_fu_711_p2;
reg   [4:0] empty_119_reg_1152;
wire   [16:0] zext_ln499_15_fu_717_p1;
reg   [16:0] zext_ln499_15_reg_1157;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg  signed [7:0] v188_reg_1178;
reg  signed [7:0] v188_8_reg_1183;
reg   [6:0] v187_reg_1188;
wire   [16:0] zext_ln499_23_fu_772_p1;
reg   [16:0] zext_ln499_23_reg_1193;
reg  signed [7:0] v188_3_reg_1214;
reg  signed [7:0] v188_5_reg_1219;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg  signed [7:0] v188_6_reg_1239;
reg  signed [7:0] v188_7_reg_1244;
wire   [16:0] add_ln499_6_fu_835_p2;
reg   [16:0] add_ln499_6_reg_1249;
wire   [16:0] add_ln499_7_fu_850_p2;
reg   [16:0] add_ln499_7_reg_1254;
wire   [16:0] add_ln499_8_fu_855_p2;
reg   [16:0] add_ln499_8_reg_1259;
wire   [16:0] add_ln499_9_fu_860_p2;
reg   [16:0] add_ln499_9_reg_1264;
wire   [16:0] add_ln499_10_fu_865_p2;
reg   [16:0] add_ln499_10_reg_1269;
reg   [6:0] v187_3_reg_1279;
wire    ap_block_pp0_stage6_11001;
reg  signed [7:0] v188_1_reg_1289;
reg  signed [7:0] v188_2_reg_1294;
reg   [6:0] v187_5_reg_1304;
reg  signed [7:0] v188_4_reg_1309;
wire    ap_block_pp0_stage8_11001;
wire   [7:0] mul_ln506_fu_911_p2;
reg   [7:0] mul_ln506_reg_1334;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] mul_ln506_3_fu_927_p2;
reg   [7:0] mul_ln506_3_reg_1349;
wire   [7:0] mul_ln506_2_fu_943_p2;
reg   [7:0] mul_ln506_2_reg_1364;
wire   [7:0] grp_fu_979_p3;
reg   [7:0] add_ln506_4_reg_1369;
wire   [7:0] mul_ln506_6_fu_956_p2;
reg   [7:0] mul_ln506_6_reg_1379;
wire   [7:0] grp_fu_985_p3;
reg  signed [7:0] add_ln506_reg_1384;
wire   [7:0] grp_fu_991_p3;
reg  signed [7:0] add_ln506_1_reg_1389;
wire   [7:0] grp_fu_997_p3;
reg  signed [7:0] add_ln506_3_reg_1394;
wire   [7:0] v195_fu_969_p2;
reg   [7:0] v195_reg_1399;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast9_fu_552_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast17_fu_567_p1;
wire   [63:0] zext_ln499_16_fu_727_p1;
wire   [63:0] p_cast12_fu_748_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast14_fu_758_p1;
wire   [63:0] zext_ln499_26_fu_781_p1;
wire   [63:0] p_cast15_fu_791_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast16_fu_801_p1;
wire   [63:0] zext_ln499_17_fu_810_p1;
wire   [63:0] p_cast10_fu_820_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast11_fu_830_p1;
wire   [63:0] zext_ln499_25_fu_873_p1;
wire   [63:0] p_cast13_fu_883_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln499_18_fu_888_p1;
wire   [63:0] zext_ln499_22_fu_892_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln499_20_fu_903_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln499_24_fu_920_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln499_21_fu_932_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln496_2_fu_975_p1;
reg   [4:0] v184_fu_100;
wire   [4:0] add_ln495_fu_732_p2;
wire    ap_loop_init;
reg   [4:0] v183_fu_104;
wire   [4:0] select_ln494_fu_407_p3;
reg   [9:0] indvar_flatten205_fu_108;
wire   [9:0] select_ln494_1_fu_493_p3;
reg   [6:0] v182_fu_112;
reg   [14:0] indvar_flatten218_fu_116;
wire   [14:0] add_ln493_1_fu_333_p2;
reg    v4_EN_B_local;
reg   [31:0] v4_Addr_B_orig;
reg    v4_EN_A_local;
reg   [31:0] v4_Addr_A_orig;
reg    v92_ce0_local;
reg   [16:0] v92_address0_local;
reg    v91_we1_local;
reg    v91_ce1_local;
wire   [0:0] icmp_ln495_fu_377_p2;
wire   [0:0] xor_ln493_fu_371_p2;
wire   [6:0] add_ln493_fu_351_p2;
wire   [4:0] select_ln493_fu_363_p3;
wire   [4:0] add_ln494_fu_401_p2;
wire   [5:0] trunc_ln494_fu_397_p1;
wire   [11:0] tmp_64_fu_423_p3;
wire   [7:0] tmp_66_fu_435_p3;
wire   [12:0] zext_ln499_fu_431_p1;
wire   [12:0] zext_ln499_3_fu_443_p1;
wire   [9:0] tmp_65_fu_415_p3;
wire   [9:0] zext_ln496_fu_453_p1;
wire   [12:0] zext_ln499_5_fu_473_p1;
wire   [9:0] add_ln494_1_fu_487_p2;
wire   [0:0] empty_fu_521_p2;
wire   [9:0] tmp_fu_535_p3;
wire   [10:0] p_shl69_fu_542_p1;
wire   [10:0] select_ln493_1_cast_fu_532_p1;
wire   [10:0] empty_105_fu_546_p2;
wire   [9:0] empty_114_fu_561_p2;
wire   [13:0] tmp_68_fu_586_p3;
wire   [16:0] p_shl5_fu_579_p3;
wire   [16:0] p_shl66_fu_593_p1;
wire   [5:0] p_cast_fu_603_p1;
wire   [5:0] empty_117_fu_606_p2;
wire   [12:0] zext_ln499_13_fu_612_p1;
wire   [12:0] add_ln499_2_fu_616_p2;
wire   [11:0] trunc_ln499_1_fu_621_p1;
wire   [13:0] tmp_69_fu_633_p3;
wire   [16:0] p_shl6_fu_625_p3;
wire   [16:0] p_shl64_fu_641_p1;
wire   [4:0] tmp_70_fu_651_p3;
wire   [12:0] zext_ln499_14_fu_658_p1;
wire   [12:0] add_ln499_3_fu_662_p2;
wire   [11:0] trunc_ln499_2_fu_667_p1;
wire   [13:0] tmp_71_fu_679_p3;
wire   [16:0] p_shl_fu_671_p3;
wire   [16:0] zext_ln495_fu_687_p1;
wire   [4:0] v184_mid2_fu_525_p3;
wire   [13:0] tmp_67_fu_572_p3;
wire   [13:0] zext_ln496_1_fu_697_p1;
wire   [16:0] add_ln499_4_fu_721_p2;
wire   [9:0] empty_109_fu_743_p2;
wire   [9:0] empty_111_fu_753_p2;
wire   [5:0] zext_ln499_1_fu_763_p1;
wire   [5:0] add_ln499_fu_766_p2;
wire   [16:0] add_ln499_12_fu_776_p2;
wire   [9:0] empty_112_fu_786_p2;
wire   [9:0] empty_113_fu_796_p2;
wire   [16:0] add_ln499_5_fu_806_p2;
wire   [9:0] empty_107_fu_815_p2;
wire   [9:0] empty_108_fu_825_p2;
wire   [4:0] or_ln_fu_839_p3;
wire   [16:0] zext_ln499_19_fu_846_p1;
wire   [16:0] add_ln499_11_fu_869_p2;
wire   [9:0] empty_110_fu_878_p2;
wire   [6:0] mul_ln506_fu_911_p0;
wire   [6:0] mul_ln506_3_fu_927_p0;
wire   [6:0] mul_ln506_2_fu_943_p0;
wire   [6:0] mul_ln506_6_fu_956_p0;
wire  signed [7:0] add_ln506_6_fu_965_p0;
wire   [7:0] grp_fu_1003_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln506_6_fu_965_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln506_2_fu_961_p2;
wire   [6:0] grp_fu_979_p1;
wire   [6:0] grp_fu_985_p1;
wire   [6:0] grp_fu_991_p1;
wire   [6:0] grp_fu_997_p1;
wire   [6:0] grp_fu_1003_p1;
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
wire   [7:0] grp_fu_1003_p10;
wire   [7:0] grp_fu_979_p10;
wire   [7:0] grp_fu_985_p10;
wire   [7:0] grp_fu_991_p10;
wire   [7:0] grp_fu_997_p10;
wire   [7:0] mul_ln506_2_fu_943_p00;
wire   [7:0] mul_ln506_3_fu_927_p00;
wire   [7:0] mul_ln506_6_fu_956_p00;
wire   [7:0] mul_ln506_fu_911_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v184_fu_100 = 5'd0;
#0 v183_fu_104 = 5'd0;
#0 indvar_flatten205_fu_108 = 10'd0;
#0 v182_fu_112 = 7'd0;
#0 indvar_flatten218_fu_116 = 15'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U145(.din0(mul_ln506_fu_911_p0),.din1(v188_7_reg_1244),.dout(mul_ln506_fu_911_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U146(.din0(mul_ln506_3_fu_927_p0),.din1(v188_1_reg_1289),.dout(mul_ln506_3_fu_927_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U147(.din0(mul_ln506_2_fu_943_p0),.din1(v188_2_reg_1294),.dout(mul_ln506_2_fu_943_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U148(.din0(mul_ln506_6_fu_956_p0),.din1(v188_4_reg_1309),.dout(mul_ln506_6_fu_956_p2));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(v188_8_reg_1183),.din1(grp_fu_979_p1),.din2(mul_ln506_reg_1334),.ce(1'b1),.dout(grp_fu_979_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(v188_reg_1178),.din1(grp_fu_985_p1),.din2(mul_ln506_3_reg_1349),.ce(1'b1),.dout(grp_fu_985_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(v188_3_reg_1214),.din1(grp_fu_991_p1),.din2(mul_ln506_2_reg_1364),.ce(1'b1),.dout(grp_fu_991_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(v188_5_reg_1219),.din1(grp_fu_997_p1),.din2(mul_ln506_6_reg_1379),.ce(1'b1),.dout(grp_fu_997_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U153(.clk(ap_clk),.reset(ap_rst),.din0(v188_6_reg_1239),.din1(grp_fu_1003_p1),.din2(add_ln506_4_reg_1369),.ce(1'b1),.dout(grp_fu_1003_p3));
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
        indvar_flatten205_fu_108 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln493_fu_327_p2 == 1'd0))) begin
        indvar_flatten205_fu_108 <= select_ln494_1_fu_493_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten218_fu_116 <= 15'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln493_fu_327_p2 == 1'd0))) begin
        indvar_flatten218_fu_116 <= add_ln493_1_fu_333_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v182_fu_112 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln493_fu_327_p2 == 1'd0))) begin
        v182_fu_112 <= select_ln493_1_fu_389_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v183_fu_104 <= 5'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln493_fu_327_p2 == 1'd0))) begin
        v183_fu_104 <= select_ln494_fu_407_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v184_fu_100 <= 5'd0;
    end else if (((icmp_ln493_reg_1045 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v184_fu_100 <= add_ln495_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln495_1_reg_1135[16 : 2] <= add_ln495_1_fu_691_p2[16 : 2];
        add_ln496_1_reg_1142 <= add_ln496_1_fu_701_p2;
        add_ln496_1_reg_1142_pp0_iter1_reg <= add_ln496_1_reg_1142;
        empty_106_reg_1101 <= empty_106_fu_557_p1;
        empty_118_reg_1147 <= empty_118_fu_707_p1;
        empty_119_reg_1152[4 : 1] <= empty_119_fu_711_p2[4 : 1];
        mul_ln499_1_reg_1122[16 : 2] <= mul_ln499_1_fu_597_p2[16 : 2];
        mul_ln499_2_reg_1128[16 : 2] <= mul_ln499_2_fu_645_p2[16 : 2];
        mul_ln506_6_reg_1379 <= mul_ln506_6_fu_956_p2;
        zext_ln499_15_reg_1157[4 : 1] <= zext_ln499_15_fu_717_p1[4 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln496_reg_1076 <= add_ln496_fu_457_p2;
        add_ln499_13_reg_1070[12 : 1] <= add_ln499_13_fu_447_p2[12 : 1];
        add_ln499_1_reg_1091[12 : 1] <= add_ln499_1_fu_477_p2[12 : 1];
        and_ln493_reg_1059 <= and_ln493_fu_383_p2;
        empty_115_reg_1081 <= empty_115_fu_463_p1;
        empty_116_reg_1086[4 : 1] <= empty_116_fu_467_p2[4 : 1];
        icmp_ln493_reg_1045 <= icmp_ln493_fu_327_p2;
        icmp_ln494_reg_1054 <= icmp_ln494_fu_357_p2;
        mul_ln506_2_reg_1364 <= mul_ln506_2_fu_943_p2;
        select_ln493_1_reg_1064 <= select_ln493_1_fu_389_p3;
        trunc_ln499_reg_1096[11 : 1] <= trunc_ln499_fu_483_p1[11 : 1];
        v184_load_reg_1049 <= v184_fu_100;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln499_10_reg_1269[16 : 1] <= add_ln499_10_fu_865_p2[16 : 1];
        add_ln499_6_reg_1249[16 : 1] <= add_ln499_6_fu_835_p2[16 : 1];
        add_ln499_7_reg_1254[16 : 1] <= add_ln499_7_fu_850_p2[16 : 1];
        add_ln499_8_reg_1259[16 : 1] <= add_ln499_8_fu_855_p2[16 : 1];
        add_ln499_9_reg_1264[16 : 1] <= add_ln499_9_fu_860_p2[16 : 1];
        v195_reg_1399 <= v195_fu_969_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln506_1_reg_1389 <= grp_fu_991_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln506_3_reg_1394 <= grp_fu_997_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln506_4_reg_1369 <= grp_fu_979_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln506_reg_1384 <= grp_fu_985_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln506_3_reg_1349 <= mul_ln506_3_fu_927_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln506_reg_1334 <= mul_ln506_fu_911_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_295 <= v92_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v187_3_reg_1279 <= v92_q0;
        v188_6_reg_1239 <= v4_Dout_B;
        v188_7_reg_1244 <= v4_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v187_5_reg_1304 <= v92_q0;
        v188_1_reg_1289 <= v4_Dout_B;
        v188_2_reg_1294 <= v4_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v187_reg_1188 <= v92_q0;
        v188_8_reg_1183 <= v4_Dout_A;
        v188_reg_1178 <= v4_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v188_3_reg_1214 <= v4_Dout_B;
        v188_5_reg_1219 <= v4_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v188_4_reg_1309 <= v4_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln499_23_reg_1193[5 : 1] <= zext_ln499_23_fu_772_p1[5 : 1];
    end
end
always @ (*) begin
    if (((icmp_ln493_reg_1045 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v4_Addr_A_orig = p_cast13_fu_883_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v4_Addr_A_orig = p_cast11_fu_830_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v4_Addr_A_orig = p_cast16_fu_801_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v4_Addr_A_orig = p_cast14_fu_758_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v4_Addr_A_orig = p_cast17_fu_567_p1;
        end else begin
            v4_Addr_A_orig = 'bx;
        end
    end else begin
        v4_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v4_Addr_B_orig = p_cast10_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v4_Addr_B_orig = p_cast15_fu_791_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v4_Addr_B_orig = p_cast12_fu_748_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v4_Addr_B_orig = p_cast9_fu_552_p1;
        end else begin
            v4_Addr_B_orig = 'bx;
        end
    end else begin
        v4_Addr_B_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v4_EN_A_local = 1'b1;
    end else begin
        v4_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v4_EN_B_local = 1'b1;
    end else begin
        v4_EN_B_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v91_ce1_local = 1'b1;
    end else begin
        v91_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v91_we1_local = 1'b1;
    end else begin
        v91_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v92_address0_local = zext_ln499_21_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v92_address0_local = zext_ln499_24_fu_920_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v92_address0_local = zext_ln499_20_fu_903_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v92_address0_local = zext_ln499_22_fu_892_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v92_address0_local = zext_ln499_18_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v92_address0_local = zext_ln499_25_fu_873_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v92_address0_local = zext_ln499_17_fu_810_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v92_address0_local = zext_ln499_26_fu_781_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v92_address0_local = zext_ln499_16_fu_727_p1;
    end else begin
        v92_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v92_ce0_local = 1'b1;
    end else begin
        v92_ce0_local = 1'b0;
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
assign add_ln493_1_fu_333_p2 = (indvar_flatten218_fu_116 + 15'd1);
assign add_ln493_fu_351_p2 = (v182_fu_112 + 7'd1);
assign add_ln494_1_fu_487_p2 = (indvar_flatten205_fu_108 + 10'd1);
assign add_ln494_fu_401_p2 = (select_ln493_fu_363_p3 + 5'd1);
assign add_ln495_1_fu_691_p2 = (p_shl_fu_671_p3 + zext_ln495_fu_687_p1);
assign add_ln495_fu_732_p2 = (v184_mid2_fu_525_p3 + 5'd1);
assign add_ln496_1_fu_701_p2 = (tmp_67_fu_572_p3 + zext_ln496_1_fu_697_p1);
assign add_ln496_fu_457_p2 = (tmp_65_fu_415_p3 + zext_ln496_fu_453_p1);
assign add_ln499_10_fu_865_p2 = (mul_ln499_1_reg_1122 + zext_ln499_23_reg_1193);
assign add_ln499_11_fu_869_p2 = (add_ln495_1_reg_1135 + zext_ln499_23_reg_1193);
assign add_ln499_12_fu_776_p2 = (mul_ln499_2_reg_1128 + zext_ln499_23_fu_772_p1);
assign add_ln499_13_fu_447_p2 = (zext_ln499_fu_431_p1 + zext_ln499_3_fu_443_p1);
assign add_ln499_1_fu_477_p2 = (add_ln499_13_fu_447_p2 + zext_ln499_5_fu_473_p1);
assign add_ln499_2_fu_616_p2 = (add_ln499_13_reg_1070 + zext_ln499_13_fu_612_p1);
assign add_ln499_3_fu_662_p2 = (add_ln499_13_reg_1070 + zext_ln499_14_fu_658_p1);
assign add_ln499_4_fu_721_p2 = (mul_ln499_1_fu_597_p2 + zext_ln499_15_fu_717_p1);
assign add_ln499_5_fu_806_p2 = (add_ln495_1_reg_1135 + zext_ln499_15_reg_1157);
assign add_ln499_6_fu_835_p2 = (mul_ln499_2_reg_1128 + zext_ln499_15_reg_1157);
assign add_ln499_7_fu_850_p2 = (mul_ln499_1_reg_1122 + zext_ln499_19_fu_846_p1);
assign add_ln499_8_fu_855_p2 = (add_ln495_1_reg_1135 + zext_ln499_19_fu_846_p1);
assign add_ln499_9_fu_860_p2 = (mul_ln499_2_reg_1128 + zext_ln499_19_fu_846_p1);
assign add_ln499_fu_766_p2 = (zext_ln499_1_fu_763_p1 + 6'd2);
assign add_ln506_2_fu_961_p2 = ($signed(add_ln506_1_reg_1389) + $signed(add_ln506_reg_1384));
assign add_ln506_6_fu_965_p0 = grp_fu_1003_p3;
assign add_ln506_6_fu_965_p2 = ($signed(add_ln506_6_fu_965_p0) + $signed(add_ln506_3_reg_1394));
assign and_ln493_fu_383_p2 = (xor_ln493_fu_371_p2 & icmp_ln495_fu_377_p2);
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
assign empty_105_fu_546_p2 = (p_shl69_fu_542_p1 + select_ln493_1_cast_fu_532_p1);
assign empty_106_fu_557_p1 = empty_105_fu_546_p2[9:0];
assign empty_107_fu_815_p2 = (empty_106_reg_1101 + 10'd1);
assign empty_108_fu_825_p2 = (empty_106_reg_1101 + 10'd2);
assign empty_109_fu_743_p2 = (empty_106_reg_1101 + 10'd3);
assign empty_110_fu_878_p2 = (empty_106_reg_1101 + 10'd4);
assign empty_111_fu_753_p2 = (empty_106_reg_1101 + 10'd5);
assign empty_112_fu_786_p2 = (empty_106_reg_1101 + 10'd6);
assign empty_113_fu_796_p2 = (empty_106_reg_1101 + 10'd7);
assign empty_114_fu_561_p2 = (empty_106_fu_557_p1 + 10'd8);
assign empty_115_fu_463_p1 = select_ln494_fu_407_p3[3:0];
assign empty_116_fu_467_p2 = select_ln494_fu_407_p3 << 5'd1;
assign empty_117_fu_606_p2 = (p_cast_fu_603_p1 + 6'd2);
assign empty_118_fu_707_p1 = v184_mid2_fu_525_p3[3:0];
assign empty_119_fu_711_p2 = v184_mid2_fu_525_p3 << 5'd1;
assign empty_fu_521_p2 = (icmp_ln494_reg_1054 | and_ln493_reg_1059);
assign grp_fu_1003_p1 = grp_fu_1003_p10;
assign grp_fu_1003_p10 = reg_295;
assign grp_fu_979_p1 = grp_fu_979_p10;
assign grp_fu_979_p10 = reg_295;
assign grp_fu_985_p1 = grp_fu_985_p10;
assign grp_fu_985_p10 = v187_reg_1188;
assign grp_fu_991_p1 = grp_fu_991_p10;
assign grp_fu_991_p10 = v187_3_reg_1279;
assign grp_fu_997_p1 = grp_fu_997_p10;
assign grp_fu_997_p10 = v187_5_reg_1304;
assign icmp_ln493_fu_327_p2 = ((indvar_flatten218_fu_116 == 15'd16384) ? 1'b1 : 1'b0);
assign icmp_ln494_fu_357_p2 = ((indvar_flatten205_fu_108 == 10'd256) ? 1'b1 : 1'b0);
assign icmp_ln495_fu_377_p2 = ((v184_fu_100 == 5'd16) ? 1'b1 : 1'b0);
assign mul_ln499_1_fu_597_p2 = (p_shl5_fu_579_p3 + p_shl66_fu_593_p1);
assign mul_ln499_2_fu_645_p2 = (p_shl6_fu_625_p3 + p_shl64_fu_641_p1);
assign mul_ln506_2_fu_943_p0 = mul_ln506_2_fu_943_p00;
assign mul_ln506_2_fu_943_p00 = v92_q0;
assign mul_ln506_3_fu_927_p0 = mul_ln506_3_fu_927_p00;
assign mul_ln506_3_fu_927_p00 = v92_q0;
assign mul_ln506_6_fu_956_p0 = mul_ln506_6_fu_956_p00;
assign mul_ln506_6_fu_956_p00 = v92_q0;
assign mul_ln506_fu_911_p0 = mul_ln506_fu_911_p00;
assign mul_ln506_fu_911_p00 = v92_q0;
assign or_ln_fu_839_p3 = {{empty_118_reg_1147}, {1'd1}};
assign p_cast10_fu_820_p1 = empty_107_fu_815_p2;
assign p_cast11_fu_830_p1 = empty_108_fu_825_p2;
assign p_cast12_fu_748_p1 = empty_109_fu_743_p2;
assign p_cast13_fu_883_p1 = empty_110_fu_878_p2;
assign p_cast14_fu_758_p1 = empty_111_fu_753_p2;
assign p_cast15_fu_791_p1 = empty_112_fu_786_p2;
assign p_cast16_fu_801_p1 = empty_113_fu_796_p2;
assign p_cast17_fu_567_p1 = empty_114_fu_561_p2;
assign p_cast9_fu_552_p1 = empty_105_fu_546_p2;
assign p_cast_fu_603_p1 = empty_116_reg_1086;
assign p_shl5_fu_579_p3 = {{trunc_ln499_reg_1096}, {5'd0}};
assign p_shl64_fu_641_p1 = tmp_69_fu_633_p3;
assign p_shl66_fu_593_p1 = tmp_68_fu_586_p3;
assign p_shl69_fu_542_p1 = tmp_fu_535_p3;
assign p_shl6_fu_625_p3 = {{trunc_ln499_1_fu_621_p1}, {5'd0}};
assign p_shl_fu_671_p3 = {{trunc_ln499_2_fu_667_p1}, {5'd0}};
assign select_ln493_1_cast_fu_532_p1 = select_ln493_1_reg_1064;
assign select_ln493_1_fu_389_p3 = ((icmp_ln494_fu_357_p2[0:0] == 1'b1) ? add_ln493_fu_351_p2 : v182_fu_112);
assign select_ln493_fu_363_p3 = ((icmp_ln494_fu_357_p2[0:0] == 1'b1) ? 5'd0 : v183_fu_104);
assign select_ln494_1_fu_493_p3 = ((icmp_ln494_fu_357_p2[0:0] == 1'b1) ? 10'd1 : add_ln494_1_fu_487_p2);
assign select_ln494_fu_407_p3 = ((and_ln493_fu_383_p2[0:0] == 1'b1) ? add_ln494_fu_401_p2 : select_ln493_fu_363_p3);
assign tmp_64_fu_423_p3 = {{select_ln493_1_fu_389_p3}, {5'd0}};
assign tmp_65_fu_415_p3 = {{trunc_ln494_fu_397_p1}, {4'd0}};
assign tmp_66_fu_435_p3 = {{select_ln493_1_fu_389_p3}, {1'd0}};
assign tmp_67_fu_572_p3 = {{add_ln496_reg_1076}, {4'd0}};
assign tmp_68_fu_586_p3 = {{add_ln499_1_reg_1091}, {1'd0}};
assign tmp_69_fu_633_p3 = {{add_ln499_2_fu_616_p2}, {1'd0}};
assign tmp_70_fu_651_p3 = {{empty_115_reg_1081}, {1'd1}};
assign tmp_71_fu_679_p3 = {{add_ln499_3_fu_662_p2}, {1'd0}};
assign tmp_fu_535_p3 = {{select_ln493_1_reg_1064}, {3'd0}};
assign trunc_ln494_fu_397_p1 = select_ln493_1_fu_389_p3[5:0];
assign trunc_ln499_1_fu_621_p1 = add_ln499_2_fu_616_p2[11:0];
assign trunc_ln499_2_fu_667_p1 = add_ln499_3_fu_662_p2[11:0];
assign trunc_ln499_fu_483_p1 = add_ln499_1_fu_477_p2[11:0];
assign v184_mid2_fu_525_p3 = ((empty_fu_521_p2[0:0] == 1'b1) ? 5'd0 : v184_load_reg_1049);
assign v195_fu_969_p2 = (add_ln506_6_fu_965_p2 + add_ln506_2_fu_961_p2);
assign v4_Addr_A = v4_Addr_A_orig << 32'd0;
assign v4_Addr_B = v4_Addr_B_orig << 32'd0;
assign v4_Din_A = 8'd0;
assign v4_Din_B = 8'd0;
assign v4_EN_A = v4_EN_A_local;
assign v4_EN_B = v4_EN_B_local;
assign v4_WEN_A = 1'd0;
assign v4_WEN_B = 1'd0;
assign v91_address1 = zext_ln496_2_fu_975_p1;
assign v91_ce1 = v91_ce1_local;
assign v91_d1 = v195_reg_1399;
assign v91_we1 = v91_we1_local;
assign v92_address0 = v92_address0_local;
assign v92_ce0 = v92_ce0_local;
assign xor_ln493_fu_371_p2 = (icmp_ln494_fu_357_p2 ^ 1'd1);
assign zext_ln495_fu_687_p1 = tmp_71_fu_679_p3;
assign zext_ln496_1_fu_697_p1 = v184_mid2_fu_525_p3;
assign zext_ln496_2_fu_975_p1 = add_ln496_1_reg_1142_pp0_iter1_reg;
assign zext_ln496_fu_453_p1 = select_ln494_fu_407_p3;
assign zext_ln499_13_fu_612_p1 = empty_117_fu_606_p2;
assign zext_ln499_14_fu_658_p1 = tmp_70_fu_651_p3;
assign zext_ln499_15_fu_717_p1 = empty_119_fu_711_p2;
assign zext_ln499_16_fu_727_p1 = add_ln499_4_fu_721_p2;
assign zext_ln499_17_fu_810_p1 = add_ln499_5_fu_806_p2;
assign zext_ln499_18_fu_888_p1 = add_ln499_6_reg_1249;
assign zext_ln499_19_fu_846_p1 = or_ln_fu_839_p3;
assign zext_ln499_1_fu_763_p1 = empty_119_reg_1152;
assign zext_ln499_20_fu_903_p1 = add_ln499_7_reg_1254;
assign zext_ln499_21_fu_932_p1 = add_ln499_8_reg_1259;
assign zext_ln499_22_fu_892_p1 = add_ln499_9_reg_1264;
assign zext_ln499_23_fu_772_p1 = add_ln499_fu_766_p2;
assign zext_ln499_24_fu_920_p1 = add_ln499_10_reg_1269;
assign zext_ln499_25_fu_873_p1 = add_ln499_11_fu_869_p2;
assign zext_ln499_26_fu_781_p1 = add_ln499_12_fu_776_p2;
assign zext_ln499_3_fu_443_p1 = tmp_66_fu_435_p3;
assign zext_ln499_5_fu_473_p1 = empty_116_fu_467_p2;
assign zext_ln499_fu_431_p1 = tmp_64_fu_423_p3;
always @ (posedge ap_clk) begin
    add_ln499_13_reg_1070[0] <= 1'b0;
    empty_116_reg_1086[0] <= 1'b0;
    add_ln499_1_reg_1091[0] <= 1'b0;
    trunc_ln499_reg_1096[0] <= 1'b0;
    mul_ln499_1_reg_1122[1:0] <= 2'b00;
    mul_ln499_2_reg_1128[1:0] <= 2'b00;
    add_ln495_1_reg_1135[1:0] <= 2'b10;
    empty_119_reg_1152[0] <= 1'b0;
    zext_ln499_15_reg_1157[0] <= 1'b0;
    zext_ln499_15_reg_1157[16:5] <= 12'b000000000000;
    zext_ln499_23_reg_1193[0] <= 1'b0;
    zext_ln499_23_reg_1193[16:6] <= 11'b00000000000;
    add_ln499_6_reg_1249[0] <= 1'b0;
    add_ln499_7_reg_1254[0] <= 1'b1;
    add_ln499_8_reg_1259[0] <= 1'b1;
    add_ln499_9_reg_1264[0] <= 1'b1;
    add_ln499_10_reg_1269[0] <= 1'b0;
end
endmodule 
