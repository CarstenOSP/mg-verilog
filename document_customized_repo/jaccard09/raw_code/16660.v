module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,empty_11,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,conv3_udiv,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,grp_fu_453_p_din0,grp_fu_453_p_din1,grp_fu_453_p_opcode,grp_fu_453_p_dout0,grp_fu_453_p_ce,grp_fu_1050_p_din0,grp_fu_1050_p_din1,grp_fu_1050_p_opcode,grp_fu_1050_p_dout0,grp_fu_1050_p_ce); 
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
output  [11:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
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
output  [63:0] grp_fu_453_p_din0;
output  [63:0] grp_fu_453_p_din1;
output  [1:0] grp_fu_453_p_opcode;
input  [63:0] grp_fu_453_p_dout0;
output   grp_fu_453_p_ce;
output  [63:0] grp_fu_1050_p_din0;
output  [63:0] grp_fu_1050_p_din1;
output  [1:0] grp_fu_1050_p_opcode;
input  [63:0] grp_fu_1050_p_dout0;
output   grp_fu_1050_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_95_reg_1549;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_756;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_742_p3;
reg   [63:0] reg_760;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] grp_fu_749_p3;
reg   [63:0] reg_764;
reg   [63:0] reg_768;
reg   [63:0] reg_773;
reg   [63:0] reg_777;
reg   [63:0] reg_782;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_788;
wire   [10:0] conv3_udiv_cast_cast_fu_794_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_1520;
wire   [7:0] p_cast_fu_798_p1;
reg   [7:0] p_cast_reg_1535;
reg   [6:0] s_1_reg_1540;
reg   [0:0] tmp_95_reg_1549_pp0_iter1_reg;
wire   [3:0] lshr_ln9_fu_818_p4;
reg   [3:0] lshr_ln9_reg_1553;
reg   [3:0] lshr_ln9_reg_1553_pp0_iter1_reg;
wire   [2:0] tmp_1_fu_844_p4;
reg   [2:0] tmp_1_reg_1565;
reg   [2:0] tmp_1_reg_1565_pp0_iter1_reg;
wire   [0:0] tmp_96_fu_938_p3;
reg   [0:0] tmp_96_reg_1631;
wire   [63:0] bitcast_ln14_fu_973_p1;
wire   [63:0] bitcast_ln14_1_fu_978_p1;
wire   [63:0] bitcast_ln14_2_fu_983_p1;
wire   [1:0] tmp_86_fu_1023_p4;
reg   [1:0] tmp_86_reg_1693;
reg   [1:0] tmp_86_reg_1693_pp0_iter1_reg;
wire   [0:0] tmp_97_fu_1032_p3;
reg   [0:0] tmp_97_reg_1709;
reg   [0:0] tmp_97_reg_1709_pp0_iter1_reg;
wire   [1:0] tmp_s_fu_1039_p4;
reg   [1:0] tmp_s_reg_1716;
reg   [63:0] init_0_load_3_reg_1721;
wire   [63:0] bitcast_ln14_23_fu_1082_p1;
reg   [63:0] init_1_load_3_reg_1741;
wire   [63:0] bitcast_ln14_3_fu_1087_p1;
wire   [63:0] bitcast_ln14_4_fu_1092_p1;
wire   [63:0] bitcast_ln14_15_fu_1160_p1;
reg   [63:0] init_0_load_5_reg_1791;
wire   [63:0] bitcast_ln14_24_fu_1165_p1;
reg   [63:0] init_1_load_5_reg_1811;
wire   [63:0] bitcast_ln14_5_fu_1170_p1;
wire   [63:0] bitcast_ln14_6_fu_1175_p1;
wire   [63:0] bitcast_ln14_16_fu_1215_p1;
reg   [63:0] init_0_load_7_reg_1861;
wire   [63:0] bitcast_ln14_25_fu_1220_p1;
reg   [63:0] init_1_load_7_reg_1871;
wire   [63:0] bitcast_ln14_7_fu_1225_p1;
wire   [63:0] bitcast_ln14_8_fu_1230_p1;
wire   [63:0] bitcast_ln14_17_fu_1277_p1;
wire   [63:0] bitcast_ln14_26_fu_1281_p1;
wire   [63:0] bitcast_ln14_9_fu_1285_p1;
wire   [63:0] bitcast_ln14_10_fu_1290_p1;
wire   [63:0] bitcast_ln14_18_fu_1330_p1;
wire   [63:0] bitcast_ln14_27_fu_1335_p1;
wire   [63:0] bitcast_ln14_11_fu_1340_p1;
wire   [63:0] bitcast_ln14_12_fu_1345_p1;
wire   [63:0] bitcast_ln14_19_fu_1350_p1;
wire   [63:0] bitcast_ln14_28_fu_1372_p1;
wire   [63:0] bitcast_ln14_13_fu_1404_p1;
wire   [63:0] bitcast_ln14_14_fu_1409_p1;
wire   [63:0] bitcast_ln14_20_fu_1414_p1;
wire   [63:0] select_ln14_14_fu_1419_p3;
reg   [63:0] select_ln14_14_reg_2011;
wire   [63:0] bitcast_ln14_29_fu_1426_p1;
wire   [63:0] select_ln14_15_fu_1431_p3;
reg   [63:0] select_ln14_15_reg_2021;
wire   [63:0] bitcast_ln14_21_fu_1438_p1;
wire   [63:0] bitcast_ln14_22_fu_1442_p1;
wire   [63:0] bitcast_ln14_30_fu_1446_p1;
wire   [63:0] bitcast_ln14_31_fu_1450_p1;
wire   [63:0] zext_ln9_fu_1454_p1;
reg   [63:0] zext_ln9_reg_2046;
wire   [63:0] zext_ln14_17_fu_1466_p1;
reg   [63:0] zext_ln14_17_reg_2052;
wire   [63:0] zext_ln14_20_fu_1480_p1;
reg   [63:0] zext_ln14_20_reg_2058;
wire   [63:0] zext_ln14_23_fu_1493_p1;
reg   [63:0] zext_ln14_23_reg_2064;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln9_1_fu_838_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_862_p1;
wire   [63:0] zext_ln14_1_fu_882_p1;
wire   [63:0] zext_ln14_16_fu_896_p1;
wire   [63:0] zext_ln14_2_fu_914_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_932_p1;
wire   [63:0] zext_ln14_18_fu_954_p1;
wire   [63:0] zext_ln14_19_fu_967_p1;
wire   [63:0] zext_ln14_4_fu_996_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_5_fu_1017_p1;
wire   [63:0] zext_ln14_21_fu_1058_p1;
wire   [63:0] zext_ln14_22_fu_1076_p1;
wire   [63:0] zext_ln14_6_fu_1109_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_7_fu_1127_p1;
wire   [63:0] zext_ln14_24_fu_1141_p1;
wire   [63:0] zext_ln14_25_fu_1154_p1;
wire   [63:0] zext_ln14_8_fu_1188_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_9_fu_1209_p1;
wire   [63:0] zext_ln14_10_fu_1250_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_11_fu_1271_p1;
wire   [63:0] zext_ln14_12_fu_1303_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_13_fu_1324_p1;
wire   [63:0] zext_ln14_14_fu_1366_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_15_fu_1388_p1;
reg   [6:0] s_fu_138;
wire   [6:0] add_ln13_fu_1394_p2;
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
reg   [11:0] llike_address0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg   [63:0] grp_fu_734_p0;
reg   [63:0] grp_fu_734_p1;
reg   [63:0] grp_fu_738_p0;
reg   [63:0] grp_fu_738_p1;
wire   [4:0] lshr_ln9_1_fu_828_p4;
wire   [10:0] or_ln_fu_854_p3;
wire   [10:0] or_ln1_fu_868_p3;
wire   [10:0] add_ln14_fu_876_p2;
wire   [4:0] or_ln14_1_fu_888_p3;
wire   [10:0] or_ln14_2_fu_902_p3;
wire   [10:0] add_ln14_1_fu_909_p2;
wire   [10:0] or_ln14_3_fu_920_p3;
wire   [10:0] add_ln14_2_fu_927_p2;
wire   [4:0] or_ln14_5_fu_945_p4;
wire   [4:0] or_ln14_8_fu_960_p3;
wire   [10:0] or_ln14_6_fu_988_p4;
wire   [10:0] or_ln14_7_fu_1002_p5;
wire   [10:0] add_ln14_3_fu_1012_p2;
wire   [4:0] or_ln14_11_fu_1048_p4;
wire   [4:0] or_ln14_14_fu_1064_p5;
wire   [10:0] or_ln14_9_fu_1097_p3;
wire   [10:0] add_ln14_4_fu_1104_p2;
wire   [10:0] or_ln14_s_fu_1115_p3;
wire   [10:0] add_ln14_5_fu_1122_p2;
wire   [4:0] or_ln14_18_fu_1133_p4;
wire   [4:0] or_ln14_21_fu_1147_p3;
wire   [10:0] or_ln14_12_fu_1180_p4;
wire   [10:0] or_ln14_13_fu_1194_p5;
wire   [10:0] add_ln14_6_fu_1204_p2;
wire   [10:0] or_ln14_15_fu_1235_p5;
wire   [10:0] add_ln14_7_fu_1245_p2;
wire   [10:0] or_ln14_16_fu_1256_p5;
wire   [10:0] add_ln14_8_fu_1266_p2;
wire   [10:0] or_ln14_19_fu_1295_p4;
wire   [10:0] or_ln14_20_fu_1309_p5;
wire   [10:0] add_ln14_9_fu_1319_p2;
wire   [10:0] or_ln14_22_fu_1354_p3;
wire   [10:0] add_ln14_10_fu_1361_p2;
wire   [10:0] or_ln14_23_fu_1376_p3;
wire   [10:0] add_ln14_11_fu_1383_p2;
wire   [3:0] or_ln14_4_fu_1459_p3;
wire   [3:0] or_ln14_10_fu_1472_p4;
wire   [3:0] or_ln14_17_fu_1486_p3;
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
#0 s_fu_138 = 7'd0;
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
            reg_768 <= init_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_768 <= init_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            reg_777 <= init_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_777 <= init_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_138 <= 7'd0;
    end else if (((tmp_95_reg_1549 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_138 <= add_ln13_fu_1394_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_1520[6 : 0] <= conv3_udiv_cast_cast_fu_794_p1[6 : 0];
        lshr_ln9_reg_1553 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_reg_1553_pp0_iter1_reg <= lshr_ln9_reg_1553;
        p_cast_reg_1535[6 : 0] <= p_cast_fu_798_p1[6 : 0];
        s_1_reg_1540 <= ap_sig_allocacmp_s_1;
        select_ln14_14_reg_2011 <= select_ln14_14_fu_1419_p3;
        select_ln14_15_reg_2021 <= select_ln14_15_fu_1431_p3;
        tmp_1_reg_1565 <= {{ap_sig_allocacmp_s_1[5:3]}};
        tmp_1_reg_1565_pp0_iter1_reg <= tmp_1_reg_1565;
        tmp_95_reg_1549 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_95_reg_1549_pp0_iter1_reg <= tmp_95_reg_1549;
        zext_ln14_23_reg_2064[3 : 2] <= zext_ln14_23_fu_1493_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        init_0_load_3_reg_1721 <= init_0_q0;
        init_1_load_3_reg_1741 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        init_0_load_5_reg_1791 <= init_0_q0;
        init_1_load_5_reg_1811 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        init_0_load_7_reg_1861 <= init_0_q0;
        init_1_load_7_reg_1871 <= init_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_756 <= init_0_q1;
        reg_773 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_760 <= grp_fu_742_p3;
        reg_764 <= grp_fu_749_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_782 <= grp_fu_453_p_dout0;
        reg_788 <= grp_fu_1050_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_86_reg_1693 <= {{s_1_reg_1540[5:4]}};
        tmp_86_reg_1693_pp0_iter1_reg <= tmp_86_reg_1693;
        tmp_97_reg_1709 <= s_1_reg_1540[32'd2];
        tmp_97_reg_1709_pp0_iter1_reg <= tmp_97_reg_1709;
        tmp_s_reg_1716 <= {{s_1_reg_1540[2:1]}};
        zext_ln9_reg_2046[3 : 0] <= zext_ln9_fu_1454_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_96_reg_1631 <= s_1_reg_1540[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        zext_ln14_17_reg_2052[3 : 1] <= zext_ln14_17_fu_1466_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln14_20_reg_2058[0] <= zext_ln14_20_fu_1480_p1[0];
zext_ln14_20_reg_2058[3 : 2] <= zext_ln14_20_fu_1480_p1[3 : 2];
    end
end
always @ (*) begin
    if (((tmp_95_reg_1549 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_95_reg_1549_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_138;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_0_address0_local = zext_ln14_15_fu_1388_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address0_local = zext_ln14_13_fu_1324_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address0_local = zext_ln14_11_fu_1271_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address0_local = zext_ln14_9_fu_1209_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address0_local = zext_ln14_7_fu_1127_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address0_local = zext_ln14_5_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_932_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_882_p1;
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
            emission_0_address1_local = zext_ln14_14_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_0_address1_local = zext_ln14_12_fu_1303_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_0_address1_local = zext_ln14_10_fu_1250_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_0_address1_local = zext_ln14_8_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_0_address1_local = zext_ln14_6_fu_1109_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_0_address1_local = zext_ln14_4_fu_996_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_914_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_862_p1;
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
            emission_1_address0_local = zext_ln14_15_fu_1388_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address0_local = zext_ln14_13_fu_1324_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address0_local = zext_ln14_11_fu_1271_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address0_local = zext_ln14_9_fu_1209_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address0_local = zext_ln14_7_fu_1127_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address0_local = zext_ln14_5_fu_1017_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_932_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_882_p1;
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
            emission_1_address1_local = zext_ln14_14_fu_1366_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_1_address1_local = zext_ln14_12_fu_1303_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_1_address1_local = zext_ln14_10_fu_1250_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_1_address1_local = zext_ln14_8_fu_1188_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_1_address1_local = zext_ln14_6_fu_1109_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_1_address1_local = zext_ln14_4_fu_996_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_914_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_862_p1;
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
        grp_fu_734_p0 = bitcast_ln14_21_fu_1438_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_734_p0 = bitcast_ln14_20_fu_1414_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_734_p0 = bitcast_ln14_19_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_734_p0 = bitcast_ln14_18_fu_1330_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_734_p0 = bitcast_ln14_17_fu_1277_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_734_p0 = bitcast_ln14_16_fu_1215_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_734_p0 = bitcast_ln14_15_fu_1160_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_734_p0 = bitcast_ln14_fu_973_p1;
    end else begin
        grp_fu_734_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_734_p1 = bitcast_ln14_22_fu_1442_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_734_p1 = bitcast_ln14_13_fu_1404_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_734_p1 = bitcast_ln14_11_fu_1340_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_734_p1 = bitcast_ln14_9_fu_1285_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_734_p1 = bitcast_ln14_7_fu_1225_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_734_p1 = bitcast_ln14_5_fu_1170_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_734_p1 = bitcast_ln14_3_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_734_p1 = bitcast_ln14_1_fu_978_p1;
    end else begin
        grp_fu_734_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_738_p0 = bitcast_ln14_30_fu_1446_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_738_p0 = bitcast_ln14_29_fu_1426_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_738_p0 = bitcast_ln14_28_fu_1372_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_738_p0 = bitcast_ln14_27_fu_1335_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_738_p0 = bitcast_ln14_26_fu_1281_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_738_p0 = bitcast_ln14_25_fu_1220_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_738_p0 = bitcast_ln14_24_fu_1165_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_738_p0 = bitcast_ln14_23_fu_1082_p1;
    end else begin
        grp_fu_738_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_738_p1 = bitcast_ln14_31_fu_1450_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_738_p1 = bitcast_ln14_14_fu_1409_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_738_p1 = bitcast_ln14_12_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_738_p1 = bitcast_ln14_10_fu_1290_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_738_p1 = bitcast_ln14_8_fu_1230_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_738_p1 = bitcast_ln14_6_fu_1175_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_738_p1 = bitcast_ln14_4_fu_1092_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_738_p1 = bitcast_ln14_2_fu_983_p1;
    end else begin
        grp_fu_738_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_0_address0_local = zext_ln14_25_fu_1154_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address0_local = zext_ln14_22_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address0_local = zext_ln14_19_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address0_local = zext_ln14_16_fu_896_p1;
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
            init_0_address1_local = zext_ln14_24_fu_1141_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_0_address1_local = zext_ln14_21_fu_1058_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_0_address1_local = zext_ln14_18_fu_954_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_0_address1_local = zext_ln9_1_fu_838_p1;
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
            init_1_address0_local = zext_ln14_25_fu_1154_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address0_local = zext_ln14_22_fu_1076_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address0_local = zext_ln14_19_fu_967_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address0_local = zext_ln14_16_fu_896_p1;
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
            init_1_address1_local = zext_ln14_24_fu_1141_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_1_address1_local = zext_ln14_21_fu_1058_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_1_address1_local = zext_ln14_18_fu_954_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_1_address1_local = zext_ln9_1_fu_838_p1;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_23_fu_1493_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_20_fu_1480_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_17_fu_1466_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_fu_1454_p1;
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_address0_local = zext_ln14_23_reg_2064;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_2_address0_local = zext_ln14_20_reg_2058;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_2_address0_local = zext_ln14_17_reg_2052;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_address0_local = zext_ln9_reg_2046;
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_address0_local = zext_ln14_23_reg_2064;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_3_address0_local = zext_ln14_20_reg_2058;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_3_address0_local = zext_ln14_17_reg_2052;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_address0_local = zext_ln9_reg_2046;
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_address0_local = zext_ln14_23_fu_1493_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_20_fu_1480_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_17_fu_1466_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_fu_1454_p1;
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
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
assign add_ln13_fu_1394_p2 = (s_1_reg_1540 + 7'd16);
assign add_ln14_10_fu_1361_p2 = (or_ln14_22_fu_1354_p3 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_11_fu_1383_p2 = (or_ln14_23_fu_1376_p3 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_1_fu_909_p2 = (or_ln14_2_fu_902_p3 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_2_fu_927_p2 = (or_ln14_3_fu_920_p3 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_3_fu_1012_p2 = (or_ln14_7_fu_1002_p5 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_4_fu_1104_p2 = (or_ln14_9_fu_1097_p3 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_5_fu_1122_p2 = (or_ln14_s_fu_1115_p3 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_6_fu_1204_p2 = (or_ln14_13_fu_1194_p5 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_7_fu_1245_p2 = (or_ln14_15_fu_1235_p5 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_8_fu_1266_p2 = (or_ln14_16_fu_1256_p5 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_9_fu_1319_p2 = (or_ln14_20_fu_1309_p5 + conv3_udiv_cast_cast_reg_1520);
assign add_ln14_fu_876_p2 = (or_ln1_fu_868_p3 + conv3_udiv_cast_cast_fu_794_p1);
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
assign bitcast_ln14_10_fu_1290_p1 = reg_764;
assign bitcast_ln14_11_fu_1340_p1 = reg_760;
assign bitcast_ln14_12_fu_1345_p1 = reg_764;
assign bitcast_ln14_13_fu_1404_p1 = reg_760;
assign bitcast_ln14_14_fu_1409_p1 = reg_764;
assign bitcast_ln14_15_fu_1160_p1 = reg_768;
assign bitcast_ln14_16_fu_1215_p1 = reg_756;
assign bitcast_ln14_17_fu_1277_p1 = init_0_load_3_reg_1721;
assign bitcast_ln14_18_fu_1330_p1 = reg_768;
assign bitcast_ln14_19_fu_1350_p1 = init_0_load_5_reg_1791;
assign bitcast_ln14_1_fu_978_p1 = reg_760;
assign bitcast_ln14_20_fu_1414_p1 = reg_756;
assign bitcast_ln14_21_fu_1438_p1 = init_0_load_7_reg_1861;
assign bitcast_ln14_22_fu_1442_p1 = select_ln14_14_reg_2011;
assign bitcast_ln14_23_fu_1082_p1 = reg_773;
assign bitcast_ln14_24_fu_1165_p1 = reg_777;
assign bitcast_ln14_25_fu_1220_p1 = reg_773;
assign bitcast_ln14_26_fu_1281_p1 = init_1_load_3_reg_1741;
assign bitcast_ln14_27_fu_1335_p1 = reg_777;
assign bitcast_ln14_28_fu_1372_p1 = init_1_load_5_reg_1811;
assign bitcast_ln14_29_fu_1426_p1 = reg_773;
assign bitcast_ln14_2_fu_983_p1 = reg_764;
assign bitcast_ln14_30_fu_1446_p1 = init_1_load_7_reg_1871;
assign bitcast_ln14_31_fu_1450_p1 = select_ln14_15_reg_2021;
assign bitcast_ln14_3_fu_1087_p1 = reg_760;
assign bitcast_ln14_4_fu_1092_p1 = reg_764;
assign bitcast_ln14_5_fu_1170_p1 = reg_760;
assign bitcast_ln14_6_fu_1175_p1 = reg_764;
assign bitcast_ln14_7_fu_1225_p1 = reg_760;
assign bitcast_ln14_8_fu_1230_p1 = reg_764;
assign bitcast_ln14_9_fu_1285_p1 = reg_760;
assign bitcast_ln14_fu_973_p1 = reg_756;
assign conv3_udiv_cast_cast_fu_794_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_1050_p_ce = 1'b1;
assign grp_fu_1050_p_din0 = grp_fu_738_p0;
assign grp_fu_1050_p_din1 = grp_fu_738_p1;
assign grp_fu_1050_p_opcode = 2'd0;
assign grp_fu_453_p_ce = 1'b1;
assign grp_fu_453_p_din0 = grp_fu_734_p0;
assign grp_fu_453_p_din1 = grp_fu_734_p1;
assign grp_fu_453_p_opcode = 2'd0;
assign grp_fu_742_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign grp_fu_749_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
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
assign llike_1_d0 = reg_788;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_782;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_788;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_782;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_828_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign lshr_ln9_fu_818_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln14_10_fu_1472_p4 = {{{tmp_86_reg_1693_pp0_iter1_reg}, {1'd1}}, {tmp_97_reg_1709_pp0_iter1_reg}};
assign or_ln14_11_fu_1048_p4 = {{{tmp_86_fu_1023_p4}, {1'd1}}, {tmp_s_fu_1039_p4}};
assign or_ln14_12_fu_1180_p4 = {{{tmp_86_reg_1693}, {1'd1}}, {p_cast_reg_1535}};
assign or_ln14_13_fu_1194_p5 = {{{{tmp_86_reg_1693}, {1'd1}}, {tmp_s_reg_1716}}, {6'd32}};
assign or_ln14_14_fu_1064_p5 = {{{{tmp_86_fu_1023_p4}, {1'd1}}, {tmp_97_fu_1032_p3}}, {1'd1}};
assign or_ln14_15_fu_1235_p5 = {{{{tmp_86_reg_1693}, {1'd1}}, {tmp_97_reg_1709}}, {7'd64}};
assign or_ln14_16_fu_1256_p5 = {{{{tmp_86_reg_1693}, {1'd1}}, {tmp_97_reg_1709}}, {7'd96}};
assign or_ln14_17_fu_1486_p3 = {{tmp_86_reg_1693_pp0_iter1_reg}, {2'd3}};
assign or_ln14_18_fu_1133_p4 = {{{tmp_86_reg_1693}, {2'd3}}, {tmp_96_reg_1631}};
assign or_ln14_19_fu_1295_p4 = {{{tmp_86_reg_1693}, {2'd3}}, {conv3_udiv}};
assign or_ln14_1_fu_888_p3 = {{lshr_ln9_fu_818_p4}, {1'd1}};
assign or_ln14_20_fu_1309_p5 = {{{{tmp_86_reg_1693}, {2'd3}}, {tmp_96_reg_1631}}, {6'd32}};
assign or_ln14_21_fu_1147_p3 = {{tmp_86_reg_1693}, {3'd7}};
assign or_ln14_22_fu_1354_p3 = {{tmp_86_reg_1693}, {9'd448}};
assign or_ln14_23_fu_1376_p3 = {{tmp_86_reg_1693}, {9'd480}};
assign or_ln14_2_fu_902_p3 = {{lshr_ln9_reg_1553}, {7'd64}};
assign or_ln14_3_fu_920_p3 = {{lshr_ln9_reg_1553}, {7'd96}};
assign or_ln14_4_fu_1459_p3 = {{tmp_1_reg_1565_pp0_iter1_reg}, {1'd1}};
assign or_ln14_5_fu_945_p4 = {{{tmp_1_reg_1565}, {1'd1}}, {tmp_96_fu_938_p3}};
assign or_ln14_6_fu_988_p4 = {{{tmp_1_reg_1565}, {1'd1}}, {conv3_udiv}};
assign or_ln14_7_fu_1002_p5 = {{{{tmp_1_reg_1565}, {1'd1}}, {tmp_96_reg_1631}}, {6'd32}};
assign or_ln14_8_fu_960_p3 = {{tmp_1_reg_1565}, {2'd3}};
assign or_ln14_9_fu_1097_p3 = {{tmp_1_reg_1565}, {8'd192}};
assign or_ln14_s_fu_1115_p3 = {{tmp_1_reg_1565}, {8'd224}};
assign or_ln1_fu_868_p3 = {{lshr_ln9_1_fu_828_p4}, {6'd32}};
assign or_ln_fu_854_p3 = {{tmp_1_fu_844_p4}, {p_cast_fu_798_p1}};
assign p_cast_fu_798_p1 = empty_11;
assign select_ln14_14_fu_1419_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_15_fu_1431_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign tmp_1_fu_844_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign tmp_86_fu_1023_p4 = {{s_1_reg_1540[5:4]}};
assign tmp_96_fu_938_p3 = s_1_reg_1540[32'd1];
assign tmp_97_fu_1032_p3 = s_1_reg_1540[32'd2];
assign tmp_s_fu_1039_p4 = {{s_1_reg_1540[2:1]}};
assign zext_ln14_10_fu_1250_p1 = add_ln14_7_fu_1245_p2;
assign zext_ln14_11_fu_1271_p1 = add_ln14_8_fu_1266_p2;
assign zext_ln14_12_fu_1303_p1 = or_ln14_19_fu_1295_p4;
assign zext_ln14_13_fu_1324_p1 = add_ln14_9_fu_1319_p2;
assign zext_ln14_14_fu_1366_p1 = add_ln14_10_fu_1361_p2;
assign zext_ln14_15_fu_1388_p1 = add_ln14_11_fu_1383_p2;
assign zext_ln14_16_fu_896_p1 = or_ln14_1_fu_888_p3;
assign zext_ln14_17_fu_1466_p1 = or_ln14_4_fu_1459_p3;
assign zext_ln14_18_fu_954_p1 = or_ln14_5_fu_945_p4;
assign zext_ln14_19_fu_967_p1 = or_ln14_8_fu_960_p3;
assign zext_ln14_1_fu_882_p1 = add_ln14_fu_876_p2;
assign zext_ln14_20_fu_1480_p1 = or_ln14_10_fu_1472_p4;
assign zext_ln14_21_fu_1058_p1 = or_ln14_11_fu_1048_p4;
assign zext_ln14_22_fu_1076_p1 = or_ln14_14_fu_1064_p5;
assign zext_ln14_23_fu_1493_p1 = or_ln14_17_fu_1486_p3;
assign zext_ln14_24_fu_1141_p1 = or_ln14_18_fu_1133_p4;
assign zext_ln14_25_fu_1154_p1 = or_ln14_21_fu_1147_p3;
assign zext_ln14_2_fu_914_p1 = add_ln14_1_fu_909_p2;
assign zext_ln14_3_fu_932_p1 = add_ln14_2_fu_927_p2;
assign zext_ln14_4_fu_996_p1 = or_ln14_6_fu_988_p4;
assign zext_ln14_5_fu_1017_p1 = add_ln14_3_fu_1012_p2;
assign zext_ln14_6_fu_1109_p1 = add_ln14_4_fu_1104_p2;
assign zext_ln14_7_fu_1127_p1 = add_ln14_5_fu_1122_p2;
assign zext_ln14_8_fu_1188_p1 = or_ln14_12_fu_1180_p4;
assign zext_ln14_9_fu_1209_p1 = add_ln14_6_fu_1204_p2;
assign zext_ln14_fu_862_p1 = or_ln_fu_854_p3;
assign zext_ln9_1_fu_838_p1 = lshr_ln9_1_fu_828_p4;
assign zext_ln9_fu_1454_p1 = lshr_ln9_reg_1553_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_1520[10:7] <= 4'b0000;
    p_cast_reg_1535[7] <= 1'b0;
    zext_ln9_reg_2046[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_17_reg_2052[0] <= 1'b1;
    zext_ln14_17_reg_2052[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_20_reg_2058[1] <= 1'b1;
    zext_ln14_20_reg_2058[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_23_reg_2064[1:0] <= 2'b11;
    zext_ln14_23_reg_2064[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 