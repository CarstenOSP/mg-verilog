
module bicg_bicg_node1_Pipeline_label_220 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,lshr_ln,v137_4_address0,v137_4_ce0,v137_4_q0,v137_4_address1,v137_4_ce1,v137_4_q1,v137_12_address0,v137_12_ce0,v137_12_q0,v137_12_address1,v137_12_ce1,v137_12_q1,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_1_q0,v10_1_address1,v10_1_ce1,v10_1_we1,v10_1_d1,v10_1_q1,v10_0_address0,v10_0_ce0,v10_0_we0,v10_0_d0,v10_0_q0,v10_0_address1,v10_0_ce1,v10_0_we1,v10_0_d1,v10_0_q1,icmp_ln46,v17_4,grp_fu_685_p_din0,grp_fu_685_p_din1,grp_fu_685_p_opcode,grp_fu_685_p_dout0,grp_fu_685_p_ce,grp_fu_689_p_din0,grp_fu_689_p_din1,grp_fu_689_p_opcode,grp_fu_689_p_dout0,grp_fu_689_p_ce,grp_fu_693_p_din0,grp_fu_693_p_din1,grp_fu_693_p_dout0,grp_fu_693_p_ce,grp_fu_697_p_din0,grp_fu_697_p_din1,grp_fu_697_p_dout0,grp_fu_697_p_ce);  
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
input  [1:0] lshr_ln;
output  [7:0] v137_4_address0;
output   v137_4_ce0;
input  [31:0] v137_4_q0;
output  [7:0] v137_4_address1;
output   v137_4_ce1;
input  [31:0] v137_4_q1;
output  [7:0] v137_12_address0;
output   v137_12_ce0;
input  [31:0] v137_12_q0;
output  [7:0] v137_12_address1;
output   v137_12_ce1;
input  [31:0] v137_12_q1;
output  [4:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [31:0] v10_1_d0;
input  [31:0] v10_1_q0;
output  [4:0] v10_1_address1;
output   v10_1_ce1;
output   v10_1_we1;
output  [31:0] v10_1_d1;
input  [31:0] v10_1_q1;
output  [4:0] v10_0_address0;
output   v10_0_ce0;
output   v10_0_we0;
output  [31:0] v10_0_d0;
input  [31:0] v10_0_q0;
output  [4:0] v10_0_address1;
output   v10_0_ce1;
output   v10_0_we1;
output  [31:0] v10_0_d1;
input  [31:0] v10_0_q1;
input  [0:0] icmp_ln46;
input  [31:0] v17_4;
output  [31:0] grp_fu_685_p_din0;
output  [31:0] grp_fu_685_p_din1;
output  [1:0] grp_fu_685_p_opcode;
input  [31:0] grp_fu_685_p_dout0;
output   grp_fu_685_p_ce;
output  [31:0] grp_fu_689_p_din0;
output  [31:0] grp_fu_689_p_din1;
output  [1:0] grp_fu_689_p_opcode;
input  [31:0] grp_fu_689_p_dout0;
output   grp_fu_689_p_ce;
output  [31:0] grp_fu_693_p_din0;
output  [31:0] grp_fu_693_p_din1;
input  [31:0] grp_fu_693_p_dout0;
output   grp_fu_693_p_ce;
output  [31:0] grp_fu_697_p_din0;
output  [31:0] grp_fu_697_p_din1;
input  [31:0] grp_fu_697_p_dout0;
output   grp_fu_697_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] tmp_reg_1190;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_578_p3;
reg   [31:0] reg_592;
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
wire   [31:0] grp_fu_585_p3;
reg   [31:0] reg_596;
reg   [31:0] reg_600;
reg   [31:0] reg_605;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v12_4_reg_1181;
wire   [0:0] tmp_fu_618_p3;
reg   [4:0] v10_0_addr_reg_1204;
reg   [4:0] v10_0_addr_reg_1204_pp0_iter1_reg;
reg   [4:0] v10_1_addr_reg_1219;
reg   [4:0] v10_1_addr_reg_1219_pp0_iter1_reg;
wire   [3:0] tmp_61_fu_676_p4;
reg   [3:0] tmp_61_reg_1224;
reg   [4:0] v10_0_addr_22_reg_1230;
reg   [4:0] v10_0_addr_22_reg_1230_pp0_iter1_reg;
reg   [4:0] v10_1_addr_22_reg_1236;
reg   [4:0] v10_1_addr_22_reg_1236_pp0_iter1_reg;
reg   [31:0] v14_reg_1242;
wire   [2:0] tmp_64_fu_739_p4;
reg   [2:0] tmp_64_reg_1267;
wire   [0:0] tmp_1034_fu_748_p3;
reg   [0:0] tmp_1034_reg_1275;
reg   [4:0] v10_0_addr_23_reg_1282;
reg   [4:0] v10_0_addr_23_reg_1282_pp0_iter1_reg;
reg   [4:0] v10_1_addr_23_reg_1287;
reg   [4:0] v10_1_addr_23_reg_1287_pp0_iter1_reg;
reg   [4:0] v10_0_addr_24_reg_1292;
reg   [4:0] v10_0_addr_24_reg_1292_pp0_iter1_reg;
reg   [4:0] v10_0_addr_24_reg_1292_pp0_iter2_reg;
reg   [4:0] v10_1_addr_24_reg_1298;
reg   [4:0] v10_1_addr_24_reg_1298_pp0_iter1_reg;
reg   [4:0] v10_1_addr_24_reg_1298_pp0_iter2_reg;
reg   [1:0] tmp_69_reg_1304;
reg   [1:0] tmp_69_reg_1304_pp0_iter1_reg;
reg   [1:0] tmp_71_reg_1320;
reg   [0:0] tmp_1035_reg_1326;
reg   [31:0] v21_reg_1333;
reg   [31:0] v27_reg_1338;
reg   [31:0] v33_reg_1343;
wire   [31:0] v16_fu_810_p1;
wire   [31:0] v23_fu_815_p1;
reg   [4:0] v10_0_addr_25_reg_1378;
reg   [4:0] v10_0_addr_25_reg_1378_pp0_iter1_reg;
reg   [4:0] v10_0_addr_25_reg_1378_pp0_iter2_reg;
reg   [4:0] v10_1_addr_25_reg_1384;
reg   [4:0] v10_1_addr_25_reg_1384_pp0_iter1_reg;
reg   [4:0] v10_1_addr_25_reg_1384_pp0_iter2_reg;
reg   [4:0] v10_0_addr_26_reg_1390;
reg   [4:0] v10_0_addr_26_reg_1390_pp0_iter1_reg;
reg   [4:0] v10_0_addr_26_reg_1390_pp0_iter2_reg;
reg   [4:0] v10_1_addr_26_reg_1395;
reg   [4:0] v10_1_addr_26_reg_1395_pp0_iter1_reg;
reg   [4:0] v10_1_addr_26_reg_1395_pp0_iter2_reg;
reg   [31:0] v39_reg_1400;
reg   [31:0] v45_reg_1405;
reg   [31:0] v51_reg_1410;
reg   [31:0] v57_reg_1415;
wire   [31:0] v29_fu_881_p1;
wire   [31:0] v35_fu_886_p1;
reg   [4:0] v10_0_addr_27_reg_1450;
reg   [4:0] v10_0_addr_27_reg_1450_pp0_iter1_reg;
reg   [4:0] v10_0_addr_27_reg_1450_pp0_iter2_reg;
reg   [4:0] v10_1_addr_27_reg_1456;
reg   [4:0] v10_1_addr_27_reg_1456_pp0_iter1_reg;
reg   [4:0] v10_1_addr_27_reg_1456_pp0_iter2_reg;
reg   [31:0] v14_4_reg_1462;
reg   [31:0] v21_4_reg_1467;
reg   [31:0] v27_4_reg_1472;
reg   [31:0] v33_4_reg_1477;
wire   [31:0] v41_fu_933_p1;
wire   [31:0] v47_fu_938_p1;
reg   [31:0] v39_4_reg_1512;
reg   [31:0] v45_4_reg_1517;
reg   [31:0] v18_reg_1522;
reg   [31:0] v24_reg_1527;
wire   [31:0] v53_fu_974_p1;
wire   [31:0] v59_fu_979_p1;
reg   [31:0] v30_reg_1562;
reg   [31:0] v36_reg_1567;
wire   [31:0] v16_4_fu_1018_p1;
wire   [31:0] v23_4_fu_1023_p1;
reg   [31:0] v42_reg_1602;
reg   [31:0] v48_reg_1607;
wire   [31:0] v29_4_fu_1059_p1;
wire   [31:0] v35_4_fu_1064_p1;
reg   [31:0] v54_reg_1642;
reg   [31:0] v60_reg_1647;
wire   [31:0] v41_4_fu_1097_p1;
wire   [31:0] v47_4_fu_1102_p1;
wire   [31:0] select_ln89_4_fu_1107_p3;
reg   [31:0] select_ln89_4_reg_1662;
wire   [31:0] select_ln96_4_fu_1114_p3;
reg   [31:0] select_ln96_4_reg_1667;
reg   [31:0] v18_4_reg_1672;
reg   [31:0] v24_4_reg_1677;
wire   [31:0] v53_4_fu_1121_p1;
wire   [31:0] v59_4_fu_1125_p1;
reg   [31:0] v30_4_reg_1692;
reg   [31:0] v36_4_reg_1697;
reg   [31:0] v42_4_reg_1702;
reg   [31:0] v48_4_reg_1707;
reg   [4:0] v10_0_addr_28_reg_1712;
reg   [4:0] v10_0_addr_28_reg_1712_pp0_iter2_reg;
reg   [4:0] v10_1_addr_28_reg_1717;
reg   [4:0] v10_1_addr_28_reg_1717_pp0_iter2_reg;
reg   [31:0] v54_4_reg_1722;
reg   [31:0] v60_4_reg_1727;
reg   [31:0] v51_4_reg_1732;
reg   [31:0] v57_4_reg_1737;
reg   [31:0] v19_4_reg_1742;
reg   [31:0] v25_4_reg_1747;
reg   [31:0] v31_4_reg_1752;
reg   [31:0] v37_4_reg_1757;
reg   [31:0] v43_4_reg_1762;
reg   [31:0] v49_4_reg_1767;
reg   [31:0] v55_4_reg_1772;
reg   [31:0] v61_4_reg_1777;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln46_fu_638_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln42_fu_654_p1;
wire   [63:0] zext_ln54_fu_670_p1;
wire   [63:0] zext_ln59_fu_694_p1;
wire   [63:0] zext_ln61_fu_719_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln68_fu_733_p1;
wire   [63:0] zext_ln73_fu_765_p1;
wire   [63:0] zext_ln87_fu_779_p1;
wire   [63:0] zext_ln75_fu_828_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln82_fu_845_p1;
wire   [63:0] zext_ln44_fu_859_p1;
wire   [63:0] zext_ln59_4_fu_875_p1;
wire   [63:0] zext_ln89_fu_899_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln96_fu_913_p1;
wire   [63:0] zext_ln73_4_fu_927_p1;
wire   [63:0] zext_ln46_4_fu_951_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln54_4_fu_968_p1;
wire   [63:0] zext_ln61_4_fu_995_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln68_4_fu_1012_p1;
wire   [63:0] zext_ln75_4_fu_1036_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln82_4_fu_1053_p1;
wire   [63:0] zext_ln89_4_fu_1077_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln96_4_fu_1091_p1;
wire   [63:0] zext_ln87_4_fu_1136_p1;
reg   [6:0] v12_fu_120;
wire   [6:0] add_ln42_fu_700_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v12_4;
reg    v10_0_ce1_local;
reg   [4:0] v10_0_address1_local;
reg    v10_0_ce0_local;
reg   [4:0] v10_0_address0_local;
reg    v10_0_we1_local;
reg    v10_0_we0_local;
reg   [31:0] v10_0_d0_local;
reg    v137_4_ce1_local;
reg   [7:0] v137_4_address1_local;
reg    v137_4_ce0_local;
reg   [7:0] v137_4_address0_local;
reg    v137_12_ce1_local;
reg   [7:0] v137_12_address1_local;
reg    v137_12_ce0_local;
reg   [7:0] v137_12_address0_local;
reg    v10_1_ce1_local;
reg   [4:0] v10_1_address1_local;
reg    v10_1_ce0_local;
reg   [4:0] v10_1_address0_local;
reg    v10_1_we1_local;
reg    v10_1_we0_local;
reg   [31:0] v10_1_d0_local;
reg   [31:0] grp_fu_562_p0;
reg   [31:0] grp_fu_562_p1;
reg   [31:0] grp_fu_566_p0;
reg   [31:0] grp_fu_566_p1;
reg   [31:0] grp_fu_570_p0;
reg   [31:0] grp_fu_574_p0;
wire   [5:0] trunc_ln42_fu_626_p1;
wire   [7:0] tmp_s_fu_630_p3;
wire   [4:0] lshr_ln42_4_fu_644_p4;
wire   [7:0] tmp_60_fu_660_p4;
wire   [4:0] or_ln59_2_fu_686_p3;
wire   [7:0] tmp_62_fu_711_p4;
wire   [7:0] tmp_63_fu_725_p4;
wire   [4:0] or_ln73_2_fu_755_p4;
wire   [4:0] or_ln87_2_fu_771_p3;
wire   [7:0] tmp_65_fu_820_p4;
wire   [7:0] tmp_66_fu_834_p6;
wire   [4:0] or_ln44_3_fu_851_p4;
wire   [4:0] or_ln59_4_fu_865_p5;
wire   [7:0] tmp_67_fu_891_p4;
wire   [7:0] tmp_68_fu_905_p4;
wire   [4:0] or_ln73_4_fu_919_p4;
wire   [7:0] tmp_70_fu_943_p4;
wire   [7:0] tmp_72_fu_957_p6;
wire   [7:0] tmp_73_fu_984_p6;
wire   [7:0] tmp_74_fu_1001_p6;
wire   [7:0] tmp_75_fu_1028_p4;
wire   [7:0] tmp_76_fu_1042_p6;
wire   [7:0] tmp_77_fu_1069_p4;
wire   [7:0] tmp_78_fu_1083_p4;
wire   [4:0] or_ln87_4_fu_1129_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v12_fu_120 = 7'd0;
#0 ap_done_reg = 1'b0;
end
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_618_p3 == 1'd0))) begin
            v12_fu_120 <= add_ln42_fu_700_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v12_fu_120 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_592 <= grp_fu_578_p3;
        reg_596 <= grp_fu_585_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_600 <= grp_fu_685_p_dout0;
        reg_605 <= grp_fu_689_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln89_4_reg_1662 <= select_ln89_4_fu_1107_p3;
        select_ln96_4_reg_1667 <= select_ln96_4_fu_1114_p3;
        tmp_61_reg_1224 <= {{ap_sig_allocacmp_v12_4[5:2]}};
        tmp_reg_1190 <= ap_sig_allocacmp_v12_4[32'd6];
        v10_0_addr_22_reg_1230[4 : 1] <= zext_ln59_fu_694_p1[4 : 1];
        v10_0_addr_22_reg_1230_pp0_iter1_reg[4 : 1] <= v10_0_addr_22_reg_1230[4 : 1];
        v10_0_addr_reg_1204 <= zext_ln42_fu_654_p1;
        v10_0_addr_reg_1204_pp0_iter1_reg <= v10_0_addr_reg_1204;
        v10_1_addr_22_reg_1236[4 : 1] <= zext_ln59_fu_694_p1[4 : 1];
        v10_1_addr_22_reg_1236_pp0_iter1_reg[4 : 1] <= v10_1_addr_22_reg_1236[4 : 1];
        v10_1_addr_reg_1219 <= zext_ln42_fu_654_p1;
        v10_1_addr_reg_1219_pp0_iter1_reg <= v10_1_addr_reg_1219;
        v12_4_reg_1181 <= ap_sig_allocacmp_v12_4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1034_reg_1275 <= v12_4_reg_1181[32'd1];
        tmp_1035_reg_1326 <= v12_4_reg_1181[32'd2];
        tmp_64_reg_1267 <= {{v12_4_reg_1181[5:3]}};
        tmp_69_reg_1304 <= {{v12_4_reg_1181[5:4]}};
        tmp_69_reg_1304_pp0_iter1_reg <= tmp_69_reg_1304;
        tmp_71_reg_1320 <= {{v12_4_reg_1181[2:1]}};
        v10_0_addr_23_reg_1282[0] <= zext_ln73_fu_765_p1[0];
v10_0_addr_23_reg_1282[4 : 2] <= zext_ln73_fu_765_p1[4 : 2];
        v10_0_addr_23_reg_1282_pp0_iter1_reg[0] <= v10_0_addr_23_reg_1282[0];
v10_0_addr_23_reg_1282_pp0_iter1_reg[4 : 2] <= v10_0_addr_23_reg_1282[4 : 2];
        v10_0_addr_24_reg_1292[4 : 2] <= zext_ln87_fu_779_p1[4 : 2];
        v10_0_addr_24_reg_1292_pp0_iter1_reg[4 : 2] <= v10_0_addr_24_reg_1292[4 : 2];
        v10_0_addr_24_reg_1292_pp0_iter2_reg[4 : 2] <= v10_0_addr_24_reg_1292_pp0_iter1_reg[4 : 2];
        v10_1_addr_23_reg_1287[0] <= zext_ln73_fu_765_p1[0];
v10_1_addr_23_reg_1287[4 : 2] <= zext_ln73_fu_765_p1[4 : 2];
        v10_1_addr_23_reg_1287_pp0_iter1_reg[0] <= v10_1_addr_23_reg_1287[0];
v10_1_addr_23_reg_1287_pp0_iter1_reg[4 : 2] <= v10_1_addr_23_reg_1287[4 : 2];
        v10_1_addr_24_reg_1298[4 : 2] <= zext_ln87_fu_779_p1[4 : 2];
        v10_1_addr_24_reg_1298_pp0_iter1_reg[4 : 2] <= v10_1_addr_24_reg_1298[4 : 2];
        v10_1_addr_24_reg_1298_pp0_iter2_reg[4 : 2] <= v10_1_addr_24_reg_1298_pp0_iter1_reg[4 : 2];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_addr_25_reg_1378[1 : 0] <= zext_ln44_fu_859_p1[1 : 0];
v10_0_addr_25_reg_1378[4 : 3] <= zext_ln44_fu_859_p1[4 : 3];
        v10_0_addr_25_reg_1378_pp0_iter1_reg[1 : 0] <= v10_0_addr_25_reg_1378[1 : 0];
v10_0_addr_25_reg_1378_pp0_iter1_reg[4 : 3] <= v10_0_addr_25_reg_1378[4 : 3];
        v10_0_addr_25_reg_1378_pp0_iter2_reg[1 : 0] <= v10_0_addr_25_reg_1378_pp0_iter1_reg[1 : 0];
v10_0_addr_25_reg_1378_pp0_iter2_reg[4 : 3] <= v10_0_addr_25_reg_1378_pp0_iter1_reg[4 : 3];
        v10_0_addr_26_reg_1390[1] <= zext_ln59_4_fu_875_p1[1];
v10_0_addr_26_reg_1390[4 : 3] <= zext_ln59_4_fu_875_p1[4 : 3];
        v10_0_addr_26_reg_1390_pp0_iter1_reg[1] <= v10_0_addr_26_reg_1390[1];
v10_0_addr_26_reg_1390_pp0_iter1_reg[4 : 3] <= v10_0_addr_26_reg_1390[4 : 3];
        v10_0_addr_26_reg_1390_pp0_iter2_reg[1] <= v10_0_addr_26_reg_1390_pp0_iter1_reg[1];
v10_0_addr_26_reg_1390_pp0_iter2_reg[4 : 3] <= v10_0_addr_26_reg_1390_pp0_iter1_reg[4 : 3];
        v10_1_addr_25_reg_1384[1 : 0] <= zext_ln44_fu_859_p1[1 : 0];
v10_1_addr_25_reg_1384[4 : 3] <= zext_ln44_fu_859_p1[4 : 3];
        v10_1_addr_25_reg_1384_pp0_iter1_reg[1 : 0] <= v10_1_addr_25_reg_1384[1 : 0];
v10_1_addr_25_reg_1384_pp0_iter1_reg[4 : 3] <= v10_1_addr_25_reg_1384[4 : 3];
        v10_1_addr_25_reg_1384_pp0_iter2_reg[1 : 0] <= v10_1_addr_25_reg_1384_pp0_iter1_reg[1 : 0];
v10_1_addr_25_reg_1384_pp0_iter2_reg[4 : 3] <= v10_1_addr_25_reg_1384_pp0_iter1_reg[4 : 3];
        v10_1_addr_26_reg_1395[1] <= zext_ln59_4_fu_875_p1[1];
v10_1_addr_26_reg_1395[4 : 3] <= zext_ln59_4_fu_875_p1[4 : 3];
        v10_1_addr_26_reg_1395_pp0_iter1_reg[1] <= v10_1_addr_26_reg_1395[1];
v10_1_addr_26_reg_1395_pp0_iter1_reg[4 : 3] <= v10_1_addr_26_reg_1395[4 : 3];
        v10_1_addr_26_reg_1395_pp0_iter2_reg[1] <= v10_1_addr_26_reg_1395_pp0_iter1_reg[1];
v10_1_addr_26_reg_1395_pp0_iter2_reg[4 : 3] <= v10_1_addr_26_reg_1395_pp0_iter1_reg[4 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_addr_27_reg_1450[0] <= zext_ln73_4_fu_927_p1[0];
v10_0_addr_27_reg_1450[4 : 3] <= zext_ln73_4_fu_927_p1[4 : 3];
        v10_0_addr_27_reg_1450_pp0_iter1_reg[0] <= v10_0_addr_27_reg_1450[0];
v10_0_addr_27_reg_1450_pp0_iter1_reg[4 : 3] <= v10_0_addr_27_reg_1450[4 : 3];
        v10_0_addr_27_reg_1450_pp0_iter2_reg[0] <= v10_0_addr_27_reg_1450_pp0_iter1_reg[0];
v10_0_addr_27_reg_1450_pp0_iter2_reg[4 : 3] <= v10_0_addr_27_reg_1450_pp0_iter1_reg[4 : 3];
        v10_0_addr_28_reg_1712[4 : 3] <= zext_ln87_4_fu_1136_p1[4 : 3];
        v10_0_addr_28_reg_1712_pp0_iter2_reg[4 : 3] <= v10_0_addr_28_reg_1712[4 : 3];
        v10_1_addr_27_reg_1456[0] <= zext_ln73_4_fu_927_p1[0];
v10_1_addr_27_reg_1456[4 : 3] <= zext_ln73_4_fu_927_p1[4 : 3];
        v10_1_addr_27_reg_1456_pp0_iter1_reg[0] <= v10_1_addr_27_reg_1456[0];
v10_1_addr_27_reg_1456_pp0_iter1_reg[4 : 3] <= v10_1_addr_27_reg_1456[4 : 3];
        v10_1_addr_27_reg_1456_pp0_iter2_reg[0] <= v10_1_addr_27_reg_1456_pp0_iter1_reg[0];
v10_1_addr_27_reg_1456_pp0_iter2_reg[4 : 3] <= v10_1_addr_27_reg_1456_pp0_iter1_reg[4 : 3];
        v10_1_addr_28_reg_1717[4 : 3] <= zext_ln87_4_fu_1136_p1[4 : 3];
        v10_1_addr_28_reg_1717_pp0_iter2_reg[4 : 3] <= v10_1_addr_28_reg_1717[4 : 3];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v14_4_reg_1462 <= v10_0_q1;
        v21_4_reg_1467 <= v10_1_q1;
        v27_4_reg_1472 <= v10_0_q0;
        v33_4_reg_1477 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v14_reg_1242 <= v10_0_q1;
        v21_reg_1333 <= v10_1_q1;
        v27_reg_1338 <= v10_0_q0;
        v33_reg_1343 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v18_4_reg_1672 <= grp_fu_693_p_dout0;
        v24_4_reg_1677 <= grp_fu_697_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_reg_1522 <= grp_fu_693_p_dout0;
        v24_reg_1527 <= grp_fu_697_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_4_reg_1742 <= grp_fu_685_p_dout0;
        v25_4_reg_1747 <= grp_fu_689_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v30_4_reg_1692 <= grp_fu_693_p_dout0;
        v36_4_reg_1697 <= grp_fu_697_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v30_reg_1562 <= grp_fu_693_p_dout0;
        v36_reg_1567 <= grp_fu_697_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v31_4_reg_1752 <= grp_fu_685_p_dout0;
        v37_4_reg_1757 <= grp_fu_689_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v39_4_reg_1512 <= v10_0_q1;
        v45_4_reg_1517 <= v10_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v39_reg_1400 <= v10_0_q1;
        v45_reg_1405 <= v10_1_q1;
        v51_reg_1410 <= v10_0_q0;
        v57_reg_1415 <= v10_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v42_4_reg_1702 <= grp_fu_693_p_dout0;
        v48_4_reg_1707 <= grp_fu_697_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v42_reg_1602 <= grp_fu_693_p_dout0;
        v48_reg_1607 <= grp_fu_697_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v43_4_reg_1762 <= grp_fu_685_p_dout0;
        v49_4_reg_1767 <= grp_fu_689_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v51_4_reg_1732 <= v10_0_q0;
        v54_4_reg_1722 <= grp_fu_693_p_dout0;
        v57_4_reg_1737 <= v10_1_q0;
        v60_4_reg_1727 <= grp_fu_697_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v54_reg_1642 <= grp_fu_693_p_dout0;
        v60_reg_1647 <= grp_fu_697_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v55_4_reg_1772 <= grp_fu_685_p_dout0;
        v61_4_reg_1777 <= grp_fu_689_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1190 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        ap_sig_allocacmp_v12_4 = 7'd0;
    end else begin
        ap_sig_allocacmp_v12_4 = v12_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_562_p0 = v51_4_reg_1732;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_562_p0 = v39_4_reg_1512;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_562_p0 = v27_4_reg_1472;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_562_p0 = v14_4_reg_1462;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_562_p0 = v51_reg_1410;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_p0 = v39_reg_1400;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_562_p0 = v27_reg_1338;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_562_p0 = v14_reg_1242;
    end else begin
        grp_fu_562_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_562_p1 = v54_4_reg_1722;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_562_p1 = v42_4_reg_1702;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_562_p1 = v30_4_reg_1692;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_562_p1 = v18_4_reg_1672;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_562_p1 = v54_reg_1642;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_p1 = v42_reg_1602;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_562_p1 = v30_reg_1562;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_562_p1 = v18_reg_1522;
    end else begin
        grp_fu_562_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_566_p0 = v57_4_reg_1737;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_566_p0 = v45_4_reg_1517;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_566_p0 = v33_4_reg_1477;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_566_p0 = v21_4_reg_1467;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_566_p0 = v57_reg_1415;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_566_p0 = v45_reg_1405;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_566_p0 = v33_reg_1343;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_566_p0 = v21_reg_1333;
    end else begin
        grp_fu_566_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_566_p1 = v60_4_reg_1727;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_566_p1 = v48_4_reg_1707;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_566_p1 = v36_4_reg_1697;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_566_p1 = v24_4_reg_1677;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_566_p1 = v60_reg_1647;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_566_p1 = v48_reg_1607;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_566_p1 = v36_reg_1567;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_566_p1 = v24_reg_1527;
    end else begin
        grp_fu_566_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p0 = v53_4_fu_1121_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_p0 = v41_4_fu_1097_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_570_p0 = v29_4_fu_1059_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_570_p0 = v16_4_fu_1018_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_570_p0 = v53_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_570_p0 = v41_fu_933_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_570_p0 = v29_fu_881_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_570_p0 = v16_fu_810_p1;
    end else begin
        grp_fu_570_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p0 = v59_4_fu_1125_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p0 = v47_4_fu_1102_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_574_p0 = v35_4_fu_1064_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_574_p0 = v23_4_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_574_p0 = v59_fu_979_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_574_p0 = v47_fu_938_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_574_p0 = v35_fu_886_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_574_p0 = v23_fu_815_p1;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v10_0_address0_local = v10_0_addr_28_reg_1712_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v10_0_address0_local = v10_0_addr_27_reg_1450_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v10_0_address0_local = v10_0_addr_26_reg_1390_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v10_0_address0_local = v10_0_addr_25_reg_1378_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address0_local = zext_ln87_4_fu_1136_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address0_local = zext_ln59_4_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address0_local = zext_ln87_fu_779_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address0_local = zext_ln59_fu_694_p1;
    end else begin
        v10_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v10_0_address1_local = v10_0_addr_24_reg_1292_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v10_0_address1_local = v10_0_addr_23_reg_1282_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v10_0_address1_local = v10_0_addr_22_reg_1230_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v10_0_address1_local = v10_0_addr_reg_1204_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_0_address1_local = zext_ln73_4_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_0_address1_local = zext_ln44_fu_859_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_0_address1_local = zext_ln73_fu_765_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_0_address1_local = zext_ln42_fu_654_p1;
    end else begin
        v10_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce0_local = 1'b1;
    end else begin
        v10_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_0_ce1_local = 1'b1;
    end else begin
        v10_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v10_0_d0_local = v55_4_reg_1772;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v10_0_d0_local = v43_4_reg_1762;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v10_0_d0_local = v31_4_reg_1752;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v10_0_d0_local = v19_4_reg_1742;
        end else begin
            v10_0_d0_local = 'bx;
        end
    end else begin
        v10_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v10_0_we0_local = 1'b1;
    end else begin
        v10_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v10_0_we1_local = 1'b1;
    end else begin
        v10_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v10_1_address0_local = v10_1_addr_28_reg_1717_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v10_1_address0_local = v10_1_addr_27_reg_1456_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v10_1_address0_local = v10_1_addr_26_reg_1395_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v10_1_address0_local = v10_1_addr_25_reg_1384_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address0_local = zext_ln87_4_fu_1136_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address0_local = zext_ln59_4_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address0_local = zext_ln87_fu_779_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address0_local = zext_ln59_fu_694_p1;
    end else begin
        v10_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v10_1_address1_local = v10_1_addr_24_reg_1298_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v10_1_address1_local = v10_1_addr_23_reg_1287_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v10_1_address1_local = v10_1_addr_22_reg_1236_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v10_1_address1_local = v10_1_addr_reg_1219_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v10_1_address1_local = zext_ln73_4_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v10_1_address1_local = zext_ln44_fu_859_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_address1_local = zext_ln73_fu_765_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v10_1_address1_local = zext_ln42_fu_654_p1;
    end else begin
        v10_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v10_1_ce1_local = 1'b1;
    end else begin
        v10_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v10_1_d0_local = v61_4_reg_1777;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v10_1_d0_local = v49_4_reg_1767;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v10_1_d0_local = v37_4_reg_1757;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v10_1_d0_local = v25_4_reg_1747;
        end else begin
            v10_1_d0_local = 'bx;
        end
    end else begin
        v10_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v10_1_we1_local = 1'b1;
    end else begin
        v10_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v137_12_address0_local = zext_ln96_4_fu_1091_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v137_12_address0_local = zext_ln82_4_fu_1053_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v137_12_address0_local = zext_ln68_4_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v137_12_address0_local = zext_ln54_4_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_12_address0_local = zext_ln96_fu_913_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_12_address0_local = zext_ln82_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_12_address0_local = zext_ln68_fu_733_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_12_address0_local = zext_ln54_fu_670_p1;
        end else begin
            v137_12_address0_local = 'bx;
        end
    end else begin
        v137_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v137_12_address1_local = zext_ln89_4_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v137_12_address1_local = zext_ln75_4_fu_1036_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v137_12_address1_local = zext_ln61_4_fu_995_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v137_12_address1_local = zext_ln46_4_fu_951_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_12_address1_local = zext_ln89_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_12_address1_local = zext_ln75_fu_828_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_12_address1_local = zext_ln61_fu_719_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_12_address1_local = zext_ln46_fu_638_p1;
        end else begin
            v137_12_address1_local = 'bx;
        end
    end else begin
        v137_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_12_ce0_local = 1'b1;
    end else begin
        v137_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_12_ce1_local = 1'b1;
    end else begin
        v137_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v137_4_address0_local = zext_ln96_4_fu_1091_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v137_4_address0_local = zext_ln82_4_fu_1053_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v137_4_address0_local = zext_ln68_4_fu_1012_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v137_4_address0_local = zext_ln54_4_fu_968_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_4_address0_local = zext_ln96_fu_913_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_4_address0_local = zext_ln82_fu_845_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_4_address0_local = zext_ln68_fu_733_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_4_address0_local = zext_ln54_fu_670_p1;
        end else begin
            v137_4_address0_local = 'bx;
        end
    end else begin
        v137_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            v137_4_address1_local = zext_ln89_4_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            v137_4_address1_local = zext_ln75_4_fu_1036_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v137_4_address1_local = zext_ln61_4_fu_995_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v137_4_address1_local = zext_ln46_4_fu_951_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v137_4_address1_local = zext_ln89_fu_899_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v137_4_address1_local = zext_ln75_fu_828_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v137_4_address1_local = zext_ln61_fu_719_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v137_4_address1_local = zext_ln46_fu_638_p1;
        end else begin
            v137_4_address1_local = 'bx;
        end
    end else begin
        v137_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_4_ce0_local = 1'b1;
    end else begin
        v137_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v137_4_ce1_local = 1'b1;
    end else begin
        v137_4_ce1_local = 1'b0;
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
assign add_ln42_fu_700_p2 = (ap_sig_allocacmp_v12_4 + 7'd16);
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
assign grp_fu_578_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_12_q1 : v137_4_q1);
assign grp_fu_585_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_12_q0 : v137_4_q0);
assign grp_fu_685_p_ce = 1'b1;
assign grp_fu_685_p_din0 = grp_fu_562_p0;
assign grp_fu_685_p_din1 = grp_fu_562_p1;
assign grp_fu_685_p_opcode = 2'd0;
assign grp_fu_689_p_ce = 1'b1;
assign grp_fu_689_p_din0 = grp_fu_566_p0;
assign grp_fu_689_p_din1 = grp_fu_566_p1;
assign grp_fu_689_p_opcode = 2'd0;
assign grp_fu_693_p_ce = 1'b1;
assign grp_fu_693_p_din0 = grp_fu_570_p0;
assign grp_fu_693_p_din1 = v17_4;
assign grp_fu_697_p_ce = 1'b1;
assign grp_fu_697_p_din0 = grp_fu_574_p0;
assign grp_fu_697_p_din1 = v17_4;
assign lshr_ln42_4_fu_644_p4 = {{ap_sig_allocacmp_v12_4[5:1]}};
assign or_ln44_3_fu_851_p4 = {{{tmp_69_reg_1304}, {1'd1}}, {tmp_71_reg_1320}};
assign or_ln59_2_fu_686_p3 = {{tmp_61_fu_676_p4}, {1'd1}};
assign or_ln59_4_fu_865_p5 = {{{{tmp_69_reg_1304}, {1'd1}}, {tmp_1035_reg_1326}}, {1'd1}};
assign or_ln73_2_fu_755_p4 = {{{tmp_64_fu_739_p4}, {1'd1}}, {tmp_1034_fu_748_p3}};
assign or_ln73_4_fu_919_p4 = {{{tmp_69_reg_1304}, {2'd3}}, {tmp_1034_reg_1275}};
assign or_ln87_2_fu_771_p3 = {{tmp_64_fu_739_p4}, {2'd3}};
assign or_ln87_4_fu_1129_p3 = {{tmp_69_reg_1304_pp0_iter1_reg}, {3'd7}};
assign select_ln89_4_fu_1107_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_12_q1 : v137_4_q1);
assign select_ln96_4_fu_1114_p3 = ((icmp_ln46[0:0] == 1'b1) ? v137_12_q0 : v137_4_q0);
assign tmp_1034_fu_748_p3 = v12_4_reg_1181[32'd1];
assign tmp_60_fu_660_p4 = {{{lshr_ln42_4_fu_644_p4}, {1'd1}}, {lshr_ln}};
assign tmp_61_fu_676_p4 = {{ap_sig_allocacmp_v12_4[5:2]}};
assign tmp_62_fu_711_p4 = {{{tmp_61_reg_1224}, {2'd2}}, {lshr_ln}};
assign tmp_63_fu_725_p4 = {{{tmp_61_reg_1224}, {2'd3}}, {lshr_ln}};
assign tmp_64_fu_739_p4 = {{v12_4_reg_1181[5:3]}};
assign tmp_65_fu_820_p4 = {{{tmp_64_reg_1267}, {3'd4}}, {lshr_ln}};
assign tmp_66_fu_834_p6 = {{{{{tmp_64_reg_1267}, {1'd1}}, {tmp_1034_reg_1275}}, {1'd1}}, {lshr_ln}};
assign tmp_67_fu_891_p4 = {{{tmp_64_reg_1267}, {3'd6}}, {lshr_ln}};
assign tmp_68_fu_905_p4 = {{{tmp_64_reg_1267}, {3'd7}}, {lshr_ln}};
assign tmp_70_fu_943_p4 = {{{tmp_69_reg_1304}, {4'd8}}, {lshr_ln}};
assign tmp_72_fu_957_p6 = {{{{{tmp_69_reg_1304}, {1'd1}}, {tmp_71_reg_1320}}, {1'd1}}, {lshr_ln}};
assign tmp_73_fu_984_p6 = {{{{{tmp_69_reg_1304}, {1'd1}}, {tmp_1035_reg_1326}}, {2'd2}}, {lshr_ln}};
assign tmp_74_fu_1001_p6 = {{{{{tmp_69_reg_1304}, {1'd1}}, {tmp_1035_reg_1326}}, {2'd3}}, {lshr_ln}};
assign tmp_75_fu_1028_p4 = {{{tmp_69_reg_1304}, {4'd12}}, {lshr_ln}};
assign tmp_76_fu_1042_p6 = {{{{{tmp_69_reg_1304}, {2'd3}}, {tmp_1034_reg_1275}}, {1'd1}}, {lshr_ln}};
assign tmp_77_fu_1069_p4 = {{{tmp_69_reg_1304}, {4'd14}}, {lshr_ln}};
assign tmp_78_fu_1083_p4 = {{{tmp_69_reg_1304}, {4'd15}}, {lshr_ln}};
assign tmp_fu_618_p3 = ap_sig_allocacmp_v12_4[32'd6];
assign tmp_s_fu_630_p3 = {{trunc_ln42_fu_626_p1}, {lshr_ln}};
assign trunc_ln42_fu_626_p1 = ap_sig_allocacmp_v12_4[5:0];
assign v10_0_address0 = v10_0_address0_local;
assign v10_0_address1 = v10_0_address1_local;
assign v10_0_ce0 = v10_0_ce0_local;
assign v10_0_ce1 = v10_0_ce1_local;
assign v10_0_d0 = v10_0_d0_local;
assign v10_0_d1 = reg_600;
assign v10_0_we0 = v10_0_we0_local;
assign v10_0_we1 = v10_0_we1_local;
assign v10_1_address0 = v10_1_address0_local;
assign v10_1_address1 = v10_1_address1_local;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_ce1 = v10_1_ce1_local;
assign v10_1_d0 = v10_1_d0_local;
assign v10_1_d1 = reg_605;
assign v10_1_we0 = v10_1_we0_local;
assign v10_1_we1 = v10_1_we1_local;
assign v137_12_address0 = v137_12_address0_local;
assign v137_12_address1 = v137_12_address1_local;
assign v137_12_ce0 = v137_12_ce0_local;
assign v137_12_ce1 = v137_12_ce1_local;
assign v137_4_address0 = v137_4_address0_local;
assign v137_4_address1 = v137_4_address1_local;
assign v137_4_ce0 = v137_4_ce0_local;
assign v137_4_ce1 = v137_4_ce1_local;
assign v16_4_fu_1018_p1 = reg_592;
assign v16_fu_810_p1 = reg_592;
assign v23_4_fu_1023_p1 = reg_596;
assign v23_fu_815_p1 = reg_596;
assign v29_4_fu_1059_p1 = reg_592;
assign v29_fu_881_p1 = reg_592;
assign v35_4_fu_1064_p1 = reg_596;
assign v35_fu_886_p1 = reg_596;
assign v41_4_fu_1097_p1 = reg_592;
assign v41_fu_933_p1 = reg_592;
assign v47_4_fu_1102_p1 = reg_596;
assign v47_fu_938_p1 = reg_596;
assign v53_4_fu_1121_p1 = select_ln89_4_reg_1662;
assign v53_fu_974_p1 = reg_592;
assign v59_4_fu_1125_p1 = select_ln96_4_reg_1667;
assign v59_fu_979_p1 = reg_596;
assign zext_ln42_fu_654_p1 = lshr_ln42_4_fu_644_p4;
assign zext_ln44_fu_859_p1 = or_ln44_3_fu_851_p4;
assign zext_ln46_4_fu_951_p1 = tmp_70_fu_943_p4;
assign zext_ln46_fu_638_p1 = tmp_s_fu_630_p3;
assign zext_ln54_4_fu_968_p1 = tmp_72_fu_957_p6;
assign zext_ln54_fu_670_p1 = tmp_60_fu_660_p4;
assign zext_ln59_4_fu_875_p1 = or_ln59_4_fu_865_p5;
assign zext_ln59_fu_694_p1 = or_ln59_2_fu_686_p3;
assign zext_ln61_4_fu_995_p1 = tmp_73_fu_984_p6;
assign zext_ln61_fu_719_p1 = tmp_62_fu_711_p4;
assign zext_ln68_4_fu_1012_p1 = tmp_74_fu_1001_p6;
assign zext_ln68_fu_733_p1 = tmp_63_fu_725_p4;
assign zext_ln73_4_fu_927_p1 = or_ln73_4_fu_919_p4;
assign zext_ln73_fu_765_p1 = or_ln73_2_fu_755_p4;
assign zext_ln75_4_fu_1036_p1 = tmp_75_fu_1028_p4;
assign zext_ln75_fu_828_p1 = tmp_65_fu_820_p4;
assign zext_ln82_4_fu_1053_p1 = tmp_76_fu_1042_p6;
assign zext_ln82_fu_845_p1 = tmp_66_fu_834_p6;
assign zext_ln87_4_fu_1136_p1 = or_ln87_4_fu_1129_p3;
assign zext_ln87_fu_779_p1 = or_ln87_2_fu_771_p3;
assign zext_ln89_4_fu_1077_p1 = tmp_77_fu_1069_p4;
assign zext_ln89_fu_899_p1 = tmp_67_fu_891_p4;
assign zext_ln96_4_fu_1091_p1 = tmp_78_fu_1083_p4;
assign zext_ln96_fu_913_p1 = tmp_68_fu_905_p4;
always @ (posedge ap_clk) begin
    v10_0_addr_22_reg_1230[0] <= 1'b1;
    v10_0_addr_22_reg_1230_pp0_iter1_reg[0] <= 1'b1;
    v10_1_addr_22_reg_1236[0] <= 1'b1;
    v10_1_addr_22_reg_1236_pp0_iter1_reg[0] <= 1'b1;
    v10_0_addr_23_reg_1282[1] <= 1'b1;
    v10_0_addr_23_reg_1282_pp0_iter1_reg[1] <= 1'b1;
    v10_1_addr_23_reg_1287[1] <= 1'b1;
    v10_1_addr_23_reg_1287_pp0_iter1_reg[1] <= 1'b1;
    v10_0_addr_24_reg_1292[1:0] <= 2'b11;
    v10_0_addr_24_reg_1292_pp0_iter1_reg[1:0] <= 2'b11;
    v10_0_addr_24_reg_1292_pp0_iter2_reg[1:0] <= 2'b11;
    v10_1_addr_24_reg_1298[1:0] <= 2'b11;
    v10_1_addr_24_reg_1298_pp0_iter1_reg[1:0] <= 2'b11;
    v10_1_addr_24_reg_1298_pp0_iter2_reg[1:0] <= 2'b11;
    v10_0_addr_25_reg_1378[2] <= 1'b1;
    v10_0_addr_25_reg_1378_pp0_iter1_reg[2] <= 1'b1;
    v10_0_addr_25_reg_1378_pp0_iter2_reg[2] <= 1'b1;
    v10_1_addr_25_reg_1384[2] <= 1'b1;
    v10_1_addr_25_reg_1384_pp0_iter1_reg[2] <= 1'b1;
    v10_1_addr_25_reg_1384_pp0_iter2_reg[2] <= 1'b1;
    v10_0_addr_26_reg_1390[0] <= 1'b1;
    v10_0_addr_26_reg_1390[2] <= 1'b1;
    v10_0_addr_26_reg_1390_pp0_iter1_reg[0] <= 1'b1;
    v10_0_addr_26_reg_1390_pp0_iter1_reg[2] <= 1'b1;
    v10_0_addr_26_reg_1390_pp0_iter2_reg[0] <= 1'b1;
    v10_0_addr_26_reg_1390_pp0_iter2_reg[2] <= 1'b1;
    v10_1_addr_26_reg_1395[0] <= 1'b1;
    v10_1_addr_26_reg_1395[2] <= 1'b1;
    v10_1_addr_26_reg_1395_pp0_iter1_reg[0] <= 1'b1;
    v10_1_addr_26_reg_1395_pp0_iter1_reg[2] <= 1'b1;
    v10_1_addr_26_reg_1395_pp0_iter2_reg[0] <= 1'b1;
    v10_1_addr_26_reg_1395_pp0_iter2_reg[2] <= 1'b1;
    v10_0_addr_27_reg_1450[2:1] <= 2'b11;
    v10_0_addr_27_reg_1450_pp0_iter1_reg[2:1] <= 2'b11;
    v10_0_addr_27_reg_1450_pp0_iter2_reg[2:1] <= 2'b11;
    v10_1_addr_27_reg_1456[2:1] <= 2'b11;
    v10_1_addr_27_reg_1456_pp0_iter1_reg[2:1] <= 2'b11;
    v10_1_addr_27_reg_1456_pp0_iter2_reg[2:1] <= 2'b11;
    v10_0_addr_28_reg_1712[2:0] <= 3'b111;
    v10_0_addr_28_reg_1712_pp0_iter2_reg[2:0] <= 3'b111;
    v10_1_addr_28_reg_1717[2:0] <= 3'b111;
    v10_1_addr_28_reg_1717_pp0_iter2_reg[2:0] <= 3'b111;
end
endmodule 
