module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_address1,llike_ce1,llike_we1,llike_d1,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_10,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,conv3_udiv_cast,conv3_udiv,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_678_p_din0,grp_fu_678_p_din1,grp_fu_678_p_opcode,grp_fu_678_p_dout0,grp_fu_678_p_ce); 
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
output  [13:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [13:0] llike_address1;
output   llike_ce1;
output   llike_we1;
output  [63:0] llike_d1;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] empty_10;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [10:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
input  [0:0] empty;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
input  [6:0] conv3_udiv_cast;
input  [6:0] conv3_udiv;
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [1:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_678_p_din0;
output  [63:0] grp_fu_678_p_din1;
output  [1:0] grp_fu_678_p_opcode;
input  [63:0] grp_fu_678_p_dout0;
output   grp_fu_678_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_65_reg_1709;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_763;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_749_p3;
reg   [63:0] reg_767;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
reg   [63:0] reg_771;
wire   [63:0] grp_fu_756_p3;
reg   [63:0] reg_775;
reg   [63:0] reg_779;
reg   [63:0] reg_784;
reg   [63:0] reg_789;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_794;
wire   [10:0] conv3_udiv_cast_cast_fu_799_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_1679;
wire   [7:0] p_cast_fu_803_p1;
reg   [7:0] p_cast_reg_1694;
reg   [6:0] s_1_reg_1699;
reg   [6:0] s_1_reg_1699_pp0_iter1_reg;
reg   [0:0] tmp_65_reg_1709_pp0_iter1_reg;
wire   [4:0] lshr_ln9_fu_823_p4;
reg   [4:0] lshr_ln9_reg_1713;
reg   [4:0] lshr_ln9_reg_1713_pp0_iter1_reg;
wire   [2:0] tmp_fu_839_p4;
reg   [2:0] tmp_reg_1723;
reg   [2:0] tmp_reg_1723_pp0_iter1_reg;
wire   [3:0] tmp_2_fu_883_p4;
reg   [3:0] tmp_2_reg_1762;
reg   [3:0] tmp_2_reg_1762_pp0_iter1_reg;
wire   [0:0] tmp_66_fu_943_p3;
reg   [0:0] tmp_66_reg_1800;
reg   [0:0] tmp_66_reg_1800_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_fu_978_p1;
wire   [63:0] bitcast_ln14_1_fu_983_p1;
wire   [63:0] bitcast_ln14_2_fu_988_p1;
wire   [63:0] bitcast_ln14_3_fu_993_p1;
reg   [63:0] init_0_load_3_reg_1869;
reg   [63:0] init_1_load_3_reg_1874;
wire   [1:0] tmp_60_fu_1033_p4;
reg   [1:0] tmp_60_reg_1879;
reg   [1:0] tmp_60_reg_1879_pp0_iter1_reg;
wire   [1:0] tmp_s_fu_1042_p4;
reg   [1:0] tmp_s_reg_1901;
reg   [1:0] tmp_s_reg_1901_pp0_iter1_reg;
wire   [0:0] tmp_67_fu_1067_p3;
reg   [0:0] tmp_67_reg_1917;
reg   [0:0] tmp_67_reg_1917_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_4_fu_1092_p1;
wire   [63:0] bitcast_ln14_5_fu_1097_p1;
wire   [63:0] bitcast_ln14_6_fu_1102_p1;
wire   [63:0] bitcast_ln14_7_fu_1107_p1;
reg   [63:0] init_0_load_5_reg_1975;
reg   [63:0] init_1_load_5_reg_1980;
wire   [63:0] bitcast_ln14_8_fu_1175_p1;
wire   [63:0] bitcast_ln14_9_fu_1180_p1;
wire   [63:0] bitcast_ln14_10_fu_1185_p1;
wire   [63:0] bitcast_ln14_11_fu_1190_p1;
reg   [63:0] init_0_load_7_reg_2045;
reg   [63:0] init_1_load_7_reg_2050;
wire   [63:0] bitcast_ln14_12_fu_1230_p1;
wire   [63:0] bitcast_ln14_13_fu_1234_p1;
wire   [63:0] bitcast_ln14_14_fu_1239_p1;
wire   [63:0] bitcast_ln14_15_fu_1243_p1;
wire   [63:0] bitcast_ln14_16_fu_1290_p1;
wire   [63:0] bitcast_ln14_17_fu_1295_p1;
wire   [63:0] bitcast_ln14_18_fu_1300_p1;
wire   [63:0] bitcast_ln14_19_fu_1305_p1;
wire   [63:0] bitcast_ln14_20_fu_1345_p1;
wire   [63:0] bitcast_ln14_21_fu_1349_p1;
wire   [63:0] bitcast_ln14_22_fu_1354_p1;
wire   [63:0] bitcast_ln14_23_fu_1358_p1;
wire   [63:0] bitcast_ln14_24_fu_1409_p1;
wire   [63:0] bitcast_ln14_25_fu_1414_p1;
wire   [63:0] bitcast_ln14_26_fu_1419_p1;
wire   [63:0] bitcast_ln14_27_fu_1424_p1;
wire   [63:0] select_ln14_14_fu_1429_p3;
reg   [63:0] select_ln14_14_reg_2195;
wire   [63:0] select_ln14_15_fu_1436_p3;
reg   [63:0] select_ln14_15_reg_2200;
wire   [63:0] bitcast_ln14_28_fu_1443_p1;
wire   [63:0] bitcast_ln14_29_fu_1447_p1;
wire   [63:0] bitcast_ln14_30_fu_1451_p1;
wire   [63:0] bitcast_ln14_31_fu_1455_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_fu_833_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_857_p1;
wire   [63:0] zext_ln14_1_fu_877_p1;
wire   [63:0] zext_ln14_18_fu_901_p1;
wire   [63:0] zext_ln14_2_fu_919_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_937_p1;
wire   [63:0] zext_ln14_21_fu_959_p1;
wire   [63:0] zext_ln14_24_fu_972_p1;
wire   [63:0] zext_ln14_4_fu_1006_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1027_p1;
wire   [63:0] zext_ln14_27_fu_1061_p1;
wire   [63:0] zext_ln14_30_fu_1086_p1;
wire   [63:0] zext_ln14_6_fu_1124_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1142_p1;
wire   [63:0] zext_ln14_33_fu_1156_p1;
wire   [63:0] zext_ln14_36_fu_1169_p1;
wire   [63:0] zext_ln14_8_fu_1203_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1224_p1;
wire   [63:0] zext_ln14_10_fu_1263_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1284_p1;
wire   [63:0] zext_ln14_12_fu_1318_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_1339_p1;
wire   [63:0] zext_ln14_14_fu_1375_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_1393_p1;
wire   [63:0] zext_ln13_fu_1459_p1;
wire   [63:0] zext_ln14_16_fu_1470_p1;
wire   [63:0] zext_ln14_17_fu_1482_p1;
wire   [63:0] zext_ln14_19_fu_1494_p1;
wire   [63:0] zext_ln14_20_fu_1506_p1;
wire   [63:0] zext_ln14_22_fu_1521_p1;
wire   [63:0] zext_ln14_23_fu_1533_p1;
wire   [63:0] zext_ln14_25_fu_1545_p1;
wire   [63:0] zext_ln14_26_fu_1557_p1;
wire   [63:0] zext_ln14_28_fu_1572_p1;
wire   [63:0] zext_ln14_29_fu_1587_p1;
wire   [63:0] zext_ln14_31_fu_1602_p1;
wire   [63:0] zext_ln14_32_fu_1614_p1;
wire   [63:0] zext_ln14_34_fu_1629_p1;
wire   [63:0] zext_ln14_35_fu_1641_p1;
wire   [63:0] zext_ln14_37_fu_1653_p1;
reg   [6:0] s_fu_156;
wire   [6:0] add_ln13_fu_1399_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg   [4:0] init_0_address1_local;
reg    init_0_ce0_local;
reg   [4:0] init_0_address0_local;
reg    emission_0_ce1_local;
reg   [10:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [10:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [10:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [10:0] emission_1_address0_local;
reg    init_1_ce1_local;
reg   [4:0] init_1_address1_local;
reg    init_1_ce0_local;
reg   [4:0] init_1_address0_local;
reg    llike_we1_local;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg   [63:0] grp_fu_741_p0;
reg   [63:0] grp_fu_741_p1;
reg   [63:0] grp_fu_745_p0;
reg   [63:0] grp_fu_745_p1;
wire   [10:0] or_ln_fu_849_p3;
wire   [10:0] shl_ln_fu_863_p3;
wire   [10:0] add_ln14_fu_871_p2;
wire   [4:0] or_ln14_1_fu_893_p3;
wire   [10:0] shl_ln14_1_fu_907_p3;
wire   [10:0] add_ln14_1_fu_914_p2;
wire   [10:0] shl_ln14_2_fu_925_p3;
wire   [10:0] add_ln14_2_fu_932_p2;
wire   [4:0] or_ln14_2_fu_950_p4;
wire   [4:0] or_ln14_4_fu_965_p3;
wire   [10:0] or_ln14_3_fu_998_p4;
wire   [10:0] shl_ln14_3_fu_1012_p5;
wire   [10:0] add_ln14_3_fu_1022_p2;
wire   [4:0] or_ln14_5_fu_1051_p4;
wire   [4:0] or_ln14_7_fu_1074_p5;
wire   [10:0] shl_ln14_4_fu_1112_p3;
wire   [10:0] add_ln14_4_fu_1119_p2;
wire   [10:0] shl_ln14_5_fu_1130_p3;
wire   [10:0] add_ln14_5_fu_1137_p2;
wire   [4:0] or_ln14_8_fu_1148_p4;
wire   [4:0] or_ln14_s_fu_1162_p3;
wire   [10:0] or_ln14_6_fu_1195_p4;
wire   [10:0] shl_ln14_6_fu_1209_p5;
wire   [10:0] add_ln14_6_fu_1219_p2;
wire   [10:0] shl_ln14_7_fu_1248_p5;
wire   [10:0] add_ln14_7_fu_1258_p2;
wire   [10:0] shl_ln14_8_fu_1269_p5;
wire   [10:0] add_ln14_8_fu_1279_p2;
wire   [10:0] or_ln14_9_fu_1310_p4;
wire   [10:0] shl_ln14_9_fu_1324_p5;
wire   [10:0] add_ln14_9_fu_1334_p2;
wire   [10:0] shl_ln14_s_fu_1363_p3;
wire   [10:0] add_ln14_10_fu_1370_p2;
wire   [10:0] shl_ln14_10_fu_1381_p3;
wire   [10:0] add_ln14_11_fu_1388_p2;
wire   [5:0] or_ln1_fu_1463_p3;
wire   [5:0] or_ln13_1_fu_1475_p3;
wire   [5:0] or_ln13_2_fu_1487_p3;
wire   [5:0] or_ln13_3_fu_1499_p3;
wire   [5:0] or_ln13_4_fu_1511_p5;
wire   [5:0] or_ln13_5_fu_1526_p3;
wire   [5:0] or_ln13_6_fu_1538_p3;
wire   [5:0] or_ln13_7_fu_1550_p3;
wire   [5:0] or_ln13_8_fu_1562_p5;
wire   [5:0] or_ln13_9_fu_1577_p5;
wire   [5:0] or_ln13_s_fu_1592_p5;
wire   [5:0] or_ln13_10_fu_1607_p3;
wire   [5:0] or_ln13_11_fu_1619_p5;
wire   [5:0] or_ln13_12_fu_1634_p3;
wire   [5:0] or_ln13_13_fu_1646_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_156 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_779 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_779 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_784 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_784 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_156 <= 7'd0;
    end else if (((tmp_65_reg_1709 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_156 <= add_ln13_fu_1399_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1679[6 : 0] <= conv3_udiv_cast_cast_fu_799_p1[6 : 0];
        lshr_ln9_reg_1713 <= {{ap_sig_allocacmp_s_1[5:1]}};
        lshr_ln9_reg_1713_pp0_iter1_reg <= lshr_ln9_reg_1713;
        p_cast_reg_1694[6 : 0] <= p_cast_fu_803_p1[6 : 0];
        s_1_reg_1699 <= ap_sig_allocacmp_s_1;
        s_1_reg_1699_pp0_iter1_reg <= s_1_reg_1699;
        select_ln14_14_reg_2195 <= select_ln14_14_fu_1429_p3;
        select_ln14_15_reg_2200 <= select_ln14_15_fu_1436_p3;
        tmp_2_reg_1762 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_2_reg_1762_pp0_iter1_reg <= tmp_2_reg_1762;
        tmp_65_reg_1709 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_65_reg_1709_pp0_iter1_reg <= tmp_65_reg_1709;
        tmp_reg_1723 <= {{ap_sig_allocacmp_s_1[5:3]}};
        tmp_reg_1723_pp0_iter1_reg <= tmp_reg_1723;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_1869 <= init_0_q0;
        init_1_load_3_reg_1874 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        init_0_load_5_reg_1975 <= init_0_q0;
        init_1_load_5_reg_1980 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_2045 <= init_0_q0;
        init_1_load_7_reg_2050 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_763 <= init_0_q1;
        reg_771 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_767 <= grp_fu_749_p3;
        reg_775 <= grp_fu_756_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_789 <= grp_fu_300_p_dout0;
        reg_794 <= grp_fu_678_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_60_reg_1879 <= {{s_1_reg_1699[5:4]}};
        tmp_60_reg_1879_pp0_iter1_reg <= tmp_60_reg_1879;
        tmp_67_reg_1917 <= s_1_reg_1699[32'd2];
        tmp_67_reg_1917_pp0_iter1_reg <= tmp_67_reg_1917;
        tmp_s_reg_1901 <= {{s_1_reg_1699[2:1]}};
        tmp_s_reg_1901_pp0_iter1_reg <= tmp_s_reg_1901;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_66_reg_1800 <= s_1_reg_1699[32'd1];
        tmp_66_reg_1800_pp0_iter1_reg <= tmp_66_reg_1800;
    end
end
always @ (*) begin
    if (((tmp_65_reg_1709 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_65_reg_1709_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_156;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_1393_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_1339_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1284_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1224_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1142_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_937_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_877_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address1_local = zext_ln14_14_fu_1375_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1318_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1263_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1203_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1124_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_919_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_857_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address0_local = zext_ln14_15_fu_1393_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_1339_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1284_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1224_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1142_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1027_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_937_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_877_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_1_address1_local = zext_ln14_14_fu_1375_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1318_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1263_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1203_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1124_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_1006_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_919_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_857_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_741_p0 = bitcast_ln14_28_fu_1443_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_741_p0 = bitcast_ln14_24_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_741_p0 = bitcast_ln14_20_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_741_p0 = bitcast_ln14_16_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_741_p0 = bitcast_ln14_12_fu_1230_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_741_p0 = bitcast_ln14_8_fu_1175_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_741_p0 = bitcast_ln14_4_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_741_p0 = bitcast_ln14_fu_978_p1;
    end else begin
        grp_fu_741_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_741_p1 = bitcast_ln14_29_fu_1447_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_741_p1 = bitcast_ln14_25_fu_1414_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_741_p1 = bitcast_ln14_21_fu_1349_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_741_p1 = bitcast_ln14_17_fu_1295_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_741_p1 = bitcast_ln14_13_fu_1234_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_741_p1 = bitcast_ln14_9_fu_1180_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_741_p1 = bitcast_ln14_5_fu_1097_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_741_p1 = bitcast_ln14_1_fu_983_p1;
    end else begin
        grp_fu_741_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_745_p0 = bitcast_ln14_30_fu_1451_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_745_p0 = bitcast_ln14_26_fu_1419_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_745_p0 = bitcast_ln14_22_fu_1354_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_745_p0 = bitcast_ln14_18_fu_1300_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_745_p0 = bitcast_ln14_14_fu_1239_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_745_p0 = bitcast_ln14_10_fu_1185_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_745_p0 = bitcast_ln14_6_fu_1102_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_745_p0 = bitcast_ln14_2_fu_988_p1;
    end else begin
        grp_fu_745_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_745_p1 = bitcast_ln14_31_fu_1455_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_745_p1 = bitcast_ln14_27_fu_1424_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_745_p1 = bitcast_ln14_23_fu_1358_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_745_p1 = bitcast_ln14_19_fu_1305_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_745_p1 = bitcast_ln14_15_fu_1243_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_745_p1 = bitcast_ln14_11_fu_1190_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_745_p1 = bitcast_ln14_7_fu_1107_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_745_p1 = bitcast_ln14_3_fu_993_p1;
    end else begin
        grp_fu_745_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_36_fu_1169_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_30_fu_1086_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_24_fu_972_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_18_fu_901_p1;
        end else begin
            init_0_address0_local = 'bx;
        end
    end else begin
        init_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address1_local = zext_ln14_33_fu_1156_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_27_fu_1061_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_21_fu_959_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_833_p1;
        end else begin
            init_0_address1_local = 'bx;
        end
    end else begin
        init_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address0_local = zext_ln14_36_fu_1169_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_30_fu_1086_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_24_fu_972_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_18_fu_901_p1;
        end else begin
            init_1_address0_local = 'bx;
        end
    end else begin
        init_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_1_address1_local = zext_ln14_33_fu_1156_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_27_fu_1061_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_21_fu_959_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_833_p1;
        end else begin
            init_1_address1_local = 'bx;
        end
    end else begin
        init_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_37_fu_1653_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_34_fu_1629_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_31_fu_1602_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_28_fu_1572_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_25_fu_1545_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_22_fu_1521_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_19_fu_1494_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln14_16_fu_1470_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address1_local = zext_ln14_35_fu_1641_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address1_local = zext_ln14_32_fu_1614_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address1_local = zext_ln14_29_fu_1587_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address1_local = zext_ln14_26_fu_1557_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address1_local = zext_ln14_23_fu_1533_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address1_local = zext_ln14_20_fu_1506_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address1_local = zext_ln14_17_fu_1482_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address1_local = zext_ln13_fu_1459_p1;
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_we1_local = 1'b1;
    end else begin
        llike_we1_local = 1'b0;
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
assign add_ln13_fu_1399_p2 = (s_1_reg_1699 + 7'd16);
assign add_ln14_10_fu_1370_p2 = (shl_ln14_s_fu_1363_p3 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_11_fu_1388_p2 = (shl_ln14_10_fu_1381_p3 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_1_fu_914_p2 = (shl_ln14_1_fu_907_p3 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_2_fu_932_p2 = (shl_ln14_2_fu_925_p3 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_3_fu_1022_p2 = (shl_ln14_3_fu_1012_p5 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_4_fu_1119_p2 = (shl_ln14_4_fu_1112_p3 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_5_fu_1137_p2 = (shl_ln14_5_fu_1130_p3 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_6_fu_1219_p2 = (shl_ln14_6_fu_1209_p5 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_7_fu_1258_p2 = (shl_ln14_7_fu_1248_p5 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_8_fu_1279_p2 = (shl_ln14_8_fu_1269_p5 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_9_fu_1334_p2 = (shl_ln14_9_fu_1324_p5 + conv3_udiv_cast_cast_reg_1679);
assign add_ln14_fu_871_p2 = (shl_ln_fu_863_p3 + conv3_udiv_cast_cast_fu_799_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_10_fu_1185_p1 = reg_771;
assign bitcast_ln14_11_fu_1190_p1 = reg_775;
assign bitcast_ln14_12_fu_1230_p1 = init_0_load_3_reg_1869;
assign bitcast_ln14_13_fu_1234_p1 = reg_767;
assign bitcast_ln14_14_fu_1239_p1 = init_1_load_3_reg_1874;
assign bitcast_ln14_15_fu_1243_p1 = reg_775;
assign bitcast_ln14_16_fu_1290_p1 = reg_779;
assign bitcast_ln14_17_fu_1295_p1 = reg_767;
assign bitcast_ln14_18_fu_1300_p1 = reg_784;
assign bitcast_ln14_19_fu_1305_p1 = reg_775;
assign bitcast_ln14_1_fu_983_p1 = reg_767;
assign bitcast_ln14_20_fu_1345_p1 = init_0_load_5_reg_1975;
assign bitcast_ln14_21_fu_1349_p1 = reg_767;
assign bitcast_ln14_22_fu_1354_p1 = init_1_load_5_reg_1980;
assign bitcast_ln14_23_fu_1358_p1 = reg_775;
assign bitcast_ln14_24_fu_1409_p1 = reg_763;
assign bitcast_ln14_25_fu_1414_p1 = reg_767;
assign bitcast_ln14_26_fu_1419_p1 = reg_771;
assign bitcast_ln14_27_fu_1424_p1 = reg_775;
assign bitcast_ln14_28_fu_1443_p1 = init_0_load_7_reg_2045;
assign bitcast_ln14_29_fu_1447_p1 = select_ln14_14_reg_2195;
assign bitcast_ln14_2_fu_988_p1 = reg_771;
assign bitcast_ln14_30_fu_1451_p1 = init_1_load_7_reg_2050;
assign bitcast_ln14_31_fu_1455_p1 = select_ln14_15_reg_2200;
assign bitcast_ln14_3_fu_993_p1 = reg_775;
assign bitcast_ln14_4_fu_1092_p1 = reg_779;
assign bitcast_ln14_5_fu_1097_p1 = reg_767;
assign bitcast_ln14_6_fu_1102_p1 = reg_784;
assign bitcast_ln14_7_fu_1107_p1 = reg_775;
assign bitcast_ln14_8_fu_1175_p1 = reg_763;
assign bitcast_ln14_9_fu_1180_p1 = reg_767;
assign bitcast_ln14_fu_978_p1 = reg_763;
assign conv3_udiv_cast_cast_fu_799_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_741_p0;
assign grp_fu_300_p_din1 = grp_fu_741_p1;
assign grp_fu_300_p_opcode = 2'd0;
assign grp_fu_678_p_ce = 1'b1;
assign grp_fu_678_p_din0 = grp_fu_745_p0;
assign grp_fu_678_p_din1 = grp_fu_745_p1;
assign grp_fu_678_p_opcode = 2'd0;
assign grp_fu_749_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_756_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign llike_d0 = reg_794;
assign llike_d1 = reg_789;
assign llike_we0 = llike_we0_local;
assign llike_we1 = llike_we1_local;
assign lshr_ln9_fu_823_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln13_10_fu_1607_p3 = {{tmp_60_reg_1879_pp0_iter1_reg}, {4'd12}};
assign or_ln13_11_fu_1619_p5 = {{{{tmp_60_reg_1879_pp0_iter1_reg}, {2'd3}}, {tmp_66_reg_1800_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_12_fu_1634_p3 = {{tmp_60_reg_1879_pp0_iter1_reg}, {4'd14}};
assign or_ln13_13_fu_1646_p3 = {{tmp_60_reg_1879_pp0_iter1_reg}, {4'd15}};
assign or_ln13_1_fu_1475_p3 = {{tmp_2_reg_1762_pp0_iter1_reg}, {2'd2}};
assign or_ln13_2_fu_1487_p3 = {{tmp_2_reg_1762_pp0_iter1_reg}, {2'd3}};
assign or_ln13_3_fu_1499_p3 = {{tmp_reg_1723_pp0_iter1_reg}, {3'd4}};
assign or_ln13_4_fu_1511_p5 = {{{{tmp_reg_1723_pp0_iter1_reg}, {1'd1}}, {tmp_66_reg_1800_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_5_fu_1526_p3 = {{tmp_reg_1723_pp0_iter1_reg}, {3'd6}};
assign or_ln13_6_fu_1538_p3 = {{tmp_reg_1723_pp0_iter1_reg}, {3'd7}};
assign or_ln13_7_fu_1550_p3 = {{tmp_60_reg_1879_pp0_iter1_reg}, {4'd8}};
assign or_ln13_8_fu_1562_p5 = {{{{tmp_60_reg_1879_pp0_iter1_reg}, {1'd1}}, {tmp_s_reg_1901_pp0_iter1_reg}}, {1'd1}};
assign or_ln13_9_fu_1577_p5 = {{{{tmp_60_reg_1879_pp0_iter1_reg}, {1'd1}}, {tmp_67_reg_1917_pp0_iter1_reg}}, {2'd2}};
assign or_ln13_s_fu_1592_p5 = {{{{tmp_60_reg_1879_pp0_iter1_reg}, {1'd1}}, {tmp_67_reg_1917_pp0_iter1_reg}}, {2'd3}};
assign or_ln14_1_fu_893_p3 = {{tmp_2_fu_883_p4}, {1'd1}};
assign or_ln14_2_fu_950_p4 = {{{tmp_reg_1723}, {1'd1}}, {tmp_66_fu_943_p3}};
assign or_ln14_3_fu_998_p4 = {{{tmp_reg_1723}, {1'd1}}, {conv3_udiv}};
assign or_ln14_4_fu_965_p3 = {{tmp_reg_1723}, {2'd3}};
assign or_ln14_5_fu_1051_p4 = {{{tmp_60_fu_1033_p4}, {1'd1}}, {tmp_s_fu_1042_p4}};
assign or_ln14_6_fu_1195_p4 = {{{tmp_60_reg_1879}, {1'd1}}, {p_cast_reg_1694}};
assign or_ln14_7_fu_1074_p5 = {{{{tmp_60_fu_1033_p4}, {1'd1}}, {tmp_67_fu_1067_p3}}, {1'd1}};
assign or_ln14_8_fu_1148_p4 = {{{tmp_60_reg_1879}, {2'd3}}, {tmp_66_reg_1800}};
assign or_ln14_9_fu_1310_p4 = {{{tmp_60_reg_1879}, {2'd3}}, {conv3_udiv}};
assign or_ln14_s_fu_1162_p3 = {{tmp_60_reg_1879}, {3'd7}};
assign or_ln1_fu_1463_p3 = {{lshr_ln9_reg_1713_pp0_iter1_reg}, {1'd1}};
assign or_ln_fu_849_p3 = {{tmp_fu_839_p4}, {p_cast_fu_803_p1}};
assign p_cast_fu_803_p1 = empty_10;
assign select_ln14_14_fu_1429_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_15_fu_1436_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign shl_ln14_10_fu_1381_p3 = {{tmp_60_reg_1879}, {9'd480}};
assign shl_ln14_1_fu_907_p3 = {{tmp_2_reg_1762}, {7'd64}};
assign shl_ln14_2_fu_925_p3 = {{tmp_2_reg_1762}, {7'd96}};
assign shl_ln14_3_fu_1012_p5 = {{{{tmp_reg_1723}, {1'd1}}, {tmp_66_reg_1800}}, {6'd32}};
assign shl_ln14_4_fu_1112_p3 = {{tmp_reg_1723}, {8'd192}};
assign shl_ln14_5_fu_1130_p3 = {{tmp_reg_1723}, {8'd224}};
assign shl_ln14_6_fu_1209_p5 = {{{{tmp_60_reg_1879}, {1'd1}}, {tmp_s_reg_1901}}, {6'd32}};
assign shl_ln14_7_fu_1248_p5 = {{{{tmp_60_reg_1879}, {1'd1}}, {tmp_67_reg_1917}}, {7'd64}};
assign shl_ln14_8_fu_1269_p5 = {{{{tmp_60_reg_1879}, {1'd1}}, {tmp_67_reg_1917}}, {7'd96}};
assign shl_ln14_9_fu_1324_p5 = {{{{tmp_60_reg_1879}, {2'd3}}, {tmp_66_reg_1800}}, {6'd32}};
assign shl_ln14_s_fu_1363_p3 = {{tmp_60_reg_1879}, {9'd448}};
assign shl_ln_fu_863_p3 = {{lshr_ln9_fu_823_p4}, {6'd32}};
assign tmp_2_fu_883_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_60_fu_1033_p4 = {{s_1_reg_1699[5:4]}};
assign tmp_66_fu_943_p3 = s_1_reg_1699[32'd1];
assign tmp_67_fu_1067_p3 = s_1_reg_1699[32'd2];
assign tmp_fu_839_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_s_fu_1042_p4 = {{s_1_reg_1699[2:1]}};
assign zext_ln13_fu_1459_p1 = s_1_reg_1699_pp0_iter1_reg;
assign zext_ln14_10_fu_1263_p1 = add_ln14_7_fu_1258_p2;
assign zext_ln14_11_fu_1284_p1 = add_ln14_8_fu_1279_p2;
assign zext_ln14_12_fu_1318_p1 = or_ln14_9_fu_1310_p4;
assign zext_ln14_13_fu_1339_p1 = add_ln14_9_fu_1334_p2;
assign zext_ln14_14_fu_1375_p1 = add_ln14_10_fu_1370_p2;
assign zext_ln14_15_fu_1393_p1 = add_ln14_11_fu_1388_p2;
assign zext_ln14_16_fu_1470_p1 = or_ln1_fu_1463_p3;
assign zext_ln14_17_fu_1482_p1 = or_ln13_1_fu_1475_p3;
assign zext_ln14_18_fu_901_p1 = or_ln14_1_fu_893_p3;
assign zext_ln14_19_fu_1494_p1 = or_ln13_2_fu_1487_p3;
assign zext_ln14_1_fu_877_p1 = add_ln14_fu_871_p2;
assign zext_ln14_20_fu_1506_p1 = or_ln13_3_fu_1499_p3;
assign zext_ln14_21_fu_959_p1 = or_ln14_2_fu_950_p4;
assign zext_ln14_22_fu_1521_p1 = or_ln13_4_fu_1511_p5;
assign zext_ln14_23_fu_1533_p1 = or_ln13_5_fu_1526_p3;
assign zext_ln14_24_fu_972_p1 = or_ln14_4_fu_965_p3;
assign zext_ln14_25_fu_1545_p1 = or_ln13_6_fu_1538_p3;
assign zext_ln14_26_fu_1557_p1 = or_ln13_7_fu_1550_p3;
assign zext_ln14_27_fu_1061_p1 = or_ln14_5_fu_1051_p4;
assign zext_ln14_28_fu_1572_p1 = or_ln13_8_fu_1562_p5;
assign zext_ln14_29_fu_1587_p1 = or_ln13_9_fu_1577_p5;
assign zext_ln14_2_fu_919_p1 = add_ln14_1_fu_914_p2;
assign zext_ln14_30_fu_1086_p1 = or_ln14_7_fu_1074_p5;
assign zext_ln14_31_fu_1602_p1 = or_ln13_s_fu_1592_p5;
assign zext_ln14_32_fu_1614_p1 = or_ln13_10_fu_1607_p3;
assign zext_ln14_33_fu_1156_p1 = or_ln14_8_fu_1148_p4;
assign zext_ln14_34_fu_1629_p1 = or_ln13_11_fu_1619_p5;
assign zext_ln14_35_fu_1641_p1 = or_ln13_12_fu_1634_p3;
assign zext_ln14_36_fu_1169_p1 = or_ln14_s_fu_1162_p3;
assign zext_ln14_37_fu_1653_p1 = or_ln13_13_fu_1646_p3;
assign zext_ln14_3_fu_937_p1 = add_ln14_2_fu_932_p2;
assign zext_ln14_4_fu_1006_p1 = or_ln14_3_fu_998_p4;
assign zext_ln14_5_fu_1027_p1 = add_ln14_3_fu_1022_p2;
assign zext_ln14_6_fu_1124_p1 = add_ln14_4_fu_1119_p2;
assign zext_ln14_7_fu_1142_p1 = add_ln14_5_fu_1137_p2;
assign zext_ln14_8_fu_1203_p1 = or_ln14_6_fu_1195_p4;
assign zext_ln14_9_fu_1224_p1 = add_ln14_6_fu_1219_p2;
assign zext_ln14_fu_857_p1 = or_ln_fu_849_p3;
assign zext_ln9_fu_833_p1 = lshr_ln9_fu_823_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1679[10:7] <= 4'b0000;
    p_cast_reg_1694[7] <= 1'b0;
end
endmodule 