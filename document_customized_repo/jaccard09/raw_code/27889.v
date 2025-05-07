module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_11,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,grp_fu_400_p_din0,grp_fu_400_p_din1,grp_fu_400_p_opcode,grp_fu_400_p_dout0,grp_fu_400_p_ce,grp_fu_971_p_din0,grp_fu_971_p_din1,grp_fu_971_p_opcode,grp_fu_971_p_dout0,grp_fu_971_p_ce); 
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
output  [12:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] empty_11;
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
input  [6:0] conv3_udiv_cast;
input  [6:0] conv3_udiv;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [63:0] grp_fu_400_p_din0;
output  [63:0] grp_fu_400_p_din1;
output  [1:0] grp_fu_400_p_opcode;
input  [63:0] grp_fu_400_p_dout0;
output   grp_fu_400_p_ce;
output  [63:0] grp_fu_971_p_din0;
output  [63:0] grp_fu_971_p_din1;
output  [1:0] grp_fu_971_p_opcode;
input  [63:0] grp_fu_971_p_dout0;
output   grp_fu_971_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_86_reg_1482;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_736;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_722_p3;
reg   [63:0] reg_740;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_729_p3;
reg   [63:0] reg_744;
reg   [63:0] reg_748;
reg   [63:0] reg_753;
reg   [63:0] reg_757;
reg   [63:0] reg_762;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_767;
wire   [10:0] conv3_udiv_cast_cast_fu_772_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_1453;
wire   [7:0] p_cast_fu_776_p1;
reg   [7:0] p_cast_reg_1468;
reg   [6:0] s_1_reg_1473;
reg   [0:0] tmp_86_reg_1482_pp0_iter1_reg;
wire   [63:0] zext_ln9_fu_806_p1;
reg   [63:0] zext_ln9_reg_1486;
reg   [63:0] zext_ln9_reg_1486_pp0_iter1_reg;
wire   [2:0] tmp_1_fu_812_p4;
reg   [2:0] tmp_1_reg_1497;
wire   [3:0] tmp_14_fu_856_p4;
reg   [3:0] tmp_14_reg_1527;
wire   [63:0] zext_ln14_16_fu_874_p1;
reg   [63:0] zext_ln14_16_reg_1533;
reg   [63:0] zext_ln14_16_reg_1533_pp0_iter1_reg;
wire   [0:0] tmp_87_fu_916_p3;
reg   [0:0] tmp_87_reg_1574;
wire   [63:0] zext_ln14_17_fu_932_p1;
reg   [63:0] zext_ln14_17_reg_1581;
reg   [63:0] zext_ln14_17_reg_1581_pp0_iter1_reg;
wire   [63:0] zext_ln14_18_fu_945_p1;
reg   [63:0] zext_ln14_18_reg_1587;
reg   [63:0] zext_ln14_18_reg_1587_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_fu_951_p1;
wire   [63:0] bitcast_ln14_1_fu_956_p1;
wire   [63:0] bitcast_ln14_2_fu_961_p1;
wire   [1:0] tmp_70_fu_1001_p4;
reg   [1:0] tmp_70_reg_1648;
wire   [1:0] tmp_74_fu_1010_p4;
reg   [1:0] tmp_74_reg_1662;
wire   [63:0] zext_ln14_19_fu_1029_p1;
reg   [63:0] zext_ln14_19_reg_1667;
reg   [63:0] zext_ln14_19_reg_1667_pp0_iter1_reg;
wire   [0:0] tmp_88_fu_1035_p3;
reg   [0:0] tmp_88_reg_1673;
wire   [63:0] zext_ln14_20_fu_1054_p1;
reg   [63:0] zext_ln14_20_reg_1679;
reg   [63:0] zext_ln14_20_reg_1679_pp0_iter1_reg;
reg   [63:0] init_0_load_3_reg_1685;
wire   [63:0] bitcast_ln14_23_fu_1060_p1;
reg   [63:0] init_1_load_3_reg_1705;
wire   [63:0] bitcast_ln14_3_fu_1065_p1;
wire   [63:0] bitcast_ln14_4_fu_1070_p1;
wire   [63:0] zext_ln14_21_fu_1119_p1;
reg   [63:0] zext_ln14_21_reg_1750;
reg   [63:0] zext_ln14_21_reg_1750_pp0_iter1_reg;
wire   [63:0] zext_ln14_22_fu_1132_p1;
reg   [63:0] zext_ln14_22_reg_1756;
reg   [63:0] zext_ln14_22_reg_1756_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_15_fu_1138_p1;
reg   [63:0] init_0_load_5_reg_1767;
wire   [63:0] bitcast_ln14_24_fu_1143_p1;
reg   [63:0] init_1_load_5_reg_1787;
wire   [63:0] bitcast_ln14_5_fu_1148_p1;
wire   [63:0] bitcast_ln14_6_fu_1153_p1;
wire   [63:0] bitcast_ln14_16_fu_1193_p1;
reg   [63:0] init_0_load_7_reg_1837;
wire   [63:0] bitcast_ln14_25_fu_1198_p1;
reg   [63:0] init_1_load_7_reg_1847;
wire   [63:0] bitcast_ln14_7_fu_1203_p1;
wire   [63:0] bitcast_ln14_8_fu_1208_p1;
wire   [63:0] bitcast_ln14_17_fu_1255_p1;
wire   [63:0] bitcast_ln14_26_fu_1259_p1;
wire   [63:0] bitcast_ln14_9_fu_1263_p1;
wire   [63:0] bitcast_ln14_10_fu_1268_p1;
wire   [63:0] bitcast_ln14_18_fu_1308_p1;
wire   [63:0] bitcast_ln14_27_fu_1313_p1;
wire   [63:0] bitcast_ln14_11_fu_1318_p1;
wire   [63:0] bitcast_ln14_12_fu_1323_p1;
wire   [63:0] bitcast_ln14_19_fu_1328_p1;
wire   [63:0] bitcast_ln14_28_fu_1350_p1;
wire   [63:0] bitcast_ln14_13_fu_1382_p1;
wire   [63:0] bitcast_ln14_14_fu_1387_p1;
wire   [63:0] bitcast_ln14_20_fu_1392_p1;
wire   [63:0] select_ln14_14_fu_1397_p3;
reg   [63:0] select_ln14_14_reg_1987;
wire   [63:0] bitcast_ln14_29_fu_1404_p1;
wire   [63:0] select_ln14_15_fu_1409_p3;
reg   [63:0] select_ln14_15_reg_1997;
wire   [63:0] bitcast_ln14_21_fu_1416_p1;
wire   [63:0] bitcast_ln14_22_fu_1420_p1;
wire   [63:0] bitcast_ln14_30_fu_1424_p1;
wire   [63:0] bitcast_ln14_31_fu_1428_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_830_p1;
wire   [63:0] zext_ln14_1_fu_850_p1;
wire   [63:0] zext_ln14_2_fu_892_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_910_p1;
wire   [63:0] zext_ln14_4_fu_974_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_995_p1;
wire   [63:0] zext_ln14_6_fu_1087_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1105_p1;
wire   [63:0] zext_ln14_8_fu_1166_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1187_p1;
wire   [63:0] zext_ln14_10_fu_1228_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1249_p1;
wire   [63:0] zext_ln14_12_fu_1281_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_1302_p1;
wire   [63:0] zext_ln14_14_fu_1344_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_1366_p1;
reg   [6:0] s_fu_128;
wire   [6:0] add_ln13_fu_1372_p2;
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
reg    llike_we0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [12:0] llike_1_address0_local;
reg   [63:0] grp_fu_714_p0;
reg   [63:0] grp_fu_714_p1;
reg   [63:0] grp_fu_718_p0;
reg   [63:0] grp_fu_718_p1;
wire   [4:0] lshr_ln9_fu_796_p4;
wire   [10:0] or_ln_fu_822_p3;
wire   [10:0] or_ln1_fu_836_p3;
wire   [10:0] add_ln14_fu_844_p2;
wire   [4:0] or_ln14_1_fu_866_p3;
wire   [10:0] or_ln14_2_fu_880_p3;
wire   [10:0] add_ln14_1_fu_887_p2;
wire   [10:0] or_ln14_3_fu_898_p3;
wire   [10:0] add_ln14_2_fu_905_p2;
wire   [4:0] or_ln14_4_fu_923_p4;
wire   [4:0] or_ln14_7_fu_938_p3;
wire   [10:0] or_ln14_5_fu_966_p4;
wire   [10:0] or_ln14_6_fu_980_p5;
wire   [10:0] add_ln14_3_fu_990_p2;
wire   [4:0] or_ln14_s_fu_1019_p4;
wire   [4:0] or_ln14_12_fu_1042_p5;
wire   [10:0] or_ln14_8_fu_1075_p3;
wire   [10:0] add_ln14_4_fu_1082_p2;
wire   [10:0] or_ln14_9_fu_1093_p3;
wire   [10:0] add_ln14_5_fu_1100_p2;
wire   [4:0] or_ln14_15_fu_1111_p4;
wire   [4:0] or_ln14_18_fu_1125_p3;
wire   [10:0] or_ln14_10_fu_1158_p4;
wire   [10:0] or_ln14_11_fu_1172_p5;
wire   [10:0] add_ln14_6_fu_1182_p2;
wire   [10:0] or_ln14_13_fu_1213_p5;
wire   [10:0] add_ln14_7_fu_1223_p2;
wire   [10:0] or_ln14_14_fu_1234_p5;
wire   [10:0] add_ln14_8_fu_1244_p2;
wire   [10:0] or_ln14_16_fu_1273_p4;
wire   [10:0] or_ln14_17_fu_1287_p5;
wire   [10:0] add_ln14_9_fu_1297_p2;
wire   [10:0] or_ln14_19_fu_1332_p3;
wire   [10:0] add_ln14_10_fu_1339_p2;
wire   [10:0] or_ln14_20_fu_1354_p3;
wire   [10:0] add_ln14_11_fu_1361_p2;
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
#0 s_fu_128 = 7'd0;
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
            reg_748 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_748 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_757 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_757 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_128 <= 7'd0;
    end else if (((tmp_86_reg_1482 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_128 <= add_ln13_fu_1372_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1453[6 : 0] <= conv3_udiv_cast_cast_fu_772_p1[6 : 0];
        p_cast_reg_1468[6 : 0] <= p_cast_fu_776_p1[6 : 0];
        s_1_reg_1473 <= ap_sig_allocacmp_s_1;
        select_ln14_14_reg_1987 <= select_ln14_14_fu_1397_p3;
        select_ln14_15_reg_1997 <= select_ln14_15_fu_1409_p3;
        tmp_14_reg_1527 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_1_reg_1497 <= {{ap_sig_allocacmp_s_1[5:3]}};
        tmp_86_reg_1482 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_86_reg_1482_pp0_iter1_reg <= tmp_86_reg_1482;
        zext_ln14_16_reg_1533[4 : 1] <= zext_ln14_16_fu_874_p1[4 : 1];
        zext_ln14_16_reg_1533_pp0_iter1_reg[4 : 1] <= zext_ln14_16_reg_1533[4 : 1];
        zext_ln9_reg_1486[4 : 0] <= zext_ln9_fu_806_p1[4 : 0];
        zext_ln9_reg_1486_pp0_iter1_reg[4 : 0] <= zext_ln9_reg_1486[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_1685 <= init_0_q0;
        init_1_load_3_reg_1705 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        init_0_load_5_reg_1767 <= init_0_q0;
        init_1_load_5_reg_1787 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_1837 <= init_0_q0;
        init_1_load_7_reg_1847 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_736 <= init_0_q1;
        reg_753 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_740 <= grp_fu_722_p3;
        reg_744 <= grp_fu_729_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_762 <= grp_fu_400_p_dout0;
        reg_767 <= grp_fu_971_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_70_reg_1648 <= {{s_1_reg_1473[5:4]}};
        tmp_74_reg_1662 <= {{s_1_reg_1473[2:1]}};
        tmp_88_reg_1673 <= s_1_reg_1473[32'd2];
        zext_ln14_19_reg_1667[1 : 0] <= zext_ln14_19_fu_1029_p1[1 : 0];
zext_ln14_19_reg_1667[4 : 3] <= zext_ln14_19_fu_1029_p1[4 : 3];
        zext_ln14_19_reg_1667_pp0_iter1_reg[1 : 0] <= zext_ln14_19_reg_1667[1 : 0];
zext_ln14_19_reg_1667_pp0_iter1_reg[4 : 3] <= zext_ln14_19_reg_1667[4 : 3];
        zext_ln14_20_reg_1679[1] <= zext_ln14_20_fu_1054_p1[1];
zext_ln14_20_reg_1679[4 : 3] <= zext_ln14_20_fu_1054_p1[4 : 3];
        zext_ln14_20_reg_1679_pp0_iter1_reg[1] <= zext_ln14_20_reg_1679[1];
zext_ln14_20_reg_1679_pp0_iter1_reg[4 : 3] <= zext_ln14_20_reg_1679[4 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_87_reg_1574 <= s_1_reg_1473[32'd1];
        zext_ln14_17_reg_1581[0] <= zext_ln14_17_fu_932_p1[0];
zext_ln14_17_reg_1581[4 : 2] <= zext_ln14_17_fu_932_p1[4 : 2];
        zext_ln14_17_reg_1581_pp0_iter1_reg[0] <= zext_ln14_17_reg_1581[0];
zext_ln14_17_reg_1581_pp0_iter1_reg[4 : 2] <= zext_ln14_17_reg_1581[4 : 2];
        zext_ln14_18_reg_1587[4 : 2] <= zext_ln14_18_fu_945_p1[4 : 2];
        zext_ln14_18_reg_1587_pp0_iter1_reg[4 : 2] <= zext_ln14_18_reg_1587[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        zext_ln14_21_reg_1750[0] <= zext_ln14_21_fu_1119_p1[0];
zext_ln14_21_reg_1750[4 : 3] <= zext_ln14_21_fu_1119_p1[4 : 3];
        zext_ln14_21_reg_1750_pp0_iter1_reg[0] <= zext_ln14_21_reg_1750[0];
zext_ln14_21_reg_1750_pp0_iter1_reg[4 : 3] <= zext_ln14_21_reg_1750[4 : 3];
        zext_ln14_22_reg_1756[4 : 3] <= zext_ln14_22_fu_1132_p1[4 : 3];
        zext_ln14_22_reg_1756_pp0_iter1_reg[4 : 3] <= zext_ln14_22_reg_1756[4 : 3];
    end
end
always @ (*) begin
    if (((tmp_86_reg_1482 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_86_reg_1482_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_128;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1249_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1187_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_995_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_910_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_850_p1;
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
            emission_0_address1_local = zext_ln14_14_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1166_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1087_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_974_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_892_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_830_p1;
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
            emission_1_address0_local = zext_ln14_15_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_1302_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1249_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1187_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1105_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_995_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_910_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_850_p1;
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
            emission_1_address1_local = zext_ln14_14_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1281_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1166_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1087_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_974_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_892_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_830_p1;
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
        grp_fu_714_p0 = bitcast_ln14_21_fu_1416_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_714_p0 = bitcast_ln14_20_fu_1392_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_714_p0 = bitcast_ln14_19_fu_1328_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_714_p0 = bitcast_ln14_18_fu_1308_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_714_p0 = bitcast_ln14_17_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_714_p0 = bitcast_ln14_16_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_714_p0 = bitcast_ln14_15_fu_1138_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_p0 = bitcast_ln14_fu_951_p1;
    end else begin
        grp_fu_714_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_714_p1 = bitcast_ln14_22_fu_1420_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_714_p1 = bitcast_ln14_13_fu_1382_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_714_p1 = bitcast_ln14_11_fu_1318_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_714_p1 = bitcast_ln14_9_fu_1263_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_714_p1 = bitcast_ln14_7_fu_1203_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_714_p1 = bitcast_ln14_5_fu_1148_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_714_p1 = bitcast_ln14_3_fu_1065_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_714_p1 = bitcast_ln14_1_fu_956_p1;
    end else begin
        grp_fu_714_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_718_p0 = bitcast_ln14_30_fu_1424_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_718_p0 = bitcast_ln14_29_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_718_p0 = bitcast_ln14_28_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_718_p0 = bitcast_ln14_27_fu_1313_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_718_p0 = bitcast_ln14_26_fu_1259_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_718_p0 = bitcast_ln14_25_fu_1198_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_718_p0 = bitcast_ln14_24_fu_1143_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_718_p0 = bitcast_ln14_23_fu_1060_p1;
    end else begin
        grp_fu_718_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_718_p1 = bitcast_ln14_31_fu_1428_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_718_p1 = bitcast_ln14_14_fu_1387_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_718_p1 = bitcast_ln14_12_fu_1323_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_718_p1 = bitcast_ln14_10_fu_1268_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_718_p1 = bitcast_ln14_8_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_718_p1 = bitcast_ln14_6_fu_1153_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_718_p1 = bitcast_ln14_4_fu_1070_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_718_p1 = bitcast_ln14_2_fu_961_p1;
    end else begin
        grp_fu_718_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_22_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_20_fu_1054_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_18_fu_945_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_16_fu_874_p1;
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
            init_0_address1_local = zext_ln14_21_fu_1119_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_19_fu_1029_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_17_fu_932_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_fu_806_p1;
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
            init_1_address0_local = zext_ln14_22_fu_1132_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_20_fu_1054_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_18_fu_945_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_16_fu_874_p1;
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
            init_1_address1_local = zext_ln14_21_fu_1119_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_19_fu_1029_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_17_fu_932_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_fu_806_p1;
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
        llike_1_address0_local = zext_ln14_22_reg_1756_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_21_reg_1750_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_1_address0_local = zext_ln14_20_reg_1679_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_19_reg_1667_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_1_address0_local = zext_ln14_18_reg_1587_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_17_reg_1581_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_1_address0_local = zext_ln14_16_reg_1533_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_reg_1486_pp0_iter1_reg;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_address0_local = zext_ln14_22_reg_1756_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_21_reg_1750_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_address0_local = zext_ln14_20_reg_1679_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_19_reg_1667_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_address0_local = zext_ln14_18_reg_1587_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_17_reg_1581_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_address0_local = zext_ln14_16_reg_1533_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_reg_1486_pp0_iter1_reg;
    end else begin
        llike_address0_local = 'bx;
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
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
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
assign add_ln13_fu_1372_p2 = (s_1_reg_1473 + 7'd16);
assign add_ln14_10_fu_1339_p2 = (or_ln14_19_fu_1332_p3 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_11_fu_1361_p2 = (or_ln14_20_fu_1354_p3 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_1_fu_887_p2 = (or_ln14_2_fu_880_p3 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_2_fu_905_p2 = (or_ln14_3_fu_898_p3 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_3_fu_990_p2 = (or_ln14_6_fu_980_p5 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_4_fu_1082_p2 = (or_ln14_8_fu_1075_p3 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_5_fu_1100_p2 = (or_ln14_9_fu_1093_p3 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_6_fu_1182_p2 = (or_ln14_11_fu_1172_p5 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_7_fu_1223_p2 = (or_ln14_13_fu_1213_p5 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_8_fu_1244_p2 = (or_ln14_14_fu_1234_p5 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_9_fu_1297_p2 = (or_ln14_17_fu_1287_p5 + conv3_udiv_cast_cast_reg_1453);
assign add_ln14_fu_844_p2 = (or_ln1_fu_836_p3 + conv3_udiv_cast_cast_fu_772_p1);
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
assign bitcast_ln14_10_fu_1268_p1 = reg_744;
assign bitcast_ln14_11_fu_1318_p1 = reg_740;
assign bitcast_ln14_12_fu_1323_p1 = reg_744;
assign bitcast_ln14_13_fu_1382_p1 = reg_740;
assign bitcast_ln14_14_fu_1387_p1 = reg_744;
assign bitcast_ln14_15_fu_1138_p1 = reg_748;
assign bitcast_ln14_16_fu_1193_p1 = reg_736;
assign bitcast_ln14_17_fu_1255_p1 = init_0_load_3_reg_1685;
assign bitcast_ln14_18_fu_1308_p1 = reg_748;
assign bitcast_ln14_19_fu_1328_p1 = init_0_load_5_reg_1767;
assign bitcast_ln14_1_fu_956_p1 = reg_740;
assign bitcast_ln14_20_fu_1392_p1 = reg_736;
assign bitcast_ln14_21_fu_1416_p1 = init_0_load_7_reg_1837;
assign bitcast_ln14_22_fu_1420_p1 = select_ln14_14_reg_1987;
assign bitcast_ln14_23_fu_1060_p1 = reg_753;
assign bitcast_ln14_24_fu_1143_p1 = reg_757;
assign bitcast_ln14_25_fu_1198_p1 = reg_753;
assign bitcast_ln14_26_fu_1259_p1 = init_1_load_3_reg_1705;
assign bitcast_ln14_27_fu_1313_p1 = reg_757;
assign bitcast_ln14_28_fu_1350_p1 = init_1_load_5_reg_1787;
assign bitcast_ln14_29_fu_1404_p1 = reg_753;
assign bitcast_ln14_2_fu_961_p1 = reg_744;
assign bitcast_ln14_30_fu_1424_p1 = init_1_load_7_reg_1847;
assign bitcast_ln14_31_fu_1428_p1 = select_ln14_15_reg_1997;
assign bitcast_ln14_3_fu_1065_p1 = reg_740;
assign bitcast_ln14_4_fu_1070_p1 = reg_744;
assign bitcast_ln14_5_fu_1148_p1 = reg_740;
assign bitcast_ln14_6_fu_1153_p1 = reg_744;
assign bitcast_ln14_7_fu_1203_p1 = reg_740;
assign bitcast_ln14_8_fu_1208_p1 = reg_744;
assign bitcast_ln14_9_fu_1263_p1 = reg_740;
assign bitcast_ln14_fu_951_p1 = reg_736;
assign conv3_udiv_cast_cast_fu_772_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_400_p_ce = 1'b1;
assign grp_fu_400_p_din0 = grp_fu_714_p0;
assign grp_fu_400_p_din1 = grp_fu_714_p1;
assign grp_fu_400_p_opcode = 2'd0;
assign grp_fu_722_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_729_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign grp_fu_971_p_ce = 1'b1;
assign grp_fu_971_p_din0 = grp_fu_718_p0;
assign grp_fu_971_p_din1 = grp_fu_718_p1;
assign grp_fu_971_p_opcode = 2'd0;
assign init_0_address0 = init_0_address0_local;
assign init_0_address1 = init_0_address1_local;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = init_1_address0_local;
assign init_1_address1 = init_1_address1_local;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_767;
assign llike_1_we0 = llike_1_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_762;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_796_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_10_fu_1158_p4 = {{{tmp_70_reg_1648}, {1'd1}}, {p_cast_reg_1468}};
assign or_ln14_11_fu_1172_p5 = {{{{tmp_70_reg_1648}, {1'd1}}, {tmp_74_reg_1662}}, {6'd32}};
assign or_ln14_12_fu_1042_p5 = {{{{tmp_70_fu_1001_p4}, {1'd1}}, {tmp_88_fu_1035_p3}}, {1'd1}};
assign or_ln14_13_fu_1213_p5 = {{{{tmp_70_reg_1648}, {1'd1}}, {tmp_88_reg_1673}}, {7'd64}};
assign or_ln14_14_fu_1234_p5 = {{{{tmp_70_reg_1648}, {1'd1}}, {tmp_88_reg_1673}}, {7'd96}};
assign or_ln14_15_fu_1111_p4 = {{{tmp_70_reg_1648}, {2'd3}}, {tmp_87_reg_1574}};
assign or_ln14_16_fu_1273_p4 = {{{tmp_70_reg_1648}, {2'd3}}, {conv3_udiv}};
assign or_ln14_17_fu_1287_p5 = {{{{tmp_70_reg_1648}, {2'd3}}, {tmp_87_reg_1574}}, {6'd32}};
assign or_ln14_18_fu_1125_p3 = {{tmp_70_reg_1648}, {3'd7}};
assign or_ln14_19_fu_1332_p3 = {{tmp_70_reg_1648}, {9'd448}};
assign or_ln14_1_fu_866_p3 = {{tmp_14_fu_856_p4}, {1'd1}};
assign or_ln14_20_fu_1354_p3 = {{tmp_70_reg_1648}, {9'd480}};
assign or_ln14_2_fu_880_p3 = {{tmp_14_reg_1527}, {7'd64}};
assign or_ln14_3_fu_898_p3 = {{tmp_14_reg_1527}, {7'd96}};
assign or_ln14_4_fu_923_p4 = {{{tmp_1_reg_1497}, {1'd1}}, {tmp_87_fu_916_p3}};
assign or_ln14_5_fu_966_p4 = {{{tmp_1_reg_1497}, {1'd1}}, {conv3_udiv}};
assign or_ln14_6_fu_980_p5 = {{{{tmp_1_reg_1497}, {1'd1}}, {tmp_87_reg_1574}}, {6'd32}};
assign or_ln14_7_fu_938_p3 = {{tmp_1_reg_1497}, {2'd3}};
assign or_ln14_8_fu_1075_p3 = {{tmp_1_reg_1497}, {8'd192}};
assign or_ln14_9_fu_1093_p3 = {{tmp_1_reg_1497}, {8'd224}};
assign or_ln14_s_fu_1019_p4 = {{{tmp_70_fu_1001_p4}, {1'd1}}, {tmp_74_fu_1010_p4}};
assign or_ln1_fu_836_p3 = {{lshr_ln9_fu_796_p4}, {6'd32}};
assign or_ln_fu_822_p3 = {{tmp_1_fu_812_p4}, {p_cast_fu_776_p1}};
assign p_cast_fu_776_p1 = empty_11;
assign select_ln14_14_fu_1397_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_15_fu_1409_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign tmp_14_fu_856_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_1_fu_812_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_70_fu_1001_p4 = {{s_1_reg_1473[5:4]}};
assign tmp_74_fu_1010_p4 = {{s_1_reg_1473[2:1]}};
assign tmp_87_fu_916_p3 = s_1_reg_1473[32'd1];
assign tmp_88_fu_1035_p3 = s_1_reg_1473[32'd2];
assign zext_ln14_10_fu_1228_p1 = add_ln14_7_fu_1223_p2;
assign zext_ln14_11_fu_1249_p1 = add_ln14_8_fu_1244_p2;
assign zext_ln14_12_fu_1281_p1 = or_ln14_16_fu_1273_p4;
assign zext_ln14_13_fu_1302_p1 = add_ln14_9_fu_1297_p2;
assign zext_ln14_14_fu_1344_p1 = add_ln14_10_fu_1339_p2;
assign zext_ln14_15_fu_1366_p1 = add_ln14_11_fu_1361_p2;
assign zext_ln14_16_fu_874_p1 = or_ln14_1_fu_866_p3;
assign zext_ln14_17_fu_932_p1 = or_ln14_4_fu_923_p4;
assign zext_ln14_18_fu_945_p1 = or_ln14_7_fu_938_p3;
assign zext_ln14_19_fu_1029_p1 = or_ln14_s_fu_1019_p4;
assign zext_ln14_1_fu_850_p1 = add_ln14_fu_844_p2;
assign zext_ln14_20_fu_1054_p1 = or_ln14_12_fu_1042_p5;
assign zext_ln14_21_fu_1119_p1 = or_ln14_15_fu_1111_p4;
assign zext_ln14_22_fu_1132_p1 = or_ln14_18_fu_1125_p3;
assign zext_ln14_2_fu_892_p1 = add_ln14_1_fu_887_p2;
assign zext_ln14_3_fu_910_p1 = add_ln14_2_fu_905_p2;
assign zext_ln14_4_fu_974_p1 = or_ln14_5_fu_966_p4;
assign zext_ln14_5_fu_995_p1 = add_ln14_3_fu_990_p2;
assign zext_ln14_6_fu_1087_p1 = add_ln14_4_fu_1082_p2;
assign zext_ln14_7_fu_1105_p1 = add_ln14_5_fu_1100_p2;
assign zext_ln14_8_fu_1166_p1 = or_ln14_10_fu_1158_p4;
assign zext_ln14_9_fu_1187_p1 = add_ln14_6_fu_1182_p2;
assign zext_ln14_fu_830_p1 = or_ln_fu_822_p3;
assign zext_ln9_fu_806_p1 = lshr_ln9_fu_796_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1453[10:7] <= 4'b0000;
    p_cast_reg_1468[7] <= 1'b0;
    zext_ln9_reg_1486[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln9_reg_1486_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_16_reg_1533[0] <= 1'b1;
    zext_ln14_16_reg_1533[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_16_reg_1533_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_16_reg_1533_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_1581[1] <= 1'b1;
    zext_ln14_17_reg_1581[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_1581_pp0_iter1_reg[1] <= 1'b1;
    zext_ln14_17_reg_1581_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_18_reg_1587[1:0] <= 2'b11;
    zext_ln14_18_reg_1587[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_18_reg_1587_pp0_iter1_reg[1:0] <= 2'b11;
    zext_ln14_18_reg_1587_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_1667[2] <= 1'b1;
    zext_ln14_19_reg_1667[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_19_reg_1667_pp0_iter1_reg[2] <= 1'b1;
    zext_ln14_19_reg_1667_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_20_reg_1679[0] <= 1'b1;
    zext_ln14_20_reg_1679[2:2] <= 1'b1;
    zext_ln14_20_reg_1679[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_20_reg_1679_pp0_iter1_reg[0] <= 1'b1;
    zext_ln14_20_reg_1679_pp0_iter1_reg[2:2] <= 1'b1;
    zext_ln14_20_reg_1679_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_21_reg_1750[2:1] <= 2'b11;
    zext_ln14_21_reg_1750[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_21_reg_1750_pp0_iter1_reg[2:1] <= 2'b11;
    zext_ln14_21_reg_1750_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_22_reg_1756[2:0] <= 3'b111;
    zext_ln14_22_reg_1756[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln14_22_reg_1756_pp0_iter1_reg[2:0] <= 3'b111;
    zext_ln14_22_reg_1756_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 