module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,llike_8_address0,llike_8_ce0,llike_8_we0,llike_8_d0,llike_9_address0,llike_9_ce0,llike_9_we0,llike_9_d0,llike_10_address0,llike_10_ce0,llike_10_we0,llike_10_d0,llike_11_address0,llike_11_ce0,llike_11_we0,llike_11_d0,llike_12_address0,llike_12_ce0,llike_12_we0,llike_12_d0,llike_13_address0,llike_13_ce0,llike_13_we0,llike_13_d0,llike_14_address0,llike_14_ce0,llike_14_we0,llike_14_d0,llike_15_address0,llike_15_ce0,llike_15_we0,llike_15_d0,init_address0,init_ce0,init_q0,init_address1,init_ce1,init_q1,obs_load,emission_address0,emission_ce0,emission_q0,emission_address1,emission_ce1,emission_q1,zext_ln13,grp_fu_612_p_din0,grp_fu_612_p_din1,grp_fu_612_p_opcode,grp_fu_612_p_dout0,grp_fu_612_p_ce,grp_fu_1042_p_din0,grp_fu_1042_p_din1,grp_fu_1042_p_opcode,grp_fu_1042_p_dout0,grp_fu_1042_p_ce); 
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
output  [9:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
output   llike_8_we0;
output  [63:0] llike_8_d0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
output   llike_9_we0;
output  [63:0] llike_9_d0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
output   llike_10_we0;
output  [63:0] llike_10_d0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
output   llike_11_we0;
output  [63:0] llike_11_d0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
output   llike_12_we0;
output  [63:0] llike_12_d0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
output   llike_13_we0;
output  [63:0] llike_13_d0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
output   llike_14_we0;
output  [63:0] llike_14_d0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
output   llike_15_we0;
output  [63:0] llike_15_d0;
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
output  [63:0] grp_fu_612_p_din0;
output  [63:0] grp_fu_612_p_din1;
output  [1:0] grp_fu_612_p_opcode;
input  [63:0] grp_fu_612_p_dout0;
output   grp_fu_612_p_ce;
output  [63:0] grp_fu_1042_p_din0;
output  [63:0] grp_fu_1042_p_din1;
output  [1:0] grp_fu_1042_p_opcode;
input  [63:0] grp_fu_1042_p_dout0;
output   grp_fu_1042_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_1489;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_666;
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
reg   [63:0] reg_670;
reg   [63:0] reg_674;
reg   [63:0] reg_678;
reg   [63:0] reg_682;
reg   [63:0] reg_694;
wire   [11:0] zext_ln13_cast_fu_706_p1;
reg   [11:0] zext_ln13_cast_reg_1464;
reg   [6:0] s_1_reg_1479;
reg   [0:0] tmp_reg_1489_pp0_iter1_reg;
wire   [3:0] tmp_cast_fu_731_p4;
reg   [3:0] tmp_cast_reg_1498;
wire   [63:0] bitcast_ln14_fu_854_p1;
wire   [63:0] bitcast_ln14_1_fu_859_p1;
wire   [63:0] bitcast_ln14_2_fu_864_p1;
wire   [63:0] bitcast_ln14_3_fu_869_p1;
wire   [2:0] tmp_77_fu_874_p4;
reg   [2:0] tmp_77_reg_1561;
wire   [0:0] tmp_4_fu_910_p3;
reg   [0:0] tmp_4_reg_1579;
wire   [63:0] bitcast_ln14_4_fu_956_p1;
wire   [63:0] bitcast_ln14_5_fu_961_p1;
wire   [63:0] bitcast_ln14_6_fu_966_p1;
wire   [63:0] bitcast_ln14_7_fu_971_p1;
wire   [1:0] lshr_ln9_fu_1034_p4;
reg   [1:0] lshr_ln9_reg_1635;
wire   [63:0] bitcast_ln14_8_fu_1043_p1;
wire   [63:0] bitcast_ln14_9_fu_1048_p1;
wire   [63:0] bitcast_ln14_10_fu_1053_p1;
wire   [63:0] bitcast_ln14_11_fu_1058_p1;
wire   [0:0] tmp_5_fu_1076_p3;
reg   [0:0] tmp_5_reg_1677;
wire   [63:0] bitcast_ln14_12_fu_1147_p1;
wire   [63:0] bitcast_ln14_13_fu_1152_p1;
wire   [63:0] bitcast_ln14_14_fu_1157_p1;
wire   [63:0] bitcast_ln14_15_fu_1162_p1;
wire   [63:0] bitcast_ln14_16_fu_1237_p1;
wire   [63:0] bitcast_ln14_17_fu_1242_p1;
wire   [63:0] bitcast_ln14_18_fu_1247_p1;
wire   [63:0] bitcast_ln14_19_fu_1252_p1;
wire   [63:0] bitcast_ln14_20_fu_1317_p1;
wire   [63:0] bitcast_ln14_21_fu_1322_p1;
wire   [63:0] bitcast_ln14_22_fu_1327_p1;
wire   [63:0] bitcast_ln14_23_fu_1332_p1;
wire   [63:0] bitcast_ln14_24_fu_1405_p1;
wire   [63:0] bitcast_ln14_25_fu_1410_p1;
wire   [63:0] bitcast_ln14_26_fu_1415_p1;
wire   [63:0] bitcast_ln14_27_fu_1420_p1;
wire   [63:0] bitcast_ln14_28_fu_1425_p1;
wire   [63:0] bitcast_ln14_29_fu_1430_p1;
wire   [63:0] bitcast_ln14_30_fu_1435_p1;
wire   [63:0] bitcast_ln14_31_fu_1440_p1;
wire   [63:0] zext_ln9_fu_1445_p1;
reg   [63:0] zext_ln9_reg_1860;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln13_1_fu_726_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_749_p1;
wire   [63:0] zext_ln14_1_fu_772_p1;
wire   [63:0] zext_ln14_2_fu_791_p1;
wire   [63:0] zext_ln14_3_fu_803_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_4_fu_820_p1;
wire   [63:0] zext_ln14_5_fu_832_p1;
wire   [63:0] zext_ln14_6_fu_849_p1;
wire   [63:0] zext_ln14_8_fu_891_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_905_p1;
wire   [63:0] zext_ln14_10_fu_929_p1;
wire   [63:0] zext_ln14_9_fu_951_p1;
wire   [63:0] zext_ln14_12_fu_983_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln14_11_fu_1000_p1;
wire   [63:0] zext_ln14_15_fu_1012_p1;
wire   [63:0] zext_ln14_13_fu_1029_p1;
wire   [63:0] zext_ln14_17_fu_1071_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln14_14_fu_1094_p1;
wire   [63:0] zext_ln14_19_fu_1120_p1;
wire   [63:0] zext_ln14_16_fu_1142_p1;
wire   [63:0] zext_ln14_22_fu_1177_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln14_18_fu_1197_p1;
wire   [63:0] zext_ln14_24_fu_1212_p1;
wire   [63:0] zext_ln14_20_fu_1232_p1;
wire   [63:0] zext_ln14_26_fu_1264_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln14_21_fu_1277_p1;
wire   [63:0] zext_ln14_28_fu_1292_p1;
wire   [63:0] zext_ln14_23_fu_1312_p1;
wire   [63:0] zext_ln14_29_fu_1344_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln14_25_fu_1361_p1;
wire   [63:0] zext_ln14_30_fu_1373_p1;
wire   [63:0] zext_ln14_27_fu_1390_p1;
reg   [6:0] s_fu_160;
wire   [6:0] add_ln13_fu_1395_p2;
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
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_8_we0_local;
reg    llike_8_ce0_local;
reg    llike_9_we0_local;
reg    llike_9_ce0_local;
reg    llike_10_we0_local;
reg    llike_10_ce0_local;
reg    llike_11_we0_local;
reg    llike_11_ce0_local;
reg    llike_12_we0_local;
reg    llike_12_ce0_local;
reg    llike_13_we0_local;
reg    llike_13_ce0_local;
reg    llike_14_we0_local;
reg    llike_14_ce0_local;
reg    llike_15_we0_local;
reg    llike_15_ce0_local;
reg   [63:0] grp_fu_658_p0;
reg   [63:0] grp_fu_658_p1;
reg   [63:0] grp_fu_662_p0;
reg   [63:0] grp_fu_662_p1;
wire   [11:0] or_ln_fu_741_p3;
wire   [4:0] tmp_s_fu_754_p4;
wire   [5:0] or_ln1_fu_764_p3;
wire   [11:0] shl_ln_fu_777_p3;
wire   [11:0] add_ln14_fu_785_p2;
wire   [5:0] or_ln13_1_fu_796_p3;
wire   [11:0] shl_ln14_1_fu_808_p3;
wire   [11:0] add_ln14_1_fu_815_p2;
wire   [5:0] or_ln13_2_fu_825_p3;
wire   [11:0] shl_ln14_2_fu_837_p3;
wire   [11:0] add_ln14_2_fu_844_p2;
wire   [5:0] or_ln13_3_fu_883_p3;
wire   [11:0] or_ln14_1_fu_896_p4;
wire   [5:0] or_ln13_4_fu_917_p5;
wire   [11:0] shl_ln14_3_fu_934_p5;
wire   [11:0] add_ln14_3_fu_946_p2;
wire   [5:0] or_ln13_5_fu_976_p3;
wire   [11:0] shl_ln14_4_fu_988_p3;
wire   [11:0] add_ln14_4_fu_995_p2;
wire   [5:0] or_ln13_6_fu_1005_p3;
wire   [11:0] shl_ln14_5_fu_1017_p3;
wire   [11:0] add_ln14_5_fu_1024_p2;
wire   [5:0] or_ln13_7_fu_1063_p3;
wire   [11:0] or_ln14_2_fu_1083_p5;
wire   [1:0] tmp_78_fu_1099_p4;
wire   [5:0] or_ln13_8_fu_1108_p5;
wire   [11:0] shl_ln14_6_fu_1125_p5;
wire   [11:0] add_ln14_6_fu_1137_p2;
wire   [5:0] or_ln13_9_fu_1167_p5;
wire   [11:0] shl_ln14_7_fu_1182_p5;
wire   [11:0] add_ln14_7_fu_1192_p2;
wire   [5:0] or_ln13_s_fu_1202_p5;
wire   [11:0] shl_ln14_8_fu_1217_p5;
wire   [11:0] add_ln14_8_fu_1227_p2;
wire   [5:0] or_ln13_10_fu_1257_p3;
wire   [11:0] or_ln14_3_fu_1269_p4;
wire   [5:0] or_ln13_11_fu_1282_p5;
wire   [11:0] shl_ln14_9_fu_1297_p5;
wire   [11:0] add_ln14_9_fu_1307_p2;
wire   [5:0] or_ln13_12_fu_1337_p3;
wire   [11:0] shl_ln14_s_fu_1349_p3;
wire   [11:0] add_ln14_10_fu_1356_p2;
wire   [5:0] or_ln13_13_fu_1366_p3;
wire   [11:0] shl_ln14_10_fu_1378_p3;
wire   [11:0] add_ln14_11_fu_1385_p2;
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
#0 s_fu_160 = 7'd0;
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_160 <= 7'd0;
    end else if (((tmp_reg_1489 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        s_fu_160 <= add_ln13_fu_1395_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln9_reg_1635 <= {{s_1_reg_1479[5:4]}};
        tmp_5_reg_1677 <= s_1_reg_1479[32'd2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_666 <= init_q1;
        reg_670 <= emission_q1;
        reg_674 <= init_q0;
        reg_678 <= emission_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_682 <= grp_fu_612_p_dout0;
        reg_694 <= grp_fu_1042_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_1_reg_1479 <= ap_sig_allocacmp_s_1;
        tmp_cast_reg_1498 <= {{ap_sig_allocacmp_s_1[5:2]}};
        tmp_reg_1489 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_reg_1489_pp0_iter1_reg <= tmp_reg_1489;
        zext_ln13_cast_reg_1464[7 : 0] <= zext_ln13_cast_fu_706_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_4_reg_1579 <= s_1_reg_1479[32'd1];
        tmp_77_reg_1561 <= {{s_1_reg_1479[5:3]}};
        zext_ln9_reg_1860[1 : 0] <= zext_ln9_fu_1445_p1[1 : 0];
    end
end
always @ (*) begin
    if (((tmp_reg_1489 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (tmp_reg_1489_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_160;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            emission_address0_local = zext_ln14_27_fu_1390_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address0_local = zext_ln14_23_fu_1312_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address0_local = zext_ln14_20_fu_1232_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address0_local = zext_ln14_16_fu_1142_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address0_local = zext_ln14_13_fu_1029_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address0_local = zext_ln14_9_fu_951_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address0_local = zext_ln14_6_fu_849_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address0_local = zext_ln14_2_fu_791_p1;
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
            emission_address1_local = zext_ln14_25_fu_1361_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            emission_address1_local = zext_ln14_21_fu_1277_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            emission_address1_local = zext_ln14_18_fu_1197_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            emission_address1_local = zext_ln14_14_fu_1094_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            emission_address1_local = zext_ln14_11_fu_1000_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            emission_address1_local = zext_ln14_7_fu_905_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_address1_local = zext_ln14_4_fu_820_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_address1_local = zext_ln14_fu_749_p1;
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
        grp_fu_658_p0 = bitcast_ln14_28_fu_1425_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_658_p0 = bitcast_ln14_24_fu_1405_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_658_p0 = bitcast_ln14_20_fu_1317_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_658_p0 = bitcast_ln14_16_fu_1237_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_658_p0 = bitcast_ln14_12_fu_1147_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_658_p0 = bitcast_ln14_8_fu_1043_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_658_p0 = bitcast_ln14_4_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_658_p0 = bitcast_ln14_fu_854_p1;
    end else begin
        grp_fu_658_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_658_p1 = bitcast_ln14_29_fu_1430_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_658_p1 = bitcast_ln14_25_fu_1410_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_658_p1 = bitcast_ln14_21_fu_1322_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_658_p1 = bitcast_ln14_17_fu_1242_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_658_p1 = bitcast_ln14_13_fu_1152_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_658_p1 = bitcast_ln14_9_fu_1048_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_658_p1 = bitcast_ln14_5_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_658_p1 = bitcast_ln14_1_fu_859_p1;
    end else begin
        grp_fu_658_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_662_p0 = bitcast_ln14_30_fu_1435_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_662_p0 = bitcast_ln14_26_fu_1415_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_662_p0 = bitcast_ln14_22_fu_1327_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_662_p0 = bitcast_ln14_18_fu_1247_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_662_p0 = bitcast_ln14_14_fu_1157_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_662_p0 = bitcast_ln14_10_fu_1053_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_662_p0 = bitcast_ln14_6_fu_966_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_662_p0 = bitcast_ln14_2_fu_864_p1;
    end else begin
        grp_fu_662_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_662_p1 = bitcast_ln14_31_fu_1440_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_662_p1 = bitcast_ln14_27_fu_1420_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_662_p1 = bitcast_ln14_23_fu_1332_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_662_p1 = bitcast_ln14_19_fu_1252_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_662_p1 = bitcast_ln14_15_fu_1162_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_662_p1 = bitcast_ln14_11_fu_1058_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_662_p1 = bitcast_ln14_7_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_662_p1 = bitcast_ln14_3_fu_869_p1;
    end else begin
        grp_fu_662_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            init_address0_local = zext_ln14_30_fu_1373_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address0_local = zext_ln14_28_fu_1292_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address0_local = zext_ln14_24_fu_1212_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address0_local = zext_ln14_19_fu_1120_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address0_local = zext_ln14_15_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address0_local = zext_ln14_10_fu_929_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address0_local = zext_ln14_5_fu_832_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address0_local = zext_ln14_1_fu_772_p1;
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
            init_address1_local = zext_ln14_29_fu_1344_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            init_address1_local = zext_ln14_26_fu_1264_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            init_address1_local = zext_ln14_22_fu_1177_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            init_address1_local = zext_ln14_17_fu_1071_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            init_address1_local = zext_ln14_12_fu_983_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            init_address1_local = zext_ln14_8_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            init_address1_local = zext_ln14_3_fu_803_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            init_address1_local = zext_ln13_1_fu_726_p1;
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_10_we0_local = 1'b1;
    end else begin
        llike_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        llike_11_we0_local = 1'b1;
    end else begin
        llike_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_we0_local = 1'b1;
    end else begin
        llike_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_we0_local = 1'b1;
    end else begin
        llike_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_14_we0_local = 1'b1;
    end else begin
        llike_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_15_we0_local = 1'b1;
    end else begin
        llike_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_8_we0_local = 1'b1;
    end else begin
        llike_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        llike_9_we0_local = 1'b1;
    end else begin
        llike_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
assign add_ln13_fu_1395_p2 = (s_1_reg_1479 + 7'd16);
assign add_ln14_10_fu_1356_p2 = (shl_ln14_s_fu_1349_p3 + zext_ln13_cast_reg_1464);
assign add_ln14_11_fu_1385_p2 = (shl_ln14_10_fu_1378_p3 + zext_ln13_cast_reg_1464);
assign add_ln14_1_fu_815_p2 = (shl_ln14_1_fu_808_p3 + zext_ln13_cast_reg_1464);
assign add_ln14_2_fu_844_p2 = (shl_ln14_2_fu_837_p3 + zext_ln13_cast_reg_1464);
assign add_ln14_3_fu_946_p2 = (shl_ln14_3_fu_934_p5 + zext_ln13_cast_reg_1464);
assign add_ln14_4_fu_995_p2 = (shl_ln14_4_fu_988_p3 + zext_ln13_cast_reg_1464);
assign add_ln14_5_fu_1024_p2 = (shl_ln14_5_fu_1017_p3 + zext_ln13_cast_reg_1464);
assign add_ln14_6_fu_1137_p2 = (shl_ln14_6_fu_1125_p5 + zext_ln13_cast_reg_1464);
assign add_ln14_7_fu_1192_p2 = (shl_ln14_7_fu_1182_p5 + zext_ln13_cast_reg_1464);
assign add_ln14_8_fu_1227_p2 = (shl_ln14_8_fu_1217_p5 + zext_ln13_cast_reg_1464);
assign add_ln14_9_fu_1307_p2 = (shl_ln14_9_fu_1297_p5 + zext_ln13_cast_reg_1464);
assign add_ln14_fu_785_p2 = (shl_ln_fu_777_p3 + zext_ln13_cast_fu_706_p1);
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
assign bitcast_ln14_10_fu_1053_p1 = reg_674;
assign bitcast_ln14_11_fu_1058_p1 = reg_678;
assign bitcast_ln14_12_fu_1147_p1 = reg_666;
assign bitcast_ln14_13_fu_1152_p1 = reg_670;
assign bitcast_ln14_14_fu_1157_p1 = reg_674;
assign bitcast_ln14_15_fu_1162_p1 = reg_678;
assign bitcast_ln14_16_fu_1237_p1 = reg_666;
assign bitcast_ln14_17_fu_1242_p1 = reg_670;
assign bitcast_ln14_18_fu_1247_p1 = reg_674;
assign bitcast_ln14_19_fu_1252_p1 = reg_678;
assign bitcast_ln14_1_fu_859_p1 = reg_670;
assign bitcast_ln14_20_fu_1317_p1 = reg_666;
assign bitcast_ln14_21_fu_1322_p1 = reg_670;
assign bitcast_ln14_22_fu_1327_p1 = reg_674;
assign bitcast_ln14_23_fu_1332_p1 = reg_678;
assign bitcast_ln14_24_fu_1405_p1 = reg_666;
assign bitcast_ln14_25_fu_1410_p1 = reg_670;
assign bitcast_ln14_26_fu_1415_p1 = reg_674;
assign bitcast_ln14_27_fu_1420_p1 = reg_678;
assign bitcast_ln14_28_fu_1425_p1 = reg_666;
assign bitcast_ln14_29_fu_1430_p1 = reg_670;
assign bitcast_ln14_2_fu_864_p1 = reg_674;
assign bitcast_ln14_30_fu_1435_p1 = reg_674;
assign bitcast_ln14_31_fu_1440_p1 = reg_678;
assign bitcast_ln14_3_fu_869_p1 = reg_678;
assign bitcast_ln14_4_fu_956_p1 = reg_666;
assign bitcast_ln14_5_fu_961_p1 = reg_670;
assign bitcast_ln14_6_fu_966_p1 = reg_674;
assign bitcast_ln14_7_fu_971_p1 = reg_678;
assign bitcast_ln14_8_fu_1043_p1 = reg_666;
assign bitcast_ln14_9_fu_1048_p1 = reg_670;
assign bitcast_ln14_fu_854_p1 = reg_666;
assign emission_address0 = emission_address0_local;
assign emission_address1 = emission_address1_local;
assign emission_ce0 = emission_ce0_local;
assign emission_ce1 = emission_ce1_local;
assign grp_fu_1042_p_ce = 1'b1;
assign grp_fu_1042_p_din0 = grp_fu_662_p0;
assign grp_fu_1042_p_din1 = grp_fu_662_p1;
assign grp_fu_1042_p_opcode = 2'd0;
assign grp_fu_612_p_ce = 1'b1;
assign grp_fu_612_p_din0 = grp_fu_658_p0;
assign grp_fu_612_p_din1 = grp_fu_658_p1;
assign grp_fu_612_p_opcode = 2'd0;
assign init_address0 = init_address0_local;
assign init_address1 = init_address1_local;
assign init_ce0 = init_ce0_local;
assign init_ce1 = init_ce1_local;
assign llike_10_address0 = zext_ln9_reg_1860;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_10_d0 = reg_682;
assign llike_10_we0 = llike_10_we0_local;
assign llike_11_address0 = zext_ln9_reg_1860;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_11_d0 = reg_694;
assign llike_11_we0 = llike_11_we0_local;
assign llike_12_address0 = zext_ln9_reg_1860;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_12_d0 = reg_682;
assign llike_12_we0 = llike_12_we0_local;
assign llike_13_address0 = zext_ln9_reg_1860;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_13_d0 = reg_694;
assign llike_13_we0 = llike_13_we0_local;
assign llike_14_address0 = zext_ln9_reg_1860;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_14_d0 = reg_682;
assign llike_14_we0 = llike_14_we0_local;
assign llike_15_address0 = zext_ln9_reg_1860;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_15_d0 = reg_694;
assign llike_15_we0 = llike_15_we0_local;
assign llike_1_address0 = zext_ln9_fu_1445_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_694;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_reg_1860;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_682;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_reg_1860;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_694;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_reg_1860;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_682;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_reg_1860;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_694;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = zext_ln9_reg_1860;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_682;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = zext_ln9_reg_1860;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_694;
assign llike_7_we0 = llike_7_we0_local;
assign llike_8_address0 = zext_ln9_reg_1860;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_8_d0 = reg_682;
assign llike_8_we0 = llike_8_we0_local;
assign llike_9_address0 = zext_ln9_reg_1860;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_9_d0 = reg_694;
assign llike_9_we0 = llike_9_we0_local;
assign llike_address0 = zext_ln9_fu_1445_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_682;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_1034_p4 = {{s_1_reg_1479[5:4]}};
assign or_ln13_10_fu_1257_p3 = {{lshr_ln9_reg_1635}, {4'd12}};
assign or_ln13_11_fu_1282_p5 = {{{{lshr_ln9_reg_1635}, {2'd3}}, {tmp_4_reg_1579}}, {1'd1}};
assign or_ln13_12_fu_1337_p3 = {{lshr_ln9_reg_1635}, {4'd14}};
assign or_ln13_13_fu_1366_p3 = {{lshr_ln9_reg_1635}, {4'd15}};
assign or_ln13_1_fu_796_p3 = {{tmp_cast_reg_1498}, {2'd2}};
assign or_ln13_2_fu_825_p3 = {{tmp_cast_reg_1498}, {2'd3}};
assign or_ln13_3_fu_883_p3 = {{tmp_77_fu_874_p4}, {3'd4}};
assign or_ln13_4_fu_917_p5 = {{{{tmp_77_fu_874_p4}, {1'd1}}, {tmp_4_fu_910_p3}}, {1'd1}};
assign or_ln13_5_fu_976_p3 = {{tmp_77_reg_1561}, {3'd6}};
assign or_ln13_6_fu_1005_p3 = {{tmp_77_reg_1561}, {3'd7}};
assign or_ln13_7_fu_1063_p3 = {{lshr_ln9_fu_1034_p4}, {4'd8}};
assign or_ln13_8_fu_1108_p5 = {{{{lshr_ln9_fu_1034_p4}, {1'd1}}, {tmp_78_fu_1099_p4}}, {1'd1}};
assign or_ln13_9_fu_1167_p5 = {{{{lshr_ln9_reg_1635}, {1'd1}}, {tmp_5_reg_1677}}, {2'd2}};
assign or_ln13_s_fu_1202_p5 = {{{{lshr_ln9_reg_1635}, {1'd1}}, {tmp_5_reg_1677}}, {2'd3}};
assign or_ln14_1_fu_896_p4 = {{{tmp_77_fu_874_p4}, {1'd1}}, {obs_load}};
assign or_ln14_2_fu_1083_p5 = {{{{lshr_ln9_fu_1034_p4}, {1'd1}}, {tmp_5_fu_1076_p3}}, {obs_load}};
assign or_ln14_3_fu_1269_p4 = {{{lshr_ln9_reg_1635}, {2'd3}}, {obs_load}};
assign or_ln1_fu_764_p3 = {{tmp_s_fu_754_p4}, {1'd1}};
assign or_ln_fu_741_p3 = {{tmp_cast_fu_731_p4}, {obs_load}};
assign shl_ln14_10_fu_1378_p3 = {{lshr_ln9_reg_1635}, {10'd960}};
assign shl_ln14_1_fu_808_p3 = {{tmp_cast_reg_1498}, {8'd128}};
assign shl_ln14_2_fu_837_p3 = {{tmp_cast_reg_1498}, {8'd192}};
assign shl_ln14_3_fu_934_p5 = {{{{tmp_77_fu_874_p4}, {1'd1}}, {tmp_4_fu_910_p3}}, {7'd64}};
assign shl_ln14_4_fu_988_p3 = {{tmp_77_reg_1561}, {9'd384}};
assign shl_ln14_5_fu_1017_p3 = {{tmp_77_reg_1561}, {9'd448}};
assign shl_ln14_6_fu_1125_p5 = {{{{lshr_ln9_fu_1034_p4}, {1'd1}}, {tmp_78_fu_1099_p4}}, {7'd64}};
assign shl_ln14_7_fu_1182_p5 = {{{{lshr_ln9_reg_1635}, {1'd1}}, {tmp_5_reg_1677}}, {8'd128}};
assign shl_ln14_8_fu_1217_p5 = {{{{lshr_ln9_reg_1635}, {1'd1}}, {tmp_5_reg_1677}}, {8'd192}};
assign shl_ln14_9_fu_1297_p5 = {{{{lshr_ln9_reg_1635}, {2'd3}}, {tmp_4_reg_1579}}, {7'd64}};
assign shl_ln14_s_fu_1349_p3 = {{lshr_ln9_reg_1635}, {10'd896}};
assign shl_ln_fu_777_p3 = {{tmp_s_fu_754_p4}, {7'd64}};
assign tmp_4_fu_910_p3 = s_1_reg_1479[32'd1];
assign tmp_5_fu_1076_p3 = s_1_reg_1479[32'd2];
assign tmp_77_fu_874_p4 = {{s_1_reg_1479[5:3]}};
assign tmp_78_fu_1099_p4 = {{s_1_reg_1479[2:1]}};
assign tmp_cast_fu_731_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign tmp_s_fu_754_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign zext_ln13_1_fu_726_p1 = ap_sig_allocacmp_s_1;
assign zext_ln13_cast_fu_706_p1 = zext_ln13;
assign zext_ln14_10_fu_929_p1 = or_ln13_4_fu_917_p5;
assign zext_ln14_11_fu_1000_p1 = add_ln14_4_fu_995_p2;
assign zext_ln14_12_fu_983_p1 = or_ln13_5_fu_976_p3;
assign zext_ln14_13_fu_1029_p1 = add_ln14_5_fu_1024_p2;
assign zext_ln14_14_fu_1094_p1 = or_ln14_2_fu_1083_p5;
assign zext_ln14_15_fu_1012_p1 = or_ln13_6_fu_1005_p3;
assign zext_ln14_16_fu_1142_p1 = add_ln14_6_fu_1137_p2;
assign zext_ln14_17_fu_1071_p1 = or_ln13_7_fu_1063_p3;
assign zext_ln14_18_fu_1197_p1 = add_ln14_7_fu_1192_p2;
assign zext_ln14_19_fu_1120_p1 = or_ln13_8_fu_1108_p5;
assign zext_ln14_1_fu_772_p1 = or_ln1_fu_764_p3;
assign zext_ln14_20_fu_1232_p1 = add_ln14_8_fu_1227_p2;
assign zext_ln14_21_fu_1277_p1 = or_ln14_3_fu_1269_p4;
assign zext_ln14_22_fu_1177_p1 = or_ln13_9_fu_1167_p5;
assign zext_ln14_23_fu_1312_p1 = add_ln14_9_fu_1307_p2;
assign zext_ln14_24_fu_1212_p1 = or_ln13_s_fu_1202_p5;
assign zext_ln14_25_fu_1361_p1 = add_ln14_10_fu_1356_p2;
assign zext_ln14_26_fu_1264_p1 = or_ln13_10_fu_1257_p3;
assign zext_ln14_27_fu_1390_p1 = add_ln14_11_fu_1385_p2;
assign zext_ln14_28_fu_1292_p1 = or_ln13_11_fu_1282_p5;
assign zext_ln14_29_fu_1344_p1 = or_ln13_12_fu_1337_p3;
assign zext_ln14_2_fu_791_p1 = add_ln14_fu_785_p2;
assign zext_ln14_30_fu_1373_p1 = or_ln13_13_fu_1366_p3;
assign zext_ln14_3_fu_803_p1 = or_ln13_1_fu_796_p3;
assign zext_ln14_4_fu_820_p1 = add_ln14_1_fu_815_p2;
assign zext_ln14_5_fu_832_p1 = or_ln13_2_fu_825_p3;
assign zext_ln14_6_fu_849_p1 = add_ln14_2_fu_844_p2;
assign zext_ln14_7_fu_905_p1 = or_ln14_1_fu_896_p4;
assign zext_ln14_8_fu_891_p1 = or_ln13_3_fu_883_p3;
assign zext_ln14_9_fu_951_p1 = add_ln14_3_fu_946_p2;
assign zext_ln14_fu_749_p1 = or_ln_fu_741_p3;
assign zext_ln9_fu_1445_p1 = lshr_ln9_reg_1635;
always @ (posedge ap_clk) begin
    zext_ln13_cast_reg_1464[11:8] <= 4'b0000;
    zext_ln9_reg_1860[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
end
endmodule 