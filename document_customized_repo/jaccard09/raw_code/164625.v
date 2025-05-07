module main_graph_main_graph_Pipeline_VITIS_LOOP_793_127_VITIS_LOOP_794_128_VITIS_LOOP_795_129 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v12_Addr_A,v12_EN_A,v12_WEN_A,v12_Din_A,v12_Dout_A,v12_Addr_B,v12_EN_B,v12_WEN_B,v12_Din_B,v12_Dout_B,v71_address1,v71_ce1,v71_we1,v71_d1,v72_address0,v72_ce0,v72_q0); 
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
output  [31:0] v12_Addr_A;
output   v12_EN_A;
output  [0:0] v12_WEN_A;
output  [7:0] v12_Din_A;
input  [7:0] v12_Dout_A;
output  [31:0] v12_Addr_B;
output   v12_EN_B;
output  [0:0] v12_WEN_B;
output  [7:0] v12_Din_B;
input  [7:0] v12_Dout_B;
output  [11:0] v71_address1;
output   v71_ce1;
output   v71_we1;
output  [7:0] v71_d1;
output  [14:0] v72_address0;
output   v72_ce0;
input  [6:0] v72_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln793_reg_1032;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [6:0] reg_293;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] icmp_ln793_fu_325_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [8:0] select_ln793_1_fu_387_p3;
reg   [8:0] select_ln793_1_reg_1036;
wire   [2:0] v368_mid2_fu_411_p3;
reg   [2:0] v368_mid2_reg_1041;
wire   [12:0] p_shl66_fu_435_p1;
reg   [12:0] p_shl66_reg_1047;
wire   [12:0] add_ln799_13_fu_459_p2;
reg   [12:0] add_ln799_13_reg_1052;
wire   [9:0] add_ln796_fu_469_p2;
reg   [9:0] add_ln796_reg_1058;
wire   [1:0] empty_72_fu_475_p1;
reg   [1:0] empty_72_reg_1063;
wire   [2:0] empty_73_fu_479_p2;
reg   [2:0] empty_73_reg_1068;
wire   [12:0] add_ln799_2_fu_499_p2;
reg   [12:0] add_ln799_2_reg_1073;
wire   [11:0] trunc_ln799_1_fu_505_p1;
reg   [11:0] trunc_ln799_1_reg_1078;
wire   [1:0] empty_75_fu_509_p1;
reg   [1:0] empty_75_reg_1083;
wire   [11:0] empty_63_fu_571_p1;
reg   [11:0] empty_63_reg_1088;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [14:0] mul_ln799_1_fu_625_p2;
reg   [14:0] mul_ln799_1_reg_1109;
wire   [14:0] mul_ln799_2_fu_649_p2;
reg   [14:0] mul_ln799_2_reg_1116;
wire   [11:0] add_ln796_1_fu_658_p2;
reg   [11:0] add_ln796_1_reg_1122;
reg   [11:0] add_ln796_1_reg_1122_pp0_iter1_reg;
wire   [2:0] empty_76_fu_664_p2;
reg   [2:0] empty_76_reg_1127;
wire   [14:0] zext_ln799_22_fu_679_p1;
reg   [14:0] zext_ln799_22_reg_1132;
reg  signed [7:0] v372_reg_1153;
reg  signed [7:0] v372_8_reg_1158;
wire   [14:0] add_ln795_1_fu_754_p2;
reg   [14:0] add_ln795_1_reg_1163;
wire   [14:0] zext_ln799_14_fu_760_p1;
reg   [14:0] zext_ln799_14_reg_1170;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg  signed [7:0] v372_3_reg_1191;
reg  signed [7:0] v372_5_reg_1196;
wire   [14:0] add_ln799_6_fu_802_p2;
reg   [14:0] add_ln799_6_reg_1206;
reg   [6:0] v371_reg_1211;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg  signed [7:0] v372_6_reg_1226;
reg  signed [7:0] v372_7_reg_1231;
wire   [14:0] add_ln799_7_fu_837_p2;
reg   [14:0] add_ln799_7_reg_1236;
wire   [14:0] add_ln799_8_fu_842_p2;
reg   [14:0] add_ln799_8_reg_1241;
wire   [14:0] add_ln799_9_fu_847_p2;
reg   [14:0] add_ln799_9_reg_1246;
wire   [14:0] add_ln799_10_fu_852_p2;
reg   [14:0] add_ln799_10_reg_1251;
reg   [6:0] v371_3_reg_1261;
wire    ap_block_pp0_stage6_11001;
reg  signed [7:0] v372_1_reg_1271;
reg  signed [7:0] v372_2_reg_1276;
reg   [6:0] v371_5_reg_1286;
reg  signed [7:0] v372_4_reg_1291;
wire    ap_block_pp0_stage8_11001;
wire   [7:0] mul_ln806_fu_898_p2;
reg   [7:0] mul_ln806_reg_1316;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] mul_ln806_3_fu_914_p2;
reg   [7:0] mul_ln806_3_reg_1331;
wire   [7:0] mul_ln806_2_fu_930_p2;
reg   [7:0] mul_ln806_2_reg_1346;
wire   [7:0] grp_fu_966_p3;
reg   [7:0] add_ln806_4_reg_1351;
wire   [7:0] mul_ln806_6_fu_943_p2;
reg   [7:0] mul_ln806_6_reg_1361;
wire   [7:0] grp_fu_972_p3;
reg  signed [7:0] add_ln806_reg_1366;
wire   [7:0] grp_fu_978_p3;
reg  signed [7:0] add_ln806_1_reg_1371;
wire   [7:0] grp_fu_984_p3;
reg  signed [7:0] add_ln806_3_reg_1376;
wire   [7:0] v379_fu_956_p2;
reg   [7:0] v379_reg_1381;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast7_fu_566_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast15_fu_581_p1;
wire   [63:0] zext_ln799_25_fu_689_p1;
wire   [63:0] p_cast10_fu_699_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] p_cast12_fu_709_p1;
wire   [63:0] zext_ln799_15_fu_768_p1;
wire   [63:0] p_cast13_fu_778_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] p_cast14_fu_788_p1;
wire   [63:0] zext_ln799_16_fu_797_p1;
wire   [63:0] p_cast8_fu_811_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] p_cast9_fu_821_p1;
wire   [63:0] zext_ln799_24_fu_860_p1;
wire   [63:0] p_cast11_fu_870_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln799_17_fu_875_p1;
wire   [63:0] zext_ln799_21_fu_879_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln799_19_fu_890_p1;
wire    ap_block_pp0_stage8;
wire   [63:0] zext_ln799_23_fu_907_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln799_20_fu_919_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln796_2_fu_962_p1;
reg   [2:0] v368_fu_98;
wire   [2:0] add_ln795_fu_513_p2;
wire    ap_loop_init;
reg   [2:0] v367_fu_102;
wire   [2:0] select_ln794_fu_419_p3;
reg   [5:0] indvar_flatten728_fu_106;
wire   [5:0] select_ln794_1_fu_525_p3;
reg   [8:0] v366_fu_110;
reg   [12:0] indvar_flatten741_fu_114;
wire   [12:0] add_ln793_1_fu_331_p2;
reg    v12_EN_B_local;
reg   [31:0] v12_Addr_B_orig;
reg    v12_EN_A_local;
reg   [31:0] v12_Addr_A_orig;
reg    v72_ce0_local;
reg   [14:0] v72_address0_local;
reg    v71_we1_local;
reg    v71_ce1_local;
wire   [0:0] icmp_ln794_fu_355_p2;
wire   [0:0] icmp_ln795_fu_375_p2;
wire   [0:0] xor_ln793_fu_369_p2;
wire   [8:0] add_ln793_fu_349_p2;
wire   [2:0] select_ln793_fu_361_p3;
wire   [0:0] and_ln793_fu_381_p2;
wire   [0:0] empty_fu_405_p2;
wire   [2:0] add_ln794_fu_399_p2;
wire   [11:0] tmp_fu_427_p3;
wire   [7:0] trunc_ln794_fu_395_p1;
wire   [9:0] tmp_21_fu_447_p3;
wire   [12:0] zext_ln799_fu_455_p1;
wire   [9:0] tmp_s_fu_439_p3;
wire   [9:0] zext_ln796_fu_465_p1;
wire   [3:0] p_cast216_fu_485_p1;
wire   [3:0] empty_74_fu_489_p2;
wire   [12:0] zext_ln799_5_fu_495_p1;
wire   [5:0] add_ln794_1_fu_519_p2;
wire   [12:0] select_ln793_1_cast_fu_558_p1;
wire   [12:0] empty_62_fu_561_p2;
wire   [11:0] empty_71_fu_575_p2;
wire   [12:0] zext_ln799_3_fu_593_p1;
wire   [12:0] add_ln799_1_fu_596_p2;
wire   [11:0] trunc_ln799_fu_601_p1;
wire   [13:0] tmp_23_fu_613_p3;
wire   [14:0] p_shl1_fu_605_p3;
wire   [14:0] p_shl63_fu_621_p1;
wire   [13:0] tmp_24_fu_638_p3;
wire   [14:0] p_shl2_fu_631_p3;
wire   [14:0] p_shl61_fu_645_p1;
wire   [11:0] tmp_22_fu_586_p3;
wire   [11:0] zext_ln796_1_fu_655_p1;
wire   [3:0] zext_ln799_1_fu_669_p1;
wire   [3:0] add_ln799_fu_673_p2;
wire   [14:0] add_ln799_12_fu_683_p2;
wire   [11:0] empty_66_fu_694_p2;
wire   [11:0] empty_68_fu_704_p2;
wire   [2:0] tmp_7_fu_714_p3;
wire   [12:0] zext_ln799_13_fu_721_p1;
wire   [12:0] add_ln799_3_fu_725_p2;
wire   [11:0] trunc_ln799_2_fu_730_p1;
wire   [13:0] tmp_25_fu_742_p3;
wire   [14:0] p_shl_fu_734_p3;
wire   [14:0] zext_ln795_fu_750_p1;
wire   [14:0] add_ln799_4_fu_763_p2;
wire   [11:0] empty_69_fu_773_p2;
wire   [11:0] empty_70_fu_783_p2;
wire   [14:0] add_ln799_5_fu_793_p2;
wire   [11:0] empty_64_fu_806_p2;
wire   [11:0] empty_65_fu_816_p2;
wire   [2:0] or_ln2_fu_826_p3;
wire   [14:0] zext_ln799_18_fu_833_p1;
wire   [14:0] add_ln799_11_fu_856_p2;
wire   [11:0] empty_67_fu_865_p2;
wire   [6:0] mul_ln806_fu_898_p0;
wire   [6:0] mul_ln806_3_fu_914_p0;
wire   [6:0] mul_ln806_2_fu_930_p0;
wire   [6:0] mul_ln806_6_fu_943_p0;
wire  signed [7:0] add_ln806_6_fu_952_p0;
wire   [7:0] grp_fu_990_p3;
(* use_dsp48 = "no" *) wire   [7:0] add_ln806_6_fu_952_p2;
(* use_dsp48 = "no" *) wire   [7:0] add_ln806_2_fu_948_p2;
wire   [6:0] grp_fu_966_p1;
wire   [6:0] grp_fu_972_p1;
wire   [6:0] grp_fu_978_p1;
wire   [6:0] grp_fu_984_p1;
wire   [6:0] grp_fu_990_p1;
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
wire   [7:0] grp_fu_966_p10;
wire   [7:0] grp_fu_972_p10;
wire   [7:0] grp_fu_978_p10;
wire   [7:0] grp_fu_984_p10;
wire   [7:0] grp_fu_990_p10;
wire   [7:0] mul_ln806_2_fu_930_p00;
wire   [7:0] mul_ln806_3_fu_914_p00;
wire   [7:0] mul_ln806_6_fu_943_p00;
wire   [7:0] mul_ln806_fu_898_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v368_fu_98 = 3'd0;
#0 v367_fu_102 = 3'd0;
#0 indvar_flatten728_fu_106 = 6'd0;
#0 v366_fu_110 = 9'd0;
#0 indvar_flatten741_fu_114 = 13'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U320(.din0(mul_ln806_fu_898_p0),.din1(v372_7_reg_1231),.dout(mul_ln806_fu_898_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U321(.din0(mul_ln806_3_fu_914_p0),.din1(v372_1_reg_1271),.dout(mul_ln806_3_fu_914_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U322(.din0(mul_ln806_2_fu_930_p0),.din1(v372_2_reg_1276),.dout(mul_ln806_2_fu_930_p2));
main_graph_mul_7ns_8s_8_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 8 ),.dout_WIDTH( 8 ))
mul_7ns_8s_8_1_1_U323(.din0(mul_ln806_6_fu_943_p0),.din1(v372_4_reg_1291),.dout(mul_ln806_6_fu_943_p2));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U324(.clk(ap_clk),.reset(ap_rst),.din0(v372_8_reg_1158),.din1(grp_fu_966_p1),.din2(mul_ln806_reg_1316),.ce(1'b1),.dout(grp_fu_966_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U325(.clk(ap_clk),.reset(ap_rst),.din0(v372_reg_1153),.din1(grp_fu_972_p1),.din2(mul_ln806_3_reg_1331),.ce(1'b1),.dout(grp_fu_972_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U326(.clk(ap_clk),.reset(ap_rst),.din0(v372_3_reg_1191),.din1(grp_fu_978_p1),.din2(mul_ln806_2_reg_1346),.ce(1'b1),.dout(grp_fu_978_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U327(.clk(ap_clk),.reset(ap_rst),.din0(v372_5_reg_1196),.din1(grp_fu_984_p1),.din2(mul_ln806_6_reg_1361),.ce(1'b1),.dout(grp_fu_984_p3));
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U328(.clk(ap_clk),.reset(ap_rst),.din0(v372_6_reg_1226),.din1(grp_fu_990_p1),.din2(add_ln806_4_reg_1351),.ce(1'b1),.dout(grp_fu_990_p3));
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
        indvar_flatten728_fu_106 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln793_fu_325_p2 == 1'd0))) begin
        indvar_flatten728_fu_106 <= select_ln794_1_fu_525_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten741_fu_114 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln793_fu_325_p2 == 1'd0))) begin
        indvar_flatten741_fu_114 <= add_ln793_1_fu_331_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v366_fu_110 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln793_fu_325_p2 == 1'd0))) begin
        v366_fu_110 <= select_ln793_1_fu_387_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v367_fu_102 <= 3'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln793_fu_325_p2 == 1'd0))) begin
        v367_fu_102 <= select_ln794_fu_419_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v368_fu_98 <= 3'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln793_fu_325_p2 == 1'd0))) begin
        v368_fu_98 <= add_ln795_fu_513_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln795_1_reg_1163[14 : 2] <= add_ln795_1_fu_754_p2[14 : 2];
        zext_ln799_14_reg_1170[2 : 1] <= zext_ln799_14_fu_760_p1[2 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln796_1_reg_1122 <= add_ln796_1_fu_658_p2;
        add_ln796_1_reg_1122_pp0_iter1_reg <= add_ln796_1_reg_1122;
        empty_63_reg_1088 <= empty_63_fu_571_p1;
        empty_76_reg_1127[2 : 1] <= empty_76_fu_664_p2[2 : 1];
        mul_ln799_1_reg_1109[14 : 2] <= mul_ln799_1_fu_625_p2[14 : 2];
        mul_ln799_2_reg_1116[14 : 2] <= mul_ln799_2_fu_649_p2[14 : 2];
        mul_ln806_6_reg_1361 <= mul_ln806_6_fu_943_p2;
        zext_ln799_22_reg_1132[3 : 1] <= zext_ln799_22_fu_679_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln796_reg_1058 <= add_ln796_fu_469_p2;
        add_ln799_13_reg_1052[12 : 1] <= add_ln799_13_fu_459_p2[12 : 1];
        add_ln799_2_reg_1073[12 : 1] <= add_ln799_2_fu_499_p2[12 : 1];
        empty_72_reg_1063 <= empty_72_fu_475_p1;
        empty_73_reg_1068[2 : 1] <= empty_73_fu_479_p2[2 : 1];
        empty_75_reg_1083 <= empty_75_fu_509_p1;
        icmp_ln793_reg_1032 <= icmp_ln793_fu_325_p2;
        mul_ln806_2_reg_1346 <= mul_ln806_2_fu_930_p2;
        p_shl66_reg_1047[11 : 3] <= p_shl66_fu_435_p1[11 : 3];
        select_ln793_1_reg_1036 <= select_ln793_1_fu_387_p3;
        trunc_ln799_1_reg_1078[11 : 1] <= trunc_ln799_1_fu_505_p1[11 : 1];
        v368_mid2_reg_1041 <= v368_mid2_fu_411_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln799_10_reg_1251[14 : 1] <= add_ln799_10_fu_852_p2[14 : 1];
        add_ln799_7_reg_1236[14 : 1] <= add_ln799_7_fu_837_p2[14 : 1];
        add_ln799_8_reg_1241[14 : 1] <= add_ln799_8_fu_842_p2[14 : 1];
        add_ln799_9_reg_1246[14 : 1] <= add_ln799_9_fu_847_p2[14 : 1];
        v379_reg_1381 <= v379_fu_956_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln799_6_reg_1206[14 : 1] <= add_ln799_6_fu_802_p2[14 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln806_1_reg_1371 <= grp_fu_978_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln806_3_reg_1376 <= grp_fu_984_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln806_4_reg_1351 <= grp_fu_966_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln806_reg_1366 <= grp_fu_972_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln806_3_reg_1331 <= mul_ln806_3_fu_914_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul_ln806_reg_1316 <= mul_ln806_fu_898_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_293 <= v72_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v371_3_reg_1261 <= v72_q0;
        v372_6_reg_1226 <= v12_Dout_B;
        v372_7_reg_1231 <= v12_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v371_5_reg_1286 <= v72_q0;
        v372_1_reg_1271 <= v12_Dout_B;
        v372_2_reg_1276 <= v12_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v371_reg_1211 <= v72_q0;
        v372_3_reg_1191 <= v12_Dout_B;
        v372_5_reg_1196 <= v12_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v372_4_reg_1291 <= v12_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v372_8_reg_1158 <= v12_Dout_A;
        v372_reg_1153 <= v12_Dout_B;
    end
end
always @ (*) begin
    if (((icmp_ln793_reg_1032 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
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
            v12_Addr_A_orig = p_cast11_fu_870_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v12_Addr_A_orig = p_cast9_fu_821_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v12_Addr_A_orig = p_cast14_fu_788_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v12_Addr_A_orig = p_cast12_fu_709_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v12_Addr_A_orig = p_cast15_fu_581_p1;
        end else begin
            v12_Addr_A_orig = 'bx;
        end
    end else begin
        v12_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v12_Addr_B_orig = p_cast8_fu_811_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v12_Addr_B_orig = p_cast13_fu_778_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v12_Addr_B_orig = p_cast10_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v12_Addr_B_orig = p_cast7_fu_566_p1;
        end else begin
            v12_Addr_B_orig = 'bx;
        end
    end else begin
        v12_Addr_B_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v12_EN_A_local = 1'b1;
    end else begin
        v12_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v12_EN_B_local = 1'b1;
    end else begin
        v12_EN_B_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v71_ce1_local = 1'b1;
    end else begin
        v71_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v71_we1_local = 1'b1;
    end else begin
        v71_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v72_address0_local = zext_ln799_20_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v72_address0_local = zext_ln799_23_fu_907_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        v72_address0_local = zext_ln799_19_fu_890_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v72_address0_local = zext_ln799_21_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v72_address0_local = zext_ln799_17_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v72_address0_local = zext_ln799_24_fu_860_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v72_address0_local = zext_ln799_16_fu_797_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v72_address0_local = zext_ln799_15_fu_768_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v72_address0_local = zext_ln799_25_fu_689_p1;
    end else begin
        v72_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v72_ce0_local = 1'b1;
    end else begin
        v72_ce0_local = 1'b0;
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
assign add_ln793_1_fu_331_p2 = (indvar_flatten741_fu_114 + 13'd1);
assign add_ln793_fu_349_p2 = (v366_fu_110 + 9'd1);
assign add_ln794_1_fu_519_p2 = (indvar_flatten728_fu_106 + 6'd1);
assign add_ln794_fu_399_p2 = (select_ln793_fu_361_p3 + 3'd1);
assign add_ln795_1_fu_754_p2 = (p_shl_fu_734_p3 + zext_ln795_fu_750_p1);
assign add_ln795_fu_513_p2 = (v368_mid2_fu_411_p3 + 3'd1);
assign add_ln796_1_fu_658_p2 = (tmp_22_fu_586_p3 + zext_ln796_1_fu_655_p1);
assign add_ln796_fu_469_p2 = (tmp_s_fu_439_p3 + zext_ln796_fu_465_p1);
assign add_ln799_10_fu_852_p2 = (mul_ln799_1_reg_1109 + zext_ln799_22_reg_1132);
assign add_ln799_11_fu_856_p2 = (add_ln795_1_reg_1163 + zext_ln799_22_reg_1132);
assign add_ln799_12_fu_683_p2 = (mul_ln799_2_fu_649_p2 + zext_ln799_22_fu_679_p1);
assign add_ln799_13_fu_459_p2 = (p_shl66_fu_435_p1 + zext_ln799_fu_455_p1);
assign add_ln799_1_fu_596_p2 = (add_ln799_13_reg_1052 + zext_ln799_3_fu_593_p1);
assign add_ln799_2_fu_499_p2 = (add_ln799_13_fu_459_p2 + zext_ln799_5_fu_495_p1);
assign add_ln799_3_fu_725_p2 = (add_ln799_13_reg_1052 + zext_ln799_13_fu_721_p1);
assign add_ln799_4_fu_763_p2 = (mul_ln799_1_reg_1109 + zext_ln799_14_fu_760_p1);
assign add_ln799_5_fu_793_p2 = (add_ln795_1_reg_1163 + zext_ln799_14_reg_1170);
assign add_ln799_6_fu_802_p2 = (mul_ln799_2_reg_1116 + zext_ln799_14_reg_1170);
assign add_ln799_7_fu_837_p2 = (mul_ln799_1_reg_1109 + zext_ln799_18_fu_833_p1);
assign add_ln799_8_fu_842_p2 = (add_ln795_1_reg_1163 + zext_ln799_18_fu_833_p1);
assign add_ln799_9_fu_847_p2 = (mul_ln799_2_reg_1116 + zext_ln799_18_fu_833_p1);
assign add_ln799_fu_673_p2 = (zext_ln799_1_fu_669_p1 + 4'd2);
assign add_ln806_2_fu_948_p2 = ($signed(add_ln806_1_reg_1371) + $signed(add_ln806_reg_1366));
assign add_ln806_6_fu_952_p0 = grp_fu_990_p3;
assign add_ln806_6_fu_952_p2 = ($signed(add_ln806_6_fu_952_p0) + $signed(add_ln806_3_reg_1376));
assign and_ln793_fu_381_p2 = (xor_ln793_fu_369_p2 & icmp_ln795_fu_375_p2);
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
assign empty_62_fu_561_p2 = (p_shl66_reg_1047 + select_ln793_1_cast_fu_558_p1);
assign empty_63_fu_571_p1 = empty_62_fu_561_p2[11:0];
assign empty_64_fu_806_p2 = (empty_63_reg_1088 + 12'd1);
assign empty_65_fu_816_p2 = (empty_63_reg_1088 + 12'd2);
assign empty_66_fu_694_p2 = (empty_63_reg_1088 + 12'd3);
assign empty_67_fu_865_p2 = (empty_63_reg_1088 + 12'd4);
assign empty_68_fu_704_p2 = (empty_63_reg_1088 + 12'd5);
assign empty_69_fu_773_p2 = (empty_63_reg_1088 + 12'd6);
assign empty_70_fu_783_p2 = (empty_63_reg_1088 + 12'd7);
assign empty_71_fu_575_p2 = (empty_63_fu_571_p1 + 12'd8);
assign empty_72_fu_475_p1 = select_ln794_fu_419_p3[1:0];
assign empty_73_fu_479_p2 = select_ln794_fu_419_p3 << 3'd1;
assign empty_74_fu_489_p2 = (p_cast216_fu_485_p1 + 4'd2);
assign empty_75_fu_509_p1 = v368_mid2_fu_411_p3[1:0];
assign empty_76_fu_664_p2 = v368_mid2_reg_1041 << 3'd1;
assign empty_fu_405_p2 = (icmp_ln794_fu_355_p2 | and_ln793_fu_381_p2);
assign grp_fu_966_p1 = grp_fu_966_p10;
assign grp_fu_966_p10 = reg_293;
assign grp_fu_972_p1 = grp_fu_972_p10;
assign grp_fu_972_p10 = v371_reg_1211;
assign grp_fu_978_p1 = grp_fu_978_p10;
assign grp_fu_978_p10 = v371_3_reg_1261;
assign grp_fu_984_p1 = grp_fu_984_p10;
assign grp_fu_984_p10 = v371_5_reg_1286;
assign grp_fu_990_p1 = grp_fu_990_p10;
assign grp_fu_990_p10 = reg_293;
assign icmp_ln793_fu_325_p2 = ((indvar_flatten741_fu_114 == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln794_fu_355_p2 = ((indvar_flatten728_fu_106 == 6'd16) ? 1'b1 : 1'b0);
assign icmp_ln795_fu_375_p2 = ((v368_fu_98 == 3'd4) ? 1'b1 : 1'b0);
assign mul_ln799_1_fu_625_p2 = (p_shl1_fu_605_p3 + p_shl63_fu_621_p1);
assign mul_ln799_2_fu_649_p2 = (p_shl2_fu_631_p3 + p_shl61_fu_645_p1);
assign mul_ln806_2_fu_930_p0 = mul_ln806_2_fu_930_p00;
assign mul_ln806_2_fu_930_p00 = v72_q0;
assign mul_ln806_3_fu_914_p0 = mul_ln806_3_fu_914_p00;
assign mul_ln806_3_fu_914_p00 = v72_q0;
assign mul_ln806_6_fu_943_p0 = mul_ln806_6_fu_943_p00;
assign mul_ln806_6_fu_943_p00 = v72_q0;
assign mul_ln806_fu_898_p0 = mul_ln806_fu_898_p00;
assign mul_ln806_fu_898_p00 = v72_q0;
assign or_ln2_fu_826_p3 = {{empty_75_reg_1083}, {1'd1}};
assign p_cast10_fu_699_p1 = empty_66_fu_694_p2;
assign p_cast11_fu_870_p1 = empty_67_fu_865_p2;
assign p_cast12_fu_709_p1 = empty_68_fu_704_p2;
assign p_cast13_fu_778_p1 = empty_69_fu_773_p2;
assign p_cast14_fu_788_p1 = empty_70_fu_783_p2;
assign p_cast15_fu_581_p1 = empty_71_fu_575_p2;
assign p_cast216_fu_485_p1 = empty_73_fu_479_p2;
assign p_cast7_fu_566_p1 = empty_62_fu_561_p2;
assign p_cast8_fu_811_p1 = empty_64_fu_806_p2;
assign p_cast9_fu_821_p1 = empty_65_fu_816_p2;
assign p_shl1_fu_605_p3 = {{trunc_ln799_fu_601_p1}, {3'd0}};
assign p_shl2_fu_631_p3 = {{trunc_ln799_1_reg_1078}, {3'd0}};
assign p_shl61_fu_645_p1 = tmp_24_fu_638_p3;
assign p_shl63_fu_621_p1 = tmp_23_fu_613_p3;
assign p_shl66_fu_435_p1 = tmp_fu_427_p3;
assign p_shl_fu_734_p3 = {{trunc_ln799_2_fu_730_p1}, {3'd0}};
assign select_ln793_1_cast_fu_558_p1 = select_ln793_1_reg_1036;
assign select_ln793_1_fu_387_p3 = ((icmp_ln794_fu_355_p2[0:0] == 1'b1) ? add_ln793_fu_349_p2 : v366_fu_110);
assign select_ln793_fu_361_p3 = ((icmp_ln794_fu_355_p2[0:0] == 1'b1) ? 3'd0 : v367_fu_102);
assign select_ln794_1_fu_525_p3 = ((icmp_ln794_fu_355_p2[0:0] == 1'b1) ? 6'd1 : add_ln794_1_fu_519_p2);
assign select_ln794_fu_419_p3 = ((and_ln793_fu_381_p2[0:0] == 1'b1) ? add_ln794_fu_399_p2 : select_ln793_fu_361_p3);
assign tmp_21_fu_447_p3 = {{select_ln793_1_fu_387_p3}, {1'd0}};
assign tmp_22_fu_586_p3 = {{add_ln796_reg_1058}, {2'd0}};
assign tmp_23_fu_613_p3 = {{add_ln799_1_fu_596_p2}, {1'd0}};
assign tmp_24_fu_638_p3 = {{add_ln799_2_reg_1073}, {1'd0}};
assign tmp_25_fu_742_p3 = {{add_ln799_3_fu_725_p2}, {1'd0}};
assign tmp_7_fu_714_p3 = {{empty_72_reg_1063}, {1'd1}};
assign tmp_fu_427_p3 = {{select_ln793_1_fu_387_p3}, {3'd0}};
assign tmp_s_fu_439_p3 = {{trunc_ln794_fu_395_p1}, {2'd0}};
assign trunc_ln794_fu_395_p1 = select_ln793_1_fu_387_p3[7:0];
assign trunc_ln799_1_fu_505_p1 = add_ln799_2_fu_499_p2[11:0];
assign trunc_ln799_2_fu_730_p1 = add_ln799_3_fu_725_p2[11:0];
assign trunc_ln799_fu_601_p1 = add_ln799_1_fu_596_p2[11:0];
assign v12_Addr_A = v12_Addr_A_orig << 32'd0;
assign v12_Addr_B = v12_Addr_B_orig << 32'd0;
assign v12_Din_A = 8'd0;
assign v12_Din_B = 8'd0;
assign v12_EN_A = v12_EN_A_local;
assign v12_EN_B = v12_EN_B_local;
assign v12_WEN_A = 1'd0;
assign v12_WEN_B = 1'd0;
assign v368_mid2_fu_411_p3 = ((empty_fu_405_p2[0:0] == 1'b1) ? 3'd0 : v368_fu_98);
assign v379_fu_956_p2 = (add_ln806_6_fu_952_p2 + add_ln806_2_fu_948_p2);
assign v71_address1 = zext_ln796_2_fu_962_p1;
assign v71_ce1 = v71_ce1_local;
assign v71_d1 = v379_reg_1381;
assign v71_we1 = v71_we1_local;
assign v72_address0 = v72_address0_local;
assign v72_ce0 = v72_ce0_local;
assign xor_ln793_fu_369_p2 = (icmp_ln794_fu_355_p2 ^ 1'd1);
assign zext_ln795_fu_750_p1 = tmp_25_fu_742_p3;
assign zext_ln796_1_fu_655_p1 = v368_mid2_reg_1041;
assign zext_ln796_2_fu_962_p1 = add_ln796_1_reg_1122_pp0_iter1_reg;
assign zext_ln796_fu_465_p1 = select_ln794_fu_419_p3;
assign zext_ln799_13_fu_721_p1 = tmp_7_fu_714_p3;
assign zext_ln799_14_fu_760_p1 = empty_76_reg_1127;
assign zext_ln799_15_fu_768_p1 = add_ln799_4_fu_763_p2;
assign zext_ln799_16_fu_797_p1 = add_ln799_5_fu_793_p2;
assign zext_ln799_17_fu_875_p1 = add_ln799_6_reg_1206;
assign zext_ln799_18_fu_833_p1 = or_ln2_fu_826_p3;
assign zext_ln799_19_fu_890_p1 = add_ln799_7_reg_1236;
assign zext_ln799_1_fu_669_p1 = empty_76_fu_664_p2;
assign zext_ln799_20_fu_919_p1 = add_ln799_8_reg_1241;
assign zext_ln799_21_fu_879_p1 = add_ln799_9_reg_1246;
assign zext_ln799_22_fu_679_p1 = add_ln799_fu_673_p2;
assign zext_ln799_23_fu_907_p1 = add_ln799_10_reg_1251;
assign zext_ln799_24_fu_860_p1 = add_ln799_11_fu_856_p2;
assign zext_ln799_25_fu_689_p1 = add_ln799_12_fu_683_p2;
assign zext_ln799_3_fu_593_p1 = empty_73_reg_1068;
assign zext_ln799_5_fu_495_p1 = empty_74_fu_489_p2;
assign zext_ln799_fu_455_p1 = tmp_21_fu_447_p3;
always @ (posedge ap_clk) begin
    p_shl66_reg_1047[2:0] <= 3'b000;
    p_shl66_reg_1047[12] <= 1'b0;
    add_ln799_13_reg_1052[0] <= 1'b0;
    empty_73_reg_1068[0] <= 1'b0;
    add_ln799_2_reg_1073[0] <= 1'b0;
    trunc_ln799_1_reg_1078[0] <= 1'b0;
    mul_ln799_1_reg_1109[1:0] <= 2'b00;
    mul_ln799_2_reg_1116[1:0] <= 2'b00;
    empty_76_reg_1127[0] <= 1'b0;
    zext_ln799_22_reg_1132[0] <= 1'b0;
    zext_ln799_22_reg_1132[14:4] <= 11'b00000000000;
    add_ln795_1_reg_1163[1:0] <= 2'b10;
    zext_ln799_14_reg_1170[0] <= 1'b0;
    zext_ln799_14_reg_1170[14:3] <= 12'b000000000000;
    add_ln799_6_reg_1206[0] <= 1'b0;
    add_ln799_7_reg_1236[0] <= 1'b1;
    add_ln799_8_reg_1241[0] <= 1'b1;
    add_ln799_9_reg_1246[0] <= 1'b1;
    add_ln799_10_reg_1251[0] <= 1'b0;
end
endmodule 