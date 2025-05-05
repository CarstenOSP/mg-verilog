module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_301_p_din0,grp_fu_301_p_din1,grp_fu_301_p_opcode,grp_fu_301_p_dout0,grp_fu_301_p_ce,grp_fu_578_p_din0,grp_fu_578_p_din1,grp_fu_578_p_opcode,grp_fu_578_p_dout0,grp_fu_578_p_ce); 
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
output  [5:0] init_address0;
output   init_ce0;
input  [63:0] init_q0;
output  [5:0] init_address1;
output   init_ce1;
input  [63:0] init_q1;
input  [7:0] obs_load;
output  [11:0] emission_address0;
output   emission_ce0;
input  [63:0] emission_q0;
output  [11:0] emission_address1;
output   emission_ce1;
input  [63:0] emission_q1;
input  [7:0] zext_ln13;
output  [63:0] grp_fu_301_p_din0;
output  [63:0] grp_fu_301_p_din1;
output  [1:0] grp_fu_301_p_opcode;
input  [63:0] grp_fu_301_p_dout0;
output   grp_fu_301_p_ce;
output  [63:0] grp_fu_578_p_din0;
output  [63:0] grp_fu_578_p_din1;
output  [1:0] grp_fu_578_p_opcode;
input  [63:0] grp_fu_578_p_dout0;
output   grp_fu_578_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_1439;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_588;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_592;
reg   [63:0] reg_596;
reg   [63:0] reg_600;
reg   [63:0] reg_604;
reg   [63:0] reg_610;
wire   [11:0] zext_ln13_cast_fu_616_p1;
reg   [11:0] zext_ln13_cast_reg_1414;
reg   [6:0] s_1_reg_1429;
reg   [0:0] tmp_reg_1439_pp0_iter1_reg;
wire   [3:0] lshr_ln9_fu_641_p4;
reg   [3:0] lshr_ln9_reg_1443;
reg   [3:0] lshr_ln9_reg_1443_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_fu_764_p1;
wire   [63:0] bitcast_ln14_1_fu_769_p1;
wire   [63:0] bitcast_ln14_2_fu_774_p1;
wire   [63:0] bitcast_ln14_3_fu_779_p1;
wire   [2:0] tmp_69_fu_784_p4;
reg   [2:0] tmp_69_reg_1512;
reg   [2:0] tmp_69_reg_1512_pp0_iter1_reg;
wire   [0:0] tmp_66_fu_820_p3;
reg   [0:0] tmp_66_reg_1531;
wire   [63:0] bitcast_ln14_4_fu_866_p1;
wire   [63:0] bitcast_ln14_5_fu_871_p1;
wire   [63:0] bitcast_ln14_6_fu_876_p1;
wire   [63:0] bitcast_ln14_7_fu_881_p1;
wire   [63:0] bitcast_ln14_8_fu_944_p1;
wire   [63:0] bitcast_ln14_9_fu_949_p1;
wire   [63:0] bitcast_ln14_10_fu_954_p1;
wire   [63:0] bitcast_ln14_11_fu_959_p1;
wire   [1:0] tmp_70_fu_964_p4;
reg   [1:0] tmp_70_reg_1607;
reg   [1:0] tmp_70_reg_1607_pp0_iter1_reg;
wire   [0:0] tmp_67_fu_986_p3;
reg   [0:0] tmp_67_reg_1625;
reg   [0:0] tmp_67_reg_1625_pp0_iter1_reg;
wire   [63:0] bitcast_ln14_12_fu_1057_p1;
wire   [63:0] bitcast_ln14_13_fu_1062_p1;
wire   [63:0] bitcast_ln14_14_fu_1067_p1;
wire   [63:0] bitcast_ln14_15_fu_1072_p1;
wire   [63:0] bitcast_ln14_16_fu_1147_p1;
wire   [63:0] bitcast_ln14_17_fu_1152_p1;
wire   [63:0] bitcast_ln14_18_fu_1157_p1;
wire   [63:0] bitcast_ln14_19_fu_1162_p1;
wire   [63:0] bitcast_ln14_20_fu_1227_p1;
wire   [63:0] bitcast_ln14_21_fu_1232_p1;
wire   [63:0] bitcast_ln14_22_fu_1237_p1;
wire   [63:0] bitcast_ln14_23_fu_1242_p1;
wire   [63:0] bitcast_ln14_24_fu_1315_p1;
wire   [63:0] bitcast_ln14_25_fu_1320_p1;
wire   [63:0] bitcast_ln14_26_fu_1325_p1;
wire   [63:0] bitcast_ln14_27_fu_1330_p1;
wire   [63:0] bitcast_ln14_28_fu_1335_p1;
wire   [63:0] bitcast_ln14_29_fu_1340_p1;
wire   [63:0] bitcast_ln14_30_fu_1345_p1;
wire   [63:0] bitcast_ln14_31_fu_1350_p1;
wire   [63:0] zext_ln9_fu_1355_p1;
reg   [63:0] zext_ln9_reg_1814;
wire   [63:0] zext_ln14_10_fu_1367_p1;
reg   [63:0] zext_ln14_10_reg_1820;
wire   [63:0] zext_ln14_22_fu_1381_p1;
reg   [63:0] zext_ln14_22_reg_1826;
wire   [63:0] zext_ln14_30_fu_1394_p1;
reg   [63:0] zext_ln14_30_reg_1832;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln13_1_fu_636_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_659_p1;
wire   [63:0] zext_ln14_1_fu_682_p1;
wire   [63:0] zext_ln14_2_fu_701_p1;
wire   [63:0] zext_ln14_3_fu_713_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_730_p1;
wire   [63:0] zext_ln14_5_fu_742_p1;
wire   [63:0] zext_ln14_6_fu_759_p1;
wire   [63:0] zext_ln14_8_fu_801_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_815_p1;
wire   [63:0] zext_ln14_12_fu_839_p1;
wire   [63:0] zext_ln14_9_fu_861_p1;
wire   [63:0] zext_ln14_15_fu_893_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_910_p1;
wire   [63:0] zext_ln14_17_fu_922_p1;
wire   [63:0] zext_ln14_13_fu_939_p1;
wire   [63:0] zext_ln14_19_fu_981_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1004_p1;
wire   [63:0] zext_ln14_24_fu_1030_p1;
wire   [63:0] zext_ln14_16_fu_1052_p1;
wire   [63:0] zext_ln14_26_fu_1087_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1107_p1;
wire   [63:0] zext_ln14_28_fu_1122_p1;
wire   [63:0] zext_ln14_20_fu_1142_p1;
wire   [63:0] zext_ln14_29_fu_1174_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1187_p1;
wire   [63:0] zext_ln14_31_fu_1202_p1;
wire   [63:0] zext_ln14_23_fu_1222_p1;
wire   [63:0] zext_ln14_32_fu_1254_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1271_p1;
wire   [63:0] zext_ln14_33_fu_1283_p1;
wire   [63:0] zext_ln14_27_fu_1300_p1;
reg   [6:0] s_fu_142;
wire   [6:0] add_ln13_fu_1305_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_ce1_local;
reg   [5:0] init_address1_local;
reg    init_ce0_local;
reg   [5:0] init_address0_local;
reg    emission_ce1_local;
reg   [11:0] emission_address1_local;
reg    emission_ce0_local;
reg   [11:0] emission_address0_local;
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
reg   [63:0] grp_fu_580_p0;
reg   [63:0] grp_fu_580_p1;
reg   [63:0] grp_fu_584_p0;
reg   [63:0] grp_fu_584_p1;
wire   [11:0] or_ln_fu_651_p3;
wire   [4:0] tmp_s_fu_664_p4;
wire   [5:0] or_ln1_fu_674_p3;
wire   [11:0] shl_ln_fu_687_p3;
wire   [11:0] add_ln14_fu_695_p2;
wire   [5:0] or_ln13_1_fu_706_p3;
wire   [11:0] shl_ln14_1_fu_718_p3;
wire   [11:0] add_ln14_1_fu_725_p2;
wire   [5:0] or_ln13_2_fu_735_p3;
wire   [11:0] shl_ln14_2_fu_747_p3;
wire   [11:0] add_ln14_2_fu_754_p2;
wire   [5:0] or_ln13_3_fu_793_p3;
wire   [11:0] or_ln14_2_fu_806_p4;
wire   [5:0] or_ln13_4_fu_827_p5;
wire   [11:0] shl_ln14_3_fu_844_p5;
wire   [11:0] add_ln14_3_fu_856_p2;
wire   [5:0] or_ln13_5_fu_886_p3;
wire   [11:0] shl_ln14_4_fu_898_p3;
wire   [11:0] add_ln14_4_fu_905_p2;
wire   [5:0] or_ln13_6_fu_915_p3;
wire   [11:0] shl_ln14_5_fu_927_p3;
wire   [11:0] add_ln14_5_fu_934_p2;
wire   [5:0] or_ln13_7_fu_973_p3;
wire   [11:0] or_ln14_4_fu_993_p5;
wire   [1:0] tmp_71_fu_1009_p4;
wire   [5:0] or_ln13_8_fu_1018_p5;
wire   [11:0] shl_ln14_6_fu_1035_p5;
wire   [11:0] add_ln14_6_fu_1047_p2;
wire   [5:0] or_ln13_9_fu_1077_p5;
wire   [11:0] shl_ln14_7_fu_1092_p5;
wire   [11:0] add_ln14_7_fu_1102_p2;
wire   [5:0] or_ln13_s_fu_1112_p5;
wire   [11:0] shl_ln14_8_fu_1127_p5;
wire   [11:0] add_ln14_8_fu_1137_p2;
wire   [5:0] or_ln13_10_fu_1167_p3;
wire   [11:0] or_ln14_6_fu_1179_p4;
wire   [5:0] or_ln13_11_fu_1192_p5;
wire   [11:0] shl_ln14_9_fu_1207_p5;
wire   [11:0] add_ln14_9_fu_1217_p2;
wire   [5:0] or_ln13_12_fu_1247_p3;
wire   [11:0] shl_ln14_s_fu_1259_p3;
wire   [11:0] add_ln14_10_fu_1266_p2;
wire   [5:0] or_ln13_13_fu_1276_p3;
wire   [11:0] shl_ln14_10_fu_1288_p3;
wire   [11:0] add_ln14_11_fu_1295_p2;
wire   [3:0] or_ln14_1_fu_1360_p3;
wire   [3:0] or_ln14_3_fu_1373_p4;
wire   [3:0] or_ln14_5_fu_1387_p3;
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
#0 s_fu_142 = 7'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_142 <= 7'd0;
    end else if (((tmp_reg_1439 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_142 <= add_ln13_fu_1305_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln9_reg_1443 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_reg_1443_pp0_iter1_reg <= lshr_ln9_reg_1443;
        s_1_reg_1429 <= ap_sig_allocacmp_s_1;
        tmp_reg_1439 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_reg_1439_pp0_iter1_reg <= tmp_reg_1439;
        zext_ln13_cast_reg_1414[7 : 0] <= zext_ln13_cast_fu_616_p1[7 : 0];
        zext_ln14_30_reg_1832[3 : 2] <= zext_ln14_30_fu_1394_p1[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_588 <= init_q1;
        reg_592 <= emission_q1;
        reg_596 <= init_q0;
        reg_600 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_604 <= grp_fu_301_p_dout0;
        reg_610 <= grp_fu_578_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_66_reg_1531 <= s_1_reg_1429[32'd1];
        tmp_69_reg_1512 <= {{s_1_reg_1429[5:3]}};
        tmp_69_reg_1512_pp0_iter1_reg <= tmp_69_reg_1512;
        zext_ln9_reg_1814[3 : 0] <= zext_ln9_fu_1355_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        tmp_67_reg_1625 <= s_1_reg_1429[32'd2];
        tmp_67_reg_1625_pp0_iter1_reg <= tmp_67_reg_1625;
        tmp_70_reg_1607 <= {{s_1_reg_1429[5:4]}};
        tmp_70_reg_1607_pp0_iter1_reg <= tmp_70_reg_1607;
        zext_ln14_10_reg_1820[3 : 1] <= zext_ln14_10_fu_1367_p1[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        zext_ln14_22_reg_1826[0] <= zext_ln14_22_fu_1381_p1[0];
zext_ln14_22_reg_1826[3 : 2] <= zext_ln14_22_fu_1381_p1[3 : 2];
    end
end
always @ (*) begin
    if (((tmp_reg_1439 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_1439_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_142;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1300_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1222_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1142_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1052_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_939_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_861_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_759_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_701_p1;
        end else begin
            emission_address0_local = 'bx;
        end
    end else begin
        emission_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address1_local = zext_ln14_25_fu_1271_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1187_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1107_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1004_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_910_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_815_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_730_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_659_p1;
        end else begin
            emission_address1_local = 'bx;
        end
    end else begin
        emission_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce0_local = 1'b1;
    end else begin
        emission_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_ce1_local = 1'b1;
    end else begin
        emission_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_580_p0 = bitcast_ln14_28_fu_1335_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_580_p0 = bitcast_ln14_24_fu_1315_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_580_p0 = bitcast_ln14_20_fu_1227_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_580_p0 = bitcast_ln14_16_fu_1147_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_580_p0 = bitcast_ln14_12_fu_1057_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_580_p0 = bitcast_ln14_8_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_580_p0 = bitcast_ln14_4_fu_866_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_580_p0 = bitcast_ln14_fu_764_p1;
    end else begin
        grp_fu_580_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_580_p1 = bitcast_ln14_29_fu_1340_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_580_p1 = bitcast_ln14_25_fu_1320_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_580_p1 = bitcast_ln14_21_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_580_p1 = bitcast_ln14_17_fu_1152_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_580_p1 = bitcast_ln14_13_fu_1062_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_580_p1 = bitcast_ln14_9_fu_949_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_580_p1 = bitcast_ln14_5_fu_871_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_580_p1 = bitcast_ln14_1_fu_769_p1;
    end else begin
        grp_fu_580_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_584_p0 = bitcast_ln14_30_fu_1345_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_584_p0 = bitcast_ln14_26_fu_1325_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_584_p0 = bitcast_ln14_22_fu_1237_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_584_p0 = bitcast_ln14_18_fu_1157_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_584_p0 = bitcast_ln14_14_fu_1067_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_584_p0 = bitcast_ln14_10_fu_954_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_584_p0 = bitcast_ln14_6_fu_876_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_584_p0 = bitcast_ln14_2_fu_774_p1;
    end else begin
        grp_fu_584_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_584_p1 = bitcast_ln14_31_fu_1350_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_584_p1 = bitcast_ln14_27_fu_1330_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_584_p1 = bitcast_ln14_23_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_584_p1 = bitcast_ln14_19_fu_1162_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_584_p1 = bitcast_ln14_15_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_584_p1 = bitcast_ln14_11_fu_959_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_584_p1 = bitcast_ln14_7_fu_881_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_584_p1 = bitcast_ln14_3_fu_779_p1;
    end else begin
        grp_fu_584_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_33_fu_1283_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_31_fu_1202_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_28_fu_1122_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_24_fu_1030_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_17_fu_922_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_12_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_742_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_682_p1;
        end else begin
            init_address0_local = 'bx;
        end
    end else begin
        init_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address1_local = zext_ln14_32_fu_1254_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_29_fu_1174_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_26_fu_1087_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_19_fu_981_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_15_fu_893_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_801_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_713_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_636_p1;
        end else begin
            init_address1_local = 'bx;
        end
    end else begin
        init_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce0_local = 1'b1;
    end else begin
        init_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        init_ce1_local = 1'b1;
    end else begin
        init_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_address0_local = zext_ln14_30_fu_1394_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_1_address0_local = zext_ln14_22_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_1_address0_local = zext_ln14_10_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_address0_local = zext_ln9_fu_1355_p1;
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
        llike_2_address0_local = zext_ln14_30_reg_1832;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_2_address0_local = zext_ln14_22_reg_1826;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_2_address0_local = zext_ln14_10_reg_1820;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_address0_local = zext_ln9_reg_1814;
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
        llike_3_address0_local = zext_ln14_30_reg_1832;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_3_address0_local = zext_ln14_22_reg_1826;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_3_address0_local = zext_ln14_10_reg_1820;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_address0_local = zext_ln9_reg_1814;
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
        llike_address0_local = zext_ln14_30_fu_1394_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_address0_local = zext_ln14_22_fu_1381_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_address0_local = zext_ln14_10_fu_1367_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_address0_local = zext_ln9_fu_1355_p1;
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
assign add_ln13_fu_1305_p2 = (s_1_reg_1429 + 7'd16);
assign add_ln14_10_fu_1266_p2 = (shl_ln14_s_fu_1259_p3 + zext_ln13_cast_reg_1414);
assign add_ln14_11_fu_1295_p2 = (shl_ln14_10_fu_1288_p3 + zext_ln13_cast_reg_1414);
assign add_ln14_1_fu_725_p2 = (shl_ln14_1_fu_718_p3 + zext_ln13_cast_reg_1414);
assign add_ln14_2_fu_754_p2 = (shl_ln14_2_fu_747_p3 + zext_ln13_cast_reg_1414);
assign add_ln14_3_fu_856_p2 = (shl_ln14_3_fu_844_p5 + zext_ln13_cast_reg_1414);
assign add_ln14_4_fu_905_p2 = (shl_ln14_4_fu_898_p3 + zext_ln13_cast_reg_1414);
assign add_ln14_5_fu_934_p2 = (shl_ln14_5_fu_927_p3 + zext_ln13_cast_reg_1414);
assign add_ln14_6_fu_1047_p2 = (shl_ln14_6_fu_1035_p5 + zext_ln13_cast_reg_1414);
assign add_ln14_7_fu_1102_p2 = (shl_ln14_7_fu_1092_p5 + zext_ln13_cast_reg_1414);
assign add_ln14_8_fu_1137_p2 = (shl_ln14_8_fu_1127_p5 + zext_ln13_cast_reg_1414);
assign add_ln14_9_fu_1217_p2 = (shl_ln14_9_fu_1207_p5 + zext_ln13_cast_reg_1414);
assign add_ln14_fu_695_p2 = (shl_ln_fu_687_p3 + zext_ln13_cast_fu_616_p1);
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
assign bitcast_ln14_10_fu_954_p1 = reg_596;
assign bitcast_ln14_11_fu_959_p1 = reg_600;
assign bitcast_ln14_12_fu_1057_p1 = reg_588;
assign bitcast_ln14_13_fu_1062_p1 = reg_592;
assign bitcast_ln14_14_fu_1067_p1 = reg_596;
assign bitcast_ln14_15_fu_1072_p1 = reg_600;
assign bitcast_ln14_16_fu_1147_p1 = reg_588;
assign bitcast_ln14_17_fu_1152_p1 = reg_592;
assign bitcast_ln14_18_fu_1157_p1 = reg_596;
assign bitcast_ln14_19_fu_1162_p1 = reg_600;
assign bitcast_ln14_1_fu_769_p1 = reg_592;
assign bitcast_ln14_20_fu_1227_p1 = reg_588;
assign bitcast_ln14_21_fu_1232_p1 = reg_592;
assign bitcast_ln14_22_fu_1237_p1 = reg_596;
assign bitcast_ln14_23_fu_1242_p1 = reg_600;
assign bitcast_ln14_24_fu_1315_p1 = reg_588;
assign bitcast_ln14_25_fu_1320_p1 = reg_592;
assign bitcast_ln14_26_fu_1325_p1 = reg_596;
assign bitcast_ln14_27_fu_1330_p1 = reg_600;
assign bitcast_ln14_28_fu_1335_p1 = reg_588;
assign bitcast_ln14_29_fu_1340_p1 = reg_592;
assign bitcast_ln14_2_fu_774_p1 = reg_596;
assign bitcast_ln14_30_fu_1345_p1 = reg_596;
assign bitcast_ln14_31_fu_1350_p1 = reg_600;
assign bitcast_ln14_3_fu_779_p1 = reg_600;
assign bitcast_ln14_4_fu_866_p1 = reg_588;
assign bitcast_ln14_5_fu_871_p1 = reg_592;
assign bitcast_ln14_6_fu_876_p1 = reg_596;
assign bitcast_ln14_7_fu_881_p1 = reg_600;
assign bitcast_ln14_8_fu_944_p1 = reg_588;
assign bitcast_ln14_9_fu_949_p1 = reg_592;
assign bitcast_ln14_fu_764_p1 = reg_588;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_301_p_ce = 1'b1;
assign grp_fu_301_p_din0 = grp_fu_580_p0;
assign grp_fu_301_p_din1 = grp_fu_580_p1;
assign grp_fu_301_p_opcode = 2'd0;
assign grp_fu_578_p_ce = 1'b1;
assign grp_fu_578_p_din0 = grp_fu_584_p0;
assign grp_fu_578_p_din1 = grp_fu_584_p1;
assign grp_fu_578_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_610;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_604;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_610;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_604;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_641_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln13_10_fu_1167_p3 = {{tmp_70_reg_1607}, {4'd12}};
assign or_ln13_11_fu_1192_p5 = {{{{tmp_70_reg_1607}, {2'd3}}, {tmp_66_reg_1531}}, {1'd1}};
assign or_ln13_12_fu_1247_p3 = {{tmp_70_reg_1607}, {4'd14}};
assign or_ln13_13_fu_1276_p3 = {{tmp_70_reg_1607}, {4'd15}};
assign or_ln13_1_fu_706_p3 = {{lshr_ln9_reg_1443}, {2'd2}};
assign or_ln13_2_fu_735_p3 = {{lshr_ln9_reg_1443}, {2'd3}};
assign or_ln13_3_fu_793_p3 = {{tmp_69_fu_784_p4}, {3'd4}};
assign or_ln13_4_fu_827_p5 = {{{{tmp_69_fu_784_p4}, {1'd1}}, {tmp_66_fu_820_p3}}, {1'd1}};
assign or_ln13_5_fu_886_p3 = {{tmp_69_reg_1512}, {3'd6}};
assign or_ln13_6_fu_915_p3 = {{tmp_69_reg_1512}, {3'd7}};
assign or_ln13_7_fu_973_p3 = {{tmp_70_fu_964_p4}, {4'd8}};
assign or_ln13_8_fu_1018_p5 = {{{{tmp_70_fu_964_p4}, {1'd1}}, {tmp_71_fu_1009_p4}}, {1'd1}};
assign or_ln13_9_fu_1077_p5 = {{{{tmp_70_reg_1607}, {1'd1}}, {tmp_67_reg_1625}}, {2'd2}};
assign or_ln13_s_fu_1112_p5 = {{{{tmp_70_reg_1607}, {1'd1}}, {tmp_67_reg_1625}}, {2'd3}};
assign or_ln14_1_fu_1360_p3 = {{tmp_69_reg_1512_pp0_iter1_reg}, {1'd1}};
assign or_ln14_2_fu_806_p4 = {{{tmp_69_fu_784_p4}, {1'd1}}, {obs_load}};
assign or_ln14_3_fu_1373_p4 = {{{tmp_70_reg_1607_pp0_iter1_reg}, {1'd1}}, {tmp_67_reg_1625_pp0_iter1_reg}};
assign or_ln14_4_fu_993_p5 = {{{{tmp_70_fu_964_p4}, {1'd1}}, {tmp_67_fu_986_p3}}, {obs_load}};
assign or_ln14_5_fu_1387_p3 = {{tmp_70_reg_1607_pp0_iter1_reg}, {2'd3}};
assign or_ln14_6_fu_1179_p4 = {{{tmp_70_reg_1607}, {2'd3}}, {obs_load}};
assign or_ln1_fu_674_p3 = {{tmp_s_fu_664_p4}, {1'd1}};
assign or_ln_fu_651_p3 = {{lshr_ln9_fu_641_p4}, {obs_load}};
assign shl_ln14_10_fu_1288_p3 = {{tmp_70_reg_1607}, {10'd960}};
assign shl_ln14_1_fu_718_p3 = {{lshr_ln9_reg_1443}, {8'd128}};
assign shl_ln14_2_fu_747_p3 = {{lshr_ln9_reg_1443}, {8'd192}};
assign shl_ln14_3_fu_844_p5 = {{{{tmp_69_fu_784_p4}, {1'd1}}, {tmp_66_fu_820_p3}}, {7'd64}};
assign shl_ln14_4_fu_898_p3 = {{tmp_69_reg_1512}, {9'd384}};
assign shl_ln14_5_fu_927_p3 = {{tmp_69_reg_1512}, {9'd448}};
assign shl_ln14_6_fu_1035_p5 = {{{{tmp_70_fu_964_p4}, {1'd1}}, {tmp_71_fu_1009_p4}}, {7'd64}};
assign shl_ln14_7_fu_1092_p5 = {{{{tmp_70_reg_1607}, {1'd1}}, {tmp_67_reg_1625}}, {8'd128}};
assign shl_ln14_8_fu_1127_p5 = {{{{tmp_70_reg_1607}, {1'd1}}, {tmp_67_reg_1625}}, {8'd192}};
assign shl_ln14_9_fu_1207_p5 = {{{{tmp_70_reg_1607}, {2'd3}}, {tmp_66_reg_1531}}, {7'd64}};
assign shl_ln14_s_fu_1259_p3 = {{tmp_70_reg_1607}, {10'd896}};
assign shl_ln_fu_687_p3 = {{tmp_s_fu_664_p4}, {7'd64}};
assign tmp_66_fu_820_p3 = s_1_reg_1429[32'd1];
assign tmp_67_fu_986_p3 = s_1_reg_1429[32'd2];
assign tmp_69_fu_784_p4 = {{s_1_reg_1429[5:3]}};
assign tmp_70_fu_964_p4 = {{s_1_reg_1429[5:4]}};
assign tmp_71_fu_1009_p4 = {{s_1_reg_1429[2:1]}};
assign tmp_s_fu_664_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign zext_ln13_1_fu_636_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_616_p1 = zext_ln13;
assign zext_ln14_10_fu_1367_p1 = or_ln14_1_fu_1360_p3;
assign zext_ln14_11_fu_910_p1 = add_ln14_4_fu_905_p2;
assign zext_ln14_12_fu_839_p1 = or_ln13_4_fu_827_p5;
assign zext_ln14_13_fu_939_p1 = add_ln14_5_fu_934_p2;
assign zext_ln14_14_fu_1004_p1 = or_ln14_4_fu_993_p5;
assign zext_ln14_15_fu_893_p1 = or_ln13_5_fu_886_p3;
assign zext_ln14_16_fu_1052_p1 = add_ln14_6_fu_1047_p2;
assign zext_ln14_17_fu_922_p1 = or_ln13_6_fu_915_p3;
assign zext_ln14_18_fu_1107_p1 = add_ln14_7_fu_1102_p2;
assign zext_ln14_19_fu_981_p1 = or_ln13_7_fu_973_p3;
assign zext_ln14_1_fu_682_p1 = or_ln1_fu_674_p3;
assign zext_ln14_20_fu_1142_p1 = add_ln14_8_fu_1137_p2;
assign zext_ln14_21_fu_1187_p1 = or_ln14_6_fu_1179_p4;
assign zext_ln14_22_fu_1381_p1 = or_ln14_3_fu_1373_p4;
assign zext_ln14_23_fu_1222_p1 = add_ln14_9_fu_1217_p2;
assign zext_ln14_24_fu_1030_p1 = or_ln13_8_fu_1018_p5;
assign zext_ln14_25_fu_1271_p1 = add_ln14_10_fu_1266_p2;
assign zext_ln14_26_fu_1087_p1 = or_ln13_9_fu_1077_p5;
assign zext_ln14_27_fu_1300_p1 = add_ln14_11_fu_1295_p2;
assign zext_ln14_28_fu_1122_p1 = or_ln13_s_fu_1112_p5;
assign zext_ln14_29_fu_1174_p1 = or_ln13_10_fu_1167_p3;
assign zext_ln14_2_fu_701_p1 = add_ln14_fu_695_p2;
assign zext_ln14_30_fu_1394_p1 = or_ln14_5_fu_1387_p3;
assign zext_ln14_31_fu_1202_p1 = or_ln13_11_fu_1192_p5;
assign zext_ln14_32_fu_1254_p1 = or_ln13_12_fu_1247_p3;
assign zext_ln14_33_fu_1283_p1 = or_ln13_13_fu_1276_p3;
assign zext_ln14_3_fu_713_p1 = or_ln13_1_fu_706_p3;
assign zext_ln14_4_fu_730_p1 = add_ln14_1_fu_725_p2;
assign zext_ln14_5_fu_742_p1 = or_ln13_2_fu_735_p3;
assign zext_ln14_6_fu_759_p1 = add_ln14_2_fu_754_p2;
assign zext_ln14_7_fu_815_p1 = or_ln14_2_fu_806_p4;
assign zext_ln14_8_fu_801_p1 = or_ln13_3_fu_793_p3;
assign zext_ln14_9_fu_861_p1 = add_ln14_3_fu_856_p2;
assign zext_ln14_fu_659_p1 = or_ln_fu_651_p3;
assign zext_ln9_fu_1355_p1 = lshr_ln9_reg_1443_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_1414[11:8] <= 4'b0000;
    zext_ln9_reg_1814[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_10_reg_1820[0] <= 1'b1;
    zext_ln14_10_reg_1820[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_22_reg_1826[1] <= 1'b1;
    zext_ln14_22_reg_1826[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln14_30_reg_1832[1:0] <= 2'b11;
    zext_ln14_30_reg_1832[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 