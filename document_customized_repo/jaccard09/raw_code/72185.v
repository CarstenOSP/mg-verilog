module ms_mergesort_merge_Pipeline_merge_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,stop,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,temp_address0,temp_ce0,temp_q0,temp_address1,temp_ce1,temp_q1,temp_1_address0,temp_1_ce0,temp_1_q0,temp_1_address1,temp_1_ce1,temp_1_q1,a_7_address0,a_7_ce0,a_7_we0,a_7_d0,a_6_address0,a_6_ce0,a_6_we0,a_6_d0,a_5_address0,a_5_ce0,a_5_we0,a_5_d0,a_4_address0,a_4_ce0,a_4_we0,a_4_d0,a_3_address0,a_3_ce0,a_3_we0,a_3_d0,a_2_address0,a_2_ce0,a_2_we0,a_2_d0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0); 
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
input  [31:0] start_r;
input  [31:0] stop;
output  [7:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
output  [9:0] temp_address0;
output   temp_ce0;
input  [31:0] temp_q0;
output  [9:0] temp_address1;
output   temp_ce1;
input  [31:0] temp_q1;
output  [9:0] temp_1_address0;
output   temp_1_ce0;
input  [31:0] temp_1_q0;
output  [9:0] temp_1_address1;
output   temp_1_ce1;
input  [31:0] temp_1_q1;
output  [7:0] a_7_address0;
output   a_7_ce0;
output   a_7_we0;
output  [31:0] a_7_d0;
output  [7:0] a_6_address0;
output   a_6_ce0;
output   a_6_we0;
output  [31:0] a_6_d0;
output  [7:0] a_5_address0;
output   a_5_ce0;
output   a_5_we0;
output  [31:0] a_5_d0;
output  [7:0] a_4_address0;
output   a_4_ce0;
output   a_4_we0;
output  [31:0] a_4_d0;
output  [7:0] a_3_address0;
output   a_3_ce0;
output   a_3_we0;
output  [31:0] a_3_d0;
output  [7:0] a_2_address0;
output   a_2_ce0;
output   a_2_we0;
output  [31:0] a_2_d0;
output  [7:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
wire   [0:0] icmp_ln18_3_fu_1294_p2;
reg   [0:0] icmp_ln18_2_reg_1561;
reg   [0:0] icmp_ln18_1_reg_1484;
reg   [0:0] icmp_ln18_reg_1408;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] i_4_reg_798;
reg   [31:0] j_3_reg_808;
reg   [31:0] i_6_reg_818;
reg   [31:0] j_5_reg_829;
reg   [31:0] i_8_reg_840;
reg   [31:0] j_7_reg_851;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] k_1_reg_1383;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] i_reg_1394;
reg   [31:0] j_1_reg_1401;
wire   [0:0] icmp_ln18_fu_906_p2;
wire   [31:0] tmp_j_fu_949_p3;
reg   [31:0] tmp_j_reg_1432;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_i_fu_957_p3;
reg   [31:0] tmp_i_reg_1444;
wire   [0:0] icmp_ln21_fu_965_p2;
reg   [0:0] icmp_ln21_reg_1456;
wire   [31:0] i_3_fu_971_p2;
reg   [31:0] i_3_reg_1460;
wire   [31:0] j_2_fu_976_p2;
reg   [31:0] j_2_reg_1465;
wire   [2:0] trunc_ln18_fu_981_p1;
reg   [2:0] trunc_ln18_reg_1470;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] trunc_ln18_4_fu_1013_p1;
reg   [0:0] trunc_ln18_4_reg_1474;
wire   [0:0] trunc_ln18_5_fu_1017_p1;
reg   [0:0] trunc_ln18_5_reg_1479;
wire   [0:0] icmp_ln18_1_fu_1053_p2;
wire   [31:0] tmp_j_1_fu_1057_p3;
reg   [31:0] tmp_j_1_reg_1508;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] tmp_i_1_fu_1064_p3;
reg   [31:0] tmp_i_1_reg_1520;
wire   [0:0] icmp_ln21_1_fu_1071_p2;
reg   [0:0] icmp_ln21_1_reg_1532;
wire   [31:0] i_5_fu_1077_p2;
reg   [31:0] i_5_reg_1536;
wire   [31:0] j_4_fu_1083_p2;
reg   [31:0] j_4_reg_1541;
wire   [0:0] trunc_ln18_6_fu_1128_p1;
reg   [0:0] trunc_ln18_6_reg_1546;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [0:0] trunc_ln18_7_fu_1132_p1;
reg   [0:0] trunc_ln18_7_reg_1551;
reg   [7:0] lshr_ln5_7_reg_1556;
wire   [0:0] icmp_ln18_2_fu_1183_p2;
wire   [31:0] tmp_j_2_fu_1188_p3;
reg   [31:0] tmp_j_2_reg_1585;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] tmp_i_2_fu_1195_p3;
reg   [31:0] tmp_i_2_reg_1597;
wire   [0:0] icmp_ln21_2_fu_1202_p2;
reg   [0:0] icmp_ln21_2_reg_1609;
wire   [31:0] i_7_fu_1208_p2;
reg   [31:0] i_7_reg_1613;
wire   [31:0] j_6_fu_1214_p2;
reg   [31:0] j_6_reg_1618;
wire   [0:0] trunc_ln18_8_fu_1239_p1;
reg   [0:0] trunc_ln18_8_reg_1623;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] trunc_ln18_9_fu_1243_p1;
reg   [0:0] trunc_ln18_9_reg_1628;
reg   [7:0] lshr_ln5_8_reg_1633;
reg   [0:0] icmp_ln18_3_reg_1638;
wire   [63:0] zext_ln5_5_fu_1299_p1;
reg   [63:0] zext_ln5_5_reg_1662;
wire   [31:0] tmp_j_3_fu_1302_p3;
reg   [31:0] tmp_j_3_reg_1682;
wire   [31:0] tmp_i_3_fu_1309_p3;
reg   [31:0] tmp_i_3_reg_1694;
wire   [0:0] icmp_ln21_3_fu_1316_p2;
reg   [0:0] icmp_ln21_3_reg_1706;
wire   [31:0] i_9_fu_1322_p2;
reg   [31:0] i_9_reg_1710;
wire   [31:0] j_8_fu_1328_p2;
reg   [31:0] j_8_reg_1715;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_block_pp0_stage1_subdone;
reg   [31:0] ap_phi_mux_i_4_phi_fu_801_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_4_reg_798;
reg   [31:0] ap_phi_mux_j_3_phi_fu_811_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_3_reg_808;
reg   [31:0] ap_phi_mux_i_6_phi_fu_821_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_6_reg_818;
reg   [31:0] ap_phi_mux_j_5_phi_fu_832_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_5_reg_829;
reg   [31:0] ap_phi_mux_i_8_phi_fu_843_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_i_8_reg_840;
reg   [31:0] ap_phi_mux_j_7_phi_fu_854_p4;
wire   [31:0] ap_phi_reg_pp0_iter0_j_7_reg_851;
reg   [31:0] ap_phi_mux_i_10_phi_fu_865_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_i_10_reg_862;
reg   [31:0] ap_phi_mux_j_9_phi_fu_875_p4;
wire   [31:0] ap_phi_reg_pp0_iter1_j_9_reg_872;
wire   [63:0] zext_ln5_1_fu_937_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln5_fu_921_p1;
wire   [63:0] zext_ln5_2_fu_993_p1;
wire    ap_block_pp0_stage3;
wire   [7:0] a_6_addr_gep_fu_254_p3;
wire   [7:0] a_5_addr_gep_fu_262_p3;
wire   [7:0] a_4_addr_gep_fu_270_p3;
wire   [7:0] a_3_addr_gep_fu_278_p3;
wire   [7:0] a_2_addr_gep_fu_286_p3;
wire   [7:0] a_1_addr_gep_fu_294_p3;
wire   [7:0] a_0_addr_gep_fu_302_p3;
wire   [7:0] a_7_addr_gep_fu_310_p3;
wire   [63:0] zext_ln18_1_fu_1047_p1;
wire   [63:0] zext_ln18_fu_1031_p1;
wire   [63:0] zext_ln5_3_fu_1108_p1;
wire    ap_block_pp0_stage5;
wire   [7:0] a_6_addr_2_gep_fu_414_p3;
wire   [7:0] a_5_addr_2_gep_fu_422_p3;
wire   [7:0] a_4_addr_2_gep_fu_430_p3;
wire   [7:0] a_3_addr_2_gep_fu_438_p3;
wire   [7:0] a_2_addr_2_gep_fu_446_p3;
wire   [7:0] a_1_addr_2_gep_fu_454_p3;
wire   [7:0] a_7_addr_2_gep_fu_462_p3;
wire   [7:0] a_0_addr_2_gep_fu_470_p3;
wire   [63:0] zext_ln18_3_fu_1162_p1;
wire   [63:0] zext_ln18_2_fu_1146_p1;
wire   [63:0] zext_ln5_4_fu_1220_p1;
wire    ap_block_pp0_stage7;
wire   [7:0] a_6_addr_4_gep_fu_574_p3;
wire   [7:0] a_5_addr_4_gep_fu_582_p3;
wire   [7:0] a_4_addr_4_gep_fu_590_p3;
wire   [7:0] a_3_addr_4_gep_fu_598_p3;
wire   [7:0] a_2_addr_4_gep_fu_606_p3;
wire   [7:0] a_7_addr_4_gep_fu_614_p3;
wire   [7:0] a_0_addr_4_gep_fu_622_p3;
wire   [7:0] a_1_addr_4_gep_fu_630_p3;
wire   [63:0] zext_ln18_5_fu_1273_p1;
wire   [63:0] zext_ln18_4_fu_1257_p1;
wire   [7:0] a_6_addr_6_gep_fu_734_p3;
wire   [7:0] a_5_addr_6_gep_fu_742_p3;
wire   [7:0] a_4_addr_6_gep_fu_750_p3;
wire   [7:0] a_3_addr_6_gep_fu_758_p3;
wire   [7:0] a_7_addr_6_gep_fu_766_p3;
wire   [7:0] a_1_addr_6_gep_fu_774_p3;
wire   [7:0] a_0_addr_6_gep_fu_782_p3;
wire   [7:0] a_2_addr_6_gep_fu_790_p3;
reg   [31:0] k_fu_76;
wire   [31:0] add_ln18_3_fu_1334_p2;
wire    ap_loop_init;
reg   [31:0] i_2_fu_80;
reg   [31:0] ap_sig_allocacmp_i;
reg   [31:0] j_fu_84;
reg   [31:0] ap_sig_allocacmp_j_1;
reg    temp_ce1_local;
reg   [9:0] temp_address1_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    a_6_we0_local;
reg   [31:0] a_6_d0_local;
reg    a_6_ce0_local;
reg   [7:0] a_6_address0_local;
reg    a_5_we0_local;
reg   [31:0] a_5_d0_local;
reg    a_5_ce0_local;
reg   [7:0] a_5_address0_local;
reg    a_4_we0_local;
reg   [31:0] a_4_d0_local;
reg    a_4_ce0_local;
reg   [7:0] a_4_address0_local;
reg    a_3_we0_local;
reg   [31:0] a_3_d0_local;
reg    a_3_ce0_local;
reg   [7:0] a_3_address0_local;
reg    a_2_we0_local;
reg   [31:0] a_2_d0_local;
reg    a_2_ce0_local;
reg   [7:0] a_2_address0_local;
reg    a_1_we0_local;
reg   [31:0] a_1_d0_local;
reg    a_1_ce0_local;
reg   [7:0] a_1_address0_local;
reg    a_0_we0_local;
reg   [31:0] a_0_d0_local;
reg    a_0_ce0_local;
reg   [7:0] a_0_address0_local;
reg    a_7_we0_local;
reg   [31:0] a_7_d0_local;
reg    a_7_ce0_local;
reg   [7:0] a_7_address0_local;
wire    ap_block_pp0_stage0;
wire   [9:0] lshr_ln5_3_fu_911_p4;
wire   [9:0] lshr_ln5_4_fu_927_p4;
wire    ap_block_pp0_stage2;
wire   [0:0] trunc_ln18_2_fu_943_p1;
wire   [0:0] trunc_ln18_3_fu_946_p1;
wire   [7:0] lshr_ln5_5_fu_984_p4;
wire   [9:0] lshr_ln2_fu_1021_p4;
wire   [9:0] lshr_ln18_1_fu_1037_p4;
wire    ap_block_pp0_stage4;
wire   [10:0] trunc_ln18_1_fu_1089_p1;
wire   [10:0] add_ln18_fu_1092_p2;
wire   [7:0] lshr_ln5_6_fu_1098_p4;
wire   [9:0] lshr_ln18_2_fu_1136_p4;
wire   [9:0] lshr_ln18_3_fu_1152_p4;
wire   [31:0] add_ln18_1_fu_1168_p2;
wire    ap_block_pp0_stage6;
wire   [9:0] lshr_ln18_4_fu_1247_p4;
wire   [9:0] lshr_ln18_5_fu_1263_p4;
wire   [31:0] add_ln18_2_fu_1279_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_410;
reg    ap_condition_394;
reg    ap_condition_354;
reg    ap_condition_356;
reg    ap_condition_373;
reg    ap_condition_380;
reg    ap_condition_383;
reg    ap_condition_375;
reg    ap_condition_389;
reg    ap_condition_396;
reg    ap_condition_399;
reg    ap_condition_391;
reg    ap_condition_1213;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_76 = 32'd0;
#0 i_2_fu_80 = 32'd0;
#0 j_fu_84 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1)) | ((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_80 <= start_r;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_2_fu_80 <= ap_phi_mux_i_10_phi_fu_865_p4;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_356)) begin
        if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln21_reg_1456 == 1'd0))) begin
            i_4_reg_798 <= i_3_reg_1460;
        end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln21_reg_1456 == 1'd1))) begin
            i_4_reg_798 <= i_reg_1394;
        end else if ((1'b1 == ap_condition_354)) begin
            i_4_reg_798 <= ap_phi_reg_pp0_iter0_i_4_reg_798;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_375)) begin
        if ((1'b1 == ap_condition_383)) begin
            i_6_reg_818 <= i_5_reg_1536;
        end else if ((1'b1 == ap_condition_380)) begin
            i_6_reg_818 <= i_4_reg_798;
        end else if ((1'b1 == ap_condition_373)) begin
            i_6_reg_818 <= ap_phi_reg_pp0_iter0_i_6_reg_818;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_391)) begin
        if ((1'b1 == ap_condition_399)) begin
            i_8_reg_840 <= i_7_reg_1613;
        end else if ((1'b1 == ap_condition_396)) begin
            i_8_reg_840 <= i_6_reg_818;
        end else if ((1'b1 == ap_condition_389)) begin
            i_8_reg_840 <= ap_phi_reg_pp0_iter0_i_8_reg_840;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_356)) begin
        if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln21_reg_1456 == 1'd0))) begin
            j_3_reg_808 <= j_1_reg_1401;
        end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln21_reg_1456 == 1'd1))) begin
            j_3_reg_808 <= j_2_reg_1465;
        end else if ((1'b1 == ap_condition_354)) begin
            j_3_reg_808 <= ap_phi_reg_pp0_iter0_j_3_reg_808;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_375)) begin
        if ((1'b1 == ap_condition_383)) begin
            j_5_reg_829 <= j_3_reg_808;
        end else if ((1'b1 == ap_condition_380)) begin
            j_5_reg_829 <= j_4_reg_1541;
        end else if ((1'b1 == ap_condition_373)) begin
            j_5_reg_829 <= ap_phi_reg_pp0_iter0_j_5_reg_829;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_391)) begin
        if ((1'b1 == ap_condition_399)) begin
            j_7_reg_851 <= j_5_reg_829;
        end else if ((1'b1 == ap_condition_396)) begin
            j_7_reg_851 <= j_6_reg_1618;
        end else if ((1'b1 == ap_condition_389)) begin
            j_7_reg_851 <= ap_phi_reg_pp0_iter0_j_7_reg_851;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_84 <= stop;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_84 <= ap_phi_mux_j_9_phi_fu_875_p4;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_76 <= start_r;
        end else if ((1'b1 == ap_condition_1213)) begin
            k_fu_76 <= add_ln18_3_fu_1334_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_3_reg_1460 <= i_3_fu_971_p2;
        icmp_ln21_reg_1456 <= icmp_ln21_fu_965_p2;
        j_2_reg_1465 <= j_2_fu_976_p2;
        tmp_i_reg_1444 <= tmp_i_fu_957_p3;
        tmp_j_reg_1432 <= tmp_j_fu_949_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_5_reg_1536 <= i_5_fu_1077_p2;
        icmp_ln21_1_reg_1532 <= icmp_ln21_1_fu_1071_p2;
        j_4_reg_1541 <= j_4_fu_1083_p2;
        tmp_i_1_reg_1520 <= tmp_i_1_fu_1064_p3;
        tmp_j_1_reg_1508 <= tmp_j_1_fu_1057_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        i_7_reg_1613 <= i_7_fu_1208_p2;
        icmp_ln21_2_reg_1609 <= icmp_ln21_2_fu_1202_p2;
        j_6_reg_1618 <= j_6_fu_1214_p2;
        tmp_i_2_reg_1597 <= tmp_i_2_fu_1195_p3;
        tmp_j_2_reg_1585 <= tmp_j_2_fu_1188_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_9_reg_1710 <= i_9_fu_1322_p2;
        icmp_ln21_3_reg_1706 <= icmp_ln21_3_fu_1316_p2;
        j_8_reg_1715 <= j_8_fu_1328_p2;
        tmp_i_3_reg_1694 <= tmp_i_3_fu_1309_p3;
        tmp_j_3_reg_1682 <= tmp_j_3_fu_1302_p3;
        zext_ln5_5_reg_1662[7 : 0] <= zext_ln5_5_fu_1299_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_1394 <= ap_sig_allocacmp_i;
        icmp_ln18_reg_1408 <= icmp_ln18_fu_906_p2;
        j_1_reg_1401 <= ap_sig_allocacmp_j_1;
        k_1_reg_1383 <= k_fu_76;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln18_1_reg_1484 <= icmp_ln18_1_fu_1053_p2;
        trunc_ln18_4_reg_1474 <= trunc_ln18_4_fu_1013_p1;
        trunc_ln18_5_reg_1479 <= trunc_ln18_5_fu_1017_p1;
        trunc_ln18_reg_1470 <= trunc_ln18_fu_981_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln18_2_reg_1561 <= icmp_ln18_2_fu_1183_p2;
        lshr_ln5_7_reg_1556 <= {{add_ln18_1_fu_1168_p2[10:3]}};
        trunc_ln18_6_reg_1546 <= trunc_ln18_6_fu_1128_p1;
        trunc_ln18_7_reg_1551 <= trunc_ln18_7_fu_1132_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln18_3_reg_1638 <= icmp_ln18_3_fu_1294_p2;
        lshr_ln5_8_reg_1633 <= {{add_ln18_2_fu_1279_p2[10:3]}};
        trunc_ln18_8_reg_1623 <= trunc_ln18_8_fu_1239_p1;
        trunc_ln18_9_reg_1628 <= trunc_ln18_9_fu_1243_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_address0_local = a_0_addr_6_gep_fu_782_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_address0_local = zext_ln5_5_reg_1662;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_address0_local = a_0_addr_4_gep_fu_622_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_address0_local = zext_ln5_4_fu_1220_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_address0_local = a_0_addr_2_gep_fu_470_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_address0_local = zext_ln5_3_fu_1108_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd0) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_address0_local = a_0_addr_gep_fu_302_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd0) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_address0_local = zext_ln5_2_fu_993_p1;
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd0) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd0) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_d0_local = tmp_j_3_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_0_d0_local = tmp_i_3_reg_1694;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_d0_local = tmp_j_2_reg_1585;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_0_d0_local = tmp_i_2_reg_1597;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_d0_local = tmp_j_1_reg_1508;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_0_d0_local = tmp_i_1_reg_1520;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd0) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_d0_local = tmp_j_reg_1432;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd0) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_0_d0_local = tmp_i_reg_1444;
    end else begin
        a_0_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd0) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd0) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_0_we0_local = 1'b1;
    end else begin
        a_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_address0_local = a_1_addr_6_gep_fu_774_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_address0_local = zext_ln5_5_reg_1662;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_address0_local = a_1_addr_4_gep_fu_630_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_address0_local = zext_ln5_4_fu_1220_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_address0_local = a_1_addr_2_gep_fu_454_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_address0_local = zext_ln5_3_fu_1108_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd1) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_address0_local = a_1_addr_gep_fu_294_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd1) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_address0_local = zext_ln5_2_fu_993_p1;
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd1) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd1) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_d0_local = tmp_j_3_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_1_d0_local = tmp_i_3_reg_1694;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_d0_local = tmp_j_2_reg_1585;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_1_d0_local = tmp_i_2_reg_1597;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_d0_local = tmp_j_1_reg_1508;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_1_d0_local = tmp_i_1_reg_1520;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd1) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_d0_local = tmp_j_reg_1432;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd1) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_1_d0_local = tmp_i_reg_1444;
    end else begin
        a_1_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd1) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd1) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_1_we0_local = 1'b1;
    end else begin
        a_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_2_address0_local = a_2_addr_6_gep_fu_790_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_2_address0_local = zext_ln5_5_reg_1662;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_2_address0_local = a_2_addr_4_gep_fu_606_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_2_address0_local = zext_ln5_4_fu_1220_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_2_address0_local = a_2_addr_2_gep_fu_446_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_2_address0_local = zext_ln5_3_fu_1108_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd2) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_2_address0_local = a_2_addr_gep_fu_286_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd2) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_2_address0_local = zext_ln5_2_fu_993_p1;
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd2) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd2) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_2_d0_local = tmp_j_3_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_2_d0_local = tmp_i_3_reg_1694;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_2_d0_local = tmp_j_2_reg_1585;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_2_d0_local = tmp_i_2_reg_1597;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_2_d0_local = tmp_j_1_reg_1508;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_2_d0_local = tmp_i_1_reg_1520;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd2) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_2_d0_local = tmp_j_reg_1432;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd2) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_2_d0_local = tmp_i_reg_1444;
    end else begin
        a_2_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd2) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd2) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_2_we0_local = 1'b1;
    end else begin
        a_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_3_address0_local = a_3_addr_6_gep_fu_758_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_3_address0_local = zext_ln5_5_reg_1662;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_3_address0_local = a_3_addr_4_gep_fu_598_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_3_address0_local = zext_ln5_4_fu_1220_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_3_address0_local = a_3_addr_2_gep_fu_438_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_3_address0_local = zext_ln5_3_fu_1108_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd3) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_3_address0_local = a_3_addr_gep_fu_278_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd3) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_3_address0_local = zext_ln5_2_fu_993_p1;
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd3) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd3) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_3_d0_local = tmp_j_3_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_3_d0_local = tmp_i_3_reg_1694;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_3_d0_local = tmp_j_2_reg_1585;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_3_d0_local = tmp_i_2_reg_1597;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_3_d0_local = tmp_j_1_reg_1508;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_3_d0_local = tmp_i_1_reg_1520;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd3) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_3_d0_local = tmp_j_reg_1432;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd3) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_3_d0_local = tmp_i_reg_1444;
    end else begin
        a_3_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd3) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd3) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_3_we0_local = 1'b1;
    end else begin
        a_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_4_address0_local = a_4_addr_6_gep_fu_750_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_4_address0_local = zext_ln5_5_reg_1662;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_4_address0_local = a_4_addr_4_gep_fu_590_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_4_address0_local = zext_ln5_4_fu_1220_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_4_address0_local = a_4_addr_2_gep_fu_430_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_4_address0_local = zext_ln5_3_fu_1108_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd4) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_4_address0_local = a_4_addr_gep_fu_270_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd4) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_4_address0_local = zext_ln5_2_fu_993_p1;
    end else begin
        a_4_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd4) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd4) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_4_ce0_local = 1'b1;
    end else begin
        a_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_4_d0_local = tmp_j_3_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_4_d0_local = tmp_i_3_reg_1694;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_4_d0_local = tmp_j_2_reg_1585;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_4_d0_local = tmp_i_2_reg_1597;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_4_d0_local = tmp_j_1_reg_1508;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_4_d0_local = tmp_i_1_reg_1520;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd4) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_4_d0_local = tmp_j_reg_1432;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd4) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_4_d0_local = tmp_i_reg_1444;
    end else begin
        a_4_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd4) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd4) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_4_we0_local = 1'b1;
    end else begin
        a_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_5_address0_local = a_5_addr_6_gep_fu_742_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_5_address0_local = zext_ln5_5_reg_1662;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_5_address0_local = a_5_addr_4_gep_fu_582_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_5_address0_local = zext_ln5_4_fu_1220_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_5_address0_local = a_5_addr_2_gep_fu_422_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_5_address0_local = zext_ln5_3_fu_1108_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd5) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_5_address0_local = a_5_addr_gep_fu_262_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd5) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_5_address0_local = zext_ln5_2_fu_993_p1;
    end else begin
        a_5_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd5) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd5) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_5_ce0_local = 1'b1;
    end else begin
        a_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_5_d0_local = tmp_j_3_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_5_d0_local = tmp_i_3_reg_1694;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_5_d0_local = tmp_j_2_reg_1585;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_5_d0_local = tmp_i_2_reg_1597;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_5_d0_local = tmp_j_1_reg_1508;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_5_d0_local = tmp_i_1_reg_1520;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd5) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_5_d0_local = tmp_j_reg_1432;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd5) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_5_d0_local = tmp_i_reg_1444;
    end else begin
        a_5_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd5) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd5) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_5_we0_local = 1'b1;
    end else begin
        a_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_6_address0_local = a_6_addr_6_gep_fu_734_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_6_address0_local = zext_ln5_5_reg_1662;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_6_address0_local = a_6_addr_4_gep_fu_574_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_6_address0_local = zext_ln5_4_fu_1220_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_6_address0_local = a_6_addr_2_gep_fu_414_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_6_address0_local = zext_ln5_3_fu_1108_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd6) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_6_address0_local = a_6_addr_gep_fu_254_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd6) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_6_address0_local = zext_ln5_2_fu_993_p1;
    end else begin
        a_6_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd6) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd6) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_6_ce0_local = 1'b1;
    end else begin
        a_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_6_d0_local = tmp_j_3_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_6_d0_local = tmp_i_3_reg_1694;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_6_d0_local = tmp_j_2_reg_1585;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_6_d0_local = tmp_i_2_reg_1597;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_6_d0_local = tmp_j_1_reg_1508;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_6_d0_local = tmp_i_1_reg_1520;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd6) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_6_d0_local = tmp_j_reg_1432;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd6) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_6_d0_local = tmp_i_reg_1444;
    end else begin
        a_6_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd6) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd6) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_6_we0_local = 1'b1;
    end else begin
        a_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_7_address0_local = a_7_addr_6_gep_fu_766_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_7_address0_local = zext_ln5_5_reg_1662;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_7_address0_local = a_7_addr_4_gep_fu_614_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_7_address0_local = zext_ln5_4_fu_1220_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_7_address0_local = a_7_addr_2_gep_fu_462_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_7_address0_local = zext_ln5_3_fu_1108_p1;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd7) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_7_address0_local = a_7_addr_gep_fu_310_p3;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd7) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_7_address0_local = zext_ln5_2_fu_993_p1;
    end else begin
        a_7_address0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd7) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd7) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_7_ce0_local = 1'b1;
    end else begin
        a_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_7_d0_local = tmp_j_3_reg_1682;
    end else if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_7_d0_local = tmp_i_3_reg_1694;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_7_d0_local = tmp_j_2_reg_1585;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        a_7_d0_local = tmp_i_2_reg_1597;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_7_d0_local = tmp_j_1_reg_1508;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        a_7_d0_local = tmp_i_1_reg_1520;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd7) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_7_d0_local = tmp_j_reg_1432;
    end else if (((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd7) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        a_7_d0_local = tmp_i_reg_1444;
    end else begin
        a_7_d0_local = 'bx;
    end
end
always @ (*) begin
if ((((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (icmp_ln21_2_reg_1609 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_reg_1470 == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd0) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln21_1_reg_1532 == 1'd1) & (trunc_ln18_reg_1470 == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((icmp_ln18_reg_1408== 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd7) & (icmp_ln21_reg_1456 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln18_reg_1408 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (trunc_ln18_fu_981_p1 == 3'd7) & (icmp_ln21_reg_1456 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln21_3_reg_1706 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln18_reg_1470 == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_7_we0_local = 1'b1;
    end else begin
        a_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & ((icmp_ln18_reg_1408 == 1'd1) | ((icmp_ln18_1_reg_1484 == 1'd0) | ((icmp_ln18_2_reg_1561 == 1'd1) | (icmp_ln18_3_fu_1294_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln18_reg_1408 == 1'd1) | ((icmp_ln18_1_reg_1484 == 1'd0) | ((icmp_ln18_2_reg_1561 == 1'd1) | (icmp_ln18_3_reg_1638 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if ((1'b1 == ap_condition_410)) begin
        if ((icmp_ln21_3_reg_1706 == 1'd0)) begin
            ap_phi_mux_i_10_phi_fu_865_p4 = i_9_reg_1710;
        end else if ((icmp_ln21_3_reg_1706 == 1'd1)) begin
            ap_phi_mux_i_10_phi_fu_865_p4 = i_8_reg_840;
        end else begin
            ap_phi_mux_i_10_phi_fu_865_p4 = ap_phi_reg_pp0_iter1_i_10_reg_862;
        end
    end else begin
        ap_phi_mux_i_10_phi_fu_865_p4 = ap_phi_reg_pp0_iter1_i_10_reg_862;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_1408 == 1'd0)) begin
        if ((icmp_ln21_reg_1456 == 1'd0)) begin
            ap_phi_mux_i_4_phi_fu_801_p4 = i_3_reg_1460;
        end else if ((icmp_ln21_reg_1456 == 1'd1)) begin
            ap_phi_mux_i_4_phi_fu_801_p4 = i_reg_1394;
        end else begin
            ap_phi_mux_i_4_phi_fu_801_p4 = ap_phi_reg_pp0_iter0_i_4_reg_798;
        end
    end else begin
        ap_phi_mux_i_4_phi_fu_801_p4 = ap_phi_reg_pp0_iter0_i_4_reg_798;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1))) begin
        if ((icmp_ln21_1_reg_1532 == 1'd0)) begin
            ap_phi_mux_i_6_phi_fu_821_p4 = i_5_reg_1536;
        end else if ((icmp_ln21_1_reg_1532 == 1'd1)) begin
            ap_phi_mux_i_6_phi_fu_821_p4 = i_4_reg_798;
        end else begin
            ap_phi_mux_i_6_phi_fu_821_p4 = ap_phi_reg_pp0_iter0_i_6_reg_818;
        end
    end else begin
        ap_phi_mux_i_6_phi_fu_821_p4 = ap_phi_reg_pp0_iter0_i_6_reg_818;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_394)) begin
        if ((icmp_ln21_2_reg_1609 == 1'd0)) begin
            ap_phi_mux_i_8_phi_fu_843_p4 = i_7_reg_1613;
        end else if ((icmp_ln21_2_reg_1609 == 1'd1)) begin
            ap_phi_mux_i_8_phi_fu_843_p4 = i_6_reg_818;
        end else begin
            ap_phi_mux_i_8_phi_fu_843_p4 = ap_phi_reg_pp0_iter0_i_8_reg_840;
        end
    end else begin
        ap_phi_mux_i_8_phi_fu_843_p4 = ap_phi_reg_pp0_iter0_i_8_reg_840;
    end
end
always @ (*) begin
    if ((icmp_ln18_reg_1408 == 1'd0)) begin
        if ((icmp_ln21_reg_1456 == 1'd0)) begin
            ap_phi_mux_j_3_phi_fu_811_p4 = j_1_reg_1401;
        end else if ((icmp_ln21_reg_1456 == 1'd1)) begin
            ap_phi_mux_j_3_phi_fu_811_p4 = j_2_reg_1465;
        end else begin
            ap_phi_mux_j_3_phi_fu_811_p4 = ap_phi_reg_pp0_iter0_j_3_reg_808;
        end
    end else begin
        ap_phi_mux_j_3_phi_fu_811_p4 = ap_phi_reg_pp0_iter0_j_3_reg_808;
    end
end
always @ (*) begin
    if (((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1))) begin
        if ((icmp_ln21_1_reg_1532 == 1'd0)) begin
            ap_phi_mux_j_5_phi_fu_832_p4 = j_3_reg_808;
        end else if ((icmp_ln21_1_reg_1532 == 1'd1)) begin
            ap_phi_mux_j_5_phi_fu_832_p4 = j_4_reg_1541;
        end else begin
            ap_phi_mux_j_5_phi_fu_832_p4 = ap_phi_reg_pp0_iter0_j_5_reg_829;
        end
    end else begin
        ap_phi_mux_j_5_phi_fu_832_p4 = ap_phi_reg_pp0_iter0_j_5_reg_829;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_394)) begin
        if ((icmp_ln21_2_reg_1609 == 1'd0)) begin
            ap_phi_mux_j_7_phi_fu_854_p4 = j_5_reg_829;
        end else if ((icmp_ln21_2_reg_1609 == 1'd1)) begin
            ap_phi_mux_j_7_phi_fu_854_p4 = j_6_reg_1618;
        end else begin
            ap_phi_mux_j_7_phi_fu_854_p4 = ap_phi_reg_pp0_iter0_j_7_reg_851;
        end
    end else begin
        ap_phi_mux_j_7_phi_fu_854_p4 = ap_phi_reg_pp0_iter0_j_7_reg_851;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_410)) begin
        if ((icmp_ln21_3_reg_1706 == 1'd0)) begin
            ap_phi_mux_j_9_phi_fu_875_p4 = j_7_reg_851;
        end else if ((icmp_ln21_3_reg_1706 == 1'd1)) begin
            ap_phi_mux_j_9_phi_fu_875_p4 = j_8_reg_1715;
        end else begin
            ap_phi_mux_j_9_phi_fu_875_p4 = ap_phi_reg_pp0_iter1_j_9_reg_872;
        end
    end else begin
        ap_phi_mux_j_9_phi_fu_875_p4 = ap_phi_reg_pp0_iter1_j_9_reg_872;
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
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_i = ap_phi_mux_i_10_phi_fu_865_p4;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_j_1 = ap_phi_mux_j_9_phi_fu_875_p4;
    end else begin
        ap_sig_allocacmp_j_1 = j_fu_84;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_1_address0_local = zext_ln18_4_fu_1257_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_1_address0_local = zext_ln18_2_fu_1146_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_1_address0_local = zext_ln18_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_1_address0_local = zext_ln5_fu_921_p1;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_1_address1_local = zext_ln18_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_1_address1_local = zext_ln18_3_fu_1162_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_1_address1_local = zext_ln18_1_fu_1047_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_1_address1_local = zext_ln5_1_fu_937_p1;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address0_local = zext_ln18_4_fu_1257_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address0_local = zext_ln18_2_fu_1146_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address0_local = zext_ln18_fu_1031_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address0_local = zext_ln5_fu_921_p1;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            temp_address1_local = zext_ln18_5_fu_1273_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            temp_address1_local = zext_ln18_3_fu_1162_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            temp_address1_local = zext_ln18_1_fu_1047_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            temp_address1_local = zext_ln5_1_fu_937_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign a_0_addr_2_gep_fu_470_p3 = zext_ln5_3_fu_1108_p1;
assign a_0_addr_4_gep_fu_622_p3 = zext_ln5_4_fu_1220_p1;
assign a_0_addr_6_gep_fu_782_p3 = zext_ln5_5_reg_1662;
assign a_0_addr_gep_fu_302_p3 = zext_ln5_2_fu_993_p1;
assign a_0_address0 = a_0_address0_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_d0 = a_0_d0_local;
assign a_0_we0 = a_0_we0_local;
assign a_1_addr_2_gep_fu_454_p3 = zext_ln5_3_fu_1108_p1;
assign a_1_addr_4_gep_fu_630_p3 = zext_ln5_4_fu_1220_p1;
assign a_1_addr_6_gep_fu_774_p3 = zext_ln5_5_reg_1662;
assign a_1_addr_gep_fu_294_p3 = zext_ln5_2_fu_993_p1;
assign a_1_address0 = a_1_address0_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_d0 = a_1_d0_local;
assign a_1_we0 = a_1_we0_local;
assign a_2_addr_2_gep_fu_446_p3 = zext_ln5_3_fu_1108_p1;
assign a_2_addr_4_gep_fu_606_p3 = zext_ln5_4_fu_1220_p1;
assign a_2_addr_6_gep_fu_790_p3 = zext_ln5_5_reg_1662;
assign a_2_addr_gep_fu_286_p3 = zext_ln5_2_fu_993_p1;
assign a_2_address0 = a_2_address0_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_d0 = a_2_d0_local;
assign a_2_we0 = a_2_we0_local;
assign a_3_addr_2_gep_fu_438_p3 = zext_ln5_3_fu_1108_p1;
assign a_3_addr_4_gep_fu_598_p3 = zext_ln5_4_fu_1220_p1;
assign a_3_addr_6_gep_fu_758_p3 = zext_ln5_5_reg_1662;
assign a_3_addr_gep_fu_278_p3 = zext_ln5_2_fu_993_p1;
assign a_3_address0 = a_3_address0_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_d0 = a_3_d0_local;
assign a_3_we0 = a_3_we0_local;
assign a_4_addr_2_gep_fu_430_p3 = zext_ln5_3_fu_1108_p1;
assign a_4_addr_4_gep_fu_590_p3 = zext_ln5_4_fu_1220_p1;
assign a_4_addr_6_gep_fu_750_p3 = zext_ln5_5_reg_1662;
assign a_4_addr_gep_fu_270_p3 = zext_ln5_2_fu_993_p1;
assign a_4_address0 = a_4_address0_local;
assign a_4_ce0 = a_4_ce0_local;
assign a_4_d0 = a_4_d0_local;
assign a_4_we0 = a_4_we0_local;
assign a_5_addr_2_gep_fu_422_p3 = zext_ln5_3_fu_1108_p1;
assign a_5_addr_4_gep_fu_582_p3 = zext_ln5_4_fu_1220_p1;
assign a_5_addr_6_gep_fu_742_p3 = zext_ln5_5_reg_1662;
assign a_5_addr_gep_fu_262_p3 = zext_ln5_2_fu_993_p1;
assign a_5_address0 = a_5_address0_local;
assign a_5_ce0 = a_5_ce0_local;
assign a_5_d0 = a_5_d0_local;
assign a_5_we0 = a_5_we0_local;
assign a_6_addr_2_gep_fu_414_p3 = zext_ln5_3_fu_1108_p1;
assign a_6_addr_4_gep_fu_574_p3 = zext_ln5_4_fu_1220_p1;
assign a_6_addr_6_gep_fu_734_p3 = zext_ln5_5_reg_1662;
assign a_6_addr_gep_fu_254_p3 = zext_ln5_2_fu_993_p1;
assign a_6_address0 = a_6_address0_local;
assign a_6_ce0 = a_6_ce0_local;
assign a_6_d0 = a_6_d0_local;
assign a_6_we0 = a_6_we0_local;
assign a_7_addr_2_gep_fu_462_p3 = zext_ln5_3_fu_1108_p1;
assign a_7_addr_4_gep_fu_614_p3 = zext_ln5_4_fu_1220_p1;
assign a_7_addr_6_gep_fu_766_p3 = zext_ln5_5_reg_1662;
assign a_7_addr_gep_fu_310_p3 = zext_ln5_2_fu_993_p1;
assign a_7_address0 = a_7_address0_local;
assign a_7_ce0 = a_7_ce0_local;
assign a_7_d0 = a_7_d0_local;
assign a_7_we0 = a_7_we0_local;
assign add_ln18_1_fu_1168_p2 = (k_1_reg_1383 + 32'd2);
assign add_ln18_2_fu_1279_p2 = (k_1_reg_1383 + 32'd3);
assign add_ln18_3_fu_1334_p2 = (k_1_reg_1383 + 32'd4);
assign add_ln18_fu_1092_p2 = (trunc_ln18_1_fu_1089_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
always @ (*) begin
    ap_condition_1213 = ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (icmp_ln18_3_reg_1638 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
    ap_condition_354 = ~((icmp_ln18_reg_1408 == 1'd1) | ((icmp_ln18_1_fu_1053_p2 == 1'd0) | ((icmp_ln18_2_reg_1561 == 1'd1) | (icmp_ln18_3_reg_1638 == 1'd1))));
end
always @ (*) begin
    ap_condition_356 = ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3));
end
always @ (*) begin
    ap_condition_373 = ~((icmp_ln18_reg_1408 == 1'd1) | ((icmp_ln18_1_reg_1484 == 1'd0) | ((icmp_ln18_3_reg_1638 == 1'd1) | (icmp_ln18_2_fu_1183_p2 == 1'd1))));
end
always @ (*) begin
    ap_condition_375 = ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5));
end
always @ (*) begin
    ap_condition_380 = ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln21_1_reg_1532 == 1'd1));
end
always @ (*) begin
    ap_condition_383 = ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln21_1_reg_1532 == 1'd0));
end
always @ (*) begin
    ap_condition_389 = ~((icmp_ln18_reg_1408 == 1'd1) | ((icmp_ln18_1_reg_1484 == 1'd0) | ((icmp_ln18_2_reg_1561 == 1'd1) | (icmp_ln18_3_fu_1294_p2 == 1'd1))));
end
always @ (*) begin
    ap_condition_391 = ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7));
end
always @ (*) begin
    ap_condition_394 = ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0));
end
always @ (*) begin
    ap_condition_396 = ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (icmp_ln21_2_reg_1609 == 1'd1));
end
always @ (*) begin
    ap_condition_399 = ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (icmp_ln21_2_reg_1609 == 1'd0));
end
always @ (*) begin
    ap_condition_410 = ((icmp_ln18_reg_1408 == 1'd0) & (icmp_ln18_1_reg_1484 == 1'd1) & (icmp_ln18_2_reg_1561 == 1'd0) & (icmp_ln18_3_reg_1638 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_phi_reg_pp0_iter0_i_4_reg_798 = 'bx;
assign ap_phi_reg_pp0_iter0_i_6_reg_818 = 'bx;
assign ap_phi_reg_pp0_iter0_i_8_reg_840 = 'bx;
assign ap_phi_reg_pp0_iter0_j_3_reg_808 = 'bx;
assign ap_phi_reg_pp0_iter0_j_5_reg_829 = 'bx;
assign ap_phi_reg_pp0_iter0_j_7_reg_851 = 'bx;
assign ap_phi_reg_pp0_iter1_i_10_reg_862 = 'bx;
assign ap_phi_reg_pp0_iter1_j_9_reg_872 = 'bx;
assign ap_ready = ap_ready_sig;
assign i_3_fu_971_p2 = (i_reg_1394 + 32'd1);
assign i_5_fu_1077_p2 = (i_4_reg_798 + 32'd1);
assign i_7_fu_1208_p2 = (i_6_reg_818 + 32'd1);
assign i_9_fu_1322_p2 = (i_8_reg_840 + 32'd1);
assign icmp_ln18_1_fu_1053_p2 = (($signed(k_1_reg_1383) < $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_2_fu_1183_p2 = (($signed(add_ln18_1_fu_1168_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_3_fu_1294_p2 = (($signed(add_ln18_2_fu_1279_p2) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_906_p2 = (($signed(k_fu_76) > $signed(stop)) ? 1'b1 : 1'b0);
assign icmp_ln21_1_fu_1071_p2 = (($signed(tmp_j_1_fu_1057_p3) < $signed(tmp_i_1_fu_1064_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_2_fu_1202_p2 = (($signed(tmp_j_2_fu_1188_p3) < $signed(tmp_i_2_fu_1195_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_3_fu_1316_p2 = (($signed(tmp_j_3_fu_1302_p3) < $signed(tmp_i_3_fu_1309_p3)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_965_p2 = (($signed(tmp_j_fu_949_p3) < $signed(tmp_i_fu_957_p3)) ? 1'b1 : 1'b0);
assign j_2_fu_976_p2 = ($signed(j_1_reg_1401) + $signed(32'd4294967295));
assign j_4_fu_1083_p2 = ($signed(j_3_reg_808) + $signed(32'd4294967295));
assign j_6_fu_1214_p2 = ($signed(j_5_reg_829) + $signed(32'd4294967295));
assign j_8_fu_1328_p2 = ($signed(j_7_reg_851) + $signed(32'd4294967295));
assign lshr_ln18_1_fu_1037_p4 = {{ap_phi_mux_j_3_phi_fu_811_p4[10:1]}};
assign lshr_ln18_2_fu_1136_p4 = {{ap_phi_mux_i_6_phi_fu_821_p4[10:1]}};
assign lshr_ln18_3_fu_1152_p4 = {{ap_phi_mux_j_5_phi_fu_832_p4[10:1]}};
assign lshr_ln18_4_fu_1247_p4 = {{ap_phi_mux_i_8_phi_fu_843_p4[10:1]}};
assign lshr_ln18_5_fu_1263_p4 = {{ap_phi_mux_j_7_phi_fu_854_p4[10:1]}};
assign lshr_ln2_fu_1021_p4 = {{ap_phi_mux_i_4_phi_fu_801_p4[10:1]}};
assign lshr_ln5_3_fu_911_p4 = {{ap_sig_allocacmp_i[10:1]}};
assign lshr_ln5_4_fu_927_p4 = {{ap_sig_allocacmp_j_1[10:1]}};
assign lshr_ln5_5_fu_984_p4 = {{k_1_reg_1383[10:3]}};
assign lshr_ln5_6_fu_1098_p4 = {{add_ln18_fu_1092_p2[10:3]}};
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign tmp_i_1_fu_1064_p3 = ((trunc_ln18_5_reg_1479[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_2_fu_1195_p3 = ((trunc_ln18_7_reg_1551[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_3_fu_1309_p3 = ((trunc_ln18_9_reg_1628[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_i_fu_957_p3 = ((trunc_ln18_3_fu_946_p1[0:0] == 1'b1) ? temp_1_q0 : temp_q0);
assign tmp_j_1_fu_1057_p3 = ((trunc_ln18_4_reg_1474[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_2_fu_1188_p3 = ((trunc_ln18_6_reg_1546[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_3_fu_1302_p3 = ((trunc_ln18_8_reg_1623[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign tmp_j_fu_949_p3 = ((trunc_ln18_2_fu_943_p1[0:0] == 1'b1) ? temp_1_q1 : temp_q1);
assign trunc_ln18_1_fu_1089_p1 = k_1_reg_1383[10:0];
assign trunc_ln18_2_fu_943_p1 = j_1_reg_1401[0:0];
assign trunc_ln18_3_fu_946_p1 = i_reg_1394[0:0];
assign trunc_ln18_4_fu_1013_p1 = ap_phi_mux_j_3_phi_fu_811_p4[0:0];
assign trunc_ln18_5_fu_1017_p1 = ap_phi_mux_i_4_phi_fu_801_p4[0:0];
assign trunc_ln18_6_fu_1128_p1 = ap_phi_mux_j_5_phi_fu_832_p4[0:0];
assign trunc_ln18_7_fu_1132_p1 = ap_phi_mux_i_6_phi_fu_821_p4[0:0];
assign trunc_ln18_8_fu_1239_p1 = ap_phi_mux_j_7_phi_fu_854_p4[0:0];
assign trunc_ln18_9_fu_1243_p1 = ap_phi_mux_i_8_phi_fu_843_p4[0:0];
assign trunc_ln18_fu_981_p1 = k_1_reg_1383[2:0];
assign zext_ln18_1_fu_1047_p1 = lshr_ln18_1_fu_1037_p4;
assign zext_ln18_2_fu_1146_p1 = lshr_ln18_2_fu_1136_p4;
assign zext_ln18_3_fu_1162_p1 = lshr_ln18_3_fu_1152_p4;
assign zext_ln18_4_fu_1257_p1 = lshr_ln18_4_fu_1247_p4;
assign zext_ln18_5_fu_1273_p1 = lshr_ln18_5_fu_1263_p4;
assign zext_ln18_fu_1031_p1 = lshr_ln2_fu_1021_p4;
assign zext_ln5_1_fu_937_p1 = lshr_ln5_4_fu_927_p4;
assign zext_ln5_2_fu_993_p1 = lshr_ln5_5_fu_984_p4;
assign zext_ln5_3_fu_1108_p1 = lshr_ln5_6_fu_1098_p4;
assign zext_ln5_4_fu_1220_p1 = lshr_ln5_7_reg_1556;
assign zext_ln5_5_fu_1299_p1 = lshr_ln5_8_reg_1633;
assign zext_ln5_fu_921_p1 = lshr_ln5_3_fu_911_p4;
always @ (posedge ap_clk) begin
    zext_ln5_5_reg_1662[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 